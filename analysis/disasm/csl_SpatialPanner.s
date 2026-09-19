// unit csl_SpatialPanner — 24 functions
//   0x1000f0168     216  csl::SpatialPanner::vfunc_5
//   0x1000f0240       4  csl::SpatialPanner::vfunc_18
//   0x1000f0244     192  sub_1000f0244
//   0x1000f0304     308  sub_1000f0304
//   0x1000f0438      36  sub_1000f0438
//   0x1000f045c     156  sub_1000f045c
//   0x1000f0e28      36  csl::SpatialPanner::~SpatialPanner
//   0x1000f0e4c       8  csl::SpatialPanner::thunk_vfunc_0
//   0x1000f0e54      56  csl::SpatialPanner::~SpatialPanner/*deleting*/
//   0x1000f0e8c       8  csl::SpatialPanner::thunk_vfunc_1
//   0x1000f0e94      96  csl::SpatialPanner::vfunc_14
//   0x1000f0ef4     224  csl::SpatialPanner::vfunc_15
//   0x1000f0fd4      40  csl::SpatialPanner::vfunc_17
//   0x1000f0ffc      64  csl::SpatialPanner::vfunc_16
//   0x1000f103c       8  csl::SpatialPanner::thunk_vfunc_2
//   0x1000f1044     168  csl::SpatialPanner::vfunc_12
//   0x1000f10ec      60  std::vector<…><…>(…)
//   0x1000f1128     336  std::vector<…><…>(…)
//   0x1000f1278       4  sub_1000f1278
//   0x1000f127c       4  sub_1000f127c
//   0x1000f1280     448  sub_1000f1280
//   0x1000f1440     160  sub_1000f1440
//   0x1000f14e0     516  sub_1000f14e0
//   0x1000f16e4     100  sub_1000f16e4

