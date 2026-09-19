// unit csl_Splitter — 8 functions
//   0x1000ea650     216  csl::Splitter::vfunc_5
//   0x1000ea728     548  csl::Splitter::vfunc_4
//   0x1000ea94c     264  sub_1000ea94c
//   0x1000eb7ec     212  csl::Splitter::~Splitter(…)
//   0x1000eb8c0      56  csl::Splitter::~Splitter/*deleting*/(…)
//   0x1000eb8f8       8  csl::Splitter::vfunc_3
//   0x1000eb900      16  csl::Splitter::thunk_vfunc_0
//   0x1000eb910      16  csl::Splitter::thunk_vfunc_1

; ======================================================================
; csl::Splitter::vfunc_5
; address 0x1000ea650  size 216  kind cxx
; ======================================================================
  1000ea650  stp     x20, x19, [sp, #-0x20]!
  1000ea654  stp     x29, x30, [sp, #0x10]
  1000ea658  add     x29, sp, #0x10
  1000ea65c  sub     sp, sp, #0x20
  1000ea660  mov     w0, #0x10
  1000ea664  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000ea668  mov     x19, x0
  1000ea66c  adrp    x1, #0x100388000
  1000ea670  add     x1, x1, #0x53a                           ; "Asking for mono nextBuffer of a Splitter"
  1000ea674  add     x0, sp, #0x10
  1000ea678  add     x2, sp, #8
  1000ea67c  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Asking for mono nextBuffer of a Splitter", &sp[0x8])
  1000ea680  add     x1, sp, #0x10
  1000ea684  mov     x0, x19
  1000ea688  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000ea68c  adrp    x8, #0x1003b0000
  1000ea690  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea694  add     x8, x8, #0x10
  1000ea698  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000ea69c  adrp    x1, #0x100428000
  1000ea6a0  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000ea6a4  adrp    x2, #0x1003b0000
  1000ea6a8  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea6ac  mov     x0, x19
  1000ea6b0  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000ea6b4  b       loc_1000ea700
  1000ea6b8  mov     x20, x1
  1000ea6bc  mov     x19, x0
  1000ea6c0  ldr     x8, [sp, #0x10]
  1000ea6c4  sub     x0, x8, #0x18
  1000ea6c8  adrp    x9, #0x1003b0000
  1000ea6cc  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000ea6d0  cmp     x0, x9
  1000ea6d4  b.eq    loc_1000ea6fc                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000ea6d8  sub     x8, x8, #8
loc_1000ea6dc:
  1000ea6dc  ldaxr   w9, [x8]
  1000ea6e0  sub     w10, w9, #1
  1000ea6e4  stlxr   w11, w10, [x8]
  1000ea6e8  cbnz    w11, loc_1000ea6dc                       ; if (w11 != 0)
  1000ea6ec  cmp     w9, #0
  1000ea6f0  b.gt    loc_1000ea6fc                            ; if (w9 > 0)
  1000ea6f4  add     x1, sp, #0x18
  1000ea6f8  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000ea6fc:
  1000ea6fc  tbz     w20, 0x1f, loc_1000ea708                 ; if (w20 >= 0)
loc_1000ea700:
  1000ea700  mov     x0, x19
  1000ea704  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ea708:
  1000ea708  mov     x0, x19
  1000ea70c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ea710  mov     x20, x1
  1000ea714  mov     x8, x19
  1000ea718  mov     x19, x0
  1000ea71c  mov     x0, x8
  1000ea720  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000ea724  b       loc_1000ea6fc

; ======================================================================
; csl::Splitter::vfunc_4
; address 0x1000ea728  size 548  kind cxx
; ======================================================================
  1000ea728  stp     x22, x21, [sp, #-0x30]!
  1000ea72c  stp     x20, x19, [sp, #0x10]
  1000ea730  stp     x29, x30, [sp, #0x20]
  1000ea734  add     x29, sp, #0x20
  1000ea738  sub     sp, sp, #0x30
  1000ea73c  mov     x20, x1
  1000ea740  mov     x19, x0
  1000ea744  ldr     w8, [x20, #8]                            ; w8 = a1[+0x8]
  1000ea748  cmp     w8, #1
  1000ea74c  b.ne    loc_1000ea7e4                            ; if (a1[+0x8] != 1)
  1000ea750  ldp     w8, w9, [x19, #0xe8]
  1000ea754  cmp     w9, w8
  1000ea758  b.lo    loc_1000ea76c                            ; if (w9 <u w8)
  1000ea75c  ldr     w1, [x20, #0xc]                          ; w1 = a1[+0xc]
  1000ea760  mov     x0, x19
  1000ea764  bl      sub_1000e9fb0                            ; sub_1000e9fb0(a0, a1[+0xc], a2, a3)
  1000ea768  str     wzr, [x19, #0xec]                        ; a0[+0xec] = 0
loc_1000ea76c:
  1000ea76c  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ea770  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ea774  add     x8, x8, x19
  1000ea778  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20]
  1000ea77c  ldr     x22, [x8, #0x10]                         ; x22 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10]
  1000ea780  cbz     x22, loc_1000ea874                       ; if ((a0[+0x0][+0x-18] + a0)[+0x20][+0x10] == 0)
  1000ea784  ldr     w21, [x20, #0x14]                        ; w21 = a1[+0x14]
  1000ea788  ldr     x8, [x20]                                ; x8 = a1[+0x0]
  1000ea78c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ea790  mov     w1, #0
  1000ea794  mov     x0, x20
  1000ea798  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ea79c  mov     x20, x0
  1000ea7a0  ldr     x8, [x22]                                ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0]
  1000ea7a4  ldr     x8, [x8, #0x20]                          ; x8 = (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0][+0x20]
  1000ea7a8  ldr     w1, [x19, #0xec]                         ; w1 = a0[+0xec]
  1000ea7ac  mov     x0, x22
  1000ea7b0  blr     x8                                       ; call (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0][+0x20]
  1000ea7b4  mov     x1, x0
  1000ea7b8  mov     x0, x20
  1000ea7bc  mov     x2, x21
  1000ea7c0  bl      _memcpy                                  ; memcpy(a1[+0x0][+0x20](…), (a0[+0x0][+0x-18] + a0)[+0x20][+0x10][+0x0][+0x20](…), a1[+0x14])
  1000ea7c4  ldr     w8, [x19, #0xec]                         ; w8 = a0[+0xec]
  1000ea7c8  add     w8, w8, #1
  1000ea7cc  str     w8, [x19, #0xec]                         ; a0[+0xec] = (a0[+0xec] + 1)
  1000ea7d0  sub     sp, x29, #0x20
  1000ea7d4  ldp     x29, x30, [sp, #0x20]
  1000ea7d8  ldp     x20, x19, [sp, #0x10]
  1000ea7dc  ldp     x22, x21, [sp], #0x30
  1000ea7e0  ret
loc_1000ea7e4:
  1000ea7e4  mov     w0, #0x10
  1000ea7e8  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000ea7ec  mov     x19, x0
  1000ea7f0  adrp    x1, #0x100388000
  1000ea7f4  add     x1, x1, #0x563                           ; "Asking for a stereo output of a channel splitter"
  1000ea7f8  add     x0, sp, #0x20
  1000ea7fc  add     x2, sp, #0x18
  1000ea800  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x20], "Asking for a stereo output of a channel splitter", &sp[0x18])
  1000ea804  add     x1, sp, #0x20
  1000ea808  mov     x0, x19
  1000ea80c  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x20])
  1000ea810  adrp    x8, #0x1003b0000
  1000ea814  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea818  add     x8, x8, #0x10
  1000ea81c  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000ea820  adrp    x1, #0x100428000
  1000ea824  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000ea828  adrp    x2, #0x1003b0000
  1000ea82c  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea830  mov     x0, x19
  1000ea834  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000ea838  b       loc_1000ea924
  1000ea83c  mov     x20, x1
  1000ea840  mov     x19, x0
  1000ea844  ldr     x8, [sp, #0x20]
  1000ea848  sub     x0, x8, #0x18
  1000ea84c  adrp    x9, #0x1003b0000
  1000ea850  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000ea854  cmp     x0, x9
  1000ea858  b.eq    loc_1000ea910                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000ea85c  sub     x8, x8, #8
loc_1000ea860:
  1000ea860  ldaxr   w9, [x8]
  1000ea864  sub     w10, w9, #1
  1000ea868  stlxr   w11, w10, [x8]
  1000ea86c  cbnz    w11, loc_1000ea860                       ; if (w11 != 0)
  1000ea870  b       loc_1000ea900
loc_1000ea874:
  1000ea874  mov     w0, #0x10
  1000ea878  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000ea87c  mov     x19, x0
  1000ea880  adrp    x1, #0x100388000
  1000ea884  add     x1, x1, #0x594                           ; "Missing buffer in channel splitter"
  1000ea888  add     x0, sp, #0x10
  1000ea88c  add     x2, sp, #8
  1000ea890  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Missing buffer in channel splitter", &sp[0x8])
  1000ea894  add     x1, sp, #0x10
  1000ea898  mov     x0, x19
  1000ea89c  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000ea8a0  adrp    x8, #0x1003b0000
  1000ea8a4  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea8a8  add     x8, x8, #0x10
  1000ea8ac  str     x8, [x19]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000ea8b0  adrp    x1, #0x100428000
  1000ea8b4  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000ea8b8  adrp    x2, #0x1003b0000
  1000ea8bc  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000ea8c0  mov     x0, x19
  1000ea8c4  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000ea8c8  b       loc_1000ea924
  1000ea8cc  mov     x20, x1
  1000ea8d0  mov     x19, x0
  1000ea8d4  ldr     x8, [sp, #0x10]
  1000ea8d8  sub     x0, x8, #0x18
  1000ea8dc  adrp    x9, #0x1003b0000
  1000ea8e0  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000ea8e4  cmp     x0, x9
  1000ea8e8  b.eq    loc_1000ea910                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000ea8ec  sub     x8, x8, #8
loc_1000ea8f0:
  1000ea8f0  ldaxr   w9, [x8]
  1000ea8f4  sub     w10, w9, #1
  1000ea8f8  stlxr   w11, w10, [x8]
  1000ea8fc  cbnz    w11, loc_1000ea8f0                       ; if (w11 != 0)
loc_1000ea900:
  1000ea900  cmp     w9, #0
  1000ea904  b.gt    loc_1000ea910                            ; if (w9 > 0)
  1000ea908  add     x1, sp, #0x28
  1000ea90c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x28])
loc_1000ea910:
  1000ea910  tbz     w20, 0x1f, loc_1000ea91c                 ; if (w20 >= 0)
  1000ea914  mov     x0, x19
  1000ea918  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000ea91c:
  1000ea91c  mov     x0, x19
  1000ea920  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000ea924:
  1000ea924  mov     x20, x1
  1000ea928  mov     x19, x0
  1000ea92c  b       loc_1000ea910
  1000ea930  b       loc_1000ea934
loc_1000ea934:
  1000ea934  mov     x20, x1
  1000ea938  mov     x8, x19
  1000ea93c  mov     x19, x0
  1000ea940  mov     x0, x8
  1000ea944  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000ea948  b       loc_1000ea910

; ======================================================================
; sub_1000ea94c
; address 0x1000ea94c  size 264  kind sub
; ======================================================================
  1000ea94c  stp     x22, x21, [sp, #-0x30]!
  1000ea950  stp     x20, x19, [sp, #0x10]
  1000ea954  stp     x29, x30, [sp, #0x20]
  1000ea958  add     x29, sp, #0x20
  1000ea95c  mov     x20, x2
  1000ea960  mov     x21, x1
  1000ea964  mov     x19, x0
  1000ea968  adrp    x22, #0x1003b4000
  1000ea96c  add     x22, x22, #0x390                         ; &d_1003b4390
  1000ea970  add     x8, x22, #0x10                           ; vtable<csl::Controllable>
  1000ea974  str     x8, [x19, #0xb0]                         ; a0[+0xb0] = vtable<csl::Controllable>
  1000ea978  add     x0, x19, #0xb8
  1000ea97c  mov     w2, #0x68
  1000ea980  mov     w1, #0
  1000ea984  bl      _memset                                  ; memset((a0 + 184), 0, 104, a3)
  1000ea988  bl      sub_1000e732c                            ; sub_1000e732c(memset((a0 + 184), 0, 104, a3))
  1000ea98c  mov     x1, x0
  1000ea990  mov     w2, #1
  1000ea994  mov     x0, x19
  1000ea998  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(memset((a0 + 184), 0, 104, a3)), 1)
  1000ea99c  strb    wzr, [x19, #0xa4]                        ; a0[+0xa4] = 0
  1000ea9a0  adrp    x8, #0x1003b4000
  1000ea9a4  add     x8, x8, #0x5b0                           ; &d_1003b45b0
  1000ea9a8  add     x9, x8, #0x18                            ; vtable<csl::Joiner>
  1000ea9ac  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::Joiner>
  1000ea9b0  add     x8, x8, #0xb0                            ; vtable<csl::Joiner (secondary, -0xb0)>
  1000ea9b4  mov     x0, x19
  1000ea9b8  str     x8, [x0, #0xb0]!                         ; a0[+0xb0] = vtable<csl::Joiner (secondary, -0xb0)>
  1000ea9bc  mov     w1, #0
  1000ea9c0  mov     x2, x21
  1000ea9c4  bl      sub_1000e969c                            ; sub_1000e969c(a0, 0, a1)
  1000ea9c8  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000ea9cc  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000ea9d0  add     x0, x19, x8
  1000ea9d4  mov     w1, #1
  1000ea9d8  mov     x2, x20
  1000ea9dc  bl      sub_1000e969c                            ; sub_1000e969c((a0 + a0[+0x0][+0x-18]), 1, a2)
  1000ea9e0  mov     w8, #2
  1000ea9e4  str     w8, [x19, #0x60]                         ; a0[+0x60] = 2
  1000ea9e8  mov     x0, x19
  1000ea9ec  ldp     x29, x30, [sp, #0x20]
  1000ea9f0  ldp     x20, x19, [sp, #0x10]
  1000ea9f4  ldp     x22, x21, [sp], #0x30
  1000ea9f8  ret
  1000ea9fc  mov     x20, x0
  1000eaa00  b       loc_1000eaa10
  1000eaa04  mov     x20, x0
  1000eaa08  mov     x0, x19
  1000eaa0c  bl      sub_1000e8918
loc_1000eaa10:
  1000eaa10  mov     x21, #0
  1000eaa14  add     x8, x22, #0x10
  1000eaa18  str     x8, [x19, #0xb0]
  1000eaa1c  add     x19, x19, #0xb8
loc_1000eaa20:
  1000eaa20  ldr     x0, [x19, x21]
  1000eaa24  cbz     x0, loc_1000eaa38                        ; if (x0 == 0)
  1000eaa28  ldr     x8, [x0]
  1000eaa2c  ldr     x8, [x8, #8]
  1000eaa30  blr     x8
  1000eaa34  str     xzr, [x19, x21]
loc_1000eaa38:
  1000eaa38  add     x21, x21, #8
  1000eaa3c  cmp     x21, #0x68
  1000eaa40  b.ne    loc_1000eaa20                            ; if ((x21 + 8) != 104)
  1000eaa44  mov     x0, x20
  1000eaa48  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eaa4c  bl      sub_10000b760
  1000eaa50  bl      sub_10000b760                            ; sub_10000b760(sub_10000b760())

; ======================================================================
; csl::Splitter::~Splitter(…)
; address 0x1000eb7ec  size 212  kind sym
; ======================================================================
  1000eb7ec  stp     x22, x21, [sp, #-0x30]!
  1000eb7f0  stp     x20, x19, [sp, #0x10]
  1000eb7f4  stp     x29, x30, [sp, #0x20]
  1000eb7f8  add     x29, sp, #0x20
  1000eb7fc  mov     x19, x0
  1000eb800  adrp    x8, #0x1003b4000
  1000eb804  add     x8, x8, #0x990                           ; &d_1003b4990
  1000eb808  add     x9, x8, #0x18                            ; vtable<csl::FanOut>
  1000eb80c  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::FanOut>
  1000eb810  add     x8, x8, #0xb0                            ; vtable<csl::FanOut (secondary, -0xf0)>
  1000eb814  str     x8, [x19, #0xf0]                         ; a0[+0xf0] = vtable<csl::FanOut (secondary, -0xf0)>
  1000eb818  add     x0, x19, #0xb0
  1000eb81c  bl      sub_1000e80e0                            ; sub_1000e80e0((a0 + 176), a1, a2, a3)
  1000eb820  mov     x0, x19
  1000eb824  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000eb828  adrp    x8, #0x1003b4000
  1000eb82c  add     x8, x8, #0x390                           ; &d_1003b4390
  1000eb830  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000eb834  str     x8, [x19, #0xf0]                         ; a0[+0xf0] = vtable<csl::Controllable>
  1000eb838  mov     w20, #0xf8
loc_1000eb83c:
  1000eb83c  ldr     x0, [x19, x20]
  1000eb840  cbz     x0, loc_1000eb854                        ; if (x0 == 0)
  1000eb844  ldr     x8, [x0]
  1000eb848  ldr     x8, [x8, #8]
  1000eb84c  blr     x8
  1000eb850  str     xzr, [x19, x20]
loc_1000eb854:
  1000eb854  add     x20, x20, #8
  1000eb858  cmp     x20, #0x160
  1000eb85c  b.ne    loc_1000eb83c                            ; if ((x20 + 8) != 352)
  1000eb860  mov     x0, x19
  1000eb864  ldp     x29, x30, [sp, #0x20]
  1000eb868  ldp     x20, x19, [sp, #0x10]
  1000eb86c  ldp     x22, x21, [sp], #0x30
  1000eb870  ret
  1000eb874  mov     x20, x0
  1000eb878  mov     x21, #0
  1000eb87c  adrp    x8, #0x1003b4000
  1000eb880  add     x8, x8, #0x390                           ; &d_1003b4390
  1000eb884  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000eb888  str     x8, [x19, #0xf0]
  1000eb88c  add     x19, x19, #0xf8
loc_1000eb890:
  1000eb890  ldr     x0, [x19, x21]
  1000eb894  cbz     x0, loc_1000eb8a8                        ; if (x0 == 0)
  1000eb898  ldr     x8, [x0]
  1000eb89c  ldr     x8, [x8, #8]
  1000eb8a0  blr     x8
  1000eb8a4  str     xzr, [x19, x21]
loc_1000eb8a8:
  1000eb8a8  add     x21, x21, #8
  1000eb8ac  cmp     x21, #0x68
  1000eb8b0  b.ne    loc_1000eb890                            ; if ((x21 + 8) != 104)
  1000eb8b4  mov     x0, x20
  1000eb8b8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000eb8bc  bl      sub_10000b760

; ======================================================================
; csl::Splitter::~Splitter/*deleting*/(…)
; address 0x1000eb8c0  size 56  kind sym
; ======================================================================
  1000eb8c0  stp     x20, x19, [sp, #-0x20]!
  1000eb8c4  stp     x29, x30, [sp, #0x10]
  1000eb8c8  add     x29, sp, #0x10
  1000eb8cc  mov     x19, x0
  1000eb8d0  bl      __ZN3csl8SplitterD1Ev                    ; ZN3csl8SplitterD1Ev(a0, a1, a2, a3)
  1000eb8d4  mov     x0, x19
  1000eb8d8  ldp     x29, x30, [sp, #0x10]
  1000eb8dc  ldp     x20, x19, [sp], #0x20
  1000eb8e0  b       __ZdlPv                                  ; ZdlPv(a0)
  1000eb8e4  mov     x20, x0
  1000eb8e8  mov     x0, x19
  1000eb8ec  bl      __ZdlPv                                  ; ZdlPv()
  1000eb8f0  mov     x0, x20
  1000eb8f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Splitter::vfunc_3
; address 0x1000eb8f8  size 8  kind cxx
; ======================================================================
  1000eb8f8  mov     w0, #1
  1000eb8fc  ret

; ======================================================================
; csl::Splitter::thunk_vfunc_0
; address 0x1000eb900  size 16  kind cxx
; ======================================================================
  1000eb900  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eb904  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eb908  add     x0, x0, x8
  1000eb90c  b       __ZN3csl8SplitterD1Ev                    ; ZN3csl8SplitterD1Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)

; ======================================================================
; csl::Splitter::thunk_vfunc_1
; address 0x1000eb910  size 16  kind cxx
; ======================================================================
  1000eb910  ldr     x8, [x0]                                 ; x8 = a0[+0x0]
  1000eb914  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000eb918  add     x0, x0, x8
  1000eb91c  b       __ZN3csl8SplitterD0Ev                    ; ZN3csl8SplitterD0Ev((a0 + a0[+0x0][+0x-18]), a1, a2, a3)
