// unit csl_AirAbsorptionCue — 4 functions
//   0x1000ef7e8       4  csl::AirAbsorptionCue::~AirAbsorptionCue
//   0x1000ef7ec       4  csl::AirAbsorptionCue::~AirAbsorptionCue/*deleting*/
//   0x1000ef7f0     112  csl::AirAbsorptionCue::vfunc_2
//   0x1000ef860     120  csl::AirAbsorptionCue::vfunc_3

; ======================================================================
; csl::AirAbsorptionCue::~AirAbsorptionCue
; address 0x1000ef7e8  size 4  kind cxx
; ======================================================================
  1000ef7e8  ret

; ======================================================================
; csl::AirAbsorptionCue::~AirAbsorptionCue/*deleting*/
; address 0x1000ef7ec  size 4  kind cxx
; ======================================================================
  1000ef7ec  b       __ZdlPv                                  ; ZdlPv(a0, a1, a2, a3)

; ======================================================================
; csl::AirAbsorptionCue::vfunc_2
; address 0x1000ef7f0  size 112  kind cxx
; ======================================================================
  1000ef7f0  stp     d9, d8, [sp, #-0x30]!
  1000ef7f4  stp     x20, x19, [sp, #0x10]
  1000ef7f8  stp     x29, x30, [sp, #0x20]
  1000ef7fc  add     x29, sp, #0x20
  1000ef800  mov     v8.16b, v0.16b
  1000ef804  mov     x19, x0
  1000ef808  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000ef80c  nop
  1000ef810  ldr     s0, #0x1001820d0                         ; s0 = 198000.0
  1000ef814  fdiv    s0, s0, s8
  1000ef818  ucvtf   d1, w0
  1000ef81c  fadd    d1, d1, d1
  1000ef820  fcvt    s1, d1
  1000ef824  adrp    x8, #0x1002fa000
  1000ef828  ldr     s2, [x8, #0x9f0]                         ; s2 = 6.28318548
  1000ef82c  fmul    s0, s0, s2
  1000ef830  fadd    s2, s0, s1                               ; t1 = (((198000 / s8) * 6.28319) + ((float)sub_1000e732c(a0, a1, a2, a3) + (float)sub_1000e732c(a0, a1, a2, a3)))
  1000ef834  fmov    s3, #1.00000000
  1000ef838  fdiv    s2, s3, s2
  1000ef83c  fsub    s1, s1, s0                               ; t2 = (((float)sub_1000e732c(a0, a1, a2, a3) + (float)sub_1000e732c(a0, a1, a2, a3)) - ((198000 / s8) * 6.28319))
  1000ef840  fmul    s1, s2, s1
  1000ef844  str     s1, [x19, #8]                            ; a0[+0x8] = ((1 / t1) * t2)
  1000ef848  fmul    s0, s0, s2
  1000ef84c  stp     s0, s0, [x19, #0xc]
  1000ef850  ldp     x29, x30, [sp, #0x20]
  1000ef854  ldp     x20, x19, [sp, #0x10]
  1000ef858  ldp     d9, d8, [sp], #0x30
  1000ef85c  ret

; ======================================================================
; csl::AirAbsorptionCue::vfunc_3
; address 0x1000ef860  size 120  kind cxx
; ======================================================================
  1000ef860  stp     x20, x19, [sp, #-0x20]!
  1000ef864  stp     x29, x30, [sp, #0x10]
  1000ef868  add     x29, sp, #0x10
  1000ef86c  mov     x20, x1
  1000ef870  mov     x19, x0
  1000ef874  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ef878  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ef87c  mov     w1, #0
  1000ef880  mov     x0, x20
  1000ef884  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ef888  ldr     w8, [x20, #0xc]                          ; w8 = a1[+0xc]
  1000ef88c  cbz     w8, loc_1000ef8cc                        ; if (a1[+0xc] == 0)
loc_1000ef890:
  1000ef890  ldr     s0, [x0]                                 ; s0 = a1[+0x0][+0x20](…)[+0x0]
  1000ef894  ldp     s3, s1, [x19, #0x14]
  1000ef898  ldp     s4, s2, [x19, #0xc]
  1000ef89c  fmul    s1, s1, s2
  1000ef8a0  ldr     s2, [x19, #8]                            ; s2 = a0[+0x8]
  1000ef8a4  fmul    s0, s0, s4
  1000ef8a8  fadd    s0, s0, s1
  1000ef8ac  fmul    s1, s3, s2
  1000ef8b0  fadd    s0, s0, s1
  1000ef8b4  str     s0, [x19, #0x14]                         ; a0[+0x14] = (((a1[+0x0][+0x20](…)[+0x0] * s4) + (s1 * s2)) + (s3 * a0[+0x8]))
  1000ef8b8  ldr     s1, [x0]                                 ; s1 = a1[+0x0][+0x20](…)[+0x0]
  1000ef8bc  str     s1, [x19, #0x18]                         ; a0[+0x18] = a1[+0x0][+0x20](…)[+0x0]
  1000ef8c0  str     s0, [x0], #4
  1000ef8c4  sub     w8, w8, #1
  1000ef8c8  cbnz    w8, loc_1000ef890                        ; if ((w8 - 1) != 0)
loc_1000ef8cc:
  1000ef8cc  ldp     x29, x30, [sp, #0x10]
  1000ef8d0  ldp     x20, x19, [sp], #0x20
  1000ef8d4  ret
