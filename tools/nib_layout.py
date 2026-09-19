"""Print a NIB's views with absolute frames, in VoiceOver-like reading order.

VoiceOver visits elements by screen position (top to bottom, then left to right).  This prints every view
of each top-level view tree with its absolute centre, size, class, text/title and accessibility label so a
port can order a screen's accessible elements from the original layout instead of guessing.

    python tools/nib_layout.py ADMainMenuViewController [--all]

Without --all only views with a label, title, text or a custom class are listed.
"""
from __future__ import annotations

import argparse
import os
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import resources as r  # noqa: E402

APP = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'game')


def _doubles(v, n):
    if not isinstance(v, bytes) or len(v) < 1 + 8 * n:
        return None
    return struct.unpack('<%dd' % n, v[1:1 + 8 * n])


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument('nib')
    ap.add_argument('--all', action='store_true')
    args = ap.parse_args()
    nib = r.load_nib(os.path.join(APP, args.nib + '.nib'))

    def field(i, key):
        return nib.field(i, key)

    def label(i):
        bits = []
        cls = nib.objects[i][0]
        custom = field(i, 'UIClassName')
        orig = field(i, 'UIOriginalClassName')
        name = nib.val(custom) if custom is not None else (nib.val(orig) if orig is not None else cls)
        for key in ('UIText', 'UIAccessibilityLabel', 'UIAccessibilityHint', 'UITag', 'UIHidden'):
            v = field(i, key)
            if v is not None:
                vv = nib.val(v)
                if isinstance(vv, tuple):
                    continue
                bits.append(f'{key[2:]}={vv!r}')
        sc = field(i, 'UIButtonStatefulContent')
        if isinstance(sc, tuple):
            d = nib.pyobj(sc[1])
            if isinstance(d, dict):
                for state, content in d.items():
                    if isinstance(content, tuple):
                        t = nib.field(content[1], 'UITitle')
                        if t is not None:
                            bits.append(f'Title[{state}]={nib.val(t)!r}')
        img = field(i, 'UIImage')
        if isinstance(img, tuple):
            res = nib.field(img[1], 'UIResourceName')
            if res is not None:
                bits.append(f'Image={nib.val(res)!r}')
        return name, custom is not None, bits

    # accessibility labels are attached through UIAccessibilityConfiguration objects
    acc = {}
    for i, (cls, vals) in enumerate(nib.objects):
        d = dict(vals)
        if 'UIAccessibilityConfigurationObject' in d or 'UIAccessibileObject' in d:
            obj = d.get('UIAccessibilityConfigurationObject') or d.get('UIAccessibileObject')
            if isinstance(obj, tuple):
                for k, v in vals:
                    if k in ('UIAccessibilityConfigurationObject', 'UIAccessibileObject'):
                        continue
                    acc.setdefault(obj[1], []).append(f'{k[2:]}={nib.val(v)!r}')

    rows = []

    def walk(i, origin, depth, top):
        center = _doubles(field(i, 'UICenter'), 2)
        bounds = _doubles(field(i, 'UIBounds'), 4)
        if center and bounds:
            x0 = origin[0] + center[0] - bounds[2] / 2
            y0 = origin[1] + center[1] - bounds[3] / 2
            size = (bounds[2], bounds[3])
        else:
            x0, y0 = origin
            size = (0.0, 0.0)
        name, custom, bits = label(i)
        bits += acc.get(i, [])
        rows.append((top, depth, y0, x0, size, i, name, custom, bits))
        subs = field(i, 'UISubviews')
        if isinstance(subs, tuple):
            for s in nib.val(subs) if False else nib.pyobj(subs[1]):
                if isinstance(s, tuple):
                    walk(s[1], (x0, y0), depth + 1, top)

    root = next(i for i, (c, v) in enumerate(nib.objects) if any(k == 'UINibTopLevelObjectsKey' for k, _ in v))
    tops = nib.pyobj(nib.field(root, 'UINibTopLevelObjectsKey')[1])
    for t in tops:
        if isinstance(t, tuple) and field(t[1], 'UISubviews') is not None:
            walk(t[1], (0.0, 0.0), 0, t[1])

    for top in dict.fromkeys(row[0] for row in rows):
        tag = field(top, 'UITag')
        print(f'== top-level view #{top}' + (f' tag {nib.val(tag)}' if tag is not None else ''))
        mine = [row for row in rows if row[0] == top]
        mine.sort(key=lambda row: (round(row[2] / 8), row[3]))
        for _, depth, y0, x0, size, i, name, custom, bits in mine:
            if not args.all and not bits and not custom:
                continue
            print(f'  y={y0:6.0f} x={x0:6.0f} {size[0]:4.0f}x{size[1]:<4.0f} #{i:<4} {name} {" ".join(bits)}')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
