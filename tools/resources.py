"""Decode every data file in the Audio Defence app bundle into readable form.

  * binary plists (game data, Info.plist, .strings, SpriteKit .sks)  -> analysis/data/plists/*.json
    NSKeyedArchiver archives are un-archived into plain object trees.
  * compiled NIBs (NIBArchive format, single file or directory)      -> analysis/data/nibs/*.txt
    object tree with custom classes, texts, accessibility labels/hints, frames,
    plus outlet and action connections (which drive the view controllers' IBActions)
  * S3D playlists (meta/S3DPlayListModel/*.sexp)                      -> analysis/data/playlists.json
  * sounds/ inventory with durations (needs PyAV)                     -> analysis/data/sounds.tsv

Usage:
    py tools/resources.py "<path to audiodefence.app>" [--out analysis/data] [--no-durations]
"""
import base64
import collections
import json
import os
import plistlib
import re
import struct
import sys


# ----------------------------------------------------------------------------- plists
def _jsonable(v):
    if isinstance(v, dict):
        return {str(k): _jsonable(x) for k, x in v.items()}
    if isinstance(v, (list, tuple)):
        return [_jsonable(x) for x in v]
    if isinstance(v, bytes):
        return {'$data_base64': base64.b64encode(v).decode()}
    if isinstance(v, plistlib.UID):
        return {'$uid': v.data}
    if hasattr(v, 'isoformat'):
        return v.isoformat()
    return v


def unarchive(top):
    """Resolve an NSKeyedArchiver plist into nested python objects."""
    objs = top['$objects']
    cache = {}

    def res(v):
        if isinstance(v, plistlib.UID):
            return obj(v.data)
        if isinstance(v, list):
            return [res(x) for x in v]
        if isinstance(v, dict):
            return {k: res(x) for k, x in v.items()}
        return v

    def obj(i):
        if i in cache:
            return cache[i]
        o = objs[i]
        if o == '$null':
            return None
        if not isinstance(o, dict):
            return o
        cls = None
        if '$class' in o:
            cdesc = objs[o['$class'].data]
            cls = cdesc.get('$classname')
        if cls in ('NSArray', 'NSMutableArray', 'NSSet', 'NSMutableSet'):
            out = []
            cache[i] = out
            out.extend(res(x) for x in o.get('NS.objects', []))
            return out
        if cls in ('NSDictionary', 'NSMutableDictionary'):
            out = {}
            cache[i] = out
            for k, v in zip(o.get('NS.keys', []), o.get('NS.objects', [])):
                out[str(res(k))] = res(v)
            return out
        if cls in ('NSString', 'NSMutableString'):
            return o.get('NS.string')
        out = {'$class': cls}
        cache[i] = out
        for k, v in o.items():
            if k != '$class':
                out[k] = res(v)
        return out

    root = top['$top']
    return {k: res(v) for k, v in root.items()}


def decode_plist(path):
    with open(path, 'rb') as f:
        raw = f.read()
    try:
        v = plistlib.loads(raw)
    except Exception:
        # .strings files may be UTF-16 text
        for enc in ('utf-16', 'utf-8'):
            try:
                txt = raw.decode(enc)
                return {'$text': txt}
            except Exception:
                pass
        raise
    if isinstance(v, dict) and v.get('$archiver') == 'NSKeyedArchiver':
        return {'$archiver': 'NSKeyedArchiver', 'root': _jsonable(unarchive(v))}
    return _jsonable(v)


# ----------------------------------------------------------------------------- NIBArchive
def _varint(buf, p):
    result = shift = 0
    while True:
        b = buf[p]
        p += 1
        result |= (b & 0x7F) << shift
        shift += 7
        if b & 0x80:
            return result, p


