"""Mach-O reader for the Audio Defence binary (no third-party dependencies).

Handles:
  * fat/universal containers (slice extraction)
  * 64-bit Mach-O load commands: segments/sections, symtab, dysymtab,
    dyld_info (rebase + bind + lazy bind + export trie), function starts,
    dylibs, encryption info, entry point, UUID, versions
  * virtual address <-> file offset translation and typed readers

Usage:
    py tools/macho.py extract <fat-binary> <outdir>
    py tools/macho.py info <thin-binary>
"""
import os
import struct
import sys

FAT_MAGIC = 0xCAFEBABE
MH_MAGIC_64 = 0xFEEDFACF
MH_MAGIC = 0xFEEDFACE

CPU_NAMES = {12: 'armv7', 0x0100000C: 'arm64', 7: 'i386', 0x01000007: 'x86_64'}

LC_SEGMENT = 0x1
LC_SYMTAB = 0x2
LC_DYSYMTAB = 0xB
LC_LOAD_DYLIB = 0xC
LC_ID_DYLIB = 0xD
LC_LOAD_DYLINKER = 0xE
LC_LOAD_WEAK_DYLIB = 0x80000018
LC_SEGMENT_64 = 0x19
LC_UUID = 0x1B
LC_CODE_SIGNATURE = 0x1D
LC_REEXPORT_DYLIB = 0x8000001F
LC_ENCRYPTION_INFO = 0x21
LC_DYLD_INFO = 0x22
LC_DYLD_INFO_ONLY = 0x80000022
LC_VERSION_MIN_IPHONEOS = 0x25
LC_FUNCTION_STARTS = 0x26
LC_MAIN = 0x80000028
LC_DATA_IN_CODE = 0x29
LC_SOURCE_VERSION = 0x2A
LC_ENCRYPTION_INFO_64 = 0x2C

DYLIB_CMDS = (LC_LOAD_DYLIB, LC_LOAD_WEAK_DYLIB, LC_REEXPORT_DYLIB)


def fat_slices(data):
    """Return [(cpu_name, offset, size)] for a fat binary, or [] if thin."""
    magic = struct.unpack('>I', data[:4])[0]
    if magic != FAT_MAGIC:
        return []
    n = struct.unpack('>I', data[4:8])[0]
    out = []
    for i in range(n):
        cpu, sub, off, size, align = struct.unpack('>iiIII', data[8 + i * 20:28 + i * 20])
        out.append((CPU_NAMES.get(cpu, 'cpu%x' % cpu), off, size))
    return out


def uleb(buf, p):
    result = shift = 0
    while True:
        b = buf[p]
        p += 1
        result |= (b & 0x7F) << shift
        shift += 7
        if not b & 0x80:
            return result, p


def sleb(buf, p):
    result = shift = 0
    while True:
        b = buf[p]
        p += 1
        result |= (b & 0x7F) << shift
        shift += 7
        if not b & 0x80:
            if b & 0x40:
                result -= 1 << shift
            return result, p


class Section:
    __slots__ = ('seg', 'name', 'addr', 'size', 'offset', 'flags', 'reserved1', 'reserved2')

    def __init__(self, **kw):
        for k, v in kw.items():
            setattr(self, k, v)

    @property
    def end(self):
        return self.addr + self.size

    @property
    def type(self):
        return self.flags & 0xFF

    def __repr__(self):
        return '<%s,%s 0x%x-0x%x>' % (self.seg, self.name, self.addr, self.end)


