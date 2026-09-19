// unit csl_Joiner — 8 functions
//   0x1000eaa54     108  csl::Joiner::vfunc_7
//   0x1000eaac0     216  csl::Joiner::vfunc_5
//   0x1000eab98     472  csl::Joiner::vfunc_4
//   0x1000ead70      88  csl::Joiner::vfunc_13
//   0x1000eb6c4     176  csl::Joiner::~Joiner(…)
//   0x1000eb774      56  csl::Joiner::~Joiner/*deleting*/(…)
//   0x1000eb7ac      16  csl::Joiner::thunk_vfunc_0
//   0x1000eb7bc      16  csl::Joiner::thunk_vfunc_1

; ======================================================================
; csl::Joiner::vfunc_7
; address 0x1000eaa54  size 108  kind cxx
; ======================================================================
  1000eaa54  stp     x20, x19, [sp, #-0x20]!
  1000eaa58  stp     x29, x30, [sp, #0x10]
  1000eaa5c  add     x29, sp, #0x10
  1000eaa60  mov     x19, x0
  1000eaa64  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000eaa68  cbz     w8, loc_1000eaaa8                        ; if (a0[+0x60] == 0)
  1000eaa6c  mov     w20, #0
loc_1000eaa70:
  1000eaa70  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000eaa74  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eaa78  add     x8, x8, x19
  1000eaa7c  add     x8, x8, w20, uxtw #3
  1000eaa80  ldr     x8, [x8, #8]                             ; x8 = ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8]
  1000eaa84  ldr     x0, [x8, #8]                             ; x0 = ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x8]
  1000eaa88  ldr     x8, [x0]                                 ; x8 = ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x8][+0x0]
  1000eaa8c  ldr     x8, [x8, #0x38]                          ; x8 = ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x8][+0x0][+0x38]
  1000eaa90  blr     x8                                       ; call ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x8][+0x0][+0x38]
  1000eaa94  cbnz    w0, loc_1000eaab0                        ; if (((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x8][+0x0][+0x38](…) != 0)
  1000eaa98  add     w20, w20, #1
  1000eaa9c  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000eaaa0  cmp     w20, w8
  1000eaaa4  b.lo    loc_1000eaa70                            ; if ((w20 + 1) <u a0[+0x60])
loc_1000eaaa8:
  1000eaaa8  mov     w0, #0
  1000eaaac  b       loc_1000eaab4
loc_1000eaab0:
  1000eaab0  mov     w0, #1
loc_1000eaab4:
  1000eaab4  ldp     x29, x30, [sp, #0x10]
  1000eaab8  ldp     x20, x19, [sp], #0x20
  1000eaabc  ret

; ======================================================================
; csl::Joiner::vfunc_5
; address 0x1000eaac0  size 216  kind cxx
; ======================================================================
  1000eaac0  stp     x20, x19, [sp, #-0x20]!
  1000eaac4  stp     x29, x30, [sp, #0x10]
  1000eaac8  add     x29, sp, #0x10
  1000eaacc  sub     sp, sp, #0x20
  1000eaad0  mov     w0, #0x10
  1000eaad4  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000eaad8  mov     x19, x0
  1000eaadc  adrp    x1, #0x100388000
  1000eaae0  add     x1, x1, #0x5b7                           ; "Asking for mono nextBuffer of a Joiner"
  1000eaae4  add     x0, sp, #0x10
  1000eaae8  add     x2, sp, #8
  1000eaaec  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Asking for mono nextBuffer of a Joiner", &sp[0x8])
  1000eaaf0  add     x1, sp, #0x10
  1000eaaf4  mov     x0, x19
  1000eaaf8  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000eaafc  adrp    x8, #0x1003b0000
  1000eab00  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000eab04  add     x8, x8, #0x10
  1000eab08  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000eab0c  adrp    x1, #0x100428000
  1000eab10  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000eab14  adrp    x2, #0x1003b0000
  1000eab18  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000eab1c  mov     x0, x19
  1000eab20  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000eab24  b       loc_1000eab70
  1000eab28  mov     x20, x1
  1000eab2c  mov     x19, x0
  1000eab30  ldr     x8, [sp, #0x10]
  1000eab34  sub     x0, x8, #0x18
  1000eab38  adrp    x9, #0x1003b0000
  1000eab3c  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000eab40  cmp     x0, x9
  1000eab44  b.eq    loc_1000eab6c                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000eab48  sub     x8, x8, #8
loc_1000eab4c:
  1000eab4c  ldaxr   w9, [x8]
  1000eab50  sub     w10, w9, #1
  1000eab54  stlxr   w11, w10, [x8]
  1000eab58  cbnz    w11, loc_1000eab4c                       ; if (w11 != 0)
  1000eab5c  cmp     w9, #0
  1000eab60  b.gt    loc_1000eab6c                            ; if (w9 > 0)
  1000eab64  add     x1, sp, #0x18
  1000eab68  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000eab6c:
  1000eab6c  tbz     w20, 0x1f, loc_1000eab78                 ; if (w20 >= 0)
loc_1000eab70:
  1000eab70  mov     x0, x19
  1000eab74  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000eab78:
  1000eab78  mov     x0, x19
  1000eab7c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eab80  mov     x20, x1
  1000eab84  mov     x8, x19
  1000eab88  mov     x19, x0
  1000eab8c  mov     x0, x8
  1000eab90  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000eab94  b       loc_1000eab6c

; ======================================================================
; csl::Joiner::vfunc_4
; address 0x1000eab98  size 472  kind cxx
; ======================================================================
  1000eab98  stp     x22, x21, [sp, #-0x30]!
  1000eab9c  stp     x20, x19, [sp, #0x10]
  1000eaba0  stp     x29, x30, [sp, #0x20]
  1000eaba4  add     x29, sp, #0x20
  1000eaba8  sub     sp, sp, #0x50
  1000eabac  mov     x19, x1
  1000eabb0  mov     x20, x0
  1000eabb4  ldr     w8, [x19, #8]                            ; w8 = a1[+0x8]
  1000eabb8  ldr     w9, [x20, #0x60]                         ; w9 = a0[+0x60]
  1000eabbc  cmp     w8, w9
  1000eabc0  b.ne    loc_1000eac8c                            ; if (a1[+0x8] != a0[+0x60])
  1000eabc4  ldr     w2, [x19, #0xc]                          ; w2 = a1[+0xc]
  1000eabc8  adrp    x8, #0x1003b4000
  1000eabcc  add     x8, x8, #0x260                           ; &d_1003b4260
  1000eabd0  add     x8, x8, #0x10                            ; vtable<csl::Buffer>
  1000eabd4  str     x8, [sp]
  1000eabd8  mov     w8, #4
  1000eabdc  str     wzr, [sp, #0x18]
  1000eabe0  stp     xzr, xzr, [sp, #8]
  1000eabe4  str     w8, [sp, #0x1c]
  1000eabe8  strb    wzr, [sp, #0x28]
  1000eabec  strb    wzr, [sp, #0x29]
  1000eabf0  strb    wzr, [sp, #0x2a]
  1000eabf4  mov     w8, #1
  1000eabf8  strb    w8, [sp, #0x2b]
  1000eabfc  str     wzr, [sp, #0x2c]
  1000eac00  str     xzr, [sp, #0x30]
  1000eac04  mov     x0, sp
  1000eac08  mov     w1, #1
  1000eac0c  bl      sub_1000e7fac                            ; sub_1000e7fac(&sp[0x0], 1, a1[+0xc], a3)
  1000eac10  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000eac14  cbz     w8, loc_1000eac70                        ; if (a0[+0x60] == 0)
  1000eac18  mov     w21, #0
loc_1000eac1c:
  1000eac1c  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000eac20  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000eac24  mov     x0, x19
  1000eac28  mov     x1, x21
  1000eac2c  blr     x8                                       ; call a1[+0x0][+0x20]
  1000eac30  ldr     x8, [sp, #0x30]
  1000eac34  str     x0, [x8]                                 ; 0[+0x0] = a1[+0x0][+0x20](…)
  1000eac38  ldr     x8, [x20]                                ; x8 = a0[+0x0]
  1000eac3c  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eac40  add     x8, x8, x20
  1000eac44  add     x8, x8, w21, uxtw #3
  1000eac48  ldr     x8, [x8, #8]                             ; x8 = ((a0[+0x0][+0x-18] + a0) + (w21 << 3))[+0x8]
  1000eac4c  ldr     x0, [x8, #8]                             ; x0 = ((a0[+0x0][+0x-18] + a0) + (w21 << 3))[+0x8][+0x8]
  1000eac50  ldr     x8, [x0]                                 ; x8 = ((a0[+0x0][+0x-18] + a0) + (w21 << 3))[+0x8][+0x8][+0x0]
  1000eac54  ldr     x8, [x8, #0x20]                          ; x8 = ((a0[+0x0][+0x-18] + a0) + (w21 << 3))[+0x8][+0x8][+0x0][+0x20]
  1000eac58  mov     x1, sp
  1000eac5c  blr     x8                                       ; call ((a0[+0x0][+0x-18] + a0) + (w21 << 3))[+0x8][+0x8][+0x0][+0x20]
  1000eac60  add     w21, w21, #1
  1000eac64  ldr     w8, [x20, #0x60]                         ; w8 = a0[+0x60]
  1000eac68  cmp     w21, w8
  1000eac6c  b.lo    loc_1000eac1c                            ; if ((w21 + 1) <u a0[+0x60])
loc_1000eac70:
  1000eac70  mov     x0, sp
  1000eac74  bl      sub_1000e80e0                            ; sub_1000e80e0(&sp[0x0])
  1000eac78  sub     sp, x29, #0x20
  1000eac7c  ldp     x29, x30, [sp, #0x20]
  1000eac80  ldp     x20, x19, [sp, #0x10]
  1000eac84  ldp     x22, x21, [sp], #0x30
  1000eac88  ret
loc_1000eac8c:
  1000eac8c  mov     w0, #0x10
  1000eac90  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000eac94  mov     x21, x0
  1000eac98  adrp    x1, #0x100388000
  1000eac9c  add     x1, x1, #0x5de                           ; "Wrong number of channels in a joiner"
  1000eaca0  sub     x0, x29, #0x30
  1000eaca4  add     x2, sp, #0x38
  1000eaca8  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&x29[-0x30], "Wrong number of channels in a joiner", &sp[0x38])
  1000eacac  sub     x1, x29, #0x30
  1000eacb0  mov     x0, x21
  1000eacb4  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &x29[-0x30])
  1000eacb8  adrp    x8, #0x1003b0000
  1000eacbc  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000eacc0  add     x8, x8, #0x10
  1000eacc4  str     x8, [x21]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000eacc8  adrp    x1, #0x100428000
  1000eaccc  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000eacd0  adrp    x2, #0x1003b0000
  1000eacd4  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000eacd8  mov     x0, x21
  1000eacdc  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000eace0  b       loc_1000ead2c
  1000eace4  mov     x20, x1
  1000eace8  mov     x19, x0
  1000eacec  ldur    x8, [x29, #-0x30]
  1000eacf0  sub     x0, x8, #0x18
  1000eacf4  adrp    x9, #0x1003b0000
  1000eacf8  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000eacfc  cmp     x0, x9
  1000ead00  b.eq    loc_1000ead28                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000ead04  sub     x8, x8, #8
loc_1000ead08:
  1000ead08  ldaxr   w9, [x8]
  1000ead0c  sub     w10, w9, #1
  1000ead10  stlxr   w11, w10, [x8]
  1000ead14  cbnz    w11, loc_1000ead08                       ; if (w11 != 0)
  1000ead18  cmp     w9, #0
  1000ead1c  b.gt    loc_1000ead28                            ; if (w9 > 0)
  1000ead20  sub     x1, x29, #0x28
  1000ead24  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &x29[-0x28])
loc_1000ead28:
  1000ead28  tbz     w20, 0x1f, loc_1000ead34                 ; if (w20 >= 0)
loc_1000ead2c:
  1000ead2c  mov     x0, x19
  1000ead30  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ead34:
  1000ead34  mov     x0, x19
  1000ead38  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ead3c  mov     x20, x1
  1000ead40  mov     x19, x0
  1000ead44  mov     x0, sp
  1000ead48  bl      sub_1000e80e0                            ; sub_1000e80e0(&sp[0x0])
  1000ead4c  b       loc_1000ead28
  1000ead50  mov     x20, x1
  1000ead54  mov     x19, x0
  1000ead58  b       loc_1000ead28
  1000ead5c  mov     x20, x1
  1000ead60  mov     x19, x0
  1000ead64  mov     x0, x21
  1000ead68  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000ead6c  b       loc_1000ead28

; ======================================================================
; csl::Joiner::vfunc_13
; address 0x1000ead70  size 88  kind cxx
; ======================================================================
  1000ead70  stp     x20, x19, [sp, #-0x20]!
  1000ead74  stp     x29, x30, [sp, #0x10]
  1000ead78  add     x29, sp, #0x10
  1000ead7c  mov     x19, x0
  1000ead80  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000ead84  cbz     w8, loc_1000eadbc                        ; if (a0[+0x60] == 0)
  1000ead88  mov     w20, #0
loc_1000ead8c:
  1000ead8c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ead90  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ead94  add     x8, x8, x19
  1000ead98  add     x8, x8, w20, uxtw #3
  1000ead9c  ldr     x0, [x8, #8]                             ; x0 = ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8]
  1000eada0  ldr     x8, [x0]                                 ; x8 = ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x0]
  1000eada4  ldr     x8, [x8, #0x18]                          ; x8 = ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x0][+0x18]
  1000eada8  blr     x8                                       ; call ((a0[+0x0][+0x-18] + a0) + (w20 << 3))[+0x8][+0x0][+0x18]
  1000eadac  add     w20, w20, #1
  1000eadb0  ldr     w8, [x19, #0x60]                         ; w8 = a0[+0x60]
  1000eadb4  cmp     w20, w8
  1000eadb8  b.lo    loc_1000ead8c                            ; if ((w20 + 1) <u a0[+0x60])
loc_1000eadbc:
  1000eadbc  ldp     x29, x30, [sp, #0x10]
  1000eadc0  ldp     x20, x19, [sp], #0x20
  1000eadc4  ret

; ======================================================================
; csl::Joiner::~Joiner(…)
; address 0x1000eb6c4  size 176  kind sym
; ======================================================================
  1000eb6c4  stp     x22, x21, [sp, #-0x30]!
  1000eb6c8  stp     x20, x19, [sp, #0x10]
  1000eb6cc  stp     x29, x30, [sp, #0x20]
  1000eb6d0  add     x29, sp, #0x20
  1000eb6d4  mov     x19, x0
  1000eb6d8  bl      sub_1000e8918                            ; sub_1000e8918(a0, a1, a2, a3)
  1000eb6dc  adrp    x8, #0x1003b4000
  1000eb6e0  add     x8, x8, #0x390                           ; &d_1003b4390
  1000eb6e4  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000eb6e8  str     x8, [x19, #0xb0]                         ; a0[+0xb0] = vtable<csl::Controllable>
  1000eb6ec  mov     w20, #0xb8
loc_1000eb6f0:
  1000eb6f0  ldr     x0, [x19, x20]
  1000eb6f4  cbz     x0, loc_1000eb708                        ; if (x0 == 0)
  1000eb6f8  ldr     x8, [x0]
  1000eb6fc  ldr     x8, [x8, #8]
  1000eb700  blr     x8
  1000eb704  str     xzr, [x19, x20]
loc_1000eb708:
  1000eb708  add     x20, x20, #8
  1000eb70c  cmp     x20, #0x120
  1000eb710  b.ne    loc_1000eb6f0                            ; if ((x20 + 8) != 288)
  1000eb714  mov     x0, x19
  1000eb718  ldp     x29, x30, [sp, #0x20]
  1000eb71c  ldp     x20, x19, [sp, #0x10]
  1000eb720  ldp     x22, x21, [sp], #0x30
  1000eb724  ret
  1000eb728  mov     x20, x0
  1000eb72c  mov     x21, #0
  1000eb730  adrp    x8, #0x1003b4000
  1000eb734  add     x8, x8, #0x390                           ; &d_1003b4390
  1000eb738  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000eb73c  str     x8, [x19, #0xb0]
  1000eb740  add     x19, x19, #0xb8
loc_1000eb744:
  1000eb744  ldr     x0, [x19, x21]
  1000eb748  cbz     x0, loc_1000eb75c                        ; if (x0 == 0)
  1000eb74c  ldr     x8, [x0]
  1000eb750  ldr     x8, [x8, #8]
  1000eb754  blr     x8
  1000eb758  str     xzr, [x19, x21]
loc_1000eb75c:
  1000eb75c  add     x21, x21, #8
  1000eb760  cmp     x21, #0x68
  1000eb764  b.ne    loc_1000eb744                            ; if ((x21 + 8) != 104)
  1000eb768  mov     x0, x20
  1000eb76c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eb770  bl      sub_10000b760

; ======================================================================
; csl::Joiner::~Joiner/*deleting*/(…)
; address 0x1000eb774  size 56  kind sym
; ======================================================================
  1000eb774  stp     x20, x19, [sp, #-0x20]!
  1000eb778  stp     x29, x30, [sp, #0x10]
  1000eb77c  add     x29, sp, #0x10
  1000eb780  mov     x19, x0
  1000eb784  bl      __ZN3csl6JoinerD1Ev                      ; ZN3csl6JoinerD1Ev(a0, a1, a2, a3)
  1000eb788  mov     x0, x19
  1000eb78c  ldp     x29, x30, [sp, #0x10]
  1000eb790  ldp     x20, x19, [sp], #0x20
  1000eb794  b       __ZdlPv                                  ; ZdlPv(a0)
  1000eb798  mov     x20, x0
  1000eb79c  mov     x0, x19
  1000eb7a0  bl      __ZdlPv                                  ; ZdlPv()
  1000eb7a4  mov     x0, x20
  1000eb7a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Joiner::thunk_vfunc_0
; address 0x1000eb7ac  size 16  kind cxx
; ======================================================================
  1000eb7ac  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eb7b0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eb7b4  add     x0, x0, x8
  1000eb7b8  b       __ZN3csl6JoinerD1Ev                      ; ZN3csl6JoinerD1Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Joiner::thunk_vfunc_1
; address 0x1000eb7bc  size 16  kind cxx
; ======================================================================
  1000eb7bc  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eb7c0  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eb7c4  add     x0, x0, x8
  1000eb7c8  b       __ZN3csl6JoinerD0Ev                      ; ZN3csl6JoinerD0Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)
