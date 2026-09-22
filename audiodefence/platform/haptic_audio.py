"""PORT ADDITION: a DualSense's fine haptics, played as sound.

A DualSense on USB is also a sound card to Windows - "Speakers (DualSense Wireless Controller)", four
channels at 48 kHz.  The first two are the controller's little speaker; the third and fourth drive the two
haptic actuators in its grips, which move with the waveform they are given the way a speaker cone does.
That is how PlayStation games make a DualSense feel like rain or a heartbeat rather than buzz, and SDL's
rumble cannot reach it - so the port opens that sound card itself and plays into those two channels.

What is played is the game's own: the heartbeat recording the game has just played is felt in the hands,
filtered to the low range the actuators render; a hit, a melee blow, a kill, an explosion, the tornado's
gust and the player's death each have a waveform of their own (WAVES).  Over
Bluetooth Windows offers no such sound card, and the controller falls back to SDL's rumble (haptics.py).

The mixing runs on SDL's audio thread, a few hundred samples at a time; everything else happens on the
main thread and hands it finished waveforms.
"""
from __future__ import annotations

import logging
import threading
import time

import numpy as np

log = logging.getLogger('platform.haptic_audio')

RATE = 48000
CHANNELS = 4
HAPTIC_CHANNELS = (2, 3)                                  # left and right actuator; 0 and 1 are the speaker
#: the actuators render up to a few hundred hertz; above that they only buzz and make noise
LOW_PASS_HZ = 250.0
#: how often to look for the sound card again while a DualSense is connected without one (Bluetooth)
RETRY_SECONDS = 5.0


def low_pass(signal: np.ndarray, cutoff: float) -> np.ndarray:
    """Everything above `cutoff` rolled away steeply (a fourth-order curve), in one pass over the spectrum."""
    if len(signal) < 2:
        return signal.astype(np.float32)
    spectrum = np.fft.rfft(signal)
    hertz = np.fft.rfftfreq(len(signal), 1.0 / RATE)
    spectrum *= 1.0 / (1.0 + (hertz / cutoff) ** 4)
    return np.fft.irfft(spectrum, len(signal)).astype(np.float32)


def _normal(wave: np.ndarray) -> np.ndarray:
    peak = float(np.abs(wave).max()) if len(wave) else 0.0
    return (wave / peak).astype(np.float32) if peak > 0 else wave.astype(np.float32)


def from_sound(data: np.ndarray, rate: int) -> np.ndarray:
    """A recording as an actuator waveform: mono, at 48 kHz, low-passed, peak at 1."""
    mono = data.mean(axis=1) if data.ndim > 1 else data
    if rate != RATE and len(mono) > 1:
        positions = np.arange(int(len(mono) * RATE / rate)) * (rate / RATE)
        mono = np.interp(positions, np.arange(len(mono)), mono)
    return _normal(low_pass(mono.astype(np.float32), LOW_PASS_HZ))


def thump(hertz: float, seconds: float) -> np.ndarray:
    """A short low knock: a sine that starts at once and dies away."""
    t = np.arange(int(RATE * seconds)) / RATE
    return (np.sin(2 * np.pi * hertz * t) * np.exp(-t / (seconds / 4.0))).astype(np.float32)


def rumble(seconds: float, cutoff: float, seed: int, hold: float = 0.3) -> np.ndarray:
    """A low rumble - noise under `cutoff` - that comes in at once and fades over `seconds`, holding at
    full for the first `hold` of it."""
    n = int(RATE * seconds)
    noise = np.random.default_rng(seed).standard_normal(n).astype(np.float32)
    t = np.arange(n) / RATE
    fade = np.clip((seconds - t) / (seconds * (1.0 - hold)), 0.0, 1.0) ** 2
    return _normal(low_pass(noise, cutoff) * np.minimum(1.0, t / 0.005) * fade)


def fat(wave: np.ndarray, amount: float = 3.0) -> np.ndarray:
    """The same wave with more in it: soft saturation, which lifts everything under the peak without
    going over it.  The actuators answer to how much of the wave there is, not to its highest point, so a
    thump that only touches 1.0 for an instant is felt as weak; this fills it out."""
    return _normal(np.tanh(wave * amount).astype(np.float32))


def growing(wave: np.ndarray) -> np.ndarray:
    """The same wave coming up instead of dying away: something starting rather than something hitting.
    The ramp goes on after the saturation, which would otherwise flatten it out."""
    ramp = np.linspace(0.2, 1.0, len(wave), dtype=np.float32) ** 2
    return _normal(wave * ramp)


def _then(a: np.ndarray, b: np.ndarray, gap: float) -> np.ndarray:
    """`a`, and `b` `gap` seconds after it starts: two knocks felt as one thing."""
    i = int(RATE * gap)
    out = np.zeros(max(len(a), i + len(b)), np.float32)
    out[:len(a)] += a
    out[i:i + len(b)] += b
    return _normal(out)


def _mix(a: np.ndarray, b: np.ndarray, gain: float) -> np.ndarray:
    """`a` with `b` laid over it at `gain`, the shorter one padded with silence."""
    out = np.zeros(max(len(a), len(b)), np.float32)
    out[:len(a)] += a
    out[:len(b)] += gain * b
    return _normal(out)


