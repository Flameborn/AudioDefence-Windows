"""The C library random sources the original calls.

* ``rand()``      0 .. RAND_MAX (2**31 - 1), seeded by ``srand(time())`` in ``-[ADGameParameters init]``
* ``random()``    0 .. 2**31 - 1
* ``arc4random()`` 0 .. 2**32 - 1
The exact sequences are platform specific, so only the ranges are reproduced.
"""
from __future__ import annotations

import random as _random
import time

RAND_MAX = 2 ** 31 - 1
_rng = _random.Random()


def srand(seed: int | None = None) -> None:
    _rng.seed(int(time.time()) if seed is None else seed)


def rand() -> int:
    return _rng.randint(0, RAND_MAX)


def random() -> int:
    return _rng.randint(0, RAND_MAX)


def arc4random() -> int:
    return _rng.getrandbits(32)


def c_mod(a: int, b: int) -> int:
    """C '%' on signed ints (truncating towards zero)."""
    r = abs(a) % abs(b)
    return -r if a < 0 else r


def c_int(x: float) -> int:
    """(int)x - truncation towards zero."""
    return int(x)
