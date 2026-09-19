"""Sample-by-sample reference model of the original reverb (csl::Stereoverb / csl::Freeverb).

audiodefence/s3d/reverb.py runs the same filter block-vectorised; this per-sample float32 version is the
check it is compared against, and prints the reverb's level and decay.  (The port first used OpenAL Soft's
EFX reverb: measured against this model it was 11 dB too loud - wet/dry -4.1 dB instead of -15.1 dB - and
started at 8 ms instead of 26 ms, which is why the Freeverb itself is now run.)

The original (recovered from the arm64 binary):

* -[S3DEngine init] 0x1000faa60: masterMixer <- dryMixer, masterMixer <- Stereoverb(wetMixer); then
  roomSize 2.2, dampening 2, wet 0, dry 0, active; then -setReverbRoomSize:1.5 -setReverbVolume:1
  -setReverbDampening:50.  A spatialized sound with sendToReverb feeds spatializer -> gainControl -> FanOut
  -> dryMixer (dryGain) and wetMixer (wetGain) (-[S3DSound ...] 0x100103fdc..0x1001044c8).
* -[S3DEngine setReverbRoomSize:] 0x1000fc79c clamps to [0.01, 2.3]; setReverbDampening: 0x1000fc818 to
  [0, 100]; setReverbVolume: 0x1000fc890 to [0, 8].
* csl::Stereoverb ctor sub_1000ed088: Splitter(input) -> two csl::Freeverb (left +0xb0, right +0xb8) -> Joiner.
  Setters: sub_1000ed4e8 room = size * 0.28 + 0.3 (comb feedback), sub_1000ed574 damp = d * 0.01 * 0.4,
  sub_1000ed600 wet level = volume, sub_1000ed674 dry level.
* csl::Freeverb init sub_1000ec864: 6 combs (tunings 1116 1188 1277 1356 1422 1491 of the 8-entry table
  0x100182010), 3 allpasses (556 441 341 of 0x100182030) with feedback 0.5, input gain 0.015.
* csl::Freeverb::nextBuffer 0x1000ece8c, per sample:
      in = x * 0.015; out = 0
      comb:    y = buf[i]; store = y * (1 - damp) + store * damp; buf[i] = in + store * room; out += y
      allpass: b = buf[i]; buf[i] = out + b * 0.5; out = b - out
  then output = out * wet + x * dry (vDSP_vsmul, vDSP_vsma).

    python tools/reverb_calibrate.py            print the model's level and decay, and check reverb.py against it
"""
from __future__ import annotations

import math
import os
import sys

import numpy as np

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

RATE = 44100
COMBS = (1116, 1188, 1277, 1356, 1422, 1491)
ALLPASSES = (556, 441, 341)


def freeverb_params(room_size: float, dampening: float, volume: float):
    """S3DEngine setters + Stereoverb setters -> (comb feedback, damp, wet)."""
    room_size = min(room_size, 2.3)
    room_size = max(room_size, 0.01)
    dampening = max(dampening, 0.0)
    dampening = min(dampening, 100.0)
    volume = max(volume, 0.0)
    volume = min(volume, 8.0)
    f32 = np.float32
    return float(f32(room_size) * f32(0.28) + f32(0.3)), float(f32(dampening) * f32(0.01) * f32(0.4)), float(volume)


def freeverb(x: np.ndarray, room: float, damp: float, wet: float, dry: float = 0.0) -> np.ndarray:
    """One csl::Freeverb channel, sample by sample in float32 as the original computes it."""
    f32 = np.float32
    room, damp1, damp2, wet, dry = f32(room), f32(damp), f32(1.0) - f32(damp), f32(wet), f32(dry)
    gain = f32(0.015)
    combs = [[np.zeros(n, dtype=np.float32), 0, f32(0.0)] for n in COMBS]
    alls = [[np.zeros(n, dtype=np.float32), 0] for n in ALLPASSES]
    out = np.zeros(len(x), dtype=np.float32)
    xs = x.astype(np.float32)
    for n in range(len(xs)):
        inp = xs[n] * gain
        acc = f32(0.0)
        for c in combs:
            buf, i, store = c
            y = buf[i]
            store = y * damp2 + store * damp1
            buf[i] = inp + store * room
            c[1] = 0 if i + 1 >= len(buf) else i + 1
            c[2] = store
            acc = acc + y
        for a in alls:
            buf, i = a
            b = buf[i]
            buf[i] = acc + b * f32(0.5)
            acc = b - acc
            a[1] = 0 if i + 1 >= len(buf) else i + 1
        out[n] = acc
    return out * wet + xs * dry


def t60(ir: np.ndarray, lo_db: float = -5.0, hi_db: float = -35.0) -> float:
    """Schroeder backward integration, T30 extrapolated to 60 dB."""
    e = np.cumsum((ir.astype(np.float64) ** 2)[::-1])[::-1]
    e = e / e[0]
    db = 10 * np.log10(np.maximum(e, 1e-30))
    i0 = int(np.argmax(db <= lo_db))
    i1 = int(np.argmax(db <= hi_db))
    if i1 <= i0:
        return float('nan')
    slope = (db[i1] - db[i0]) / ((i1 - i0) / RATE)
    return -60.0 / slope


def describe(name: str, ir: np.ndarray) -> None:
    energy = float((ir.astype(np.float64) ** 2).sum())
    onset = int(np.argmax(np.abs(ir) > np.abs(ir).max() * 1e-3))
    print(f'{name}: energy {10 * math.log10(energy):6.2f} dB  onset {onset / RATE * 1000:5.1f} ms  '
          f'T60 {t60(ir):.3f} s')


def main() -> int:
    seconds = 3.0
    imp = np.zeros(int(RATE * seconds), dtype=np.float32)
    imp[0] = 1.0
    for args in ((1.5, 50.0, 1.0),):
        room, damp, wet = freeverb_params(*args)
        print(f'original setReverbRoomSize:{args[0]} Dampening:{args[1]} Volume:{args[2]} -> room {room:.4f} '
              f'damp {damp:.4f} wet {wet}')
        ir = freeverb(imp, room, damp, wet)
        describe('  original Freeverb (wet / input)', ir)
        from audiodefence.s3d.reverb import Stereoverb
        sv = Stereoverb()
        sv.set_room_size(min(max(args[0], 0.01), 2.3))
        sv.set_dampening(args[1])
        sv.set_wet_level(wet)
        sv.set_dry_level(0.0)
        port = np.concatenate([sv.process(np.stack([imp[i:i + 700]] * 2).astype(np.float64))[0]
                               for i in range(0, len(imp), 700)])
        err = float(np.abs(port - ir).max() / np.abs(ir).max())
        print(f'  reverb.py Stereoverb: max relative difference {err:.2e} ({"ok" if err < 1e-5 else "MISMATCH"})')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
