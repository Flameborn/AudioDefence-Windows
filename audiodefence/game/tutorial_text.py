"""PORT ADDITION: spoken text for the tutorial announcer.

The tutorial's announcer lines tell you which part of the phone to touch - tilt the device, swipe, tap the
corner button.  None of that exists on a keyboard, so a player following the audio is told to do something
they cannot do.  Each line is given an equivalent here, written for this port by the user, with the key
names filled in from the live key map: rebind Fire and the shoot line says the new key.  With a game
controller connected, and the player's choice in Settings -> Joystick, the same lines name its buttons
instead (``_pad_words``), and aiming gets a line of its own, since it is a stick rather than two keys.

The brick scripts name these sounds with a placeholder - ``announcer_tutorial_aim_CONTROLMODE``,
``announcer_tutorial_shoot_BUTTONMODE`` - which ``ADSound.init_sound`` 0x1000b3594 resolves against the
control scheme and the button mode.  The resolved key comes back here, so ``aim_gyroMode``, ``aim_swipeMode``
and ``aim_tiltMode`` share one line, as do the button and gesture pairs.

``announcer_tutorial_aimhelp`` and ``announcer_tutorial_aimprompt`` have no line: they name no key, so there
is nothing for a keyboard player to be told differently.
"""
from __future__ import annotations

import logging
import re

from ..platform.keymap import KeyMap

log = logging.getLogger('game.tutorial')

PREFIX = 'announcer_tutorial_'

#: topic -> the line, with {action} standing for whatever that action is bound to now
LINES = {
    'aim': 'Use your {turn_left} or {turn_right} key to aim.',
    'shoot': 'Listen carefully and turn until you feel the zombie is right in front of you, '
             'then use the {fire} key to fire your weapon.',
    'reload': 'Use the {reload} key to reload your weapon.',
    'changeControl': 'You can change your aim control at any time in the pause menu, '
                     'which can be accessed using the {pause} key.',
    'switch': 'Use the {next_weapon} key to switch between weapons.',
    'skip': 'You can use the {skip} key to skip dialogs.',
    'melee': 'To use the melee weapon, turn to face the zombies first. Then, press the {melee} key.',
}

#: the suffixes ADSound.init_sound substitutes into the name
_MODE_SUFFIX = re.compile(r'_(gyro|swipe|tilt|button|gesture)Mode$')


def topic_for(sound_key: str):
    """'announcer_tutorial_shoot_buttonMode' -> 'shoot'; None for a sound that has no line."""
    if not sound_key or not sound_key.startswith(PREFIX):
        return None
    topic = _MODE_SUFFIX.sub('', sound_key[len(PREFIX):])
    return topic if topic in LINES else None


#: PORT ADDITION: with Settings -> Miscellaneous -> Names in hints and tutorial set to a controller, the
#: lines name its buttons instead - "the {fire} key" becomes "the R2 button", a flick of a stick "a stick
#: flicked up" (pad.button_words) - and aiming, which is a stick and not two keys, has a line of its own
PAD_AIM = 'Push either stick left or right to aim.'
#: and under Gesture a controller that can feel movement swings the melee weapon when it is shaken, as the
#: phone did, so the melee line says so - on the controller that is being named, if that one can be shaken
PAD_SHAKE = ', or shake the controller'


def text_for(sound_key: str):
    """The line for this announcer sound, with the keys that are bound right now, or None - or, when the
    player has chosen a controller's names, with its buttons."""
    from ..platform.pad import button_words
    from .parameters import GameParameters
    topic = topic_for(sound_key)
    if topic is None:
        return None
    keymap = KeyMap.shared()
    line = LINES[topic]
    params = GameParameters.shared()
    if params.controller_names():
        if topic == 'aim':
            return PAD_AIM
        for action in set(re.findall(r'\{(\w+)\}', line)):
            words = button_words(action)
            if words is not None:                         # an action with no button keeps its key
                line = line.replace('the {%s} key' % action, words)
        if topic == 'melee' and not params.button_mode:
            from ..platform.pad import Pads
            model = params.names_controller()
            if model and Pads.shared().can_shake(model):
                line = line.rstrip('.') + PAD_SHAKE + '.'
    for action in set(re.findall(r'\{(\w+)\}', line)):
        line = line.replace('{%s}' % action, keymap.keys_text(action))
    return line
