"""PORT ADDITION: game controllers - a DualSense, a DualShock, an Xbox or Switch Pro pad, or anything SDL knows.

The original is played by touch and by turning the phone; the port plays it from the keyboard (keymap.py),
and this is the other way in.  SDL's game controller layer names every pad's buttons the same way - the
bottom face button is ``a`` whatever is printed on it - so the bindings below hold for every controller,
and only the names spoken for them change with the kind of pad.

What a controller does:

* **In play** its buttons are bound to the same actions as the keys (``PAD_DEFAULTS``): R2 fires, R1 is
  melee, and next weapon and reload are L1 and L2 in Button mode, or a flick of a stick up or down in
  Gesture mode - the swipes the Up and Down arrows stand for on the keyboard.  Either stick turns, and
  turns as far as it is pushed: a little is slow, all the way is as fast as the turn keys.
* **In the menus** it stands in for the keys the menus already know: the D-pad or a stick for the arrows,
  the bottom button for Enter, the right one for Escape, the shoulders for the other arrow pair (tabs and
  categories), the triggers for Page Down and Page Up (the menu music volume).  ``ui/host.py`` does that
  translation; the key presses it makes are marked ``pad`` so a key being captured in Settings is not
  taken from a controller.

Triggers are read as buttons, pressed past half way and let go below a third.  A stick counts as pushed in
a direction past 60% and let go below 30%, with the direction taken from the larger of its two axes, so
turning with a stick does not flick it up or down by accident.
"""
from __future__ import annotations

import ctypes
import logging
import math
import os
import time

import pygame

from .defaults import UserDefaults

log = logging.getLogger('platform.pad')

#: SDL reads these when its joystick layer starts, which pygame.init() does, so they are set before that.
#: Without them a PlayStation pad over Bluetooth cannot rumble or be given trigger effects: SDL leaves it in
#: the simple report mode Windows' own drivers understand unless it is asked not to.
HINTS = {'SDL_JOYSTICK_HIDAPI_PS5_RUMBLE': '1', 'SDL_JOYSTICK_HIDAPI_PS4_RUMBLE': '1'}


def set_hints() -> None:
    for name, value in HINTS.items():
        os.environ.setdefault(name, value)


# SDL_GameControllerButton values; pygame names the first fifteen, SDL 2.0.14 added the rest
BUTTONS = {
    pygame.CONTROLLER_BUTTON_A: 'a', pygame.CONTROLLER_BUTTON_B: 'b',
    pygame.CONTROLLER_BUTTON_X: 'x', pygame.CONTROLLER_BUTTON_Y: 'y',
    pygame.CONTROLLER_BUTTON_BACK: 'back', pygame.CONTROLLER_BUTTON_GUIDE: 'guide',
    pygame.CONTROLLER_BUTTON_START: 'start',
    pygame.CONTROLLER_BUTTON_LEFTSTICK: 'leftstick', pygame.CONTROLLER_BUTTON_RIGHTSTICK: 'rightstick',
    pygame.CONTROLLER_BUTTON_LEFTSHOULDER: 'leftshoulder', pygame.CONTROLLER_BUTTON_RIGHTSHOULDER: 'rightshoulder',
    pygame.CONTROLLER_BUTTON_DPAD_UP: 'dpup', pygame.CONTROLLER_BUTTON_DPAD_DOWN: 'dpdown',
    pygame.CONTROLLER_BUTTON_DPAD_LEFT: 'dpleft', pygame.CONTROLLER_BUTTON_DPAD_RIGHT: 'dpright',
    15: 'misc1', 16: 'paddle1', 17: 'paddle2', 18: 'paddle3', 19: 'paddle4', 20: 'touchpad',
}
LEFT_X, LEFT_Y, RIGHT_X, RIGHT_Y, TRIGGER_LEFT, TRIGGER_RIGHT = range(6)
STICKS = ((LEFT_X, LEFT_Y), (RIGHT_X, RIGHT_Y))
TRIGGERS = {TRIGGER_LEFT: 'lefttrigger', TRIGGER_RIGHT: 'righttrigger'}

