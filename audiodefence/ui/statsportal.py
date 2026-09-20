"""The stats portal and the three screens it opens: Zombiepedia, Statistics and Credits.

    ADStatsPortalViewController  -> ADEncyclopediaViewController  (+ item / locked item views)
                                 -> ADStatsViewController
                                 -> ADAboutCreditsViewController
                                 (-> ADMoreGamesViewController: REMOVED, user request)

None of these has an Accessible_ nib: they use the iPhone tag-2781 layout, and the screen reader reads the
labels the controllers fill in (the encyclopedia item views set their own accessibility labels).
"""
from __future__ import annotations

import logging

from ..game import data
from ..game.persistent_stats import PersistentStats
from ..platform.defaults import ns_float_value, ns_int_value
from ..platform.runloop import RunLoop
from ..s3d.engine import S3DEngine
from .accessibility import BUTTON, Button, View
from .challenges import _TableLoader
from .credits_text import ABOUT_TEXT, CREDITS_TEXT
from .host import register
from .viewcontroller import ViewControllerScreen

log = logging.getLogger('ui.stats')


def _accuracy_text(accuracy: float) -> str:
    """DIVERGENCE (user request): configureWeaponCell:ForRow: 0x1000d0ff0 builds this at 0x0d129c as
    [NSString stringWithFormat:@"%@%%", [[accuracy stringValue] componentsSeparatedByString:@"."][0]] -
    everything before the first dot.  A weapon that has never been fired has shotsHit / shotsFired = 0 / 0,
    which is nan, so its row is read out as "accuracy, nan percent"; and a real accuracy is cut at the
    decimal point, so 66.6 per cent is announced as 66.  The exact figure is spoken instead, to one
    decimal, and a weapon with no shots says so."""
    if accuracy != accuracy:                              # nan: nothing has been fired
        return 'not fired yet'
    return '%s%%' % ('%.1f' % accuracy).rstrip('0').rstrip('.')


def _play_click() -> None:
    """-[ADStatsPortalViewController playSound] 0x1000c9594 (the encyclopedia's is the same code)."""
    pl = S3DEngine.engine().play_list_with_name('buttons')
    sound = pl.sound('click_button') if pl is not None else None
    if sound is not None:
        sound.set_gain(3.0)
        sound.play()


# =========================================================================================== portal
@register('ADStatsPortalViewController')
class StatsPortalScreen(ViewControllerScreen):
    """ADStatsPortalViewController (tag-2781 view #4)."""
    #: the original sets "AUDIO DEFENCE" here, but the button that opens it says Info
    page_title = 'Info'

    def load_view(self) -> None:                          # 0x1000c9314
        v = self.view = View('', (0, 0, 568, 320), accessible=False, name='#4')
        Button('Zombiepedia', (180, 70, 206, 43), parent=v, actions=[lambda: self.button_pressed(1)], name='#77')
        Button('Stats', (225, 121, 111, 43), parent=v, actions=[lambda: self.button_pressed(2)], name='#26')
        # REMOVED (user request): the "more games" button #80 (tag 3) and ADMoreGamesViewController
        Button('Credits', (206, 227, 149, 43), parent=v, actions=[lambda: self.button_pressed(4)], name='#127')
        self.roots = [v]

    def view_did_load(self) -> None:                      # 0x1000c9010
        super().view_did_load()
        sb = self.status_bar_view_controller
        sb.set_armory_button_visibility(False)
        sb.set_currencies_visibility(False)
        sb.set_diamonds_visibility(False)
        sb.back_button.set_title('Main Menu')
        # [[sb pageTitle] setText:@"AUDIO DEFENCE"] goes to nil; the Google Analytics screen view is not ported

    def button_pressed(self, tag: int) -> None:           # buttonPressed: 0x1000c9690
        from ..app import App
        name = {1: 'ADEncyclopediaViewController', 2: 'ADStatsViewController',
                4: 'ADAboutCreditsViewController'}.get(tag)
        if name is None:
            return
        _play_click()
        App.delegate().present_view_controller_named(self, name)

    def back_button_pressed(self) -> None:                # 0x1000c9528
        self.host.dismiss_presented(self)


