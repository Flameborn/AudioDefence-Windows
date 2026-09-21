"""Condensed control-flow view of a function's annotated listing.

Keeps labels, branches (with their decoded conditions), calls / message sends, stores, float constant loads
and returns; drops ARC retain/release and plain register shuffling.

    py tools/cflow.py "ADEnemy update:"
"""
from __future__ import annotations

import os
import re
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

KEEP = re.compile(r'^\s*(loc_[0-9a-f]+:|;\s*=====)|\b(b\.|cbz|cbnz|tbz|tbnz|b\s+loc_|bl\s|blr\s|br\s|ret\b|fcmp|cmp|'
                  r'fcsel|csel|cset|csinc|cinc)|; .*=|switch')
DROP = re.compile(r'_objc_retain|_objc_release|_objc_autorelease|stack_chk|mov     x29, x29')


def main() -> int:
    pattern = sys.argv[1]
    out = subprocess.run([sys.executable, os.path.join(ROOT, 'tools', 'query.py'), 'fn', pattern],
                         capture_output=True, text=True, encoding='utf-8', errors='replace').stdout
    for line in out.splitlines():
        if DROP.search(line):
            continue
        if KEEP.search(line):
            print(line.rstrip())
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
