"""PORT ADDITION: the keyboard the touch and motion input is mapped to, and the player's changes to it.

The original has no key bindings at all - every gameplay action is a touch, a swipe, a shake or the device's
attitude (see ``ui/gameplay_screen.py`` for what each action stands for).  The port binds those actions to
keys, keeps the bindings in the game's own defaults file (key ``keymap``) and lets the player rebind them in
Settings -> Keyboard.

Two actions are bound per control scheme, because the scheme changes what the action *is*.  Under Gesture
the original swipes up to switch weapon and down to reload, so the port keeps the arrows that stand for
those swipes; under Button the same actions are corner buttons with nothing directional about them, so they
are letters: W and R.  Everything else - fire, melee, turning, pause - is one binding for both schemes.

Keys are stored by their pygame name ("space", "left ctrl"), so a saved keymap survives a pygame update.
"""
from __future__ import annotations

import logging

import pygame

from .defaults import UserDefaults

log = logging.getLogger('platform.keymap')

MODES = ('button', 'gesture')

# action, what Settings calls it, default keys; a dict of defaults means one binding per control scheme
ACTIONS = (
    ('fire', 'Fire', ('space',)),
    ('melee', 'Melee attack', ('left ctrl', 'right ctrl')),   # either Ctrl, whichever hand is free
    ('next_weapon', 'Next weapon', {'button': ('w',), 'gesture': ('up',)}),
    ('reload', 'Reload', {'button': ('r',), 'gesture': ('down',)}),
    ('turn_left', 'Turn left', ('left',)),
    ('turn_right', 'Turn right', ('right',)),
    ('pause', 'Pause', ('escape',)),
    ('skip', 'Skip narration', ('return', 'enter')),
    ('timer', 'Read the challenge timer', ('t',)),
)
DEFAULTS = {action: keys for action, _label, keys in ACTIONS}
LABELS = {action: label for action, label, _keys in ACTIONS}
#: the actions whose keys depend on the control scheme
BY_MODE = tuple(action for action, _label, keys in ACTIONS if isinstance(keys, dict))
DEFAULTS_KEY = 'keymap'


#: pygame's names for keys whose plain capitalisation is confusing to hear.  "return" and "enter" are the
#: two different Enter keys - the one above the right Shift and the one on the number pad - and read out as
#: "Return or Enter" they sound like the same key said twice.
SPOKEN_NAMES = {
    'return': 'Enter',
    'enter': 'Numpad Enter',
    'space': 'Spacebar',
    'escape': 'Escape',
    'left ctrl': 'Left Ctrl',
    'right ctrl': 'Right Ctrl',
    'left shift': 'Left Shift',
    'right shift': 'Right Shift',
    'left alt': 'Left Alt',
    'right alt': 'Right Alt',
    'left': 'Left Arrow',
    'right': 'Right Arrow',
    'up': 'Up Arrow',
    'down': 'Down Arrow',
    'page up': 'Page Up',
    'page down': 'Page Down',
}


def key_text(name: str) -> str:
    """"left ctrl" -> "Left Ctrl", "enter" -> "Numpad Enter" (what Settings and the announcements say)."""
    name = str(name)
    if name in SPOKEN_NAMES:
        return SPOKEN_NAMES[name]
    if name.startswith('[') and name.endswith(']'):       # pygame names the number pad "[1]", "[+]" …
        return 'Numpad %s' % name[1:-1]
    return ' '.join(word.capitalize() for word in name.split())


def mode_text(mode: str) -> str:
    return 'Button' if mode == 'button' else 'Gesture'


def _default(action: str, mode: str) -> list:
    keys = DEFAULTS.get(action, ())
    return list(keys[mode] if isinstance(keys, dict) else keys)


