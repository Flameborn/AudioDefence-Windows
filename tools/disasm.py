"""Annotated whole-program ARM64 disassembler for the Audio Defence binary.

For every function in __text (LC_FUNCTION_STARTS ∪ Objective-C IMPs ∪ symbols) this
produces a listing where the common ARM64/Objective-C idioms are resolved in comments:

  * objc_msgSend / objc_msgSendSuper2 calls rendered as  [receiver selector:arg ...]
    (receiver/arguments tracked through adrp/add/ldr/mov, previous call results, ivars;
     float/struct arguments placed using the selector's own type encoding)
  * ivar reads/writes rendered as  base->_ivar
  * selector refs, class refs, CFStrings, C strings, GOT/stub imports
  * float/double constants (literal pools, fmov immediates, and mov+fmov bit patterns)
  * C++ vtables (from RTTI) and names for virtual functions of the csl:: audio library
  * block invoke functions named after the method that creates them

Outputs (under analysis/):
  disasm/<unit>.s   one file per Objective-C class / C++ class / translation unit
  functions.tsv     address, size, name, unit
  xrefs.json        per-function calls, callers, selectors sent, strings, ivars, constants

Usage:
    py tools/disasm.py <arm64-binary> [--out analysis]
    py tools/disasm.py <arm64-binary> --fn "<regex on function name>"   (print to stdout)
"""
import bisect
import collections
import json
import os
import re
import struct
import sys
import time

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
from capstone.arm64 import (ARM64_OP_REG, ARM64_OP_IMM, ARM64_OP_MEM, ARM64_OP_FP)

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from macho import MachO64  # noqa: E402
from objc import ObjC, _TypeParser  # noqa: E402

BRANCHES = {'b', 'bl', 'cbz', 'cbnz', 'tbz', 'tbnz'}
NO_WRITE = {'cmp', 'cmn', 'tst', 'fcmp', 'fcmpe', 'ccmp', 'ccmn', 'fccmp', 'fccmpe', 'cbz', 'cbnz',
            'tbz', 'tbnz', 'br', 'blr', 'ret', 'b', 'bl', 'nop', 'msr', 'hint', 'brk'}
PASSTHROUGH = {'_objc_retainAutoreleasedReturnValue', '_objc_retain', '_objc_autorelease',
               '_objc_retainAutorelease', '_objc_autoreleaseReturnValue',
               '_objc_retainAutoreleaseReturnValue', '_objc_retainBlock'}
FLOAT_FUNCS = {'_sin', '_cos', '_pow', '_powf', '_atan2f', '_sinf', '_cosf', '_tanf', '_acos', '_asin',
               '_atanf', '_ldexp', '_log2', '_llround', '___sincos_stret', '___sincosf_stret'}
HFA2 = ('CGPoint', 'CGSize', 'CGVector')
HFA4 = ('CGRect', 'UIEdgeInsets')
NOARG_FUNCS = {'_rand', '_random', '_arc4random', '_CACurrentMediaTime', '_UIAccessibilityIsVoiceOverRunning',
               '_mach_task_self_', '_time', '_objc_autoreleasePoolPush', '_abort', '_pthread_self'}
CALLER_SAVED = {'x%d' % i for i in range(19)} | {'v%d' % i for i in list(range(8)) + list(range(16, 32))}
NONRETURN = {'_objc_exception_throw', '___stack_chk_fail', '_abort', '_exit', '___cxa_throw', '___cxa_rethrow',
             '__Unwind_Resume', '_objc_exception_rethrow', '__ZSt9terminatev', '___assert_rtn'}

# Framework selectors carry no type encoding inside this binary. For the ones the game uses that pass or
# return floating-point / HFA structs (which travel in d-registers on arm64), record the register classes
# explicitly so arguments are not misplaced. ('x' = integer/pointer, 'd' = double, 'dN' = N-double struct)
FRAMEWORK_SELS = {
    'setAlpha:': (['d'], 'x'), 'alpha': ([], 'd'),
    'setFrame:': (['d4'], 'x'), 'setBounds:': (['d4'], 'x'), 'initWithFrame:': (['d4'], 'x'),
    'frame': ([], 'd4'), 'bounds': ([], 'd4'), 'nativeBounds': ([], 'd4'),
    'setCenter:': (['d2'], 'x'), 'center': ([], 'd2'),
    'setContentOffset:': (['d2'], 'x'), 'setContentOffset:animated:': (['d2', 'x'], 'x'),
    'contentOffset': ([], 'd2'), 'setContentSize:': (['d2'], 'x'), 'contentSize': ([], 'd2'),
    'convertPoint:toView:': (['d2', 'x'], 'd2'), 'convertPoint:fromView:': (['d2', 'x'], 'd2'),
    'convertRect:toView:': (['d4', 'x'], 'd4'), 'convertRect:fromWindow:': (['d4', 'x'], 'd4'),
    'drawInRect:': (['d4'], 'x'), 'locationInView:': (['x'], 'd2'), 'translationInView:': (['x'], 'd2'),
    'locationOfTouch:inView:': (['x', 'x'], 'd2'), 'sizeWithAttributes:': (['x'], 'd2'),
    'boundingRectWithSize:options:attributes:context:': (['d2', 'x', 'x', 'x'], 'd4'),
    'constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:':
        (['x', 'x', 'x', 'x', 'x', 'd', 'd'], 'x'),
    'fontWithName:size:': (['x', 'd'], 'x'), 'systemFontOfSize:': (['d'], 'x'),
    'boldSystemFontOfSize:': (['d'], 'x'), 'pointSize': ([], 'd'),
    'animateWithDuration:animations:': (['d', 'x'], 'x'),
    'animateWithDuration:animations:completion:': (['d', 'x', 'x'], 'x'),
    'animateWithDuration:delay:options:animations:completion:': (['d', 'd', 'x', 'x', 'x'], 'x'),
    'transitionWithView:duration:options:animations:completion:': (['x', 'd', 'x', 'x', 'x'], 'x'),
    'transitionFromView:toView:duration:options:completion:': (['x', 'x', 'd', 'x', 'x'], 'x'),
    'scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:': (['d', 'x', 'x', 'x', 'x'], 'x'),
    'timerWithTimeInterval:target:selector:userInfo:repeats:': (['d', 'x', 'x', 'x', 'x'], 'x'),
    'initWithFireDate:interval:target:selector:userInfo:repeats:': (['x', 'd', 'x', 'x', 'x', 'x'], 'x'),
    'performSelector:withObject:afterDelay:': (['x', 'x', 'd'], 'x'),
    'numberWithFloat:': (['d'], 'x'), 'numberWithDouble:': (['d'], 'x'),
    'floatValue': ([], 'd'), 'doubleValue': ([], 'd'), 'floatForKey:': (['x'], 'd'),
    'decodeFloatForKey:': (['x'], 'd'), 'setFloat:forKey:': (['d', 'x'], 'x'),
    'encodeFloat:forKey:': (['d', 'x'], 'x'),
    'colorWithRed:green:blue:alpha:': (['d', 'd', 'd', 'd'], 'x'),
    'initWithRed:green:blue:alpha:': (['d', 'd', 'd', 'd'], 'x'),
    'colorWithWhite:alpha:': (['d', 'd'], 'x'), 'initWithWhite:alpha:': (['d', 'd'], 'x'),
    'setAnimationDuration:': (['d'], 'x'), 'setDeviceMotionUpdateInterval:': (['d'], 'x'),
    'setMinimumPressDuration:': (['d'], 'x'), 'dateWithTimeIntervalSinceNow:': (['d'], 'x'),
    'sleepForTimeInterval:': (['d'], 'x'), 'requestWithURL:cachePolicy:timeoutInterval:': (['x', 'x', 'd'], 'x'),
    'addArcWithCenter:radius:startAngle:endAngle:clockwise:': (['d2', 'd', 'd', 'd', 'x'], 'x'),
    'bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:': (['d2', 'd', 'd', 'd', 'x'], 'x'),
    'addLineToPoint:': (['d2'], 'x'), 'setLineWidth:': (['d'], 'x'), 'setBorderWidth:': (['d'], 'x'),
    'setImageEdgeInsets:': (['d4'], 'x'), 'setTitleEdgeInsets:': (['d4'], 'x'),
    'sceneWithSize:': (['d2'], 'x'),
    'timeIntervalSinceReferenceDate': ([], 'd'), 'timeIntervalSinceNow': ([], 'd'),
    'timeIntervalSinceDate:': (['x'], 'd'), 'timeInterval': ([], 'd'), 'timeIntervalSince1970': ([], 'd'),
    'accelerometerUpdateInterval': ([], 'd'), 'timestamp': ([], 'd'),
    'pitch': ([], 'd'), 'yaw': ([], 'd'), 'roll': ([], 'd'), 'userAcceleration': ([], 'd3'),
    'gravity': ([], 'd3'), 'rotationRate': ([], 'd3'),
}
REG_COUNT = {'d': 1, 'd2': 2, 'd3': 3, 'd4': 4}


# ----------------------------------------------------------------------------- C++ names
def _source_names(s, p):
    """parse <number><identifier> sequences starting at p; returns (list, p)"""
    out = []
    while p < len(s) and s[p].isdigit():
        q = p
        while s[q].isdigit():
            q += 1
        n = int(s[p:q])
        out.append(s[q:q + n])
        p = q + n
    return out, p


