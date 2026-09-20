"""PORT ADDITION: what build this is, and which of two builds is newer.

The iOS original has a version - `CFBundleShortVersionString` in `Info.plist` - but it is the phone
game's, not this port's, and the App Store did the updating.  A Windows build has to carry its own.

The number lives in one place, the `VERSION` file, which `compile.py` copies beside the executable the way
it copies `changelog.txt`.  It holds the release tag exactly as GitHub has it, so cutting a release is
copy-and-paste rather than a conversion.

The format is `YY.MM.DD-XX`: the last two digits of the year, the month, the day, and the build number
within that day, counting from 1.  `26.09.20-1` is the first release of the 20th of September 2026 and
`26.09.20-2` the second.

Comparison reads the digits and ignores everything between them, so dots and dashes compare alike and a
shorter number is padded with zeroes - `26.09.20` is older than `26.09.20-1`.  A version that holds no
digits at all is unknown, and an unknown version never asks the player to update: better to say nothing
than to offer an update over a build we cannot place.
"""
from __future__ import annotations

import logging
import os

from .. import paths

log = logging.getLogger('platform.version')

FILENAME = 'VERSION'
UNKNOWN = ''


def _candidates():
    """Beside the executable in a build, at the top of the repository when run from source."""
    yield os.path.join(paths.EXE_DIR, FILENAME)
    yield os.path.join(paths.ROOT, FILENAME)


def current() -> str:
    """This build's version, or '' when there is no VERSION file to read."""
    for path in _candidates():
        try:
            with open(path, encoding='utf-8') as fh:
                text = fh.read().strip()
        except OSError:
            continue
        if text:
            return text.splitlines()[0].strip()
    log.info('no %s file; this build has no version of its own', FILENAME)
    return UNKNOWN


def parse(version: str) -> tuple:
    """'26.09.20-1' and '26-09-20-1' both -> (26, 9, 20, 1); '' -> ()."""
    digits, number, seen = [], 0, False
    for ch in str(version):
        if ch.isdigit():
            number, seen = number * 10 + int(ch), True
        elif seen:
            digits.append(number)
            number, seen = 0, False
    if seen:
        digits.append(number)
    return tuple(digits)


def is_newer(remote: str, local: str) -> bool:
    """Is `remote` a later build than `local`?  Unknown versions compare as not newer."""
    a, b = parse(remote), parse(local)
    if not a or not b:
        return False
    width = max(len(a), len(b))
    return a + (0,) * (width - len(a)) > b + (0,) * (width - len(b))


def text(version: str = None) -> str:
    """What a screen reader should say for a version.

    The number is a date and a build - `26.09.20-1` is the first release of the 20th of September 2026 -
    so it is said as one: "26.09.20, build 1".  Read straight off the tag a synthesiser makes the dash
    into "minus", and spelling every part out as "point" buries the build number among the date.  The
    date keeps its two digits, the way it is written down."""
    version = current() if version is None else version
    parts = parse(version)
    if not parts:
        return 'unknown'
    date = '.'.join('%02d' % p for p in parts[:3])
    build = parts[3] if len(parts) > 3 else None
    return '%s, build %d' % (date, build) if build is not None else date
