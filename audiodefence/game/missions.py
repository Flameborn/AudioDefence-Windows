"""ADMissionManager and ADMission.

QUIRKS kept:
* -[ADMissionManager update:] only queries tutorial_5 and never forwards update: to the missions,
  so a "survive" mission's survivalTime never advances during play.
* -[ADMission encodeWithCoder:] does not store progression_zombies, so it resets on every restore.
* -[ADMission enemiKilled:withWeapon:] counts progression_zombies for every kill, whatever the type.
"""
from __future__ import annotations

import logging

from ..platform.defaults import UserDefaults, ns_bool_value, ns_int_value
from . import data

log = logging.getLogger('missions')


class Mission:
    def __init__(self):
        self.player_is_alive = False
        self.single_life = False
        self.objective = 0
        self.objective_zombies = 0
        self.skip_cost = 0
        self.reward = 0
        self.survival_time = 0.0
        self.progression = 0
        self.progression_zombies = 0
        self.attempts = 0
        self.description = None
        self.type = None
        self.enemi = None
        self.weapon = None

    @classmethod
    def with_dictionary(cls, d: dict) -> 'Mission':       # -initWithDictionary: 0x1000449b0
        m = cls()
        m.objective_zombies = ns_int_value(d.get('objective_zombie'))
        m.objective = ns_int_value(d.get('objective'))
        m.skip_cost = ns_int_value(d.get('skipCost'))
        m.reward = ns_int_value(d.get('reward'))
        m.type = d.get('type')
        m.description = d.get('description')
        m.enemi = d.get('enemi')
        m.weapon = d.get('weapon')
        m.single_life = ns_bool_value(d.get('singleLife'))
        m.attempts = ns_int_value(d.get('attempts'))
        return m

    @classmethod
    def with_coder(cls, d: dict) -> 'Mission':            # -initWithCoder: 0x10004612c
        m = cls()
        m.objective = int(d.get('objective', 0))
        m.objective_zombies = int(d.get('objective_zombies', 0))
        m.description = d.get('description')
        m.type = d.get('type')
        m.enemi = d.get('enemi')
        m.weapon = d.get('weapon')
        m.skip_cost = int(d.get('skipCost', 0))
        m.reward = int(d.get('reward', 0))
        m.progression = int(d.get('progression', 0))
        m.attempts = int(d.get('attempts', 0))
        m.single_life = bool(d.get('singleLife', False))
        m.survival_time = float(d.get('survivalTime', 0.0))
        m.progression_zombies = int(d.get('progression_zombies', 0))
        return m

    def encode(self) -> dict:                             # -encodeWithCoder: 0x1000464c0
        return {'description': self.description, 'type': self.type, 'enemi': self.enemi, 'weapon': self.weapon,
                'objective': self.objective, 'objective_zombies': self.objective_zombies,
                'skipCost': self.skip_cost, 'reward': self.reward, 'progression': self.progression,
                'attempts': self.attempts, 'singleLife': self.single_life, 'survivalTime': self.survival_time,
                # DIVERGENCE: encodeWithCoder: 0x1000464c0 stores twelve fields and omits this one, so the
                # zombie count of a "kill N zombies" mission went back to 0 every time the game restarted -
                # isMissionCompleted tests it, so such a mission could only be finished in one sitting.
                'progression_zombies': self.progression_zombies}

    def start_gameplay(self) -> None:                     # 0x100044d80
        self.player_is_alive = True
        if self.single_life:
            self.survival_time = 0.0
            self.progression = 0
            self.progression_zombies = 0
        self.attempts = self.attempts + 1

    def update(self, dt: float) -> None:                  # 0x100044e30
        if self.player_is_alive:
            self.survival_time = self.survival_time + dt

    def player_shot_with_weapon(self, weapon, hit: bool) -> None:   # 0x100044eb0
        if self.type != 'shoot':
            return
        if self.weapon is not None and self.weapon != weapon:
            return
        self.progression = self.progression + 1

    def enemi_killed(self, enemi, weapon) -> None:        # 0x100045010
        if self.type == 'kill':
            weapon_ok = (self.weapon == weapon) if self.weapon is not None else True
            enemi_ok = (self.enemi == enemi) if self.enemi is not None else True
            if weapon_ok and enemi_ok:
                self.progression = self.progression + 1
        self.progression_zombies = self.progression_zombies + 1

    def player_died(self) -> None:                        # 0x100045240
        if self.type == 'die':
            self.progression = self.progression + 1

    def player_upgraded_weapon(self) -> None:             # 0x1000452f4
        if self.type == 'upgrade':
            self.progression = self.progression + 1

    def end_gameplay(self) -> None:                       # 0x1000453a8
        self.player_is_alive = False

    def player_swapped_weapon(self) -> None:              # 0x1000453b8
        pass

    def player_missed_a_shot(self) -> None:               # 0x1000453bc
        pass

    def is_mission_completed(self) -> bool:               # 0x1000453c0
        from .ingame_stats import InGameStats
        t = self.type
        if t in ('kill', 'shoot', 'die'):
            if not self.progression < self.objective:
                return True
        if t == 'survive':
            if self.survival_time >= float(self.objective):
                return True
        if t == 'accuracy':
            if self.progression_zombies < self.objective_zombies:
                return False
            return InGameStats.singleton().current_accuracy() * 100.0 > float(self.objective)
        if t == 'upgrade':
            return self.progression >= self.objective
        return False

    def completion_to_string(self) -> str:                # 0x100045710
        from .ingame_stats import InGameStats
        if self.attempts == 0:
            return ''
        t = self.type
        if t in ('kill', 'shoot', 'die'):
            return f'{self.progression}/{self.objective}'
        if t == 'survive':
            return f'{int(self.survival_time)}/{self.objective}'
        if t == 'accuracy':
            if self.progression_zombies == 0:
                return f'{self.progression_zombies}/{self.objective_zombies}'
            acc = InGameStats.singleton().current_accuracy() * 100.0
            return f'{self.progression_zombies}/{self.objective_zombies}    {acc:.1f}%'
        return ''

    def completion_to_float(self) -> float:               # 0x100045aac
        t = self.type
        value = 0.0
        if t in ('kill', 'shoot', 'die'):
            value = _fdiv(float(self.progression), float(self.objective))
        if t == 'survive':
            value = _fdiv(self.survival_time, float(self.objective))
        if t == 'accuracy':
            value = 0.0
        return 1.0 if value > 1.0 else value


