"""Settings and pause, with their shared options panel.

    ADSettingsViewController : ADViewController          (presented from the main menu)
    ADPauseViewController    : ADSettingsViewController   (presented over the gameplay)
    Accessible_ADControlSchemeViewController : ADControlSchemeViewController  (the table both of them show)

-[ADSettingsViewController addControlSchemePanel] 0x1000af5b8 builds the accessible control scheme while
VoiceOver runs, posts UIAccessibilityScreenChangedNotification with its table and centres its view on the
settings nib's controlSchemeView.

PORT UI: the original's accessible table is one long list under "Aiming", "Controls" and "Sound" headings
(its sighted twin, ADControlSchemeViewController, has those three as tabs).  The port shows one heading at a
time - the screen opens inside Aiming, and the arrows the menu navigation is not using change category, as
the armory's tabs do - and adds two categories' worth of things the accessible table never had: the turn
sensitivity (a sighted-only slider in the original) and the key bindings (the port's own, since the original
is touch driven).  Every change is spoken.
"""
from __future__ import annotations

import logging

import pygame

from ..app import App
from ..game import data
from ..game.parameters import GameParameters
from ..platform.keymap import ACTIONS, BY_MODE, KeyMap, key_text, mode_text
from ..s3d.engine import S3DEngine
from .accessibility import CELL, Button, View, cross_axis_key, cross_axis_text, play_button_click
from .challenges import _TableLoader
from .host import register
from .viewcontroller import ViewControllerScreen

log = logging.getLogger('ui.settings')


def _headphones_playlist():
    return S3DEngine.engine().play_list_with_name('headphonesTest')


# PORT INPUT: the original's descriptions (GYRO_DESCRIPTION, SWIPE_DESCRIPTION, TILT_DESCRIPTION) tell the
# player to turn the device, swipe or tilt it.  All three are the turn keys here, so what actually separates
# them is how fast they turn - the three code paths run at different rates - and the rows say only which is
# which.  The degrees a second are in the README, where they can be read rather than sat through on every
# pass of the list; Turn sensitivity scales all three in proportion.
AIMING_ROWS = (('Gyro', 'Turns slowest', 1),
               ('Swipe', 'Turns in between', 2),
               ('Tilt', 'Turns fastest', 3))

# BUTTON_MODE / GESTURE_MODE describe where to tap and how to swipe; the port's keys do both, so the rows
# say what the mode changes for a keyboard player instead.
CONTROL_ROWS = (('Button', 'Your keys press the four corner buttons of the phone layout, so W switches '
                           'weapon and R reloads', True),
                ('Gesture', 'Your keys tap and swipe anywhere on the screen, so Up switches weapon and '
                            'Down reloads', False))

# PORT UI: Menus holds the settings that describe how the cursor moves through a screen, which is true
# whatever you are driving it with; Keyboard holds the key bindings alone, so a Joystick category can sit
# beside it later without anything moving again.
CATEGORIES = (('aiming', 'Aiming'), ('controls', 'Controls'), ('sound', 'Sound'),
              ('menus', 'Menus'), ('keyboard', 'Keyboard'))
SELECT_HINT = 'Press Enter to select.'