TRIGGER_DOWN, TRIGGER_UP = 0.5, 0.3
PUSH_DOWN, PUSH_UP = 0.6, 0.3
#: how far a stick has to move before it turns at all: a stick at rest seldom reads exactly zero
DEAD_ZONE = 0.18

# --- what the buttons are called ------------------------------------------------------------------------
NAMES = {
    'playstation': {'a': 'Cross', 'b': 'Circle', 'x': 'Square', 'y': 'Triangle',
                    'leftshoulder': 'L1', 'rightshoulder': 'R1', 'lefttrigger': 'L2', 'righttrigger': 'R2',
                    'back': 'Create', 'start': 'Options', 'guide': 'PS button',
                    'leftstick': 'L3', 'rightstick': 'R3', 'touchpad': 'Touchpad', 'misc1': 'Mute button'},
    'xbox': {'a': 'A', 'b': 'B', 'x': 'X', 'y': 'Y',
             'leftshoulder': 'LB', 'rightshoulder': 'RB', 'lefttrigger': 'LT', 'righttrigger': 'RT',
             'back': 'View', 'start': 'Menu', 'guide': 'Xbox button',
             'leftstick': 'Left stick click', 'rightstick': 'Right stick click', 'misc1': 'Share button'},
    # SDL reports Nintendo face buttons by the letter printed on them (SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS
    # is on by default in SDL 2), so the letters are the right names
    'nintendo': {'a': 'A', 'b': 'B', 'x': 'X', 'y': 'Y',
                 'leftshoulder': 'L', 'rightshoulder': 'R', 'lefttrigger': 'ZL', 'righttrigger': 'ZR',
                 'back': 'Minus', 'start': 'Plus', 'guide': 'Home',
                 'leftstick': 'Left stick click', 'rightstick': 'Right stick click', 'misc1': 'Capture'},
    'generic': {'a': 'A button', 'b': 'B button', 'x': 'X button', 'y': 'Y button',
                'leftshoulder': 'Left shoulder', 'rightshoulder': 'Right shoulder',
                'lefttrigger': 'Left trigger', 'righttrigger': 'Right trigger',
                'back': 'Back', 'start': 'Start', 'guide': 'Guide',
                'leftstick': 'Left stick click', 'rightstick': 'Right stick click', 'touchpad': 'Touchpad',
                'misc1': 'Extra button'},
}
COMMON_NAMES = {'dpup': 'D-pad up', 'dpdown': 'D-pad down', 'dpleft': 'D-pad left', 'dpright': 'D-pad right',
                'stickup': 'Stick up', 'stickdown': 'Stick down', 'stickleft': 'Stick left',
                'stickright': 'Stick right',
                'paddle1': 'Paddle 1', 'paddle2': 'Paddle 2', 'paddle3': 'Paddle 3', 'paddle4': 'Paddle 4'}


def family(controller_name: str) -> str:
    """Which set of names a pad's buttons go by, from the name SDL gives it."""
    n = (controller_name or '').lower()
    if any(w in n for w in ('ps5', 'ps4', 'ps3', 'dualsense', 'dualshock', 'playstation')):
        return 'playstation'
    if any(w in n for w in ('xbox', 'xinput')):
        return 'xbox'
    if any(w in n for w in ('nintendo', 'switch', 'joy-con', 'joycon')):
        return 'nintendo'
    return 'generic'


def input_name(name: str, kind: str = 'generic', controller_name: str = '') -> str:
    """'righttrigger' -> 'R2' on a PlayStation pad, 'RT' on an Xbox one."""
    if name == 'back' and kind == 'playstation' and 'ps4' in (controller_name or '').lower():
        return 'Share'                                    # the PS4's is Share; the PS5's Create
    return NAMES.get(kind, NAMES['generic']).get(name) or COMMON_NAMES.get(name) or name