# ========================================================================================== credits
@register('ADAboutCreditsViewController')
class AboutCreditsScreen(ViewControllerScreen):
    """ADAboutCreditsViewController (tag-2781 view #97): two text views."""
    page_title = 'Credits'

    def load_view(self) -> None:                          # 0x100020ea4
        v = self.view = View('', (0, 0, 568, 320), accessible=False, name='#97')
        View(ABOUT_TEXT, (43, 95, 229, 217), parent=v, name='#76 UITextView')
        View(CREDITS_TEXT, (308, 95, 240, 217), parent=v, name='#25 UITextView')
        self.roots = [v]

    def view_did_load(self) -> None:                      # 0x100020a44
        super().view_did_load()
        sb = self.status_bar_view_controller
        sb.set_armory_button_visibility(False)
        sb.set_currencies_visibility(False)
        sb.set_diamonds_visibility(False)

    def back_button_pressed(self) -> None:                # 0x100020ff0
        self.host.dismiss_presented(self)


# ====================================================================================== zombiepedia
class EncyclopediaItemView:
    """ADEncyclopediaItemViewController (view #128) / ADEncyclopediaItemLockedViewController (view #133),
    one page of the horizontal scroller."""

    def __init__(self, screen, name, setup, locked: bool, sound, index: int):
        self.screen = screen
        self.enemy_name = name
        self.setup_data = setup
        self.locked = locked
        self.enemy_sound = sound
        self.index = index
        self.load_view()

    def load_view(self) -> None:
        v = self.view = View('', (0, 0, 568, 320), accessible=False, parent=self.screen.scroll_view,
                             name='#133' if self.locked else '#128')
        # DIVERGENCE: the nib labels these two "Previous button" and "Next button", which a screen reader
        # reads as "Previous button, button" since it adds the trait itself, and spells out when they are
        # unavailable ("Click to view the next enemy's description. This button will be unavailable if you
        # are at the end of the list").  The port drops the word from the label and shortens the hint.
        self.left_arrow = View('Previous', (8, 0, 40, 240), traits=BUTTON, parent=v,
                               hint='Click to view the previous enemy.',
                               name='#65' if self.locked else '#108')
        self.left_arrow.add_target(self.screen.previous_button_pressed)
        self.right_arrow = View('Next', (520, 0, 40, 240), traits=BUTTON, parent=v,
                                hint='Click to view the next enemy.',
                                name='#48' if self.locked else '#74')
        self.right_arrow.add_target(self.screen.next_button_pressed)
        # DIVERGENCE: the audio button is an image view with a tap recogniser and no accessibility label -
        # the nib labels the two arrows and applyAccessibility (0x10008c3a4 / 0x1000b7750) labels the text,
        # but nothing names this one, so VoiceOver reads it as its image file, "button audio large".  The
        # port names it for what it does: it is the only way to hear the zombie.
        self.audio_button = View('Preview sound', (370, 60, 120, 120), traits=BUTTON, parent=v,
                                 hint='Press Enter to hear.',
                                 name='#56' if self.locked else '#170')
        self.audio_button.add_target(self.handle_tap_for_sound)
        if self.locked:                                   # populateViewWithData 0x10008bfb8
            self.enemy_name_label = View('', (108, 90, 57, 25), parent=v, name='#46')
            missing = ns_int_value(self.setup_data.get('unlockCondition')) - \
                ns_int_value(self.setup_data.get('Total Kills'))
            text = ('Kill %d more enemy to unlock' % 1) if missing == 1 else \
                ('Kill %d more enemies to unlock' % missing)
            self.unlock_condition_label = View('', (108, 123, 254, 21), parent=v, name='#124')
            self.unlock_condition_label.text = text
        else:                                             # populateViewWithData 0x1000b7190
            self.enemy_name_label = View('', (104, 80, 358, 40), parent=v, name='#139')
            self.kills_label = View('', (106, 120, 50, 30), parent=v, name='#43')
            self.kills_value = ns_int_value(self.setup_data.get('Killed'))
            self.killed_by_label = View('', (222, 120, 80, 30), parent=v, name='#178')
            self.killed_by_value = ns_int_value(self.setup_data.get('Casualty'))
            View(self.setup_data.get('Bio') or '', (104, 150, 358, 149), parent=v, name='#18 UITextView')
        self.apply_accessibility()

    def apply_accessibility(self) -> None:                # 0x10008c3a4 / 0x1000b7750
        self.enemy_name_label.label = 'Zombie name: %s' % self.enemy_name
        if self.locked:
            self.unlock_condition_label.label = 'Unlock condition: %s' % self.unlock_condition_label.text
        else:
            self.kills_label.label = 'Killed: %d' % self.kills_value
            self.killed_by_label.label = 'Killed by: %d' % self.killed_by_value

    def handle_tap_for_sound(self) -> None:               # 0x10008b9b4
        if self.enemy_sound is None:
            return
        # with VoiceOver the sound is played a second later, so it does not fight the spoken label
        RunLoop.main().call_later(1.0, lambda: self.enemy_sound.play(False))


