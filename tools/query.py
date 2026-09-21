"""Query the disassembly database produced by tools/disasm.py.

    py tools/query.py fn      <regex>        full annotated listing of matching functions
    py tools/query.py digest  <regex> [min]  condensed pseudo-code view (sends, stores, conditions, calls);
                                                 optional minimum function size in bytes skips trivial accessors
    py tools/query.py list    <regex>        matching function names with address and size
    py tools/query.py callers <regex>        who calls / takes the address of matching functions
    py tools/query.py sel     <selector>     functions that send this selector (exact, or /regex/)
    py tools/query.py str     <regex>        functions referencing a string literal matching regex
    py tools/query.py ivar    <regex>        readers and writers of ivars matching Class.ivar regex
    py tools/query.py const   <number>       functions that load this float/double constant
    py tools/query.py make-digests           write analysis/digest/<unit>.txt for every unit

The digest keeps only lines that carry meaning after annotation: message sends, ivar/global/struct
stores, conditional branches (as if-conditions), direct calls, returns and labels. Every line keeps
its address so a digest line can always be checked against the full listing.
"""
import json
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BUILD = os.path.join(ROOT, 'analysis')

_xrefs = None


def xrefs():
    global _xrefs
    if _xrefs is None:
        with open(os.path.join(BUILD, 'xrefs.json'), encoding='utf-8') as f:
            _xrefs = json.load(f)
    return _xrefs


def unit_file(unit):
    return os.path.join(BUILD, 'disasm', re.sub(r'[^A-Za-z0-9_+.-]', '_', unit) + '.s')


def function_blocks(path):
    """yield (name, lines) for each function in a unit listing"""
    with open(path, encoding='utf-8') as f:
        lines = f.read().split('\n')
    i = 0
    n = len(lines)
    while i < n:
        if lines[i].startswith('; =====') and i + 1 < n and lines[i + 1].startswith('; ') \
                and not lines[i + 1].startswith('; ====='):
            name = lines[i + 1][2:]
            j = i + 4
            body = []
            while j < n and not (lines[j] == '' and j + 1 < n and lines[j + 1].startswith('; =====')):
                body.append(lines[j])
                j += 1
            yield name, lines[i + 2][2:], body
            i = j
        else:
            i += 1


ARC = re.compile(r'_objc_(retain|release|autorelease|storeStrong|destroyWeak|storeWeak|initWeak|loadWeak)|Unwind_Resume|__stack_chk_fail')
KEEP = re.compile(r' ; (&@selector|d0 = sin|t\d+ = |\[|if \(|.*->.* = |store g_|.*\[\+0x[0-9a-f]+\] = |call |jump |[A-Za-z_~:<>…0-9]+\(.*\)$)')
DROP = re.compile(r' ; (ivar offset |[xwsd]\d+ = |class |load g_)')


def digest_lines(body):
    out = []
    for ln in body:
        if ln.startswith('loc_'):
            out.append(ln)
            continue
        if '.word   jump table' in ln or '.data   ' in ln:
            continue
        if ARC.search(ln):
            # A tail branch into an ARC release IS the function returning: the frame has already been
            # restored and the release runs in the caller's place.  Dropping the whole line hid every
            # early return written that way, which is how the digest of -[ADAmbientManager checkAmbiant]
            # 0x100099444 came to look as though it fell through after playing a brick's ambience.
            m = re.match(r'\s+([0-9a-f]+)\s+b\s+_objc_(release|autorelease)', ln)
            if m:
                out.append('  %s  return' % m.group(1)[-6:])
            continue
        m = re.match(r'\s+([0-9a-f]+)\s+(\S+)\s*(.*?)(?:\s+; (.*))?$', ln)
        if not m:
            continue
        addr, mn, ops, cmt = m.group(1), m.group(2), m.group(3), m.group(4)
        short = addr[-6:]
        if mn == 'ret':
            out.append('  %s  return' % short)
        elif cmt and mn in ('b', 'bl') and ('[' in cmt or '(' in cmt):
            out.append('  %s  %s%s' % (short, 'tail ' if mn == 'b' else '', cmt))
        elif cmt and mn == 'br' and cmt.startswith('switch'):
            out.append('  %s  %s' % (short, cmt))
        elif cmt and (mn.startswith('b.') or mn in ('cbz', 'cbnz', 'tbz', 'tbnz')):
            out.append('  %s  %s goto %s' % (short, cmt, ops.split(', ')[-1]))
        elif mn == 'b':
            out.append('  %s  goto %s' % (short, ops))
        elif mn in ('bl', 'blr') and not cmt:
            out.append('  %s  call %s' % (short, ops))
        elif cmt and KEEP.search(' ; ' + cmt) and not DROP.search(' ; ' + cmt):
            out.append('  %s  %s' % (short, cmt))
    # stack-protector checks are noise
    out = [ln for ln in out if '___stack_chk_guard' not in ln]
    # after the last return, exception landing pads only release objects: keep only meaningful lines
    last_ret = max((i for i, ln in enumerate(out) if ln.endswith('  return')), default=None)
    if last_ret is not None:
        tail = [ln for ln in out[last_ret + 1:]
                if not (ln.startswith('loc_') or re.match(r'\s+\w+\s+goto loc_', ln))]
        out = out[:last_ret + 1] + tail
    # drop labels nobody jumps to in the digest
    targets = set()
    for ln in out:
        for t in re.findall(r'loc_[0-9a-f]+', ln):
            if not ln.startswith(t + ':'):  # a reference, not the label line itself
                targets.add(t)
    return [ln for ln in out if not (ln.startswith('loc_') and ln.split(':')[0] not in targets)]