class NibArchive:
    def __init__(self, raw):
        if raw[:10] != b'NIBArchive':
            raise ValueError('not a NIBArchive')
        (self.fmt, self.coder, nobj, objoff, nkey, keyoff, nval, valoff,
         ncls, clsoff) = struct.unpack('<10I', raw[10:50])
        keys = []
        p = keyoff
        for _ in range(nkey):
            ln, p = _varint(raw, p)
            keys.append(raw[p:p + ln].decode('utf-8', 'replace'))
            p += ln
        classes = []
        p = clsoff
        for _ in range(ncls):
            ln, p = _varint(raw, p)
            extra, p = _varint(raw, p)
            p += 4 * extra
            classes.append(raw[p:p + ln].rstrip(b'\0').decode('utf-8', 'replace'))
            p += ln
        values = []
        p = valoff
        for _ in range(nval):
            k, p = _varint(raw, p)
            t = raw[p]
            p += 1
            if t == 0:
                v = struct.unpack('<b', raw[p:p + 1])[0]; p += 1
            elif t == 1:
                v = struct.unpack('<h', raw[p:p + 2])[0]; p += 2
            elif t == 2:
                v = struct.unpack('<i', raw[p:p + 4])[0]; p += 4
            elif t == 3:
                v = struct.unpack('<q', raw[p:p + 8])[0]; p += 8
            elif t == 4:
                v = True
            elif t == 5:
                v = False
            elif t == 6:
                v = struct.unpack('<f', raw[p:p + 4])[0]; p += 4
            elif t == 7:
                v = struct.unpack('<d', raw[p:p + 8])[0]; p += 8
            elif t == 8:
                ln, p = _varint(raw, p)
                v = raw[p:p + ln]; p += ln
            elif t == 9:
                v = None
            elif t == 10:
                v = ('ref', struct.unpack('<I', raw[p:p + 4])[0]); p += 4
            else:
                raise ValueError('unknown nib value type %d' % t)
            values.append((keys[k], v))
        self.objects = []
        p = objoff
        for _ in range(nobj):
            ci, p = _varint(raw, p)
            vs, p = _varint(raw, p)
            vc, p = _varint(raw, p)
            self.objects.append((classes[ci], values[vs:vs + vc]))

    def pyobj(self, i, depth=0, seen=None):
        """Convert object i into plain python (strings, lists, dicts, or {'$class':…})."""
        cls, vals = self.objects[i]
        if cls in ('NSString', 'NSMutableString', 'NSLocalizableString'):
            for k, v in vals:
                if k == 'NS.bytes':
                    return v.decode('utf-8', 'replace') if isinstance(v, bytes) else v
            return ''
        if cls in ('NSArray', 'NSMutableArray', 'NSSet', 'NSMutableSet'):
            return [self.val(v, depth, seen) for k, v in vals if k == 'UINibEncoderEmptyKey']
        if cls in ('NSDictionary', 'NSMutableDictionary'):
            items = [v for k, v in vals if k == 'UINibEncoderEmptyKey']
            return {str(self.val(items[j], depth, seen)): self.val(items[j + 1], depth, seen)
                    for j in range(0, len(items) - 1, 2)}
        if cls == 'NSNumber':
            for k, v in vals:
                if k == 'NS.intval' or k == 'NS.dblval' or k == 'NS.boolval':
                    return v
        return ('obj', i)

    def val(self, v, depth=0, seen=None):
        if isinstance(v, tuple) and v[0] == 'ref':
            return self.pyobj(v[1], depth, seen)
        if isinstance(v, bytes):
            try:
                s = v.decode('utf-8')
                if s.isprintable():
                    return s
            except Exception:
                pass
            return '<%d bytes>' % len(v)
        return v

    def fields(self, i):
        return self.objects[i][1]

    def field(self, i, key, default=None):
        for k, v in self.objects[i][1]:
            if k == key:
                return v
        return default


INTERESTING = ('UIText', 'UITitle', 'UIClassName', 'UIOriginalClassName', 'UIRestorationIdentifier',
               'UIAccessibilityLabel', 'UIAccessibilityHint', 'UIAccessibilityTraits', 'UIAccessibilityValue',
               'UIIsAccessibilityElement', 'UIAccessibilityIdentifier', 'UINibName', 'UIPlaceholder',
               'UITag', 'UIFontName', 'UIFontPointSize', 'UIImageName', 'UIResourceName', 'UIHidden',
               'UIUserInteractionDisabled', 'UIViewContentMode', 'UIEnabled', 'UISelected', 'UINumberOfLines',
               'UIMinimumValue', 'UIMaximumValue', 'UIValue', 'UIProxiedObjectIdentifier', 'UIKeyPath',
               'UIAccessibilityElementsHidden', 'UIShouldGroupAccessibilityChildren')


