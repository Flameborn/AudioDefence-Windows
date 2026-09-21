"""Build the OpenAL Soft HRTF (.mhr) that reproduces the original binaural panner.

Source data: ``analysis/data/embedded_hrtf.dat`` (tools/extract_hrtf.py), the IRCAM 1050 set embedded in the
binary and loaded by the MemFile-based reader at 0x1000f4c58.

How the original renders a spatialised sound (``csl::BinauralPanner::nextBuffer`` 0x1000f308c), one panner
per S3DSound, 256-frame buffers:

* The loader keeps only the directions whose elevation is within +-0.1 rad (0x1000f5054..0x1000f5080),
  i.e. the 24 horizontal IRCAM directions, 15 degrees apart.  Each direction holds, per ear, two blocks
  of 256 complex bins read in the order A[0] B[0] A[1] B[1]; A (+0x10) feeds the left output channel,
  B (+0x18) the right one.
* ``sub_1000f3edc`` shows how blocks are made from an impulse response: block k is the forward FFT
  wrapper applied to samples [256k, 256k+256) zero-padded to 512.
* Per buffer: X = forward wrapper of the new 256 samples (zero-padded to 512), stored in a ring of
  block slots together with the direction index (0x1000f3298, 0x1000f3350).  The loop 0x1000f337c..
  0x1000f3444 walks the slots from the current one (block 0) to the previous one (block 1) and calls
  ``vDSP_zvmul`` (0x1000f3404 left, 0x1000f3428 right) into the SAME output buffers (+0x260 / +0x268) each
  time - zvmul writes C = A*B, it does not accumulate - so only the last product survives:
  output spectrum = X_prev * block1(dir_prev).  Block 0 (A[0]/B[0]) is computed and discarded.  The
  inverse wrapper turns it into 512 samples, the first 256 plus the tail saved last buffer are scaled by
  1/256 (vDSP_vasm 0x1000f34f8) and multiplied by the front gain into the output (0x1000f3540), the rest is
  saved as the next tail (0x1000f3580).
* ``csl::ACCFFT_Wrapper::vfunc_2`` 0x1000eeeb4: vDSP_ctoz (odd/even packing) + vDSP_fft_zrip - Accelerate's
  *real* FFT, whose forward+inverse round trip scales by 2N - with the imaginary part negated after the
  forward transform and before the inverse one.
* The source direction is the unit vector of the S3D position with y negated (0x1000f31bc), matched to
  the nearest HRTF point (``sub_1000f586c``); the index moves at most one step per buffer.  IRCAM azimuth
  runs counter-clockwise, so azimuth 90 is the left ear.
* A front-hemisphere gain ``g = 1 + 0.5*(0.5 + 0.5*sin((0.5 - y) * pi))`` (1 .. 1.5) multiplies the
  output when x > 0 (0x1000f31d8..0x1000f320c).  That gain is applied by the port's S3DEngine, not here.

This script models that pipeline exactly for a static direction (it is linear and time-invariant: an
impulse anywhere in the buffer gives the same response), extracts the effective impulse response of each
ear for the 24 directions, converts it to minimum phase + onset delay, and writes an OpenAL Soft
"MinPHR03" file whose horizontal ring repeats each direction over its +-7.5 degree sector so OpenAL's
interpolation reproduces the original's nearest-direction selection.  ``--verify`` renders noise through
OpenAL Soft (loopback device) with the new file and compares ear levels and delays with the model.

    py tools/build_hrtf.py [--verify]
"""
from __future__ import annotations

import argparse
import os
import struct
import sys

import numpy as np

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

BLOB = os.path.join(ROOT, 'analysis', 'data', 'embedded_hrtf.dat')
OUT_DIR = os.path.join(ROOT, 'assets', 'hrtf')
MHR_NAME = 'audiodefence_ircam1050'
RATE = 44100
IR_LEN = 128                 # OpenAL Soft HrirLength
REPEAT = 9                   # MHR entries per original 15-degree direction on the horizontal ring
FRAMES = 256