def demangle(sym):
    """Small best-effort Itanium demangler: enough for nested names, ctors/dtors, typeinfo names."""
    s = sym.lstrip('_')
    if s.startswith('N') and s.endswith('E'):
        names, _ = _source_names(s, 1)
        return '::'.join(names) if names else sym
    if not s.startswith('ZN'):
        if s.startswith('Z'):
            names, _ = _source_names(s, 1)
            return '::'.join(names) + '(…)' if names else sym
        return sym
    p = 2
    parts = []
    while p < len(s) and s[p] != 'E':
        if s[p].isdigit():
            names, p = _source_names(s, p)
            parts.extend(names)
        elif s[p:p + 2] in ('C1', 'C2', 'C3') and parts:
            parts.append(parts[-1])
            p += 2
        elif s[p:p + 2] in ('D0', 'D1', 'D2') and parts:
            parts.append('~' + parts[-1] + {'D0': '/*deleting*/', 'D1': '', 'D2': '/*base*/'}[s[p:p + 2]])
            p += 2
        elif s[p:p + 2] == 'St':
            parts.append('std')
            p += 2
        elif s[p] == 'I':          # template args: skip balanced
            depth = 0
            while p < len(s):
                if s[p] == 'I':
                    depth += 1
                elif s[p] == 'E':
                    depth -= 1
                    if depth == 0:
                        p += 1
                        break
                p += 1
            if parts:
                parts[-1] += '<…>'
        else:
            p += 1
    return '::'.join(parts) + '(…)' if parts else sym


# ----------------------------------------------------------------------------- program model
class Program:
    def __init__(self, path):
        t0 = time.time()
        self.m = m = MachO64(path)
        self.o = o = ObjC(m)
        self.text = m.section('__text')
        syms = m.defined_symbols()
        starts = set(m.function_starts()) | set(o.imps) | set(syms)
        self.starts = sorted(a for a in starts if self.text.addr <= a < self.text.end)
        self.start_set = set(self.starts)
        self.names = {}
        self.kinds = {}           # addr -> objc / block / cxx / sym / sub
        for a, n in o.imps.items():
            self.names[a] = n
            self.kinds[a] = 'objc'
        for a, n in syms.items():
            if a in self.start_set and a not in self.names:
                self.names[a] = demangle(n)
                self.kinds[a] = 'sym'
        self.stubs = m.stubs
        self.binds = m.binds

        # selector -> type encoding (for placing float/struct args)
        self.sel_types = {}
        for c in list(o.classes) + list(o.categories):
            for mm in c['methods'] + c['class_methods']:
                if mm['sel'] and mm['types']:
                    self.sel_types.setdefault(mm['sel'], mm['types'])
        for p in o.protocols.values():
            for key in ('required_instance', 'required_class', 'optional_instance', 'optional_class'):
                for mm in p[key]:
                    if mm['sel'] and mm['types']:
                        self.sel_types.setdefault(mm['sel'], mm['types'])
        self._argkinds_cache = {}
        self.block_captures = {}

        # class metadata addresses (class objects referenced directly by address)
        self.class_objs = {c['addr']: c['name'] for c in o.classes}

        self._scan_cxx()
        self._scan_global_blocks()
        self.md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
        self.md.detail = True
        self.md.skipdata = True          # never stop at undecodable bytes (inline jump tables, padding)
        self.md_lite = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
        self.md_lite.skipdata = True
        self._name_blocks()
        for a in self.starts:
            if a not in self.names:
                self.names[a] = 'sub_%x' % a
                self.kinds[a] = 'sub'
        self._assign_units()
        self.load_time = time.time() - t0

    # ------------------------------------------------------------------ helpers
    def func_end(self, a):
        i = bisect.bisect_right(self.starts, a)
        return self.starts[i] if i < len(self.starts) else self.text.end

    def func_containing(self, a):
        i = bisect.bisect_right(self.starts, a) - 1
        return self.starts[i] if i >= 0 else None

    def sec_name(self, a):
        s = self.m.section_at(a)
        return (s.seg, s.name) if s else (None, None)

    # ------------------------------------------------------------------ C++ RTTI / vtables
    def _scan_cxx(self):
        m = self.m
        self.typeinfo = {}     # typeinfo addr -> (name, kind, bases)
        self.vtables = {}      # address point -> class name
        self.vfuncs = collections.defaultdict(list)   # func -> [(class, index, primary?)]
        dconst = [s for s in m.sections if s.seg == '__DATA' and s.name == '__const']
        for s in dconst:
            for a in range(s.addr, s.end, 8):
                b = self.binds.get(a)
                if b and b[0].startswith('__ZTVN10__cxxabiv1'):
                    name = demangle(m.cstring(m.u64(a + 8)) or '?')
                    kind = b[0][18:].split('_')[0]
                    bases = []
                    if 'si_class' in b[0]:
                        bases = [m.u64(a + 16)]
                    elif 'vmi_class' in b[0]:
                        cnt = m.u32(a + 20)
                        bases = [m.u64(a + 24 + i * 16) for i in range(cnt or 0)]
                    self.typeinfo[a] = (name, kind, bases)

        def depth(ti, seen=()):
            if ti not in self.typeinfo or ti in seen:
                return 0
            bs = self.typeinfo[ti][2]
            return 1 + max([depth(b, seen + (ti,)) for b in bs] or [0])

        self.ti_depth = {t: depth(t) for t in self.typeinfo}
        for s in dconst:
            a = s.addr
            while a < s.end - 16:
                ti = m.u64(a + 8)
                off_to_top = m.u64(a)
                if ti in self.typeinfo and (off_to_top == 0 or off_to_top > 0xFFFFFFFFFFFF0000):
                    name = self.typeinfo[ti][0]
                    primary = off_to_top == 0
                    point = a + 16
                    self.vtables[point] = name if primary else '%s (secondary, -0x%x)' % (
                        name, (-off_to_top) & 0xFFFFFFFFFFFFFFFF)
                    idx = 0
                    p = point
                    while p < s.end:
                        v = m.u64(p)
                        if v and self.text.addr <= v < self.text.end:
                            self.vfuncs[v].append((ti, idx, primary))
                        elif p in self.binds and self.binds[p][0] == '___cxa_pure_virtual':
                            pass
                        else:
                            break
                        idx += 1
                        p += 8
                    a = p
                    continue
                a += 8
        for f, uses in self.vfuncs.items():
            if f in self.names:
                continue
            uses.sort(key=lambda u: (not u[2], self.ti_depth.get(u[0], 0), u[1]))
            ti, idx, primary = uses[0]
            cname = self.typeinfo[ti][0]
            short = cname.split('::')[-1]
            if primary and idx == 0:
                label = '~%s' % short
            elif primary and idx == 1:
                label = '~%s/*deleting*/' % short
            else:
                label = 'vfunc_%d' % idx
                if not primary:
                    label = 'thunk_' + label
            self.names[f] = '%s::%s' % (cname, label)
            self.kinds[f] = 'cxx'

    # ------------------------------------------------------------------ blocks
    def _scan_global_blocks(self):
        self.global_blocks = {}   # literal addr -> invoke
        for s in self.m.sections:
            if s.seg != '__DATA' or s.name not in ('__const', '__data'):
                continue
            for a in range(s.addr, s.end, 8):
                b = self.binds.get(a)
                if b and b[0] == '__NSConcreteGlobalBlock':
                    inv = self.m.u64(a + 16)
                    if inv in self.start_set:
                        self.global_blocks[a] = inv

    def _addr_refs(self, fa):
        """cheap scan: addresses materialised with adrp+add / adr in function fa"""
        end = self.func_end(fa)
        code = self.m.read(fa, end - fa)
        pages = {}
        out = []
        for (addr, size, mn, ops) in self.md_lite.disasm_lite(code, fa):
            if mn == 'adrp':
                r, v = ops.split(', #')
                pages[r] = int(v, 16)
            elif mn == 'add' and ops.count(',') == 2:
                d, sreg, imm = [x.strip() for x in ops.split(',')]
                if sreg in pages and imm.startswith('#'):
                    out.append(pages[sreg] + int(imm[1:], 16 if imm[1:].startswith('0x') else 10))
                pages.pop(d, None)
            elif mn == 'adr':
                r, v = ops.split(', #')
                out.append(int(v, 16))
        return out

    def _name_blocks(self):
        counter = collections.Counter()
        frontier = [a for a in self.starts if a in self.names]
        seen = set()
        while frontier:
            nxt = []
            for fa in frontier:
                if fa in seen:
                    continue
                seen.add(fa)
                for ref in self._addr_refs(fa):
                    target = None
                    if ref in self.global_blocks:
                        target = self.global_blocks[ref]
                    elif ref in self.start_set and ref != fa:
                        target = ref
                    if target is None or target in self.names:
                        continue
                    parent = self.names[fa]
                    counter[parent] += 1
                    n = counter[parent]
                    self.names[target] = '%s_block_invoke%s' % (parent, '' if n == 1 else '_%d' % n)
                    self.kinds[target] = 'block'
                    self.block_parent = getattr(self, 'block_parent', {})
                    self.block_parent[target] = fa
                    nxt.append(target)
            frontier = nxt
        if not hasattr(self, 'block_parent'):
            self.block_parent = {}

    # ------------------------------------------------------------------ units (output files)
    def _unit_of_name(self, name, kind):
        if kind == 'objc':
            mm = re.match(r'[-+]\[([^ (]+)(?:\(([^)]*)\))? ', name)
            if mm:
                return mm.group(1) + ('+' + mm.group(2) if mm.group(2) else '')
        if kind == 'cxx' or (kind == 'sym' and '::' in name and not name.startswith('std')):
            parts = name.split('::')
            if len(parts) >= 3:
                return '_'.join(parts[:-1])
            if len(parts) == 2:
                return parts[0]
        return None

    def _assign_units(self):
        self.units = {}
        current = 'startup'
        for a in self.starts:
            kind = self.kinds[a]
            name = self.names[a]
            u = None
            if kind == 'block':
                root = a
                while root in self.block_parent:
                    root = self.block_parent[root]
                u = self._unit_of_name(self.names[root], self.kinds[root])
            else:
                u = self._unit_of_name(name, kind)
            if u:
                current = u
            self.units[a] = u or current
        self.units_order = collections.OrderedDict()
        for a in self.starts:
            self.units_order.setdefault(self.units[a], []).append(a)

    # ------------------------------------------------------------------ descriptions
    def argkinds(self, sel):
        """list of register classes ('x' / 'd' / 'd2' / 'd4') for a selector's explicit args, and return kind"""
        if sel in self._argkinds_cache:
            return self._argkinds_cache[sel]
        if sel not in self.sel_types and sel in FRAMEWORK_SELS:
            self._argkinds_cache[sel] = FRAMEWORK_SELS[sel]
            return FRAMEWORK_SELS[sel]
        enc = self.sel_types.get(sel)
        nargs = sel.count(':')
        kinds = ['x'] * nargs
        ret = 'x'
        if enc:
            try:
                tp = _TypeParser(enc)
                raws = []
                while tp.p < len(tp.s):
                    st0 = tp.p
                    tp.type()
                    raws.append(tp.s[st0:tp.p])
                    tp.number()
                kinds_all = [_hfa_kind(r) for r in raws]
                ret = kinds_all[0] if kinds_all else 'x'
                kinds = kinds_all[3:3 + nargs]
                kinds += ['x'] * (nargs - len(kinds))
            except Exception:
                pass
        self._argkinds_cache[sel] = (kinds, ret)
        return kinds, ret

    def describe_addr(self, a):
        o = self.o
        if a in o.selrefs:
            return '&@selector(%s)' % o.selrefs[a]
        if a in o.cfstrings:
            return '@"%s"' % _clip(o.cfstrings[a])
        if a in self.global_blocks:
            return '^{%s}' % self.names.get(self.global_blocks[a], '?')
        if a in self.start_set:
            return '&' + self.names.get(a, 'sub_%x' % a)
        if a in self.vtables:
            return 'vtable<%s>' % self.vtables[a]
        if a in self.class_objs:
            return 'class<%s>' % self.class_objs[a]
        seg, sec = self.sec_name(a)
        if sec in ('__cstring', '__objc_methname', '__objc_classname', '__objc_methtype'):
            s = self.m.cstring(a)
            return '"%s"' % _clip(s) if s is not None else '0x%x' % a
        if sec in ('__bss', '__common'):
            return '&g_%x' % a
        if sec == '__const' and seg == '__TEXT':
            return 'tconst_%x' % a
        if sec in ('__const', '__data') and seg == '__DATA':
            return '&d_%x' % a
        return '0x%x' % a

    def describe(self, v, reg=None):
        if v is None:
            return reg or '?'
        k = v[0]
        if k == 'self':
            return 'self'
        if k in ('class', 'selfclass'):
            return v[1]
        if k == 'sel':
            return '@selector(%s)' % v[1]
        if k in ('ret', 'expr'):
            return v[1]
        if k == 'const':
            n = v[1]
            return str(n) if -4096 < n < 4096 else '0x%x' % (n & 0xFFFFFFFFFFFFFFFF)
        if k == 'fconst':
            return '%g' % v[1]
        if k == 'addr':
            return self.describe_addr(v[1])
        if k == 'arg':
            return 'arg%d' % v[1]
        if k == 'global':
            return 'g_%x' % v[1]
        if k == 'import':
            return v[1]
        if k == 'ivar':
            return v[1]
        if k == 'phiconst':
            return 'one of {%s}' % ', '.join(str(c) if -4096 < c < 4096 else '0x%x' % (c & 0xFFFFFFFFFFFFFFFF)
                                             for c in v[1])
        if k == 'phiaddr':
            return 'one of {%s}' % ', '.join(self.describe_addr(a) for a in v[1])
        if k == 'stack':
            return '&%s[%s0x%x]' % (v[1], '-' if v[2] < 0 else '', abs(v[2]))
        if k == 'cmd':
            return '_cmd'
        if k == 'block':
            return 'block'
        return reg or '?'


