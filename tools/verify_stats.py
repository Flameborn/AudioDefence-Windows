"""Check every weapon's properties and every enemy's health against the original data.

The numbers themselves are not in the port: ``game/Weapons.plist`` and ``game/enemies.plist`` are the
bundle's own files, and ``-[ADWeapon initWithDictionary:]`` 0x100013f94 and ``-[ADEnemy initWithName:]``
0x10005ddd4 read them at runtime.  What can drift is the reading - a key spelled differently, a default
that is not the original's, an ``intValue`` written as a float conversion - so this builds every weapon at
every upgrade level and every enemy through the port's own constructors and compares each field with the
plist, converted the way ObjC converts it.

Run with no arguments; it exits non-zero and names the field on any mismatch.
"""
from __future__ import annotations

import os
import plistlib
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

from audiodefence.s3d import engine as engine_mod                               # noqa: E402


class _StubPlaylist:
    """The constructors ask the engine for a playlist and activate it; nothing here needs a sound."""

    def activate(self): pass
    def deactivate(self): pass
    def any_sound_with_prefix(self, prefix): return None
    def any_sound_containing(self, text): return None
    def any_sound_with_suffix(self, suffix): return None
    def sounds_matching(self, pred): return []


class _StubEngine:
    head_orientation = 0.0

    def play_list_with_name(self, name): return _StubPlaylist()
    def play_copy_of(self, sound): return False


engine_mod.S3DEngine.engine = staticmethod(lambda: _StubEngine())

from audiodefence.game.brick_manager import BrickManager                        # noqa: E402
from audiodefence.game.enemy import Enemy                                       # noqa: E402
from audiodefence.game.inventory import Inventory                               # noqa: E402
from audiodefence.game.modifiers import GameModifiers                           # noqa: E402
from audiodefence.game.weapon import MeleeWeapon, Weapon                        # noqa: E402
from audiodefence.platform.defaults import (ns_bool_value, ns_float_value,      # noqa: E402
                                            ns_int_value)

WEAPONS = plistlib.load(open(os.path.join(ROOT, 'game', 'Weapons.plist'), 'rb'))
ENEMIES = plistlib.load(open(os.path.join(ROOT, 'game', 'enemies.plist'), 'rb'))

#: a level dictionary's keys, and the ivar each one is read into
LEVEL_FIELDS = {
    'fireRate': 'fire_rate', 'damages': 'damages', 'spread': '_spread',
    'criticalSpread': 'critical_spread', 'criticalChance': 'critical_chance',
    'criticalMultiplier': 'critical_multiplier', 'continuous_spread': 'continuous_spread',
    'explosionRadius': 'explosion_radius', 'projectileSpeed': 'projectile_speed',
    'reloadTime': 'reload_time', 'timeBeforeExplode': 'time_before_explode',
}

failures: list = []


def check(where: str, field: str, got, want) -> None:
    same = got == want or (isinstance(got, float) and isinstance(want, float) and abs(got - want) < 1e-6)
    if not same:
        failures.append('%s: %s = %r, original %r' % (where, field, got, want))


def no_modifiers() -> None:
    """A plain run: every modifier off, so nothing scales what the plist says."""
    mods = GameModifiers.shared()
    for flag in dir(mods):
        if flag[:1].isalpha() and isinstance(getattr(mods, flag, None), bool):
            setattr(mods, flag, False)


def weapon_at(d: dict, level: int):
    Inventory.shared().level_for_weapon = lambda name, _l=level: _l
    return (MeleeWeapon if ns_bool_value(d.get('melee')) else Weapon)(d)