# --- what the buttons do in play ------------------------------------------------------------------------
#: action -> default inputs; a dict means one binding per control scheme, as in keymap.py.  Turning has no
#: entry: it is the sticks' sideways movement, read as a speed rather than pressed (Pads.turn).
PAD_DEFAULTS = {
    'fire': ('righttrigger',),
    'melee': ('rightshoulder',),
    'next_weapon': {'button': ('leftshoulder',), 'gesture': ('stickup',)},
    'reload': {'button': ('lefttrigger',), 'gesture': ('stickdown',)},
    'pause': ('start',),
    'skip': ('a',),
    'timer': ('x',),
}
PAD_DEFAULTS_KEY = 'padmap'


class PadMap:
    """The controller's bindings, like KeyMap's: the defaults, and a player's changes kept in keys.json."""

    _shared: 'PadMap | None' = None

    @classmethod
    def shared(cls) -> 'PadMap':
        if cls._shared is None:
            cls._shared = PadMap()
        return cls._shared

    def __init__(self):
        stored = UserDefaults.standard().object(PAD_DEFAULTS_KEY)
        self.bindings = {}
        for action, default in PAD_DEFAULTS.items():
            if isinstance(default, dict):
                self.bindings[action] = {mode: list(default[mode]) for mode in default}
            else:
                self.bindings[action] = list(default)
        if isinstance(stored, dict):
            for action, value in stored.items():
                if action not in self.bindings:
                    continue
                if isinstance(self.bindings[action], dict) and isinstance(value, dict):
                    for mode, names in value.items():
                        if mode in self.bindings[action] and isinstance(names, list):
                            self.bindings[action][mode] = [str(n) for n in names]
                elif isinstance(value, list):
                    self.bindings[action] = [str(n) for n in value]

    @staticmethod
    def mode() -> str:
        from .keymap import KeyMap
        return KeyMap.mode()

    def names(self, action: str, mode: str | None = None) -> list:
        value = self.bindings.get(action, [])
        if isinstance(value, dict):
            return list(value.get(mode or self.mode(), []))
        return list(value)

    def action_for(self, name: str, mode: str | None = None):
        for action in self.bindings:
            if name in self.names(action, mode):
                return action
        return None


# --- SDL itself, for what pygame does not wrap -----------------------------------------------------------
# pygame opens the controllers; the motion sensors and the DualSense's trigger effects are reached through
# the same SDL2.dll pygame loaded, by the controller's instance id, so both work on the one SDL object.
SENSOR_ACCELEROMETER = 1                                  # SDL_SENSOR_ACCEL
TYPE_PS5 = 7                                              # SDL_CONTROLLER_TYPE_PS5
_sdl = None


def sdl():
    """pygame's SDL2.dll, or None where it cannot be reached (then there is no shake and no trigger feel)."""
    global _sdl
    if _sdl is None:
        try:
            lib = ctypes.CDLL(os.path.join(os.path.dirname(pygame.__file__), 'SDL2.dll'))
            lib.SDL_GameControllerFromInstanceID.restype = ctypes.c_void_p
            lib.SDL_GameControllerFromInstanceID.argtypes = [ctypes.c_int32]
            lib.SDL_GameControllerGetType.argtypes = [ctypes.c_void_p]
            lib.SDL_GameControllerHasSensor.argtypes = [ctypes.c_void_p, ctypes.c_int]
            lib.SDL_GameControllerSetSensorEnabled.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.c_int]
            lib.SDL_GameControllerGetSensorData.argtypes = [ctypes.c_void_p, ctypes.c_int,
                                                            ctypes.POINTER(ctypes.c_float), ctypes.c_int]
            lib.SDL_GameControllerSendEffect.argtypes = [ctypes.c_void_p, ctypes.c_void_p, ctypes.c_int]
            _sdl = lib
        except (OSError, AttributeError) as exc:
            log.info('SDL is not reachable directly (%s): no shake, no trigger effects', exc)
            _sdl = False
    return _sdl or None