def _clip(s, n=90, escape=True):
    if s is None:
        return ''
    s = s.replace('\n', '\\n').replace('\r', '\\r')
    if escape:
        s = s.replace('"', '\\"')
    return s if len(s) <= n else s[:n] + '…'


def canon(r):
    if r in ('fp',):
        return 'x29'
    if r in ('lr',):
        return 'x30'
    if r == 'wzr':
        return 'xzr'
    if r == 'wsp':
        return 'sp'
    if r and r[0] == 'w' and r[1:].isdigit():
        return 'x' + r[1:]
    if r and r[0] in 'sdqhbv' and r[1:].isdigit():
        return 'v' + r[1:]
    return r


def _branch_target(ins):
    mn = ins.mnemonic
    if mn in BRANCHES or mn.startswith('b.'):
        imms = [op.imm for op in ins.operands if op.type == ARM64_OP_IMM]
        if imms:
            return imms[-1]          # tbz/tbnz: first immediate is the bit number, last is the target
    return None


def _written(ins):
    try:
        _, w = ins.regs_access()
        out = {canon(ins.reg_name(r)) for r in w}
    except Exception:
        out = set()
    if ins.mnemonic in ('bl', 'blr'):
        out |= CALLER_SAVED
    return out


def _stack_slots_written(ins):
    if not ins.mnemonic.startswith('st'):
        return set()
    out = set()
    for op in ins.operands:
        if op.type == ARM64_OP_MEM:
            base = canon(ins.reg_name(op.mem.base))
            if base in ('sp', 'x29'):
                for d in (0, 4, 8, 12):
                    out.add((base, op.mem.disp + d))
    return out


def _addr_set(v):
    if v and v[0] == 'addr':
        return {v[1]}
    if v and v[0] == 'phiaddr':
        return set(v[1])
    return None


def _const_set(v):
    if v and v[0] == 'const':
        return {v[1]}
    if v and v[0] == 'phiconst':
        return set(v[1])
    return None


def _merge(incoming):
    """Intersection of incoming states. Registers holding different *addresses* on different paths
    (e.g. selector refs chosen per switch case before a shared objc_msgSend) become a phi set."""
    if not incoming:
        return {}, {}
    st = dict(incoming[0][0])
    stack = dict(incoming[0][1])
    for other_st, other_stack in incoming[1:]:
        for r in list(st):
            ov = other_st.get(r)
            if ov != st[r]:
                a, b = _addr_set(st[r]), _addr_set(ov)
                ca, cb = _const_set(st[r]), _const_set(ov)
                if a is not None and b is not None and len(a | b) <= 12:
                    st[r] = ('phiaddr', tuple(sorted(a | b)))
                elif ca is not None and cb is not None and len(ca | cb) <= 8:
                    st[r] = ('phiconst', tuple(sorted(ca | cb)))
                else:
                    del st[r]
        for k in list(stack):
            if other_stack.get(k) != stack[k]:
                del stack[k]
    return st, stack


