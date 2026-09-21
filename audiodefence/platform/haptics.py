"""PORT ADDITION: what a game controller makes you feel.

The phone game has no vibration at all - the original never calls AudioServicesPlaySystemSound with the
vibrate sound - so everything here is the port's own, for players with a controller in their hands:

* the **heartbeat** that plays when a zombie is close (``ADPlayer``'s proximity heartbeat, player.py) is
  felt on each beat, harder the closer the zombie is, as the sound is louder;
* a **shot that hits** is a short tap, and a shot that hits several zombies at once a firmer one;
* a **melee hit** is a heavier thud than a shot, and a swing that misses is felt as nothing.

Every pad that can rumble does, through SDL.  Nothing here waits: a pulse is sent and the pad times it.
"""
from __future__ import annotations

import logging

log = logging.getLogger('platform.haptics')

#: (low-frequency motor, high-frequency motor, milliseconds): the heavy motor is the thump, the light one
#: the buzz, so a heartbeat is nearly all thump and a gunshot's hit mostly buzz
HEARTBEAT = (1.0, 0.1, 70)
HIT = (0.25, 0.6, 50)
MULTI_HIT = (0.45, 0.8, 70)
MELEE_HIT = (0.9, 0.35, 120)


class Haptics:
    _shared: 'Haptics | None' = None

    @classmethod
    def shared(cls) -> 'Haptics':
        if cls._shared is None:
            cls._shared = Haptics()
        return cls._shared

    def __init__(self):
        self.sent: list = []                              # the last pulses, for tests: (low, high, ms)

    # --- what the game calls -------------------------------------------------------------------------
    def heartbeat(self, closeness: float) -> None:
        """One beat.  `closeness` is ADPlayer's, 0 at the edge of hearing to 1 at arm's length; the beat's
        strength follows the sound's own gain curve (closeness squared * 0.7 + 0.3)."""
        strength = max(0.0, min(1.0, closeness)) ** 2 * 0.7 + 0.3
        low, high, ms = HEARTBEAT
        self._pulse(low * strength, high * strength, ms)

    def hit(self, count: int = 1) -> None:
        """A shot, or an explosion, that hit `count` zombies."""
        if count > 0:
            self._pulse(*(MULTI_HIT if count > 1 else HIT))

    def melee_hit(self) -> None:
        self._pulse(*MELEE_HIT)

    # --- the pads ------------------------------------------------------------------------------------
    def _pulse(self, low: float, high: float, ms: int) -> None:
        from ..game.parameters import GameParameters
        from .pad import Pads
        pads = Pads.shared()
        if not pads.pads or not GameParameters.shared().vibration():
            return
        self.sent = (self.sent + [(round(low, 3), round(high, 3), ms)])[-20:]
        for pad in list(pads.pads.values()):
            rumble = getattr(pad, 'rumble', None)
            if rumble is None:
                continue
            try:
                rumble(max(0.0, min(1.0, low)), max(0.0, min(1.0, high)), int(ms))
            except Exception as exc:                      # a pad that went mid-pulse must not stop the game
                log.debug('rumble failed: %s', exc)