class ControlSchemePanel:
    """Accessible_ADControlSchemeViewController (nib view #21, table #13 at 440x244), as categories."""

    def __init__(self, screen, parent: View, center):
        self.screen = screen
        self.category = CATEGORIES[0][0]                  # settings open inside a category, not on a list
        self.capturing = None                             # the action waiting for its new key
        self.capturing_replaces = False                   # Shift+Enter: the new key replaces the others
        frame = (center[0] - 220.0, center[1] - 122.0, 440.0, 244.0)
        self.view = View('', frame, accessible=False, parent=parent, name='#21')
        self.table_view = View('', frame, accessible=False, parent=self.view, ordered=True, name='#13')
        self.reload_data()

    # --- rows ------------------------------------------------------------------------------------
    def reload_data(self) -> None:
        params = GameParameters.shared()
        t = _TableLoader(self.table_view)
        # The original's accessible table is one list under "Aiming", "Controls" and "Sound" headings; the
        # port shows one category at a time and changes it with the arrows the navigation is not using.
        # The category is said as it opens (and as the screen opens), like the armory's tabs, so it is not
        # kept as a row of its own.
        if self.category == 'aiming':                     # cellForAimingAtIndex: 0x1000b5734
            for title, description, scheme in AIMING_ROWS:
                cell = t.cell(title, description, hint=SELECT_HINT,
                              action=lambda s=scheme: self.select_control_scheme(s))
                cell.selected = params.control_scheme == scheme     # selectRowAtIndexPath:
            t.cell('Turn sensitivity', self.sensitivity_text(),
                   hint='Press Enter for the next value, Shift plus Enter for the previous.',
                   action=self.step_sensitivity, shift_action=self.step_sensitivity_back)
            t.cell('Restore aiming defaults',
                   hint='Press Enter to put Gyro and the turn sensitivity back to default.',
                   action=self.restore_aiming)
        elif self.category == 'controls':                 # cellForControlAtIndex: 0x1000b5d64
            for title, description, button in CONTROL_ROWS:
                cell = t.cell(title, description, hint=SELECT_HINT,
                              action=lambda b=button: self.select_button_mode(b))
                cell.selected = bool(params.button_mode) == button
        elif self.category == 'sound':                    # cellForSound: 0x1000b619c
            t.cell('Announcer', 'ON' if params.last_announcer_value() else 'OFF',
                   hint='Press Enter to toggle in-game announcements.', action=self.toggle_announcer)
            t.cell('Test headphones', hint='Press Enter to test your headphones.', action=self.test_headphones)
            t.cell('Tutorial text', self.tutorial_text_text(),   # PORT ADDITION
                   hint='Press Enter for the next setting, Shift plus Enter for the previous: when the '
                        "tutorial announcer's lines are also spoken, with the keys you have bound.",
                   action=self.step_tutorial_text, shift_action=self.step_tutorial_text_back)
        elif self.category == 'menus':                    # PORT ADDITION: how the cursor moves
            t.cell('Menu arrows', self.menu_axis_text(),
                   hint='Press Enter to move through menus with the other pair; Control with an arrow, '
                        'or with Tab, jumps to the first or last.',
                   action=self.toggle_menu_axis)
            t.cell('Remember cursor position', 'ON' if params.remember_focus() else 'OFF',
                   hint='Press Enter to toggle: when on, going back to a screen returns the cursor to the '
                        'row you left it on instead of the first one.',
                   action=self.toggle_remember_focus)
            t.cell('Restore menu defaults',
                   hint='Press Enter to put the menu arrows back to %s and turn the cursor memory off.'
                        % self.menu_axis_text(GameParameters.DEFAULT_MENU_AXIS),
                   action=self.restore_menus)
        elif self.category == 'keyboard':                 # PORT ADDITION: the key bindings
            keymap = KeyMap.shared()
            scheme = mode_text(keymap.mode())
            for action, _label, _default in ACTIONS:
                detail = keymap.keys_text(action)
                if action in BY_MODE:                     # this one is bound per control scheme
                    detail = '%s, in %s mode' % (detail, scheme)
                row = t.cell(keymap.label(action), detail,
                             hint='Press Enter to add a key, Shift Enter to replace them all, '
                                  'Delete to remove the last one.',
                             action=lambda a=action: self.capture_key(a),
                             shift_action=lambda a=action: self.capture_key(a, replace=True))
                row.binding_action = action               # what Delete acts on, for this row
            t.cell('Restore default keys',
                   hint='Press Enter to put every key back to its default, in both control schemes.',
                   action=self.restore_keys)
        self.click_on_every_row()

    def click_on_every_row(self) -> None:
        """PORT ADDITION: these rows are buttons in the sighted original (ADControlSchemeViewController's
        tabs and option buttons are ADButtonWithFonts), and those click when pressed.  As in Button(), the
        click is added after the row's own action."""
        for row in self.table_view.children:
            for actions in (row.actions, row.shift_actions):
                if actions and play_button_click not in actions:
                    actions.append(play_button_click)

    def focus_first_row(self, prefix: str | None = None) -> None:
        """Land on the category's first option, past its heading, and say where that is - the way the
        armory lands inside a tab it has just changed to."""
        rows = [row for row in self.table_view.children if row.traits == CELL]
        self.screen.post_screen_changed(rows[0] if rows else None, prefix)

    def announce(self, text: str) -> None:
        self.screen.speak(text)

    # --- categories ------------------------------------------------------------------------------
    def open_category(self, key: str) -> None:
        self.category = key
        self.capturing = None
        self.capturing_replaces = False
        self.table_view.children.clear()                  # a new list: no row keeps its place
        self.reload_data()
        self.focus_first_row(dict(CATEGORIES)[key])       # named, then the option it lands on

    @staticmethod
    def category_keys_text() -> str:
        """Both pairs of arrows, whichever way round the player has them: "Up and Down change category,
        Left and Right move through it"."""
        return cross_axis_text().replace('tab', 'category')

    def move_category(self, where: str) -> None:
        """PORT ADDITION: the arrows the menu navigation is not using move between categories - 'next',
        'previous', 'first' or 'last', as the element keys do one axis over."""
        keys = [key for key, _title in CATEGORIES]
        step = {'next': 1, 'previous': -1}.get(where)
        if step is None:
            i = 0 if where == 'first' else len(keys) - 1
        else:
            i = max(0, min(len(keys) - 1, keys.index(self.category) + step))   # the ends hold, as elsewhere
        self.open_category(keys[i])                       # at an end: says where we still are

    # --- aiming ----------------------------------------------------------------------------------
    @staticmethod
    def sensitivity_text(value=None) -> str:
        value = GameParameters.shared().sensivity if value is None else value
        return ('%.2f' % value).rstrip('0').rstrip('.')

    def select_control_scheme(self, scheme: int) -> None:   # willSelectRowAtIndexPath: 0x1000b51b0
        GameParameters.shared().set_control_scheme(scheme)
        self.reload_data()                                # the selected row moves within the section
        title = next(t for t, _d, s in AIMING_ROWS if s == scheme)
        self.announce('%s selected' % title)

    def step_sensitivity(self, step: int = 1) -> None:
        params = GameParameters.shared()
        steps = params.SENSIVITY_STEPS
        current = min(steps, key=lambda s: abs(s - params.sensivity))
        params.set_sensivity(steps[(steps.index(current) + step) % len(steps)])
        self.reload_data()
        self.announce('Turn sensitivity %s' % self.sensitivity_text())

    def step_sensitivity_back(self) -> None:
        self.step_sensitivity(-1)

    def restore_aiming(self) -> None:
        params = GameParameters.shared()
        params.set_control_scheme(1)
        params.set_sensivity(params.DEFAULT_SENSIVITY)
        self.reload_data()
        self.announce('Aiming restored: Gyro, sensitivity %s' % self.sensitivity_text())

    # --- controls --------------------------------------------------------------------------------
    def select_button_mode(self, button: bool) -> None:
        GameParameters.shared().set_button_mode(button)
        self.reload_data()
        keymap = KeyMap.shared()                          # Next weapon and Reload are bound per scheme
        self.announce('%s selected, %s switches weapon, %s reloads'
                      % ('Button' if button else 'Gesture',
                         keymap.keys_text('next_weapon'), keymap.keys_text('reload')))

    # --- sound -----------------------------------------------------------------------------------
    def toggle_announcer(self) -> None:
        params = GameParameters.shared()
        params.set_announcer(not params.last_announcer_value())
        self.reload_data()
        self.announce('Announcer %s' % ('ON' if params.last_announcer_value() else 'OFF'))

    @staticmethod
    def tutorial_text_text(mode=None) -> str:
        params = GameParameters.shared()
        return dict(params.TUTORIAL_TEXT_MODES)[params.tutorial_text_mode() if mode is None else mode]

    def step_tutorial_text(self, step: int = 1) -> None:
        params = GameParameters.shared()
        modes = [m for m, _text in params.TUTORIAL_TEXT_MODES]
        mode = modes[(modes.index(params.tutorial_text_mode()) + step) % len(modes)]
        params.set_tutorial_text_mode(mode)
        self.reload_data()
        self.announce('Tutorial text %s' % self.tutorial_text_text(mode))

    def step_tutorial_text_back(self) -> None:
        self.step_tutorial_text(-1)

    @staticmethod
    def test_headphones() -> None:
        pl = _headphones_playlist()
        sound = pl.sound('HeadphonesTest') if pl is not None else None
        if sound is not None:
            sound.play()

    # --- keyboard --------------------------------------------------------------------------------
    @staticmethod
    def menu_axis_text(axis=None) -> str:
        params = GameParameters.shared()
        return dict(params.MENU_AXES)[params.menu_axis() if axis is None else axis]

    def toggle_remember_focus(self) -> None:
        params = GameParameters.shared()
        params.set_remember_focus(not params.remember_focus())
        self.reload_data()
        self.announce('Remember cursor position %s' % ('ON' if params.remember_focus() else 'OFF'))

    def toggle_menu_axis(self) -> None:
        params = GameParameters.shared()
        axes = [a for a, _text in params.MENU_AXES]
        axis = axes[(axes.index(params.menu_axis()) + 1) % len(axes)]
        params.set_menu_axis(axis)
        self.reload_data()
        self.announce('Menu arrows %s' % self.menu_axis_text(axis))

    def capture_key(self, action: str, replace: bool = False) -> None:
        self.capturing = action
        self.capturing_replaces = replace
        keymap = KeyMap.shared()
        self.announce('Press the key to %s %s, or Escape to keep %s'
                      % ('use instead of' if replace else 'add to',
                         keymap.label(action), keymap.keys_text(action)))

    def handle_captured_key(self, code: int) -> bool:
        """The screen sends every key here while a binding is being set."""
        action, self.capturing = self.capturing, None
        replace, self.capturing_replaces = getattr(self, 'capturing_replaces', False), False
        if action is None:
            return False
        keymap = KeyMap.shared()
        if code == pygame.K_ESCAPE:
            self.announce('%s keeps %s' % (keymap.label(action), keymap.keys_text(action)))
            return True
        keymap.set_key(action, code) if replace else keymap.add_key(action, code)
        self.reload_data()
        self.announce('%s is now %s' % (keymap.label(action), keymap.keys_text(action)))
        return True

    def remove_key(self, action: str) -> None:
        """PORT ADDITION: Delete on a binding row takes off the key added last."""
        keymap = KeyMap.shared()
        name = keymap.remove_last_key(action)
        if name is None:
            self.announce('%s keeps %s: an action needs at least one key'
                          % (keymap.label(action), keymap.keys_text(action)))
            return
        self.reload_data()
        self.announce('%s removed from %s, now %s'
                      % (key_text(name), keymap.label(action), keymap.keys_text(action)))

    def restore_keys(self) -> None:
        KeyMap.shared().restore_defaults()
        self.reload_data()
        self.announce('Default keys restored in both control schemes')

    def restore_menus(self) -> None:
        params = GameParameters.shared()
        params.set_menu_axis(GameParameters.DEFAULT_MENU_AXIS)
        params.set_remember_focus(GameParameters.DEFAULT_REMEMBER_FOCUS)
        self.reload_data()
        self.announce('Menu defaults restored: arrows %s, remember cursor position %s'
                      % (self.menu_axis_text(),
                         'ON' if params.remember_focus() else 'OFF'))


