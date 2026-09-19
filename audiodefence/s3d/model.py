"""S3DPlayListModel: the playlist definitions in meta/S3DPlayListModel/*.sexp.

``+[S3DPlayListModel decode:]`` 0x10010a520 reads, per file:
    playlist/name, playlist/repeat
    each (sound ...): spatialized, preload, unloadonstop, stream (booleans), planar (3 floats),
                      bundle/path, bundle/name, bundle/extension
    each nested (playlist (name "<xId>")): recorded in nested_xIds
``-[S3DEngine staticPlayLists]`` 0x1000fb3fc loads every model, then appends the sound entries of each
nested playlist to its parent's list.  A playlist's lookup name is its file name up to the first '.'
(``-[S3DPlayList name]`` 0x1000fcebc splits the xId on '.').
"""
from __future__ import annotations

import os
from dataclasses import dataclass, field

from .. import paths

REPEAT_NONE, REPEAT_LAST, REPEAT_START = 0, 1, 2


def tokenize(text: str):
    i, n = 0, len(text)
    while i < n:
        ch = text[i]
        if ch in ' \t\r\n':
            i += 1
        elif ch in '()':
            yield ch
            i += 1
        elif ch == '"':
            j = i + 1
            buf = []
            while j < n and text[j] != '"':
                if text[j] == '\\' and j + 1 < n:
                    j += 1
                buf.append(text[j])
                j += 1
            yield ('str', ''.join(buf))
            i = j + 1
        elif ch == ';':
            while i < n and text[i] != '\n':
                i += 1
        else:
            j = i
            while j < n and text[j] not in ' \t\r\n()"':
                j += 1
            yield ('atom', text[i:j])
            i = j


def parse(text: str):
    stack: list[list] = [[]]
    for tok in tokenize(text):
        if tok == '(':
            stack.append([])
        elif tok == ')':
            node = stack.pop()
            stack[-1].append(node)
        else:
            stack[-1].append(tok[1])
    return stack[0]


def _child(node: list, name: str):
    for item in node[1:]:
        if isinstance(item, list) and item and item[0] == name:
            return item
    return None


def _children(node: list, name: str):
    return [item for item in node[1:] if isinstance(item, list) and item and item[0] == name]


def _string(node, default=None):
    if node is None or len(node) < 2:
        return default
    return node[1]


def _bool(node) -> bool:
    return node is not None and len(node) > 1 and str(node[1]).lower() in ('true', 'yes', '1')


def repeat_policy(text: str | None) -> int:
    """``+[S3DPlayListModel PlayListRepeatPolicyFromNSString:]`` 0x10010a42c: first letter only."""
    c = (text or ' ')[0].lower()
    if c == 'l':
        return REPEAT_LAST
    if c in ('f', 's'):
        return REPEAT_START
    return REPEAT_NONE


@dataclass
class SoundEntry:
    path: str
    name: str
    extension: str
    spatialized: bool = False
    preload: bool = False
    unloadonstop: bool = False
    stream: bool = False
    planar: tuple = (0.0, 0.0, 0.0)

    @property
    def key(self) -> str:                      # -[S3DPlayList keyFromDict:] 0x1000ffd74
        return f'{self.path}/{self.name}.{self.extension}'


@dataclass
class PlayListModel:
    xid: str
    name: str
    repeat: int
    sounds: list = field(default_factory=list)
    nested: list = field(default_factory=list)


def decode(xid: str, text: str) -> PlayListModel:
    root = parse(text)
    pl = next((n for n in root if isinstance(n, list) and n and n[0] == 'playlist'), None)
    if pl is None:
        raise ValueError(f'{xid}: no playlist node')
    model = PlayListModel(xid=xid, name=_string(_child(pl, 'name'), ''),
                          repeat=repeat_policy(_string(_child(pl, 'repeat'))))
    for snd in _children(pl, 'sound'):
        bundle = _child(snd, 'bundle')
        if bundle is None:
            continue
        planar = _child(snd, 'planar')
        pv = (0.0, 0.0, 0.0)
        if planar is not None:
            vals = [float(v) for v in planar[1:4]] + [0.0, 0.0, 0.0]
            pv = tuple(vals[:3])
        model.sounds.append(SoundEntry(
            path=_string(_child(bundle, 'path'), ''), name=_string(_child(bundle, 'name'), ''),
            extension=_string(_child(bundle, 'extension'), ''),
            spatialized=_bool(_child(snd, 'spatialized')), preload=_bool(_child(snd, 'preload')),
            unloadonstop=_bool(_child(snd, 'unloadonstop')), stream=_bool(_child(snd, 'stream')),
            planar=pv))
    for sub in _children(pl, 'playlist'):
        name = _string(_child(sub, 'name'))
        if name:
            model.nested.append(name)
    return model


def load_all(meta_dir: str | None = None) -> dict[str, PlayListModel]:
    """All models keyed by playlist name, nested playlists merged into their parents."""
    meta_dir = meta_dir or paths.PLAYLIST_META
    by_xid: dict[str, PlayListModel] = {}
    for fname in sorted(os.listdir(meta_dir)):
        if not fname.endswith('.sexp'):
            continue
        xid = fname[:-len('.sexp')]
        with open(os.path.join(meta_dir, fname), encoding='utf-8') as fh:
            by_xid[xid] = decode(xid, fh.read())
    for model in by_xid.values():
        for nested in model.nested:
            sub = by_xid.get(nested)
            if sub is not None:
                model.sounds.extend(sub.sounds)
    return {xid.split('.')[0]: m for xid, m in by_xid.items()}
