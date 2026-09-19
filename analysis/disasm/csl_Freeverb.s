// unit csl_Freeverb — 9 functions
//   0x1000ecdd8      76  csl::Freeverb::~Freeverb
//   0x1000ece24       8  csl::Freeverb::thunk_vfunc_0
//   0x1000ece2c      16  csl::Freeverb::thunk_vfunc_0
//   0x1000ece3c      56  csl::Freeverb::~Freeverb/*deleting*/
//   0x1000ece74       8  csl::Freeverb::thunk_vfunc_1
//   0x1000ece7c      16  csl::Freeverb::thunk_vfunc_1
//   0x1000ece8c     508  csl::Freeverb::vfunc_5
//   0x1000ed088     580  sub_1000ed088
//   0x1000ed2cc     164  sub_1000ed2cc

; ======================================================================
; csl::Freeverb::~Freeverb
; address 0x1000ecdd8  size 76  kind cxx
; ======================================================================
  1000ecdd8  stp     x20, x19, [sp, #-0x20]!
  1000ecddc  stp     x29, x30, [sp, #0x10]
  1000ecde0  add     x29, sp, #0x10
  1000ecde4  mov     x19, x0
  1000ecde8  adrp    x1, #0x1003b5000
  1000ecdec  add     x1, x1, #0x4e0                           ; &d_1003b54e0
  1000ecdf0  bl      sub_1000ecc64                            ; sub_1000ecc64(a0, &d_1003b54e0, a2, a3)
  1000ecdf4  add     x0, x19, #0x118
  1000ecdf8  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 280))
  1000ecdfc  mov     x0, x19
  1000ece00  ldp     x29, x30, [sp, #0x10]
  1000ece04  ldp     x20, x19, [sp], #0x20
  1000ece08  ret
  1000ece0c  mov     x20, x0
  1000ece10  add     x0, x19, #0x118
  1000ece14  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 280))
  1000ece18  mov     x0, x20
  1000ece1c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ece20  bl      sub_10000b760

; ======================================================================
; csl::Freeverb::thunk_vfunc_0
; address 0x1000ece24  size 8  kind cxx
; ======================================================================
  1000ece24  sub     x0, x0, #0xb0
  1000ece28  b       csl::Freeverb::~Freeverb                 ; csl::Freeverb::~Freeverb((a0 - 176), a1, a2, a3)