@register('ADSettingsViewController')
class SettingsScreen(ViewControllerScreen):
    """ADSettingsViewController (tag-2781 view #54; the OK button #65 is labelled "OK")."""
    page_title = 'Settings'

    panel_title = 'Settings'                              # said when the panel takes the cursor

    def load_view(self) -> None:                          # 0x1000af3dc
        v = self.view = View('', (0, 0, 568, 320), accessible=False, name='#54')
        self.control_scheme_view = View('', (30, 50, 508, 190), accessible=False, parent=v, name='#19')
        Button('OK', (254, 245, 60, 50), parent=v, actions=[self.validate_button_pressed], name='#65')
        self.roots = [v]

    def view_did_load(self) -> None:                      # 0x1000af1b8
        super().view_did_load()
        self.add_control_scheme_panel()
        sb = self.status_bar_view_controller
        sb.back_button.set_title('Main Menu')
        sb.set_armory_button_visibility(False)
        sb.set_currencies_visibility(True)
        sb.set_diamonds_visibility(True)
        pl = _headphones_playlist()
        if pl is not None:
            pl.activate()

    def add_control_scheme_panel(self) -> None:           # 0x1000af5b8
        f = self.control_scheme_view.frame
        self.control_scheme = ControlSchemePanel(self, self.view, (f[0] + f[2] / 2.0, f[1] + f[3] / 2.0))
        panel = self.control_scheme
        panel.focus_first_row('%s, %s. %s' % (self.panel_title, panel.category_keys_text(),
                                              dict(CATEGORIES)[panel.category]))

    def view_will_appear(self) -> None:                   # 0x1000af4e0
        self.status_bar_view_controller.back_button.hidden = False
        super().view_will_appear()

    # --- keys ------------------------------------------------------------------------------------
    def key_down(self, event) -> None:
        if self.control_scheme.capturing is not None:     # setting a binding: every key goes to the panel
            self.control_scheme.handle_captured_key(event.key)
            return
        if event.key == pygame.K_DELETE:                  # PORT ADDITION: take a key off the focused binding
            action = getattr(self.focus, 'binding_action', None)
            if action is not None:
                self.control_scheme.remove_key(action)
                return
        where = cross_axis_key(event)                     # PORT ADDITION: the other arrows change category
        if where is not None:
            self.control_scheme.move_category(where)
            return
        super().key_down(event)

    # --- actions ---------------------------------------------------------------------------------
    def validate_button_pressed(self) -> None:            # 0x1000afa58
        self.host.dismiss_presented(self)

    def back_button_pressed(self) -> None:                # 0x1000af948
        pl = _headphones_playlist()
        if pl is not None:
            pl.deactivate()
        App.delegate().go_to_main_menu()


