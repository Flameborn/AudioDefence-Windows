"""PORT ADDITION: put text on the system clipboard.

The iOS game shared a score by handing a string to a Twitter sheet (`AccessibleTwitterButtonPressed`
0x10009c0cc), which is not a thing a Windows build can do and was taken out of the port.  Copying the
result instead leaves the player to paste it wherever they were going to share it, which is the same job
without an account.

SDL owns the clipboard for the window the game already has, and ``pygame.scrap.put_text`` is the way to
reach it.  It is wrapped here rather than called from a screen so that a failure is one place, is logged,
and is reported to the player instead of looking like a button that does nothing.
"""
from __future__ import annotations

import logging

log = logging.getLogger('platform.clipboard')


def copy_text(text: str) -> bool:
    """Put `text` on the clipboard.  False when it could not be done, having said why to the log."""
    if not text:
        return False
    try:
        import pygame
        pygame.scrap.put_text(str(text))
        return True
    except Exception:
        # A clipboard needs the video system up, and any of it can fail on a locked-down desktop.  The
        # caller tells the player; nothing here is worth taking the game down for.
        log.exception('could not put %d characters on the clipboard', len(str(text)))
        return False
