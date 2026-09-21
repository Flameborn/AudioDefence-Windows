"""Extract the HRTF database embedded in the Papa Engine (csl) inside the Audio Defence binary.

The engine's `MemFile::fgets` / `MemFile::fread` read from a byte blob in __TEXT,__const when no HRTF path
is configured (`+[S3DEngine setHRTFPath:]` is never called by the game). This tool finds the blob address
(the `adr` in MemFile::fgets) and its length (the constant loaded just before) by disassembling that
function, then writes the blob and a short description of its header.

Usage:
    py tools/extract_hrtf.py analysis/bin/audiodefence_arm64 [--out analysis/data/embedded_hrtf.dat]
"""
import os
import sys

from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
from capstone.arm64 import ARM64_OP_IMM, ARM64_OP_MEM

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from macho import MachO64  # noqa: E402


def find_memfile_fgets(m):
    for s in m.symbols:
        if s['name'] == '__ZN7MemFile5fgetsEPciP7__sFILE' and s['value']:
            return s['value']
    raise SystemExit('MemFile::fgets symbol not found')


def locate_blob(m):
    fn = find_memfile_fgets(m)
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    md.detail = True
    page = {}
    blob = size = None
    for ins in md.disasm(m.read(fn, 112), fn):
        if ins.mnemonic == 'adrp':
            page[ins.operands[0].reg] = ins.operands[1].imm
        elif ins.mnemonic == 'add' and ins.operands[1].reg in page and ins.operands[2].type == ARM64_OP_IMM:
            page[ins.operands[0].reg] = page[ins.operands[1].reg] + ins.operands[2].imm
        elif ins.mnemonic == 'ldr' and ins.operands[1].type == ARM64_OP_MEM and ins.operands[1].mem.base in page:
            size = m.u32(page[ins.operands[1].mem.base] + ins.operands[1].mem.disp)
        elif ins.mnemonic == 'adr':
            blob = ins.operands[1].imm
    if blob is None or size is None:
        raise SystemExit('could not decode MemFile::fgets')
    return blob, size


def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__)
        return
    out = args[args.index('--out') + 1] if '--out' in args else os.path.join('analysis', 'data', 'embedded_hrtf.dat')
    m = MachO64(args[0])
    addr, size = locate_blob(m)
    data = m.read(addr, size)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, 'wb') as f:
        f.write(data)
    first_line = data.split(b'\n', 1)[0]
    print('embedded HRTF database: address 0x%x, %d bytes -> %s' % (addr, size, out))
    print('header line: %r' % first_line[:120])


if __name__ == '__main__':
    main()
