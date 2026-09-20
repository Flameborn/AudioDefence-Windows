"""Accessible_ADGameOverEndlessViewController: the Endless game over screen used while VoiceOver runs.

Class chain: Accessible_ADGameOverEndlessViewController : ADGameOverEndlessViewController :
ADGameOverWithStatsViewController : ADViewController.

QUIRK: -[Accessible_ADGameOverEndlessViewController viewDidLoad] (0x100099f50) does not call
[super viewDidLoad].  ADGameOverEndlessViewController's viewDidLoad (0x1000d306c), which starts the
"game_over_theme" menu music, and ADViewController's (status bar, first element) never run for VoiceOver
users: this screen is silent, and the status bar is loaded by the accessible viewDidLoad itself.
"""
from __future__ import annotations

import logging

from ..app import App
from ..platform.defaults import UserDefaults
from ..s3d.engine import S3DEngine
from . import results
from .accessibility import Button, View
from .host import register
from .viewcontroller import ViewControllerScreen

log = logging.getLogger('ui.gameover')


def time_string_from_seconds(seconds: int) -> str:     # timeStringFromSeconds: 0x10009be74
    minutes = int(seconds / 60)                         # C division truncates toward zero
    rest = seconds - minutes * 60
    return '%i:%s' % (minutes, '%s%i' % ('0' if rest < 10 else '', rest))


def compute_current_enemy_kill_count(stats) -> int:     # -[ADInGameStats computeCurrentEnemyKillCount] 0x1000bab3c
    from ..platform.defaults import ns_int_value
    if not stats.enemy_list:
        return 0
    total = 0
    for entry in stats.enemy_list.values():
        value = entry.get('Killed') if isinstance(entry, dict) else None
        total += ns_int_value(value) if value is not None else 0
    return total