; ======================================================================
; csl::SpatialPanner::vfunc_5
; address 0x1000f0168  size 216  kind cxx
; ======================================================================
  1000f0168  stp     x20, x19, [sp, #-0x20]!
  1000f016c  stp     x29, x30, [sp, #0x10]
  1000f0170  add     x29, sp, #0x10
  1000f0174  sub     sp, sp, #0x20
  1000f0178  mov     w0, #0x10
  1000f017c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16, a1, a2, a3)
  1000f0180  mov     x19, x0
  1000f0184  adrp    x1, #0x100388000
  1000f0188  add     x1, x1, #0x80f                           ; "Asking for mono nextBuffer of a SpatialPanner"
  1000f018c  add     x0, sp, #0x10
  1000f0190  add     x2, sp, #8
  1000f0194  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Asking for mono nextBuffer of a SpatialPanner", &sp[0x8])
  1000f0198  add     x1, sp, #0x10
  1000f019c  mov     x0, x19
  1000f01a0  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16, a1, a2, a3), &sp[0x10])
  1000f01a4  adrp    x8, #0x1003b0000
  1000f01a8  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000f01ac  add     x8, x8, #0x10
  1000f01b0  str     x8, [x19]                                ; cxa_allocate_exception(16, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f01b4  adrp    x1, #0x100428000
  1000f01b8  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000f01bc  adrp    x2, #0x1003b0000
  1000f01c0  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000f01c4  mov     x0, x19
  1000f01c8  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16, a1, a2, a3), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000f01cc  b       loc_1000f0218
  1000f01d0  mov     x20, x1
  1000f01d4  mov     x19, x0
  1000f01d8  ldr     x8, [sp, #0x10]
  1000f01dc  sub     x0, x8, #0x18
  1000f01e0  adrp    x9, #0x1003b0000
  1000f01e4  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f01e8  cmp     x0, x9
  1000f01ec  b.eq    loc_1000f0214                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f01f0  sub     x8, x8, #8
loc_1000f01f4:
  1000f01f4  ldaxr   w9, [x8]
  1000f01f8  sub     w10, w9, #1
  1000f01fc  stlxr   w11, w10, [x8]
  1000f0200  cbnz    w11, loc_1000f01f4                       ; if (w11 != 0)
  1000f0204  cmp     w9, #0
  1000f0208  b.gt    loc_1000f0214                            ; if (w9 > 0)
  1000f020c  add     x1, sp, #0x18
  1000f0210  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000f0214:
  1000f0214  tbz     w20, 0x1f, loc_1000f0220                 ; if (w20 >= 0)
loc_1000f0218:
  1000f0218  mov     x0, x19
  1000f021c  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f0220:
  1000f0220  mov     x0, x19
  1000f0224  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f0228  mov     x20, x1
  1000f022c  mov     x8, x19
  1000f0230  mov     x19, x0
  1000f0234  mov     x0, x8
  1000f0238  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f023c  b       loc_1000f0214

; ======================================================================
; csl::SpatialPanner::vfunc_18
; address 0x1000f0240  size 4  kind cxx
; ======================================================================
  1000f0240  ret

; ======================================================================
; sub_1000f0244
; address 0x1000f0244  size 192  kind sub
; ======================================================================
  1000f0244  stp     x22, x21, [sp, #-0x30]!
  1000f0248  stp     x20, x19, [sp, #0x10]
  1000f024c  stp     x29, x30, [sp, #0x20]
  1000f0250  add     x29, sp, #0x20
  1000f0254  mov     x20, x2
  1000f0258  mov     x21, x1
  1000f025c  mov     x19, x0
  1000f0260  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000f0264  mov     x1, x0
  1000f0268  mov     w2, #1
  1000f026c  mov     x0, x19
  1000f0270  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 1)
  1000f0274  stp     wzr, wzr, [x19, #0xb0]
  1000f0278  adrp    x8, #0x1003b6000
  1000f027c  add     x8, x8, #0x2d0                           ; &d_1003b62d0
  1000f0280  add     x9, x8, #0x10                            ; vtable<csl::Spatializer>
  1000f0284  add     x8, x8, #0x98                            ; vtable<csl::Spatializer (secondary, -0xa8)>
  1000f0288  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::Spatializer>
  1000f028c  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::Spatializer (secondary, -0xa8)>
  1000f0290  str     xzr, [x19, #0xb8]                        ; a0[+0xb8] = 0
  1000f0294  stp     xzr, xzr, [x19, #0xe0]
  1000f0298  stp     xzr, xzr, [x19, #0xd0]
  1000f029c  mov     x8, x19
  1000f02a0  str     xzr, [x8, #0xc8]!                        ; a0[+0xc8] = 0
  1000f02a4  stp     x8, x8, [x19, #0xd8]
  1000f02a8  str     x20, [x19, #0xf0]                        ; a0[+0xf0] = a2
  1000f02ac  str     xzr, [x19, #0x100]                       ; a0[+0x100] = 0
  1000f02b0  mov     x8, #0x200000002
  1000f02b4  str     x8, [x19, #0x60]                         ; a0[+0x60] = 0x200000002
  1000f02b8  mov     x0, x19
  1000f02bc  mov     x1, x21
  1000f02c0  bl      sub_1000f0304                            ; sub_1000f0304(a0, a1)
  1000f02c4  mov     w8, #0x42c80000
  1000f02c8  str     w8, [x19, #0x108]                        ; a0[+0x108] = 0x42c80000
  1000f02cc  mov     x0, x19
  1000f02d0  ldp     x29, x30, [sp, #0x20]
  1000f02d4  ldp     x20, x19, [sp, #0x10]
  1000f02d8  ldp     x22, x21, [sp], #0x30
  1000f02dc  ret
  1000f02e0  mov     x20, x0
  1000f02e4  add     x0, x19, #0xc0
  1000f02e8  ldr     x1, [x19, #0xd0]
  1000f02ec  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E((x19 + 192))
  1000f02f0  mov     x0, x19
  1000f02f4  bl      sub_1000e8918
  1000f02f8  mov     x0, x20
  1000f02fc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f0300  bl      sub_10000b760

; ======================================================================
; sub_1000f0304
; address 0x1000f0304  size 308  kind sub
; ======================================================================
loc_1000f0304:
  1000f0304  stp     x22, x21, [sp, #-0x30]!
  1000f0308  stp     x20, x19, [sp, #0x10]
  1000f030c  stp     x29, x30, [sp, #0x20]
  1000f0310  add     x29, sp, #0x20
  1000f0314  mov     x19, x0
  1000f0318  str     w1, [x19, #0xf8]                         ; a0[+0xf8] = a1
  1000f031c  cmp     w1, #4
  1000f0320  b.hi    loc_1000f0348                            ; if (a1 >u 4)
  1000f0324  ubfx    x8, x1, #0, #0x20
  1000f0328  adr     x9, #0x1000f0424                         ; 0x1000f0424
  1000f032c  nop
  1000f0330  ldrsw   x8, [x9, x8, lsl #2]
  1000f0334  add     x8, x8, x9
  1000f0338  br      x8                                       ; switch (a1) { case 0: goto loc_1000f033c; case 1: goto loc_1000f03c0; case 2: goto loc_1000f0348; case 3: goto loc_1000f03dc; case 4: goto loc_1000f03fc }
loc_1000f033c:  ; case 0
  1000f033c  mov     w8, #2
  1000f0340  str     w8, [x19, #0xf8]                         ; a0[+0xf8] = 2
  1000f0344  b       loc_1000f0364
loc_1000f0348:  ; case 2
  1000f0348  adrp    x1, #0x100388000
  1000f034c  add     x1, x1, #0x83d                           ; "Unknown PannerMode Specified."
  1000f0350  mov     w0, #1
  1000f0354  bl      sub_1000e772c                            ; sub_1000e772c(1, "Unknown PannerMode Specified.", a2, a3)
  1000f0358  mov     w1, #0
  1000f035c  mov     x0, x19
  1000f0360  bl      loc_1000f0304                            ; sub_1000f0304(a0, 0)
loc_1000f0364:
  1000f0364  add     x22, x19, #0xc8
  1000f0368  ldr     x21, [x19, #0xd8]                        ; x21 = a0[+0xd8]
  1000f036c  b       loc_1000f0390
loc_1000f0370:
  1000f0370  ldr     x8, [x20]
  1000f0374  ldr     x8, [x8, #0x70]
  1000f0378  ldr     x1, [x21, #0x28]
  1000f037c  mov     x0, x20
  1000f0380  blr     x8
  1000f0384  mov     x0, x21
  1000f0388  bl      __ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base()
  1000f038c  mov     x21, x0
loc_1000f0390:
  1000f0390  cmp     x21, x22
  1000f0394  b.ne    loc_1000f0370                            ; if (x21 != (a0 + 200))
  1000f0398  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000f039c  cbz     x0, loc_1000f03ac                        ; if (a0[+0xb8] == 0)
  1000f03a0  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f03a4  ldr     x8, [x8, #8]                             ; x8 = a0[+0xb8][+0x0][+0x8]
  1000f03a8  blr     x8                                       ; call a0[+0xb8][+0x0][+0x8]
loc_1000f03ac:
  1000f03ac  str     x20, [x19, #0xb8]                        ; a0[+0xb8] = x20
  1000f03b0  ldp     x29, x30, [sp, #0x20]
  1000f03b4  ldp     x20, x19, [sp, #0x10]
  1000f03b8  ldp     x22, x21, [sp], #0x30
  1000f03bc  ret
loc_1000f03c0:  ; case 1
  1000f03c0  mov     w0, #0x288
  1000f03c4  bl      __Znwm                                   ; Znwm(648, a1, a2, a3)
  1000f03c8  mov     x20, x0
  1000f03cc  mov     w1, #0x100
  1000f03d0  bl      sub_1000f2ec4                            ; sub_1000f2ec4(Znwm(648, a1, a2, a3), 256)
  1000f03d4  b       loc_1000f0364
  1000f03d8  b       loc_1000f0410
loc_1000f03dc:  ; case 3
  1000f03dc  mov     w0, #0x140
  1000f03e0  bl      __Znwm                                   ; Znwm(320, a1, a2, a3)
  1000f03e4  mov     x20, x0
  1000f03e8  ldr     x2, [x19, #0xf0]                         ; x2 = a0[+0xf0]
  1000f03ec  mov     w1, #1
  1000f03f0  bl      sub_1000f7520                            ; sub_1000f7520(Znwm(320, a1, a2, a3), 1, a0[+0xf0])
  1000f03f4  b       loc_1000f0364
  1000f03f8  b       loc_1000f0410
loc_1000f03fc:  ; case 4
  1000f03fc  mov     w0, #0xee8
  1000f0400  bl      __Znwm                                   ; Znwm(3816, a1, a2, a3)
  1000f0404  mov     x20, x0
  1000f0408  bl      sub_1000efb98                            ; sub_1000efb98(Znwm(3816, a1, a2, a3))
  1000f040c  b       loc_1000f0364
loc_1000f0410:
  1000f0410  mov     x19, x0
  1000f0414  mov     x0, x20
  1000f0418  bl      __ZdlPv                                  ; ZdlPv()
  1000f041c  mov     x0, x19
  1000f0420  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f0424  .word   jump table of 1000f0338, case 0 -> loc_1000f033c
  1000f0428  .word   jump table of 1000f0338, case 1 -> loc_1000f03c0
  1000f042c  .word   jump table of 1000f0338, case 2 -> loc_1000f0348
  1000f0430  .word   jump table of 1000f0338, case 3 -> loc_1000f03dc
  1000f0434  .word   jump table of 1000f0338, case 4 -> loc_1000f03fc

; ======================================================================
; sub_1000f0438
; address 0x1000f0438  size 36  kind sub
; ======================================================================
  1000f0438  stp     x20, x19, [sp, #-0x20]!
  1000f043c  stp     x29, x30, [sp, #0x10]
  1000f0440  add     x29, sp, #0x10
  1000f0444  mov     x19, x0
  1000f0448  bl      sub_1000f0244                            ; sub_1000f0244(a0, a1, a2, a3)
  1000f044c  mov     x0, x19
  1000f0450  ldp     x29, x30, [sp, #0x10]
  1000f0454  ldp     x20, x19, [sp], #0x20
  1000f0458  ret

; ======================================================================
; sub_1000f045c
; address 0x1000f045c  size 156  kind sub
; ======================================================================
  1000f045c  stp     x20, x19, [sp, #-0x20]!
  1000f0460  stp     x29, x30, [sp, #0x10]
  1000f0464  add     x29, sp, #0x10
  1000f0468  mov     x19, x0
  1000f046c  adrp    x8, #0x1003b6000
  1000f0470  add     x8, x8, #0x2d0                           ; &d_1003b62d0
  1000f0474  add     x9, x8, #0x10                            ; vtable<csl::Spatializer>
  1000f0478  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::Spatializer>
  1000f047c  add     x8, x8, #0x98                            ; vtable<csl::Spatializer (secondary, -0xa8)>
  1000f0480  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::Spatializer (secondary, -0xa8)>
  1000f0484  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000f0488  cbz     x0, loc_1000f0498                        ; if (a0[+0xb8] == 0)
  1000f048c  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f0490  ldr     x8, [x8, #8]                             ; x8 = a0[+0xb8][+0x0][+0x8]
  1000f0494  blr     x8                                       ; call a0[+0xb8][+0x0][+0x8]
loc_1000f0498:
  1000f0498  ldr     x0, [x19, #0x100]                        ; x0 = a0[+0x100]
  1000f049c  cbz     x0, loc_1000f04b0                        ; if (a0[+0x100] == 0)
  1000f04a0  ldr     x8, [x0]                                 ; x8 = a0[+0x100][+0x0]
  1000f04a4  ldr     x8, [x8, #8]                             ; x8 = a0[+0x100][+0x0][+0x8]
  1000f04a8  blr     x8                                       ; call a0[+0x100][+0x0][+0x8]
  1000f04ac  str     xzr, [x19, #0x100]                       ; a0[+0x100] = 0
loc_1000f04b0:
  1000f04b0  add     x0, x19, #0xc0
  1000f04b4  ldr     x1, [x19, #0xd0]                         ; x1 = a0[+0xd0]
  1000f04b8  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E((a0 + 192), a0[+0xd0])
  1000f04bc  mov     x0, x19
  1000f04c0  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000f04c4  mov     x0, x19
  1000f04c8  ldp     x29, x30, [sp, #0x10]
  1000f04cc  ldp     x20, x19, [sp], #0x20
  1000f04d0  ret
  1000f04d4  mov     x20, x0
  1000f04d8  add     x0, x19, #0xc0
  1000f04dc  ldr     x1, [x19, #0xd0]
  1000f04e0  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E((x19 + 192))
  1000f04e4  mov     x0, x19
  1000f04e8  bl      sub_1000e8918
  1000f04ec  mov     x0, x20
  1000f04f0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f04f4  bl      sub_10000b760

; ======================================================================
; csl::SpatialPanner::~SpatialPanner
; address 0x1000f0e28  size 36  kind cxx
; ======================================================================
  1000f0e28  stp     x20, x19, [sp, #-0x20]!
  1000f0e2c  stp     x29, x30, [sp, #0x10]
  1000f0e30  add     x29, sp, #0x10
  1000f0e34  mov     x19, x0
  1000f0e38  bl      sub_1000f0d70                            ; sub_1000f0d70(a0, a1, a2, a3)
  1000f0e3c  mov     x0, x19
  1000f0e40  ldp     x29, x30, [sp, #0x10]
  1000f0e44  ldp     x20, x19, [sp], #0x20
  1000f0e48  ret

; ======================================================================
; csl::SpatialPanner::thunk_vfunc_0
; address 0x1000f0e4c  size 8  kind cxx
; ======================================================================
  1000f0e4c  sub     x0, x0, #0xa8
  1000f0e50  b       sub_1000f0d70                            ; sub_1000f0d70((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::SpatialPanner::~SpatialPanner/*deleting*/
; address 0x1000f0e54  size 56  kind cxx
; ======================================================================
  1000f0e54  stp     x20, x19, [sp, #-0x20]!
  1000f0e58  stp     x29, x30, [sp, #0x10]
  1000f0e5c  add     x29, sp, #0x10
  1000f0e60  mov     x19, x0
  1000f0e64  bl      sub_1000f0d70                            ; sub_1000f0d70(a0, a1, a2, a3)
  1000f0e68  mov     x0, x19
  1000f0e6c  ldp     x29, x30, [sp, #0x10]
  1000f0e70  ldp     x20, x19, [sp], #0x20
  1000f0e74  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f0e78  mov     x20, x0
  1000f0e7c  mov     x0, x19
  1000f0e80  bl      __ZdlPv                                  ; ZdlPv()
  1000f0e84  mov     x0, x20
  1000f0e88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::SpatialPanner::thunk_vfunc_1
; address 0x1000f0e8c  size 8  kind cxx
; ======================================================================
  1000f0e8c  sub     x0, x0, #0xa8
  1000f0e90  b       csl::SpatialPanner::~SpatialPanner/*deleting*/ ; csl::SpatialPanner::~SpatialPanner/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::SpatialPanner::vfunc_14
; address 0x1000f0e94  size 96  kind cxx
; ======================================================================
  1000f0e94  stp     x22, x21, [sp, #-0x30]!
  1000f0e98  stp     x20, x19, [sp, #0x10]
  1000f0e9c  stp     x29, x30, [sp, #0x20]
  1000f0ea0  add     x29, sp, #0x20
  1000f0ea4  sub     sp, sp, #0x10
  1000f0ea8  mov     x19, x1
  1000f0eac  add     x20, x0, #0xd0
  1000f0eb0  mov     x21, x0
  1000f0eb4  ldr     x8, [x21], #0xb8
  1000f0eb8  ldr     x8, [x8, #0x88]
  1000f0ebc  blr     x8
  1000f0ec0  str     x0, [sp, #8]
  1000f0ec4  add     x1, sp, #8
  1000f0ec8  mov     x0, x20
  1000f0ecc  bl      __ZNSt6vectorIPN3csl15SourceCacheRootESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl15SourceCacheRootESaIS2_EE9push_backERKS2_((a0 + 208), &sp[0x8])
  1000f0ed0  str     x19, [sp]
  1000f0ed4  mov     x1, sp
  1000f0ed8  mov     x0, x21
  1000f0edc  bl      __ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_ ; ZNSt6vectorIPN3csl13UnitGeneratorESaIS2_EE9push_backERKS2_(a0, &sp[0x0])
  1000f0ee0  sub     sp, x29, #0x20
  1000f0ee4  ldp     x29, x30, [sp, #0x20]
  1000f0ee8  ldp     x20, x19, [sp, #0x10]
  1000f0eec  ldp     x22, x21, [sp], #0x30
  1000f0ef0  ret

; ======================================================================
; csl::SpatialPanner::vfunc_15
; address 0x1000f0ef4  size 224  kind cxx
; ======================================================================
  1000f0ef4  stp     x22, x21, [sp, #-0x30]!
  1000f0ef8  stp     x20, x19, [sp, #0x10]
  1000f0efc  stp     x29, x30, [sp, #0x20]
  1000f0f00  add     x29, sp, #0x20
  1000f0f04  mov     x19, x0
  1000f0f08  ldp     x9, x8, [x19, #0xb8]
  1000f0f0c  subs    x10, x8, x9
  1000f0f10  b.eq    loc_1000f0fb8                            ; if (x8 == x9)
  1000f0f14  mov     x20, #0
  1000f0f18  mov     w11, #1
loc_1000f0f1c:
  1000f0f1c  ldr     x12, [x9, x20, lsl #3]
  1000f0f20  cmp     x12, x1
  1000f0f24  b.eq    loc_1000f0f3c                            ; if (x12 == a1)
  1000f0f28  ubfx    x20, x11, #0, #0x20
  1000f0f2c  add     w11, w11, #1
  1000f0f30  cmp     x20, x10, asr #3
  1000f0f34  b.lo    loc_1000f0f1c                            ; if (x20 <u ((x8 - x9) >> 3))
  1000f0f38  b       loc_1000f0fb8
loc_1000f0f3c:
  1000f0f3c  ldp     x10, x11, [x19, #0xd0]
  1000f0f40  sub     x11, x11, x10
  1000f0f44  asr     x11, x11, #3
  1000f0f48  cmp     x11, x20
  1000f0f4c  b.ls    loc_1000f0fc8                            ; if (((x11 - x10) >> 3) <=u x20)
  1000f0f50  ldr     x0, [x10, x20, lsl #3]
  1000f0f54  cbz     x0, loc_1000f0f68                        ; if (x0 == 0)
  1000f0f58  ldr     x8, [x0]
  1000f0f5c  ldr     x8, [x8, #8]
  1000f0f60  blr     x8
  1000f0f64  ldp     x9, x8, [x19, #0xb8]
loc_1000f0f68:
  1000f0f68  add     x21, x20, #1
  1000f0f6c  add     x1, x9, x21, lsl #3
  1000f0f70  cmp     x1, x8
  1000f0f74  b.eq    loc_1000f0f88                            ; if ((x9 + ((x20 + 1) << 3)) == x8)
  1000f0f78  add     x0, x9, x20, lsl #3
  1000f0f7c  sub     x2, x8, x1
  1000f0f80  bl      _memmove                                 ; memmove((x9 + (x20 << 3)), (x9 + ((x20 + 1) << 3)), (x8 - (x9 + ((x20 + 1) << 3))))
  1000f0f84  ldr     x8, [x19, #0xc0]                         ; x8 = a0[+0xc0]
loc_1000f0f88:
  1000f0f88  sub     x8, x8, #8
  1000f0f8c  str     x8, [x19, #0xc0]                         ; a0[+0xc0] = (x8 - 8)
  1000f0f90  ldp     x8, x9, [x19, #0xd0]
  1000f0f94  add     x1, x8, x21, lsl #3
  1000f0f98  cmp     x1, x9
  1000f0f9c  b.eq    loc_1000f0fb0                            ; if ((x8 + ((x20 + 1) << 3)) == x9)
  1000f0fa0  add     x0, x8, x20, lsl #3
  1000f0fa4  sub     x2, x9, x1
  1000f0fa8  bl      _memmove                                 ; memmove((x8 + (x20 << 3)), (x8 + ((x20 + 1) << 3)), (x9 - (x8 + ((x20 + 1) << 3))))
  1000f0fac  ldr     x1, [x19, #0xd8]                         ; x1 = a0[+0xd8]
loc_1000f0fb0:
  1000f0fb0  sub     x8, x1, #8
  1000f0fb4  str     x8, [x19, #0xd8]                         ; a0[+0xd8] = (x1 - 8)
loc_1000f0fb8:
  1000f0fb8  ldp     x29, x30, [sp, #0x20]
  1000f0fbc  ldp     x20, x19, [sp, #0x10]
  1000f0fc0  ldp     x22, x21, [sp], #0x30
  1000f0fc4  ret
loc_1000f0fc8:
  1000f0fc8  adrp    x0, #0x100388000
  1000f0fcc  add     x0, x0, #0x85b                           ; "vector::_M_range_check"
  1000f0fd0  bl      __ZSt20__throw_out_of_rangePKc           ; ZSt20__throw_out_of_rangePKc("vector::_M_range_check", a1, a2, a3)

; ======================================================================
; csl::SpatialPanner::vfunc_17
; address 0x1000f0fd4  size 40  kind cxx
; ======================================================================
  1000f0fd4  stp     x29, x30, [sp, #-0x10]!
  1000f0fd8  mov     x29, sp
  1000f0fdc  mov     w0, #8
  1000f0fe0  bl      __Znwm                                   ; Znwm(8, a1, a2, a3)
  1000f0fe4  adrp    x8, #0x1003b0000
  1000f0fe8  ldr     x8, [x8, #0x1a8]                         ; INDIRECT_SYMBOL_LOCAL
  1000f0fec  add     x8, x8, #0x10
  1000f0ff0  str     x8, [x0]                                 ; Znwm(8, a1, a2, a3)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f0ff4  ldp     x29, x30, [sp], #0x10
  1000f0ff8  ret

; ======================================================================
; csl::SpatialPanner::vfunc_16
; address 0x1000f0ffc  size 64  kind cxx
; ======================================================================
  1000f0ffc  stp     x20, x19, [sp, #-0x20]!
  1000f1000  stp     x29, x30, [sp, #0x10]
  1000f1004  add     x29, sp, #0x10
  1000f1008  mov     x19, x0
  1000f100c  ldr     x8, [x19, #0xe8]                         ; x8 = a0[+0xe8]
  1000f1010  cbnz    x8, loc_1000f1024                        ; if (a0[+0xe8] != 0)
  1000f1014  bl      sub_1000f1cec                            ; sub_1000f1cec(a0, a1, a2, a3)
  1000f1018  mov     x1, x0
  1000f101c  mov     x0, x19
  1000f1020  bl      sub_1000f0d00                            ; sub_1000f0d00(a0, sub_1000f1cec(a0, a1, a2, a3))
loc_1000f1024:
  1000f1024  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000f1028  ldr     x1, [x8, #0x90]                          ; x1 = a0[+0x0][+0x90]
  1000f102c  mov     x0, x19
  1000f1030  ldp     x29, x30, [sp, #0x10]
  1000f1034  ldp     x20, x19, [sp], #0x20
  1000f1038  br      x1

; ======================================================================
; csl::SpatialPanner::thunk_vfunc_2
; address 0x1000f103c  size 8  kind cxx
; ======================================================================
  1000f103c  sub     x0, x0, #0xa8
  1000f1040  b       csl::SpatialPanner::vfunc_16             ; csl::SpatialPanner::vfunc_16((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::SpatialPanner::vfunc_12
; address 0x1000f1044  size 168  kind cxx
; ======================================================================
  1000f1044  stp     x24, x23, [sp, #-0x40]!
  1000f1048  stp     x22, x21, [sp, #0x10]
  1000f104c  stp     x20, x19, [sp, #0x20]
  1000f1050  stp     x29, x30, [sp, #0x30]
  1000f1054  add     x29, sp, #0x30
  1000f1058  sub     sp, sp, #0x50
  1000f105c  mov     x20, x1
  1000f1060  mov     x19, x0
  1000f1064  adrp    x21, #0x1003b0000
  1000f1068  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000f106c  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000f1070  stur    x21, [x29, #-0x38]
  1000f1074  add     x0, sp, #8
  1000f1078  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000f107c  ldp     x8, x9, [x19, #0xb8]
  1000f1080  sub     x9, x9, x8
  1000f1084  lsr     x9, x9, #3
  1000f1088  cmp     w9, #1
  1000f108c  b.lt    loc_1000f10c4                            ; if (((x9 - x8) >>> 3) < 1)
  1000f1090  mov     x22, #0
  1000f1094  add     w20, w20, #1
  1000f1098  sub     w23, w9, #1
  1000f109c  b       loc_1000f10a8
loc_1000f10a0:
  1000f10a0  add     x22, x22, #1
  1000f10a4  ldr     x8, [x19, #0xb8]                         ; x8 = a0[+0xb8]
loc_1000f10a8:
  1000f10a8  ldr     x0, [x8, x22, lsl #3]
  1000f10ac  ldr     x8, [x0]
  1000f10b0  ldr     x8, [x8, #0x60]
  1000f10b4  mov     x1, x20
  1000f10b8  blr     x8
  1000f10bc  cmp     w23, w22
  1000f10c0  b.ne    loc_1000f10a0                            ; if ((((x9 - x8) >>> 3) - 1) != w22)
loc_1000f10c4:
  1000f10c4  ldur    x8, [x29, #-0x38]
  1000f10c8  sub     x8, x21, x8
  1000f10cc  cbnz    x8, loc_1000f10e8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f10d0  sub     sp, x29, #0x30
  1000f10d4  ldp     x29, x30, [sp, #0x30]
  1000f10d8  ldp     x20, x19, [sp, #0x20]
  1000f10dc  ldp     x22, x21, [sp, #0x10]
  1000f10e0  ldp     x24, x23, [sp], #0x40
  1000f10e4  ret
loc_1000f10e8:
  1000f10e8  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f10ec  size 60  kind sym
; ======================================================================
  1000f10ec  mov     x8, x1
  1000f10f0  ldp     x1, x9, [x0, #8]
  1000f10f4  cmp     x1, x9
  1000f10f8  b.eq    loc_1000f1110                            ; if (x1 == x9)
  1000f10fc  cbz     x1, loc_1000f1118                        ; if (x1 == 0)
  1000f1100  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000f1104  str     x8, [x1]
  1000f1108  ldr     x8, [x0, #8]                             ; x8 = a0[+0x8]
  1000f110c  b       loc_1000f111c
loc_1000f1110:
  1000f1110  mov     x2, x8
  1000f1114  b       __ZNSt6vectorIPN3csl15SourceCacheRootESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_ ; ZNSt6vectorIPN3csl15SourceCacheRootESaIS2_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS2_S4_EERKS2_(a0, x1, a1, a3)
loc_1000f1118:
  1000f1118  mov     x8, #0
loc_1000f111c:
  1000f111c  add     x8, x8, #8
  1000f1120  str     x8, [x0, #8]                             ; a0[+0x8] = (x8 + 8)
  1000f1124  ret

; ======================================================================
; std::vector<…><…>(…)
; address 0x1000f1128  size 336  kind sym
; ======================================================================
  1000f1128  stp     x26, x25, [sp, #-0x50]!
  1000f112c  stp     x24, x23, [sp, #0x10]
  1000f1130  stp     x22, x21, [sp, #0x20]
  1000f1134  stp     x20, x19, [sp, #0x30]
  1000f1138  stp     x29, x30, [sp, #0x40]
  1000f113c  add     x29, sp, #0x40
  1000f1140  mov     x21, x2
  1000f1144  mov     x20, x1
  1000f1148  mov     x19, x0
  1000f114c  ldp     x8, x9, [x19, #8]
  1000f1150  cmp     x8, x9
  1000f1154  b.eq    loc_1000f116c                            ; if (x8 == x9)
  1000f1158  cbz     x8, loc_1000f1190                        ; if (x8 == 0)
  1000f115c  ldur    x9, [x8, #-8]
  1000f1160  str     x9, [x8]
  1000f1164  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f1168  b       loc_1000f1194
loc_1000f116c:
  1000f116c  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000f1170  sub     x9, x8, x9
  1000f1174  asr     x8, x9, #3
  1000f1178  mov     w25, #1
  1000f117c  cbnz    x8, loc_1000f1254                        ; if (((x8 - a0[+0x0]) >> 3) != 0)
loc_1000f1180:
  1000f1180  cmp     x25, x8
  1000f1184  b.hs    loc_1000f11c0                            ; if (x25 >=u ((x8 - a0[+0x0]) >> 3))
  1000f1188  mov     x25, #0x1fffffffffffffff
  1000f118c  b       loc_1000f11c8
loc_1000f1190:
  1000f1190  mov     x8, #0
loc_1000f1194:
  1000f1194  add     x9, x8, #8
  1000f1198  str     x9, [x19, #8]                            ; a0[+0x8] = (x8 + 8)
  1000f119c  ldr     x19, [x21]                               ; x19 = a2[+0x0]
  1000f11a0  sub     x9, x8, #8
  1000f11a4  sub     x2, x9, x20
  1000f11a8  and     x9, x2, #0xfffffffffffffff8
  1000f11ac  sub     x0, x8, x9
  1000f11b0  mov     x1, x20
  1000f11b4  bl      _memmove                                 ; memmove((x8 - (((x8 - 8) - a1) & -8)), a1, ((x8 - 8) - a1), a3)
  1000f11b8  str     x19, [x20]                               ; a1[+0x0] = a2[+0x0]
  1000f11bc  b       loc_1000f123c
loc_1000f11c0:
  1000f11c0  lsr     x8, x25, #0x3d
  1000f11c4  cbnz    x8, loc_1000f1268                        ; if ((x25 >>> 61) != 0)
loc_1000f11c8:
  1000f11c8  lsl     x0, x25, #3
  1000f11cc  bl      __Znwm                                   ; Znwm((x25 << 3), a1, a2, a3)
  1000f11d0  mov     x22, x0
  1000f11d4  ldr     x23, [x19]                               ; x23 = a0[+0x0]
  1000f11d8  sub     x24, x20, x23
  1000f11dc  asr     x26, x24, #3
  1000f11e0  mov     x1, x23
  1000f11e4  mov     x2, x24
  1000f11e8  bl      _memmove                                 ; memmove(Znwm((x25 << 3), a1, a2, a3), a0[+0x0], (a1 - a0[+0x0]))
  1000f11ec  and     x8, x24, #0xfffffffffffffff8
  1000f11f0  add     x8, x22, x8
  1000f11f4  cbz     x8, loc_1000f1200                        ; if ((Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8)) == 0)
  1000f11f8  ldr     x9, [x21]                                ; x9 = a2[+0x0]
  1000f11fc  str     x9, [x8]                                 ; (Znwm((x25 << 3), a1, a2, a3) + ((a1 - a0[+0x0]) & -8))[+0x0] = a2[+0x0]
loc_1000f1200:
  1000f1200  add     x24, x26, #1
  1000f1204  add     x0, x22, x24, lsl #3
  1000f1208  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1000f120c  sub     x21, x8, x20
  1000f1210  mov     x1, x20
  1000f1214  mov     x2, x21
  1000f1218  bl      _memmove                                 ; memmove((Znwm((x25 << 3), a1, a2, a3) + ((((a1 - a0[+0x0]) >> 3) + 1) << 3)), a1, (a0[+0x8] - a1))
  1000f121c  add     x8, x24, x21, lsr #3
  1000f1220  add     x20, x22, x8, lsl #3                     ; t1 = (Znwm((x25 << 3), a1, a2, a3) + (((((a1 - a0[+0x0]) >> 3) + 1) + ((a0[+0x8] - a1) >>> 3)) << 3))
  1000f1224  cbz     x23, loc_1000f1230                       ; if (a0[+0x0] == 0)
  1000f1228  mov     x0, x23
  1000f122c  bl      __ZdlPv                                  ; ZdlPv(a0[+0x0])
loc_1000f1230:
  1000f1230  stp     x22, x20, [x19]
  1000f1234  add     x8, x22, x25, lsl #3
  1000f1238  str     x8, [x19, #0x10]                         ; a0[+0x10] = (Znwm((x25 << 3), a1, a2, a3) + (x25 << 3))
loc_1000f123c:
  1000f123c  ldp     x29, x30, [sp, #0x40]
  1000f1240  ldp     x20, x19, [sp, #0x30]
  1000f1244  ldp     x22, x21, [sp, #0x20]
  1000f1248  ldp     x24, x23, [sp, #0x10]
  1000f124c  ldp     x26, x25, [sp], #0x50
  1000f1250  ret
loc_1000f1254:
  1000f1254  mov     x10, #0x1fffffffffffffff
  1000f1258  cmp     x8, x10
  1000f125c  b.eq    loc_1000f126c                            ; if (((x8 - a0[+0x0]) >> 3) == 0x1fffffffffffffff)
  1000f1260  asr     x25, x9, #2
  1000f1264  b       loc_1000f1180
loc_1000f1268:
  1000f1268  bl      __ZSt17__throw_bad_allocv                ; ZSt17__throw_bad_allocv(a0, a1, a2, a3)
loc_1000f126c:
  1000f126c  adrp    x0, #0x100388000
  1000f1270  add     x0, x0, #0xc48                           ; "vector::_M_insert_aux"
  1000f1274  bl      __ZSt20__throw_length_errorPKc           ; ZSt20__throw_length_errorPKc("vector::_M_insert_aux")

; ======================================================================
; sub_1000f1278
; address 0x1000f1278  size 4  kind sub
; ======================================================================
  1000f1278  ret

; ======================================================================
; sub_1000f127c
; address 0x1000f127c  size 4  kind sub
; ======================================================================
  1000f127c  b       __ZdlPv                                  ; ZdlPv(a0, a1, a2, a3)

; ======================================================================
; sub_1000f1280
; address 0x1000f1280  size 448  kind sub
; ======================================================================
  1000f1280  stp     d11, d10, [sp, #-0x50]!
  1000f1284  stp     d9, d8, [sp, #0x10]
  1000f1288  stp     x22, x21, [sp, #0x20]
  1000f128c  stp     x20, x19, [sp, #0x30]
  1000f1290  stp     x29, x30, [sp, #0x40]
  1000f1294  add     x29, sp, #0x40
  1000f1298  sub     sp, sp, #0x20
  1000f129c  mov     v8.16b, v2.16b
  1000f12a0  mov     v9.16b, v1.16b
  1000f12a4  mov     v10.16b, v0.16b
  1000f12a8  mov     x20, x2
  1000f12ac  mov     x21, x1
  1000f12b0  mov     x19, x0
  1000f12b4  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000f12b8  mov     x1, x0
  1000f12bc  mov     w22, #1
  1000f12c0  mov     w2, #1
  1000f12c4  mov     x0, x19
  1000f12c8  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 1)
  1000f12cc  ldr     x8, [x21]                                ; x8 = a1[+0x0]
  1000f12d0  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000f12d4  ldr     x9, [x21, #8]                            ; x9 = a1[+0x8]
  1000f12d8  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000f12dc  str     x9, [x19, x8]
  1000f12e0  ldr     x8, [x21, #0x10]                         ; x8 = a1[+0x10]
  1000f12e4  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000f12e8  ldur    x9, [x9, #-0x20]                         ; x9 = a0[+0x0][+0x-20]
  1000f12ec  str     x8, [x19, x9]
  1000f12f0  str     xzr, [x19, #0xa8]                        ; a0[+0xa8] = 0
  1000f12f4  strb    w22, [x19, #0xb1]                        ; a0[+0xb1] = 1
  1000f12f8  ldr     x8, [x20]                                ; x8 = a2[+0x0]
  1000f12fc  ldr     x8, [x8, #0x18]                          ; x8 = a2[+0x0][+0x18]
  1000f1300  mov     x0, x20
  1000f1304  blr     x8                                       ; call a2[+0x0][+0x18]
  1000f1308  cmp     w0, #1
  1000f130c  b.ne    loc_1000f1378                            ; if (a2[+0x0][+0x18](…) != 1)
  1000f1310  nop
  1000f1314  ldr     s0, #0x100181ae8                         ; s0 = 3.14159274
  1000f1318  fmul    s1, s10, s0
  1000f131c  nop
  1000f1320  ldr     s2, #0x100181d04                         ; s2 = 180.0
  1000f1324  fdiv    s1, s1, s2
  1000f1328  fmul    s0, s9, s0
  1000f132c  fdiv    s2, s0, s2
  1000f1330  mov     w1, #1
  1000f1334  mov     x0, x19
  1000f1338  mov     v0.16b, v8.16b
  1000f133c  bl      sub_1000f1440                            ; sub_1000f1440(a0, 1)
  1000f1340  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000f1344  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000f1348  add     x0, x19, x8
  1000f134c  mov     w1, #3
  1000f1350  mov     x2, x20
  1000f1354  bl      sub_1000e969c                            ; sub_1000e969c((a0 + a0[+0x0][+0x-20]), 3, a2)
  1000f1358  mov     x0, x19
  1000f135c  sub     sp, x29, #0x40
  1000f1360  ldp     x29, x30, [sp, #0x40]
  1000f1364  ldp     x20, x19, [sp, #0x30]
  1000f1368  ldp     x22, x21, [sp, #0x20]
  1000f136c  ldp     d9, d8, [sp, #0x10]
  1000f1370  ldp     d11, d10, [sp], #0x50
  1000f1374  ret
loc_1000f1378:
  1000f1378  mov     w0, #0x10
  1000f137c  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f1380  mov     x20, x0
  1000f1384  adrp    x1, #0x100388000
  1000f1388  add     x1, x1, #0x872                           ; "Adding a non-mono ugen to a spatial source"
  1000f138c  add     x0, sp, #0x10
  1000f1390  add     x2, sp, #8
  1000f1394  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Adding a non-mono ugen to a spatial source", &sp[0x8])
  1000f1398  add     x1, sp, #0x10
  1000f139c  mov     x0, x20
  1000f13a0  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000f13a4  adrp    x8, #0x1003b0000
  1000f13a8  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000f13ac  add     x8, x8, #0x10
  1000f13b0  str     x8, [x20]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f13b4  adrp    x1, #0x100428000
  1000f13b8  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000f13bc  adrp    x2, #0x1003b0000
  1000f13c0  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000f13c4  mov     x0, x20
  1000f13c8  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000f13cc  b       sub_1000f1440
  1000f13d0  mov     x20, x0
  1000f13d4  ldr     x8, [sp, #0x10]
  1000f13d8  sub     x0, x8, #0x18
  1000f13dc  adrp    x9, #0x1003b0000
  1000f13e0  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f13e4  cmp     x0, x9
  1000f13e8  b.eq    loc_1000f1410                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f13ec  sub     x8, x8, #8
loc_1000f13f0:
  1000f13f0  ldaxr   w9, [x8]
  1000f13f4  sub     w10, w9, #1
  1000f13f8  stlxr   w11, w10, [x8]
  1000f13fc  cbnz    w11, loc_1000f13f0                       ; if (w11 != 0)
  1000f1400  cmp     w9, #0
  1000f1404  b.gt    loc_1000f1410                            ; if (w9 > 0)
  1000f1408  add     x1, sp, #0x18
  1000f140c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000f1410:
  1000f1410  mov     x0, x19
  1000f1414  bl      sub_1000e8918
  1000f1418  mov     x0, x20
  1000f141c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f1420  bl      sub_10000b760
  1000f1424  mov     x20, x0
  1000f1428  b       loc_1000f1410
  1000f142c  mov     x8, x20
  1000f1430  mov     x20, x0
  1000f1434  mov     x0, x8
  1000f1438  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f143c  b       loc_1000f1410

; ======================================================================
; sub_1000f1440
; address 0x1000f1440  size 160  kind sub
; ======================================================================
  1000f1440  stp     d11, d10, [sp, #-0x50]!
  1000f1444  stp     d9, d8, [sp, #0x10]
  1000f1448  stp     x22, x21, [sp, #0x20]
  1000f144c  stp     x20, x19, [sp, #0x30]
  1000f1450  stp     x29, x30, [sp, #0x40]
  1000f1454  add     x29, sp, #0x40
  1000f1458  mov     v8.16b, v2.16b
  1000f145c  mov     v9.16b, v1.16b
  1000f1460  mov     v10.16b, v0.16b
  1000f1464  mov     x20, x1
  1000f1468  mov     x19, x0
  1000f146c  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f1470  cbz     x0, loc_1000f1488                        ; if (a0[+0xa8] == 0)
  1000f1474  ldrb    w8, [x19, #0xb0]                         ; w8 = a0[+0xb0]
  1000f1478  cbz     w8, loc_1000f1488                        ; if (a0[+0xb0] == 0)
  1000f147c  bl      __ZdlPv                                  ; ZdlPv(a0[+0xa8], a1, a2, a3)
  1000f1480  str     xzr, [x19, #0xa8]                        ; a0[+0xa8] = 0
  1000f1484  strb    wzr, [x19, #0xb0]                        ; a0[+0xb0] = 0
loc_1000f1488:
  1000f1488  mov     w0, #0x10
  1000f148c  bl      __Znwm                                   ; Znwm(16)
  1000f1490  mov     x21, x0
  1000f1494  mov     x1, x20
  1000f1498  mov     v0.16b, v10.16b
  1000f149c  mov     v1.16b, v9.16b
  1000f14a0  mov     v2.16b, v8.16b
  1000f14a4  bl      sub_1000ef058                            ; sub_1000ef058(Znwm(16), a1)
  1000f14a8  str     x21, [x19, #0xa8]                        ; a0[+0xa8] = Znwm(16)
  1000f14ac  mov     w8, #1
  1000f14b0  strb    w8, [x19, #0xb0]                         ; a0[+0xb0] = 1
  1000f14b4  ldp     x29, x30, [sp, #0x40]
  1000f14b8  ldp     x20, x19, [sp, #0x30]
  1000f14bc  ldp     x22, x21, [sp, #0x20]
  1000f14c0  ldp     d9, d8, [sp, #0x10]
  1000f14c4  ldp     d11, d10, [sp], #0x50
  1000f14c8  ret
  1000f14cc  mov     x19, x0
  1000f14d0  mov     x0, x21
  1000f14d4  bl      __ZdlPv                                  ; ZdlPv()
  1000f14d8  mov     x0, x19
  1000f14dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f14e0
; address 0x1000f14e0  size 516  kind sub
; ======================================================================
  1000f14e0  stp     d11, d10, [sp, #-0x60]!
  1000f14e4  stp     d9, d8, [sp, #0x10]
  1000f14e8  stp     x24, x23, [sp, #0x20]
  1000f14ec  stp     x22, x21, [sp, #0x30]
  1000f14f0  stp     x20, x19, [sp, #0x40]
  1000f14f4  stp     x29, x30, [sp, #0x50]
  1000f14f8  add     x29, sp, #0x50
  1000f14fc  sub     sp, sp, #0x20
  1000f1500  mov     v8.16b, v2.16b
  1000f1504  mov     v9.16b, v1.16b
  1000f1508  mov     v10.16b, v0.16b
  1000f150c  mov     x22, x1
  1000f1510  mov     x21, x0
  1000f1514  add     x19, x21, #0xc0
  1000f1518  mov     x0, x19
  1000f151c  bl      sub_1000e9560                            ; sub_1000e9560((a0 + 192), a1, a2, a3)
  1000f1520  add     x20, x21, #0xb8
  1000f1524  adrp    x23, #0x1003b6000
  1000f1528  add     x23, x23, #0x620                         ; &d_1003b6620
  1000f152c  add     x1, x23, #0x18                           ; &d_1003b6638
  1000f1530  mov     x0, x20
  1000f1534  bl      sub_1000e9b4c                            ; sub_1000e9b4c((a0 + 184), &d_1003b6638)
  1000f1538  bl      sub_1000e732c                            ; sub_1000e732c(sub_1000e9b4c((a0 + 184), &d_1003b6638))
  1000f153c  mov     x1, x0
  1000f1540  mov     w24, #1
  1000f1544  mov     w2, #1
  1000f1548  mov     x0, x21
  1000f154c  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(sub_1000e9b4c((a0 + 184), &d_1003b6638)), 1)
  1000f1550  adrp    x8, #0x1003b6000
  1000f1554  add     x8, x8, #0x4d0                           ; &d_1003b64d0
  1000f1558  add     x9, x8, #0x20                            ; vtable<csl::SpatialSource>
  1000f155c  str     x9, [x21]                                ; a0[+0x0] = vtable<csl::SpatialSource>
  1000f1560  add     x9, x8, #0xe8                            ; vtable<csl::SpatialSource (secondary, -0xb8)>
  1000f1564  add     x8, x8, #0x128                           ; vtable<csl::SpatialSource (secondary, -0xc0)>
  1000f1568  stp     x9, x8, [x21, #0xb8]
  1000f156c  str     xzr, [x21, #0xa8]                        ; a0[+0xa8] = 0
  1000f1570  strb    w24, [x21, #0xb1]                        ; a0[+0xb1] = 1
  1000f1574  ldr     x8, [x22]                                ; x8 = a1[+0x0]
  1000f1578  ldr     x8, [x8, #0x18]                          ; x8 = a1[+0x0][+0x18]
  1000f157c  mov     x0, x22
  1000f1580  blr     x8                                       ; call a1[+0x0][+0x18]
  1000f1584  cmp     w0, #1
  1000f1588  b.ne    loc_1000f15f8                            ; if (a1[+0x0][+0x18](…) != 1)
  1000f158c  nop
  1000f1590  ldr     s0, #0x100181ae8                         ; s0 = 3.14159274
  1000f1594  fmul    s1, s10, s0
  1000f1598  nop
  1000f159c  ldr     s2, #0x100181d04                         ; s2 = 180.0
  1000f15a0  fdiv    s1, s1, s2
  1000f15a4  fmul    s0, s9, s0
  1000f15a8  fdiv    s2, s0, s2
  1000f15ac  mov     w1, #1
  1000f15b0  mov     x0, x21
  1000f15b4  mov     v0.16b, v8.16b
  1000f15b8  bl      sub_1000f1440                            ; sub_1000f1440(a0, 1)
  1000f15bc  ldr     x8, [x21]                                ; x8 = a0[+0x0]
  1000f15c0  ldur    x8, [x8, #-0x20]                         ; x8 = a0[+0x0][+0x-20]
  1000f15c4  add     x0, x21, x8
  1000f15c8  mov     w1, #3
  1000f15cc  mov     x2, x22
  1000f15d0  bl      sub_1000e969c                            ; sub_1000e969c((a0 + a0[+0x0][+0x-20]), 3, a1)
  1000f15d4  mov     x0, x21
  1000f15d8  sub     sp, x29, #0x50
  1000f15dc  ldp     x29, x30, [sp, #0x50]
  1000f15e0  ldp     x20, x19, [sp, #0x40]
  1000f15e4  ldp     x22, x21, [sp, #0x30]
  1000f15e8  ldp     x24, x23, [sp, #0x20]
  1000f15ec  ldp     d9, d8, [sp, #0x10]
  1000f15f0  ldp     d11, d10, [sp], #0x60
  1000f15f4  ret
loc_1000f15f8:
  1000f15f8  mov     w0, #0x10
  1000f15fc  bl      ___cxa_allocate_exception                ; cxa_allocate_exception(16)
  1000f1600  mov     x22, x0
  1000f1604  adrp    x1, #0x100388000
  1000f1608  add     x1, x1, #0x872                           ; "Adding a non-mono ugen to a spatial source"
  1000f160c  add     x0, sp, #0x10
  1000f1610  add     x2, sp, #8
  1000f1614  bl      __ZNSsC1EPKcRKSaIcE                      ; ZNSsC1EPKcRKSaIcE(&sp[0x10], "Adding a non-mono ugen to a spatial source", &sp[0x8])
  1000f1618  add     x1, sp, #0x10
  1000f161c  mov     x0, x22
  1000f1620  bl      __ZN3csl10CExceptionC2ERKSs              ; ZN3csl10CExceptionC2ERKSs(cxa_allocate_exception(16), &sp[0x10])
  1000f1624  adrp    x8, #0x1003b0000
  1000f1628  ldr     x8, [x8, #0x190]                         ; INDIRECT_SYMBOL_LOCAL
  1000f162c  add     x8, x8, #0x10
  1000f1630  str     x8, [x22]                                ; cxa_allocate_exception(16)[+0x0] = (INDIRECT_SYMBOL_LOCAL + 16)
  1000f1634  adrp    x1, #0x100428000
  1000f1638  add     x1, x1, #0xed0                           ; &d_100428ed0
  1000f163c  adrp    x2, #0x1003b0000
  1000f1640  ldr     x2, [x2, #0x120]                         ; INDIRECT_SYMBOL_LOCAL
  1000f1644  mov     x0, x22
  1000f1648  bl      ___cxa_throw                             ; cxa_throw(cxa_allocate_exception(16), &d_100428ed0, INDIRECT_SYMBOL_LOCAL)
  1000f164c  b       sub_1000f16e4
  1000f1650  mov     x22, x0
  1000f1654  ldr     x8, [sp, #0x10]
  1000f1658  sub     x0, x8, #0x18
  1000f165c  adrp    x9, #0x1003b0000
  1000f1660  ldr     x9, [x9, #0x140]                         ; __ZNSs4_Rep20_S_empty_rep_storageE
  1000f1664  cmp     x0, x9
  1000f1668  b.eq    loc_1000f1690                            ; if ((x8 - 24) == __ZNSs4_Rep20_S_empty_rep_storageE)
  1000f166c  sub     x8, x8, #8
loc_1000f1670:
  1000f1670  ldaxr   w9, [x8]
  1000f1674  sub     w10, w9, #1
  1000f1678  stlxr   w11, w10, [x8]
  1000f167c  cbnz    w11, loc_1000f1670                       ; if (w11 != 0)
  1000f1680  cmp     w9, #0
  1000f1684  b.gt    loc_1000f1690                            ; if (w9 > 0)
  1000f1688  add     x1, sp, #0x18
  1000f168c  bl      __ZNSs4_Rep10_M_destroyERKSaIcE          ; ZNSs4_Rep10_M_destroyERKSaIcE(x0, &sp[0x18])
loc_1000f1690:
  1000f1690  mov     x0, x21
  1000f1694  bl      sub_1000e8918
  1000f1698  b       loc_1000f16a0
  1000f169c  mov     x22, x0
loc_1000f16a0:
  1000f16a0  add     x1, x23, #0x18
  1000f16a4  mov     x0, x20
  1000f16a8  bl      sub_1000e9c44                            ; sub_1000e9c44(x0, (x23 + 24))
  1000f16ac  b       loc_1000f16bc
  1000f16b0  mov     x22, x0
  1000f16b4  b       loc_1000f1690
  1000f16b8  mov     x22, x0
loc_1000f16bc:
  1000f16bc  mov     x0, x19
  1000f16c0  bl      sub_1000e9388
  1000f16c4  mov     x0, x22
  1000f16c8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f16cc  bl      sub_10000b760
  1000f16d0  mov     x8, x22
  1000f16d4  mov     x22, x0
  1000f16d8  mov     x0, x8
  1000f16dc  bl      ___cxa_free_exception                    ; cxa_free_exception()
  1000f16e0  b       loc_1000f1690

; ======================================================================
; sub_1000f16e4
; address 0x1000f16e4  size 100  kind sub
; ======================================================================
  1000f16e4  stp     x20, x19, [sp, #-0x20]!
  1000f16e8  stp     x29, x30, [sp, #0x10]
  1000f16ec  add     x29, sp, #0x10
  1000f16f0  mov     x19, x0
  1000f16f4  ldr     x8, [x1]                                 ; x8 = a1[+0x0]
  1000f16f8  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000f16fc  ldr     x9, [x1, #8]                             ; x9 = a1[+0x8]
  1000f1700  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000f1704  str     x9, [x19, x8]
  1000f1708  ldr     x8, [x1, #0x10]                          ; x8 = a1[+0x10]
  1000f170c  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1000f1710  ldur    x9, [x9, #-0x20]                         ; x9 = a0[+0x0][+0x-20]
  1000f1714  str     x8, [x19, x9]
  1000f1718  ldr     x0, [x19, #0xa8]                         ; x0 = a0[+0xa8]
  1000f171c  cbz     x0, loc_1000f1730                        ; if (a0[+0xa8] == 0)
  1000f1720  ldrb    w8, [x19, #0xb0]                         ; w8 = a0[+0xb0]
  1000f1724  cbz     w8, loc_1000f1730                        ; if (a0[+0xb0] == 0)
  1000f1728  bl      __ZdlPv                                  ; ZdlPv(a0[+0xa8], a1, a2, a3)
  1000f172c  str     xzr, [x19, #0xa8]                        ; a0[+0xa8] = 0
loc_1000f1730:
  1000f1730  mov     x0, x19
  1000f1734  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000f1738  mov     x0, x19
  1000f173c  ldp     x29, x30, [sp, #0x10]
  1000f1740  ldp     x20, x19, [sp], #0x20
  1000f1744  ret
