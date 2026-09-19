"""The window's root: presents one controller at a time plus modal overlays (UIKit presentation stand-in)."""
from __future__ import annotations

import logging
import time

import pygame

from ..game import data
from ..platform.speech import Speech
from .screens import MenuItem, MenuScreen, PlaceholderScreen, Screen

log = logging.getLogger('ui.host')


class AlertScreen(MenuScreen):
    """UIAlertView: title, message, buttons."""

    def __init__(self, host, title: str, message: str, buttons):
        super().__init__(host, title=f'{title}. {message}')
        self.items = [MenuItem(label, (lambda a=action: (host.pop_overlay(), a and a()))) for label, action in buttons]
        self.back_action = lambda: host.pop_overlay()


class ScreenManager:
    def __init__(self):
        self.screen: Screen | None = None                 # presented controller's screen
        self.overlays: list[Screen] = []                  # modal presentations on top of it
        self._held = None                                 # (event, screen, when the next repeat is due)
        self.request_quit = lambda: log.info('quit requested with no window running')

    # --- services --------------------------------------------------------------------------------
    @staticmethod
    def screen_reader_running() -> bool:
        return Speech.shared().screen_reader_running()

    def top(self) -> Screen | None:
        return self.overlays[-1] if self.overlays else self.screen

    def top_overlay(self) -> Screen | None:
        return self.overlays[-1] if self.overlays else None

    # --- presentation (ADAppDelegate loadViewController:) ----------------------------------------
    def create_view_controller(self, class_name: str, presented: bool = False, **kwargs):
        from . import (armory, challenges, gameover, menus, settings,  # noqa: F401  (they register)
                       statsportal, tarot)
        factory = SCREEN_FACTORIES.get(class_name)
        if factory is None:
            log.warning('screen %s not ported', class_name)
            return PlaceholderScreen(self, class_name, presented=presented, **kwargs)
        return factory(self, **kwargs)

    def load_view_controller(self, controller) -> None:
        from ..game.gameplay import GameplayController
        from .gameplay_screen import GameplayScreen
        screen = GameplayScreen(self, controller) if isinstance(controller, GameplayController) else controller
        while self.overlays:
            self.pop_overlay(refocus=False)
        if self.screen is not None:
            self.screen.on_dismiss()
        self.screen = screen
        screen.on_present()

    def present_over(self, _from_vc, screen) -> None:
        screen.presented_controller = True                # presentViewController: (full screen, iOS 8.3 SDK)
        self.push_overlay(screen)

    def push_overlay(self, screen: Screen) -> None:
        self.overlays.append(screen)
        screen.on_present()

    def pop_overlay(self, refocus: bool = True) -> None:
        if not self.overlays:
            return
        screen = self.overlays.pop()
        screen.on_dismiss()
        top = self.top()
        if refocus and top is not None:
            presented = getattr(screen, 'presented_controller', False)
            if presented and hasattr(top, 'reappear'):
                top.reappear()
            # PORT ADDITION: closing a screen presented over this one is going *back* to a screen, so it
            # obeys "Remember cursor position": with that off the cursor starts at the top again, as it
            # does everywhere else.  An alert is not going back - the screen never went away - so the
            # cursor stays on the row that raised it whatever the setting says.
            restore = True
            if presented:
                from ..game.parameters import GameParameters
                restore = GameParameters.shared().remember_focus()
            top.on_focus(restore=restore)

    def quit_game(self) -> None:
        """PORT ADDITION: iOS apps have no Quit, so the main menu's Quit button ends the run loop.

        The engine is left running on purpose.  Shutting it down here closed the audio device while the
        rest of that main-loop pass was still to come - the button's own click sound among it - and
        S3DEngine.engine() would then open a second device to play it.  The main loop's teardown shuts the
        engine down exactly once, after the last pass."""
        log.info('quit from the main menu')
        self.request_quit()

    def show_no_diamonds_alert(self) -> None:             # -[ADNoBarViewController showNoDiamondsAlert] 0x100019990
        self.push_overlay(AlertScreen(self, data.localized('DIAMONDS_ALERT_TITLE'),
                                      data.localized('DIAMONDS_ALERT_CONTENT'), [('OK', None)]))

    def dismiss_presented(self, screen) -> None:        # [presentingViewController dismissViewControllerAnimated:]
        if screen in self.overlays:
            while self.overlays and self.overlays[-1] is not screen:
                self.pop_overlay(refocus=False)
            self.pop_overlay()

    # --- events ----------------------------------------------------------------------------------
    def handle_event(self, event) -> None:
        if event.type == pygame.KEYDOWN:
            top = self.top()
            if top is not None:
                self._hold_navigation_key(event, top)
                top.key_down(event)
        elif event.type == pygame.KEYUP:
            if self._held is not None and event.key == self._held[0].key:
                self._held = None
            # key-ups go to every screen so a key released after an overlay opened is not left "down"
            for screen in [self.screen] + list(self.overlays):
                if screen is not None:
                    screen.key_up(event)
        elif event.type == pygame.MOUSEMOTION:
            top = self.top()
            if top is not None:
                top.mouse_motion(event)

    # PORT ADDITION: a key held down keeps moving through a menu, the way a list behaves anywhere else.
    # Only the keys that step one element repeat: a jump to an end has nowhere to go, an activation must
    # happen once, and a held turn key in a game is the game's own business.
    REPEAT_AFTER = 0.4                                    # seconds held before the first repeat
    REPEAT_EVERY = 0.09                                   # and between repeats after that

    def _hold_navigation_key(self, event, top) -> None:
        from .accessibility import AccessibleScreen, navigation_key
        from .screens import MenuScreen
        if not isinstance(top, (AccessibleScreen, MenuScreen)):
            self._held = None
            return
        self._held = ((event, top, time.perf_counter() + self.REPEAT_AFTER)
                      if navigation_key(event) in ('next', 'previous') else None)

    def _repeat_held_key(self) -> None:
        if self._held is None:
            return
        event, screen, due = self._held
        if screen is not self.top():                      # the screen changed under the held key
            self._held = None
            return
        now = time.perf_counter()
        if now >= due:
            self._held = (event, screen, now + self.REPEAT_EVERY)
            screen.key_down(event)

    def frame(self) -> None:
        self._repeat_held_key()
        if self.screen is not None:
            self.screen.frame()
        for o in list(self.overlays):
            o.frame()


SCREEN_FACTORIES: dict = {}


def register(class_name: str):
    def deco(factory):
        SCREEN_FACTORIES[class_name] = factory
        return factory
    return deco