class MachO64:
    def __init__(self, path_or_bytes):
        if isinstance(path_or_bytes, (bytes, bytearray)):
            self.data = bytes(path_or_bytes)
            self.path = None
        else:
            self.path = path_or_bytes
            with open(path_or_bytes, 'rb') as f:
                self.data = f.read()
        d = self.data
        magic, cputype, cpusub, filetype, ncmds, sizeofcmds, flags, _ = struct.unpack('<IiiIIIII', d[:32])
        if magic != MH_MAGIC_64:
            raise ValueError('not a 64-bit Mach-O (magic %08x)' % magic)
        self.cputype = cputype
        self.filetype = filetype
        self.flags = flags
        self.segments = []
        self.sections = []
        self.dylibs = []
        self.symtab = None
        self.dysymtab = None
        self.dyld_info = None
        self.function_starts_cmd = None
        self.data_in_code_cmd = None
        self.encryption = None
        self.entryoff = None
        self.uuid = None
        self.min_os = None
        self.source_version = None
        off = 32
        for _ in range(ncmds):
            cmd, cmdsize = struct.unpack('<II', d[off:off + 8])
            body = d[off:off + cmdsize]
            if cmd == LC_SEGMENT_64:
                segname = body[8:24].rstrip(b'\0').decode()
                vmaddr, vmsize, fileoff, filesize, maxprot, initprot, nsects, sflags = \
                    struct.unpack('<QQQQiiII', body[24:72])
                self.segments.append(dict(name=segname, vmaddr=vmaddr, vmsize=vmsize,
                                          fileoff=fileoff, filesize=filesize,
                                          maxprot=maxprot, initprot=initprot))
                so = 72
                for _s in range(nsects):
                    sname = body[so:so + 16].rstrip(b'\0').decode()
                    sgname = body[so + 16:so + 32].rstrip(b'\0').decode()
                    addr, size, soff, align, reloff, nreloc, sfl, r1, r2, r3 = \
                        struct.unpack('<QQIIIIIIII', body[so + 32:so + 80])
                    self.sections.append(Section(seg=sgname, name=sname, addr=addr, size=size,
                                                 offset=soff, flags=sfl, reserved1=r1, reserved2=r2))
                    so += 80
            elif cmd == LC_SYMTAB:
                self.symtab = struct.unpack('<IIII', body[8:24])
            elif cmd == LC_DYSYMTAB:
                self.dysymtab = struct.unpack('<18I', body[8:80])
            elif cmd in (LC_DYLD_INFO, LC_DYLD_INFO_ONLY):
                self.dyld_info = struct.unpack('<10I', body[8:48])
            elif cmd == LC_FUNCTION_STARTS:
                self.function_starts_cmd = struct.unpack('<II', body[8:16])
            elif cmd == LC_DATA_IN_CODE:
                self.data_in_code_cmd = struct.unpack('<II', body[8:16])
            elif cmd in DYLIB_CMDS:
                noff = struct.unpack('<I', body[8:12])[0]
                self.dylibs.append(body[noff:].split(b'\0')[0].decode())
            elif cmd == LC_ENCRYPTION_INFO_64:
                self.encryption = struct.unpack('<III', body[8:20])
            elif cmd == LC_MAIN:
                self.entryoff = struct.unpack('<Q', body[8:16])[0]
            elif cmd == LC_UUID:
                self.uuid = body[8:24].hex()
            elif cmd == LC_VERSION_MIN_IPHONEOS:
                v, sdk = struct.unpack('<II', body[8:16])
                self.min_os = ('%d.%d.%d' % (v >> 16, (v >> 8) & 0xFF, v & 0xFF),
                               '%d.%d.%d' % (sdk >> 16, (sdk >> 8) & 0xFF, sdk & 0xFF))
            elif cmd == LC_SOURCE_VERSION:
                self.source_version = struct.unpack('<Q', body[8:16])[0]
            off += cmdsize

        self._sec_by_name = {}
        for s in self.sections:
            self._sec_by_name.setdefault(s.name, s)
        self._symbols = None
        self._binds = None
        self._stubs = None
        self._exports = None

    # ------------------------------------------------------------ addressing
    def section(self, name):
        return self._sec_by_name.get(name)

    def section_at(self, vm):
        for s in self.sections:
            if s.addr <= vm < s.end:
                return s
        return None

    def segment_at(self, vm):
        for g in self.segments:
            if g['vmaddr'] <= vm < g['vmaddr'] + g['vmsize']:
                return g
        return None

    @property
    def base(self):
        for g in self.segments:
            if g['name'] == '__TEXT':
                return g['vmaddr']
        return 0

    def v2f(self, vm):
        for g in self.segments:
            if g['vmaddr'] <= vm < g['vmaddr'] + g['filesize']:
                return g['fileoff'] + (vm - g['vmaddr'])
        return None

    def read(self, vm, n):
        o = self.v2f(vm)
        if o is None:
            return None
        return self.data[o:o + n]

    def u8(self, vm):
        b = self.read(vm, 1)
        return b[0] if b else None

    def u32(self, vm):
        b = self.read(vm, 4)
        return struct.unpack('<I', b)[0] if b and len(b) == 4 else None

    def i32(self, vm):
        b = self.read(vm, 4)
        return struct.unpack('<i', b)[0] if b and len(b) == 4 else None

    def u64(self, vm):
        b = self.read(vm, 8)
        return struct.unpack('<Q', b)[0] if b and len(b) == 8 else None

    def f32(self, vm):
        b = self.read(vm, 4)
        return struct.unpack('<f', b)[0] if b and len(b) == 4 else None

    def f64(self, vm):
        b = self.read(vm, 8)
        return struct.unpack('<d', b)[0] if b and len(b) == 8 else None

    def cstring(self, vm, limit=4096):
        o = self.v2f(vm) if vm else None
        if o is None:
            return None
        e = self.data.find(b'\0', o, o + limit)
        if e < 0:
            return None
        return self.data[o:e].decode('utf-8', 'replace')

    # ------------------------------------------------------------ symbols
    @property
    def symbols(self):
        """list of dicts: name, type, sect, desc, value, index"""
        if self._symbols is None:
            self._symbols = []
            if self.symtab:
                symoff, nsyms, stroff, strsize = self.symtab
                d = self.data
                for i in range(nsyms):
                    p = symoff + i * 16
                    strx, ntype, nsect, ndesc, value = struct.unpack('<IBBHQ', d[p:p + 16])
                    e = d.index(b'\0', stroff + strx)
                    name = d[stroff + strx:e].decode('utf-8', 'replace')
                    self._symbols.append(dict(index=i, name=name, type=ntype, sect=nsect,
                                              desc=ndesc, value=value))
        return self._symbols

    def defined_symbols(self):
        """{address: name} for symbols defined in a section (N_SECT), excluding debug stabs."""
        out = {}
        for s in self.symbols:
            if s['type'] & 0xE0:   # N_STAB
                continue
            if (s['type'] & 0x0E) == 0x0E and s['value']:
                out.setdefault(s['value'], s['name'])
        return out

    def indirect_symbol(self, i):
        indirectsymoff = self.dysymtab[12]
        idx = struct.unpack('<I', self.data[indirectsymoff + i * 4:indirectsymoff + i * 4 + 4])[0]
        if idx & 0xC0000000:
            return 'INDIRECT_SYMBOL_LOCAL' if idx & 0x80000000 else 'INDIRECT_SYMBOL_ABS'
        return self.symbols[idx]['name']

    @property
    def stubs(self):
        """{address of stub / GOT / lazy pointer: imported symbol name}"""
        if self._stubs is None:
            m = {}
            for s in self.sections:
                t = s.type
                if t == 0x8:            # S_SYMBOL_STUBS
                    esz = s.reserved2 or 12
                elif t in (0x6, 0x7, 0x10):   # non-lazy / lazy pointers, thread-local variable pointers
                    esz = 8
                else:
                    continue
                for i in range(s.size // esz):
                    m[s.addr + i * esz] = self.indirect_symbol(s.reserved1 + i)
            self._stubs = m
        return self._stubs

    # ------------------------------------------------------------ dyld info
    @property
    def binds(self):
        """{pointer address: (symbol name, dylib ordinal, addend, kind)}"""
        if self._binds is None:
            self._binds = {}
            if self.dyld_info:
                (rebase_off, rebase_size, bind_off, bind_size, weak_off, weak_size,
                 lazy_off, lazy_size, export_off, export_size) = self.dyld_info
                self._run_bind(bind_off, bind_size, 'bind')
                self._run_bind(weak_off, weak_size, 'weak')
                self._run_bind(lazy_off, lazy_size, 'lazy')
        return self._binds

    def _run_bind(self, off, size, kind):
        if not size:
            return
        buf = self.data[off:off + size]
        p = 0
        ordinal = 0
        sym = None
        addend = 0
        seg = 0
        segoff = 0
        ptr = 8
        segs = self.segments

        def bind_here():
            addr = segs[seg]['vmaddr'] + segoff
            self._binds[addr] = (sym, ordinal, addend, kind)

        while p < len(buf):
            b = buf[p]
            p += 1
            op = b & 0xF0
            imm = b & 0x0F
            if op == 0x00:          # DONE
                if kind != 'lazy':
                    break
            elif op == 0x10:        # SET_DYLIB_ORDINAL_IMM
                ordinal = imm
            elif op == 0x20:        # SET_DYLIB_ORDINAL_ULEB
                ordinal, p = uleb(buf, p)
            elif op == 0x30:        # SET_DYLIB_SPECIAL_IMM
                ordinal = -imm if imm else 0
            elif op == 0x40:        # SET_SYMBOL_TRAILING_FLAGS_IMM
                e = buf.index(b'\0', p)
                sym = buf[p:e].decode('utf-8', 'replace')
                p = e + 1
            elif op == 0x50:        # SET_TYPE_IMM
                pass
            elif op == 0x60:        # SET_ADDEND_SLEB
                addend, p = sleb(buf, p)
            elif op == 0x70:        # SET_SEGMENT_AND_OFFSET_ULEB
                seg = imm
                segoff, p = uleb(buf, p)
            elif op == 0x80:        # ADD_ADDR_ULEB
                v, p = uleb(buf, p)
                segoff = (segoff + v) & 0xFFFFFFFFFFFFFFFF
            elif op == 0x90:        # DO_BIND
                bind_here()
                segoff += ptr
            elif op == 0xA0:        # DO_BIND_ADD_ADDR_ULEB
                bind_here()
                v, p = uleb(buf, p)
                segoff = (segoff + ptr + v) & 0xFFFFFFFFFFFFFFFF
            elif op == 0xB0:        # DO_BIND_ADD_ADDR_IMM_SCALED
                bind_here()
                segoff += imm * ptr + ptr
            elif op == 0xC0:        # DO_BIND_ULEB_TIMES_SKIPPING_ULEB
                count, p = uleb(buf, p)
                skip, p = uleb(buf, p)
                for _ in range(count):
                    bind_here()
                    segoff += skip + ptr
            else:
                break

    def dylib_name(self, ordinal):
        if ordinal > 0 and ordinal <= len(self.dylibs):
            return self.dylibs[ordinal - 1]
        return {0: 'self', -1: 'main-executable', -2: 'flat-lookup'}.get(ordinal, '?')

    @property
    def exports(self):
        """{address: exported symbol name} from the export trie."""
        if self._exports is None:
            self._exports = {}
            if self.dyld_info and self.dyld_info[9]:
                off, size = self.dyld_info[8], self.dyld_info[9]
                buf = self.data[off:off + size]
                stack = [(0, '')]
                seen = set()
                while stack:
                    node, prefix = stack.pop()
                    if node in seen or node >= len(buf):
                        continue
                    seen.add(node)
                    tsize, p = uleb(buf, node)
                    if tsize:
                        flags, q = uleb(buf, p)
                        if not flags & 0x08:   # not re-export
                            addr, q = uleb(buf, q)
                            self._exports[self.base + addr] = prefix
                    p += tsize
                    nchild = buf[p]
                    p += 1
                    for _ in range(nchild):
                        e = buf.index(b'\0', p)
                        label = buf[p:e].decode('utf-8', 'replace')
                        p = e + 1
                        child, p = uleb(buf, p)
                        stack.append((child, prefix + label))
        return self._exports

    def function_starts(self):
        if not self.function_starts_cmd:
            return []
        off, size = self.function_starts_cmd
        buf = self.data[off:off + size]
        addr = self.base
        out = []
        p = 0
        while p < len(buf):
            v, p = uleb(buf, p)
            if v == 0:
                break
            addr += v
            out.append(addr)
        return out

    def data_in_code(self):
        """[(vmaddr, length, kind)] — jump tables/literal islands embedded in __text."""
        if not self.data_in_code_cmd:
            return []
        off, size = self.data_in_code_cmd
        out = []
        for i in range(size // 8):
            o, ln, kind = struct.unpack('<IHH', self.data[off + i * 8:off + i * 8 + 8])
            out.append((self.base + o, ln, kind))
        return out


def cmd_extract(src, outdir):
    with open(src, 'rb') as f:
        data = f.read()
    slices = fat_slices(data)
    os.makedirs(outdir, exist_ok=True)
    stem = os.path.basename(src)
    if not slices:
        print('thin binary; nothing to extract')
        return
    for cpu, off, size in slices:
        out = os.path.join(outdir, '%s_%s' % (stem, cpu))
        with open(out, 'wb') as f:
            f.write(data[off:off + size])
        print('%-6s offset=0x%x size=%d -> %s' % (cpu, off, size, out))


def cmd_info(path):
    with open(path, 'rb') as f:
        data = f.read()
    magic = struct.unpack('<I', data[:4])[0]
    if magic == MH_MAGIC:
        # 32-bit slice: only report the encryption state, which decides whether it is usable
        ncmds = struct.unpack('<I', data[16:20])[0]
        off = 28
        for _ in range(ncmds):
            cmd, cmdsize = struct.unpack('<II', data[off:off + 8])
            if cmd == LC_ENCRYPTION_INFO:
                print('32-bit slice: cryptoff=0x%x cryptsize=0x%x cryptid=%d' %
                      struct.unpack('<III', data[off + 8:off + 20]))
            off += cmdsize
        return
    m = MachO64(data)
    print('cpu=%s filetype=%d flags=0x%x uuid=%s' % (CPU_NAMES.get(m.cputype), m.filetype, m.flags, m.uuid))
    print('min iOS / SDK: %s' % (m.min_os,))
    if m.encryption:
        print('encryption: cryptoff=0x%x cryptsize=0x%x cryptid=%d' % m.encryption)
    if m.entryoff is not None:
        print('entry (LC_MAIN) = 0x%x' % (m.base + m.entryoff))
    for g in m.segments:
        print('SEG %-16s vm=0x%09x vmsize=0x%08x fileoff=0x%08x filesize=0x%08x' %
              (g['name'], g['vmaddr'], g['vmsize'], g['fileoff'], g['filesize']))
    for s in m.sections:
        print('    %-16s %-22s 0x%09x size=0x%08x type=0x%02x' % (s.seg, s.name, s.addr, s.size, s.type))
    print('symbols: %d  defined: %d  exports: %d  binds: %d  function starts: %d  data-in-code: %d' %
          (len(m.symbols), len(m.defined_symbols()), len(m.exports), len(m.binds),
           len(m.function_starts()), len(m.data_in_code())))
    print('dylibs:')
    for d in m.dylibs:
        print('   ', d)


if __name__ == '__main__':
    if len(sys.argv) >= 4 and sys.argv[1] == 'extract':
        cmd_extract(sys.argv[2], sys.argv[3])
    elif len(sys.argv) >= 3 and sys.argv[1] == 'info':
        cmd_info(sys.argv[2])
    else:
        print(__doc__)