# --- the DualSense's adaptive triggers ------------------------------------------------------------------
# SDL_GameControllerSendEffect hands a PS5 pad a DS5EffectsState_t: 47 bytes, of which the first says what
# to change (0x04 the right trigger, 0x08 the left) and bytes 10 and 21 start the two triggers' effects.
# The effects are the pad's own simple modes, the ones SDL's test program uses: 0x05 off, 0x01 resistance
# from a point on, 0x02 resistance between two points that gives way past the second, as a gun's trigger
# breaks.  Positions and strength run 0 to 255.
DS5_RIGHT_TRIGGER, DS5_LEFT_TRIGGER = 0x04, 0x08
TRIGGER_OFF = (0x05,)
#: R2 resists from a quarter of its travel and breaks at half, where it fires (TRIGGER_DOWN)
GUN_TRIGGER = (0x02, 0x40, 0x80, 0xC0)
#: L2, the reload under Button, pulls against a light spring
RELOAD_TRIGGER = (0x01, 0x40, 0x50)


def ds5_effect(right=None, left=None) -> bytes:
    """The 47 bytes that set the right and/or left trigger; None leaves that trigger as it is."""
    state = bytearray(47)
    if right is not None:
        state[0] |= DS5_RIGHT_TRIGGER
        state[10:10 + len(right)] = bytes(right)
    if left is not None:
        state[0] |= DS5_LEFT_TRIGGER
        state[21:21 + len(left)] = bytes(left)
    return bytes(state)


