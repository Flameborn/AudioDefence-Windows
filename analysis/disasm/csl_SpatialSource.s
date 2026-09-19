// unit csl_SpatialSource — 26 functions
//   0x1000f1748     116  csl::SpatialSource::~SpatialSource
//   0x1000f17bc      16  csl::SpatialSource::thunk_vfunc_0
//   0x1000f17cc      16  csl::SpatialSource::thunk_vfunc_0
//   0x1000f17dc      56  csl::SpatialSource::~SpatialSource/*deleting*/
//   0x1000f1814      16  csl::SpatialSource::thunk_vfunc_1
//   0x1000f1824      16  csl::SpatialSource::thunk_vfunc_1
//   0x1000f1834     120  sub_1000f1834
//   0x1000f18ac      68  sub_1000f18ac
//   0x1000f18f0      60  sub_1000f18f0
//   0x1000f192c       8  csl::SpatialSource::vfunc_14
//   0x1000f1934      44  csl::SpatialSource::vfunc_15
//   0x1000f1960      68  csl::SpatialSource::vfunc_16
//   0x1000f19a4     124  csl::SpatialSource::vfunc_17
//   0x1000f1a20     124  csl::SpatialSource::vfunc_18
//   0x1000f1a9c     128  csl::SpatialSource::vfunc_11
//   0x1000f1b1c      16  csl::SpatialSource::thunk_vfunc_2
//   0x1000f1b2c     124  csl::SpatialSource::vfunc_12
//   0x1000f1ba8     136  csl::SpatialSource::thunk_vfunc_3
//   0x1000f1c30      76  csl::SpatialSource::vfunc_5
//   0x1000f1c7c      44  csl::SpatialSource::vfunc_4
//   0x1000f1ca8       8  csl::SpatialSource::vfunc_19
//   0x1000f1cb0      60  sub_1000f1cb0
//   0x1000f1cec      80  sub_1000f1cec
//   0x1000f1d3c     152  sub_1000f1d3c
//   0x1000f1dd4     744  sub_1000f1dd4
//   0x1000f20bc     132  sub_1000f20bc

; ======================================================================
; csl::SpatialSource::~SpatialSource
; address 0x1000f1748  size 116  kind cxx
; ======================================================================
  1000f1748  stp     x20, x19, [sp, #-0x20]!
  1000f174c  stp     x29, x30, [sp, #0x10]
  1000f1750  add     x29, sp, #0x10
  1000f1754  mov     x19, x0
  1000f1758  adrp    x20, #0x1003b6000
  1000f175c  add     x20, x20, #0x620                         ; &d_1003b6620
  1000f1760  mov     x1, x20
  1000f1764  bl      sub_1000f16e4                            ; sub_1000f16e4(a0, &d_1003b6620, a2, a3)
  1000f1768  add     x0, x19, #0xb8
  1000f176c  add     x1, x20, #0x18                           ; &d_1003b6638
  1000f1770  bl      sub_1000e9c44                            ; sub_1000e9c44((a0 + 184), &d_1003b6638)
  1000f1774  add     x0, x19, #0xc0
  1000f1778  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 192))
  1000f177c  mov     x0, x19
  1000f1780  ldp     x29, x30, [sp, #0x10]
  1000f1784  ldp     x20, x19, [sp], #0x20
  1000f1788  ret
  1000f178c  mov     x8, x20
  1000f1790  mov     x20, x0
  1000f1794  add     x0, x19, #0xb8
  1000f1798  add     x1, x8, #0x18
  1000f179c  bl      sub_1000e9c44                            ; sub_1000e9c44((x19 + 184), (x8 + 24))
  1000f17a0  b       loc_1000f17a8
  1000f17a4  mov     x20, x0
loc_1000f17a8:
  1000f17a8  add     x0, x19, #0xc0
  1000f17ac  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 192))
  1000f17b0  mov     x0, x20
  1000f17b4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f17b8  bl      sub_10000b760