def _fdiv(a: float, b: float) -> float:
    if b != 0.0:
        return a / b
    if a == 0.0 or a != a:
        return float('nan')
    return float('inf') if a > 0 else float('-inf')


class MissionManager:
    _shared: 'MissionManager | None' = None

    @classmethod
    def shared(cls) -> 'MissionManager':                  # +[ADMissionManager sharedMissionManager] 0x100007eec
        if cls._shared is None:
            cls._shared = MissionManager()
            cls._shared.init_or_restore()
        return cls._shared

    def __init__(self):
        self.current_mission_index = 0
        self._mission_array = None
        self.active_missions: list = []

    @property
    def mission_array(self) -> list:                      # 0x100007f98
        if self._mission_array is None:
            self._mission_array = data.plist_ro('Missions')
        return self._mission_array

    def active_missions_init(self) -> None:               # 0x1000080a4
        self.active_missions = []
        for _ in range(3):
            self.active_missions.append(Mission.with_dictionary(self.mission_array[self.current_mission_index]))
            self.current_mission_index = self.current_mission_index + 1

    def init_or_restore(self) -> None:                    # 0x100008284
        if UserDefaults.standard().object('missionArray') is not None:
            self.load_mission_progress()
        else:
            self.current_mission_index = 0
            self.active_missions_init()
            self.save_mission_progress()

    def save_mission_progress(self) -> None:              # 0x10000835c (NSKeyedArchiver -> JSON list)
        ud = UserDefaults.standard()
        ud.set_object([m.encode() for m in self.active_missions], 'missionArray')
        ud.set_integer(self.current_mission_index, 'currentMissionIndex')
        ud.synchronize()

    def load_mission_progress(self) -> None:              # 0x100008490
        ud = UserDefaults.standard()
        self.active_missions = [Mission.with_coder(d) for d in (ud.object('missionArray') or [])]
        self.current_mission_index = ud.integer('currentMissionIndex')

    def update(self, dt: float) -> None:                  # 0x1000085ac
        from .challenge_data import ChallengeData
        ChallengeData.shared().has_completed_challenge_with_name('tutorial_5')   # result unused
        # DIVERGENCE: that discarded question is the whole of the original's update: - it never forwards the
        # tick to its missions, so -[ADMission update:] 0x100044e30 never runs and a "survive" mission's
        # survivalTime stays at 0 however long you live.  The mission can be shown, attempted and saved, but
        # never completed.  The tick is forwarded here; every other kind of mission is driven by events and
        # was unaffected.
        for mission in list(self.active_missions):
            mission.update(dt)

    def missions_completed(self) -> None:                 # 0x100008618
        from .persistent_stats import PersistentStats
        n = 0
        for m in list(self.active_missions):
            n = int(m.is_mission_completed()) + n
        PersistentStats.shared().update_missions_completed(n)

    def replace_mission(self, mission) -> None:           # 0x1000087ac
        if mission in self.active_missions:
            self.active_missions.remove(mission)
        self.active_missions.append(self.get_next_mission())
        self.save_mission_progress()

    def get_next_mission(self) -> Mission:                # 0x1000088cc
        m = Mission.with_dictionary(self.mission_array[self.current_mission_index])
        self.current_mission_index = self.current_mission_index + 1
        if not (self.current_mission_index < len(self.mission_array)):
            self.current_mission_index = 0
        return m

    @staticmethod
    def _tutorial_done() -> bool:
        from .challenge_data import ChallengeData
        return ChallengeData.shared().has_completed_challenge_with_name('tutorial_5')

    def enemi_killed(self, enemi, weapon) -> None:        # 0x100008a20
        if self._tutorial_done():
            for m in list(self.active_missions):
                m.enemi_killed(enemi, weapon)

    def upgrade_weapon_to_level(self, level: int) -> None:   # 0x100008c10
        if self._tutorial_done():
            for m in list(self.active_missions):
                m.player_upgraded_weapon()

    def start_gameplay(self) -> None:                     # 0x100008cf0
        if self._tutorial_done():
            for m in list(self.active_missions):
                m.start_gameplay()

    def end_gameplay(self) -> None:                       # 0x100008dd0
        if self._tutorial_done():
            for m in list(self.active_missions):
                m.end_gameplay()
            self.missions_completed()
            self.save_mission_progress()

    def player_swapped_weapon(self) -> None:              # 0x100008ed0
        if self._tutorial_done():
            for m in list(self.active_missions):
                m.player_swapped_weapon()

    def player_missed_a_shot(self) -> None:               # 0x100008fb0
        if self._tutorial_done():
            for m in list(self.active_missions):
                m.player_missed_a_shot()

    def player_shot_with_weapon(self, weapon, hit: bool) -> None:   # 0x100009090
        if self._tutorial_done():
            for m in list(self.active_missions):
                m.player_shot_with_weapon(weapon, hit)

    def player_died(self) -> None:                        # 0x100009264 (no tutorial check)
        for m in list(self.active_missions):
            m.player_died()
