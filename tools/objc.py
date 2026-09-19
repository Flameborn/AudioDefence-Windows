"""Objective-C 2.0 runtime metadata parser for 64-bit Mach-O (Audio Defence arm64 slice).

Recovers classes (with superclass, ivars + offsets, properties, instance/class methods),
categories, protocols, selector refs, class refs, CFStrings, and decodes the compiler's
type encodings back into Objective-C declarations.

Usage:
    python tools/objc.py <arm64-binary> [--out analysis/classdump.h] [--json analysis/objc.json]
"""
import json
import os
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from macho import MachO64  # noqa: E402

PTR_MASK = 0x0000000FFFFFFFFF


# --------------------------------------------------------------------------- type encodings
class _TypeParser:
    SIMPLE = {
        'c': 'char', 'i': 'int', 's': 'short', 'l': 'long', 'q': 'long long',
        'C': 'unsigned char', 'I': 'unsigned int', 'S': 'unsigned short', 'L': 'unsigned long',
        'Q': 'unsigned long long', 'f': 'float', 'd': 'double', 'B': 'BOOL', 'v': 'void',
        '*': 'char *', '#': 'Class', ':': 'SEL', '?': 'void /*unknown*/', 'D': 'long double',
    }
    QUALIFIERS = {'r': 'const', 'n': 'in', 'N': 'inout', 'o': 'out', 'O': 'bycopy', 'R': 'byref', 'V': 'oneway'}

    def __init__(self, s):
        self.s = s
        self.p = 0

    def peek(self):
        return self.s[self.p] if self.p < len(self.s) else ''

    def number(self):
        st = self.p
        while self.p < len(self.s) and (self.s[self.p].isdigit() or self.s[self.p] == '-'):
            self.p += 1
        return self.s[st:self.p]

    def type(self):
        quals = []
        while self.peek() in self.QUALIFIERS and self.peek():
            quals.append(self.QUALIFIERS[self.s[self.p]])
            self.p += 1
        c = self.peek()
        if not c:
            return 'void'
        self.p += 1
        if c == '@':
            if self.peek() == '"':
                e = self.s.index('"', self.p + 1)
                name = self.s[self.p + 1:e]
                self.p = e + 1
                if name.startswith('<'):
                    t = 'id' + name
                else:
                    t = name + ' *'
            elif self.peek() == '?':
                self.p += 1
                t = 'id /*block*/'
            else:
                t = 'id'
        elif c == '^':
            t = self.type() + ' *'
        elif c == '[':
            n = self.number()
            inner = self.type()
            if self.peek() == ']':
                self.p += 1
            t = '%s[%s]' % (inner, n)
        elif c in '{(':
            close = '}' if c == '{' else ')'
            depth = 1
            st = self.p
            while self.p < len(self.s) and depth:
                ch = self.s[self.p]
                if ch in '{(':
                    depth += 1
                elif ch in '})':
                    depth -= 1
                elif ch == '"':
                    self.p = self.s.index('"', self.p + 1)
                self.p += 1
            body = self.s[st:self.p - 1]
            name = body.split('=')[0]
            kw = 'struct' if close == '}' else 'union'
            t = name if name and name != '?' else '%s {…}' % kw
        elif c == 'b':
            t = 'unsigned int :%s' % self.number()
        else:
            t = self.SIMPLE.get(c, c)
        if quals:
            t = ' '.join(quals) + ' ' + t
        return t

    def method(self):
        """returns (return_type, [arg types excluding self/_cmd])"""
        types = []
        while self.p < len(self.s):
            types.append(self.type())
            self.number()
        if not types:
            return 'id', []
        return types[0], types[3:]


def decode_type(enc):
    try:
        return _TypeParser(enc).type()
    except Exception:
        return enc


def method_decl(sel, enc, kind='-'):
    try:
        ret, args = _TypeParser(enc).method() if enc else ('id', [])
    except Exception:
        ret, args = 'id', []
    parts = sel.split(':')
    if len(parts) == 1:
        return '%s (%s)%s' % (kind, ret, sel)
    out = []
    for i, part in enumerate(parts[:-1]):
        at = args[i] if i < len(args) else 'id'
        out.append('%s:(%s)arg%d' % (part, at, i + 1))
    return '%s (%s)%s' % (kind, ret, ' '.join(out))


