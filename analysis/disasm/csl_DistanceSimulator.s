// unit csl_DistanceSimulator — 11 functions
//   0x1000ef460     116  csl::DistanceSimulator::~DistanceSimulator
//   0x1000ef4d4      16  csl::DistanceSimulator::thunk_vfunc_0
//   0x1000ef4e4      16  csl::DistanceSimulator::thunk_vfunc_0
//   0x1000ef4f4      56  csl::DistanceSimulator::~DistanceSimulator/*deleting*/
//   0x1000ef52c      16  csl::DistanceSimulator::thunk_vfunc_1
//   0x1000ef53c      16  csl::DistanceSimulator::thunk_vfunc_1
//   0x1000ef54c      32  csl::DistanceSimulator::vfunc_19
//   0x1000ef56c     252  csl::DistanceSimulator::vfunc_5
//   0x1000ef668     124  csl::DistanceSimulator::vfunc_12
//   0x1000ef6e4     136  csl::DistanceSimulator::thunk_vfunc_3
//   0x1000ef76c      20  sub_1000ef76c

; ======================================================================
; csl::DistanceSimulator::~DistanceSimulator
; address 0x1000ef460  size 116  kind cxx
; ======================================================================
  1000ef460  stp     x20, x19, [sp, #-0x20]!
  1000ef464  stp     x29, x30, [sp, #0x10]
  1000ef468  add     x29, sp, #0x10
  1000ef46c  mov     x19, x0
  1000ef470  adrp    x20, #0x1003b5000
  1000ef474  add     x20, x20, #0xf00                         ; &d_1003b5f00
  1000ef478  mov     x1, x20
  1000ef47c  bl      sub_1000ef3c0                            ; sub_1000ef3c0(a0, &d_1003b5f00, a2, a3)
  1000ef480  add     x0, x19, #0xd0
  1000ef484  add     x1, x20, #0x30                           ; &d_1003b5f30
  1000ef488  bl      sub_1000e9c44                            ; sub_1000e9c44((a0 + 208), &d_1003b5f30)
  1000ef48c  add     x0, x19, #0xd8
  1000ef490  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 216))
  1000ef494  mov     x0, x19
  1000ef498  ldp     x29, x30, [sp, #0x10]
  1000ef49c  ldp     x20, x19, [sp], #0x20
  1000ef4a0  ret
  1000ef4a4  mov     x8, x20
  1000ef4a8  mov     x20, x0
  1000ef4ac  add     x0, x19, #0xd0
  1000ef4b0  add     x1, x8, #0x30
  1000ef4b4  bl      sub_1000e9c44                            ; sub_1000e9c44((x19 + 208), (x8 + 48))
  1000ef4b8  b       loc_1000ef4c0
  1000ef4bc  mov     x20, x0
loc_1000ef4c0:
  1000ef4c0  add     x0, x19, #0xd8
  1000ef4c4  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 216))
  1000ef4c8  mov     x0, x20
  1000ef4cc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ef4d0  bl      sub_10000b760