# --- the controllers themselves -------------------------------------------------------------------------
class Pads:
    """Every controller plugged in, and what their buttons and sticks are doing.

    ``handle`` turns SDL's controller events into presses and releases of named inputs, each tagged with
    where it came from - ``(pad, input)``, or ``(pad, input, stick)`` for a stick's direction - so two pads,
    or both sticks, can hold the same input without letting go of each other."""

    _shared: 'Pads | None' = None

    @classmethod
    def shared(cls) -> 'Pads':
        if cls._shared is None:
            cls._shared = Pads()
        return cls._shared

    def __init__(self):
        self.pads: dict = {}                              # SDL instance id -> Controller
        self.names: dict = {}                             # SDL instance id -> the pad's name
        self.axes: dict = {}                              # SDL instance id -> six axes, -1 to 1
        self.pushed: dict = {}                            # (instance id, stick) -> 'stickup' or the like
        self.held: set = set()                            # sources down now
        self.handles: dict = {}                           # SDL instance id -> SDL_GameController*
        self.accelerometers: set = set()                  # instance ids whose accelerometer is on
        self.dualsenses: set = set()                      # instance ids of PS5 pads (trigger effects)
        self.triggers_set: dict = {}                      # instance id -> the trigger feel it was given
        self.last_shake = 0.0
        self.started = False
        self.speak = None                                 # set by the host: says a pad came or went

    def start(self) -> None:
        try:
            from pygame._sdl2 import controller
            controller.init()
            count = controller.get_count()
        except (pygame.error, ImportError) as exc:
            log.warning('game controllers are not available: %s', exc)
            return
        self.started = True
        for index in range(count):
            self._open(index)

    def _open(self, index: int):
        from pygame._sdl2 import controller
        try:
            if not controller.is_controller(index):
                return None
            pad = controller.Controller(index)
            iid = pad.as_joystick().get_instance_id()
        except pygame.error as exc:
            log.warning('controller %d could not be opened: %s', index, exc)
            return None
        if iid in self.pads:
            return None
        self.pads[iid] = pad
        self.names[iid] = str(getattr(pad, 'name', '') or 'Controller')
        self.axes[iid] = [0.0] * 6
        self._open_extras(iid)
        log.info('controller connected: %s (%s names%s%s)', self.names[iid], family(self.names[iid]),
                 ', shake' if iid in self.accelerometers else '',
                 ', trigger effects' if iid in self.dualsenses else '')
        return pad

    def _open_extras(self, iid) -> None:
        """The accelerometer, for shaking, and whether this is a DualSense, for the trigger effects."""
        lib = sdl()
        if lib is None:
            return
        handle = lib.SDL_GameControllerFromInstanceID(iid)
        if not handle:
            return
        self.handles[iid] = handle
        if lib.SDL_GameControllerHasSensor(handle, SENSOR_ACCELEROMETER):
            if lib.SDL_GameControllerSetSensorEnabled(handle, SENSOR_ACCELEROMETER, 1) == 0:
                self.accelerometers.add(iid)
        if lib.SDL_GameControllerGetType(handle) == TYPE_PS5:
            self.dualsenses.add(iid)

    # --- what is plugged in ---------------------------------------------------------------------------
    def connected(self) -> bool:
        return bool(self.pads)

    def kind(self) -> str:
        """The names to speak: the most recently connected pad's."""
        return family(self.last_name()) if self.pads else 'generic'

    def last_name(self) -> str:
        return self.names[next(reversed(self.names))] if self.names else ''

    def name_of(self, name: str) -> str:
        return input_name(name, self.kind(), self.last_name())

    # --- events ---------------------------------------------------------------------------------------
    def handle(self, event):
        """[(pressed, source, input), ...] for a controller event; None for anything else."""
        t = event.type
        if t == pygame.CONTROLLERDEVICEADDED:
            if self.started and self._open(event.device_index) is not None and self.speak:
                self.speak('%s connected.' % self.last_name())
            return []
        if t == pygame.CONTROLLERDEVICEREMOVED:
            return self._removed(self._iid(event))
        if t in (pygame.CONTROLLERBUTTONDOWN, pygame.CONTROLLERBUTTONUP):
            name = BUTTONS.get(event.button)
            if name is None or self._iid(event) not in self.pads:
                return []
            return self._set((self._iid(event), name), name, t == pygame.CONTROLLERBUTTONDOWN)
        if t == pygame.CONTROLLERAXISMOTION:
            iid = self._iid(event)
            if iid not in self.pads:
                return []
            value = max(-1.0, min(1.0, event.value / 32767.0))
            self.axes[iid][event.axis] = value
            if event.axis in TRIGGERS:
                name = TRIGGERS[event.axis]
                down = (iid, name) in self.held
                if not down and value >= TRIGGER_DOWN:
                    return self._set((iid, name), name, True)
                if down and value < TRIGGER_UP:
                    return self._set((iid, name), name, False)
                return []
            return self._stick(iid, 0 if event.axis in STICKS[0] else 1)
        if t in (pygame.JOYAXISMOTION, pygame.JOYBUTTONDOWN, pygame.JOYBUTTONUP, pygame.JOYHATMOTION,
                 pygame.JOYBALLMOTION, pygame.JOYDEVICEADDED, pygame.JOYDEVICEREMOVED,
                 pygame.CONTROLLERDEVICEREMAPPED):
            return []                                     # the same pad, seen by the lower layer: not ours
        return None

    @staticmethod
    def _iid(event):
        return getattr(event, 'instance_id', getattr(event, 'which', None))

    def _set(self, source, name, pressed: bool) -> list:
        if pressed == (source in self.held):
            return []
        (self.held.add if pressed else self.held.discard)(source)
        return [(pressed, source, name)]

    def _stick(self, iid, stick: int) -> list:
        """A stick's direction as a pressed input: 'stickup', 'stickdown', 'stickleft' or 'stickright'."""
        x, y = self.axes[iid][STICKS[stick][0]], self.axes[iid][STICKS[stick][1]]
        key = (iid, stick)
        current = self.pushed.get(key)
        out = []
        if current is not None:
            along = {'stickup': -y, 'stickdown': y, 'stickleft': -x, 'stickright': x}[current]
            if along >= PUSH_UP:
                return []
            out += self._set((iid, current, stick), current, False)
            self.pushed[key] = current = None
        if max(abs(x), abs(y)) >= PUSH_DOWN:
            if abs(x) > abs(y):
                current = 'stickright' if x > 0 else 'stickleft'
            else:
                current = 'stickdown' if y > 0 else 'stickup'
            self.pushed[key] = current
            out += self._set((iid, current, stick), current, True)
        return out

    def _removed(self, iid) -> list:
        pad = self.pads.pop(iid, None)
        if pad is None:
            return []
        name = self.names.pop(iid, 'Controller')
        self.axes.pop(iid, None)
        self.handles.pop(iid, None)
        self.accelerometers.discard(iid)
        self.dualsenses.discard(iid)
        self.triggers_set.pop(iid, None)
        for key in [k for k in self.pushed if k[0] == iid]:
            del self.pushed[key]
        out = [(False, source, source[1]) for source in list(self.held) if source[0] == iid]
        self.held -= {source for _p, source, _n in out}
        log.info('controller disconnected: %s', name)
        if self.speak:
            self.speak('%s disconnected.' % name)
        return out

    # --- shaking --------------------------------------------------------------------------------------
    #: how hard a shake has to be: the accelerometer reads about 9.8 m/s2 at rest (gravity), and a firm
    #: shake of the hand goes well past twice that.  One shake is one melee, however long it goes on.
    SHAKE_ACCELERATION = 25.0
    SHAKE_INTERVAL = 0.5

    def shaken(self) -> bool:
        """Whether a pad has just been shaken - the phone game's shake, which is a melee under Gesture."""
        lib = sdl()
        if lib is None or not self.accelerometers:
            return False
        reading = (ctypes.c_float * 3)()
        now = time.monotonic()
        for iid in list(self.accelerometers):
            handle = self.handles.get(iid)
            if not handle:
                continue
            if lib.SDL_GameControllerGetSensorData(handle, SENSOR_ACCELEROMETER, reading, 3) != 0:
                continue
            size = math.sqrt(reading[0] ** 2 + reading[1] ** 2 + reading[2] ** 2)
            if size >= self.SHAKE_ACCELERATION and now - self.last_shake >= self.SHAKE_INTERVAL:
                self.last_shake = now
                return True
        return False

    # --- the DualSense's triggers --------------------------------------------------------------------
    def set_triggers(self, feel) -> None:
        """Give every DualSense the trigger feel `feel` names - 'gun' (R2 only), 'gun and reload' (R2
        and L2) or 'off' - unless it has it already.  Other pads have no such thing and are left alone."""
        lib = sdl()
        if lib is None:
            return
        for iid in list(self.dualsenses):
            if self.triggers_set.get(iid) == feel or iid not in self.handles:
                continue
            right = GUN_TRIGGER if feel in ('gun', 'gun and reload') else TRIGGER_OFF
            left = RELOAD_TRIGGER if feel == 'gun and reload' else TRIGGER_OFF
            data = ds5_effect(right, left)
            if lib.SDL_GameControllerSendEffect(self.handles[iid], data, len(data)) == 0:
                self.triggers_set[iid] = feel
            else:
                log.info('the trigger effect could not be sent to %s', self.names.get(iid))
                self.dualsenses.discard(iid)              # do not try again every frame

    def stop(self) -> None:
        """The game is closing: a DualSense keeps a trigger effect until it is told otherwise."""
        self.set_triggers('off')

    # --- turning --------------------------------------------------------------------------------------
    def turn(self) -> float:
        """-1 (full left) to 1 (full right): whichever stick, on whichever pad, is pushed furthest sideways.
        Inside the dead zone it is 0; past it the speed grows in proportion to the push."""
        best = 0.0
        for axes in self.axes.values():
            for x_axis, _y_axis in STICKS:
                if abs(axes[x_axis]) > abs(best):
                    best = axes[x_axis]
        size = abs(best)
        if size <= DEAD_ZONE:
            return 0.0
        return math.copysign(min(1.0, (size - DEAD_ZONE) / (1.0 - DEAD_ZONE)), best)
