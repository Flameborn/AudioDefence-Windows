// unit csl_Stereoverb — 20 functions
//   0x1000ed370      76  csl::Stereoverb::~Stereoverb
//   0x1000ed3bc      16  csl::Stereoverb::thunk_vfunc_0
//   0x1000ed3cc      56  csl::Stereoverb::~Stereoverb/*deleting*/
//   0x1000ed404      16  csl::Stereoverb::thunk_vfunc_1
//   0x1000ed414      48  csl::Stereoverb::vfunc_7
//   0x1000ed444       8  sub_1000ed444
//   0x1000ed44c     140  csl::Stereoverb::vfunc_12
//   0x1000ed4d8      16  csl::Stereoverb::thunk_vfunc_3
//   0x1000ed4e8     140  sub_1000ed4e8
//   0x1000ed574     140  sub_1000ed574
//   0x1000ed600     116  sub_1000ed600
//   0x1000ed674      20  sub_1000ed674
//   0x1000ed688      44  csl::Stereoverb::vfunc_4
//   0x1000ed6b4      60  std::vector<…><…>(…)
//   0x1000ed6f0      60  std::vector<…><…>(…)
//   0x1000ed7c8       8  csl::Stereoverb::vfunc_3
//   0x1000ed7d0     336  std::vector<…><…>(…)
//   0x1000ed920     336  std::vector<…><…>(…)
//   0x1000eda70     332  sub_1000eda70
//   0x1000edbbc     228  sub_1000edbbc

; ======================================================================
; csl::Stereoverb::~Stereoverb
; address 0x1000ed370  size 76  kind cxx
; ======================================================================
  1000ed370  stp     x20, x19, [sp, #-0x20]!
  1000ed374  stp     x29, x30, [sp, #0x10]
  1000ed378  add     x29, sp, #0x10
  1000ed37c  mov     x19, x0
  1000ed380  adrp    x1, #0x1003b5000
  1000ed384  add     x1, x1, #0x5f0                           ; &d_1003b55f0
  1000ed388  bl      sub_1000ed2cc                            ; sub_1000ed2cc(a0, &d_1003b55f0, a2, a3)
  1000ed38c  add     x0, x19, #0xd8
  1000ed390  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 216))
  1000ed394  mov     x0, x19
  1000ed398  ldp     x29, x30, [sp, #0x10]
  1000ed39c  ldp     x20, x19, [sp], #0x20
  1000ed3a0  ret
  1000ed3a4  mov     x20, x0
  1000ed3a8  add     x0, x19, #0xd8
  1000ed3ac  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 216))
  1000ed3b0  mov     x0, x20
  1000ed3b4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ed3b8  bl      sub_10000b760