# ----------------------------------------------------------------------------- per-function analysis
class FunctionAnalysis:
    def __init__(self, prog, addr):
        self.p = prog
        self.addr = addr
        self.end = prog.func_end(addr)
        self.name = prog.names[addr]
        self.kind = prog.kinds[addr]
        self.calls = set()
        self.imports = set()
        self.sends = []
        self.strings = []
        self.classes = set()
        self.ivars_r = set()
        self.ivars_w = set()
        self.consts = []
        self.addr_taken = set()
        self.lines = []

    def entry_state(self):
        st = {}
        n = self.name
        if self.kind == 'objc':
            cls = re.match(r'[-+]\[([^ (]+)', n).group(1)
            st['x0'] = ('self',) if n[0] == '-' else ('selfclass', cls)
            st['x1'] = ('cmd',)
            sel = n.split(' ', 1)[1].rstrip(']')
            kinds, _ = self.p.argkinds(sel)
            xi, di = 2, 0
            for i, kd in enumerate(kinds):
                if kd == 'x':
                    st['x%d' % xi] = ('arg', i + 1)
                    xi += 1
                else:
                    cnt = REG_COUNT[kd]
                    for j in range(cnt):
                        st['v%d' % di] = ('arg', i + 1) if cnt == 1 else ('expr', 'arg%d.%d' % (i + 1, j))
                        di += 1
        elif self.kind == 'block':
            st['x0'] = ('block',)
            for i in range(1, 4):
                st['x%d' % i] = ('expr', 'blockarg%d' % i)
        elif self.kind in ('sub', 'sym', 'cxx'):
            for i in range(4):
                st['x%d' % i] = ('expr', 'a%d' % i)
        return st

    def run(self, max_passes=6):
        """Linear sweep repeated to a fixed point: the register/stack state at every label is the
        intersection of the states on all incoming edges (forward, backward and fall-through)."""
        p = self.p
        code = p.m.read(self.addr, self.end - self.addr)
        raw = list(p.md.disasm(code, self.addr))
        self.switches = self.find_jump_tables(raw)
        data = {}
        for br, info in self.switches.items():
            for i in range(info['count']):
                data[info['table'] + 4 * i] = (br, i)
        self.data_words = data
        insns = [ins for ins in raw if ins.address not in data and ins.mnemonic != '.byte']
        self.byte_ranges = [ins for ins in raw if ins.mnemonic == '.byte' and ins.address not in data]
        labels = set()
        self.case_labels = collections.defaultdict(list)
        self.preds = collections.defaultdict(list)
        for ins in insns:
            t = _branch_target(ins)
            if t is not None and self.addr <= t < self.end:
                labels.add(t)
                if ins.mnemonic != 'bl':
                    self.preds[t].append(ins.address)
            if ins.address in self.switches:
                for i, tgt in enumerate(self.switches[ins.address]['targets']):
                    if tgt is not None:
                        labels.add(tgt)
                        self.preds[tgt].append(ins.address)
                        self.case_labels[tgt].append(i)
        edges = {}
        for _ in range(max_passes):
            new_edges = self._sweep(insns, labels, edges)
            if new_edges == edges:
                break
            edges = new_edges
        for addr in sorted(self.data_words):
            br, i = self.data_words[addr]
            tgt = self.switches[br]['targets'][i]
            self.lines.append('  %09x  .word   jump table of %x, case %d -> %s' %
                              (addr, br, i, ('loc_%x' % tgt) if tgt is not None else 'out of range'))
        if self.byte_ranges:
            self.lines.append('  %09x  .data   %d undecodable bytes (padding/data)' %
                              (self.byte_ranges[0].address, sum(ins.size for ins in self.byte_ranges)))
        return self

    def find_jump_tables(self, raw):
        """clang arm64 switch: [cmp wI,#N; b.hi default;] adr xT,table; ldrsw xE,[xT,xI,lsl #2]; add xE,xE,xT; br xE
        (table = int32 offsets relative to the table base, placed inline after the function)"""
        p = self.p
        out = {}
        for k, ins in enumerate(raw):
            if ins.mnemonic != 'br' or k < 3:
                continue
            window = raw[max(0, k - 10):k]
            table = None
            count = None
            try:
                for w in reversed(window):
                    if w.mnemonic == 'adr' and table is None:
                        table = w.operands[1].imm
                    elif w.mnemonic == 'add' and table is None and len(w.operands) == 3 and \
                            w.operands[2].type == ARM64_OP_IMM:
                        # adrp + add form
                        prev = window[window.index(w) - 1] if window.index(w) > 0 else None
                        if prev is not None and prev.mnemonic == 'adrp':
                            table = prev.operands[1].imm + w.operands[2].imm
                    if w.mnemonic == 'cmp' and count is None and len(w.operands) == 2 and \
                            w.operands[1].type == ARM64_OP_IMM:
                        count = w.operands[1].imm + 1
                has_ldrsw = any(w.mnemonic == 'ldrsw' and w.operands[1].type == ARM64_OP_MEM and
                                w.operands[1].mem.index for w in window[-4:])
            except Exception:
                continue
            if table is None or not has_ldrsw:
                continue
            if count is None or count > 512:
                count = 0
                while count < 512:
                    v = p.m.i32(table + 4 * count)
                    if v is None or not (self.addr <= table + v < self.end):
                        break
                    count += 1
            targets = []
            for i in range(count):
                v = p.m.i32(table + 4 * i)
                t = table + v if v is not None else None
                targets.append(t if t is not None and self.addr <= t < self.end else None)
            out[ins.address] = dict(table=table, count=count, targets=targets)
        return out

    def _sweep(self, insns, labels, edges):
        p = self.p
        # reset everything a sweep produces
        self.calls, self.imports, self.classes = set(), set(), set()
        self.sends, self.strings, self.consts, self.lines = [], [], [], []
        self.ivars_r, self.ivars_w, self.addr_taken = set(), set(), set()
        out_edges = {}
        st = self.entry_state()
        self.flags = None
        self.stack = {}
        self.ntemps = 0
        prev_uncond = False
        top = False
        for ins in insns:
            a = ins.address
            if a in labels:
                # forward edges: states from this sweep; back edges: states from the previous sweep.
                # edges never seen yet carry no information (treated as TOP and skipped)
                incoming = []
                for src in self.preds.get(a, ()):
                    state = out_edges.get((src, a)) if src < a else edges.get((src, a))
                    if state is not None:
                        incoming.append(state)
                if not prev_uncond and not top:
                    incoming.append((st, self.stack))
                top = not incoming          # nothing known reaches here (yet): don't let it pollute merges
                st, self.stack = _merge(incoming)
                st = dict(st)
                self.stack = dict(self.stack)
                self.flags = None
                cases = self.case_labels.get(a)
                self.lines.append('loc_%x:%s' % (a, ('  ; case %s' % ', '.join(map(str, cases))) if cases else ''))
            elif prev_uncond:
                st, self.stack, self.flags = {}, {}, None      # not reachable by fall-through (e.g. landing pad)
                top = True
            comment = ''
            try:
                comment = self.step(ins, st)
            except Exception as e:  # never let one odd instruction kill the listing
                comment = ' ; <annotator error: %s>' % e
            mn = ins.mnemonic
            t = _branch_target(ins)
            if t is not None and self.addr <= t < self.end and mn != 'bl' and not top:
                out_edges[(a, t)] = (dict(st), dict(self.stack))
            if a in self.switches:
                sw = self.switches[a]
                if not top:
                    for tgt in sw['targets']:
                        if tgt is not None:
                            out_edges[(a, tgt)] = (dict(st), dict(self.stack))
                on = self.flags[1] if self.flags else '?'
                groups = collections.OrderedDict()
                for i, tgt in enumerate(sw['targets']):
                    groups.setdefault(tgt, []).append(i)
                comment = ' ; switch (%s) { %s }' % (on, '; '.join(
                    'case %s: goto %s' % (','.join(map(str, cs)), ('loc_%x' % tg) if tg else '?')
                    for tg, cs in groups.items()))
            prev_uncond = mn in ('b', 'br', 'ret') or (mn == 'bl' and p.stubs.get(t) in NONRETURN)
            ops = ins.op_str
            if mn in BRANCHES or mn.startswith('b.'):
                ops = re.sub(r'#(0x[0-9a-f]+)', lambda mo: self.target_label(int(mo.group(1), 16)), ops)
            line = '  %09x  %-7s %-40s' % (a, mn, ops)
            self.lines.append((line + comment).rstrip())
        return out_edges

    def target_label(self, t):
        if t in self.p.names and t != self.addr:
            return self.p.names[t]
        if self.addr <= t < self.end:
            return 'loc_%x' % t
        if t in self.p.stubs:
            return self.p.stubs[t]
        f = self.p.func_containing(t)
        if f is not None and f in self.p.names:
            return '%s+0x%x' % (self.p.names[f], t - f)
        return '0x%x' % t

    # ------------------------------------------------------------------ the tracker
    def step(self, ins, st):
        p = self.p
        mn = ins.mnemonic
        ops = ins.operands
        rn = lambda op: canon(ins.reg_name(op.reg))  # noqa: E731

        if mn == 'adrp':
            st[rn(ops[0])] = ('addr', ops[1].imm)
            return ''
        if mn == 'adr':
            a = ops[1].imm
            st[rn(ops[0])] = ('addr', a)
            return self.note_addr(a)
        if mn in ('add', 'sub') and len(ops) == 3 and ops[2].type == ARM64_OP_IMM and ops[1].type == ARM64_OP_REG:
            dst, src = rn(ops[0]), rn(ops[1])
            imm = ops[2].imm
            if ops[2].shift.value:
                imm <<= ops[2].shift.value
            sv = st.get(src)
            if mn == 'add' and sv and sv[0] == 'addr':
                a = sv[1] + imm
                st[dst] = ('addr', a)
                return self.note_addr(a)
            if src in ('sp', 'x29') or dst == 'sp':
                if dst not in ('sp', 'x29'):
                    st[dst] = ('stack', src, imm if mn == 'add' else -imm)
                return ''
            if sv and sv[0] == 'const':
                st[dst] = ('const', sv[1] + imm if mn == 'add' else sv[1] - imm)
                return ''
            st[dst] = ('expr', _clip('(%s %s %d)' % (p.describe(sv, ins.reg_name(ops[1].reg)),
                                                     '+' if mn == 'add' else '-', imm), 240, False))
            return ''
        if mn == 'mov' and len(ops) == 2:
            dst = rn(ops[0])
            if ops[1].type == ARM64_OP_REG:
                src = rn(ops[1])
                if src == 'sp':
                    st[dst] = ('stack', 'sp', 0)
                elif src == 'xzr':
                    st[dst] = ('const', 0)
                elif src in st:
                    st[dst] = st[src]
                else:
                    st.pop(dst, None)
            elif ops[1].type == ARM64_OP_IMM:
                v = ops[1].imm
                if ins.reg_name(ops[0].reg).startswith('w'):
                    v &= 0xFFFFFFFF
                st[dst] = ('const', v)
            else:
                st.pop(dst, None)
            return ''
        if mn in ('movz', 'movn') and ops[1].type == ARM64_OP_IMM:
            v = ops[1].imm << ops[1].shift.value
            if mn == 'movn':
                v = ~v
            st[rn(ops[0])] = ('const', v)
            return ''
        if mn == 'movk':
            dst = rn(ops[0])
            cur = st.get(dst)
            if cur and cur[0] == 'const':
                sh = ops[1].shift.value
                v = (cur[1] & ~(0xFFFF << sh)) | (ops[1].imm << sh)
                st[dst] = ('const', v)
                return self.const_note(v, ins.reg_name(ops[0].reg))
            st.pop(dst, None)
            return ''
        if mn == 'orr' and len(ops) == 3 and ops[1].type == ARM64_OP_REG and \
                canon(ins.reg_name(ops[1].reg)) == 'xzr' and ops[2].type == ARM64_OP_IMM:
            st[rn(ops[0])] = ('const', ops[2].imm)
            return ''
        if mn == 'fmov':
            dst = rn(ops[0])
            dname = ins.reg_name(ops[0].reg)
            if ops[1].type == ARM64_OP_FP:
                st[dst] = ('fconst', ops[1].fp)
                self.consts.append(ops[1].fp)
                return ''
            if ops[1].type == ARM64_OP_REG:
                src = rn(ops[1])
                sname = ins.reg_name(ops[1].reg)
                sv = st.get(src)
                if dname[0] in 'sd' and sv and sv[0] == 'const':
                    if dname[0] == 's':
                        fv = struct.unpack('<f', struct.pack('<I', sv[1] & 0xFFFFFFFF))[0]
                    else:
                        fv = struct.unpack('<d', struct.pack('<Q', sv[1] & 0xFFFFFFFFFFFFFFFF))[0]
                    st[dst] = ('fconst', fv)
                    self.consts.append(fv)
                    return ' ; %s = %s' % (dname, _fmt_float(fv))
                if sv:
                    st[dst] = sv
                else:
                    st.pop(dst, None)
                _ = sname
            return ''
        lifted = self.lift_expr(ins, st, mn, ops)
        if lifted is not None:
            return lifted
        if mn in ('ldr', 'ldrsw', 'ldur', 'ldursw', 'ldrb', 'ldrh', 'ldurb', 'ldurh', 'ldrsb', 'ldrsh') \
                and len(ops) == 2:
            return self.do_load(ins, st, rn(ops[0]), ins.reg_name(ops[0].reg), ops[1])
        if mn in ('str', 'stur', 'strb', 'strh', 'sturb', 'sturh') and len(ops) == 2:
            return self.do_store(ins, st, rn(ops[0]), ops[1])
        if mn == 'stp' and len(ops) == 3 and ops[2].type == ARM64_OP_MEM:
            base = canon(ins.reg_name(ops[2].mem.base))
            if base in ('sp', 'x29') and not ins.writeback:
                size = 4 if ins.reg_name(ops[0].reg)[0] in 'ws' else 8
                d = ops[2].mem.disp
                self.stack[(base, d)] = st.get(rn(ops[0]))
                self.stack[(base, d + size)] = st.get(rn(ops[1]))
            return ''
        if mn in ('bl', 'b') and ops and ops[0].type == ARM64_OP_IMM:
            return self.do_call(ins, st, ops[0].imm, tail=(mn == 'b'))
        if mn == 'blr':
            r = rn(ops[0])
            v = st.get(r)
            desc = p.describe(v, r)
            self.clobber(st)
            st['x0'] = ('ret', '%s(…)' % desc)
            return ' ; call %s' % desc if v else ''
        if mn == 'br':
            v = st.get(rn(ops[0]))
            return ' ; jump %s' % p.describe(v) if v and v[0] == 'import' else ''
        if mn == 'ldp':
            mem = ops[2] if len(ops) > 2 else None
            bvp = None
            if mem is not None and mem.type == ARM64_OP_MEM and not ins.writeback:
                bvp = st.get(canon(ins.reg_name(mem.mem.base)))
            if bvp and bvp[0] == 'import' and mem.mem.disp == 0:
                for j, op in enumerate(ops[:2]):
                    st[rn(op)] = ('expr', '%s.%s' % (bvp[1].lstrip('_'), 'xy'[j] if 'Point' in bvp[1] else str(j)))
                return ''
            if bvp and bvp[0] == 'ivarptr':
                owner, cls, ivname, typ = bvp[1]
                size = 4 if ins.reg_name(ops[0].reg)[0] in 'ws' else 8
                for j, op in enumerate(ops[:2]):
                    st[rn(op)] = ('ivar', '%s->%s%s' % (owner, ivname, _field_suffix(typ, mem.mem.disp + j * size)))
                self.ivars_r.add('%s.%s' % (cls, ivname))
                return ''
            if mem is not None and mem.type == ARM64_OP_MEM and not ins.writeback:
                base = canon(ins.reg_name(mem.mem.base))
                if base in ('sp', 'x29'):
                    size = 4 if ins.reg_name(ops[0].reg)[0] in 'ws' else 8
                    for j, op in enumerate(ops[:2]):
                        v = self.stack.get((base, mem.mem.disp + j * size))
                        if v:
                            st[rn(op)] = v
                        else:
                            st.pop(rn(op), None)
                    return ''
            for op in ops[:2]:
                if op.type == ARM64_OP_REG:
                    st.pop(rn(op), None)
            return ''
        if mn == 'movi' and len(ops) == 2 and ops[1].type == ARM64_OP_IMM:
            st[rn(ops[0])] = ('fconst', float(ops[1].imm)) if ops[1].imm == 0 else ('const', ops[1].imm)
            return ''
        # generic: invalidate written register
        if mn not in NO_WRITE and not mn.startswith('b.') and not mn.startswith('st') and ops \
                and ops[0].type == ARM64_OP_REG:
            st.pop(rn(ops[0]), None)
        return ''

    # ------------------------------------------------------------------ expression lifting
    def opnd(self, ins, st, op):
        p = self.p
        if op.type == ARM64_OP_REG:
            r = ins.reg_name(op.reg)
            c = canon(r)
            if c == 'xzr':
                return '0'
            s = p.describe(st.get(c), r)
            if op.shift.type and op.shift.value:
                sym = {1: '<<', 3: '>>>', 4: '>>', 5: 'ror'}.get(op.shift.type, '<<')
                s = '(%s %s %d)' % (s, sym, op.shift.value)
            return s
        if op.type == ARM64_OP_IMM:
            v = op.imm << (op.shift.value if op.shift.type else 0)
            return str(v) if -4096 < v < 4096 else '0x%x' % (v & 0xFFFFFFFFFFFFFFFF)
        if op.type == ARM64_OP_FP:
            return _fmt_float(op.fp)
        return '?'

    CC = {1: '==', 2: '!=', 3: '>=u', 4: '<u', 5: '<0', 6: '>=0', 7: 'unordered', 8: 'ordered',
          9: '>u', 10: '<=u', 11: '>=', 12: '<', 13: '>', 14: '<=', 15: 'true', 16: 'true'}
    CC_FLOAT = {3: '>= (or unordered)', 4: '<', 5: '<', 6: '>= (or unordered)', 9: '> (or unordered)',
                10: '<=', 11: '>=', 12: '< (or unordered)', 13: '>', 14: '<= (or unordered)'}
    CC_NEG = {1: 2, 2: 1, 3: 4, 4: 3, 5: 6, 6: 5, 7: 8, 8: 7, 9: 10, 10: 9, 11: 12, 12: 11, 13: 14, 14: 13}

    def cond_text(self, cc, negate=False):
        if negate:
            cc = self.CC_NEG.get(cc, cc)
        f = self.flags
        if not f:
            return 'flags ' + self.CC.get(cc, '?')
        kind, a, b = f
        if kind == 'fcmp':
            op = self.CC_FLOAT.get(cc, self.CC.get(cc, '?'))
            return '%s %s %s' % (a, op, b)
        if kind == 'tst':
            if cc in (1, 2):
                return '(%s & %s) %s 0' % (a, b, self.CC[cc])
            return '(%s & %s) %s' % (a, b, self.CC.get(cc, '?'))
        if kind == 'cmn':
            a, b = a, '-' + b
        op = self.CC.get(cc, '?')
        if op in ('<0', '>=0'):
            return '(%s - %s) %s' % (a, b, op)
        return '%s %s %s' % (a, op, b)

    def lift_expr(self, ins, st, mn, ops):
        """Arithmetic/compare/select instructions -> symbolic expressions. Returns comment or None."""
        p = self.p
        if not ops:
            return None
        if mn in ('cmp', 'cmn', 'tst', 'fcmp', 'fcmpe') and len(ops) >= 1:
            a = self.opnd(ins, st, ops[0])
            b = self.opnd(ins, st, ops[1]) if len(ops) > 1 else '0.0'
            self.flags = ({'fcmpe': 'fcmp'}.get(mn, mn), _clip(a, 120, False), _clip(b, 120, False))
            return ''
        if mn in ('ccmp', 'ccmn', 'fccmp', 'fccmpe'):
            self.flags = None
            return ''
        if mn.startswith('b.'):
            return ' ; if (%s)' % self.cond_text(ins.cc)
        if mn in ('cbz', 'cbnz'):
            v = self.opnd(ins, st, ops[0])
            return ' ; if (%s %s 0)' % (v, '==' if mn == 'cbz' else '!=')
        if mn in ('tbz', 'tbnz'):
            v = self.opnd(ins, st, ops[0])
            bit = ops[1].imm
            regw = ins.reg_name(ops[0].reg).startswith('w')
            if (bit == 31 and regw) or bit == 63:
                return ' ; if (%s %s 0)' % (v, '>=' if mn == 'tbz' else '<')
            if bit == 0:
                return ' ; if (%s(%s & 1))' % ('!' if mn == 'tbz' else '', v)
            return ' ; if (%s(%s & (1<<%d)))' % ('!' if mn == 'tbz' else '', v, bit)
        if ops[0].type != ARM64_OP_REG:
            return None
        dst = canon(ins.reg_name(ops[0].reg))
        if dst == 'sp':
            return None

        def setx(text):
            if len(text) > 90:
                self.ntemps += 1
                name = 't%d' % self.ntemps
                st[dst] = ('expr', name)
                return ' ; %s = %s' % (name, _clip(text, 400, False))
            st[dst] = ('expr', text)
            return ''

        binops = {'mul': '*', 'sdiv': '/', 'udiv': '/', 'fadd': '+', 'fsub': '-', 'fmul': '*',
                  'fdiv': '/', 'lsl': '<<', 'asr': '>>', 'lsr': '>>>', 'and': '&', 'orr': '|', 'eor': '^',
                  'fnmul': '*', 'smulh': '*h', 'umulh': '*h', 'bic': '&~', 'orn': '|~', 'eon': '^~',
                  'fmin': 'min', 'fmax': 'max', 'fminnm': 'min', 'fmaxnm': 'max', 'smull': '*', 'umull': '*'}
        if mn == 'add' and len(ops) == 3 and ops[1].type == ARM64_OP_REG and ops[2].type == ARM64_OP_REG:
            r1, r2 = canon(ins.reg_name(ops[1].reg)), canon(ins.reg_name(ops[2].reg))
            v1, v2 = st.get(r1), st.get(r2)
            for base_v, base_r, off_v in ((v1, ins.reg_name(ops[1].reg), v2), (v2, ins.reg_name(ops[2].reg), v1)):
                if off_v and off_v[0] == 'ivaroff':
                    cls, ivname, off, typ = off_v[1]
                    st[dst] = ('ivarptr', (p.describe(base_v, base_r), cls, ivname, typ))
                    return ''
        if mn in ('add', 'sub', 'adds', 'subs', 'ands') and len(ops) == 3:
            a = self.opnd(ins, st, ops[1])
            b = self.opnd(ins, st, ops[2])
            op = {'add': '+', 'adds': '+', 'sub': '-', 'subs': '-', 'ands': '&'}[mn]
            if mn in ('subs', 'adds', 'ands'):
                self.flags = ({'subs': 'cmp', 'adds': 'cmn', 'ands': 'tst'}[mn], a, b)
            if ops[2].type == ARM64_OP_IMM and ops[1].type == ARM64_OP_REG:
                sv = st.get(canon(ins.reg_name(ops[1].reg)))
                if sv and sv[0] == 'addr' and mn == 'add':
                    return None   # handled by the address tracker
            return setx('(%s %s %s)' % (a, op, b))
        if mn in binops and len(ops) == 3:
            a = self.opnd(ins, st, ops[1])
            b = self.opnd(ins, st, ops[2])
            if binops[mn] in ('min', 'max'):
                return setx('%s(%s, %s)' % (binops[mn], a, b))
            text = '(%s %s %s)' % (a, binops[mn], b)
            return setx('-' + text if mn == 'fnmul' else text)
        if mn in ('madd', 'msub', 'fmadd', 'fmsub', 'fnmadd', 'fnmsub') and len(ops) == 4:
            a, b, c = (self.opnd(ins, st, o) for o in ops[1:4])
            op = '+' if mn in ('madd', 'fmadd', 'fnmadd') else '-'
            text = '(%s %s %s * %s)' % (c, op, a, b)
            return setx('-' + text if mn.startswith('fn') else text)
        if mn in ('neg', 'negs', 'fneg', 'mvn', 'fabs', 'fsqrt', 'scvtf', 'ucvtf', 'fcvtzs', 'fcvtzu',
                  'fcvt', 'sxtw', 'uxtw', 'sxtb', 'sxth', 'uxtb', 'uxth', 'fcvtas', 'fcvtau', 'fcvtms',
                  'fcvtps', 'frinta', 'frintm', 'frintp', 'frintz', 'frintx', 'frinti', 'frintn', 'abs') \
                and len(ops) >= 2:
            a = self.opnd(ins, st, ops[1])
            fmt = {'neg': '-%s', 'negs': '-%s', 'fneg': '-%s', 'mvn': '~%s', 'fabs': 'fabs(%s)',
                   'abs': 'abs(%s)', 'fsqrt': 'sqrt(%s)', 'scvtf': '(float)%s', 'ucvtf': '(float)%s',
                   'fcvtzs': '(int)%s', 'fcvtzu': '(uint)%s', 'fcvtas': 'round(%s)', 'fcvtau': 'round(%s)',
                   'fcvtms': 'floor(%s)', 'fcvtps': 'ceil(%s)', 'frinta': 'round(%s)', 'frintm': 'floor(%s)',
                   'frintp': 'ceil(%s)', 'frintz': 'trunc(%s)', 'frintx': 'rint(%s)', 'frinti': 'rint(%s)',
                   'frintn': 'rint(%s)'}.get(mn)
            if fmt is None:     # fcvt / sign-extension: value-preserving copy
                sv = st.get(canon(ins.reg_name(ops[1].reg))) if ops[1].type == ARM64_OP_REG else None
                if sv:
                    st[dst] = sv
                else:
                    st.pop(dst, None)
                return ''
            if len(ops) == 3 and mn in ('scvtf', 'ucvtf'):   # fixed-point conversion
                return setx('((float)%s / 2^%d)' % (a, ops[2].imm))
            return setx(fmt % a)
        if mn in ('cset', 'csetm') and len(ops) == 1:
            return setx('(%s)' % self.cond_text(ins.cc))
        if mn in ('csel', 'fcsel', 'csinc', 'csinv', 'csneg') and len(ops) == 3:
            a = self.opnd(ins, st, ops[1])
            b = self.opnd(ins, st, ops[2])
            alt = {'csel': b, 'fcsel': b, 'csinc': '%s + 1' % b, 'csinv': '~%s' % b, 'csneg': '-%s' % b}[mn]
            return setx('(%s ? %s : %s)' % (self.cond_text(ins.cc), a, alt))
        if mn in ('cinc', 'cneg', 'cinv') and len(ops) == 2:
            a = self.opnd(ins, st, ops[1])
            alt = {'cinc': '%s + 1', 'cneg': '-%s', 'cinv': '~%s'}[mn] % a
            return setx('(%s ? %s : %s)' % (self.cond_text(ins.cc), alt, a))
        return None

    def const_note(self, v, regname):
        if regname.startswith('w'):
            fv = struct.unpack('<f', struct.pack('<I', v & 0xFFFFFFFF))[0]
            if _plausible_float(fv):
                return ' ; 0x%x (as float %s)' % (v & 0xFFFFFFFF, _fmt_float(fv))
        else:
            dv = struct.unpack('<d', struct.pack('<Q', v & 0xFFFFFFFFFFFFFFFF))[0]
            if _plausible_float(dv):
                return ' ; 0x%x (as double %s)' % (v & 0xFFFFFFFFFFFFFFFF, _fmt_float(dv))
        return ''

    def note_addr(self, a):
        p = self.p
        d = p.describe_addr(a)
        if a in p.o.cfstrings:
            self.strings.append(p.o.cfstrings[a])
        elif d.startswith('"'):
            self.strings.append(p.m.cstring(a))
        elif a in p.start_set:
            self.addr_taken.add(a)
        elif a in p.global_blocks:
            self.addr_taken.add(p.global_blocks[a])
        elif d.startswith('class<'):
            self.classes.add(d[6:-1])
        return ' ; ' + d

    def do_load(self, ins, st, dst, dname, mem):
        p = self.p
        if mem.type == ARM64_OP_IMM:          # pc-relative literal
            slot = mem.imm
            return self.load_slot(st, dst, dname, slot, literal=True)
        if mem.type != ARM64_OP_MEM:
            st.pop(dst, None)
            return ''
        base = canon(ins.reg_name(mem.mem.base))
        idx = canon(ins.reg_name(mem.mem.index)) if mem.mem.index else None
        bv = st.get(base)
        if idx is None and bv and bv[0] == 'addr':
            return self.load_slot(st, dst, dname, bv[1] + mem.mem.disp)
        if idx is None and bv and bv[0] == 'phiaddr':
            slots = [a + mem.mem.disp for a in bv[1]]
            if all(sl in p.o.selrefs for sl in slots):
                names = sorted(set(p.o.selrefs[sl] for sl in slots))
                st[dst] = ('sel', ' | '.join(names))
                return ' ; %s = one of selectors {%s}' % (dname, ', '.join(names))
            st.pop(dst, None)
            return ''
        if idx is None and bv and bv[0] == 'ivarptr':
            owner, cls, ivname, typ = bv[1]
            text = '%s->%s%s' % (owner, ivname, _field_suffix(typ, mem.mem.disp))
            st[dst] = ('ivar', text)
            self.ivars_r.add('%s.%s' % (cls, ivname))
            return ' ; %s = %s' % (dname, text)
        if idx:
            iv = st.get(idx)
            if iv and iv[0] == 'ivaroff':
                cls, ivname, off, typ = iv[1]
                owner = p.describe(bv, base)
                text = '%s->%s%s' % (owner, ivname, _field_suffix(typ, 0) if typ and typ.startswith('{') else '')
                st[dst] = ('ivar', text)
                self.ivars_r.add('%s.%s' % (cls, ivname))
                return ' ; %s = %s' % (dname, text)
        if idx is None and base in ('sp', 'x29'):
            v = self.stack.get((base, mem.mem.disp))
            if v:
                st[dst] = v
            else:
                st.pop(dst, None)
            return ''
        if idx is None and bv and bv[0] == 'block':
            cap = p.block_captures.get(self.addr, {}).get(mem.mem.disp)
            if cap:
                st[dst] = cap
                return ' ; %s = captured %s' % (dname, _clip(p.describe(cap), 120, False))
        if idx is None and bv and bv[0] not in ('stack',):
            text = '%s[+0x%x]' % (p.describe(bv, base), mem.mem.disp)
            st[dst] = ('expr', _clip(text, 240, False))
            return ' ; %s = %s' % (dname, _clip(text, 160, False))
        st.pop(dst, None)
        return ''

    def load_slot(self, st, dst, dname, slot, literal=False):
        p = self.p
        o = p.o
        if dname[0] in 'sd':
            v = p.m.f32(slot) if dname[0] == 's' else p.m.f64(slot)
            if v is None:
                st.pop(dst, None)
                return ''
            st[dst] = ('fconst', v)
            self.consts.append(v)
            return ' ; %s = %s' % (dname, _fmt_float(v))
        if slot in o.ivar_offsets:
            info = o.ivar_offsets[slot]
            st[dst] = ('ivaroff', info)
            return ' ; ivar offset %s.%s (+0x%x)' % (info[0], info[1], info[2] or 0)
        if slot in o.selrefs:
            st[dst] = ('sel', o.selrefs[slot])
            return ''
        if slot in o.classrefs:
            name = o.classrefs[slot]
            st[dst] = ('class', name)
            self.classes.add(name)
            return ' ; class %s' % name
        if slot in o.superrefs:
            st[dst] = ('class', o.superrefs[slot])
            return ''
        if slot in p.stubs:
            name = p.stubs[slot]
            st[dst] = ('import', name)
            return ' ; %s' % name
        if slot in p.binds:
            name = p.binds[slot][0]
            st[dst] = ('import', name)
            return ' ; %s' % name
        seg, sec = p.sec_name(slot)
        if sec in ('__bss', '__common', '__data') and seg == '__DATA':
            st[dst] = ('global', slot)
            return ' ; load g_%x' % slot
        v = p.m.u64(slot)
        if v is None:
            st.pop(dst, None)
            return ''
        if dname.startswith('w'):
            v32 = v & 0xFFFFFFFF
            st[dst] = ('const', v32)
            return ' ; =0x%x' % v32
        st[dst] = ('addr', v)
        return ' ; [%s] -> %s' % (p.describe_addr(slot), p.describe_addr(v))

    def do_store(self, ins, st, src, mem):
        p = self.p
        if mem.type != ARM64_OP_MEM:
            return ''
        base = canon(ins.reg_name(mem.mem.base))
        idx = canon(ins.reg_name(mem.mem.index)) if mem.mem.index else None
        bv0 = st.get(base)
        if idx is None and bv0 and bv0[0] == 'ivarptr':
            owner, cls, ivname, typ = bv0[1]
            self.ivars_w.add('%s.%s' % (cls, ivname))
            val = '0' if src == 'xzr' else p.describe(st.get(src), ins.reg_name(ins.operands[0].reg))
            return ' ; %s->%s%s = %s' % (owner, ivname, _field_suffix(typ, mem.mem.disp), val)
        if idx:
            iv = st.get(idx)
            if iv and iv[0] == 'ivaroff':
                cls, ivname, off, typ = iv[1]
                owner = p.describe(st.get(base), base)
                self.ivars_w.add('%s.%s' % (cls, ivname))
                val = '0' if src == 'xzr' else p.describe(st.get(src), ins.reg_name(ins.operands[0].reg))
                return ' ; %s->%s%s = %s' % (owner, ivname,
                                             _field_suffix(typ, 0) if typ and typ.startswith('{') else '', val)
        bv = st.get(base)
        srcname = ins.reg_name(ins.operands[0].reg)
        if src == 'xzr':
            st = dict(st)
            st['xzr'] = ('const', 0)
        if idx is None and base in ('sp', 'x29'):
            self.stack[(base, mem.mem.disp)] = st.get(src)
            return ''
        if idx is None and bv and bv[0] == 'addr':
            slot = bv[1] + mem.mem.disp
            seg, sec = p.sec_name(slot)
            if seg == '__DATA':
                return ' ; store g_%x = %s' % (slot, p.describe(st.get(src), srcname))
        if idx is None and bv and bv[0] not in ('stack',):
            return ' ; %s[+0x%x] = %s' % (_clip(p.describe(bv, base), 120, False), mem.mem.disp,
                                         _clip(p.describe(st.get(src), srcname), 160, False))
        return ''

    def clobber(self, st):
        for r in list(st):
            if r.startswith('x') and r[1:].isdigit() and int(r[1:]) <= 18:
                del st[r]
            elif r.startswith('v') and r[1:].isdigit() and (int(r[1:]) <= 7 or int(r[1:]) >= 16):
                del st[r]

    def do_call(self, ins, st, target, tail=False):
        p = self.p
        comment = ''
        if target in p.stubs:
            name = p.stubs[target]
            self.imports.add(name)
            if name in ('_objc_msgSend', '_objc_msgSendSuper2'):
                recv_before = st.get('x0')
                selv = st.get('x1')
                expr, retkind = self.send_expr(st, super_=(name == '_objc_msgSendSuper2'))
                self.clobber(st)
                is_init = selv and selv[0] == 'sel' and selv[1].startswith('init')
                if is_init and (name == '_objc_msgSendSuper2' or (recv_before and recv_before[0] == 'self')):
                    st['x0'] = ('self',)          # self = [super init…]
                elif retkind == 'x':
                    st['x0'] = ('ret', expr)
                elif retkind == 'd':
                    st['v0'] = ('ret', expr)
                else:
                    for j in range(REG_COUNT[retkind]):
                        st['v%d' % j] = ('ret', '%s.%d' % (expr, j))
                return ' ; %s' % expr
            if name in PASSTHROUGH:
                keep = st.get('x0')
                self.clobber(st)
                if keep:
                    st['x0'] = keep
                return ''
            if name in ('_objc_release', '_objc_storeStrong', '_objc_destroyWeak', '_objc_autoreleasePoolPop'):
                self.clobber(st)
                return ''
            if name in ('___sincos_stret', '___sincosf_stret'):
                a0 = self.p.describe(st.get('v0'), 'd0')
                self.clobber(st)
                st['v0'] = ('ret', 'sin(%s)' % a0)
                st['v1'] = ('ret', 'cos(%s)' % a0)
                return ' ; d0 = sin(%s), d1 = cos(%s)' % (a0, a0)
            args = '' if name in NOARG_FUNCS else self.c_args(st, float_=name in FLOAT_FUNCS)
            if name in self.VARIADIC_FUNCS:
                fmt = self.format_string_of(st.get('x%d' % self.VARIADIC_FUNCS[name]))
                if fmt is not None:
                    vals = self.stack_varargs(fmt)
                    if vals:
                        args += ', ' + ', '.join(vals)
            expr = '%s(%s)' % (name.lstrip('_'), args)
            self.clobber(st)
            st['x0'] = ('ret', expr)
            if name in FLOAT_FUNCS:
                st['v0'] = ('ret', expr)
            return ' ; %s' % expr
        if target in p.start_set:
            self.calls.add(target)
            nm = p.names.get(target, 'sub_%x' % target)
            args = self.c_args(st)
            expr = '%s(%s)' % (nm, args)
            self.clobber(st)
            st['x0'] = ('ret', expr)
            return ' ; %s' % expr if args else ''
        if tail:
            return ''
        self.clobber(st)
        return comment

    def arg_desc(self, v, reg):
        """describe an argument; stack-allocated block literals become ^{invoke} and record captures"""
        p = self.p
        if v and v[0] == 'stack':
            base, off = v[1], v[2]
            inv = self.stack.get((base, off + 0x10))
            if inv and inv[0] == 'addr' and inv[1] in p.start_set:
                f = inv[1]
                caps = {}
                for k in range(0x20, 0x80, 8):
                    cv = self.stack.get((base, off + k))
                    if cv and cv[0] not in ('stack',):
                        caps[k] = cv
                old = p.block_captures.get(f)
                if old is None:
                    p.block_captures[f] = caps
                else:
                    p.block_captures[f] = {k: c for k, c in old.items() if caps.get(k) == c}
                if caps:
                    return '^{%s captures %s}' % (p.names.get(f), ', '.join(
                        '+0x%x=%s' % (k, _clip(p.describe(c), 40, False)) for k, c in sorted(caps.items())))
                return '^{%s}' % p.names.get(f)
        return p.describe(v, reg)

    def c_args(self, st, float_=False):
        if float_:
            vals = [st.get('v0'), st.get('v1')]
            regs = ['d0', 'd1']
        else:
            vals = [st.get('x%d' % i) for i in range(4)]
            regs = ['x%d' % i for i in range(4)]
        while vals and vals[-1] is None:
            vals.pop()
        return ', '.join(self.arg_desc(v, regs[i]) for i, v in enumerate(vals))

    def send_expr(self, st, super_=False):
        p = self.p
        selv = st.get('x1')
        sel = selv[1] if selv and selv[0] == 'sel' else None
        if super_:
            recv = 'super'
        else:
            rv = st.get('x0')
            recv = p.describe(rv, 'x0')
            if rv and rv[0] == 'class':
                self.classes.add(rv[1])
        if sel is None:
            return '[%s <sel %s>]' % (recv, p.describe(selv, 'x1')), 'x'
        self.sends.append((recv if len(recv) < 60 else '…', sel))
        kinds, ret = p.argkinds(sel)
        parts = sel.split(':')
        if len(parts) == 1:
            return _clip('[%s %s]' % (recv, sel), 400, False), ret
        variadic = self.variadic_args(st, sel)
        xi, di = 2, 0
        out = []
        for i, part in enumerate(parts[:-1]):
            kd = kinds[i] if i < len(kinds) else 'x'
            if kd == 'x':
                v = st.get('x%d' % xi)
                val = self.arg_desc(v, 'x%d' % xi)
                xi += 1
            else:
                cnt = REG_COUNT[kd]
                vals = []
                for j in range(cnt):
                    vv = st.get('v%d' % di)
                    vals.append(p.describe(vv, 'd%d' % di))
                    di += 1
                val = vals[0] if cnt == 1 else '{%s}' % ', '.join(vals)
            out.append('%s:%s' % (part, val))
        text = '[%s %s%s]' % (recv, ' '.join(out), variadic)
        return _clip(text, 500, False), ret

    VARIADIC_SELS = {'stringWithFormat:': 0, 'initWithFormat:': 0, 'appendFormat:': 0, 'stringByAppendingFormat:': 0,
                     'raise:format:': 1, 'predicateWithFormat:': 0, 'localizedStringWithFormat:': 0}
    VARIADIC_FUNCS = {'_NSLog': 0, '_printf': 0, '_fprintf': 1, '_sprintf': 1, '_snprintf': 2, '_sscanf': 1}

    def format_string_of(self, v):
        if not v:
            return None
        if v[0] == 'addr':
            if v[1] in self.p.o.cfstrings:
                return self.p.o.cfstrings[v[1]]
            return self.p.m.cstring(v[1])
        return None

    def stack_varargs(self, fmt):
        n = len(re.findall(r'%(?!%)[-+ #0-9.*]*(?:hh|h|ll|l|q|z|t|j)?[@dDiuUxXoOfFeEgGcCsSpaA]', fmt))
        vals = []
        for i in range(n):
            v = self.stack.get(('sp', i * 8))
            vals.append(_clip(self.p.describe(v, 'sp[%d]' % (i * 8)), 80, False))
        return vals

    NIL_TERMINATED_SELS = {'arrayWithObjects:', 'initWithObjects:', 'dictionaryWithObjectsAndKeys:',
                           'initWithObjectsAndKeys:', 'setWithObjects:', 'otherButtonTitles:',
                           'initWithTitle:message:delegate:cancelButtonTitle:otherButtonTitles:'}

    def variadic_args(self, st, sel):
        if sel in self.NIL_TERMINATED_SELS:
            vals = []
            for i in range(24):
                v = self.stack.get(('sp', i * 8))
                if v is None or (v[0] == 'const' and v[1] == 0):
                    break
                vals.append(_clip(self.p.describe(v), 60, False))
            if not vals:
                return ''
            return ', ' + ', '.join(vals) + (', nil' if len(vals) < 24 else '')
        if sel not in self.VARIADIC_SELS:
            return ''
        fmt = self.format_string_of(st.get('x%d' % (2 + self.VARIADIC_SELS[sel])))
        if fmt is None:
            return ''
        vals = self.stack_varargs(fmt)
        return (', ' + ', '.join(vals)) if vals else ''


