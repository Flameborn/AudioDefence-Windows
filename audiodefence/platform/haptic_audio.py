"""PORT ADDITION: a DualSense's fine haptics, played as sound.

A DualSense on USB is also a sound card to Windows - "Speakers (DualSense Wireless Controller)", four
channels at 48 kHz.  The first two are the controller's little speaker; the third and fourth drive the two
haptic actuators in its grips, which move with the waveform they are given the way a speaker cone does.
That is how PlayStation games make a DualSense feel like rain or a heartbeat rather than buzz, and SDL's
rumble cannot reach it - so the port opens that sound card itself and plays into those two channels.

What is played is the game's own: the heartbeat recording the game has just played is felt in the hands,
filtered to the low range the actuators render, and a hit and a melee blow are short low thumps.  Over
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


def _one_pole(signal: np.ndarray, cutoff: float) -> np.ndarray:
    a = np.exp(-2.0 * np.pi * cutoff / RATE)
    out = np.empty_like(signal)
    y = 0.0
    for i, x in enumerate(signal):                        # short signals: a plain loop is fast enough
        y = (1.0 - a) * x + a * y
        out[i] = y
    return out


def from_sound(data: np.ndarray, rate: int) -> np.ndarray:
    """A recording as an actuator waveform: mono, at 48 kHz, low-passed twice, peak at 1."""
    mono = data.mean(axis=1) if data.ndim > 1 else data
    if rate != RATE and len(mono) > 1:
        positions = np.arange(int(len(mono) * RATE / rate)) * (rate / RATE)
        mono = np.interp(positions, np.arange(len(mono)), mono)
    wave = _one_pole(_one_pole(mono.astype(np.float32), LOW_PASS_HZ), LOW_PASS_HZ)
    peak = float(np.abs(wave).max()) if len(wave) else 0.0
    return (wave / peak).astype(np.float32) if peak > 0 else wave.astype(np.float32)


def thump(hertz: float, seconds: float) -> np.ndarray:
    """A short low knock: a sine that starts at once and dies away."""
    t = np.arange(int(RATE * seconds)) / RATE
    return (np.sin(2 * np.pi * hertz * t) * np.exp(-t / (seconds / 4.0))).astype(np.float32)


#: the knocks for what has no recording of its own (a hit's sound is a gun's, not something to feel)
WAVES = {'hit': thump(170.0, 0.035), 'multi_hit': thump(150.0, 0.06), 'melee': thump(70.0, 0.11)}


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