def check_weapons() -> None:
    print('=== WEAPONS: %d weapons, levels 1-4 ===' % len(WEAPONS['Weapons']))
    for d in WEAPONS['Weapons']:
        name = d['name']
        melee = ns_bool_value(d.get('melee'))
        for level in (1, 2, 3, 4):
            w = weapon_at(d, level)
            where = '%s level %d' % (name, level)
            lv = d['level_%d' % level]
            check(where, 'name', w.name, name)
            check(where, 'range', w.range, ns_float_value(d.get('range')))
            check(where, 'multihit', w.multihit, ns_bool_value(d.get('multihit')))
            check(where, 'continuousFire', w.continuous_fire, ns_bool_value(d.get('continuousFire')))
            check(where, 'explosive', w.explosive, ns_bool_value(d.get('explosive')))
            check(where, 'melee', isinstance(w, MeleeWeapon), melee)
            check(where, 'capacity', w.capacity, ns_int_value(lv.get('capacity')))
            check(where, 'bulletsInClip', w.bullets_in_clip, ns_int_value(lv.get('capacity')))
            check(where, 'bulletsTotal', w.bullets_total, 0x7fffffff)
            check(where, 'switchingTime', w.switching_time, 1.0)
            # dispersal is the one key with a default of its own (0x1000144e4)
            check(where, 'dispersal', w.dispersal,
                  ns_float_value(lv['dispersal']) if lv.get('dispersal') is not None else 100.0)
            for key, attr in LEVEL_FIELDS.items():
                check(where, key, getattr(w, attr), ns_float_value(lv.get(key)))
        one = weapon_at(d, 1)
        four = weapon_at(d, 4)
        traits = ''.join(' ' + t for t, on in (('multihit', one.multihit), ('explosive', one.explosive),
                                               ('continuous', one.continuous_fire)) if on)
        print('  %-14s %-5s damage %g-%g  range %g  rate %g-%g  crit %g%%x%g  dispersal %g%s'
              % (name, 'melee' if melee else 'gun', one.damages, four.damages, one.range,
                 one.fire_rate, four.fire_rate, one.critical_chance, one.critical_multiplier,
                 one.dispersal, traits))


def check_enemies() -> None:
    BrickManager.dictionary_for_enemy_name = staticmethod(lambda n: ENEMIES.get(n))
    print()
    print('=== ENEMIES: %d ===' % len(ENEMIES))
    for name in sorted(ENEMIES):
        d = ENEMIES[name]
        e = Enemy(name)
        life = ns_float_value(d.get('life'))
        check(name, 'life', e.life, life)
        check(name, 'maxLife', e.max_life, life)
        check(name, 'speed', e.speed, ns_float_value(d.get('speed')))
        check(name, 'score', e.score, ns_int_value(d.get('score')))
        check(name, 'comboBonus', e.combo_bonus, ns_int_value(d.get('comboBonus')))
        check(name, 'coinsReward', e.coins_reward, ns_int_value(d.get('coinsReward')))
        # agressiveSpeed falls back to speed when the key is absent (0x10005ddd4)
        check(name, 'agressiveSpeed', e.agressive_speed,
              ns_float_value(d['agressiveSpeed']) if d.get('agressiveSpeed') is not None
              else ns_float_value(d.get('speed')))
        for key, attr in (('explosion', 'explosion_dictionary'), ('shield', 'shield_dictionary'),
                          ('dodge', 'dodge_dictionary'), ('circling', 'circling_dictionary'),
                          ('berserk', 'berserk_dictionary')):
            check(name, key, getattr(e, attr), d.get(key))
        behaviours = ''.join(' ' + k for k in ('explosion', 'shield', 'dodge', 'circling', 'berserk')
                             if d.get(k))
        print('  %-18s life %-10g speed %-5g score %-5d coins %-3d combo %d%s'
              % (name, life, ns_float_value(d.get('speed')), ns_int_value(d.get('score')),
                 ns_int_value(d.get('coinsReward')), ns_int_value(d.get('comboBonus')), behaviours))


def main() -> int:
    no_modifiers()
    check_weapons()
    check_enemies()
    print()
    if failures:
        print('MISMATCHES (%d):' % len(failures))
        for line in failures:
            print('  ' + line)
        return 1
    print('OK: %d weapons at 4 levels and %d enemies match the original data.'
          % (len(WEAPONS['Weapons']), len(ENEMIES)))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