def _hfa_kind(raw):
    """arm64 register class of one Objective-C type encoding: 'd' for float/double, 'dN' for a struct of
    N (<=4) floats/doubles (homogeneous floating-point aggregate, passed in vN registers), else 'x'."""
    raw = raw.lstrip('rnNoORV')
    if raw in ('f', 'd'):
        return 'd'
    if raw.startswith('{') and raw.endswith('}') and '=' in raw:
        body = re.sub(r'"[^"]*"', '', raw[raw.index('=') + 1:-1])
        members = []
        i = 0
        while i < len(body):
            c = body[i]
            if c in 'fd':
                members.append(c)
                i += 1
            elif c == '{':
                depth, j = 0, i
                while j < len(body):
                    depth += body[j] == '{'
                    depth -= body[j] == '}'
                    j += 1
                    if depth == 0:
                        break
                inner = _hfa_kind(body[i:j])
                if inner == 'x':
                    return 'x'
                members.extend(['f'] * (1 if inner == 'd' else int(inner[1:])))
                i = j
            else:
                return 'x'
        if 1 <= len(members) <= 4 and len(set(members)) == 1:
            return 'd' if len(members) == 1 else 'd%d' % len(members)
    return 'x'


def _field_suffix(typ, disp):
    typ = typ or ''
    if typ.startswith('{CGPoint') or typ.startswith('{CGVector'):
        return {0: '.x', 8: '.y'}.get(disp, '[+0x%x]' % disp)
    if typ.startswith('{CGSize'):
        return {0: '.width', 8: '.height'}.get(disp, '[+0x%x]' % disp)
    if typ.startswith('{CGRect'):
        return {0: '.origin.x', 8: '.origin.y', 16: '.size.width', 24: '.size.height'}.get(disp, '[+0x%x]' % disp)
    return '' if disp == 0 else '[+0x%x]' % disp