@register('Accessible_ADGameOverEndlessViewController')
class AccessibleGameOverEndlessScreen(ViewControllerScreen):
    page_title = 'Game over'

    def __init__(self, host):                            # initWithNibName:bundle: 0x100099c68
        super().__init__(host)
        self.completed_missions: list = []
        self.init_missions()

    def init_missions(self) -> None:                     # 0x100099d80: empty
        pass

    def load_view(self) -> None:                         # 0x100099d84: nib Accessible_ADGameOverEndlessViewController (#16)
        v = self.view = View('', (0, 0, 480, 320), accessible=False, name='#16')
        self.table_view = View('', (0, 31, 480, 251), accessible=False, parent=v, ordered=True, name='#39 UITableView')
        # REMOVED (user request): the "Share on twitter" button #22 (AccessibleTwitterButtonPressed: 0x10009c0cc)
        Button('PLAY AGAIN', (265, 290, 133, 30), parent=v, font_button=False,
               actions=[self.play_again_button_pressed], name='#47')
        # PORT ADDITION: what the removed Twitter button was for, in a form that does not need an account
        # and works with whatever the player shares things in.  It sits below Play again so it is read
        # last: the score is what you came for, and copying it is the afterthought.
        copy = Button(results.COPY_LABEL, (265, 320, 133, 30), parent=v, font_button=False,
                      actions=[self.copy_results_button_pressed], name='Copy results (port)')
        copy.hint = results.COPY_HINT
        self.roots = [v]

    def view_did_load(self) -> None:                     # 0x100099f50 (no [super viewDidLoad])
        from ..game.ingame_stats import InGameStats
        from ..game.inventory import Inventory
        from ..game.persistent_stats import PersistentStats
        # [[statusBarViewController pageTitle] setText:@"GAME OVER"] goes to nil
        PersistentStats.shared().save_score(InGameStats.singleton().game_score)
        self.reset_cards_modifiers_if_needed()
        # REMOVED (user request): [self reportScoreToGameCenter] (0x1000d46f4); Windows has no Game Center
        if self.status_bar_view_controller is None:
            self.load_status_bar()
        self.status_bar_view_controller.set_armory_button_visibility(True)
        self.status_bar_view_controller.armory_loadout_enabled = True
        inv = Inventory.shared()
        inv.set_coins(inv.coins + InGameStats.singleton().total_coins)
        inv.set_diamonds(inv.diamonds + InGameStats.singleton().diamond_loot)
        # QUIRK KEPT: the missing [super viewDidLoad] also skips startMenuMusic:@"game_over_theme"
        # (0x1000d37cc), so this screen is silent - which is what it should be: it is the score you just
        # lost, not a menu.  The theme starts again on the card screen (Play again) or the main menu.

    def view_will_appear(self) -> None:                  # 0x10009c020
        super().view_will_appear()                       # ADGameOverEndlessViewController 0x1000d424c: positionView
        self.init_missions()
        self.reload_data()

    # --- ADGameOverEndlessViewController ---------------------------------------------------------
    @staticmethod
    def reset_cards_modifiers_if_needed() -> None:       # 0x1000d42a8
        from ..game.ingame_stats import InGameStats
        if not InGameStats.singleton().time_elapsed > 60.0:
            return
        defaults = UserDefaults.standard()
        for i in range(1, 4):
            defaults.set_object(None, 'tarotCard%i' % i)
        defaults.synchronize()

    def dealloc(self) -> None:                           # ADGameOverEndlessViewController dealloc 0x1000d4e18
        pl = S3DEngine.engine().play_list_with_name('revive')
        if pl is not None:
            pl.deactivate()
        super().dealloc()

    # --- table (UITableViewDataSource) -----------------------------------------------------------
    def reload_data(self) -> None:                       # [tableView reloadData]
        from ..game.ingame_stats import InGameStats
        stats = InGameStats.singleton()
        t = self.table_view
        t.children.clear()
        for section in range(self.number_of_sections()):
            head = View(self.header_for_section(section), t.frame, parent=t, name='header %i' % section)
            results.mark_header(head)                    # PORT ADDITION: for Copy results
            for row in range(self.number_of_rows_in_section(section)):
                text, detail = self.cell_for_row(section, row, stats)
                cell = View(', '.join(p for p in (text, detail) if p), t.frame, parent=t,
                            name='cell %i.%i' % (section, row))
                results.mark_cell(cell, text, detail)    # PORT ADDITION: for Copy results

    @staticmethod
    def number_of_sections() -> int:                     # numberOfSectionsInTableView: 0x10009a89c
        return 2

    @staticmethod
    def number_of_rows_in_section(section: int) -> int:  # tableView:numberOfRowsInSection: 0x10009a674
        if section == 0:
            return 2
        return 5 if section == 1 else 0

    @staticmethod
    def header_for_section(section: int) -> str:         # tableView:viewForHeaderInSection: 0x10009a690
        if section == 0:
            return 'Rewards'
        if section == 1:
            return 'Statistics'
        return ''

    def cell_for_row(self, section: int, row: int, stats):   # tableView:cellForRowAtIndexPath: 0x10009a8a4
        if section == 0:
            return self.cell_for_rewards_at_index(row, stats)
        if section == 1:
            return self.cell_for_stats_at_index(row, stats)
        return 'EMPTY CELL', 'EMPTY CELL'

    @staticmethod
    def cell_for_rewards_at_index(row: int, stats):      # cellForRewardsAtIndex: 0x10009aa80
        if row == 0:
            return 'Coins', 'You earned %i coins for killing zombies' % stats.total_coins
        if row == 1:
            return 'Diamonds', 'You earned %i diamonds' % stats.diamond_loot
        return '', ''

    @staticmethod
    def cell_for_stats_at_index(row: int, stats):        # cellForStatsAtIndex: 0x10009b7cc
        if row == 0:
            return 'Score', '%i' % stats.game_score
        if row == 1:
            return 'Kills', '%i' % compute_current_enemy_kill_count(stats)
        if row == 2:
            return 'Accuracy', '%.2f %%' % (stats.current_accuracy() * 100)
        if row == 3:
            return 'Survival time', time_string_from_seconds(int(stats.time_elapsed))
        if row == 4:
            return 'Maximum combo', '%i' % stats.highest_combo
        return '', ''

    # --- actions ---------------------------------------------------------------------------------
    def back_button_pressed(self) -> None:               # 0x10009a330
        App.delegate().go_to_main_menu()

    @staticmethod
    def play_again_button_pressed() -> None:             # playAgainButtonPressed: 0x10009bf54
        App.delegate().go_to_tarot()

    def copy_results_button_pressed(self) -> None:       # PORT ADDITION
        results.copy_results(self, 'Audio Defence, Endless')

    # REMOVED (user request): the magic tap 0x10009bff8 pressed Play again.
