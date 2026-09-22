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
        return _correct(plistlib.load(fh))                # PORT ADDITION: the original's typos (TYPOS)


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


#: PORT ADDITION: what the original spelled wrong, put right as its text is read in (user request).  The
#: game's own files are not touched, so a copy of the app given with --game is corrected too.  Each is
#: matched with the words around it, so nothing else can be caught by accident.  Only mistakes are here -
#: not the original's British and American spellings side by side, nor Dr Bastard with and without his dot.
TYPOS = (
    ('inflated like ballons', 'inflated like balloons'),      # the Farty, in the encyclopedia
    ('keep al the gas', 'keep all the gas'),                  # the Farty again
    ('become more aggresive', 'become more aggressive'),      # a tip in Endless, training grounds 3
    ('playing anticlimatic music', 'playing anticlimactic music'),   # a tarot card
    ('Shoot it stop it for a while', 'Shoot it to stop it for a while'),   # another tarot card
    ('In the the Mayan Ruin', 'In the Mayan Ruin'),           # the first challenge in the Mayan arena
    ('a fierce thunderstom', 'a fierce thunderstorm'),        # the storm challenge
    ('for a few seconds you if they blow up', 'for a few seconds if they blow up'),   # Meet The Farty
    ('And remeber to use your melee', 'And remember to use your melee'),   # The Mixed Bag
    ('but careful, It takes ages', 'but careful, it takes ages'),   # the Machine Gun in the armory
    ('if you think a Zombie is in front of you', 'If you think a Zombie is in front of you'),   # a loading tip
)


def corrected(text):
    """A piece of the game's own writing with its spelling mistakes put right (TYPOS)."""
    if not text:
        return text
    out = str(text)
    for wrong, right in TYPOS:
        out = out.replace(wrong, right)
    return out


def _correct(value):
    """The same plist with every piece of writing in it corrected, so every screen that reads one gets it
    right - the tips, the objectives, the tarot cards, the weapons and the encyclopedia alike."""
    if isinstance(value, str):
        return corrected(value)
    if isinstance(value, dict):
        return {k: _correct(v) for k, v in value.items()}
    if isinstance(value, list):
        return [_correct(v) for v in value]
    return value


def localized(key: str, value: str = '') -> str:
    """[[NSBundle mainBundle] localizedStringForKey:key value:value table:nil]: the key itself when missing
    and value is empty."""
    s = _strings().get(key)
    if s is not None:
        return corrected(s)                               # PORT ADDITION: the original's typos (TYPOS)
    return value if value else key