@register('ADPauseViewController')
class PauseScreen(SettingsScreen):
    """ADPauseViewController (tag-2781 view #27): the settings panel plus Resume and End Game."""
    page_title = 'Paused'

    panel_title = 'Paused'

    def __init__(self, host, pause_controller=None):
        super().__init__(host)
        self.pause = pause_controller

    def load_view(self) -> None:                          # 0x100055804
        v = self.view = View('', (0, 0, 568, 320), accessible=False, name='#27')
        self.control_scheme_view = View('', (30, 45, 508, 210), accessible=False, parent=v, name='#66')
        self.resume_button = Button('Resume', (60, 263, 120, 40), parent=v,
                                    actions=[self.validate_button_pressed], name='#58')
        Button('End Game', (358, 263, 150, 40), parent=v, actions=[self.quit_button_touched], name='#29')
        self.first_accessible_element = self.resume_button
        self.roots = [v]

    def view_did_load(self) -> None:                      # 0x100055650
        super().view_did_load()                           # ADSettingsViewController (the panel posts last)
        sb = self.status_bar_view_controller
        sb.back_button.set_title('Resume')
        sb.set_currencies_visibility(False)
        # loadMissionOverlay adds the mission bar at alpha 0
        pl = _headphones_playlist()
        if pl is not None:
            pl.activate()

    def view_will_appear(self) -> None:                   # 0x100055950: only [[self view] setNeedsLayout]
        if self.status_bar_view_controller is not None:
            self.status_bar_view_controller.view_will_appear()

    def validate_button_pressed(self) -> None:            # 0x100055bbc
        if self.pause is not None:
            self.pause.validate_button_pressed()
        else:
            self.host.dismiss_presented(self)

    def quit_button_touched(self) -> None:                # 0x1000559c0
        if self.pause is not None:
            self.pause.quit_button_touched()

    def back_button_pressed(self) -> None:                # 0x1000559ac
        self.validate_button_pressed()