def describe_nib(nib):
    L = []
    # find the root object: the one with UINibObjectsKey
    root = None
    for i, (cls, vals) in enumerate(nib.objects):
        if any(k == 'UINibTopLevelObjectsKey' for k, v in vals):
            root = i
            break
    if root is None:
        root = 0

    def text_of(i):
        cls, vals = nib.objects[i]
        bits = []
        custom = None
        for k, v in vals:
            if k == 'UIClassName':
                custom = nib.val(v)
            elif k == 'UIOriginalClassName':
                cls = nib.val(v)
        for k, v in vals:
            if k in INTERESTING and k not in ('UIClassName', 'UIOriginalClassName'):
                vv = nib.val(v)
                if isinstance(vv, tuple):
                    vv = describe_short(vv[1])
                if isinstance(vv, dict) and '$class' in vv:
                    continue
                if isinstance(vv, float):
                    vv = round(vv, 3)
                bits.append('%s=%r' % (k[2:], vv))
            elif k in ('UIFrame', 'UIBounds', 'UICenter') and isinstance(v, bytes):
                pass
            elif k == 'UIImage' and isinstance(v, tuple):
                img = nib.field(v[1], 'UIResourceName')
                if img is not None:
                    bits.append('Image=%r' % nib.val(img))
            elif k in ('UIButtonStatefulContent',):
                pass
        return cls, custom, bits

    def describe_short(i):
        cls, custom, bits = text_of(i)
        label = custom or cls
        txt = [b for b in bits if b.startswith(('Text=', 'Title=', 'AccessibilityLabel='))]
        return '#%d %s%s' % (i, label, (' ' + ' '.join(txt)) if txt else '')

    # button titles live in UIButtonStatefulContent -> dictionary of UIButtonContent(UITitle)
    def button_titles(i):
        out = []
        sc = nib.field(i, 'UIButtonStatefulContent')
        if isinstance(sc, tuple):
            d = nib.pyobj(sc[1])
            if isinstance(d, dict):
                for state, content in d.items():
                    if isinstance(content, tuple):
                        t = nib.field(content[1], 'UITitle')
                        if t is not None:
                            out.append('title[%s]=%r' % (state, nib.val(t)))
        return out

    visited = set()

    def tree(i, indent):
        if i in visited:
            L.append('%s(-> #%d)' % ('  ' * indent, i))
            return
        visited.add(i)
        cls, custom, bits = text_of(i)
        bits += button_titles(i)
        label = cls if not custom else '%s (custom class %s)' % (cls, custom)
        L.append('%s#%d %s  %s' % ('  ' * indent, i, label, ' '.join(bits)))
        sub = nib.field(i, 'UISubviews')
        if isinstance(sub, tuple):
            for k, v in nib.fields(sub[1]):
                if k == 'UINibEncoderEmptyKey' and isinstance(v, tuple):
                    tree(v[1], indent + 1)
        for key in ('UIView', 'UINavigationItem', 'UITableHeaderView', 'UITableFooterView', 'UIContentView'):
            v = nib.field(i, key)
            if isinstance(v, tuple):
                L.append('%s[%s]' % ('  ' * (indent + 1), key))
                tree(v[1], indent + 2)

    top = nib.field(root, 'UINibTopLevelObjectsKey')
    L.append('TOP-LEVEL OBJECTS')
    if isinstance(top, tuple):
        for k, v in nib.fields(top[1]):
            if isinstance(v, tuple):
                tree(v[1], 1)

    conns = nib.field(root, 'UINibConnectionsKey')
    L.append('')
    L.append('CONNECTIONS')
    if isinstance(conns, tuple):
        for k, v in nib.fields(conns[1]):
            if not isinstance(v, tuple):
                continue
            ccls = nib.objects[v[1]][0]
            label = nib.val(nib.field(v[1], 'UILabel'))
            src = nib.field(v[1], 'UISource')
            dst = nib.field(v[1], 'UIDestination')
            s = describe_short(src[1]) if isinstance(src, tuple) else '?'
            d = describe_short(dst[1]) if isinstance(dst, tuple) else '?'
            if ccls == 'UIRuntimeEventConnection':
                mask = nib.field(v[1], 'UIEventMask')
                L.append('  action  %-40s  %s --(events 0x%x)--> %s' % (label, s, mask or 0, d))
            else:
                L.append('  outlet  %-40s  %s --> %s' % (label, s, d))

    acc = nib.field(root, 'UINibAccessibilityConfigurationsKey')
    if isinstance(acc, tuple):
        L.append('')
        L.append('ACCESSIBILITY CONFIGURATIONS')
        for k, v in nib.fields(acc[1]):
            if not isinstance(v, tuple):
                continue
            obj = nib.field(v[1], 'UIAccessibilityConfigurationObject') or nib.field(v[1], 'object')
            bits = []
            for kk, vv in nib.fields(v[1]):
                val = nib.val(vv)
                if isinstance(val, tuple):
                    val = describe_short(val[1])
                bits.append('%s=%r' % (kk, val))
            L.append('  ' + ' '.join(bits))
    return '\n'.join(L)


