"""Print parts of a function listing: python tools/listing.py <function regex> [start-end ...] (hex addresses).

Without ranges the whole listing is printed.  Retain/release noise is dropped.
"""
import re
import subprocess
import sys

NOISE = ('objc_release', 'mov     x29, x29', 'retainAutoreleased', '_objc_retain\n')


def main() -> int:
    out = subprocess.run([sys.executable, 'tools/query.py', 'fn', sys.argv[1]], capture_output=True, text=True).stdout
    ranges = []
    for r in sys.argv[2:]:
        lo, hi = r.split('-')
        ranges.append((int(lo, 16), int(hi, 16)))
    for line in out.splitlines():
        m = re.match(r'\s+([0-9a-f]{9})\s', line)
        if not m:
            if line.startswith(('loc_', '; =====')):
                print(line)
            continue
        if any(n in line + '\n' for n in NOISE) or line.rstrip().endswith('nop'):
            continue
        a = int(m.group(1), 16)
        if not ranges or any(lo <= a <= hi for lo, hi in ranges):
            print(line[:170])
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