; ======================================================================
; csl::DistanceSimulator::thunk_vfunc_0
; address 0x1000ef4d4  size 16  kind cxx
; ======================================================================
  1000ef4d4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ef4d8  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000ef4dc  add     x0, x0, x8
  1000ef4e0  b       csl::DistanceSimulator::~DistanceSimulator ; csl::DistanceSimulator::~DistanceSimulator((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; csl::DistanceSimulator::thunk_vfunc_0
; address 0x1000ef4e4  size 16  kind cxx
; ======================================================================
  1000ef4e4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ef4e8  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ef4ec  add     x0, x0, x8
  1000ef4f0  b       csl::DistanceSimulator::~DistanceSimulator ; csl::DistanceSimulator::~DistanceSimulator((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::DistanceSimulator::~DistanceSimulator/*deleting*/
; address 0x1000ef4f4  size 56  kind cxx
; ======================================================================
  1000ef4f4  stp     x20, x19, [sp, #-0x20]!
  1000ef4f8  stp     x29, x30, [sp, #0x10]
  1000ef4fc  add     x29, sp, #0x10
  1000ef500  mov     x19, x0
  1000ef504  bl      csl::DistanceSimulator::~DistanceSimulator ; csl::DistanceSimulator::~DistanceSimulator(a0, a1, a2, a3)
  1000ef508  mov     x0, x19
  1000ef50c  ldp     x29, x30, [sp, #0x10]
  1000ef510  ldp     x20, x19, [sp], #0x20
  1000ef514  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ef518  mov     x20, x0
  1000ef51c  mov     x0, x19
  1000ef520  bl      __ZdlPv                                  ; ZdlPv()
  1000ef524  mov     x0, x20
  1000ef528  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::DistanceSimulator::thunk_vfunc_1
; address 0x1000ef52c  size 16  kind cxx
; ======================================================================
  1000ef52c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ef530  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000ef534  add     x0, x0, x8
  1000ef538  b       csl::DistanceSimulator::~DistanceSimulator/*deleting*/ ; csl::DistanceSimulator::~DistanceSimulator/*deleting*/((a0 + a0[+0x0][+0x-20]), a1, a2, a3)

; ======================================================================
; csl::DistanceSimulator::thunk_vfunc_1
; address 0x1000ef53c  size 16  kind cxx
; ======================================================================
  1000ef53c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ef540  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ef544  add     x0, x0, x8
  1000ef548  b       csl::DistanceSimulator::~DistanceSimulator/*deleting*/ ; csl::DistanceSimulator::~DistanceSimulator/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::DistanceSimulator::vfunc_19
; address 0x1000ef54c  size 32  kind cxx
; ======================================================================
  1000ef54c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ef550  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000ef554  add     x8, x8, x0
  1000ef558  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20]
  1000ef55c  ldr     x0, [x8, #8]                             ; x0 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8]
  1000ef560  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0]
  1000ef564  ldr     x1, [x8, #0x98]                          ; x1 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x98]
  1000ef568  br      x1

; ======================================================================
; csl::DistanceSimulator::vfunc_5
; address 0x1000ef56c  size 252  kind cxx
; ======================================================================
  1000ef56c  stp     d11, d10, [sp, #-0x50]!
  1000ef570  stp     d9, d8, [sp, #0x10]
  1000ef574  stp     x22, x21, [sp, #0x20]
  1000ef578  stp     x20, x19, [sp, #0x30]
  1000ef57c  stp     x29, x30, [sp, #0x40]
  1000ef580  add     x29, sp, #0x40
  1000ef584  mov     x21, x1
  1000ef588  mov     x19, x0
  1000ef58c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ef590  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000ef594  add     x8, x8, x19
  1000ef598  ldr     x9, [x19, #0xa8]                         ; x9 = a0[+0xa8]
  1000ef59c  ldp     s9, s10, [x9, #4]
  1000ef5a0  ldr     s8, [x9, #0xc]                           ; s8 = a0[+0xa8][+0xc]
  1000ef5a4  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20]
  1000ef5a8  ldr     x20, [x8, #8]                            ; x20 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8]
  1000ef5ac  ldr     x8, [x20]                                ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0]
  1000ef5b0  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x20]
  1000ef5b4  mov     x0, x20
  1000ef5b8  blr     x8                                       ; call (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x20]
  1000ef5bc  fmul    s0, s9, s9
  1000ef5c0  fmul    s1, s10, s10
  1000ef5c4  fadd    s0, s0, s1
  1000ef5c8  fmul    s1, s8, s8
  1000ef5cc  fadd    s0, s0, s1
  1000ef5d0  fsqrt   s8, s0
  1000ef5d4  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000ef5d8  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000ef5dc  ldr     x8, [x8, #0x10]                          ; x8 = a0[+0xb8][+0x0][+0x10]
  1000ef5e0  mov     v0.16b, v8.16b
  1000ef5e4  blr     x8                                       ; call a0[+0xb8][+0x0][+0x10]
  1000ef5e8  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000ef5ec  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000ef5f0  ldr     x8, [x8, #0x18]                          ; x8 = a0[+0xb8][+0x0][+0x18]
  1000ef5f4  mov     x1, x21
  1000ef5f8  blr     x8                                       ; call a0[+0xb8][+0x0][+0x18]
  1000ef5fc  fmov    s0, #10.00000000
  1000ef600  fcmp    s8, s0
  1000ef604  b.le    loc_1000ef630                            ; if (sqrt((((s9 * s9) + (s10 * s10)) + (a0[+0xa8][+0xc] * a0[+0xa8][+0xc]))) <= (or unordered) 10)
  1000ef608  ldr     x0, [x19, #0xc0]                         ; x0 = a0[+0xc0]
  1000ef60c  ldr     x8, [x0]                                 ; x8 = a0[+0xc0][+0x0]
  1000ef610  ldr     x8, [x8, #0x10]                          ; x8 = a0[+0xc0][+0x0][+0x10]
  1000ef614  mov     v0.16b, v8.16b
  1000ef618  blr     x8                                       ; call a0[+0xc0][+0x0][+0x10]
  1000ef61c  ldr     x0, [x19, #0xc0]                         ; x0 = a0[+0xc0]
  1000ef620  ldr     x8, [x0]                                 ; x8 = a0[+0xc0][+0x0]
  1000ef624  ldr     x8, [x8, #0x18]                          ; x8 = a0[+0xc0][+0x0][+0x18]
  1000ef628  mov     x1, x21
  1000ef62c  blr     x8                                       ; call a0[+0xc0][+0x0][+0x18]
loc_1000ef630:
  1000ef630  ldr     x8, [x20]                                ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0]
  1000ef634  ldr     x8, [x8, #0x98]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x98]
  1000ef638  mov     x0, x20
  1000ef63c  blr     x8                                       ; call (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x98]
  1000ef640  strb    w0, [x19, #0xb1]                         ; a0[+0xb1] = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x98](…)
  1000ef644  ldp     x29, x30, [sp, #0x40]
  1000ef648  ldp     x20, x19, [sp, #0x30]
  1000ef64c  ldp     x22, x21, [sp, #0x20]
  1000ef650  ldp     d9, d8, [sp, #0x10]
  1000ef654  ldp     d11, d10, [sp], #0x50
  1000ef658  ret
  1000ef65c  tbz     w1, 0x1f, loc_1000ef664                  ; if (w1 >= 0)
  1000ef660  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ef664:
  1000ef664  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::DistanceSimulator::vfunc_12
; address 0x1000ef668  size 124  kind cxx
; ======================================================================
  1000ef668  stp     x22, x21, [sp, #-0x30]!
  1000ef66c  stp     x20, x19, [sp, #0x10]
  1000ef670  stp     x29, x30, [sp, #0x20]
  1000ef674  add     x29, sp, #0x20
  1000ef678  sub     sp, sp, #0x50
  1000ef67c  mov     x19, x1
  1000ef680  mov     x20, x0
  1000ef684  adrp    x21, #0x1003b0000
  1000ef688  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000ef68c  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000ef690  stur    x21, [x29, #-0x28]
  1000ef694  add     x0, sp, #8
  1000ef698  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000ef69c  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ef6a0  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000ef6a4  add     x8, x8, x20
  1000ef6a8  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20]
  1000ef6ac  ldr     x0, [x8, #8]                             ; x0 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8]
  1000ef6b0  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0]
  1000ef6b4  ldr     x8, [x8, #0x60]                          ; x8 = (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x60]
  1000ef6b8  add     w1, w19, #1
  1000ef6bc  blr     x8                                       ; call (a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x60]
  1000ef6c0  ldur    x8, [x29, #-0x28]
  1000ef6c4  sub     x8, x21, x8
  1000ef6c8  cbnz    x8, loc_1000ef6e0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ef6cc  sub     sp, x29, #0x20
  1000ef6d0  ldp     x29, x30, [sp, #0x20]
  1000ef6d4  ldp     x20, x19, [sp, #0x10]
  1000ef6d8  ldp     x22, x21, [sp], #0x30
  1000ef6dc  ret
loc_1000ef6e0:
  1000ef6e0  bl      ___stack_chk_fail                        ; stack_chk_fail((a0[+0x0][+0x-20] + a0)[+0x20][+0x8][+0x0][+0x60](…))

; ======================================================================
; csl::DistanceSimulator::thunk_vfunc_3
; address 0x1000ef6e4  size 136  kind cxx
; ======================================================================
  1000ef6e4  stp     x22, x21, [sp, #-0x30]!
  1000ef6e8  stp     x20, x19, [sp, #0x10]
  1000ef6ec  stp     x29, x30, [sp, #0x20]
  1000ef6f0  add     x29, sp, #0x20
  1000ef6f4  sub     sp, sp, #0x50
  1000ef6f8  mov     x19, x1
  1000ef6fc  mov     x20, x0
  1000ef700  adrp    x21, #0x1003b0000
  1000ef704  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000ef708  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000ef70c  stur    x21, [x29, #-0x28]
  1000ef710  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ef714  ldur    x22, [x8, #-0x28]                        ; x22 = a0[+0x0][+0x-28]
  1000ef718  add     x0, sp, #8
  1000ef71c  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000ef720  ldr     x8, [x20, x22]
  1000ef724  ldur    x8, [x8, #-0x20]
  1000ef728  add     x8, x22, x8
  1000ef72c  add     x8, x8, x20
  1000ef730  ldr     x8, [x8, #0x20]                          ; x8 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20]
  1000ef734  ldr     x0, [x8, #8]                             ; x0 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8]
  1000ef738  ldr     x8, [x0]                                 ; x8 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0]
  1000ef73c  ldr     x8, [x8, #0x60]                          ; x8 = ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0][+0x60]
  1000ef740  add     w1, w19, #1
  1000ef744  blr     x8                                       ; call ((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0][+0x60]
  1000ef748  ldur    x8, [x29, #-0x28]
  1000ef74c  sub     x8, x21, x8
  1000ef750  cbnz    x8, loc_1000ef768                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ef754  sub     sp, x29, #0x20
  1000ef758  ldp     x29, x30, [sp, #0x20]
  1000ef75c  ldp     x20, x19, [sp, #0x10]
  1000ef760  ldp     x22, x21, [sp], #0x30
  1000ef764  ret
loc_1000ef768:
  1000ef768  bl      ___stack_chk_fail                        ; stack_chk_fail(((a0[+0x0][+0x-28] + x8) + a0)[+0x20][+0x8][+0x0][+0x60](…))

; ======================================================================
; sub_1000ef76c
; address 0x1000ef76c  size 20  kind sub
; ======================================================================
  1000ef76c  str     s0, [x0, #0xc8]                          ; a0[+0xc8] = s0
  1000ef770  ldr     x8, [x0, #0xb8]                          ; x8 = a0[+0xb8]
  1000ef774  cbz     x8, loc_1000ef77c                        ; if (a0[+0xb8] == 0)
  1000ef778  str     s0, [x8, #0xc]                           ; a0[+0xb8][+0xc] = s0
loc_1000ef77c:
  1000ef77c  ret