def load_nib(path):
    if os.path.isdir(path):
        for cand in ('runtime.nib', 'objects-8.0+.nib', 'objects.nib', 'keyedobjects.nib'):
            fp = os.path.join(path, cand)
            if os.path.exists(fp):
                path = fp
                break
    with open(path, 'rb') as f:
        raw = f.read()
    return NibArchive(raw)


# ----------------------------------------------------------------------------- S-expressions
def parse_sexp(text):
    tokens = re.findall(r'"(?:[^"\\]|\\.)*"|[()]|[^\s()"]+', text)
    pos = 0

    def atom(t):
        if t.startswith('"'):
            return t[1:-1]
        if t in ('true', 'false'):
            return t == 'true'
        try:
            return int(t)
        except ValueError:
            try:
                return float(t)
            except ValueError:
                return t

    def expr():
        nonlocal pos
        t = tokens[pos]
        pos += 1
        if t == '(':
            out = []
            while tokens[pos] != ')':
                out.append(expr())
            pos += 1
            return out
        return atom(t)

    out = []
    while pos < len(tokens):
        out.append(expr())
    return out


def playlist_from_sexp(node):
    """(playlist (name ..) (repeat ..) (sound ...)* (playlist (name ..))*)  -> dict"""
    pl = {'name': None, 'options': {}, 'sounds': [], 'subplaylists': []}
    for item in node[1:]:
        if not isinstance(item, list) or not item:
            continue
        head = item[0]
        if head == 'name':
            pl['name'] = item[1]
        elif head == 'sound':
            snd = {}
            for f in item[1:]:
                if isinstance(f, list) and f:
                    if f[0] == 'bundle':
                        b = {g[0]: g[1] for g in f[1:] if isinstance(g, list) and len(g) >= 2}
                        snd['file'] = '%s/%s.%s' % (b.get('path'), b.get('name'), b.get('extension'))
                        snd['name'] = b.get('name')
                    else:
                        snd[f[0]] = f[1] if len(f) > 1 else True
            pl['sounds'].append(snd)
        elif head == 'playlist':
            sub = {g[0]: g[1] for g in item[1:] if isinstance(g, list) and len(g) >= 2}
            pl['subplaylists'].append(sub.get('name'))
        else:
            pl['options'][head] = item[1] if len(item) > 1 else True
    return pl