def _plausible_float(v):
    if v != v or v in (float('inf'), float('-inf')):
        return False
    if v == 0:
        return False
    a = abs(v)
    if a < 1e-6 or a > 1e7:
        return False
    return abs(v * 1000 - round(v * 1000)) < 1e-6 or len(repr(v)) <= 8


def _fmt_float(v):
    if v != v or v in (float('inf'), float('-inf')):
        return repr(v)
    if v == int(v) and abs(v) < 1e15:
        return '%.1f' % v
    r = '%.9g' % v
    return r


# ----------------------------------------------------------------------------- driver
def analyse_all(prog, outdir):
    os.makedirs(os.path.join(outdir, 'disasm'), exist_ok=True)
    xrefs = {}
    callers = collections.defaultdict(set)
    tsv = ['address\tsize\tkind\tunit\tname']
    t0 = time.time()
    n = 0
    for unit, addrs in prog.units_order.items():
        body = []
        header = ['// unit %s — %d functions' % (unit, len(addrs))]
        for a in addrs:
            fa = FunctionAnalysis(prog, a).run()
            n += 1
            size = fa.end - a
            header.append('//   0x%09x  %6d  %s' % (a, size, fa.name))
            body.append('')
            body.append('; ======================================================================')
            body.append('; %s' % fa.name)
            body.append('; address 0x%x  size %d  kind %s' % (a, size, fa.kind))
            body.append('; ======================================================================')
            body.extend(fa.lines)
            tsv.append('0x%x\t%d\t%s\t%s\t%s' % (a, size, fa.kind, unit, fa.name))
            for c in fa.calls:
                callers[c].add(a)
            for c in fa.addr_taken:
                callers[c].add(a)
            xrefs[a] = dict(
                name=fa.name, unit=unit, kind=fa.kind, size=size,
                calls=sorted('0x%x' % c for c in fa.calls),
                imports=sorted(fa.imports),
                sends=[list(s) for s in fa.sends],
                strings=[s for s in fa.strings if s is not None],
                classes=sorted(fa.classes),
                ivars_read=sorted(fa.ivars_r),
                ivars_written=sorted(fa.ivars_w),
                constants=sorted(set(round(c, 6) for c in fa.consts)),
                addr_taken=sorted('0x%x' % c for c in fa.addr_taken),
            )
        fn = re.sub(r'[^A-Za-z0-9_+.-]', '_', unit)
        with open(os.path.join(outdir, 'disasm', fn + '.s'), 'w', encoding='utf-8', newline='\n') as f:
            f.write('\n'.join(header + body) + '\n')
    for a, x in xrefs.items():
        x['callers'] = sorted('0x%x' % c for c in callers.get(a, ()))
    with open(os.path.join(outdir, 'xrefs.json'), 'w', encoding='utf-8', newline='\n') as f:
        json.dump({'0x%x' % a: x for a, x in xrefs.items()}, f, indent=0)
    with open(os.path.join(outdir, 'functions.tsv'), 'w', encoding='utf-8', newline='\n') as f:
        f.write('\n'.join(tsv) + '\n')
    cxx = ['// C++ classes recovered from RTTI (typeinfo name, bases) and vtables']
    for ti, (name, kind, bases) in sorted(prog.typeinfo.items(), key=lambda kv: kv[1][0]):
        bn = [prog.typeinfo[b][0] if b in prog.typeinfo else 'ext@0x%x' % (b or 0) for b in bases]
        cxx.append('class %s%s   // typeinfo 0x%x (%s)' % (name, (' : ' + ', '.join(bn)) if bn else '', ti, kind))
        for point, vname in sorted(prog.vtables.items()):
            if vname.split(' ')[0] == name:
                cxx.append('    vtable%s @0x%x' % (vname[len(name):], point))
                i = 0
                while True:
                    v = prog.m.u64(point + i * 8)
                    if not (v and prog.text.addr <= v < prog.text.end) and not (
                            point + i * 8 in prog.binds and prog.binds[point + i * 8][0] == '___cxa_pure_virtual'):
                        break
                    cxx.append('      [%2d] %s' % (i, prog.names.get(v, 'pure virtual') if v else 'pure virtual'))
                    i += 1
    with open(os.path.join(outdir, 'cxx_classes.txt'), 'w', encoding='utf-8', newline='\n') as f:
        f.write('\n'.join(cxx) + '\n')
    return n, time.time() - t0


def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__)
        return
    prog = Program(args[0])
    if '--fn' in args:
        pat = re.compile(args[args.index('--fn') + 1])
        for a in prog.starts:
            if pat.search(prog.names[a]):
                fa = FunctionAnalysis(prog, a).run()
                print('\n; ===== %s  (0x%x, %d bytes)' % (fa.name, a, fa.end - a))
                print('\n'.join(fa.lines))
        return
    out = args[args.index('--out') + 1] if '--out' in args else 'analysis'
    kinds = collections.Counter(prog.kinds.values())
    print('loaded in %.1fs: %d functions %s, %d units, %d C++ classes, %d vtables' %
          (prog.load_time, len(prog.starts), dict(kinds), len(prog.units_order), len(prog.typeinfo),
           len(prog.vtables)))
    n, dt = analyse_all(prog, out)
    print('disassembled %d functions in %.1fs -> %s/disasm, %s/xrefs.json, %s/functions.tsv' % (n, dt, out, out, out))


if __name__ == '__main__':
    main()
