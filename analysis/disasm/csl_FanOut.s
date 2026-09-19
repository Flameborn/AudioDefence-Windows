// unit csl_FanOut — 9 functions
//   0x1000ea2ac     216  csl::FanOut::vfunc_5
//   0x1000ea384     336  csl::FanOut::vfunc_4
//   0x1000ea4d4     152  csl::FanOut::vfunc_12
//   0x1000ea56c      16  csl::FanOut::thunk_vfunc_3
//   0x1000ea57c     212  sub_1000ea57c
//   0x1000eb598     212  csl::FanOut::~FanOut(…)
//   0x1000eb66c      56  csl::FanOut::~FanOut/*deleting*/(…)
//   0x1000eb6a4      16  csl::FanOut::thunk_vfunc_0
//   0x1000eb6b4      16  csl::FanOut::thunk_vfunc_1

; ======================================================================
; csl::FanOut::vfunc_5
; address 0x1000ea2ac  size 216  kind cxx
; ======================================================================
  1000ea2ac  stp     x20, x19, [sp, #-0x20]!
  1000ea2b0  stp     x29, x30, [sp, #0x10]
  1000ea2b4  add     x29, sp, #0x10
  1000ea2b8  sub     sp, sp, #0x20
  1000ea2bc  mov     w0, #0x10
  1000ea2c0  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000ea2c4  mov     x19, x0
  1000ea2c8  adrp    x1, #0x100388000
  1000ea2cc  add     x1, x1, #0x4d3                           ; "Asking for mono nextBuffer of a FanOut"
  1000ea2d0  add     x0, sp, #0x10
  1000ea2d4  add     x2, sp, #8
  1000ea2d8  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Asking for mono nextBuffer of a FanOut", &sp[0x8])
  1000ea2dc  add     x1, sp, #0x10
  1000ea2e0  mov     x0, x19
  1000ea2e4  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000ea2e8  adrp    x8, #0x1003b0000
  1000ea2ec  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea2f0  add     x8, x8, #0x10
  1000ea2f4  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000ea2f8  adrp    x1, #0x100428000
  1000ea2fc  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000ea300  adrp    x2, #0x1003b0000
  1000ea304  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea308  mov     x0, x19
  1000ea30c  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000ea310  b       loc_1000ea35c
  1000ea314  mov     x20, x1
  1000ea318  mov     x19, x0
  1000ea31c  ldr     x8, [sp, #0x10]
  1000ea320  sub     x0, x8, #0x18
  1000ea324  adrp    x9, #0x1003b0000
  1000ea328  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000ea32c  cmp     x0, x9
  1000ea330  b.eq    loc_1000ea358                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000ea334  sub     x8, x8, #8
loc_1000ea338:
  1000ea338  ldaxr   w9, [x8]
  1000ea33c  sub     w10, w9, #1
  1000ea340  stlxr   w11, w10, [x8]
  1000ea344  cbnz    w11, loc_1000ea338                       ; if (w11 != 0)
  1000ea348  cmp     w9, #0
  1000ea34c  b.gt    loc_1000ea358                            ; if (w9 > 0)
  1000ea350  add     x1, sp, #0x18
  1000ea354  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000ea358:
  1000ea358  tbz     w20, 0x1f, loc_1000ea364                 ; if (w20 >= 0)
loc_1000ea35c:
  1000ea35c  mov     x0, x19
  1000ea360  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ea364:
  1000ea364  mov     x0, x19
  1000ea368  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ea36c  mov     x20, x1
  1000ea370  mov     x8, x19
  1000ea374  mov     x19, x0
  1000ea378  mov     x0, x8
  1000ea37c  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000ea380  b       loc_1000ea358

; ======================================================================
; csl::FanOut::vfunc_4
; address 0x1000ea384  size 336  kind cxx
; ======================================================================
  1000ea384  stp     x20, x19, [sp, #-0x20]!
  1000ea388  stp     x29, x30, [sp, #0x10]
  1000ea38c  add     x29, sp, #0x10
  1000ea390  sub     sp, sp, #0x20
  1000ea394  mov     x20, x1
  1000ea398  mov     x19, x0
  1000ea39c  ldr     w8, [x20, #8]                            ; w8 = a1[+0x8]
  1000ea3a0  ldr     w9, [x19, #0x60]                         ; w9 = a0[+0x60]
  1000ea3a4  cmp     w8, w9
  1000ea3a8  b.ne    loc_1000ea400                            ; if (a1[+0x8] != a0[+0x60])
  1000ea3ac  ldp     w8, w9, [x19, #0xe8]
  1000ea3b0  cmp     w9, w8
  1000ea3b4  b.lo    loc_1000ea3c8                            ; if (w9 <u w8)
  1000ea3b8  ldr     w1, [x20, #0xc]                          ; w1 = a1[+0xc]
  1000ea3bc  mov     x0, x19
  1000ea3c0  bl      sub_1000e9fb0                            ; sub_1000e9fb0(a0, a1[+0xc], a2, a3)
  1000ea3c4  str     wzr, [x19, #0xec]                        ; a0[+0xec] = 0
loc_1000ea3c8:
  1000ea3c8  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ea3cc  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ea3d0  add     x8, x8, x19
  1000ea3d4  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000ea3d8  ldr     x1, [x8, #0x10]                          ; x1 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10]
  1000ea3dc  mov     x0, x20
  1000ea3e0  bl      sub_1000e86d4                            ; sub_1000e86d4(a1, (a0[+0x0][+0x-18] + a0)[+0x20][+0x10])
  1000ea3e4  ldr     w8, [x19, #0xec]                         ; w8 = a0[+0xec]
  1000ea3e8  add     w8, w8, #1
  1000ea3ec  str     w8, [x19, #0xec]                         ; a0[+0xec] = (a0[+0xec] + 1)
  1000ea3f0  sub     sp, x29, #0x10
  1000ea3f4  ldp     x29, x30, [sp, #0x10]
  1000ea3f8  ldp     x20, x19, [sp], #0x20
  1000ea3fc  ret
loc_1000ea400:
  1000ea400  mov     w0, #0x10
  1000ea404  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000ea408  mov     x19, x0
  1000ea40c  adrp    x1, #0x100388000
  1000ea410  add     x1, x1, #0x4fa                           ; "Asking for wrong output ch # of a FanOut"
  1000ea414  add     x0, sp, #0x10
  1000ea418  add     x2, sp, #8
  1000ea41c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Asking for wrong output ch # of a FanOut", &sp[0x8])
  1000ea420  add     x1, sp, #0x10
  1000ea424  mov     x0, x19
  1000ea428  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000ea42c  adrp    x8, #0x1003b0000
  1000ea430  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea434  add     x8, x8, #0x10
  1000ea438  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000ea43c  adrp    x1, #0x100428000
  1000ea440  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000ea444  adrp    x2, #0x1003b0000
  1000ea448  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea44c  mov     x0, x19
  1000ea450  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000ea454  b       loc_1000ea4a0
  1000ea458  mov     x20, x1
  1000ea45c  mov     x19, x0
  1000ea460  ldr     x8, [sp, #0x10]
  1000ea464  sub     x0, x8, #0x18
  1000ea468  adrp    x9, #0x1003b0000
  1000ea46c  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000ea470  cmp     x0, x9
  1000ea474  b.eq    loc_1000ea49c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000ea478  sub     x8, x8, #8
loc_1000ea47c:
  1000ea47c  ldaxr   w9, [x8]
  1000ea480  sub     w10, w9, #1
  1000ea484  stlxr   w11, w10, [x8]
  1000ea488  cbnz    w11, loc_1000ea47c                       ; if (w11 != 0)
  1000ea48c  cmp     w9, #0
  1000ea490  b.gt    loc_1000ea49c                            ; if (w9 > 0)
  1000ea494  add     x1, sp, #0x18
  1000ea498  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000ea49c:
  1000ea49c  tbz     w20, 0x1f, loc_1000ea4a8                 ; if (w20 >= 0)
loc_1000ea4a0:
  1000ea4a0  mov     x0, x19
  1000ea4a4  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ea4a8:
  1000ea4a8  mov     x0, x19
  1000ea4ac  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ea4b0  mov     x20, x1
  1000ea4b4  mov     x19, x0
  1000ea4b8  b       loc_1000ea49c
  1000ea4bc  mov     x20, x1
  1000ea4c0  mov     x8, x19
  1000ea4c4  mov     x19, x0
  1000ea4c8  mov     x0, x8
  1000ea4cc  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000ea4d0  b       loc_1000ea49c

; ======================================================================
; csl::FanOut::vfunc_12
; address 0x1000ea4d4  size 152  kind cxx
; ======================================================================
  1000ea4d4  stp     x22, x21, [sp, #-0x30]!
  1000ea4d8  stp     x20, x19, [sp, #0x10]
  1000ea4dc  stp     x29, x30, [sp, #0x20]
  1000ea4e0  add     x29, sp, #0x20
  1000ea4e4  sub     sp, sp, #0x50
  1000ea4e8  mov     x19, x1
  1000ea4ec  mov     x20, x0
  1000ea4f0  adrp    x21, #0x1003b0000
  1000ea4f4  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000ea4f8  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000ea4fc  stur    x21, [x29, #-0x28]
  1000ea500  add     x22, sp, #8
  1000ea504  add     x0, sp, #8
  1000ea508  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000ea50c  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000ea510  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ea514  add     x8, x8, x20
  1000ea518  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000ea51c  cbz     x8, loc_1000ea538                        ; if ((a0[+0x0][+0x-18] + a0)[+0x20] == 0)
  1000ea520  ldr     x0, [x8, #8]                             ; x0 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x8]
  1000ea524  ldr     x8, [x0]                                 ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x8][+0x0]
  1000ea528  ldr     x8, [x8, #0x60]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x8][+0x0][+0x60]
  1000ea52c  add     w1, w19, #1
  1000ea530  blr     x8                                       ; call (a0[+0x0][+0x-18] + a0)[+0x20][+0x8][+0x0][+0x60]
  1000ea534  b       loc_1000ea548
loc_1000ea538:
  1000ea538  str     x22, [sp]
  1000ea53c  adrp    x0, #0x100388000
  1000ea540  add     x0, x0, #0x523                           ; "%sFanOut: NumInputs 0\n"
  1000ea544  bl      _printf                                  ; printf("%sFanOut: NumInputs 0\n", &sp[0x8])
loc_1000ea548:
  1000ea548  ldur    x8, [x29, #-0x28]
  1000ea54c  sub     x8, x21, x8
  1000ea550  cbnz    x8, loc_1000ea568                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ea554  sub     sp, x29, #0x20
  1000ea558  ldp     x29, x30, [sp, #0x20]
  1000ea55c  ldp     x20, x19, [sp, #0x10]
  1000ea560  ldp     x22, x21, [sp], #0x30
  1000ea564  ret
loc_1000ea568:
  1000ea568  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; csl::FanOut::thunk_vfunc_3
; address 0x1000ea56c  size 16  kind cxx
; ======================================================================
  1000ea56c  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000ea570  ldur    x8, [x8, #-0x28]                         ; x8 = a0[+0x0][+0x-28]
  1000ea574  add     x0, x0, x8
  1000ea578  b       csl::FanOut::vfunc_12                    ; csl::FanOut::vfunc_12((a0 + a0[+0x0][+0x-28]), a1, a2, a3)

; ======================================================================
; sub_1000ea57c
; address 0x1000ea57c  size 212  kind sub
; ======================================================================
  1000ea57c  stp     x22, x21, [sp, #-0x30]!
  1000ea580  stp     x20, x19, [sp, #0x10]
  1000ea584  stp     x29, x30, [sp, #0x20]
  1000ea588  add     x29, sp, #0x20
  1000ea58c  mov     x21, x1
  1000ea590  mov     x20, x0
  1000ea594  adrp    x8, #0x1003b4000
  1000ea598  add     x8, x8, #0x390                           ; &d_1003b4390
  1000ea59c  add     x22, x8, #0x10                           ; vtable<csl::Controllable>
  1000ea5a0  str     x22, [x20, #0xf0]                        ; a0[+0xf0] = vtable<csl::Controllable>
  1000ea5a4  add     x19, x20, #0xf8
  1000ea5a8  mov     w2, #0x68
  1000ea5ac  mov     x0, x19
  1000ea5b0  mov     w1, #0
  1000ea5b4  bl      _memset                                  ; memset((a0 + 248), 0, 104, a3)
  1000ea5b8  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000ea5bc  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000ea5c0  mov     x0, x21
  1000ea5c4  blr     x8                                       ; call a1[+0x0][+0x18]
  1000ea5c8  mov     x3, x0
  1000ea5cc  adrp    x8, #0x1003b4000
  1000ea5d0  add     x8, x8, #0x580                           ; &d_1003b4580
  1000ea5d4  add     x1, x8, #8                               ; &d_1003b4588
  1000ea5d8  mov     x0, x20
  1000ea5dc  mov     x2, x21
  1000ea5e0  bl      sub_1000ea0cc                            ; sub_1000ea0cc(a0, &d_1003b4588, a1, a1[+0x0][+0x18](…))
  1000ea5e4  adrp    x8, #0x1003b4000
  1000ea5e8  add     x8, x8, #0x4b0                           ; &d_1003b44b0
  1000ea5ec  add     x9, x8, #0x18                            ; vtable<csl::Splitter>
  1000ea5f0  str     x9, [x20]                                ; a0[+0x0] = vtable<csl::Splitter>
  1000ea5f4  add     x8, x8, #0xb0                            ; vtable<csl::Splitter (secondary, -0xf0)>
  1000ea5f8  str     x8, [x20, #0xf0]                         ; a0[+0xf0] = vtable<csl::Splitter (secondary, -0xf0)>
  1000ea5fc  mov     x0, x20
  1000ea600  ldp     x29, x30, [sp, #0x20]
  1000ea604  ldp     x20, x19, [sp, #0x10]
  1000ea608  ldp     x22, x21, [sp], #0x30
  1000ea60c  ret
  1000ea610  mov     x21, x0
  1000ea614  mov     x8, #0
  1000ea618  str     x22, [x20, #0xf0]
  1000ea61c  mov     x20, x8
loc_1000ea620:
  1000ea620  ldr     x0, [x19, x20]
  1000ea624  cbz     x0, loc_1000ea638                        ; if (x0 == 0)
  1000ea628  ldr     x8, [x0]
  1000ea62c  ldr     x8, [x8, #8]
  1000ea630  blr     x8
  1000ea634  str     xzr, [x19, x20]
loc_1000ea638:
  1000ea638  add     x20, x20, #8
  1000ea63c  cmp     x20, #0x68
  1000ea640  b.ne    loc_1000ea620                            ; if ((x20 + 8) != 104)
  1000ea644  mov     x0, x21
  1000ea648  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ea64c  bl      sub_10000b760

; ======================================================================
; csl::FanOut::~FanOut(…)
; address 0x1000eb598  size 212  kind sym
; ======================================================================
  1000eb598  stp     x22, x21, [sp, #-0x30]!
  1000eb59c  stp     x20, x19, [sp, #0x10]
  1000eb5a0  stp     x29, x30, [sp, #0x20]
  1000eb5a4  add     x29, sp, #0x20
  1000eb5a8  mov     x19, x0
  1000eb5ac  adrp    x8, #0x1003b4000
  1000eb5b0  add     x8, x8, #0x3c0                           ; &d_1003b43c0
  1000eb5b4  add     x9, x8, #0x18                            ; vtable<csl::FanOut>
  1000eb5b8  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::FanOut>
  1000eb5bc  add     x8, x8, #0xb0                            ; vtable<csl::FanOut (secondary, -0xf0)>
  1000eb5c0  str     x8, [x19, #0xf0]                         ; a0[+0xf0] = vtable<csl::FanOut (secondary, -0xf0)>
  1000eb5c4  add     x0, x19, #0xb0
  1000eb5c8  bl      sub_1000e80e0                            ; sub_1000e80e0((a0 + 176), a1, a2, a3)
  1000eb5cc  mov     x0, x19
  1000eb5d0  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000eb5d4  adrp    x8, #0x1003b4000
  1000eb5d8  add     x8, x8, #0x390                           ; &d_1003b4390
  1000eb5dc  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000eb5e0  str     x8, [x19, #0xf0]                         ; a0[+0xf0] = vtable<csl::Controllable>
  1000eb5e4  mov     w20, #0xf8
loc_1000eb5e8:
  1000eb5e8  ldr     x0, [x19, x20]
  1000eb5ec  cbz     x0, loc_1000eb600                        ; if (x0 == 0)
  1000eb5f0  ldr     x8, [x0]
  1000eb5f4  ldr     x8, [x8, #8]
  1000eb5f8  blr     x8
  1000eb5fc  str     xzr, [x19, x20]
loc_1000eb600:
  1000eb600  add     x20, x20, #8
  1000eb604  cmp     x20, #0x160
  1000eb608  b.ne    loc_1000eb5e8                            ; if ((x20 + 8) != 352)
  1000eb60c  mov     x0, x19
  1000eb610  ldp     x29, x30, [sp, #0x20]
  1000eb614  ldp     x20, x19, [sp, #0x10]
  1000eb618  ldp     x22, x21, [sp], #0x30
  1000eb61c  ret
  1000eb620  mov     x20, x0
  1000eb624  mov     x21, #0
  1000eb628  adrp    x8, #0x1003b4000
  1000eb62c  add     x8, x8, #0x390                           ; &d_1003b4390
  1000eb630  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000eb634  str     x8, [x19, #0xf0]
  1000eb638  add     x19, x19, #0xf8
loc_1000eb63c:
  1000eb63c  ldr     x0, [x19, x21]
  1000eb640  cbz     x0, loc_1000eb654                        ; if (x0 == 0)
  1000eb644  ldr     x8, [x0]
  1000eb648  ldr     x8, [x8, #8]
  1000eb64c  blr     x8
  1000eb650  str     xzr, [x19, x21]
loc_1000eb654:
  1000eb654  add     x21, x21, #8
  1000eb658  cmp     x21, #0x68
  1000eb65c  b.ne    loc_1000eb63c                            ; if ((x21 + 8) != 104)
  1000eb660  mov     x0, x20
  1000eb664  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eb668  bl      sub_10000b760

; ======================================================================
; csl::FanOut::~FanOut/*deleting*/(…)
; address 0x1000eb66c  size 56  kind sym
; ======================================================================
  1000eb66c  stp     x20, x19, [sp, #-0x20]!
  1000eb670  stp     x29, x30, [sp, #0x10]
  1000eb674  add     x29, sp, #0x10
  1000eb678  mov     x19, x0
  1000eb67c  bl      __ZN3csl6FanOutD1Ev                      ; ZN3csl6FanOutD1Ev(a0, a1, a2, a3)
  1000eb680  mov     x0, x19
  1000eb684  ldp     x29, x30, [sp, #0x10]
  1000eb688  ldp     x20, x19, [sp], #0x20
  1000eb68c  b       __ZdlPv                                  ; ZdlPv(a0)
  1000eb690  mov     x20, x0
  1000eb694  mov     x0, x19
  1000eb698  bl      __ZdlPv                                  ; ZdlPv()
  1000eb69c  mov     x0, x20
  1000eb6a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::FanOut::thunk_vfunc_0
; address 0x1000eb6a4  size 16  kind cxx
; ======================================================================
  1000eb6a4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eb6a8  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eb6ac  add     x0, x0, x8
  1000eb6b0  b       __ZN3csl6FanOutD1Ev                      ; ZN3csl6FanOutD1Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::FanOut::thunk_vfunc_1
; address 0x1000eb6b4  size 16  kind cxx
; ======================================================================
  1000eb6b4  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eb6b8  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eb6bc  add     x0, x0, x8
  1000eb6c0  b       __ZN3csl6FanOutD0Ev                      ; ZN3csl6FanOutD0Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)