# ----------------------------------------------------------------------------- driver
def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__)
        return
    app = args[0]
    out = args[args.index('--out') + 1] if '--out' in args else os.path.join('analysis', 'data')
    os.makedirs(os.path.join(out, 'plists'), exist_ok=True)
    os.makedirs(os.path.join(out, 'nibs'), exist_ok=True)
    counts = collections.Counter()
    errors = []

    for root, dirs, files in os.walk(app):
        rel_root = os.path.relpath(root, app)
        if rel_root.startswith('sounds') or rel_root.startswith('_CodeSignature'):
            continue
        # nib directories
        for d in list(dirs):
            if d.endswith('.nib'):
                src = os.path.join(root, d)
                try:
                    text = describe_nib(load_nib(src))
                    with open(os.path.join(out, 'nibs', d + '.txt'), 'w', encoding='utf-8', newline='\n') as f:
                        f.write('// %s\n%s\n' % (os.path.relpath(src, app), text))
                    counts['nib'] += 1
                except Exception as e:
                    errors.append((src, repr(e)))
                dirs.remove(d)
        for fn in files:
            src = os.path.join(root, fn)
            rel = os.path.relpath(src, app)
            low = fn.lower()
            try:
                if low.endswith('.nib'):
                    text = describe_nib(load_nib(src))
                    with open(os.path.join(out, 'nibs', fn + '.txt'), 'w', encoding='utf-8', newline='\n') as f:
                        f.write('// %s\n%s\n' % (rel, text))
                    counts['nib'] += 1
                elif low.endswith(('.plist', '.strings', '.sks')):
                    data = decode_plist(src)
                    name = rel.replace(os.sep, '__')
                    with open(os.path.join(out, 'plists', name + '.json'), 'w', encoding='utf-8', newline='\n') as f:
                        json.dump(data, f, indent=1, ensure_ascii=False)
                    counts[os.path.splitext(low)[1]] += 1
            except Exception as e:
                errors.append((rel, repr(e)))

    # playlists
    playlists = {}
    pdir = os.path.join(app, 'meta', 'S3DPlayListModel')
    for fn in sorted(os.listdir(pdir)):
        with open(os.path.join(pdir, fn), encoding='utf-8', errors='replace') as f:
            txt = f.read()
        try:
            nodes = parse_sexp(txt)
            pl = playlist_from_sexp(nodes[0])
            pl['file'] = fn
            playlists[pl['name'] or fn] = pl
            counts['playlist'] += 1
        except Exception as e:
            errors.append((fn, repr(e)))
    with open(os.path.join(out, 'playlists.json'), 'w', encoding='utf-8', newline='\n') as f:
        json.dump(playlists, f, indent=1)

    # sound inventory
    rows = ['path\tduration_s\tchannels\tsample_rate\tin_playlists']
    used = collections.defaultdict(list)
    for pl in playlists.values():
        for s in pl['sounds']:
            used[s.get('file')].append(pl['name'])
    try:
        import av  # noqa
        have_av = '--no-durations' not in args
    except ImportError:
        have_av = False
    for root, dirs, files in os.walk(os.path.join(app, 'sounds')):
        for fn in sorted(files):
            if not fn.lower().endswith(('.m4a', '.mp3', '.wav', '.caf')):
                continue
            src = os.path.join(root, fn)
            rel = os.path.relpath(src, app).replace(os.sep, '/')
            dur = ch = sr = ''
            if have_av:
                try:
                    import av
                    with av.open(src) as c:
                        st = c.streams.audio[0]
                        dur = '%.3f' % (float(c.duration) / 1e6) if c.duration else ''
                        ch = st.codec_context.channels
                        sr = st.codec_context.sample_rate
                except Exception as e:
                    errors.append((rel, repr(e)))
            rows.append('%s\t%s\t%s\t%s\t%s' % (rel, dur, ch, sr, ','.join(used.get(rel, []))))
            counts['sound'] += 1
    with open(os.path.join(out, 'sounds.tsv'), 'w', encoding='utf-8', newline='\n') as f:
        f.write('\n'.join(rows) + '\n')
    unreferenced = [r.split('\t')[0] for r in rows[1:] if not r.split('\t')[4]]
    missing = sorted(k for k in used if k and not os.path.exists(os.path.join(app, k)))
    print('decoded:', dict(counts))
    print('sounds not in any playlist: %d, playlist entries with missing file: %d' % (len(unreferenced), len(missing)))
    for m in missing[:20]:
        print('   missing:', m)
    if errors:
        print('errors: %d' % len(errors))
        for e in errors[:30]:
            print('  ', e)


if __name__ == '__main__':
    main()