def iter_functions(pattern):
    rx = re.compile(pattern)
    by_unit = {}
    for addr, x in xrefs().items():
        if rx.search(x['name']):
            by_unit.setdefault(x['unit'], set()).add(x['name'])
    for unit, names in sorted(by_unit.items()):
        for name, info, body in function_blocks(unit_file(unit)):
            if name in names:
                yield name, info, body


def main():
    try:
        sys.stdout.reconfigure(encoding='utf-8', errors='replace')   # console code pages can't show all literals
    except Exception:
        pass
    if len(sys.argv) < 2:
        print(__doc__)
        return
    cmd = sys.argv[1]
    arg = sys.argv[2] if len(sys.argv) > 2 else ''
    X = xrefs()
    if cmd == 'fn':
        for name, info, body in iter_functions(arg):
            print('\n; ===== %s   (%s)' % (name, info))
            print('\n'.join(body))
    elif cmd == 'digest':
        minsize = int(sys.argv[3]) if len(sys.argv) > 3 else 0
        for name, info, body in iter_functions(arg):
            size = int(re.search(r'size (\d+)', info).group(1))
            if size < minsize:
                continue
            print('\n== %s   (%s)' % (name, info))
            print('\n'.join(digest_lines(body)))
    elif cmd == 'list':
        rx = re.compile(arg)
        for a, x in sorted(X.items(), key=lambda kv: int(kv[0], 16)):
            if rx.search(x['name']):
                print('%s %6d  %s' % (a, x['size'], x['name']))
    elif cmd == 'callers':
        rx = re.compile(arg)
        for a, x in sorted(X.items(), key=lambda kv: int(kv[0], 16)):
            if rx.search(x['name']):
                print('%s %s' % (a, x['name']))
                for c in x.get('callers', []):
                    print('    <- %s %s' % (c, X[c]['name'] if c in X else '?'))
    elif cmd == 'sel':
        if arg.startswith('/') and arg.endswith('/'):
            rx = re.compile(arg[1:-1])
            match = lambda s: rx.search(s)  # noqa: E731
        else:
            match = lambda s: s == arg  # noqa: E731
        for a, x in sorted(X.items(), key=lambda kv: kv[1]['name']):
            hits = sorted(set('[%s %s]' % (r, s) for r, s in x['sends'] if match(s)))
            if hits:
                print('%s %s' % (a, x['name']))
                for h in hits:
                    print('      ' + h)
    elif cmd == 'str':
        rx = re.compile(arg)
        for a, x in sorted(X.items(), key=lambda kv: kv[1]['name']):
            hits = [s for s in x['strings'] if rx.search(s)]
            if hits:
                print('%s %-60s %s' % (a, x['name'], ' | '.join(sorted(set(hits)))[:300]))
    elif cmd == 'ivar':
        rx = re.compile(arg)
        for a, x in sorted(X.items(), key=lambda kv: kv[1]['name']):
            r = [i for i in x['ivars_read'] if rx.search(i)]
            w = [i for i in x['ivars_written'] if rx.search(i)]
            if r or w:
                print('%s %-60s %s%s' % (a, x['name'], ('W:' + ','.join(w) + ' ') if w else '',
                                         ('R:' + ','.join(r)) if r else ''))
    elif cmd == 'const':
        v = float(arg)
        for a, x in sorted(X.items(), key=lambda kv: kv[1]['name']):
            if any(abs(c - v) < 1e-5 for c in x['constants']):
                print('%s %s' % (a, x['name']))
    elif cmd == 'make-digests':
        out = os.path.join(BUILD, 'digest')
        os.makedirs(out, exist_ok=True)
        n = 0
        for fn in sorted(os.listdir(os.path.join(BUILD, 'disasm'))):
            parts = []
            for name, info, body in function_blocks(os.path.join(BUILD, 'disasm', fn)):
                parts.append('\n== %s   (%s)' % (name, info))
                parts.extend(digest_lines(body))
                n += 1
            with open(os.path.join(out, fn[:-2] + '.txt'), 'w', encoding='utf-8', newline='\n') as f:
                f.write('\n'.join(parts) + '\n')
        print('wrote digests for %d functions -> %s' % (n, out))
    else:
        print(__doc__)


if __name__ == '__main__':
    main()
