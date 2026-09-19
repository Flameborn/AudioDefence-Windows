"""Bundle plist access ([NSDictionary dictionaryWithContentsOfURL:] etc.)."""
from __future__ import annotations

import copy
import os
import plistlib
from functools import lru_cache

from .. import paths


@lru_cache(maxsize=None)
def _load(name: str):
    path = paths.bundle_path(name if name.endswith('.plist') else name + '.plist')
    if not os.path.isfile(path):
        return None
    with open(path, 'rb') as fh:
        return plistlib.load(fh)


def plist(name: str):
    """A fresh mutable copy of a bundle plist, or None if it does not exist (URLForResource nil)."""
    data = _load(name)
    return copy.deepcopy(data) if data is not None else None


def plist_ro(name: str):
    """Shared read-only view (callers must not mutate)."""
    return _load(name)


def exists(name: str) -> bool:
    return _load(name) is not None


@lru_cache(maxsize=1)
def _strings() -> dict:
    path = paths.bundle_path('en.lproj', 'Localizable.strings')
    if not os.path.isfile(path):
        return {}
    with open(path, 'rb') as fh:
        return plistlib.load(fh)


def spoken_text(text: str) -> str:
    """PORT ADDITION: four of the game's strings are written in capitals for the screen - TAROT_NO_RELOAD,
    CHALLENGE_INFO_TITLE, FACEBOOK_LIKE and TWITTER_FOLLOW.  A screen reader should not shout them, so what
    is spoken is sentence case; the text on screen keeps the capitals."""
    text = ' '.join(str(text).split())                  # the line breaks are for the label, not for speech
    words = text.split(' ')
    if not words or not all(w.isupper() or not w.isalpha() for w in words):
        return text
    return text.lower()[:1].upper() + text.lower()[1:]


def localized(key: str, value: str = '') -> str:
    """[[NSBundle mainBundle] localizedStringForKey:key value:value table:nil]: the key itself when missing
    and value is empty."""
    s = _strings().get(key)
    if s is not None:
        return s
    return value if value else key