def property_decl(name, attrs):
    t = 'id'
    flags = []
    getter = setter = ivar = None
    for a in attrs.split(','):
        if not a:
            continue
        k, v = a[0], a[1:]
        if k == 'T':
            t = decode_type(v)
        elif k == 'R':
            flags.append('readonly')
        elif k == 'C':
            flags.append('copy')
        elif k == '&':
            flags.append('retain')
        elif k == 'W':
            flags.append('weak')
        elif k == 'N':
            flags.append('nonatomic')
        elif k == 'G':
            getter = v
        elif k == 'S':
            setter = v
        elif k == 'V':
            ivar = v
        elif k == 'D':
            flags.append('@dynamic')
    if getter:
        flags.append('getter=' + getter)
    if setter:
        flags.append('setter=' + setter)
    t = t if t.endswith('*') else t + ' '
    return '@property (%s) %s%s;%s' % (', '.join(flags), t, name, ('  // ivar: ' + ivar) if ivar else '')


# --------------------------------------------------------------------------- runtime structures
class ObjC:
    def __init__(self, macho):
        self.m = macho
        self.selrefs = {}      # selref address -> selector string
        self.classrefs = {}    # classref address -> class name
        self.superrefs = {}
        self.protorefs = {}
        self.cfstrings = {}    # CFString object address -> python string
        self.classes = []      # dicts
        self.categories = []
        self.protocols = {}    # address -> dict
        self.class_by_addr = {}
        self.imps = {}         # imp address -> "-[Class sel]"
        self.ivar_offsets = {}  # address of ivar-offset global -> (class, ivar, offset, type)
        self._parse()

    # -------- helpers
    def ptr(self, vm):
        v = self.m.u64(vm)
        return v & PTR_MASK if v else 0

    def class_name_at(self, clsaddr, slot_addr=None):
        """Name of the class object at clsaddr; if the pointer slot is bound by dyld, use the bind."""
        if slot_addr is not None and slot_addr in self.m.binds:
            sym = self.m.binds[slot_addr][0]
            for pre in ('_OBJC_CLASS_$_', '_OBJC_METACLASS_$_'):
                if sym.startswith(pre):
                    return sym[len(pre):]
            return sym
        if not clsaddr:
            return None
        if clsaddr in self.class_by_addr:
            return self.class_by_addr[clsaddr]['name']
        ro = self.ptr(clsaddr + 32) & ~3
        return self.m.cstring(self.ptr(ro + 24)) if ro else None

    def methods(self, vm, cname, kind):
        out = []
        if not vm:
            return out
        entsize_flags = self.m.u32(vm)
        count = self.m.u32(vm + 4)
        esz = entsize_flags & 0xFFFC
        p = vm + 8
        for _ in range(count):
            if entsize_flags & 0x80000000:      # relative method list
                sel = self.m.cstring(self.ptr(p + self.m.i32(p)))
                enc = self.m.cstring(p + 4 + self.m.i32(p + 4))
                imp = p + 8 + self.m.i32(p + 8)
            else:
                sel = self.m.cstring(self.ptr(p))
                enc = self.m.cstring(self.ptr(p + 8))
                imp = self.ptr(p + 16)
            out.append(dict(sel=sel, types=enc, imp=imp, kind=kind))
            if imp:
                self.imps.setdefault(imp, '%s[%s %s]' % (kind, cname, sel))
            p += esz
        return out

    def ivars(self, vm, cname):
        out = []
        if not vm:
            return out
        entsize = self.m.u32(vm)
        count = self.m.u32(vm + 4)
        p = vm + 8
        for _ in range(count):
            offp = self.ptr(p)
            name = self.m.cstring(self.ptr(p + 8))
            typ = self.m.cstring(self.ptr(p + 16))
            align, size = self.m.u32(p + 24), self.m.u32(p + 28)
            off = self.m.u32(offp) if offp else None
            out.append(dict(name=name, type=typ, decoded=decode_type(typ or ''), offset=off, size=size))
            if offp:
                self.ivar_offsets[offp] = (cname, name, off, typ)
            p += entsize
        return out

    def properties(self, vm):
        out = []
        if not vm:
            return out
        entsize = self.m.u32(vm)
        count = self.m.u32(vm + 4)
        p = vm + 8
        for _ in range(count):
            out.append(dict(name=self.m.cstring(self.ptr(p)), attrs=self.m.cstring(self.ptr(p + 8))))
            p += entsize
        return out

    def protocol_list(self, vm):
        if not vm:
            return []
        n = self.m.u64(vm)
        names = []
        for i in range(n or 0):
            pa = self.ptr(vm + 8 + i * 8)
            names.append(self.parse_protocol(pa)['name'] if pa else '?')
        return names

    def parse_protocol(self, pa):
        if pa in self.protocols:
            return self.protocols[pa]
        name = self.m.cstring(self.ptr(pa + 8))
        proto = dict(name=name, addr=pa)
        self.protocols[pa] = proto
        proto['protocols'] = self.protocol_list(self.ptr(pa + 16))
        proto['required_instance'] = self._proto_methods(self.ptr(pa + 24))
        proto['required_class'] = self._proto_methods(self.ptr(pa + 32))
        proto['optional_instance'] = self._proto_methods(self.ptr(pa + 40))
        proto['optional_class'] = self._proto_methods(self.ptr(pa + 48))
        proto['properties'] = self.properties(self.ptr(pa + 56))
        return proto

    def _proto_methods(self, vm):
        out = []
        if not vm:
            return out
        entsize = self.m.u32(vm) & 0xFFFC
        count = self.m.u32(vm + 4)
        p = vm + 8
        for _ in range(count):
            out.append(dict(sel=self.m.cstring(self.ptr(p)), types=self.m.cstring(self.ptr(p + 8))))
            p += entsize
        return out

    # -------- main
    def _parse(self):
        m = self.m
        s = m.section('__objc_selrefs')
        if s:
            for a in range(s.addr, s.end, 8):
                self.selrefs[a] = m.cstring(self.ptr(a))

        s = m.section('__cfstring')
        if s:
            us = m.section('__ustring')
            for a in range(s.addr, s.end, 32):
                flags = m.u64(a + 8)
                sp = self.ptr(a + 16)
                ln = m.u64(a + 24)
                if us and us.addr <= sp < us.end or (flags & 0xFF) == 0xD0:
                    raw = m.read(sp, ln * 2) or b''
                    self.cfstrings[a] = raw.decode('utf-16-le', 'replace')
                else:
                    raw = m.read(sp, ln) or b''
                    self.cfstrings[a] = raw.decode('utf-8', 'replace')

        # classes (two passes: addresses first so superclass names resolve)
        cl = m.section('__objc_classlist')
        addrs = [self.ptr(a) for a in range(cl.addr, cl.end, 8)] if cl else []
        nl = m.section('__objc_nlclslist')
        nonlazy = set(self.ptr(a) for a in range(nl.addr, nl.end, 8)) if nl else set()
        for ca in addrs:
            ro = self.ptr(ca + 32) & ~3
            self.class_by_addr[ca] = dict(addr=ca, name=m.cstring(self.ptr(ro + 24)))
        for ca in addrs:
            c = self.class_by_addr[ca]
            ro = self.ptr(ca + 32) & ~3
            name = c['name']
            c['super'] = self.class_name_at(self.ptr(ca + 8), ca + 8) or None
            c['flags'] = m.u32(ro)
            c['instance_start'] = m.u32(ro + 4)
            c['instance_size'] = m.u32(ro + 8)
            c['nonlazy'] = ca in nonlazy
            c['ivars'] = self.ivars(self.ptr(ro + 48), name)
            c['properties'] = self.properties(self.ptr(ro + 64))
            c['protocols'] = self.protocol_list(self.ptr(ro + 40))
            c['methods'] = self.methods(self.ptr(ro + 32), name, '-')
            meta = self.ptr(ca)
            mro = self.ptr(meta + 32) & ~3 if meta else 0
            c['class_methods'] = self.methods(self.ptr(mro + 32), name, '+') if mro else []
            self.classes.append(c)

        s = m.section('__objc_catlist')
        if s:
            for a in range(s.addr, s.end, 8):
                ca = self.ptr(a)
                name = m.cstring(self.ptr(ca))
                cls = self.class_name_at(self.ptr(ca + 8), ca + 8) or '?'
                full = '%s(%s)' % (cls, name)
                self.categories.append(dict(
                    addr=ca, name=name, cls=cls,
                    methods=self.methods(self.ptr(ca + 16), full, '-'),
                    class_methods=self.methods(self.ptr(ca + 24), full, '+'),
                    protocols=self.protocol_list(self.ptr(ca + 32)),
                    properties=self.properties(self.ptr(ca + 40))))

        s = m.section('__objc_protolist')
        if s:
            for a in range(s.addr, s.end, 8):
                self.parse_protocol(self.ptr(a))

        for secname, table in (('__objc_classrefs', self.classrefs), ('__objc_superrefs', self.superrefs)):
            s = m.section(secname)
            if s:
                for a in range(s.addr, s.end, 8):
                    table[a] = self.class_name_at(self.ptr(a), a)
        s = m.section('__objc_protorefs')
        if s:
            for a in range(s.addr, s.end, 8):
                pa = self.ptr(a)
                self.protorefs[a] = self.parse_protocol(pa)['name'] if pa else None

        self.classes.sort(key=lambda c: c['name'] or '')

    # -------- output
    def dump_header(self):
        L = []
        L.append('// Objective-C metadata recovered from the Audio Defence arm64 slice')
        L.append('// %d classes, %d categories, %d protocols\n' %
                 (len(self.classes), len(self.categories), len(self.protocols)))
        for p in sorted(self.protocols.values(), key=lambda x: x['name'] or ''):
            inh = (' <%s>' % ', '.join(p['protocols'])) if p['protocols'] else ''
            L.append('@protocol %s%s' % (p['name'], inh))
            for pr in p['properties']:
                L.append(property_decl(pr['name'], pr['attrs'] or ''))
            for key, kind, label in (('required_class', '+', None), ('required_instance', '-', None),
                                     ('optional_class', '+', '@optional'), ('optional_instance', '-', '@optional')):
                if p[key] and label:
                    L.append(label)
                for mm in p[key]:
                    L.append(method_decl(mm['sel'], mm['types'], kind) + ';')
            L.append('@end\n')
        for c in self.classes:
            proto = (' <%s>' % ', '.join(c['protocols'])) if c['protocols'] else ''
            L.append('@interface %s : %s%s   // instance size %d, class @0x%x' %
                     (c['name'], c['super'] or '(root)', proto, c['instance_size'], c['addr']))
            if c['ivars']:
                L.append('{')
                for iv in c['ivars']:
                    L.append('    %-40s // +0x%x (%d bytes)  %s' %
                             (('%s %s;' % (iv['decoded'], iv['name'])).replace('* ', '*'),
                              iv['offset'] or 0, iv['size'], iv['type']))
                L.append('}')
            for pr in c['properties']:
                L.append(property_decl(pr['name'], pr['attrs'] or ''))
            for mm in c['class_methods']:
                L.append('%-90s // IMP 0x%x' % (method_decl(mm['sel'], mm['types'], '+') + ';', mm['imp']))
            for mm in c['methods']:
                L.append('%-90s // IMP 0x%x' % (method_decl(mm['sel'], mm['types'], '-') + ';', mm['imp']))
            L.append('@end\n')
        for cat in self.categories:
            proto = (' <%s>' % ', '.join(cat['protocols'])) if cat['protocols'] else ''
            L.append('@interface %s (%s)%s' % (cat['cls'], cat['name'], proto))
            for pr in cat['properties']:
                L.append(property_decl(pr['name'], pr['attrs'] or ''))
            for mm in cat['class_methods']:
                L.append('%-90s // IMP 0x%x' % (method_decl(mm['sel'], mm['types'], '+') + ';', mm['imp']))
            for mm in cat['methods']:
                L.append('%-90s // IMP 0x%x' % (method_decl(mm['sel'], mm['types'], '-') + ';', mm['imp']))
            L.append('@end\n')
        return '\n'.join(L)

    def to_json(self):
        return dict(
            classes=self.classes,
            categories=self.categories,
            protocols=sorted(self.protocols.values(), key=lambda x: x['name'] or ''),
        )


def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__)
        return
    path = args[0]
    out = 'analysis/classdump.h'
    js = 'analysis/objc.json'
    if '--out' in args:
        out = args[args.index('--out') + 1]
    if '--json' in args:
        js = args[args.index('--json') + 1]
    oc = ObjC(MachO64(path))
    with open(out, 'w', encoding='utf-8', newline='\n') as f:
        f.write(oc.dump_header())
    with open(js, 'w', encoding='utf-8', newline='\n') as f:
        json.dump(oc.to_json(), f, indent=1)
    nm = sum(len(c['methods']) + len(c['class_methods']) for c in oc.classes)
    nm += sum(len(c['methods']) + len(c['class_methods']) for c in oc.categories)
    print('classes=%d categories=%d protocols=%d methods=%d selrefs=%d classrefs=%d cfstrings=%d ivars=%d' %
          (len(oc.classes), len(oc.categories), len(oc.protocols), nm, len(oc.selrefs),
           len(oc.classrefs), len(oc.cfstrings), len(oc.ivar_offsets)))
    print('wrote', out, 'and', js)


if __name__ == '__main__':
    main()
