// unit csl_SimplePanner — 7 functions
//   0x1000efd88      36  csl::SimplePanner::~SimplePanner
//   0x1000efdac       8  csl::SimplePanner::thunk_vfunc_0
//   0x1000efdb4      56  csl::SimplePanner::~SimplePanner/*deleting*/
//   0x1000efdec       8  csl::SimplePanner::thunk_vfunc_1
//   0x1000efdf4     152  csl::SimplePanner::vfunc_14
//   0x1000efe8c     252  csl::SimplePanner::vfunc_15
//   0x1000eff88     480  csl::SimplePanner::vfunc_4

; ======================================================================
; csl::SimplePanner::~SimplePanner
; address 0x1000efd88  size 36  kind cxx
; ======================================================================
  1000efd88  stp     x20, x19, [sp, #-0x20]!
  1000efd8c  stp     x29, x30, [sp, #0x10]
  1000efd90  add     x29, sp, #0x10
  1000efd94  mov     x19, x0
  1000efd98  bl      sub_1000efbbc                            ; sub_1000efbbc(a0, a1, a2, a3)
  1000efd9c  mov     x0, x19
  1000efda0  ldp     x29, x30, [sp, #0x10]
  1000efda4  ldp     x20, x19, [sp], #0x20
  1000efda8  ret

; ======================================================================
; csl::SimplePanner::thunk_vfunc_0
; address 0x1000efdac  size 8  kind cxx
; ======================================================================
  1000efdac  sub     x0, x0, #0xa8
  1000efdb0  b       sub_1000efbbc                            ; sub_1000efbbc((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::SimplePanner::~SimplePanner/*deleting*/
; address 0x1000efdb4  size 56  kind cxx
; ======================================================================
  1000efdb4  stp     x20, x19, [sp, #-0x20]!
  1000efdb8  stp     x29, x30, [sp, #0x10]
  1000efdbc  add     x29, sp, #0x10
  1000efdc0  mov     x19, x0
  1000efdc4  bl      sub_1000efbbc                            ; sub_1000efbbc(a0, a1, a2, a3)
  1000efdc8  mov     x0, x19
  1000efdcc  ldp     x29, x30, [sp, #0x10]
  1000efdd0  ldp     x20, x19, [sp], #0x20
  1000efdd4  b       __ZdlPv                                  ; ZdlPv(a0)
  1000efdd8  mov     x20, x0
  1000efddc  mov     x0, x19
  1000efde0  bl      __ZdlPv                                  ; ZdlPv()
  1000efde4  mov     x0, x20
  1000efde8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::SimplePanner::thunk_vfunc_1
; address 0x1000efdec  size 8  kind cxx
; ======================================================================
  1000efdec  sub     x0, x0, #0xa8
  1000efdf0  b       csl::SimplePanner::~SimplePanner/*deleting*/ ; csl::SimplePanner::~SimplePanner/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::SimplePanner::vfunc_14
; address 0x1000efdf4  size 152  kind cxx
; ======================================================================
  1000efdf4  stp     x22, x21, [sp, #-0x30]!
  1000efdf8  stp     x20, x19, [sp, #0x10]
  1000efdfc  stp     x29, x30, [sp, #0x20]
  1000efe00  add     x29, sp, #0x20
  1000efe04  sub     sp, sp, #0x10
  1000efe08  mov     x21, x1
  1000efe0c  mov     x19, x0
  1000efe10  add     x0, x19, #0xb8
  1000efe14  str     x21, [sp, #8]
  1000efe18  add     x1, sp, #8
  1000efe1c  bl      __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_((a0 + 184), &sp[0x8], a2, a3)
  1000efe20  mov     w0, #0x128
  1000efe24  bl      __Znwm                                   ; Znwm(296)
  1000efe28  mov     x20, x0
  1000efe2c  mov     x1, x21
  1000efe30  bl      sub_1000ee52c                            ; sub_1000ee52c(Znwm(296), a1)
  1000efe34  add     x0, x19, #0xed0
  1000efe38  str     x20, [sp]
  1000efe3c  mov     x1, sp
  1000efe40  bl      __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_((a0 + 3792), &sp[0x0])
  1000efe44  add     x0, x19, #0x128
  1000efe48  mov     x1, x20
  1000efe4c  bl      sub_1000edda8                            ; sub_1000edda8((a0 + 296), Znwm(296))
  1000efe50  add     x0, x19, #0x2b8
  1000efe54  mov     x1, x20
  1000efe58  bl      sub_1000edda8                            ; sub_1000edda8((a0 + 696), Znwm(296))
  1000efe5c  add     x0, x19, #0x448
  1000efe60  mov     x1, x20
  1000efe64  sub     sp, x29, #0x20
  1000efe68  ldp     x29, x30, [sp, #0x20]
  1000efe6c  ldp     x20, x19, [sp, #0x10]
  1000efe70  ldp     x22, x21, [sp], #0x30
  1000efe74  b       sub_1000edda8                            ; sub_1000edda8((a0 + 1096), Znwm(296))
  1000efe78  mov     x19, x0
  1000efe7c  mov     x0, x20
  1000efe80  bl      __ZdlPv                                  ; ZdlPv()
  1000efe84  mov     x0, x19
  1000efe88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::SimplePanner::vfunc_15
; address 0x1000efe8c  size 252  kind cxx
; ======================================================================
  1000efe8c  stp     x22, x21, [sp, #-0x30]!
  1000efe90  stp     x20, x19, [sp, #0x10]
  1000efe94  stp     x29, x30, [sp, #0x20]
  1000efe98  add     x29, sp, #0x20
  1000efe9c  mov     x19, x0
  1000efea0  ldp     x8, x9, [x19, #0xb8]
  1000efea4  subs    x9, x9, x8
  1000efea8  b.eq    loc_1000eff78                            ; if (x9 == x8)
  1000efeac  mov     x21, #0
  1000efeb0  mov     w10, #1
loc_1000efeb4:
  1000efeb4  ldr     x11, [x8, x21, lsl #3]
  1000efeb8  cmp     x11, x1
  1000efebc  b.eq    loc_1000efed4                            ; if (x11 == a1)
  1000efec0  ubfx    x21, x10, #0, #0x20
  1000efec4  add     w10, w10, #1
  1000efec8  cmp     x21, x9, asr #3
  1000efecc  b.lo    loc_1000efeb4                            ; if (x21 <u ((x9 - x8) >> 3))
  1000efed0  b       loc_1000eff78
loc_1000efed4:
  1000efed4  ldr     x8, [x19, #0xed0]                        ; x8 = a0[+0xed0]
  1000efed8  ldr     x20, [x8, x21, lsl #3]
  1000efedc  add     x0, x19, #0x128
  1000efee0  mov     x1, x20
  1000efee4  bl      sub_1000ede4c                            ; sub_1000ede4c((a0 + 296), x1, a2, a3)
  1000efee8  add     x0, x19, #0x2b8
  1000efeec  mov     x1, x20
  1000efef0  bl      sub_1000ede4c                            ; sub_1000ede4c((a0 + 696))
  1000efef4  add     x0, x19, #0x448
  1000efef8  mov     x1, x20
  1000efefc  bl      sub_1000ede4c                            ; sub_1000ede4c((a0 + 1096))
  1000eff00  ldp     x9, x8, [x19, #0xb8]
  1000eff04  add     x22, x21, #1
  1000eff08  add     x1, x9, x22, lsl #3
  1000eff0c  cmp     x1, x8
  1000eff10  b.eq    loc_1000eff24                            ; if ((x9 + ((x21 + 1) << 3)) == x8)
  1000eff14  add     x0, x9, x21, lsl #3
  1000eff18  sub     x2, x8, x1
  1000eff1c  bl      _memmove                                 ; memmove((x9 + (x21 << 3)), (x9 + ((x21 + 1) << 3)), (x8 - (x9 + ((x21 + 1) << 3))))
  1000eff20  ldr     x1, [x19, #0xc0]                         ; x1 = a0[+0xc0]
loc_1000eff24:
  1000eff24  sub     x8, x1, #8
  1000eff28  str     x8, [x19, #0xc0]                         ; a0[+0xc0] = (x1 - 8)
  1000eff2c  ldr     x8, [x19, #0xed0]                        ; x8 = a0[+0xed0]
  1000eff30  add     x1, x8, x22, lsl #3
  1000eff34  ldr     x9, [x19, #0xed8]                        ; x9 = a0[+0xed8]
  1000eff38  cmp     x1, x9
  1000eff3c  b.eq    loc_1000eff50                            ; if ((a0[+0xed0] + ((x21 + 1) << 3)) == a0[+0xed8])
  1000eff40  add     x0, x8, x21, lsl #3
  1000eff44  sub     x2, x9, x1
  1000eff48  bl      _memmove                                 ; memmove((a0[+0xed0] + (x21 << 3)), (a0[+0xed0] + ((x21 + 1) << 3)), (a0[+0xed8] - (a0[+0xed0] + ((x21 + 1) << 3))))
  1000eff4c  ldr     x1, [x19, #0xed8]                        ; x1 = a0[+0xed8]
loc_1000eff50:
  1000eff50  sub     x8, x1, #8
  1000eff54  str     x8, [x19, #0xed8]                        ; a0[+0xed8] = (x1 - 8)
  1000eff58  cbz     x20, loc_1000eff78                       ; if (x20 == 0)
  1000eff5c  ldr     x8, [x20]
  1000eff60  ldr     x1, [x8, #8]
  1000eff64  mov     x0, x20
  1000eff68  ldp     x29, x30, [sp, #0x20]
  1000eff6c  ldp     x20, x19, [sp, #0x10]
  1000eff70  ldp     x22, x21, [sp], #0x30
  1000eff74  br      x1
loc_1000eff78:
  1000eff78  ldp     x29, x30, [sp, #0x20]
  1000eff7c  ldp     x20, x19, [sp, #0x10]
  1000eff80  ldp     x22, x21, [sp], #0x30
  1000eff84  ret

; ======================================================================
; csl::SimplePanner::vfunc_4
; address 0x1000eff88  size 480  kind cxx
; ======================================================================
  1000eff88  stp     d15, d14, [sp, #-0x90]!
  1000eff8c  stp     d13, d12, [sp, #0x10]
  1000eff90  stp     d11, d10, [sp, #0x20]
  1000eff94  stp     d9, d8, [sp, #0x30]
  1000eff98  stp     x26, x25, [sp, #0x40]
  1000eff9c  stp     x24, x23, [sp, #0x50]
  1000effa0  stp     x22, x21, [sp, #0x60]
  1000effa4  stp     x20, x19, [sp, #0x70]
  1000effa8  stp     x29, x30, [sp, #0x80]
  1000effac  add     x29, sp, #0x80
  1000effb0  mov     x19, x1
  1000effb4  mov     x20, x0
  1000effb8  ldp     x8, x9, [x20, #0xb8]
  1000effbc  cmp     x9, x8
  1000effc0  b.eq    loc_1000f0130                            ; if (x9 == x8)
  1000effc4  mov     x25, #0
  1000effc8  mov     w24, #0
  1000effcc  add     x21, x20, #0x448
  1000effd0  add     x22, x20, #0x2b8
  1000effd4  add     x23, x20, #0x128
  1000effd8  adrp    x9, #0x1002fa000
  1000effdc  ldr     s9, [x9, #0x9f0]                         ; s9 = 6.28318548
  1000effe0  fmov    s10, #1.00000000
  1000effe4  fmov    s11, #-1.00000000
  1000effe8  fmov    s12, #0.50000000
  1000effec  fmov    s13, #4.00000000
  1000efff0  fmov    d14, #1.00000000
loc_1000efff4:
  1000efff4  ldr     x8, [x8, x25, lsl #3]
  1000efff8  ldr     x0, [x8, #0xa8]
  1000efffc  bl      sub_1000ef15c
  1000f0000  fdiv    s15, s0, s9
  1000f0004  b       loc_1000f000c
loc_1000f0008:
  1000f0008  fadd    s15, s15, s10
loc_1000f000c:
  1000f000c  fcmp    s15, #0.0
  1000f0010  b.mi    loc_1000f0008                            ; if (s15 < 0.0)
  1000f0014  b       loc_1000f001c
loc_1000f0018:
  1000f0018  fadd    s15, s15, s11
loc_1000f001c:
  1000f001c  fcmp    s15, s10
  1000f0020  b.gt    loc_1000f0018                            ; if (s15 > 1)
  1000f0024  fcmp    s15, s12
  1000f0028  mov     v0.16b, v15.16b
  1000f002c  b.le    loc_1000f0034                            ; if (s15 <= (or unordered) 0.5)
  1000f0030  fsub    s0, s10, s15
loc_1000f0034:
  1000f0034  fmul    s0, s0, s13
  1000f0038  fadd    s0, s0, s11
  1000f003c  ldr     x8, [x20, #0xed0]                        ; x8 = a0[+0xed0]
  1000f0040  ldr     x0, [x8, x25, lsl #3]
  1000f0044  bl      sub_1000ee7f8
  1000f0048  ldr     x8, [x20, #0xb8]                         ; x8 = a0[+0xb8]
  1000f004c  ldr     x8, [x8, x25, lsl #3]
  1000f0050  ldr     x8, [x8, #0xa8]
  1000f0054  ldp     s0, s1, [x8, #4]
  1000f0058  fmul    s0, s0, s0
  1000f005c  fmul    s1, s1, s1
  1000f0060  fadd    s0, s0, s1
  1000f0064  ldr     s1, [x8, #0xc]
  1000f0068  fmul    s1, s1, s1
  1000f006c  fadd    s0, s0, s1
  1000f0070  fsqrt   s0, s0
  1000f0074  fcvt    d0, s0
  1000f0078  fsqrt   d0, d0
  1000f007c  fdiv    d0, d14, d0
  1000f0080  fcvt    s8, d0
  1000f0084  ldr     x8, [x20, #0xed0]                        ; x8 = a0[+0xed0]
  1000f0088  ldr     x1, [x8, x25, lsl #3]
  1000f008c  fsub    s0, s10, s8
  1000f0090  mov     x0, x21
  1000f0094  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 1096))
  1000f0098  fcmp    s15, s12
  1000f009c  b.pl    loc_1000f00cc                            ; if (s15 >= (or unordered) 0.5)
  1000f00a0  ldr     x8, [x20, #0xed0]                        ; x8 = a0[+0xed0]
  1000f00a4  ldr     x1, [x8, x25, lsl #3]
  1000f00a8  movi    v0.16b, #0
  1000f00ac  mov     x0, x22
  1000f00b0  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 696))
  1000f00b4  ldr     x8, [x20, #0xed0]                        ; x8 = a0[+0xed0]
  1000f00b8  ldr     x1, [x8, x25, lsl #3]
  1000f00bc  mov     x0, x23
  1000f00c0  mov     v0.16b, v8.16b
  1000f00c4  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 296))
  1000f00c8  b       loc_1000f010c
loc_1000f00cc:
  1000f00cc  fmov    s0, #0.75000000
  1000f00d0  fsub    s0, s0, s15
  1000f00d4  fabs    s0, s0
  1000f00d8  fmul    s15, s0, s13
  1000f00dc  ldr     x8, [x20, #0xed0]                        ; x8 = a0[+0xed0]
  1000f00e0  ldr     x1, [x8, x25, lsl #3]
  1000f00e4  fmov    s0, #1.50000000
  1000f00e8  fsub    s0, s0, s15
  1000f00ec  fmul    s0, s8, s0                               ; t1 = ((1 / sqrt(sqrt((((s0 * s0) + (s1 * s1)) + (s1 * s1))))) * (1.5 - (fabs((0.75 - s15)) * 4)))
  1000f00f0  mov     x0, x22
  1000f00f4  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 696))
  1000f00f8  ldr     x8, [x20, #0xed0]                        ; x8 = a0[+0xed0]
  1000f00fc  ldr     x1, [x8, x25, lsl #3]
  1000f0100  fmul    s0, s8, s15
  1000f0104  mov     x0, x23
  1000f0108  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 296))
loc_1000f010c:
  1000f010c  add     w25, w24, #1
  1000f0110  ldp     x8, x9, [x20, #0xb8]
  1000f0114  sub     x9, x9, x8
  1000f0118  cmp     x25, x9, asr #3
  1000f011c  mov     x24, x25
  1000f0120  b.lo    loc_1000efff4                            ; if ((w24 + 1) <u ((x9 - x8) >> 3))
  1000f0124  add     x0, x20, #0xd40
  1000f0128  mov     x1, x19
  1000f012c  bl      csl::Mixer::vfunc_4                      ; csl::Mixer::vfunc_4((a0 + 3392), a1)
loc_1000f0130:
  1000f0130  ldp     x29, x30, [sp, #0x80]
  1000f0134  ldp     x20, x19, [sp, #0x70]
  1000f0138  ldp     x22, x21, [sp, #0x60]
  1000f013c  ldp     x24, x23, [sp, #0x50]
  1000f0140  ldp     x26, x25, [sp, #0x40]
  1000f0144  ldp     d9, d8, [sp, #0x30]
  1000f0148  ldp     d11, d10, [sp, #0x20]
  1000f014c  ldp     d13, d12, [sp, #0x10]
  1000f0150  ldp     d15, d14, [sp], #0x90
  1000f0154  ret
loc_1000f0158:
  1000f0158  tbz     w1, 0x1f, loc_1000f0160                  ; if (w1 >= 0)
  1000f015c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f0160:
  1000f0160  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f0164  b       loc_1000f0158