# ----------------------------------------------------------------------------- blob
def load_blob(path: str = BLOB):
    raw = open(path, 'rb').read()
    nl = raw.index(b'\n')
    fields = raw[:nl].decode().split('\t')
    ndirs, fft_size, bins, nblocks = (int(v) for v in fields[1:5])
    pos = nl + 1
    dirs = []
    for _ in range(ndirs):
        end = raw.index(b'\n', pos)
        az, el = raw[pos:end].decode().split('\t')
        dirs.append((int(az), int(el)))
        pos = end + 1
    if raw[pos:pos + 1] == b'\n':
        pos += 1
    count = ndirs * 2 * nblocks * bins * 2
    data = np.frombuffer(raw[pos:pos + count * 4], dtype='<f4').astype(np.float64)
    data = data.reshape(ndirs, 2 * nblocks, bins, 2)
    cplx = data[..., 0] + 1j * data[..., 1]
    # read order per block index i: +0x10[i] (left) then +0x18[i] (right)
    left = cplx[:, 0::2]
    right = cplx[:, 1::2]
    assert fft_size == 2 * bins and nblocks == 2
    return dirs, left, right


# ----------------------------------------------------------------------------- CSL model
def _fwd(buf512: np.ndarray) -> np.ndarray:
    """ACCFFT_Wrapper, forward direction: real FFT (x2 scale), then imag negated; 256 bins kept."""
    return np.conj(2.0 * np.fft.fft(buf512)[:256])


def _inv(bins: np.ndarray) -> np.ndarray:
    """ACCFFT_Wrapper, inverse direction: imag negated, unnormalised real inverse FFT -> 512 samples."""
    y = np.conj(bins)
    full = np.zeros(512, complex)
    full[:256] = y
    full[257:] = np.conj(y[1:])[::-1]
    return (np.fft.ifft(full) * 512).real


def csl_render(x: np.ndarray, blocks: np.ndarray) -> np.ndarray:
    """One ear of BinauralPanner::nextBuffer for a fixed HRTF (blocks[0], blocks[1]).

    The X_now * blocks[0] product is overwritten by X_prev * blocks[1] (see the module docstring)."""
    n = len(x) // FRAMES
    out = np.zeros(n * FRAMES)
    prev = np.zeros(256, complex)
    tail = np.zeros(FRAMES)
    for f in range(n):
        buf = np.zeros(512)
        buf[:FRAMES] = x[f * FRAMES:(f + 1) * FRAMES]
        cur = _fwd(buf)
        y = _inv(prev * blocks[1])
        out[f * FRAMES:(f + 1) * FRAMES] = (y[:FRAMES] + tail) / FRAMES
        tail = y[FRAMES:].copy()
        prev = cur
    return out


def effective_ir(blocks: np.ndarray) -> np.ndarray:
    x = np.zeros(FRAMES * 8)
    x[FRAMES * 2] = 1.0
    y = csl_render(x, blocks)
    return y[FRAMES * 2:FRAMES * 2 + 1024]