@register('ADEncyclopediaViewController')
class EncyclopediaScreen(ViewControllerScreen):
    """ADEncyclopediaViewController (tag-2781 view #56; the name table #90 is firstAccessibleElement)."""
    page_title = 'Zombipedia'

    def __init__(self, host):                             # initWithNibName:bundle: 0x100078348
        super().__init__(host)
        self.enemies_plist = data.plist('enemies') or {}
        self.display_name_to_unlock_requirement = self.get_display_name_to_unlock_requirement()
        self.enemy_persistent_data = PersistentStats.shared().enemy_stat_data()
        self.display_name_to_name_map = self.map_display_name_to_name()
        self.sorted_zombie_names = self.sort_zombie_names()
        self.encyclopedia_playlist = S3DEngine.engine().play_list_with_name('encyclopedia')
        if self.encyclopedia_playlist is not None:
            # [playlist setPlayListRepeatPolicy:0] (0x1000fd344): the port's playlists do not repeat anyway
            self.encyclopedia_playlist.activate()
        self.current_enemy_being_shown = 0
        self.displaying_detail_view = False
        self.item_views: list = []

    # --- data ------------------------------------------------------------------------------------
    def _bestiary_entries(self):
        for name, entry in self.enemies_plist.items():
            if isinstance(entry, dict) and entry.get('bestiary') is not None:
                yield name, entry

    def get_display_name_to_unlock_requirement(self) -> dict:   # 0x100078738
        out = {}
        for _name, entry in self._bestiary_entries():
            display = entry.get('displayName')
            if display is not None and display not in out:
                out[display] = ns_int_value((entry.get('bestiary') or {}).get('Unlock requirement'))
        return out

    def map_display_name_to_name(self) -> dict:           # 0x100078b94
        out = {}
        for name, entry in self._bestiary_entries():
            display = entry.get('displayName')
            if display is not None and display not in out:
                out[display] = name
        return out

    def sort_zombie_names(self) -> list:                  # 0x100079610 (keysSortedByValueUsingComparator:)
        return sorted(self.display_name_to_unlock_requirement,
                      key=lambda n: self.display_name_to_unlock_requirement[n])

    def get_sound_for_name(self, key):                    # 0x1000795dc
        pl = self.encyclopedia_playlist
        return pl.sound(key) if pl is not None else None

    # --- views -----------------------------------------------------------------------------------
    def load_view(self) -> None:                          # 0x1000791d0
        v = self.view = View('', (0, 0, 568, 320), accessible=False, name='#56')
        self.scroll_view = View('', (0, 0, 568, 320), accessible=False, parent=v, name='#51')
        self.scroll_view.hidden = True                    # hidden by viewWillAppear's block
        self.table_view = View('', (140, 40, 288, 272), accessible=False, parent=v, ordered=True, name='#90')
        self.first_accessible_element = self.table_view
        self.roots = [v]

    def view_did_load(self) -> None:                      # 0x100078eb8
        super().view_did_load()
        sb = self.status_bar_view_controller
        sb.set_armory_button_visibility(False)
        sb.set_currencies_visibility(False)
        sb.set_diamonds_visibility(False)

    def view_will_appear(self) -> None:                   # 0x100079378 (an MBProgressHUD, then 10 ms later:)
        super().view_will_appear()
        self.add_detail_view_controllers_to_horizontal_scroller()
        self.reload_data()

    def add_detail_view_controllers_to_horizontal_scroller(self) -> None:   # 0x10007975c
        for item in list(self.item_views):
            self.scroll_view.children.remove(item.view)
        self.item_views = []
        total_kills = PersistentStats.shared().compute_total_enemy_kill_count()
        for index, display in enumerate(self.sorted_zombie_names):
            name = self.display_name_to_name_map.get(display)
            bestiary = (self.enemies_plist.get(name) or {}).get('bestiary') or {}
            stats = self.enemy_persistent_data.get(display) or {}
            setup = {'Bio': bestiary.get('Bio'), 'Killed': ns_int_value(stats.get('Killed')),
                     'Casualty': ns_int_value(stats.get('Casualty')), 'Total Kills': total_kills}
            locked = self.display_name_to_unlock_requirement[display] > total_kills
            if locked:
                setup['unlockCondition'] = self.display_name_to_unlock_requirement[display]
                sound = self.get_sound_for_name('locked_%s' % name)
            else:
                sound = self.get_sound_for_name(name)
            self.item_views.append(EncyclopediaItemView(self, display, setup, locked, sound, index))
        self._update_pages()

    def _update_pages(self) -> None:
        """PORT APPROXIMATION: the scroller's other pages are off screen, so only the shown one is read."""
        for i, item in enumerate(self.item_views):
            item.view.elements_hidden = i != self.current_enemy_being_shown
            item.left_arrow.hidden = i == 0
            item.right_arrow.hidden = i == len(self.item_views) - 1

    def reload_data(self) -> None:
        t = _TableLoader(self.table_view)
        for row, display in enumerate(self.sorted_zombie_names):   # cellForRowAtIndexPath: 0x10007a8e0
            # ADEncycVertCell: the name button is not an accessibility element, so the cell is read as its
            # title and activating the cell taps the button under it (zombieNameButtonPressed:)
            t.cell(display, action=lambda d=display: self.cell_selected_with_zombie_name(d))

    # --- actions ---------------------------------------------------------------------------------
    def cell_selected_with_zombie_name(self, display) -> None:   # 0x10007abcc
        self.scroll_view.hidden = False
        self.displaying_detail_view = True
        for index, item in enumerate(self.item_views):
            if item.enemy_name == display:
                self.current_enemy_being_shown = index
                break
        self.table_view.hidden = True                     # VoiceOver only
        self._update_pages()
        self.post_screen_changed(self.item_views[self.current_enemy_being_shown].view)

    def next_button_pressed(self) -> None:                # 0x10007b2b4
        self.current_enemy_being_shown += 1
        _play_click()
        self._update_pages()
        self.post_screen_changed(self.item_views[self.current_enemy_being_shown].view)

    def previous_button_pressed(self) -> None:            # 0x10007b628
        self.current_enemy_being_shown -= 1
        _play_click()
        self._update_pages()
        self.post_screen_changed(self.item_views[self.current_enemy_being_shown].view)

    def close_detail(self) -> None:                       # 0x10007a600
        _play_click()
        self.scroll_view.hidden = True
        self.displaying_detail_view = False

    def back_button_pressed(self) -> None:                # 0x10007b1a0
        if self.displaying_detail_view:
            self.close_detail()
            self.table_view.hidden = False                # VoiceOver only
            self.post_screen_changed(self.table_view)
            return
        if self.encyclopedia_playlist is not None:
            self.encyclopedia_playlist.deactivate()
            self.encyclopedia_playlist = None
        self.host.dismiss_presented(self)

    def dealloc(self) -> None:                            # 0x10007b0ec
        if self.encyclopedia_playlist is not None:
            self.encyclopedia_playlist.deactivate()
            self.encyclopedia_playlist = None
        super().dealloc()