class _Waves(dict):
    """The waveforms for what has no recording of its own (a hit's sound is a gun's, not something to
    feel), made the first time each is wanted."""
    MAKERS = {
        'heartbeat': lambda: thump(55.0, 0.12),               # when no recording is given
        # a knock you feel in the palm, with a tick on top so it still reads as a bullet: the actuators
        # answer low and longer far better than the short 170 Hz tick this was
        'hit': lambda: fat(_mix(thump(110.0, 0.09), thump(200.0, 0.03), 0.35), 4.0),
        'melee': lambda: fat(thump(70.0, 0.13), 4.0),
        'blocked': lambda: thump(260.0, 0.03),
        'kill': lambda: fat(_mix(thump(55.0, 0.2), thump(90.0, 0.12), 0.5), 4.0),
        # a blast: low, long, and held at full for half of it, with a thump at the front for the shock
        'explosion': lambda: fat(_mix(rumble(0.8, 70.0, 1, hold=0.5), thump(45.0, 0.25), 0.8), 4.0),
        'gust': lambda: rumble(0.4, 60.0, 2, hold=0.1) * 0.7,
        'death': lambda: fat(_mix(rumble(1.1, 70.0, 3, hold=0.4), thump(40.0, 1.0), 0.6), 4.0),
        # the menus: a click with enough in it to be felt, and two knocks for a screen - low to high going
        # in, high to low coming back out, so which way you went is felt as well as heard
        'menu': lambda: fat(_mix(thump(150.0, 0.05), thump(260.0, 0.02), 0.4), 4.0),
        'toggle': lambda: fat(_mix(thump(120.0, 0.07), thump(220.0, 0.03), 0.5), 4.0),
        'enter': lambda: fat(_then(thump(140.0, 0.05), thump(230.0, 0.05), 0.06), 3.5),
        'back': lambda: fat(_then(thump(230.0, 0.05), thump(140.0, 0.06), 0.06), 3.5),
        'diamond': lambda: _then(thump(300.0, 0.04), thump(450.0, 0.035), 0.07),   # two bright ticks
        'powerup': lambda: fat(_mix(thump(120.0, 0.12), thump(260.0, 0.05), 0.5), 4.0),   # the crate opens
        # the power-up taking hold: a rumble that grows instead of dying away, with a thump under it
        'powerup_use': lambda: growing(fat(_mix(rumble(0.6, 80.0, 5, hold=0.9), thump(50.0, 0.25), 0.5), 4.0)),
    }

    def __missing__(self, kind):
        maker = self.MAKERS.get(kind)
        if maker is None:
            return None
        wave = self[kind] = maker().astype(np.float32)
        return wave

    def get(self, kind, default=None):
        wave = self[kind]
        return default if wave is None else wave


WAVES = _Waves()


class HapticAudio:
    _shared: 'HapticAudio | None' = None

    @classmethod
    def shared(cls) -> 'HapticAudio':
        if cls._shared is None:
            cls._shared = HapticAudio()
        return cls._shared

    def __init__(self):
        self.device = None
        self.name = ''
        self.voices: list = []                            # [wave, position, gain], mixed on the audio thread
        self.lock = threading.Lock()
        self.recordings: dict = {}                        # sound file -> its waveform
        self.last_try = -RETRY_SECONDS

    # --- the sound card -------------------------------------------------------------------------------
    def available(self) -> bool:
        """Whether a DualSense's haptics can be played now; opens its sound card when one appears."""
        if self.device is not None:
            return True
        now = time.monotonic()
        if now - self.last_try < RETRY_SECONDS:
            return False
        self.last_try = now
        return self.open()

    def open(self) -> bool:
        try:
            from pygame._sdl2 import audio
            name = next((n for n in audio.get_audio_device_names(False) if 'dualsense' in n.lower()), None)
            if name is None:
                return False
            device = audio.AudioDevice(devicename=name, iscapture=False, frequency=RATE,
                                       audioformat=audio.AUDIO_F32, numchannels=CHANNELS, chunksize=512,
                                       allowed_changes=0, callback=self._fill)
            device.pause(0)
        except Exception as exc:                          # no such card, or it would not open: rumble instead
            log.info('the DualSense haptics are not available: %s', exc)
            return False
        self.device, self.name = device, name
        log.info('DualSense haptics on %s', name)
        return True

    def close(self) -> None:
        device, self.device = self.device, None
        with self.lock:
            self.voices.clear()
        if device is not None:
            try:
                device.close()
            except Exception:
                pass

    # --- what to feel ---------------------------------------------------------------------------------
    def recording(self, path: str):
        """The waveform of one of the game's sound files, made once and kept."""
        wave = self.recordings.get(path)
        if wave is None:
            from ..s3d import decoder
            try:
                data, rate = decoder.decode(path)
            except Exception as exc:
                log.info('%s cannot be felt: %s', path, exc)
                return None
            wave = self.recordings[path] = from_sound(data, rate)
        return wave

    def play(self, wave, gain: float) -> None:
        if wave is None or self.device is None:
            return
        with self.lock:
            self.voices.append([wave, 0, max(0.0, min(1.0, gain))])

    # --- the audio thread -----------------------------------------------------------------------------
    def _fill(self, _device, stream) -> None:
        frames = len(stream) // (4 * CHANNELS)
        out = np.zeros((frames, CHANNELS), np.float32)
        with self.lock:
            playing = []
            for voice in self.voices:
                wave, position, gain = voice
                piece = wave[position:position + frames]
                for channel in HAPTIC_CHANNELS:
                    out[:len(piece), channel] += piece * gain
                voice[1] = position + frames
                if voice[1] < len(wave):
                    playing.append(voice)
            self.voices = playing
        np.clip(out, -1.0, 1.0, out=out)
        stream[:] = out.tobytes()
