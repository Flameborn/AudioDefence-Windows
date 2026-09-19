"""C float (IEEE single) helpers for ivars whose float32 rounding changes observable timing."""
from __future__ import annotations

import struct

_F = struct.Struct('<f')


def f32(value: float) -> float:
    """Round a Python float to the nearest float32, like storing into a C ``float``."""
    try:
        return _F.unpack(_F.pack(value))[0]
    except OverflowError:
        return float('inf') if value > 0 else float('-inf')