# ======================================================================================= statistics
GLOBAL_STATS_ORDERING = ['Deaths', 'Kills', 'Total play time in Endless Mode',
                         'Total play time in Challenge Mode', 'Challenge stars unlocked',
                         'Total number of missions completed', 'Total number of missions skipped',
                         'Money earned', 'Money spent', 'Diamonds collected', 'Diamonds spent',
                         'Weapons obtained', 'Shots fired', 'Melee swings']
#: PORT ADDITION: the two rows the original never shows, under the names the save file uses
SPENT_ROWS = {'Money spent': 'Total Money Spent', 'Diamonds spent': 'Total Diamonds Spent'}
ENDLESS_MODE_STATS_ORDERING = ['Longest Endless Mode', 'Total kills', 'Best score', 'Best number of kills']


@register('ADStatsViewController')
class StatsScreen(ViewControllerScreen):
    """ADStatsViewController (tag-2781 view #57, table #72).  Sections: 0 Misc, 1 Endless mode,
    2 Enemies, 3 Weapons."""
    page_title = 'Statistics'

    def __init__(self, host):                             # initWithNibName:bundle: 0x1000cc5a0
        super().__init__(host)
        self.global_stats_ordering = list(GLOBAL_STATS_ORDERING)
        self.endless_mode_stats_ordering = list(ENDLESS_MODE_STATS_ORDERING)
        stats = PersistentStats.shared()
        stats.compute_challenges_won_and_save()
        self.create_sections_for_weapons()
        self.create_global_section()
        self.create_endless_mode_section()
        self.create_sections_for_enemies()
        self.data_loaded = False

    # --- data ------------------------------------------------------------------------------------
    def create_sections_for_weapons(self) -> None:        # 0x1000ceecc
        from ..game.weapon_manager import WeaponManager
        wm = WeaponManager.shared()
        out = []
        for name, entry in (PersistentStats.shared().unlocked_weapons() or {}).items():
            entry = entry or {}
            shots = ns_float_value(entry.get('shotsFired'))
            hits = ns_float_value(entry.get('shotsHit'))
            accuracy = (hits / shots * 100.0) if shots else float('nan')
            display = wm.display_name_for_item_with_name(name)   # the plist lookup of the two blocks
            out.append({'name': display if display is not None else name, 'accuracy': accuracy,
                        'kills': ns_int_value(entry.get('kills'))})
        self.weapons_data = out

    def create_sections_for_enemies(self) -> None:        # 0x1000cf7cc
        out = []
        for display, entry in PersistentStats.shared().enemy_list_with_kills_greater_than(0).items():
            out.append({'name': display, 'casualty': ns_int_value((entry or {}).get('Casualty')),
                        'kills': ns_int_value((entry or {}).get('Killed'))})
        self.enemies_data = out

    def create_global_section(self) -> None:              # 0x1000cfc5c (the keys the endless section skips)
        totals = PersistentStats.shared().total_stat_data()
        self.global_data = {k: v for k, v in totals.items() if k not in self.endless_mode_stats_ordering}

    def create_endless_mode_section(self) -> None:        # 0x1000cff5c
        totals = PersistentStats.shared().total_stat_data()
        self.endless_mode_data = {k: v for k, v in totals.items() if k in self.endless_mode_stats_ordering}

    # --- views -----------------------------------------------------------------------------------
    def load_view(self) -> None:                          # 0x1000cd1f0
        v = self.view = View('', (0, 0, 568, 320), accessible=False, name='#57')
        self.table_view = View('', (35, 50, 498, 262), accessible=False, parent=v, ordered=True, name='#72')
        self.roots = [v]

    def view_did_load(self) -> None:                      # 0x1000cc88c
        super().view_did_load()
        sb = self.status_bar_view_controller
        sb.set_armory_button_visibility(False)
        sb.set_currencies_visibility(False)
        sb.set_diamonds_visibility(False)
        self.data_loaded = True                           # loadData's HUD and 10 ms delay are visual

    def view_will_appear(self) -> None:
        super().view_will_appear()
        self.reload_data()

    @staticmethod
    def formatted_score_from_int(value: int) -> str:      # 0x1000d0b0c (NSNumberFormatterDecimalStyle)
        return '{:,}'.format(int(value))

    def _value_text(self, table: dict, key: str) -> str:
        value = table.get(key)
        if isinstance(value, str):
            return value
        if value is None:
            return '0'
        text = str(value)
        return text if text else '0'

    def reload_data(self) -> None:
        stats = PersistentStats.shared()
        t = _TableLoader(self.table_view)
        t.header('Misc')                                  # viewForHeaderInSection: 0x1000d2c28
        for key in self.global_stats_ordering:            # configureGlobalCell:ForRow: 0x1000d0304
            if key == 'Kills':
                value = self.formatted_score_from_int(stats.compute_total_enemy_kill_count())
            elif key in SPENT_ROWS:                       # PORT ADDITION
                value = self._value_text(self.global_data, SPENT_ROWS[key])
            else:
                value = self._value_text(self.global_data, key)
            t.cell(key, value)
        t.header('Endless mode')
        for key in self.endless_mode_stats_ordering:      # configureEndlessModeCell:ForRow: 0x1000d0740
            if key == 'Best score':
                value = self.formatted_score_from_int(stats.high_score())
            else:
                value = self._value_text(self.endless_mode_data, key)
            t.cell(key, value)
        t.header('Enemies')
        for entry in self.enemies_data:                   # configureEnemyCell:ForRow: 0x1000d0bf4
            t.cell(entry['name'], 'kills, %s, casualties, %s' % (entry['kills'], entry['casualty']))
        t.header('Weapons')
        for entry in self.weapons_data:                   # configureWeaponCell:ForRow: 0x1000d0ff0
            t.cell(entry['name'], 'kills, %s, accuracy, %s'
                   % (entry['kills'], _accuracy_text(entry['accuracy'])))

    def back_button_pressed(self) -> None:                # 0x1000d0298
        self.host.dismiss_presented(self)