; ======================================================================
; csl::Freeverb::thunk_vfunc_0
; address 0x1000ece2c  size 16  kind cxx
; ======================================================================
  1000ece2c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ece30  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ece34  add     x0, x0, x8
  1000ece38  b       csl::Freeverb::~Freeverb                 ; csl::Freeverb::~Freeverb((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Freeverb::~Freeverb/*deleting*/
; address 0x1000ece3c  size 56  kind cxx
; ======================================================================
  1000ece3c  stp     x20, x19, [sp, #-0x20]!
  1000ece40  stp     x29, x30, [sp, #0x10]
  1000ece44  add     x29, sp, #0x10
  1000ece48  mov     x19, x0
  1000ece4c  bl      csl::Freeverb::~Freeverb                 ; csl::Freeverb::~Freeverb(a0, a1, a2, a3)
  1000ece50  mov     x0, x19
  1000ece54  ldp     x29, x30, [sp, #0x10]
  1000ece58  ldp     x20, x19, [sp], #0x20
  1000ece5c  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ece60  mov     x20, x0
  1000ece64  mov     x0, x19
  1000ece68  bl      __ZdlPv                                  ; ZdlPv()
  1000ece6c  mov     x0, x20
  1000ece70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Freeverb::thunk_vfunc_1
; address 0x1000ece74  size 8  kind cxx
; ======================================================================
  1000ece74  sub     x0, x0, #0xb0
  1000ece78  b       csl::Freeverb::~Freeverb/*deleting*/     ; csl::Freeverb::~Freeverb/*deleting*/((a0 - 176), a1, a2, a3)

; ======================================================================
; csl::Freeverb::thunk_vfunc_1
; address 0x1000ece7c  size 16  kind cxx
; ======================================================================
  1000ece7c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ece80  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ece84  add     x0, x0, x8
  1000ece88  b       csl::Freeverb::~Freeverb/*deleting*/     ; csl::Freeverb::~Freeverb/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Freeverb::vfunc_5
; address 0x1000ece8c  size 508  kind cxx
; ======================================================================
  1000ece8c  stp     d9, d8, [sp, #-0x50]!
  1000ece90  stp     x24, x23, [sp, #0x10]
  1000ece94  stp     x22, x21, [sp, #0x20]
  1000ece98  stp     x20, x19, [sp, #0x30]
  1000ece9c  stp     x29, x30, [sp, #0x40]
  1000ecea0  add     x29, sp, #0x40
  1000ecea4  sub     sp, sp, #0x10
  1000ecea8  mov     x22, x2
  1000eceac  mov     x23, x1
  1000eceb0  mov     x20, x0
  1000eceb4  ldr     w19, [x23, #0xc]                         ; w19 = a1[+0xc]
  1000eceb8  ldr     x24, [x20, #0xd0]                        ; x24 = a0[+0xd0]
  1000ecebc  bl      sub_1000e9f34                            ; sub_1000e9f34(a0, a1, a2, a3)
  1000ecec0  ldr     x21, [x20, #0xa8]                        ; x21 = a0[+0xa8]
  1000ecec4  ldr     s0, [x21]                                ; s0 = a0[+0xa8][+0x0]
  1000ecec8  fabs    s1, s0
  1000ececc  fmov    s8, #1.00000000
  1000eced0  fcmp    s1, s8
  1000eced4  b.le    loc_1000ecef8                            ; if (fabs(a0[+0xa8][+0x0]) <= (or unordered) 1)
  1000eced8  fcvt    d0, s0
  1000ecedc  adrp    x8, #0x1003b0000
  1000ecee0  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000ecee4  ldr     x0, [x8]                                 ; x0 = ___stderrp[+0x0]
  1000ecee8  str     d0, [sp]
  1000eceec  adrp    x1, #0x100388000
  1000ecef0  add     x1, x1, #0x737                           ; "Freeverb in: big samp: %.2f\n"
  1000ecef4  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "Freeverb in: big samp: %.2f\n", a0[+0xa8][+0x0])
loc_1000ecef8:
  1000ecef8  cbz     w19, loc_1000ecfd8                       ; if (a1[+0xc] == 0)
  1000ecefc  mov     x8, #0
  1000ecf00  ldp     x9, x10, [x20, #0xd8]
  1000ecf04  ldp     x11, x12, [x20, #0xf0]
loc_1000ecf08:
  1000ecf08  movi    v0.16b, #0
  1000ecf0c  cmp     x9, x10
  1000ecf10  b.eq    loc_1000ecf7c                            ; if (x9 == x10)
  1000ecf14  ldr     s1, [x21, x8, lsl #2]
  1000ecf18  ldr     s2, [x20, #0xcc]                         ; s2 = a0[+0xcc]
  1000ecf1c  fmul    s1, s1, s2
  1000ecf20  mov     x13, x9
loc_1000ecf24:
  1000ecf24  ldr     x14, [x13], #8
  1000ecf28  ldrsw   x15, [x14, #0x1c]
  1000ecf2c  ldr     x16, [x14, #0x10]
  1000ecf30  ldp     s5, s2, [x14, #8]
  1000ecf34  ldr     s3, [x16, x15, lsl #2]
  1000ecf38  fmul    s2, s3, s2
  1000ecf3c  ldr     s4, [x14, #4]
  1000ecf40  fmul    s4, s4, s5
  1000ecf44  fadd    s2, s2, s4
  1000ecf48  str     s2, [x14, #4]
  1000ecf4c  ldr     s4, [x14]
  1000ecf50  fmul    s2, s4, s2
  1000ecf54  fadd    s2, s1, s2
  1000ecf58  add     w17, w15, #1
  1000ecf5c  str     s2, [x16, x15, lsl #2]
  1000ecf60  ldr     w16, [x14, #0x18]
  1000ecf64  cmp     w17, w16
  1000ecf68  csinc   w15, wzr, w15, ge
  1000ecf6c  fadd    s0, s0, s3
  1000ecf70  cmp     x10, x13
  1000ecf74  str     w15, [x14, #0x1c]
  1000ecf78  b.ne    loc_1000ecf24                            ; if (x10 != x13)
loc_1000ecf7c:
  1000ecf7c  cmp     x11, x12
  1000ecf80  mov     x13, x11
  1000ecf84  b.eq    loc_1000ecfc8                            ; if (x11 == x12)
loc_1000ecf88:
  1000ecf88  ldr     x14, [x13], #8
  1000ecf8c  ldrsw   x15, [x14, #0x14]
  1000ecf90  ldr     x16, [x14, #8]
  1000ecf94  ldr     s1, [x16, x15, lsl #2]
  1000ecf98  ldr     s2, [x14]
  1000ecf9c  fmul    s2, s1, s2
  1000ecfa0  fadd    s2, s0, s2
  1000ecfa4  fsub    s0, s1, s0
  1000ecfa8  str     s2, [x16, x15, lsl #2]
  1000ecfac  add     w16, w15, #1
  1000ecfb0  ldr     w17, [x14, #0x10]
  1000ecfb4  cmp     w16, w17
  1000ecfb8  csinc   w15, wzr, w15, ge
  1000ecfbc  str     w15, [x14, #0x14]
  1000ecfc0  cmp     x12, x13
  1000ecfc4  b.ne    loc_1000ecf88                            ; if (x12 != x13)
loc_1000ecfc8:
  1000ecfc8  str     s0, [x24], #4
  1000ecfcc  add     x8, x8, #1
  1000ecfd0  cmp     w8, w19
  1000ecfd4  b.ne    loc_1000ecf08                            ; if ((x8 + 1) != a1[+0xc])
loc_1000ecfd8:
  1000ecfd8  ldr     x8, [x23]                                ; x8 = a1[+0x0]
  1000ecfdc  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ecfe0  mov     x0, x23
  1000ecfe4  mov     x1, x22
  1000ecfe8  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ecfec  mov     x22, x0
  1000ecff0  ldr     x0, [x20, #0xd0]                         ; x0 = a0[+0xd0]
  1000ecff4  add     x2, x20, #0xc0
  1000ecff8  mov     w1, #1
  1000ecffc  mov     w4, #1
  1000ed000  mov     x3, x0
  1000ed004  mov     x5, x19
  1000ed008  bl      _vDSP_vsmul                              ; vDSP_vsmul(a0[+0xd0], 1, (a0 + 192), a0[+0xd0])
  1000ed00c  add     x2, x20, #0xc4
  1000ed010  ldr     x3, [x20, #0xd0]                         ; x3 = a0[+0xd0]
  1000ed014  mov     w1, #1
  1000ed018  mov     w4, #1
  1000ed01c  mov     w6, #1
  1000ed020  mov     x0, x21
  1000ed024  mov     x5, x22
  1000ed028  mov     x7, x19
  1000ed02c  bl      _vDSP_vsma                               ; vDSP_vsma(a0[+0xa8], 1, (a0 + 196), a0[+0xd0])
  1000ed030  ldr     s0, [x22]                                ; s0 = a1[+0x0][+0x20](…)[+0x0]
  1000ed034  fabs    s1, s0
  1000ed038  fcmp    s1, s8
  1000ed03c  b.le    loc_1000ed060                            ; if (fabs(a1[+0x0][+0x20](…)[+0x0]) <= (or unordered) 1)
  1000ed040  fcvt    d0, s0
  1000ed044  adrp    x8, #0x1003b0000
  1000ed048  ldr     x8, [x8, #0x1e0]                         ; ___stderrp
  1000ed04c  ldr     x0, [x8]                                 ; x0 = ___stderrp[+0x0]
  1000ed050  str     d0, [sp]
  1000ed054  adrp    x1, #0x100388000
  1000ed058  add     x1, x1, #0x754                           ; "Freeverb out: big samp: %.2f\n"
  1000ed05c  bl      _fprintf                                 ; fprintf(___stderrp[+0x0], "Freeverb out: big samp: %.2f\n", a1[+0x0][+0x20](…)[+0x0])
loc_1000ed060:
  1000ed060  sub     sp, x29, #0x40
  1000ed064  ldp     x29, x30, [sp, #0x40]
  1000ed068  ldp     x20, x19, [sp, #0x30]
  1000ed06c  ldp     x22, x21, [sp, #0x20]
  1000ed070  ldp     x24, x23, [sp, #0x10]
  1000ed074  ldp     d9, d8, [sp], #0x50
  1000ed078  ret
  1000ed07c  tbz     w1, 0x1f, loc_1000ed084                  ; if (w1 >= 0)
  1000ed080  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ed084:
  1000ed084  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000ed088
; address 0x1000ed088  size 580  kind sub
; ======================================================================
  1000ed088  stp     x22, x21, [sp, #-0x30]!
  1000ed08c  stp     x20, x19, [sp, #0x10]
  1000ed090  stp     x29, x30, [sp, #0x20]
  1000ed094  add     x29, sp, #0x20
  1000ed098  mov     x21, x1
  1000ed09c  mov     x20, x0
  1000ed0a0  add     x19, x20, #0xd8
  1000ed0a4  mov     x0, x19
  1000ed0a8  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 216), a1, a2, a3)
  1000ed0ac  adrp    x8, #0x1003b5000
  1000ed0b0  add     x8, x8, #0x5f0                           ; &d_1003b55f0
  1000ed0b4  add     x1, x8, #8                               ; &d_1003b55f8
  1000ed0b8  mov     x0, x20
  1000ed0bc  bl      sub_1000e9df0                            ; sub_1000e9df0(a0, &d_1003b55f8)
  1000ed0c0  adrp    x8, #0x1003b5000
  1000ed0c4  add     x8, x8, #0x520                           ; &d_1003b5520
  1000ed0c8  add     x9, x8, #0x18                            ; vtable<csl::Stereoverb>
  1000ed0cc  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::Stereoverb>
  1000ed0d0  add     x8, x8, #0xb0                            ; vtable<csl::Stereoverb (secondary, -0xd8)>
  1000ed0d4  str     x8, [x20, #0xd8]                         ; a0[+0xd8] = vtable<csl::Stereoverb (secondary, -0xd8)>
  1000ed0d8  mov     w0, #0x160
  1000ed0dc  bl      __Znwm                                   ; Znwm(352)
  1000ed0e0  mov     x22, x0
  1000ed0e4  mov     x0, x22
  1000ed0e8  mov     x1, x21
  1000ed0ec  bl      sub_1000ea57c                            ; sub_1000ea57c(Znwm(352), a1)
  1000ed0f0  str     x22, [x20, #0xc0]                        ; a0[+0xc0] = Znwm(352)
  1000ed0f4  mov     w0, #0x188
  1000ed0f8  bl      __Znwm                                   ; Znwm(392)
  1000ed0fc  mov     x21, x0
  1000ed100  mov     x0, x21
  1000ed104  mov     x1, x22
  1000ed108  bl      sub_1000ecb64                            ; sub_1000ecb64(Znwm(392), Znwm(352))
  1000ed10c  str     x21, [x20, #0xb0]                        ; a0[+0xb0] = Znwm(392)
  1000ed110  mov     w10, #0x3f000000
  1000ed114  str     w10, [x21, #0xc0]                        ; Znwm(392)[+0xc0] = 0x3f000000
  1000ed118  ldp     x8, x9, [x21, #0xd8]
  1000ed11c  cmp     x8, x9
  1000ed120  b.eq    loc_1000ed18c                            ; if (x8 == x9)
  1000ed124  ldp     s1, s2, [x21, #0xb8]
  1000ed128  fmov    s0, #1.00000000
  1000ed12c  fsub    s3, s0, s2
  1000ed130  mov     x10, x8
loc_1000ed134:
  1000ed134  ldr     x11, [x10], #8
  1000ed138  str     s1, [x11]
  1000ed13c  str     s2, [x11, #8]
  1000ed140  str     s3, [x11, #0xc]
  1000ed144  cmp     x9, x10
  1000ed148  b.ne    loc_1000ed134                            ; if (x9 != x10)
  1000ed14c  mov     w10, #0x3f000000
  1000ed150  str     w10, [x21, #0xc4]                        ; Znwm(392)[+0xc4] = 0x3f000000
  1000ed154  mov     w10, #0x3ebd0000
  1000ed158  movk    w10, #0x70a4
  1000ed15c  str     w10, [x21, #0xb8]                        ; Znwm(392)[+0xb8] = 0x3ebd70a4
  1000ed160  cmp     x8, x9
  1000ed164  b.eq    loc_1000ed19c                            ; if (x8 == x9)
  1000ed168  ldr     s1, [x21, #0xbc]                         ; s1 = Znwm(392)[+0xbc]
  1000ed16c  fsub    s0, s0, s1
loc_1000ed170:
  1000ed170  ldr     x11, [x8], #8
  1000ed174  str     w10, [x11]
  1000ed178  str     s1, [x11, #8]
  1000ed17c  str     s0, [x11, #0xc]
  1000ed180  cmp     x9, x8
  1000ed184  b.ne    loc_1000ed170                            ; if (x9 != x8)
  1000ed188  b       loc_1000ed19c
loc_1000ed18c:
  1000ed18c  str     w10, [x21, #0xc4]                        ; Znwm(392)[+0xc4] = 0x3f000000
  1000ed190  mov     w8, #0x3ebd0000
  1000ed194  movk    w8, #0x70a4
  1000ed198  str     w8, [x21, #0xb8]                         ; Znwm(392)[+0xb8] = 0x3ebd70a4
loc_1000ed19c:
  1000ed19c  mov     w0, #0x188
  1000ed1a0  bl      __Znwm                                   ; Znwm(392)
  1000ed1a4  mov     x21, x0
  1000ed1a8  ldr     x1, [x20, #0xc0]                         ; x1 = a0[+0xc0]
  1000ed1ac  mov     x0, x21
  1000ed1b0  bl      sub_1000ecb64                            ; sub_1000ecb64(Znwm(392), a0[+0xc0])
  1000ed1b4  str     x21, [x20, #0xb8]                        ; a0[+0xb8] = Znwm(392)
  1000ed1b8  mov     w10, #0x3f000000
  1000ed1bc  str     w10, [x21, #0xc0]                        ; Znwm(392)[+0xc0] = 0x3f000000
  1000ed1c0  ldp     x8, x9, [x21, #0xd8]
  1000ed1c4  cmp     x8, x9
  1000ed1c8  b.eq    loc_1000ed234                            ; if (x8 == x9)
  1000ed1cc  ldp     s1, s2, [x21, #0xb8]
  1000ed1d0  fmov    s0, #1.00000000
  1000ed1d4  fsub    s3, s0, s2
  1000ed1d8  mov     x10, x8
loc_1000ed1dc:
  1000ed1dc  ldr     x11, [x10], #8
  1000ed1e0  str     s1, [x11]
  1000ed1e4  str     s2, [x11, #8]
  1000ed1e8  str     s3, [x11, #0xc]
  1000ed1ec  cmp     x9, x10
  1000ed1f0  b.ne    loc_1000ed1dc                            ; if (x9 != x10)
  1000ed1f4  mov     w10, #0x3f000000
  1000ed1f8  str     w10, [x21, #0xc4]                        ; Znwm(392)[+0xc4] = 0x3f000000
  1000ed1fc  mov     w10, #0x3ebd0000
  1000ed200  movk    w10, #0x70a4
  1000ed204  str     w10, [x21, #0xb8]                        ; Znwm(392)[+0xb8] = 0x3ebd70a4
  1000ed208  cmp     x8, x9
  1000ed20c  b.eq    loc_1000ed244                            ; if (x8 == x9)
  1000ed210  ldr     s1, [x21, #0xbc]                         ; s1 = Znwm(392)[+0xbc]
  1000ed214  fsub    s0, s0, s1
loc_1000ed218:
  1000ed218  ldr     x11, [x8], #8
  1000ed21c  str     w10, [x11]
  1000ed220  str     s1, [x11, #8]
  1000ed224  str     s0, [x11, #0xc]
  1000ed228  cmp     x9, x8
  1000ed22c  b.ne    loc_1000ed218                            ; if (x9 != x8)
  1000ed230  b       loc_1000ed244
loc_1000ed234:
  1000ed234  str     w10, [x21, #0xc4]                        ; Znwm(392)[+0xc4] = 0x3f000000
  1000ed238  mov     w8, #0x3ebd0000
  1000ed23c  movk    w8, #0x70a4
  1000ed240  str     w8, [x21, #0xb8]                         ; Znwm(392)[+0xb8] = 0x3ebd70a4
loc_1000ed244:
  1000ed244  mov     w0, #0x120
  1000ed248  bl      __Znwm                                   ; Znwm(288)
  1000ed24c  mov     x22, x0
  1000ed250  ldr     x1, [x20, #0xb0]                         ; x1 = a0[+0xb0]
  1000ed254  mov     x0, x22
  1000ed258  mov     x2, x21
  1000ed25c  bl      sub_1000ea94c                            ; sub_1000ea94c(Znwm(288), a0[+0xb0], Znwm(392))
  1000ed260  str     x22, [x20, #0xc8]                        ; a0[+0xc8] = Znwm(288)
  1000ed264  strb    wzr, [x20, #0xd0]                        ; a0[+0xd0] = 0
  1000ed268  mov     x0, x20
  1000ed26c  ldp     x29, x30, [sp, #0x20]
  1000ed270  ldp     x20, x19, [sp, #0x10]
  1000ed274  ldp     x22, x21, [sp], #0x30
  1000ed278  ret
  1000ed27c  mov     x22, x0
  1000ed280  b       loc_1000ed2b0
  1000ed284  mov     x22, x0
  1000ed288  b       loc_1000ed2b8
  1000ed28c  b       loc_1000ed2a0
  1000ed290  b       loc_1000ed294
loc_1000ed294:
  1000ed294  mov     x22, x0
  1000ed298  mov     x0, x21
  1000ed29c  b       loc_1000ed2ac
loc_1000ed2a0:
  1000ed2a0  mov     x8, x22
  1000ed2a4  mov     x22, x0
  1000ed2a8  mov     x0, x8
loc_1000ed2ac:
  1000ed2ac  bl      __ZdlPv                                  ; ZdlPv()
loc_1000ed2b0:
  1000ed2b0  mov     x0, x20
  1000ed2b4  bl      sub_1000e8918
loc_1000ed2b8:
  1000ed2b8  mov     x0, x19
  1000ed2bc  bl      sub_1000e9388
  1000ed2c0  mov     x0, x22
  1000ed2c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ed2c8  bl      sub_10000b760

; ======================================================================
; sub_1000ed2cc
; address 0x1000ed2cc  size 164  kind sub
; ======================================================================
  1000ed2cc  stp     x20, x19, [sp, #-0x20]!
  1000ed2d0  stp     x29, x30, [sp, #0x10]
  1000ed2d4  add     x29, sp, #0x10
  1000ed2d8  mov     x19, x0
  1000ed2dc  ldr     x8, [x1]                                 ; x8 = a1[+0x0]
  1000ed2e0  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000ed2e4  ldr     x9, [x1, #0x18]                          ; x9 = a1[+0x18]
  1000ed2e8  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000ed2ec  str     x9, [x19, x8]
  1000ed2f0  ldr     x0, [x19, #0xc0]                         ; x0 = a0[+0xc0]
  1000ed2f4  cbz     x0, loc_1000ed304                        ; if (a0[+0xc0] == 0)
  1000ed2f8  ldr     x8, [x0]                                 ; x8 = a0[+0xc0][+0x0]
  1000ed2fc  ldr     x8, [x8, #8]                             ; x8 = a0[+0xc0][+0x0][+0x8]
  1000ed300  blr     x8                                       ; call a0[+0xc0][+0x0][+0x8]
loc_1000ed304:
  1000ed304  ldr     x0, [x19, #0xb0]                         ; x0 = a0[+0xb0]
  1000ed308  cbz     x0, loc_1000ed318                        ; if (a0[+0xb0] == 0)
  1000ed30c  ldr     x8, [x0]                                 ; x8 = a0[+0xb0][+0x0]
  1000ed310  ldr     x8, [x8, #8]                             ; x8 = a0[+0xb0][+0x0][+0x8]
  1000ed314  blr     x8                                       ; call a0[+0xb0][+0x0][+0x8]
loc_1000ed318:
  1000ed318  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000ed31c  cbz     x0, loc_1000ed32c                        ; if (a0[+0xb8] == 0)
  1000ed320  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000ed324  ldr     x8, [x8, #8]                             ; x8 = a0[+0xb8][+0x0][+0x8]
  1000ed328  blr     x8                                       ; call a0[+0xb8][+0x0][+0x8]
loc_1000ed32c:
  1000ed32c  ldr     x0, [x19, #0xc8]                         ; x0 = a0[+0xc8]
  1000ed330  cbz     x0, loc_1000ed340                        ; if (a0[+0xc8] == 0)
  1000ed334  ldr     x8, [x0]                                 ; x8 = a0[+0xc8][+0x0]
  1000ed338  ldr     x8, [x8, #8]                             ; x8 = a0[+0xc8][+0x0][+0x8]
  1000ed33c  blr     x8                                       ; call a0[+0xc8][+0x0][+0x8]
loc_1000ed340:
  1000ed340  mov     x0, x19
  1000ed344  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000ed348  mov     x0, x19
  1000ed34c  ldp     x29, x30, [sp, #0x10]
  1000ed350  ldp     x20, x19, [sp], #0x20
  1000ed354  ret
  1000ed358  mov     x20, x0
  1000ed35c  mov     x0, x19
  1000ed360  bl      sub_1000e8918
  1000ed364  mov     x0, x20
  1000ed368  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ed36c  bl      sub_10000b760
