// unit csl_AmbisonicUnitGenerator — 12 functions
//   0x1000f5f5c      36  csl::AmbisonicUnitGenerator::~AmbisonicUnitGenerator
//   0x1000f5f80      56  csl::AmbisonicUnitGenerator::~AmbisonicUnitGenerator/*deleting*/
//   0x1000f5fb8      56  sub_1000f5fb8
//   0x1000f5ff0      16  sub_1000f5ff0
//   0x1000f6000      28  sub_1000f6000
//   0x1000f601c     292  sub_1000f601c
//   0x1000f6140     180  sub_1000f6140
//   0x1000f61f4     108  sub_1000f61f4
//   0x1000f6260     144  sub_1000f6260
//   0x1000f62f0      84  sub_1000f62f0
//   0x1000f6344      36  sub_1000f6344
//   0x1000f6368     112  sub_1000f6368

; ======================================================================
; csl::AmbisonicUnitGenerator::~AmbisonicUnitGenerator
; address 0x1000f5f5c  size 36  kind cxx
; ======================================================================
  1000f5f5c  stp     x20, x19, [sp, #-0x20]!
  1000f5f60  stp     x29, x30, [sp, #0x10]
  1000f5f64  add     x29, sp, #0x10
  1000f5f68  mov     x19, x0
  1000f5f6c  bl      sub_1000e8918                            ; sub_1000e8918(a0, a1, a2, a3)
  1000f5f70  mov     x0, x19
  1000f5f74  ldp     x29, x30, [sp, #0x10]
  1000f5f78  ldp     x20, x19, [sp], #0x20
  1000f5f7c  ret

; ======================================================================
; csl::AmbisonicUnitGenerator::~AmbisonicUnitGenerator/*deleting*/
; address 0x1000f5f80  size 56  kind cxx
; ======================================================================
  1000f5f80  stp     x20, x19, [sp, #-0x20]!
  1000f5f84  stp     x29, x30, [sp, #0x10]
  1000f5f88  add     x29, sp, #0x10
  1000f5f8c  mov     x19, x0
  1000f5f90  bl      sub_1000e8918                            ; sub_1000e8918(a0, a1, a2, a3)
  1000f5f94  mov     x0, x19
  1000f5f98  ldp     x29, x30, [sp, #0x10]
  1000f5f9c  ldp     x20, x19, [sp], #0x20
  1000f5fa0  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f5fa4  mov     x20, x0
  1000f5fa8  mov     x0, x19
  1000f5fac  bl      __ZdlPv                                  ; ZdlPv()
  1000f5fb0  mov     x0, x20
  1000f5fb4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f5fb8
; address 0x1000f5fb8  size 56  kind sub
; ======================================================================
  1000f5fb8  ldp     w8, w9, [x1]
  1000f5fbc  mov     w10, #1
  1000f5fc0  mov     w11, #1
  1000f5fc4  bfi     w11, w8, #1, #0x1f
  1000f5fc8  ucvtf   s0, w9
  1000f5fcc  fmov    s1, #1.00000000
  1000f5fd0  fadd    s0, s0, s1
  1000f5fd4  fcvt    d0, s0
  1000f5fd8  fmul    d0, d0, d0
  1000f5fdc  fcvtzu  w8, d0
  1000f5fe0  bfi     w10, w9, #1, #0x1f
  1000f5fe4  sub     w9, w11, w10
  1000f5fe8  add     w0, w9, w8
  1000f5fec  ret

; ======================================================================
; sub_1000f5ff0
; address 0x1000f5ff0  size 16  kind sub
; ======================================================================
  1000f5ff0  ldp     w8, w9, [x1]
  1000f5ff4  cmp     w8, w9
  1000f5ff8  csel    w0, w8, w9, hi
  1000f5ffc  ret

; ======================================================================
; sub_1000f6000
; address 0x1000f6000  size 28  kind sub
; ======================================================================
  1000f6000  ucvtf   s0, w1
  1000f6004  fmov    s1, #1.00000000
  1000f6008  fadd    s0, s0, s1
  1000f600c  fcvt    d0, s0
  1000f6010  fmul    d0, d0, d0
  1000f6014  fcvtzu  w0, d0
  1000f6018  ret

; ======================================================================
; sub_1000f601c
; address 0x1000f601c  size 292  kind sub
; ======================================================================
  1000f601c  stp     d9, d8, [sp, #-0x40]!
  1000f6020  stp     x22, x21, [sp, #0x10]
  1000f6024  stp     x20, x19, [sp, #0x20]
  1000f6028  stp     x29, x30, [sp, #0x30]
  1000f602c  add     x29, sp, #0x30
  1000f6030  mov     x19, x1
  1000f6034  ldp     w20, w21, [x0, #0xa4]
  1000f6038  cmp     w20, w21
  1000f603c  csel    w8, w20, w21, hi
  1000f6040  ucvtf   s0, w8
  1000f6044  fmov    s8, #1.00000000
  1000f6048  fadd    s0, s0, s8
  1000f604c  fcvt    d0, s0
  1000f6050  fmul    d0, d0, d0
  1000f6054  fcvtzu  w8, d0
  1000f6058  mov     w9, #1
  1000f605c  mov     w10, #1
  1000f6060  bfi     w10, w20, #1, #0x1f
  1000f6064  ucvtf   s0, w21
  1000f6068  fadd    s0, s0, s8
  1000f606c  fcvt    d0, s0
  1000f6070  fmul    d0, d0, d0
  1000f6074  fcvtzu  w11, d0
  1000f6078  bfi     w9, w21, #1, #0x1f
  1000f607c  sub     w9, w10, w9
  1000f6080  add     w22, w9, w11
  1000f6084  cbz     w8, loc_1000f609c                        ; if ((uint)(((float)(w20 >u w21 ? w20 : w21) + 1) * ((float)(w20 >u w21 ? w20 : w21) + 1)) == 0)
  1000f6088  sub     w8, w8, #1
  1000f608c  mov     w9, #4
  1000f6090  add     x1, x9, w8, uxtw #2                      ; t1 = (4 + (((uint)(((float)(w20 >u w21 ? w20 : w21) + 1) * ((float)(w20 >u w21 ? w20 : w21) + 1)) - 1) << 2))
  1000f6094  mov     x0, x19
  1000f6098  bl      _bzero                                   ; bzero(a1, t1, a2, a3)
loc_1000f609c:
  1000f609c  cmp     w22, #2
  1000f60a0  b.lo    loc_1000f612c                            ; if (((w10 - w9) + (uint)(((float)w21 + 1) * ((float)w21 + 1))) <u 2)
  1000f60a4  mov     w9, #1
  1000f60a8  mov     w8, #1
  1000f60ac  mov     w10, #1
loc_1000f60b0:
  1000f60b0  cmp     w8, w20
  1000f60b4  b.hi    loc_1000f60cc                            ; if (w8 >u w20)
  1000f60b8  add     w11, w9, #1
  1000f60bc  add     w12, w10, #1
  1000f60c0  str     w9, [x19, w10, uxtw #2]
  1000f60c4  add     w9, w9, #2
  1000f60c8  str     w11, [x19, w12, uxtw #2]
loc_1000f60cc:
  1000f60cc  ucvtf   s0, w8
  1000f60d0  fadd    s0, s0, s8
  1000f60d4  fcvt    d0, s0
  1000f60d8  fmul    d0, d0, d0
  1000f60dc  fcvtzu  w11, d0
  1000f60e0  cmp     w8, w21
  1000f60e4  b.hi    loc_1000f6118                            ; if (w8 >u w21)
  1000f60e8  add     w12, w10, #2
  1000f60ec  cmp     w12, w11
  1000f60f0  b.hs    loc_1000f611c                            ; if ((w10 + 2) >=u (uint)(((float)w8 + 1) * ((float)w8 + 1)))
  1000f60f4  ubfx    x12, x12, #0, #0x20
  1000f60f8  add     w13, w9, w11
  1000f60fc  sub     w13, w13, #2
loc_1000f6100:
  1000f6100  str     w9, [x19, x12, lsl #2]
  1000f6104  add     w9, w9, #1
  1000f6108  add     x12, x12, #1
  1000f610c  cmp     w11, w12
  1000f6110  b.ne    loc_1000f6100                            ; if (w11 != (x12 + 1))
  1000f6114  sub     w9, w13, w10
loc_1000f6118:
  1000f6118  mov     x12, x11
loc_1000f611c:
  1000f611c  add     w8, w8, #1
  1000f6120  cmp     w9, w22
  1000f6124  mov     x10, x12
  1000f6128  b.lo    loc_1000f60b0                            ; if (w9 <u ((w10 - w9) + (uint)(((float)w21 + 1) * ((float)w21 + 1))))
loc_1000f612c:
  1000f612c  ldp     x29, x30, [sp, #0x30]
  1000f6130  ldp     x20, x19, [sp, #0x20]
  1000f6134  ldp     x22, x21, [sp, #0x10]
  1000f6138  ldp     d9, d8, [sp], #0x40
  1000f613c  ret

; ======================================================================
; sub_1000f6140
; address 0x1000f6140  size 180  kind sub
; ======================================================================
  1000f6140  ldp     w8, w9, [x0, #0xa4]
  1000f6144  mov     w10, #1
  1000f6148  mov     w11, #1
  1000f614c  bfi     w11, w8, #1, #0x1f
  1000f6150  ucvtf   s1, w9
  1000f6154  fmov    s0, #1.00000000
  1000f6158  fadd    s1, s1, s0
  1000f615c  fcvt    d1, s1
  1000f6160  fmul    d1, d1, d1
  1000f6164  fcvtzu  w12, d1
  1000f6168  mov     w13, #1
  1000f616c  bfi     w13, w9, #1, #0x1f
  1000f6170  sub     w11, w11, w13
  1000f6174  add     w11, w11, w12
  1000f6178  str     wzr, [x1]                                ; a1[+0x0] = 0
  1000f617c  cmp     w11, #2
  1000f6180  b.lo    loc_1000f61f0                            ; if (((w11 - w13) + (uint)(((float)w9 + 1) * ((float)w9 + 1))) <u 2)
  1000f6184  mov     w12, #1
loc_1000f6188:
  1000f6188  cmp     w12, w8
  1000f618c  b.ls    loc_1000f6198                            ; if (w12 <=u w8)
  1000f6190  add     w10, w10, #2
  1000f6194  b       loc_1000f61a8
loc_1000f6198:
  1000f6198  add     w13, w10, #1
  1000f619c  str     w10, [x1, w13, uxtw #2]
  1000f61a0  add     w10, w10, #2
  1000f61a4  str     w13, [x1, w10, uxtw #2]
loc_1000f61a8:
  1000f61a8  ucvtf   s1, w12
  1000f61ac  fadd    s1, s1, s0
  1000f61b0  fcvt    d1, s1
  1000f61b4  fmul    d1, d1, d1
  1000f61b8  fcvtzu  w13, d1
  1000f61bc  cmp     w12, w9
  1000f61c0  b.hi    loc_1000f61e0                            ; if (w12 >u w9)
  1000f61c4  cmp     w10, w13
  1000f61c8  b.hs    loc_1000f61e4                            ; if ((w10 + 2) >=u (uint)(((float)w12 + 1) * ((float)w12 + 1)))
loc_1000f61cc:
  1000f61cc  add     w14, w10, #1
  1000f61d0  str     w10, [x1, w14, uxtw #2]
  1000f61d4  cmp     w13, w14
  1000f61d8  mov     x10, x14
  1000f61dc  b.ne    loc_1000f61cc                            ; if (w13 != (w10 + 1))
loc_1000f61e0:
  1000f61e0  mov     x10, x13
loc_1000f61e4:
  1000f61e4  add     w12, w12, #1
  1000f61e8  cmp     w10, w11
  1000f61ec  b.lo    loc_1000f6188                            ; if (w10 <u ((w11 - w13) + (uint)(((float)w9 + 1) * ((float)w9 + 1))))
loc_1000f61f0:
  1000f61f0  ret

; ======================================================================
; sub_1000f61f4
; address 0x1000f61f4  size 108  kind sub
; ======================================================================
  1000f61f4  stp     x20, x19, [sp, #-0x20]!
  1000f61f8  stp     x29, x30, [sp, #0x10]
  1000f61fc  add     x29, sp, #0x10
  1000f6200  mov     x20, x1
  1000f6204  mov     x19, x0
  1000f6208  mov     x1, x2
  1000f620c  bl      sub_1000f5e0c                            ; sub_1000f5e0c(a0, a2, a2, a3)
  1000f6210  adrp    x8, #0x1003b6000
  1000f6214  add     x8, x8, #0x920                           ; &d_1003b6920
  1000f6218  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicEncoder>
  1000f621c  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicEncoder>
  1000f6220  str     xzr, [x19, #0xb8]                        ; a0[+0xb8] = 0
  1000f6224  mov     x0, x19
  1000f6228  mov     x1, x20
  1000f622c  bl      sub_1000f6260                            ; sub_1000f6260(a0, a1)
  1000f6230  mov     x0, x19
  1000f6234  bl      sub_1000f62f0                            ; sub_1000f62f0(a0)
  1000f6238  mov     x0, x19
  1000f623c  ldp     x29, x30, [sp, #0x10]
  1000f6240  ldp     x20, x19, [sp], #0x20
  1000f6244  ret
  1000f6248  mov     x20, x0
  1000f624c  mov     x0, x19
  1000f6250  bl      sub_1000e8918
  1000f6254  mov     x0, x20
  1000f6258  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f625c  bl      sub_10000b760

; ======================================================================
; sub_1000f6260
; address 0x1000f6260  size 144  kind sub
; ======================================================================
  1000f6260  stp     x22, x21, [sp, #-0x30]!
  1000f6264  stp     x20, x19, [sp, #0x10]
  1000f6268  stp     x29, x30, [sp, #0x20]
  1000f626c  add     x29, sp, #0x20
  1000f6270  mov     x20, x1
  1000f6274  mov     x19, x0
  1000f6278  ldr     x21, [x19, #0xb8]                        ; x21 = a0[+0xb8]
  1000f627c  cbnz    x21, loc_1000f6298                       ; if (a0[+0xb8] != 0)
  1000f6280  mov     w0, #0x30
  1000f6284  bl      __Znwm                                   ; Znwm(48, a1, a2, a3)
  1000f6288  mov     x21, x0
  1000f628c  mov     x1, x20
  1000f6290  bl      sub_1000e9060                            ; sub_1000e9060(Znwm(48, a1, a2, a3), a1)
  1000f6294  str     x21, [x19, #0xb8]                        ; a0[+0xb8] = Znwm(48, a1, a2, a3)
loc_1000f6298:
  1000f6298  ldr     x0, [x21, #8]
  1000f629c  cmp     x0, x20
  1000f62a0  b.eq    loc_1000f62cc                            ; if (x0 == a1)
  1000f62a4  mov     x1, x19
  1000f62a8  bl      sub_1000e8af8                            ; sub_1000e8af8(x0, a0)
  1000f62ac  ldr     x8, [x19, #0xb8]                         ; x8 = a0[+0xb8]
  1000f62b0  str     x20, [x8, #8]                            ; a0[+0xb8][+0x8] = a1
  1000f62b4  mov     x0, x20
  1000f62b8  mov     x1, x19
  1000f62bc  ldp     x29, x30, [sp, #0x20]
  1000f62c0  ldp     x20, x19, [sp, #0x10]
  1000f62c4  ldp     x22, x21, [sp], #0x30
  1000f62c8  b       sub_1000e89bc                            ; sub_1000e89bc(a1, a0)
loc_1000f62cc:
  1000f62cc  ldp     x29, x30, [sp, #0x20]
  1000f62d0  ldp     x20, x19, [sp, #0x10]
  1000f62d4  ldp     x22, x21, [sp], #0x30
  1000f62d8  ret
  1000f62dc  mov     x19, x0
  1000f62e0  mov     x0, x21
  1000f62e4  bl      __ZdlPv                                  ; ZdlPv()
  1000f62e8  mov     x0, x19
  1000f62ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f62f0
; address 0x1000f62f0  size 84  kind sub
; ======================================================================
  1000f62f0  stp     x20, x19, [sp, #-0x20]!
  1000f62f4  stp     x29, x30, [sp, #0x10]
  1000f62f8  add     x29, sp, #0x10
  1000f62fc  mov     x19, x0
  1000f6300  ldr     w20, [x19, #0x60]                        ; w20 = a0[+0x60]
  1000f6304  lsl     x0, x20, #2
  1000f6308  bl      __Znam                                   ; Znam((a0[+0x60] << 2), a1, a2, a3)
  1000f630c  str     x0, [x19, #0xb0]                         ; a0[+0xb0] = Znam((a0[+0x60] << 2), a1, a2, a3)
  1000f6310  mov     w8, #0x3f350000
  1000f6314  movk    w8, #0x4f3
  1000f6318  str     w8, [x0]                                 ; Znam((a0[+0x60] << 2), a1, a2, a3)[+0x0] = 0x3f3504f3
  1000f631c  subs    w8, w20, #2
  1000f6320  b.lo    loc_1000f6338                            ; if (a0[+0x60] <u 2)
  1000f6324  add     x0, x0, #4
  1000f6328  mov     w9, #4
  1000f632c  add     x8, x9, w8, uxtw #2
  1000f6330  csel    x1, x8, x9, hi
  1000f6334  bl      _bzero                                   ; bzero((Znam((a0[+0x60] << 2), a1, a2, a3) + 4), (a0[+0x60] >u 2 ? (4 + ((a0[+0x60] - 2) << 2)) : 4))
loc_1000f6338:
  1000f6338  ldp     x29, x30, [sp, #0x10]
  1000f633c  ldp     x20, x19, [sp], #0x20
  1000f6340  ret

; ======================================================================
; sub_1000f6344
; address 0x1000f6344  size 36  kind sub
; ======================================================================
  1000f6344  stp     x20, x19, [sp, #-0x20]!
  1000f6348  stp     x29, x30, [sp, #0x10]
  1000f634c  add     x29, sp, #0x10
  1000f6350  mov     x19, x0
  1000f6354  bl      sub_1000f61f4                            ; sub_1000f61f4(a0, a1, a2, a3)
  1000f6358  mov     x0, x19
  1000f635c  ldp     x29, x30, [sp, #0x10]
  1000f6360  ldp     x20, x19, [sp], #0x20
  1000f6364  ret

; ======================================================================
; sub_1000f6368
; address 0x1000f6368  size 112  kind sub
; ======================================================================
  1000f6368  stp     x20, x19, [sp, #-0x20]!
  1000f636c  stp     x29, x30, [sp, #0x10]
  1000f6370  add     x29, sp, #0x10
  1000f6374  mov     x19, x0
  1000f6378  adrp    x8, #0x1003b6000
  1000f637c  add     x8, x8, #0x920                           ; &d_1003b6920
  1000f6380  add     x8, x8, #0x10                            ; vtable<csl::AmbisonicEncoder>
  1000f6384  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::AmbisonicEncoder>
  1000f6388  ldr     x0, [x19, #0xb0]                         ; x0 = a0[+0xb0]
  1000f638c  cbz     x0, loc_1000f6394                        ; if (a0[+0xb0] == 0)
  1000f6390  bl      __ZdaPv                                  ; ZdaPv(a0[+0xb0], a1, a2, a3)
loc_1000f6394:
  1000f6394  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000f6398  cbz     x0, loc_1000f63a8                        ; if (a0[+0xb8] == 0)
  1000f639c  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f63a0  ldr     x8, [x8, #8]                             ; x8 = a0[+0xb8][+0x0][+0x8]
  1000f63a4  blr     x8                                       ; call a0[+0xb8][+0x0][+0x8]
loc_1000f63a8:
  1000f63a8  mov     x0, x19
  1000f63ac  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000f63b0  mov     x0, x19
  1000f63b4  ldp     x29, x30, [sp, #0x10]
  1000f63b8  ldp     x20, x19, [sp], #0x20
  1000f63bc  ret
  1000f63c0  mov     x20, x0
  1000f63c4  mov     x0, x19
  1000f63c8  bl      sub_1000e8918
  1000f63cc  mov     x0, x20
  1000f63d0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f63d4  bl      sub_10000b760