; ======================================================================
; csl::Stereoverb::thunk_vfunc_0
; address 0x1000ed3bc  size 16  kind cxx
; ======================================================================
  1000ed3bc  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ed3c0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ed3c4  add     x0, x0, x8
  1000ed3c8  b       csl::Stereoverb::~Stereoverb             ; csl::Stereoverb::~Stereoverb((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Stereoverb::~Stereoverb/*deleting*/
; address 0x1000ed3cc  size 56  kind cxx
; ======================================================================
  1000ed3cc  stp     x20, x19, [sp, #-0x20]!
  1000ed3d0  stp     x29, x30, [sp, #0x10]
  1000ed3d4  add     x29, sp, #0x10
  1000ed3d8  mov     x19, x0
  1000ed3dc  bl      csl::Stereoverb::~Stereoverb             ; csl::Stereoverb::~Stereoverb(a0, a1, a2, a3)
  1000ed3e0  mov     x0, x19
  1000ed3e4  ldp     x29, x30, [sp, #0x10]
  1000ed3e8  ldp     x20, x19, [sp], #0x20
  1000ed3ec  b       __ZdlPv                                  ; ZdlPv(a0)
  1000ed3f0  mov     x20, x0
  1000ed3f4  mov     x0, x19
  1000ed3f8  bl      __ZdlPv                                  ; ZdlPv()
  1000ed3fc  mov     x0, x20
  1000ed400  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Stereoverb::thunk_vfunc_1
; address 0x1000ed404  size 16  kind cxx
; ======================================================================
  1000ed404  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ed408  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ed40c  add     x0, x0, x8
  1000ed410  b       csl::Stereoverb::~Stereoverb/*deleting*/ ; csl::Stereoverb::~Stereoverb/*deleting*/((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Stereoverb::vfunc_7
; address 0x1000ed414  size 48  kind cxx
; ======================================================================
  1000ed414  stp     x29, x30, [sp, #-0x10]!
  1000ed418  mov     x29, sp
  1000ed41c  ldrb    w8, [x0, #0xd0]                          ; w8 = a0[+0xd0]
  1000ed420  cbz     w8, loc_1000ed42c                        ; if (a0[+0xd0] == 0)
  1000ed424  mov     w0, #1
  1000ed428  b       loc_1000ed43c
loc_1000ed42c:
  1000ed42c  ldr     x0, [x0, #0xc0]                          ; x0 = a0[+0xc0]
  1000ed430  ldr     x8, [x0]                                 ; x8 = a0[+0xc0][+0x0]
  1000ed434  ldr     x8, [x8, #0x38]                          ; x8 = a0[+0xc0][+0x0][+0x38]
  1000ed438  blr     x8                                       ; call a0[+0xc0][+0x0][+0x38]
loc_1000ed43c:
  1000ed43c  ldp     x29, x30, [sp], #0x10
  1000ed440  ret

; ======================================================================
; sub_1000ed444
; address 0x1000ed444  size 8  kind sub
; ======================================================================
  1000ed444  strb    w1, [x0, #0xd0]                          ; a0[+0xd0] = a1
  1000ed448  ret

; ======================================================================
; csl::Stereoverb::vfunc_12
; address 0x1000ed44c  size 140  kind cxx
; ======================================================================
  1000ed44c  stp     x22, x21, [sp, #-0x30]!
  1000ed450  stp     x20, x19, [sp, #0x10]
  1000ed454  stp     x29, x30, [sp, #0x20]
  1000ed458  add     x29, sp, #0x20
  1000ed45c  sub     sp, sp, #0x50
  1000ed460  mov     x19, x1
  1000ed464  mov     x20, x0
  1000ed468  adrp    x21, #0x1003b0000
  1000ed46c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000ed470  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000ed474  stur    x21, [x29, #-0x28]
  1000ed478  add     x0, sp, #8
  1000ed47c  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000ed480  ldr     x8, [x20, #0xc0]                         ; x8 = a0[+0xc0]
  1000ed484  ldr     x9, [x8]                                 ; x9 = a0[+0xc0][+0x0]
  1000ed488  ldur    x9, [x9, #-0x18]                         ; x9 = a0[+0xc0][+0x0][+0x-18]
  1000ed48c  add     x0, x8, x9
  1000ed490  mov     w1, #3
  1000ed494  bl      sub_1000e9784                            ; sub_1000e9784((a0[+0xc0] + a0[+0xc0][+0x0][+0x-18]), 3)
  1000ed498  cbz     x0, loc_1000ed4b4                        ; if (sub_1000e9784((a0[+0xc0] + a0[+0xc0][+0x0][+0x-18]), 3) == 0)
  1000ed49c  ldr     x0, [x0, #8]                             ; x0 = sub_1000e9784((a0[+0xc0] + a0[+0xc0][+0x0][+0x-18]), 3)[+0x8]
  1000ed4a0  cbz     x0, loc_1000ed4b4                        ; if (sub_1000e9784((a0[+0xc0] + a0[+0xc0][+0x0][+0x-18]), 3)[+0x8] == 0)
  1000ed4a4  ldr     x8, [x0]                                 ; x8 = sub_1000e9784((a0[+0xc0] + a0[+0xc0][+0x0][+0x-18]), 3)[+0x8][+0x0]
  1000ed4a8  ldr     x8, [x8, #0x60]                          ; x8 = sub_1000e9784((a0[+0xc0] + a0[+0xc0][+0x0][+0x-18]), 3)[+0x8][+0x0][+0x60]
  1000ed4ac  add     w1, w19, #1
  1000ed4b0  blr     x8                                       ; call sub_1000e9784((a0[+0xc0] + a0[+0xc0][+0x0][+0x-18]), 3)[+0x8][+0x0][+0x60]
loc_1000ed4b4:
  1000ed4b4  ldur    x8, [x29, #-0x28]
  1000ed4b8  sub     x8, x21, x8
  1000ed4bc  cbnz    x8, loc_1000ed4d4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ed4c0  sub     sp, x29, #0x20
  1000ed4c4  ldp     x29, x30, [sp, #0x20]
  1000ed4c8  ldp     x20, x19, [sp, #0x10]
  1000ed4cc  ldp     x22, x21, [sp], #0x30
  1000ed4d0  ret
loc_1000ed4d4:
  1000ed4d4  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; csl::Stereoverb::thunk_vfunc_3
; address 0x1000ed4d8  size 16  kind cxx
; ======================================================================
  1000ed4d8  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ed4dc  ldur    x8, [x8, #-0x28]                         ; x8 = a0[+0x0][+0x-28]
  1000ed4e0  add     x0, x0, x8
  1000ed4e4  b       csl::Stereoverb::vfunc_12                ; csl::Stereoverb::vfunc_12((a0 + a0[+0x0][+0x-28]), a1, a2, a3)

; ======================================================================
; sub_1000ed4e8
; address 0x1000ed4e8  size 140  kind sub
; ======================================================================
  1000ed4e8  ldr     x10, [x0, #0xb0]                         ; x10 = a0[+0xb0]
  1000ed4ec  nop
  1000ed4f0  ldr     s1, #0x100182004                         ; s1 = 0.280000001
  1000ed4f4  fmul    s0, s0, s1
  1000ed4f8  nop
  1000ed4fc  ldr     s1, #0x100181c10                         ; s1 = 0.300000012
  1000ed500  fadd    s0, s0, s1
  1000ed504  str     s0, [x10, #0xb8]                         ; a0[+0xb0][+0xb8] = ((s0 * 0.28) + 0.3)
  1000ed508  ldp     x8, x9, [x10, #0xd8]
  1000ed50c  cmp     x8, x9
  1000ed510  b.eq    loc_1000ed538                            ; if (x8 == x9)
  1000ed514  ldr     s1, [x10, #0xbc]                         ; s1 = a0[+0xb0][+0xbc]
  1000ed518  fmov    s2, #1.00000000
  1000ed51c  fsub    s2, s2, s1
loc_1000ed520:
  1000ed520  ldr     x10, [x8], #8
  1000ed524  str     s0, [x10]
  1000ed528  str     s1, [x10, #8]
  1000ed52c  str     s2, [x10, #0xc]
  1000ed530  cmp     x9, x8
  1000ed534  b.ne    loc_1000ed520                            ; if (x9 != x8)
loc_1000ed538:
  1000ed538  ldr     x10, [x0, #0xb8]                         ; x10 = a0[+0xb8]
  1000ed53c  str     s0, [x10, #0xb8]                         ; a0[+0xb8][+0xb8] = ((s0 * 0.28) + 0.3)
  1000ed540  ldp     x8, x9, [x10, #0xd8]
  1000ed544  cmp     x8, x9
  1000ed548  b.eq    loc_1000ed570                            ; if (x8 == x9)
  1000ed54c  ldr     s1, [x10, #0xbc]                         ; s1 = a0[+0xb8][+0xbc]
  1000ed550  fmov    s2, #1.00000000
  1000ed554  fsub    s2, s2, s1
loc_1000ed558:
  1000ed558  ldr     x10, [x8], #8
  1000ed55c  str     s0, [x10]
  1000ed560  str     s1, [x10, #8]
  1000ed564  str     s2, [x10, #0xc]
  1000ed568  cmp     x9, x8
  1000ed56c  b.ne    loc_1000ed558                            ; if (x9 != x8)
loc_1000ed570:
  1000ed570  ret

; ======================================================================
; sub_1000ed574
; address 0x1000ed574  size 140  kind sub
; ======================================================================
  1000ed574  ldr     x10, [x0, #0xb0]                         ; x10 = a0[+0xb0]
  1000ed578  nop
  1000ed57c  ldr     s1, #0x100181bf8                         ; s1 = 0.00999999978
  1000ed580  fmul    s0, s0, s1
  1000ed584  nop
  1000ed588  ldr     s1, #0x100181cd0                         ; s1 = 0.400000006
  1000ed58c  fmul    s0, s0, s1
  1000ed590  str     s0, [x10, #0xbc]                         ; a0[+0xb0][+0xbc] = ((s0 * 0.01) * 0.4)
  1000ed594  ldp     x8, x9, [x10, #0xd8]
  1000ed598  cmp     x8, x9
  1000ed59c  b.eq    loc_1000ed5c4                            ; if (x8 == x9)
  1000ed5a0  ldr     s1, [x10, #0xb8]                         ; s1 = a0[+0xb0][+0xb8]
  1000ed5a4  fmov    s2, #1.00000000
  1000ed5a8  fsub    s2, s2, s0
loc_1000ed5ac:
  1000ed5ac  ldr     x10, [x8], #8
  1000ed5b0  str     s1, [x10]
  1000ed5b4  str     s0, [x10, #8]
  1000ed5b8  str     s2, [x10, #0xc]
  1000ed5bc  cmp     x9, x8
  1000ed5c0  b.ne    loc_1000ed5ac                            ; if (x9 != x8)
loc_1000ed5c4:
  1000ed5c4  ldr     x10, [x0, #0xb8]                         ; x10 = a0[+0xb8]
  1000ed5c8  str     s0, [x10, #0xbc]                         ; a0[+0xb8][+0xbc] = ((s0 * 0.01) * 0.4)
  1000ed5cc  ldp     x8, x9, [x10, #0xd8]
  1000ed5d0  cmp     x8, x9
  1000ed5d4  b.eq    loc_1000ed5fc                            ; if (x8 == x9)
  1000ed5d8  ldr     s1, [x10, #0xb8]                         ; s1 = a0[+0xb8][+0xb8]
  1000ed5dc  fmov    s2, #1.00000000
  1000ed5e0  fsub    s2, s2, s0
loc_1000ed5e4:
  1000ed5e4  ldr     x10, [x8], #8
  1000ed5e8  str     s1, [x10]
  1000ed5ec  str     s0, [x10, #8]
  1000ed5f0  str     s2, [x10, #0xc]
  1000ed5f4  cmp     x9, x8
  1000ed5f8  b.ne    loc_1000ed5e4                            ; if (x9 != x8)
loc_1000ed5fc:
  1000ed5fc  ret

; ======================================================================
; sub_1000ed600
; address 0x1000ed600  size 116  kind sub
; ======================================================================
  1000ed600  ldr     x10, [x0, #0xb0]                         ; x10 = a0[+0xb0]
  1000ed604  str     s0, [x10, #0xc0]                         ; a0[+0xb0][+0xc0] = s0
  1000ed608  ldp     x8, x9, [x10, #0xd8]
  1000ed60c  cmp     x8, x9
  1000ed610  b.eq    loc_1000ed638                            ; if (x8 == x9)
  1000ed614  ldp     s1, s2, [x10, #0xb8]
  1000ed618  fmov    s3, #1.00000000
  1000ed61c  fsub    s3, s3, s2
loc_1000ed620:
  1000ed620  ldr     x10, [x8], #8
  1000ed624  str     s1, [x10]
  1000ed628  str     s2, [x10, #8]
  1000ed62c  str     s3, [x10, #0xc]
  1000ed630  cmp     x9, x8
  1000ed634  b.ne    loc_1000ed620                            ; if (x9 != x8)
loc_1000ed638:
  1000ed638  ldr     x10, [x0, #0xb8]                         ; x10 = a0[+0xb8]
  1000ed63c  str     s0, [x10, #0xc0]                         ; a0[+0xb8][+0xc0] = s0
  1000ed640  ldp     x8, x9, [x10, #0xd8]
  1000ed644  cmp     x8, x9
  1000ed648  b.eq    loc_1000ed670                            ; if (x8 == x9)
  1000ed64c  ldp     s0, s1, [x10, #0xb8]
  1000ed650  fmov    s2, #1.00000000
  1000ed654  fsub    s2, s2, s1
loc_1000ed658:
  1000ed658  ldr     x10, [x8], #8
  1000ed65c  str     s0, [x10]
  1000ed660  str     s1, [x10, #8]
  1000ed664  str     s2, [x10, #0xc]
  1000ed668  cmp     x9, x8
  1000ed66c  b.ne    loc_1000ed658                            ; if (x9 != x8)
loc_1000ed670:
  1000ed670  ret

; ======================================================================
; sub_1000ed674
; address 0x1000ed674  size 20  kind sub
; ======================================================================
  1000ed674  ldr     x8, [x0, #0xb0]                          ; x8 = a0[+0xb0]
  1000ed678  str     s0, [x8, #0xc4]                          ; a0[+0xb0][+0xc4] = s0
  1000ed67c  ldr     x8, [x0, #0xb8]                          ; x8 = a0[+0xb8]
  1000ed680  str     s0, [x8, #0xc4]                          ; a0[+0xb8][+0xc4] = s0
  1000ed684  ret

; ======================================================================
; csl::Stereoverb::vfunc_4
; address 0x1000ed688  size 44  kind cxx
; ======================================================================
  1000ed688  stp     x29, x30, [sp, #-0x10]!
  1000ed68c  mov     x29, sp
  1000ed690  ldr     x0, [x0, #0xc8]                          ; x0 = a0[+0xc8]
  1000ed694  ldr     x8, [x0]                                 ; x8 = a0[+0xc8][+0x0]
  1000ed698  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xc8][+0x0][+0x20]
  1000ed69c  blr     x8                                       ; call a0[+0xc8][+0x0][+0x20]
  1000ed6a0  ldp     x29, x30, [sp], #0x10
  1000ed6a4  ret
  1000ed6a8  tbz     w1, 0x1f, loc_1000ed6b0                  ; if (w1 >= 0)
  1000ed6ac  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ed6b0:
  1000ed6b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000ed6b4  size 60  kind sym
; ======================================================================
  1000ed6b4  mov     x8, x1
  1000ed6b8  ldp     x1, x9, [x0, #8]
  1000ed6bc  cmp     x1, x9
  1000ed6c0  b.eq    loc_1000ed6d8                            ; if (x1 == x9)
  1000ed6c4  cbz     x1, loc_1000ed6e0                        ; if (x1 == 0)
  1000ed6c8  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000ed6cc  str     x8, [x1]
  1000ed6d0  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000ed6d4  b       loc_1000ed6e4
loc_1000ed6d8:
  1000ed6d8  mov     x2, x8
  1000ed6dc  b       __ZNSt6vectorIPN3csl4CombESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl4CombESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000ed6e0:
  1000ed6e0  mov     x8, #0
loc_1000ed6e4:
  1000ed6e4  add     x8, x8, #8
  1000ed6e8  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000ed6ec  ret

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000ed6f0  size 60  kind sym
; ======================================================================
  1000ed6f0  mov     x8, x1
  1000ed6f4  ldp     x1, x9, [x0, #8]
  1000ed6f8  cmp     x1, x9
  1000ed6fc  b.eq    loc_1000ed714                            ; if (x1 == x9)
  1000ed700  cbz     x1, loc_1000ed71c                        ; if (x1 == 0)
  1000ed704  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000ed708  str     x8, [x1]
  1000ed70c  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000ed710  b       loc_1000ed720
loc_1000ed714:
  1000ed714  mov     x2, x8
  1000ed718  b       __ZNSt6vectorIPN3csl8FAllpassESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl8FAllpassESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000ed71c:
  1000ed71c  mov     x8, #0
loc_1000ed720:
  1000ed720  add     x8, x8, #8
  1000ed724  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000ed728  ret

; ======================================================================
; csl::Stereoverb::vfunc_3
; address 0x1000ed7c8  size 8  kind cxx
; ======================================================================
  1000ed7c8  mov     w0, #2
  1000ed7cc  ret

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000ed7d0  size 336  kind sym
; ======================================================================
  1000ed7d0  stp     x26, x25, [sp, #-0x50]!
  1000ed7d4  stp     x24, x23, [sp, #0x10]
  1000ed7d8  stp     x22, x21, [sp, #0x20]
  1000ed7dc  stp     x20, x19, [sp, #0x30]
  1000ed7e0  stp     x29, x30, [sp, #0x40]
  1000ed7e4  add     x29, sp, #0x40
  1000ed7e8  mov     x21, x2
  1000ed7ec  mov     x20, x1
  1000ed7f0  mov     x19, x0
  1000ed7f4  ldp     x8, x9, [x19, #8]
  1000ed7f8  cmp     x8, x9
  1000ed7fc  b.eq    loc_1000ed814                            ; if (x8 == x9)
  1000ed800  cbz     x8, loc_1000ed838                        ; if (x8 == 0)
  1000ed804  ldur    x9, [x8, #-8]
  1000ed808  str     x9, [x8]
  1000ed80c  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000ed810  b       loc_1000ed83c
loc_1000ed814:
  1000ed814  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000ed818  sub     x9, x8, x9
  1000ed81c  asr     x8, x9, #3
  1000ed820  mov     w25, #1
  1000ed824  cbnz    x8, loc_1000ed8fc                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000ed828:
  1000ed828  cmp     x25, x8
  1000ed82c  b.hs    loc_1000ed868                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000ed830  mov     x25, #0x1fffffffffffffff
  1000ed834  b       loc_1000ed870
loc_1000ed838:
  1000ed838  mov     x8, #0
loc_1000ed83c:
  1000ed83c  add     x9, x8, #8
  1000ed840  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000ed844  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000ed848  sub     x9, x8, #8
  1000ed84c  sub     x2, x9, x20
  1000ed850  and     x9, x2, #0xfffffffffffffff8
  1000ed854  sub     x0, x8, x9
  1000ed858  mov     x1, x20
  1000ed85c  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000ed860  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000ed864  b       loc_1000ed8e4
loc_1000ed868:
  1000ed868  lsr     x8, x25, #0x3d
  1000ed86c  cbnz    x8, loc_1000ed910                        ; if ((x25 >>> 61) != 0)
loc_1000ed870:
  1000ed870  lsl     x0, x25, #3
  1000ed874  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000ed878  mov     x22, x0
  1000ed87c  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000ed880  sub     x24, x20, x23
  1000ed884  asr     x26, x24, #3
  1000ed888  mov     x1, x23
  1000ed88c  mov     x2, x24
  1000ed890  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000ed894  and     x8, x24, #0xfffffffffffffff8
  1000ed898  add     x8, x22, x8
  1000ed89c  cbz     x8, loc_1000ed8a8                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000ed8a0  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000ed8a4  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000ed8a8:
  1000ed8a8  add     x24, x26, #1
  1000ed8ac  add     x0, x22, x24, lsl #3
  1000ed8b0  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000ed8b4  sub     x21, x8, x20
  1000ed8b8  mov     x1, x20
  1000ed8bc  mov     x2, x21
  1000ed8c0  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000ed8c4  add     x8, x24, x21, lsr #3
  1000ed8c8  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000ed8cc  cbz     x23, loc_1000ed8d8                       ; if (a0[+0x0] == 0)
  1000ed8d0  mov     x0, x23
  1000ed8d4  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000ed8d8:
  1000ed8d8  stp     x22, x20, [x19]
  1000ed8dc  add     x8, x22, x25, lsl #3
  1000ed8e0  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000ed8e4:
  1000ed8e4  ldp     x29, x30, [sp, #0x40]
  1000ed8e8  ldp     x20, x19, [sp, #0x30]
  1000ed8ec  ldp     x22, x21, [sp, #0x20]
  1000ed8f0  ldp     x24, x23, [sp, #0x10]
  1000ed8f4  ldp     x26, x25, [sp], #0x50
  1000ed8f8  ret
loc_1000ed8fc:
  1000ed8fc  mov     x10, #0x1fffffffffffffff
  1000ed900  cmp     x8, x10
  1000ed904  b.eq    loc_1000ed914                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000ed908  asr     x25, x9, #2
  1000ed90c  b       loc_1000ed828
loc_1000ed910:
  1000ed910  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000ed914:
  1000ed914  adrp    x0, #0x100388000
  1000ed918  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000ed91c  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000ed920  size 336  kind sym
; ======================================================================
  1000ed920  stp     x26, x25, [sp, #-0x50]!
  1000ed924  stp     x24, x23, [sp, #0x10]
  1000ed928  stp     x22, x21, [sp, #0x20]
  1000ed92c  stp     x20, x19, [sp, #0x30]
  1000ed930  stp     x29, x30, [sp, #0x40]
  1000ed934  add     x29, sp, #0x40
  1000ed938  mov     x21, x2
  1000ed93c  mov     x20, x1
  1000ed940  mov     x19, x0
  1000ed944  ldp     x8, x9, [x19, #8]
  1000ed948  cmp     x8, x9
  1000ed94c  b.eq    loc_1000ed964                            ; if (x8 == x9)
  1000ed950  cbz     x8, loc_1000ed988                        ; if (x8 == 0)
  1000ed954  ldur    x9, [x8, #-8]
  1000ed958  str     x9, [x8]
  1000ed95c  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000ed960  b       loc_1000ed98c
loc_1000ed964:
  1000ed964  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000ed968  sub     x9, x8, x9
  1000ed96c  asr     x8, x9, #3
  1000ed970  mov     w25, #1
  1000ed974  cbnz    x8, loc_1000eda4c                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000ed978:
  1000ed978  cmp     x25, x8
  1000ed97c  b.hs    loc_1000ed9b8                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000ed980  mov     x25, #0x1fffffffffffffff
  1000ed984  b       loc_1000ed9c0
loc_1000ed988:
  1000ed988  mov     x8, #0
loc_1000ed98c:
  1000ed98c  add     x9, x8, #8
  1000ed990  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000ed994  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000ed998  sub     x9, x8, #8
  1000ed99c  sub     x2, x9, x20
  1000ed9a0  and     x9, x2, #0xfffffffffffffff8
  1000ed9a4  sub     x0, x8, x9
  1000ed9a8  mov     x1, x20
  1000ed9ac  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000ed9b0  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000ed9b4  b       loc_1000eda34
loc_1000ed9b8:
  1000ed9b8  lsr     x8, x25, #0x3d
  1000ed9bc  cbnz    x8, loc_1000eda60                        ; if ((x25 >>> 61) != 0)
loc_1000ed9c0:
  1000ed9c0  lsl     x0, x25, #3
  1000ed9c4  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000ed9c8  mov     x22, x0
  1000ed9cc  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000ed9d0  sub     x24, x20, x23
  1000ed9d4  asr     x26, x24, #3
  1000ed9d8  mov     x1, x23
  1000ed9dc  mov     x2, x24
  1000ed9e0  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000ed9e4  and     x8, x24, #0xfffffffffffffff8
  1000ed9e8  add     x8, x22, x8
  1000ed9ec  cbz     x8, loc_1000ed9f8                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000ed9f0  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000ed9f4  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000ed9f8:
  1000ed9f8  add     x24, x26, #1
  1000ed9fc  add     x0, x22, x24, lsl #3
  1000eda00  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000eda04  sub     x21, x8, x20
  1000eda08  mov     x1, x20
  1000eda0c  mov     x2, x21
  1000eda10  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000eda14  add     x8, x24, x21, lsr #3
  1000eda18  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000eda1c  cbz     x23, loc_1000eda28                       ; if (a0[+0x0] == 0)
  1000eda20  mov     x0, x23
  1000eda24  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000eda28:
  1000eda28  stp     x22, x20, [x19]
  1000eda2c  add     x8, x22, x25, lsl #3
  1000eda30  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000eda34:
  1000eda34  ldp     x29, x30, [sp, #0x40]
  1000eda38  ldp     x20, x19, [sp, #0x30]
  1000eda3c  ldp     x22, x21, [sp, #0x20]
  1000eda40  ldp     x24, x23, [sp, #0x10]
  1000eda44  ldp     x26, x25, [sp], #0x50
  1000eda48  ret
loc_1000eda4c:
  1000eda4c  mov     x10, #0x1fffffffffffffff
  1000eda50  cmp     x8, x10
  1000eda54  b.eq    loc_1000eda64                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000eda58  asr     x25, x9, #2
  1000eda5c  b       loc_1000ed978
loc_1000eda60:
  1000eda60  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000eda64:
  1000eda64  adrp    x0, #0x100388000
  1000eda68  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000eda6c  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; sub_1000eda70
; address 0x1000eda70  size 332  kind sub
; ======================================================================
  1000eda70  stp     x26, x25, [sp, #-0x50]!
  1000eda74  stp     x24, x23, [sp, #0x10]
  1000eda78  stp     x22, x21, [sp, #0x20]
  1000eda7c  stp     x20, x19, [sp, #0x30]
  1000eda80  stp     x29, x30, [sp, #0x40]
  1000eda84  add     x29, sp, #0x40
  1000eda88  mov     x22, x1
  1000eda8c  mov     x20, x0
  1000eda90  add     x19, x20, #0x120
  1000eda94  mov     x0, x19
  1000eda98  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 288), a1, a2, a3)
  1000eda9c  bl      sub_1000e732c                            ; sub_1000e732c(sub_1000e9560((a0 + 288), a1, a2, a3))
  1000edaa0  mov     x1, x0
  1000edaa4  mov     w2, #1
  1000edaa8  mov     x0, x20
  1000edaac  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(sub_1000e9560((a0 + 288), a1, a2, a3)), 1)
  1000edab0  add     x21, x20, #0xa8
  1000edab4  adrp    x24, #0x1003b5000
  1000edab8  add     x24, x24, #0x990                         ; &d_1003b5990
  1000edabc  add     x1, x24, #8                              ; &d_1003b5998
  1000edac0  fmov    s0, #1.00000000
  1000edac4  movi    v1.16b, #0
  1000edac8  mov     x0, x21
  1000edacc  bl      sub_1000e9bd8                            ; sub_1000e9bd8((a0 + 168), &d_1003b5998)
  1000edad0  adrp    x8, #0x1003b5000
  1000edad4  add     x8, x8, #0x890                           ; &d_1003b5890
  1000edad8  add     x9, x8, #0x18                            ; vtable<csl::Mixer>
  1000edadc  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::Mixer>
  1000edae0  add     x9, x8, #0xa0                            ; vtable<csl::Mixer (secondary, -0xa8)>
  1000edae4  str     x9, [x20, #0xa8]                         ; a0[+0xa8] = vtable<csl::Mixer (secondary, -0xa8)>
  1000edae8  add     x8, x8, #0xe0                            ; vtable<csl::Mixer (secondary, -0x120)>
  1000edaec  str     x8, [x20, #0x120]                        ; a0[+0x120] = vtable<csl::Mixer (secondary, -0x120)>
  1000edaf0  mov     x25, x20
  1000edaf4  str     xzr, [x25, #0xb0]!                       ; a0[+0xb0] = 0
  1000edaf8  add     x23, x25, #0x30
  1000edafc  stp     xzr, xzr, [x25, #0x20]
  1000edb00  stp     xzr, xzr, [x25, #0x10]
  1000edb04  str     xzr, [x25, #8]                           ; a0[+0x8] = 0
  1000edb08  mov     w1, #1
  1000edb0c  mov     w2, #0x100
  1000edb10  mov     w3, #4
  1000edb14  mov     x0, x23
  1000edb18  bl      sub_1000e8084                            ; sub_1000e8084((a0 + 48), 1, 256, 4)
  1000edb1c  str     w22, [x20, #0x60]                        ; a0[+0x60] = a1
  1000edb20  bl      sub_1000e735c                            ; sub_1000e735c(sub_1000e8084((a0 + 48), 1, 256, 4))
  1000edb24  mov     x2, x0
  1000edb28  mov     x0, x23
  1000edb2c  mov     x1, x22
  1000edb30  bl      sub_1000e7fac                            ; sub_1000e7fac((a0 + 48), a1, sub_1000e735c(sub_1000e8084((a0 + 48), 1, 256, 4)))
  1000edb34  mov     x0, x23
  1000edb38  bl      sub_1000e8220                            ; sub_1000e8220((a0 + 48))
  1000edb3c  mov     x0, x20
  1000edb40  ldp     x29, x30, [sp, #0x40]
  1000edb44  ldp     x20, x19, [sp, #0x30]
  1000edb48  ldp     x22, x21, [sp, #0x20]
  1000edb4c  ldp     x24, x23, [sp, #0x10]
  1000edb50  ldp     x26, x25, [sp], #0x50
  1000edb54  ret
  1000edb58  mov     x22, x0
  1000edb5c  mov     x0, x23
  1000edb60  bl      csl::Buffer::~Buffer
  1000edb64  b       loc_1000edb7c
  1000edb68  mov     x22, x0
  1000edb6c  b       loc_1000edba8
  1000edb70  mov     x22, x0
  1000edb74  b       loc_1000edba0
  1000edb78  mov     x22, x0
loc_1000edb7c:
  1000edb7c  ldr     x0, [x20, #0xc8]
  1000edb80  cbz     x0, loc_1000edb88                        ; if (x0 == 0)
  1000edb84  bl      __ZdlPv                                  ; ZdlPv()
loc_1000edb88:
  1000edb88  ldr     x0, [x25]
  1000edb8c  cbz     x0, loc_1000edb94                        ; if (x0 == 0)
  1000edb90  bl      __ZdlPv                                  ; ZdlPv()
loc_1000edb94:
  1000edb94  add     x1, x24, #8
  1000edb98  mov     x0, x21
  1000edb9c  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, (x24 + 8))
loc_1000edba0:
  1000edba0  mov     x0, x20
  1000edba4  bl      sub_1000e8918
loc_1000edba8:
  1000edba8  mov     x0, x19
  1000edbac  bl      sub_1000e9388
  1000edbb0  mov     x0, x22
  1000edbb4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000edbb8  bl      sub_10000b760

; ======================================================================
; sub_1000edbbc
; address 0x1000edbbc  size 228  kind sub
; ======================================================================
  1000edbbc  stp     x22, x21, [sp, #-0x30]!
  1000edbc0  stp     x20, x19, [sp, #0x10]
  1000edbc4  stp     x29, x30, [sp, #0x20]
  1000edbc8  add     x29, sp, #0x20
  1000edbcc  mov     x21, x1
  1000edbd0  mov     x19, x0
  1000edbd4  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000edbd8  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000edbdc  ldr     x9, [x21, #0x18]                         ; x9 = a1[+0x18]
  1000edbe0  add     x20, x19, #0xa8
  1000edbe4  str     x9, [x19, #0xa8]                         ; a0[+0xa8] = a1[+0x18]
  1000edbe8  ldr     x9, [x21, #0x20]                         ; x9 = a1[+0x20]
  1000edbec  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000edbf0  str     x9, [x19, x8]
  1000edbf4  add     x22, x19, #0xe0
  1000edbf8  mov     x0, x22
  1000edbfc  bl      sub_1000e8130                            ; sub_1000e8130((a0 + 224), a1, a2, a3)
  1000edc00  mov     x0, x22
  1000edc04  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((a0 + 224))
  1000edc08  ldr     x0, [x19, #0xc8]                         ; x0 = a0[+0xc8]
  1000edc0c  cbz     x0, loc_1000edc14                        ; if (a0[+0xc8] == 0)
  1000edc10  bl      __ZdlPv                                  ; ZdlPv(a0[+0xc8])
loc_1000edc14:
  1000edc14  ldr     x0, [x19, #0xb0]                         ; x0 = a0[+0xb0]
  1000edc18  cbz     x0, loc_1000edc20                        ; if (a0[+0xb0] == 0)
  1000edc1c  bl      __ZdlPv                                  ; ZdlPv(a0[+0xb0])
loc_1000edc20:
  1000edc20  add     x1, x21, #8
  1000edc24  mov     x0, x20
  1000edc28  bl      sub_1000e9c44                            ; sub_1000e9c44((a0 + 168), (a1 + 8))
  1000edc2c  mov     x0, x19
  1000edc30  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000edc34  mov     x0, x19
  1000edc38  ldp     x29, x30, [sp, #0x20]
  1000edc3c  ldp     x20, x19, [sp, #0x10]
  1000edc40  ldp     x22, x21, [sp], #0x30
  1000edc44  ret
  1000edc48  mov     x8, x22
  1000edc4c  mov     x22, x0
  1000edc50  mov     x0, x8
  1000edc54  bl      csl::Buffer::~Buffer
  1000edc58  b       loc_1000edc60
  1000edc5c  mov     x22, x0
loc_1000edc60:
  1000edc60  ldr     x0, [x19, #0xc8]
  1000edc64  cbz     x0, loc_1000edc6c                        ; if (x0 == 0)
  1000edc68  bl      __ZdlPv                                  ; ZdlPv()
loc_1000edc6c:
  1000edc6c  ldr     x0, [x19, #0xb0]
  1000edc70  cbz     x0, loc_1000edc78                        ; if (x0 == 0)
  1000edc74  bl      __ZdlPv                                  ; ZdlPv()
loc_1000edc78:
  1000edc78  add     x1, x21, #8
  1000edc7c  mov     x0, x20
  1000edc80  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, (x21 + 8))
  1000edc84  b       loc_1000edc8c
  1000edc88  mov     x22, x0
loc_1000edc8c:
  1000edc8c  mov     x0, x19
  1000edc90  bl      sub_1000e8918
  1000edc94  mov     x0, x22
  1000edc98  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000edc9c  bl      sub_10000b760