# ----------------------------------------------------------------------------- MHR conversion
def minimum_phase(ir: np.ndarray, nfft: int = 8192) -> np.ndarray:
    mag = np.abs(np.fft.fft(ir, nfft))
    logmag = np.log(np.maximum(mag, 1e-9))
    cep = np.fft.ifft(logmag).real
    fold = np.zeros(nfft)
    fold[0] = cep[0]
    fold[1:nfft // 2] = 2 * cep[1:nfft // 2]
    fold[nfft // 2] = cep[nfft // 2]
    return np.fft.ifft(np.exp(np.fft.fft(fold))).real


def onset_delay(ir: np.ndarray, mp: np.ndarray) -> float:
    """Delay (samples, quarter-sample resolution) aligning the min-phase response with the original."""
    up = 4
    n = len(ir)
    spec_ir = np.fft.rfft(ir, n * up)
    spec_mp = np.fft.rfft(mp[:n], n * up)
    xc = np.fft.irfft(spec_ir * np.conj(spec_mp), n * up * 2)
    lag = int(np.argmax(xc[:n * up]))
    return lag / up


def build_set():
    dirs, left, right = load_blob()
    horiz = sorted((az, i) for i, (az, el) in enumerate(dirs) if el == 0)
    assert [a for a, _ in horiz] == list(range(0, 360, 15)), horiz
    table = {}
    for az, i in horiz:
        irs = [effective_ir(left[i]), effective_ir(right[i])]
        mps = [minimum_phase(ir) for ir in irs]
        onsets = [onset_delay(ir, mp) for ir, mp in zip(irs, mps)]
        # The broadband interaural lag of the original responses is what carries the direction; the
        # minimum-phase conversion drops the excess phase, so the delay pair is set to restore that lag
        # (measured on the right ear relative to the left, quarter-sample resolution) around the mean onset.
        target = fine_lag(irs[1], irs[0])
        residual = fine_lag(mps[1][:IR_LEN], mps[0][:IR_LEN])
        diff = target - residual
        mean = (onsets[0] + onsets[1]) / 2
        delays = [mean - diff / 2, mean + diff / 2]
        table[az] = [(irs[e], mps[e][:IR_LEN].copy(), delays[e]) for e in (0, 1)]
    return table


def fine_lag(a: np.ndarray, b: np.ndarray, maxlag: int = 80, up: int = 4) -> float:
    """Samples (quarter-sample grid) by which a lags b, from the upsampled cross-correlation."""
    n = max(len(a), len(b))
    fa = np.fft.rfft(a, n)
    fb = np.fft.rfft(b, n)
    xc = np.fft.irfft(fa * np.conj(fb), n * up)
    m = maxlag * up
    lags = np.r_[0:m + 1, -m:0]
    vals = np.r_[xc[0:m + 1], xc[n * up - m:n * up]]
    return float(lags[int(np.argmax(vals))]) / up


def write_mhr(table, path: str) -> dict:
    base = min(e[2] for ears in table.values() for e in ears)
    # onset_delay works on a quarter-sample grid; keep a little pre-roll so no delay goes negative
    fade = np.ones(IR_LEN)
    fade[-16:] = np.cos(np.linspace(0, np.pi / 2, 16)) ** 2
    entries = {}
    for az, ears in table.items():
        coeffs = []
        delays = []
        for ir, mp, d in ears:
            coeffs.append(mp * fade)
            delays.append(int(round((d - base) * 4)))
        entries[az] = (coeffs, delays)
    maxd = max(max(d) for _, d in entries.values())
    if maxd > 255:
        raise SystemExit(f'delay {maxd / 4} samples exceeds the MHR limit')

    peak = max(np.max(np.abs(c)) for cs, _ in entries.values() for c in cs)
    if peak >= 1.0:
        raise SystemExit(f'coefficient peak {peak} does not fit 24-bit')

    def ring(count_per_dir: int):
        """IRCAM azimuth for each clockwise MHR index on a ring of 24*count_per_dir entries."""
        n = 24 * count_per_dir
        out = []
        for k in range(n):
            cw = 360.0 * k / n
            ircam = (360.0 - cw) % 360.0
            out.append(int(round(ircam / 15.0)) % 24 * 15)
        return out

    ev_az_counts = [1, 24, 24 * REPEAT, 24, 1]         # elevations -90, -45, 0, 45, 90
    rings = [[0], ring(1), ring(REPEAT), ring(1), [0]]
    with open(path, 'wb') as fh:
        fh.write(b'MinPHR03')
        fh.write(struct.pack('<IBBB', RATE, 1, IR_LEN, 1))
        fh.write(struct.pack('<HB', 1950, len(ev_az_counts)))
        fh.write(bytes(ev_az_counts))
        order = [az for r in rings for az in r]
        for az in order:
            cl, cr = entries[az][0]
            inter = np.empty(IR_LEN * 2)
            inter[0::2] = cl
            inter[1::2] = cr
            q = np.clip(np.round(inter * 8388608.0), -8388608, 8388607).astype('<i4')
            b = q.tobytes()
            fh.write(b''.join(b[i:i + 3] for i in range(0, len(b), 4)))
        for az in order:
            dl, dr = entries[az][1]
            fh.write(bytes([dl, dr]))
    return {'base_delay': base, 'entries': len(order), 'peak': peak}


# ----------------------------------------------------------------------------- verification
def verify(table, mhr_path: str) -> bool:
    from audiodefence.s3d import openal as oal
    from audiodefence.s3d.device import write_alsoft_config
    conf = write_alsoft_config()
    os.environ['ALSOFT_CONF'] = conf
    al = oal.AL()
    dev = al.loopback_open()
    names_attrs = oal.attr_list({oal.ALC_FORMAT_CHANNELS_SOFT: oal.ALC_STEREO_SOFT,
                                 oal.ALC_FORMAT_TYPE_SOFT: oal.ALC_FLOAT_SOFT,
                                 oal.ALC_FREQUENCY: RATE, oal.ALC_HRTF_SOFT: 1})
    ctx = al.alcCreateContext(dev, names_attrs)
    al.alcMakeContextCurrent(ctx)
    names = al.hrtf_names(dev)
    if MHR_NAME not in names:
        print('HRTF not found by OpenAL; available:', names)
        return False
    al.reset_device(dev, [oal.ALC_FORMAT_CHANNELS_SOFT, oal.ALC_STEREO_SOFT, oal.ALC_FORMAT_TYPE_SOFT,
                          oal.ALC_FLOAT_SOFT, oal.ALC_FREQUENCY, RATE, oal.ALC_HRTF_SOFT, 1,
                          oal.ALC_HRTF_ID_SOFT, names.index(MHR_NAME)])
    status = al.get_int(dev, oal.ALC_HRTF_STATUS_SOFT)
    print('HRTF status', status, 'using', MHR_NAME)
    rng = np.random.default_rng(7)
    noise = rng.standard_normal(FRAMES * 200).astype(np.float32) * 0.1
    buf = al.gen('alGenBuffers')
    al.alBufferData(buf, oal.AL_FORMAT_MONO_FLOAT32, noise.ctypes.data, noise.nbytes, RATE)
    src = al.gen('alGenSources')
    al.alSourcei(src, oal.AL_BUFFER, buf)
    al.alSourcei(src, oal.AL_SOURCE_RELATIVE, 1)
    al.alSourcef(src, oal.AL_ROLLOFF_FACTOR, 0.0)
    al.check('verify setup')
    ok = True
    print(' az   model L/R dB     openal L/R dB    model ITD  openal ITD')
    for az in range(0, 360, 15):
        rad = np.radians(az)
        # IRCAM azimuth is counter-clockwise (left positive); OpenAL +x is right, -z is front
        al.alSource3f(src, oal.AL_POSITION, float(-np.sin(rad)), 0.0, float(-np.cos(rad)))
        al.alSourcePlay(src)
        out = np.frombuffer(al.loopback_render(dev, len(noise)), dtype=np.float32).reshape(-1, 2)
        al.alSourceStop(src)
        x = noise.astype(np.float64)
        seg = slice(4096, len(noise) - 4096)
        model = [csl_render(x, blk)[seg] for blk in _blocks_for(az)]
        oa = [out[seg, 0].astype(np.float64), out[seg, 1].astype(np.float64)]
        xr = x[seg]
        mdb = [20 * np.log10(np.sqrt((m ** 2).mean() / (xr ** 2).mean())) for m in model]
        odb = [20 * np.log10(np.sqrt((o ** 2).mean() / (xr ** 2).mean())) for o in oa]
        mitd = _lag(model[1], model[0])
        oitd = _lag(oa[1], oa[0])
        bad = max(abs(mdb[0] - odb[0]), abs(mdb[1] - odb[1])) > 1.0 or abs(mitd - oitd) > 2
        ok &= not bad
        print(f'{az:3d}  {mdb[0]:6.2f} {mdb[1]:6.2f}    {odb[0]:6.2f} {odb[1]:6.2f}      {mitd:5d}      {oitd:5d}'
              f'{"   <-- mismatch" if bad else ""}')
    al.alcMakeContextCurrent(None)
    al.alcDestroyContext(ctx)
    al.alcCloseDevice(dev)
    return ok


_BLOB_CACHE = None


def _blocks_for(az: int):
    global _BLOB_CACHE
    if _BLOB_CACHE is None:
        _BLOB_CACHE = load_blob()
    dirs, left, right = _BLOB_CACHE
    i = dirs.index((az, 0))
    return left[i], right[i]


def _lag(a: np.ndarray, b: np.ndarray, maxlag: int = 80) -> int:
    """Samples by which a lags b."""
    n = len(a)
    fa = np.fft.rfft(a)
    fb = np.fft.rfft(b)
    xc = np.fft.irfft(fa * np.conj(fb), n)
    lags = np.r_[0:maxlag + 1, -maxlag:0]
    vals = np.r_[xc[0:maxlag + 1], xc[n - maxlag:n]]
    return int(lags[int(np.argmax(vals))])


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument('--verify', action='store_true')
    args = ap.parse_args()
    table = build_set()
    os.makedirs(OUT_DIR, exist_ok=True)
    path = os.path.join(OUT_DIR, MHR_NAME + '.mhr')
    info = write_mhr(table, path)
    print(f'wrote {path}: {info}')
    for az in (0, 30, 90, 180, 270):
        (irl, _, dl), (irr, _, dr) = table[az]
        el, er = (irl ** 2).sum(), (irr ** 2).sum()
        print(f'  az {az:3d}: ILD {10 * np.log10(el / er):6.2f} dB  delays L {dl - info["base_delay"]:.2f} '
              f'R {dr - info["base_delay"]:.2f}')
    if args.verify:
        return 0 if verify(table, path) else 1
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