; ======================================================================
; csl::SpatialSource::thunk_vfunc_0
; address 0x1000f17bc  size 16  kind cxx
; ======================================================================
  1000f17bc  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000f17c0  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000f17c4  add     x0, x0, x8
  1000f17c8  b       csl::SpatialSource::~SpatialSource       ; csl::SpatialSource::~SpatialSource((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; csl::SpatialSource::thunk_vfunc_0
; address 0x1000f17cc  size 16  kind cxx
; ======================================================================
  1000f17cc  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000f17d0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000f17d4  add     x0, x0, x8
  1000f17d8  b       csl::SpatialSource::~SpatialSource       ; csl::SpatialSource::~SpatialSource((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::SpatialSource::~SpatialSource/*deleting*/
; address 0x1000f17dc  size 56  kind cxx
; ======================================================================
  1000f17dc  stp     x20, x19, [sp, #-0x20]!
  1000f17e0  stp     x29, x30, [sp, #0x10]
  1000f17e4  add     x29, sp, #0x10
  1000f17e8  mov     x19, x0
  1000f17ec  bl      csl::SpatialSource::~SpatialSource       ; csl::SpatialSource::~SpatialSource(a0, a1, a2, a3)
  1000f17f0  mov     x0, x19
  1000f17f4  ldp     x29, x30, [sp, #0x10]
  1000f17f8  ldp     x20, x19, [sp], #0x20
  1000f17fc  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f1800  mov     x20, x0
  1000f1804  mov     x0, x19
  1000f1808  bl      __ZdlPv                                  ; ZdlPv()
  1000f180c  mov     x0, x20
  1000f1810  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::SpatialSource::thunk_vfunc_1
; address 0x1000f1814  size 16  kind cxx
; ======================================================================
  1000f1814  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000f1818  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000f181c  add     x0, x0, x8
  1000f1820  b       csl::SpatialSource::~SpatialSource/*deleting*/ ; csl::SpatialSource::~SpatialSource/*deleting*/((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; csl::SpatialSource::thunk_vfunc_1
; address 0x1000f1824  size 16  kind cxx
; ======================================================================
  1000f1824  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000f1828  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000f182c  add     x0, x0, x8
  1000f1830  b       csl::SpatialSource::~SpatialSource/*deleting*/ ; csl::SpatialSource::~SpatialSource/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; sub_1000f1834
; address 0x1000f1834  size 120  kind sub
; ======================================================================
  1000f1834  stp     d11, d10, [sp, #-0x40]!
  1000f1838  stp     d9, d8, [sp, #0x10]
  1000f183c  stp     x20, x19, [sp, #0x20]
  1000f1840  stp     x29, x30, [sp, #0x30]
  1000f1844  add     x29, sp, #0x30
  1000f1848  mov     v8.16b, v2.16b
  1000f184c  mov     v9.16b, v1.16b
  1000f1850  mov     v10.16b, v0.16b
  1000f1854  mov     x19, x0
  1000f1858  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f185c  cbz     x0, loc_1000f1874                        ; if (a0[+0xa8] == 0)
  1000f1860  ldrb    w8, [x19, #0xb0]                         ; w8 = a0[+0xb0]
  1000f1864  cbz     w8, loc_1000f1874                        ; if (a0[+0xb0] == 0)
  1000f1868  bl      __ZdlPv                                  ; ZdlPv(a0[+0xa8], a1, a2, a3)
  1000f186c  str     xzr, [x19, #0xa8]                        ; a0[+0xa8] = 0
  1000f1870  strb    wzr, [x19, #0xb0]                        ; a0[+0xb0] = 0
loc_1000f1874:
  1000f1874  mov     w0, #0x10
  1000f1878  bl      __Znwm                                   ; Znwm(16)
  1000f187c  mov     w8, #3
  1000f1880  str     w8, [x0]                                 ; Znwm(16)[+0x0] = 3
  1000f1884  stp     s10, s9, [x0, #4]
  1000f1888  str     s8, [x0, #0xc]                           ; Znwm(16)[+0xc] = s8
  1000f188c  str     x0, [x19, #0xa8]                         ; a0[+0xa8] = Znwm(16)
  1000f1890  mov     w8, #1
  1000f1894  strb    w8, [x19, #0xb0]                         ; a0[+0xb0] = 1
  1000f1898  ldp     x29, x30, [sp, #0x30]
  1000f189c  ldp     x20, x19, [sp, #0x20]
  1000f18a0  ldp     d9, d8, [sp, #0x10]
  1000f18a4  ldp     d11, d10, [sp], #0x40
  1000f18a8  ret

; ======================================================================
; sub_1000f18ac
; address 0x1000f18ac  size 68  kind sub
; ======================================================================
  1000f18ac  stp     x20, x19, [sp, #-0x20]!
  1000f18b0  stp     x29, x30, [sp, #0x10]
  1000f18b4  add     x29, sp, #0x10
  1000f18b8  mov     x20, x1
  1000f18bc  mov     x19, x0
  1000f18c0  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f18c4  cbz     x0, loc_1000f18dc                        ; if (a0[+0xa8] == 0)
  1000f18c8  ldrb    w8, [x19, #0xb0]                         ; w8 = a0[+0xb0]
  1000f18cc  cbz     w8, loc_1000f18dc                        ; if (a0[+0xb0] == 0)
  1000f18d0  bl      __ZdlPv                                  ; ZdlPv(a0[+0xa8], a1, a2, a3)
  1000f18d4  str     xzr, [x19, #0xa8]                        ; a0[+0xa8] = 0
  1000f18d8  strb    wzr, [x19, #0xb0]                        ; a0[+0xb0] = 0
loc_1000f18dc:
  1000f18dc  str     x20, [x19, #0xa8]                        ; a0[+0xa8] = a1
  1000f18e0  strb    wzr, [x19, #0xb0]                        ; a0[+0xb0] = 0
  1000f18e4  ldp     x29, x30, [sp, #0x10]
  1000f18e8  ldp     x20, x19, [sp], #0x20
  1000f18ec  ret

; ======================================================================
; sub_1000f18f0
; address 0x1000f18f0  size 60  kind sub
; ======================================================================
  1000f18f0  stp     x20, x19, [sp, #-0x20]!
  1000f18f4  stp     x29, x30, [sp, #0x10]
  1000f18f8  add     x29, sp, #0x10
  1000f18fc  mov     x19, x0
  1000f1900  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f1904  cbnz    x0, loc_1000f1920                        ; if (a0[+0xa8] != 0)
  1000f1908  fmov    s0, #1.00000000
  1000f190c  movi    v1.16b, #0
  1000f1910  movi    v2.16b, #0
  1000f1914  mov     x0, x19
  1000f1918  bl      sub_1000f1834                            ; sub_1000f1834(a0, a1, a2, a3)
  1000f191c  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
loc_1000f1920:
  1000f1920  ldp     x29, x30, [sp, #0x10]
  1000f1924  ldp     x20, x19, [sp], #0x20
  1000f1928  ret

; ======================================================================
; csl::SpatialSource::vfunc_14
; address 0x1000f192c  size 8  kind cxx
; ======================================================================
  1000f192c  str     x1, [x0, #0xa8]                          ; a0[+0xa8] = a1
  1000f1930  ret

; ======================================================================
; csl::SpatialSource::vfunc_15
; address 0x1000f1934  size 44  kind cxx
; ======================================================================
  1000f1934  ldr     x8, [x0, #0xa8]                          ; x8 = a0[+0xa8]
  1000f1938  cbz     x8, loc_1000f195c                        ; if (a0[+0xa8] == 0)
  1000f193c  mov     w9, #3
  1000f1940  str     w9, [x8]                                 ; a0[+0xa8][+0x0] = 3
  1000f1944  str     s0, [x8, #4]                             ; a0[+0xa8][+0x4] = s0
  1000f1948  str     s1, [x8, #8]                             ; a0[+0xa8][+0x8] = s1
  1000f194c  str     s2, [x8, #0xc]                           ; a0[+0xa8][+0xc] = s2
  1000f1950  mov     w8, #1
  1000f1954  strb    w8, [x0, #0xb1]                          ; a0[+0xb1] = 1
  1000f1958  ret
loc_1000f195c:
  1000f195c  b       sub_1000f1834                            ; sub_1000f1834(a0, a1, a2, a3)

; ======================================================================
; csl::SpatialSource::vfunc_16
; address 0x1000f1960  size 68  kind cxx
; ======================================================================
  1000f1960  ldr     x8, [x0, #0xa8]                          ; x8 = a0[+0xa8]
  1000f1964  cbz     x8, loc_1000f1994                        ; if (a0[+0xa8] == 0)
  1000f1968  mov     w9, #3
  1000f196c  fcvt    s0, d0
  1000f1970  str     w9, [x8]                                 ; a0[+0xa8][+0x0] = 3
  1000f1974  str     s0, [x8, #4]                             ; a0[+0xa8][+0x4] = s0
  1000f1978  fcvt    s0, d1
  1000f197c  str     s0, [x8, #8]                             ; a0[+0xa8][+0x8] = s0
  1000f1980  fcvt    s0, d2
  1000f1984  str     s0, [x8, #0xc]                           ; a0[+0xa8][+0xc] = s0
  1000f1988  mov     w8, #1
  1000f198c  strb    w8, [x0, #0xb1]                          ; a0[+0xb1] = 1
  1000f1990  ret
loc_1000f1994:
  1000f1994  fcvt    s0, d0
  1000f1998  fcvt    s1, d1
  1000f199c  fcvt    s2, d2
  1000f19a0  b       sub_1000f1834                            ; sub_1000f1834(a0, a1, a2, a3)

; ======================================================================
; csl::SpatialSource::vfunc_17
; address 0x1000f19a4  size 124  kind cxx
; ======================================================================
  1000f19a4  stp     x20, x19, [sp, #-0x20]!
  1000f19a8  stp     x29, x30, [sp, #0x10]
  1000f19ac  add     x29, sp, #0x10
  1000f19b0  mov     v3.16b, v1.16b
  1000f19b4  mov     x19, x0
  1000f19b8  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f19bc  nop
  1000f19c0  ldr     s4, #0x100181ae8                         ; s4 = 3.14159274
  1000f19c4  fmul    s0, s0, s4
  1000f19c8  adrp    x8, #0x100181000
  1000f19cc  ldr     s5, [x8, #0xd04]                         ; s5 = 180.0
  1000f19d0  fdiv    s1, s0, s5
  1000f19d4  fmul    s0, s3, s4
  1000f19d8  fdiv    s3, s0, s5
  1000f19dc  cbz     x0, loc_1000f1a04                        ; if (a0[+0xa8] == 0)
  1000f19e0  mov     w20, #1
  1000f19e4  mov     w1, #1
  1000f19e8  mov     v0.16b, v2.16b
  1000f19ec  mov     v2.16b, v3.16b
  1000f19f0  bl      sub_1000ef0dc                            ; sub_1000ef0dc(a0[+0xa8], 1, a2, a3)
  1000f19f4  strb    w20, [x19, #0xb1]                        ; a0[+0xb1] = 1
  1000f19f8  ldp     x29, x30, [sp, #0x10]
  1000f19fc  ldp     x20, x19, [sp], #0x20
  1000f1a00  ret
loc_1000f1a04:
  1000f1a04  mov     w1, #1
  1000f1a08  mov     x0, x19
  1000f1a0c  mov     v0.16b, v2.16b
  1000f1a10  mov     v2.16b, v3.16b
  1000f1a14  ldp     x29, x30, [sp, #0x10]
  1000f1a18  ldp     x20, x19, [sp], #0x20
  1000f1a1c  b       sub_1000f1440                            ; sub_1000f1440(a0, 1, a2, a3)

; ======================================================================
; csl::SpatialSource::vfunc_18
; address 0x1000f1a20  size 124  kind cxx
; ======================================================================
  1000f1a20  stp     x20, x19, [sp, #-0x20]!
  1000f1a24  stp     x29, x30, [sp, #0x10]
  1000f1a28  add     x29, sp, #0x10
  1000f1a2c  mov     v3.16b, v1.16b
  1000f1a30  mov     v1.16b, v0.16b
  1000f1a34  mov     x19, x0
  1000f1a38  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f1a3c  fcvt    s0, d2
  1000f1a40  nop
  1000f1a44  ldr     d2, #0x100181b08                         ; d2 = 3.14159274
  1000f1a48  fmul    d1, d1, d2
  1000f1a4c  adrp    x8, #0x100181000
  1000f1a50  ldr     d4, [x8, #0x9f0]                         ; d4 = 180.0
  1000f1a54  fdiv    d1, d1, d4
  1000f1a58  fcvt    s1, d1
  1000f1a5c  fmul    d2, d3, d2
  1000f1a60  fdiv    d2, d2, d4
  1000f1a64  fcvt    s2, d2
  1000f1a68  cbz     x0, loc_1000f1a88                        ; if (a0[+0xa8] == 0)
  1000f1a6c  mov     w20, #1
  1000f1a70  mov     w1, #1
  1000f1a74  bl      sub_1000ef0dc                            ; sub_1000ef0dc(a0[+0xa8], 1, a2, a3)
  1000f1a78  strb    w20, [x19, #0xb1]                        ; a0[+0xb1] = 1
  1000f1a7c  ldp     x29, x30, [sp, #0x10]
  1000f1a80  ldp     x20, x19, [sp], #0x20
  1000f1a84  ret
loc_1000f1a88:
  1000f1a88  mov     w1, #1
  1000f1a8c  mov     x0, x19
  1000f1a90  ldp     x29, x30, [sp, #0x10]
  1000f1a94  ldp     x20, x19, [sp], #0x20
  1000f1a98  b       sub_1000f1440                            ; sub_1000f1440(a0, 1, a2, a3)

; ======================================================================
; csl::SpatialSource::vfunc_11
; address 0x1000f1a9c  size 128  kind cxx
; ======================================================================
  1000f1a9c  stp     d9, d8, [sp, #-0x30]!
  1000f1aa0  stp     x20, x19, [sp, #0x10]
  1000f1aa4  stp     x29, x30, [sp, #0x20]
  1000f1aa8  add     x29, sp, #0x20
  1000f1aac  sub     sp, sp, #0x20
  1000f1ab0  mov     x19, x0
  1000f1ab4  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f1ab8  bl      sub_1000ef15c                            ; sub_1000ef15c(a0[+0xa8], a1, a2, a3)
  1000f1abc  fcvt    d8, s0
  1000f1ac0  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f1ac4  bl      sub_1000ef1fc                            ; sub_1000ef1fc(a0[+0xa8])
  1000f1ac8  fcvt    d0, s0
  1000f1acc  ldr     x8, [x19, #0xa8]                         ; x8 = a0[+0xa8]
  1000f1ad0  ldp     s1, s2, [x8, #4]
  1000f1ad4  fmul    s1, s1, s1
  1000f1ad8  fmul    s2, s2, s2
  1000f1adc  fadd    s1, s1, s2
  1000f1ae0  ldr     s2, [x8, #0xc]                           ; s2 = a0[+0xa8][+0xc]
  1000f1ae4  fmul    s2, s2, s2
  1000f1ae8  fadd    s1, s1, s2
  1000f1aec  fsqrt   s1, s1
  1000f1af0  fcvt    d1, s1
  1000f1af4  stp     d8, d0, [sp]
  1000f1af8  str     d1, [sp, #0x10]
  1000f1afc  adrp    x0, #0x100388000
  1000f1b00  add     x0, x0, #0x89d                           ; "	az: %5.2f  el: %5.2f  dist: %4.2f\n"
  1000f1b04  bl      _printf                                  ; printf("	az: %5.2f  el: %5.2f  dist: %4.2f\n", sp[0], sp[8], sqrt((((s1 * s1) + (s2 * s2)) + (a0[+0xa8][+0xc] * a0[+0xa8][+0xc]))))
  1000f1b08  sub     sp, x29, #0x20
  1000f1b0c  ldp     x29, x30, [sp, #0x20]
  1000f1b10  ldp     x20, x19, [sp, #0x10]
  1000f1b14  ldp     d9, d8, [sp], #0x30
  1000f1b18  ret

; ======================================================================
; csl::SpatialSource::thunk_vfunc_2
; address 0x1000f1b1c  size 16  kind cxx
; ======================================================================
  1000f1b1c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000f1b20  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000f1b24  add     x0, x0, x8
  1000f1b28  b       csl::SpatialSource::vfunc_11             ; csl::SpatialSource::vfunc_11((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; csl::SpatialSource::vfunc_12
; address 0x1000f1b2c  size 124  kind cxx
; ======================================================================
  1000f1b2c  stp     x22, x21, [sp, #-0x30]!
  1000f1b30  stp     x20, x19, [sp, #0x10]
  1000f1b34  stp     x29, x30, [sp, #0x20]
  1000f1b38  add     x29, sp, #0x20
  1000f1b3c  sub     sp, sp, #0x50
  1000f1b40  mov     x19, x1
  1000f1b44  mov     x20, x0
  1000f1b48  adrp    x21, #0x1003b0000
  1000f1b4c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000f1b50  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000f1b54  stur    x21, [x29, #-0x28]
  1000f1b58  add     x0, sp, #8
  1000f1b5c  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000f1b60  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000f1b64  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000f1b68  add     x8, x8, x20
  1000f1b6c  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20]
  1000f1b70  ldr     x0, [x8, #8]                             ; x0 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8]
  1000f1b74  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0]
  1000f1b78  ldr     x8, [x8, #0x60]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x60]
  1000f1b7c  add     w1, w19, #1
  1000f1b80  blr     x8                                       ; call (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x60]
  1000f1b84  ldur    x8, [x29, #-0x28]
  1000f1b88  sub     x8, x21, x8
  1000f1b8c  cbnz    x8, loc_1000f1ba4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f1b90  sub     sp, x29, #0x20
  1000f1b94  ldp     x29, x30, [sp, #0x20]
  1000f1b98  ldp     x20, x19, [sp, #0x10]
  1000f1b9c  ldp     x22, x21, [sp], #0x30
  1000f1ba0  ret
loc_1000f1ba4:
  1000f1ba4  bl      ___stack_chk_fail                        ; stack_chk_fail((a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x60](…))

; ======================================================================
; csl::SpatialSource::thunk_vfunc_3
; address 0x1000f1ba8  size 136  kind cxx
; ======================================================================
  1000f1ba8  stp     x22, x21, [sp, #-0x30]!
  1000f1bac  stp     x20, x19, [sp, #0x10]
  1000f1bb0  stp     x29, x30, [sp, #0x20]
  1000f1bb4  add     x29, sp, #0x20
  1000f1bb8  sub     sp, sp, #0x50
  1000f1bbc  mov     x19, x1
  1000f1bc0  mov     x20, x0
  1000f1bc4  adrp    x21, #0x1003b0000
  1000f1bc8  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000f1bcc  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000f1bd0  stur    x21, [x29, #-0x28]
  1000f1bd4  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000f1bd8  ldur    x22, [x8, #-0x28]                        ; x22 = a0[+0x0][+0x-28]
  1000f1bdc  add     x0, sp, #8
  1000f1be0  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000f1be4  ldr     x8, [x20, x22]
  1000f1be8  ldur    x8, [x8, #-0x20]
  1000f1bec  add     x8, x22, x8
  1000f1bf0  add     x8, x8, x20
  1000f1bf4  ldr     x8, [x8, #0x20]                          ; x8 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20]
  1000f1bf8  ldr     x0, [x8, #8]                             ; x0 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8]
  1000f1bfc  ldr     x8, [x0]                                 ; x8 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0]
  1000f1c00  ldr     x8, [x8, #0x60]                          ; x8 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0][+0x60]
  1000f1c04  add     w1, w19, #1
  1000f1c08  blr     x8                                       ; call ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0][+0x60]
  1000f1c0c  ldur    x8, [x29, #-0x28]
  1000f1c10  sub     x8, x21, x8
  1000f1c14  cbnz    x8, loc_1000f1c2c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f1c18  sub     sp, x29, #0x20
  1000f1c1c  ldp     x29, x30, [sp, #0x20]
  1000f1c20  ldp     x20, x19, [sp, #0x10]
  1000f1c24  ldp     x22, x21, [sp], #0x30
  1000f1c28  ret
loc_1000f1c2c:
  1000f1c2c  bl      ___stack_chk_fail                        ; stack_chk_fail(((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0][+0x60](…))

; ======================================================================
; csl::SpatialSource::vfunc_5
; address 0x1000f1c30  size 76  kind cxx
; ======================================================================
  1000f1c30  stp     x20, x19, [sp, #-0x20]!
  1000f1c34  stp     x29, x30, [sp, #0x10]
  1000f1c38  add     x29, sp, #0x10
  1000f1c3c  mov     x19, x0
  1000f1c40  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000f1c44  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000f1c48  add     x8, x8, x19
  1000f1c4c  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20]
  1000f1c50  ldr     x0, [x8, #8]                             ; x0 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8]
  1000f1c54  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0]
  1000f1c58  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x20]
  1000f1c5c  blr     x8                                       ; call (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x20]
  1000f1c60  strb    wzr, [x19, #0xb1]                        ; a0[+0xb1] = 0
  1000f1c64  ldp     x29, x30, [sp, #0x10]
  1000f1c68  ldp     x20, x19, [sp], #0x20
  1000f1c6c  ret
  1000f1c70  tbz     w1, 0x1f, loc_1000f1c78                  ; if (w1 >= 0)
  1000f1c74  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f1c78:
  1000f1c78  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::SpatialSource::vfunc_4
; address 0x1000f1c7c  size 44  kind cxx
; ======================================================================
  1000f1c7c  stp     x29, x30, [sp, #-0x10]!
  1000f1c80  mov     x29, sp
  1000f1c84  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000f1c88  ldr     x8, [x8, #0x28]                          ; x8 = a0[+0x0][+0x28]
  1000f1c8c  mov     w2, #0
  1000f1c90  blr     x8                                       ; call a0[+0x0][+0x28]
  1000f1c94  ldp     x29, x30, [sp], #0x10
  1000f1c98  ret
  1000f1c9c  tbz     w1, 0x1f, loc_1000f1ca4                  ; if (w1 >= 0)
  1000f1ca0  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f1ca4:
  1000f1ca4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::SpatialSource::vfunc_19
; address 0x1000f1ca8  size 8  kind cxx
; ======================================================================
  1000f1ca8  ldrb    w0, [x0, #0xb1]                          ; w0 = a0[+0xb1]
  1000f1cac  ret

; ======================================================================
; sub_1000f1cb0
; address 0x1000f1cb0  size 60  kind sub
; ======================================================================
  1000f1cb0  stp     x20, x19, [sp, #-0x20]!
  1000f1cb4  stp     x29, x30, [sp, #0x10]
  1000f1cb8  add     x29, sp, #0x10
  1000f1cbc  adrp    x19, #0x10042d000
  1000f1cc0  add     x19, x19, #0xb98                         ; &g_10042db98
  1000f1cc4  mov     x0, x19
  1000f1cc8  bl      __ZNSt8ios_base4InitC1Ev                 ; ZNSt8ios_base4InitC1Ev(&g_10042db98, a1, a2, a3)
  1000f1ccc  adrp    x0, #0x1003b0000
  1000f1cd0  ldr     x0, [x0, #0x160]                         ; __ZNSt8ios_base4InitD1Ev
  1000f1cd4  adr     x2, #0x100000000                         ; 0x100000000
  1000f1cd8  nop
  1000f1cdc  mov     x1, x19
  1000f1ce0  ldp     x29, x30, [sp, #0x10]
  1000f1ce4  ldp     x20, x19, [sp], #0x20
  1000f1ce8  b       ___cxa_atexit                            ; cxa_atexit(__ZNSt8ios_base4InitD1Ev, &g_10042db98, 0x100000000)

; ======================================================================
; sub_1000f1cec
; address 0x1000f1cec  size 80  kind sub
; ======================================================================
  1000f1cec  stp     x20, x19, [sp, #-0x20]!
  1000f1cf0  stp     x29, x30, [sp, #0x10]
  1000f1cf4  add     x29, sp, #0x10
  1000f1cf8  adrp    x20, #0x10042d000
  1000f1cfc  ldr     x19, [x20, #0x8c8]                       ; load g_10042d8c8
  1000f1d00  cbnz    x19, loc_1000f1d18                       ; if (g_10042d8c8 != 0)
  1000f1d04  mov     w0, #0x88
  1000f1d08  bl      __Znwm                                   ; Znwm(136, a1, a2, a3)
  1000f1d0c  mov     x19, x0
  1000f1d10  bl      sub_1000f26a0                            ; sub_1000f26a0(Znwm(136, a1, a2, a3))
  1000f1d14  str     x19, [x20, #0x8c8]                       ; store g_10042d8c8 = Znwm(136, a1, a2, a3)
loc_1000f1d18:
  1000f1d18  mov     x0, x19
  1000f1d1c  ldp     x29, x30, [sp, #0x10]
  1000f1d20  ldp     x20, x19, [sp], #0x20
  1000f1d24  ret
  1000f1d28  mov     x20, x0
  1000f1d2c  mov     x0, x19
  1000f1d30  bl      __ZdlPv                                  ; ZdlPv()
  1000f1d34  mov     x0, x20
  1000f1d38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f1d3c
; address 0x1000f1d3c  size 152  kind sub
; ======================================================================
  1000f1d3c  stp     x20, x19, [sp, #-0x20]!
  1000f1d40  stp     x29, x30, [sp, #0x10]
  1000f1d44  add     x29, sp, #0x10
  1000f1d48  mov     x19, x0
  1000f1d4c  stp     xzr, xzr, [x19, #0x10]
  1000f1d50  str     xzr, [x19, #8]                           ; a0[+0x8] = 0
  1000f1d54  stp     xzr, xzr, [x19, #0x40]
  1000f1d58  stp     xzr, xzr, [x19, #0x30]
  1000f1d5c  mov     x8, x19
  1000f1d60  str     xzr, [x8, #0x28]!                        ; a0[+0x28] = 0
  1000f1d64  stp     x8, x8, [x19, #0x38]
  1000f1d68  strb    wzr, [x19, #0x50]                        ; a0[+0x50] = 0
  1000f1d6c  strb    wzr, [x19, #0x51]                        ; a0[+0x51] = 0
  1000f1d70  stp     wzr, wzr, [x19, #0x54]
  1000f1d74  adrp    x8, #0x1003b6000
  1000f1d78  add     x8, x8, #0x720                           ; &d_1003b6720
  1000f1d7c  add     x8, x8, #0x10                            ; vtable<csl::SpeakerLayout>
  1000f1d80  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::SpeakerLayout>
  1000f1d84  mov     x20, x19
  1000f1d88  str     xzr, [x20, #0x60]!                       ; a0[+0x60] = 0
  1000f1d8c  stp     xzr, xzr, [x19, #0x68]
  1000f1d90  mov     w8, #2
  1000f1d94  str     w8, [x19, #0x78]                         ; a0[+0x78] = 2
  1000f1d98  bl      sub_1000f1dd4                            ; sub_1000f1dd4(a0, a1, a2, a3)
  1000f1d9c  mov     x0, x19
  1000f1da0  ldp     x29, x30, [sp, #0x10]
  1000f1da4  ldp     x20, x19, [sp], #0x20
  1000f1da8  ret
  1000f1dac  mov     x8, x20
  1000f1db0  mov     x20, x0
  1000f1db4  ldr     x0, [x8]
  1000f1db8  cbz     x0, loc_1000f1dc0                        ; if (x0 == 0)
  1000f1dbc  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f1dc0:
  1000f1dc0  mov     x0, x19
  1000f1dc4  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev()
  1000f1dc8  mov     x0, x20
  1000f1dcc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f1dd0  bl      sub_10000b760

; ======================================================================
; sub_1000f1dd4
; address 0x1000f1dd4  size 744  kind sub
; ======================================================================
  1000f1dd4  stp     x28, x27, [sp, #-0x60]!
  1000f1dd8  stp     x26, x25, [sp, #0x10]
  1000f1ddc  stp     x24, x23, [sp, #0x20]
  1000f1de0  stp     x22, x21, [sp, #0x30]
  1000f1de4  stp     x20, x19, [sp, #0x40]
  1000f1de8  stp     x29, x30, [sp, #0x50]
  1000f1dec  add     x29, sp, #0x50
  1000f1df0  sub     sp, sp, #0x7d0
  1000f1df4  mov     x21, x1
  1000f1df8  mov     x19, x0
  1000f1dfc  add     x8, sp, #0x10
  1000f1e00  adrp    x9, #0x1003b0000
  1000f1e04  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000f1e08  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000f1e0c  str     x9, [x8]
  1000f1e10  cbz     x21, loc_1000f2050                       ; if (a1 == 0)
  1000f1e14  mov     x0, x21
  1000f1e18  bl      _strlen                                  ; strlen(a1, a1, a2, a3)
  1000f1e1c  bl      _malloc                                  ; malloc(strlen(a1, a1, a2, a3))
  1000f1e20  mov     x22, x0
  1000f1e24  mov     x1, x21
  1000f1e28  bl      _strcpy                                  ; strcpy(malloc(strlen(a1, a1, a2, a3)), a1)
  1000f1e2c  mov     w8, #3
  1000f1e30  str     w8, [sp, #0x30]
  1000f1e34  stp     wzr, wzr, [sp, #0x38]
  1000f1e38  str     wzr, [sp, #0x34]
  1000f1e3c  str     w8, [sp, #0x20]
  1000f1e40  stp     wzr, wzr, [sp, #0x28]
  1000f1e44  str     wzr, [sp, #0x24]
  1000f1e48  add     x20, sp, #0x40
  1000f1e4c  add     x0, sp, #0x40
  1000f1e50  mov     w2, #8
  1000f1e54  mov     x1, x22
  1000f1e58  bl      __ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode ; ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(&sp[0x40], malloc(strlen(a1, a1, a2, a3)), 8)
  1000f1e5c  str     x22, [sp, #8]
  1000f1e60  ldr     x8, [sp, #0x40]
  1000f1e64  ldur    x8, [x8, #-0x18]
  1000f1e68  add     x8, x8, x20
  1000f1e6c  ldrb    w8, [x8, #0x20]                          ; w8 = (x8 + &sp[0x40])[+0x20]
  1000f1e70  mov     w9, #5
  1000f1e74  and     w8, w8, w9
  1000f1e78  cbnz    w8, loc_1000f2094                        ; if (((x8 + &sp[0x40])[+0x20] & 5) != 0)
  1000f1e7c  mov     w28, #0
  1000f1e80  add     x8, sp, #0x30
  1000f1e84  add     x21, x8, #0xc
  1000f1e88  add     x22, x8, #8
  1000f1e8c  orr     x23, x8, #4
  1000f1e90  add     x8, sp, #0x20
  1000f1e94  add     x24, x8, #0xc
  1000f1e98  add     x25, x8, #8
  1000f1e9c  orr     x26, x8, #4
  1000f1ea0  add     x27, sp, #0x40
  1000f1ea4  adrp    x20, #0x1003b0000
  1000f1ea8  ldr     x20, [x20, #0x110]                       ; __DefaultRuneLocale
  1000f1eac  b       loc_1000f1ecc
loc_1000f1eb0:
  1000f1eb0  add     x0, sp, #0x3c8
  1000f1eb4  adrp    x1, #0x100388000
  1000f1eb8  add     x1, x1, #0x8c1                           ; "WITH-NORMAL"
  1000f1ebc  bl      _strcmp                                  ; strcmp(&sp[0x3c8], "WITH-NORMAL")
  1000f1ec0  cmp     w0, #0
  1000f1ec4  cset    w8, eq
  1000f1ec8  orr     w28, w8, w28
loc_1000f1ecc:
  1000f1ecc  add     x0, sp, #0x40
  1000f1ed0  bl      __ZNSi4peekEv                            ; ZNSi4peekEv(&sp[0x40])
  1000f1ed4  sxtb    w8, w0
  1000f1ed8  cmp     w8, #0x2e
  1000f1edc  b.gt    loc_1000f1f04                            ; if (ZNSi4peekEv(&sp[0x40]) > 46)
  1000f1ee0  sub     w9, w8, #9
  1000f1ee4  cmp     w9, #2
  1000f1ee8  b.lo    loc_1000f1ef4                            ; if ((ZNSi4peekEv(&sp[0x40]) - 9) <u 2)
  1000f1eec  cmp     w8, #0x20
  1000f1ef0  b.ne    loc_1000f1f38                            ; if (ZNSi4peekEv(&sp[0x40]) != 32)
loc_1000f1ef4:
  1000f1ef4  add     x0, sp, #0x40
  1000f1ef8  mov     w1, #1
  1000f1efc  bl      __ZNSi6ignoreEl                          ; ZNSi6ignoreEl(&sp[0x40], 1)
  1000f1f00  b       loc_1000f1ecc
loc_1000f1f04:
  1000f1f04  cmp     w8, #0x2f
  1000f1f08  b.ne    loc_1000f1f40                            ; if (ZNSi4peekEv(&sp[0x40]) != 47)
  1000f1f0c  ldr     x8, [sp, #0x40]
  1000f1f10  ldur    x8, [x8, #-0x18]
  1000f1f14  add     x0, x27, x8
  1000f1f18  mov     w1, #0xa
  1000f1f1c  bl      __ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc ; ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc((&sp[0x40] + x8), 10)
  1000f1f20  mov     x3, x0
  1000f1f24  add     x0, sp, #0x40
  1000f1f28  add     x1, sp, #0x3c8
  1000f1f2c  mov     w2, #0x3ff
  1000f1f30  bl      __ZNSi7getlineEPclc                      ; ZNSi7getlineEPclc(&sp[0x40], &sp[0x3c8], 1023, ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc((&sp[0x40] + x8), 10))
  1000f1f34  b       loc_1000f1ecc
loc_1000f1f38:
  1000f1f38  cmn     w8, #1
  1000f1f3c  b.eq    loc_1000f2028                            ; if (ZNSi4peekEv(&sp[0x40]) == -1)
loc_1000f1f40:
  1000f1f40  cmp     w8, #0xff
  1000f1f44  b.ls    loc_1000f1f50                            ; if (ZNSi4peekEv(&sp[0x40]) <=u 255)
  1000f1f48  mov     w9, #0
  1000f1f4c  b       loc_1000f1f5c
loc_1000f1f50:
  1000f1f50  add     x9, x20, w8, sxtw #2
  1000f1f54  ldrb    w9, [x9, #0x3d]                          ; w9 = (__DefaultRuneLocale + (ZNSi4peekEv(&sp[0x40]) << 2))[+0x3d]
  1000f1f58  ubfx    w9, w9, #2, #1
loc_1000f1f5c:
  1000f1f5c  tbnz    w9, #0, loc_1000f1f68                    ; if ((w9 & 1))
  1000f1f60  cmp     w8, #0x2d
  1000f1f64  b.ne    loc_1000f1ff8                            ; if (ZNSi4peekEv(&sp[0x40]) != 45)
loc_1000f1f68:
  1000f1f68  tbz     w28, #0, loc_1000f1fc8                   ; if (!(w28 & 1))
  1000f1f6c  add     x0, sp, #0x40
  1000f1f70  mov     x1, x23
  1000f1f74  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4))
  1000f1f78  mov     x1, x22
  1000f1f7c  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8))
  1000f1f80  mov     x1, x21
  1000f1f84  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8)), (&sp[0x30] + 12))
  1000f1f88  mov     x1, x26
  1000f1f8c  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8)), (&sp[0x30] + 12)), (&sp[0x20] | 4))
  1000f1f90  mov     x1, x25
  1000f1f94  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8)), (&sp[0x30] + 12)), (&sp[0x20] | 4)), (&sp[0x20] + 8))
  1000f1f98  mov     x1, x24
  1000f1f9c  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8)), (&sp[0x30] + 12)), (&sp[0x20] | 4)), (&sp[0x20] + 8)), (&sp[0x20] + 12))
  1000f1fa0  add     x1, sp, #0x1c
  1000f1fa4  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8)), (&sp[0x30] + 12)), (&sp[0x20] | 4)), (&sp[0x20] + 8)), (&sp[0x20] + 12)), &sp[0x1c])
  1000f1fa8  ldp     s0, s1, [sp, #0x34]
  1000f1fac  ldr     s2, [sp, #0x3c]
  1000f1fb0  ldp     s3, s4, [sp, #0x24]
  1000f1fb4  ldr     s5, [sp, #0x2c]
  1000f1fb8  ldr     s6, [sp, #0x1c]
  1000f1fbc  mov     x0, x19
  1000f1fc0  bl      sub_1000f219c                            ; sub_1000f219c(a0)
  1000f1fc4  b       loc_1000f1ecc
loc_1000f1fc8:
  1000f1fc8  add     x0, sp, #0x40
  1000f1fcc  mov     x1, x23
  1000f1fd0  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4))
  1000f1fd4  mov     x1, x22
  1000f1fd8  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8))
  1000f1fdc  mov     x1, x21
  1000f1fe0  bl      __ZNSi10_M_extractIfEERSiRT_             ; ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(ZNSi10_M_extractIfEERSiRT_(&sp[0x40], (&sp[0x30] | 4)), (&sp[0x30] + 8)), (&sp[0x30] + 12))
  1000f1fe4  ldp     s0, s1, [sp, #0x34]
  1000f1fe8  ldr     s2, [sp, #0x3c]
  1000f1fec  mov     x0, x19
  1000f1ff0  bl      sub_1000f233c                            ; sub_1000f233c(a0)
  1000f1ff4  b       loc_1000f1ecc
loc_1000f1ff8:
  1000f1ff8  ldr     x8, [sp, #0x40]
  1000f1ffc  ldur    x8, [x8, #-0x18]
  1000f2000  add     x0, x27, x8
  1000f2004  mov     w1, #0xa
  1000f2008  bl      __ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc ; ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc((&sp[0x40] + x8), 10)
  1000f200c  mov     x3, x0
  1000f2010  add     x0, sp, #0x40
  1000f2014  add     x1, sp, #0x3c8
  1000f2018  mov     w2, #0x20
  1000f201c  bl      __ZNSi3getEPclc                          ; ZNSi3getEPclc(&sp[0x40], &sp[0x3c8], 32, ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc((&sp[0x40] + x8), 10))
  1000f2020  b       loc_1000f1eb0
  1000f2024  b       loc_1000f2080
loc_1000f2028:
  1000f2028  mov     x0, x19
  1000f202c  bl      sub_1000f2428                            ; sub_1000f2428(a0)
  1000f2030  ldr     x0, [sp, #8]
  1000f2034  bl      _free                                    ; free(malloc(strlen(a1, a1, a2, a3)))
  1000f2038  add     x0, sp, #0x40
  1000f203c  bl      __ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev ; ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(&sp[0x40])
  1000f2040  adrp    x9, #0x1003b0000
  1000f2044  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000f2048  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000f204c  add     x8, sp, #0x10
loc_1000f2050:
  1000f2050  ldr     x8, [x8]
  1000f2054  sub     x8, x9, x8
  1000f2058  cbnz    x8, loc_1000f207c                        ; if ((___stack_chk_guard[+0x0] - x8) != 0)
  1000f205c  sub     sp, x29, #0x50
  1000f2060  ldp     x29, x30, [sp, #0x50]
  1000f2064  ldp     x20, x19, [sp, #0x40]
  1000f2068  ldp     x22, x21, [sp, #0x30]
  1000f206c  ldp     x24, x23, [sp, #0x20]
  1000f2070  ldp     x26, x25, [sp, #0x10]
  1000f2074  ldp     x28, x27, [sp], #0x60
  1000f2078  ret
loc_1000f207c:
  1000f207c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000f2080:
  1000f2080  mov     x19, x0
  1000f2084  add     x0, sp, #0x40
  1000f2088  bl      __ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev ; ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(&sp[0x40])
  1000f208c  b       loc_1000f20b0
  1000f2090  bl      sub_10000b760
loc_1000f2094:
  1000f2094  adrp    x1, #0x100388000
  1000f2098  add     x1, x1, #0x8cd                           ; "SpeakerLayout unable to open file\n"
  1000f209c  mov     w0, #2
  1000f20a0  bl      sub_1000e772c                            ; sub_1000e772c(2, "SpeakerLayout unable to open file\n")
  1000f20a4  mov     w0, #1
  1000f20a8  bl      _exit                                    ; exit(1)
  1000f20ac  mov     x19, x0
loc_1000f20b0:
  1000f20b0  mov     x0, x19
  1000f20b4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f20b8  b       loc_1000f2080

; ======================================================================
; sub_1000f20bc
; address 0x1000f20bc  size 132  kind sub
; ======================================================================
  1000f20bc  stp     x20, x19, [sp, #-0x20]!
  1000f20c0  stp     x29, x30, [sp, #0x10]
  1000f20c4  add     x29, sp, #0x10
  1000f20c8  mov     x19, x0
  1000f20cc  adrp    x8, #0x1003b6000
  1000f20d0  add     x8, x8, #0x720                           ; &d_1003b6720
  1000f20d4  add     x8, x8, #0x10                            ; vtable<csl::SpeakerLayout>
  1000f20d8  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::SpeakerLayout>
  1000f20dc  ldp     x0, x9, [x19, #0x60]
  1000f20e0  cmp     x9, x0
  1000f20e4  b.eq    loc_1000f211c                            ; if (x9 == x0)
  1000f20e8  mov     x8, #0
  1000f20ec  mov     w20, #1
loc_1000f20f0:
  1000f20f0  ldr     x8, [x0, x8, lsl #3]
  1000f20f4  cbz     x8, loc_1000f2104                        ; if (x8 == 0)
  1000f20f8  mov     x0, x8
  1000f20fc  bl      __ZdlPv                                  ; ZdlPv()
  1000f2100  ldp     x0, x9, [x19, #0x60]
loc_1000f2104:
  1000f2104  ubfx    x8, x20, #0, #0x20
  1000f2108  sub     x10, x9, x0
  1000f210c  add     w20, w20, #1
  1000f2110  cmp     x8, x10, asr #3
  1000f2114  b.lo    loc_1000f20f0                            ; if (x8 <u ((x9 - x0) >> 3))
  1000f2118  b       loc_1000f2120
loc_1000f211c:
  1000f211c  mov     x0, x9
loc_1000f2120:
  1000f2120  cbz     x0, loc_1000f2128                        ; if (x0 == 0)
  1000f2124  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f2128:
  1000f2128  mov     x0, x19
  1000f212c  bl      __ZN3csl5ModelD2Ev                       ; ZN3csl5ModelD2Ev(a0)
  1000f2130  mov     x0, x19
  1000f2134  ldp     x29, x30, [sp, #0x10]
  1000f2138  ldp     x20, x19, [sp], #0x20
  1000f213c  ret
