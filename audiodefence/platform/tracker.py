"""ADTracker - the original sends Google Analytics events (ADGamePlayTracker / ADArmoryTracker categories).

The port keeps every call site but only logs the event locally: no network traffic.
Call sites use snake_case versions of the selectors, e.g. ``Tracker.shared().diamond_appeared()``.
"""
from __future__ import annotations

import logging

log = logging.getLogger('tracker')


class Tracker:
    _shared: 'Tracker | None' = None

    @classmethod
    def shared(cls) -> 'Tracker':             # +[ADTracker sharedInstance] 0x1000dd7cc
        if cls._shared is None:
            cls._shared = Tracker()
        return cls._shared

    def __init__(self):
        self.tracker_inventory: dict = {}     # ADTracker trackerInventory (the equipped slots, for events)

    def __getattr__(self, name: str):
        if name.startswith('_'):
            raise AttributeError(name)

        def event(*args, **kwargs):
            log.debug('%s %r %r', name, args, kwargs)
        return event