class KeyMap:
    _shared: 'KeyMap | None' = None

    @classmethod
    def shared(cls) -> 'KeyMap':
        if cls._shared is None:
            cls._shared = KeyMap()
        return cls._shared

    def __init__(self):
        self.defaults = UserDefaults.standard()
        self.keys = self._defaults()
        stored = self.defaults.object(DEFAULTS_KEY)
        if isinstance(stored, dict):
            for action, names in stored.items():
                if action not in self.keys:
                    continue
                if action in BY_MODE:
                    if isinstance(names, dict):                 # {"button": [...], "gesture": [...]}
                        for mode in MODES:
                            if isinstance(names.get(mode), list) and names[mode]:
                                self.keys[action][mode] = [str(n) for n in names[mode]]
                    else:                                       # saved before the schemes had their own
                        log.info('%s was stored for both schemes; using this version\'s defaults', action)
                elif isinstance(names, list) and names:
                    self.keys[action] = [str(n) for n in names]

    @staticmethod
    def _defaults() -> dict:
        return {action: ({mode: _default(action, mode) for mode in MODES} if action in BY_MODE
                         else _default(action, MODES[0])) for action in DEFAULTS}

    # --- which scheme ----------------------------------------------------------------------------
    @staticmethod
    def mode() -> str:
        from ..game.parameters import GameParameters       # here: the parameters are a layer above this one
        return 'button' if GameParameters.shared().button_mode else 'gesture'

    # --- lookup ----------------------------------------------------------------------------------
    def names(self, action: str, mode: str | None = None) -> list:
        bound = self.keys.get(action, [])
        if isinstance(bound, dict):
            return list(bound.get(mode or self.mode(), []))
        return list(bound)

    def codes(self, action: str, mode: str | None = None) -> list:
        out = []
        for name in self.names(action, mode):
            try:
                out.append(pygame.key.key_code(name))
            except ValueError:
                log.warning('unknown key name %r for %s', name, action)
        return out

    def action_for(self, code: int):
        """What this key does under the control scheme in use; the other scheme's keys do nothing."""
        for action in self.keys:
            if code in self.codes(action):
                return action
        return None

    def keys_text(self, action: str, mode: str | None = None) -> str:
        names = self.names(action, mode)
        if not names:
            return 'not set'
        return ' or '.join(key_text(n) for n in names)

    @staticmethod
    def label(action: str) -> str:
        return LABELS.get(action, action)

    def is_default(self, action: str, mode: str | None = None) -> bool:
        return self.names(action, mode) == _default(action, mode or self.mode())

    # --- changes ---------------------------------------------------------------------------------
    def _store(self, action: str, names: list, mode: str) -> None:
        if action in BY_MODE:
            self.keys[action][mode] = names
        else:
            self.keys[action] = names

    def _take_key_from_others(self, action: str, name: str, mode: str) -> None:
        """A key belongs to one action at a time, within the scheme it is bound for."""
        for other in self.keys:
            if other == action or name not in self.names(other, mode):
                continue
            self._store(other, [n for n in self.names(other, mode) if n != name], mode)

    def add_key(self, action: str, code: int) -> str:
        """Bind another key to an action, keeping the keys it already has.

        A scheme-specific action is rebound only for the scheme in use: adding to Next weapon under Button
        leaves the Gesture swipe key alone."""
        name = pygame.key.name(code)
        mode = self.mode()
        self._take_key_from_others(action, name, mode)
        names = self.names(action, mode)
        if name not in names:
            names.append(name)
        self._store(action, names, mode)
        self.save()
        return name

    def set_key(self, action: str, code: int) -> str:
        """Bind one key to an action, replacing every key it had."""
        name = pygame.key.name(code)
        mode = self.mode()
        self._take_key_from_others(action, name, mode)
        self._store(action, [name], mode)
        self.save()
        return name

    def remove_last_key(self, action: str):
        """Take the most recently added key off an action.  An action is never left with none: the last
        key refuses to go, because a gameplay action with no key cannot be performed at all."""
        mode = self.mode()
        names = self.names(action, mode)
        if len(names) < 2:
            return None
        name = names[-1]
        self._store(action, names[:-1], mode)
        self.save()
        return name

    def restore_defaults(self) -> None:
        self.keys = self._defaults()
        self.save()

    def save(self) -> None:
        stored = {}
        for action, bound in self.keys.items():
            stored[action] = {mode: list(keys) for mode, keys in bound.items()} if isinstance(bound, dict) \
                else list(bound)
        self.defaults.set_object(stored, DEFAULTS_KEY)
        self.defaults.synchronize()
