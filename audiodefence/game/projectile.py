"""ADProjectile - a thrown/launched explosive (states: 1 moving, 2 counting down, 3 exploded, -1 finished)."""
from __future__ import annotations

import logging

from ..s3d.engine import S3DEngine

log = logging.getLogger('projectile')


class Projectile:
    # -[ADProjectile initWithSpeed:squaredDistanceToCover:timeToLive:soundsPrefix:orientation:] 0x100053660
    def __init__(self, speed: float, squared_distance_to_cover: float, time_to_live: float, sounds_prefix,
                 orientation):
        self._state = 0
        self.tag = 0
        self.time_in_state = 0.0
        self.explosion_radius = 0.0
        self.weapon = None                                # weak in the original
        self.position = (0.0, 0.0)
        self.moving_sound = None
        self.sounds_prefix = None
        self.playlist = S3DEngine.engine().play_list_with_name(sounds_prefix) if sounds_prefix is not None else None
        self.squared_distance_to_cover = float(squared_distance_to_cover)
        self.speed = 0.0
        self.orientation = (0.0, 0.0)
        self.move()                                       # before speed and orientation are stored
        self.orientation = (float(orientation[0]), float(orientation[1]))
        self.speed = float(speed)
        self.explosion_radius = 5.0
        self.ttl = float(time_to_live)

    @property
    def state(self) -> int:
        return self._state

    def set_state(self, state: int) -> None:              # 0x100053d54
        if self._state == state:
            return
        self._state = state
        self.time_in_state = 0.0

    def update(self, dt: float) -> None:                  # 0x100053804
        st = self._state
        if st == 1:
            px, py = self.position
            nx = px + dt * (self.orientation[0] * self.speed)
            ny = py + dt * (self.orientation[1] * self.speed)
            if nx * nx + ny * ny <= self.squared_distance_to_cover:
                self.position = (nx, ny)
                if self.moving_sound is not None:
                    self.moving_sound.set_planar((self.position[0], self.position[1], 0.0))
            elif self.ttl <= 0.05:
                self.explode()
                self.set_state(3)
            else:
                self.play_count_down()
                self.set_state(2)
        elif st == 2:
            if self.ttl < 0.0:
                self.explode()
                self.set_state(3)
        elif st == 3:
            if self.time_in_state > 3.0:
                self.set_state(-1)
        self.ttl = self.ttl - dt
        self.time_in_state = self.time_in_state + dt

    def move(self) -> None:                               # 0x100053a54
        self.set_state(1)
        self.moving_sound = self.playlist.any_sound_containing('_move_') if self.playlist is not None else None
        if self.moving_sound is not None:
            self.moving_sound.set_spatialized(True)
            self.moving_sound.play(True)

    def play_count_down(self) -> None:                    # 0x100053af4
        snd = self.playlist.any_sound_containing('_timer') if self.playlist is not None else None
        if snd is not None:
            snd.set_spatialized(True)
            snd.set_planar((self.position[0], self.position[1], 0.0))
            snd.play(False)

    def explode(self) -> None:                            # 0x100053be0
        from .brick_manager import BrickManager
        if self.moving_sound is not None:
            self.moving_sound.stop()
        snd = self.playlist.any_sound_containing('_explosion_') if self.playlist is not None else None
        if snd is not None:
            snd.set_spatialized(True)
            snd.set_planar((self.position[0], self.position[1], 0.0))
            snd.set_gain(10.0)
            snd.play(False)
        BrickManager.shared().solve_explosion_of_projectile(self)
