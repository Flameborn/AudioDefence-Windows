"""Main run loop: NSTimer, dispatch_after / performSelector:afterDelay: and NSNotificationCenter.

Everything the original schedules on the main queue runs here, on the main thread, driven by
``RunLoop.run_once`` from the application loop.  Repeating timers follow NSTimer semantics: a timer fires
at most once per pass and its next fire date advances in whole intervals, skipping missed fires.
"""
from __future__ import annotations

import heapq
import itertools
import logging
import math
import time
from collections import defaultdict

log = logging.getLogger('runloop')


class Timer:
    def __init__(self, loop: 'RunLoop', interval: float, fn, repeats: bool):
        self.loop = loop
        self.interval = max(0.0001, float(interval))
        self.fn = fn
        self.repeats = repeats
        self.valid = True
        self.fire_date = loop.now() + self.interval

    def invalidate(self) -> None:
        self.valid = False

    def is_valid(self) -> bool:
        return self.valid


class RunLoop:
    _main: 'RunLoop | None' = None

    @classmethod
    def main(cls) -> 'RunLoop':
        if cls._main is None:
            cls._main = RunLoop()
        return cls._main

    def __init__(self, clock=time.perf_counter):
        self.clock = clock
        self._heap: list = []
        self._seq = itertools.count()
        self._timers: list[Timer] = []
        self._observers: dict[str, list] = defaultdict(list)

    def now(self) -> float:
        return self.clock()

    # --- one-shot work ---------------------------------------------------------------------------
    def call_later(self, delay: float, fn) -> object:
        """dispatch_after(main queue) / performSelector:withObject:afterDelay:."""
        token = [True]
        heapq.heappush(self._heap, (self.now() + max(0.0, float(delay)), next(self._seq), fn, token))
        return token

    def call_soon(self, fn) -> object:
        return self.call_later(0.0, fn)

    @staticmethod
    def cancel(token) -> None:
        if token:
            token[0] = False

    # --- timers ----------------------------------------------------------------------------------
    def schedule_timer(self, interval: float, fn, repeats: bool = True) -> Timer:
        t = Timer(self, interval, fn, repeats)
        self._timers.append(t)
        return t

    # --- notifications ---------------------------------------------------------------------------
    def add_observer(self, observer, name: str, fn) -> None:
        self._observers[name].append((observer, fn))

    def remove_observer(self, observer, name: str | None = None) -> None:
        names = [name] if name else list(self._observers)
        for n in names:
            self._observers[n] = [(o, f) for o, f in self._observers[n] if o is not observer]

    def post(self, name: str, obj=None, user_info=None) -> None:
        """NSNotificationCenter postNotificationName:object:userInfo: - synchronous delivery."""
        for observer, fn in list(self._observers.get(name, ())):
            fn(name, obj, user_info)

    # --- pump ------------------------------------------------------------------------------------
    def run_once(self) -> None:
        now = self.now()
        while self._heap and self._heap[0][0] <= now:
            _, _, fn, token = heapq.heappop(self._heap)
            if token[0]:
                self._invoke(fn)
        live = []
        for t in list(self._timers):
            if not t.valid:
                continue
            if t.fire_date <= now:
                if t.repeats:
                    missed = math.floor((now - t.fire_date) / t.interval) + 1
                    t.fire_date += missed * t.interval
                else:
                    t.valid = False
                self._invoke(t.fn)
            if t.valid:
                live.append(t)
        self._timers = [t for t in self._timers if t.valid]

    def next_deadline(self) -> float:
        cands = [t.fire_date for t in self._timers if t.valid]
        if self._heap:
            cands.append(self._heap[0][0])
        return min(cands) if cands else self.now() + 0.01

    @staticmethod
    def _invoke(fn) -> None:
        try:
            fn()
        except Exception:
            log.exception('run loop callback failed')
