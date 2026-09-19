// unit csl_Spatializer — 21 functions
//   0x1000f04f8      36  csl::Spatializer::~Spatializer
//   0x1000f051c       8  csl::Spatializer::thunk_vfunc_0
//   0x1000f0524      56  csl::Spatializer::~Spatializer/*deleting*/
//   0x1000f055c       8  csl::Spatializer::thunk_vfunc_1
//   0x1000f0564     220  sub_1000f0564
//   0x1000f0640     152  sub_1000f0640
//   0x1000f06d8       4  csl::Spatializer::vfunc_14
//   0x1000f06dc       4  csl::Spatializer::thunk_vfunc_2
//   0x1000f06e0     112  csl::Spatializer::vfunc_12
//   0x1000f0750      20  sub_1000f0750
//   0x1000f0764      72  csl::Spatializer::vfunc_4
//   0x1000f07ac     140  std::map<…>::::DistanceSimulator(…)
//   0x1000f0838     112  std::_Rb_tree<…>::std::pair<…>(…)
//   0x1000f08a8     160  std::_Rb_tree<…>::std::pair<…>(…)
//   0x1000f0948      76  std::_Rb_tree<…>::std::pair<…>(…)
//   0x1000f0994     308  std::_Rb_tree<…>::std::pair<…>(…)
//   0x1000f0ac8     144  std::_Rb_tree<…>::std::pair<…>(…)
//   0x1000f0b58     184  std::_Rb_tree<…>::std::pair<…>(…)
//   0x1000f0c10     240  sub_1000f0c10
//   0x1000f0d00     112  sub_1000f0d00
//   0x1000f0d70     184  sub_1000f0d70

; ======================================================================
; csl::Spatializer::~Spatializer
; address 0x1000f04f8  size 36  kind cxx
; ======================================================================
  1000f04f8  stp     x20, x19, [sp, #-0x20]!
  1000f04fc  stp     x29, x30, [sp, #0x10]
  1000f0500  add     x29, sp, #0x10
  1000f0504  mov     x19, x0
  1000f0508  bl      sub_1000f045c                            ; sub_1000f045c(a0, a1, a2, a3)
  1000f050c  mov     x0, x19
  1000f0510  ldp     x29, x30, [sp, #0x10]
  1000f0514  ldp     x20, x19, [sp], #0x20
  1000f0518  ret

; ======================================================================
; csl::Spatializer::thunk_vfunc_0
; address 0x1000f051c  size 8  kind cxx
; ======================================================================
  1000f051c  sub     x0, x0, #0xa8
  1000f0520  b       sub_1000f045c                            ; sub_1000f045c((a0 - 168), a1, a2, a3)

; ======================================================================
; csl::Spatializer::~Spatializer/*deleting*/
; address 0x1000f0524  size 56  kind cxx
; ======================================================================
  1000f0524  stp     x20, x19, [sp, #-0x20]!
  1000f0528  stp     x29, x30, [sp, #0x10]
  1000f052c  add     x29, sp, #0x10
  1000f0530  mov     x19, x0
  1000f0534  bl      sub_1000f045c                            ; sub_1000f045c(a0, a1, a2, a3)
  1000f0538  mov     x0, x19
  1000f053c  ldp     x29, x30, [sp, #0x10]
  1000f0540  ldp     x20, x19, [sp], #0x20
  1000f0544  b       __ZdlPv                                  ; ZdlPv(a0)
  1000f0548  mov     x20, x0
  1000f054c  mov     x0, x19
  1000f0550  bl      __ZdlPv                                  ; ZdlPv()
  1000f0554  mov     x0, x20
  1000f0558  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; csl::Spatializer::thunk_vfunc_1
; address 0x1000f055c  size 8  kind cxx
; ======================================================================
  1000f055c  sub     x0, x0, #0xa8
  1000f0560  b       csl::Spatializer::~Spatializer/*deleting*/ ; csl::Spatializer::~Spatializer/*deleting*/((a0 - 168), a1, a2, a3)

; ======================================================================
; sub_1000f0564
; address 0x1000f0564  size 220  kind sub
; ======================================================================
  1000f0564  stp     x22, x21, [sp, #-0x30]!
  1000f0568  stp     x20, x19, [sp, #0x10]
  1000f056c  stp     x29, x30, [sp, #0x20]
  1000f0570  add     x29, sp, #0x20
  1000f0574  sub     sp, sp, #0x10
  1000f0578  mov     x19, x1
  1000f057c  mov     x20, x0
  1000f0580  ldr     w8, [x20, #0xf8]                         ; w8 = a0[+0xf8]
  1000f0584  cmp     w8, #4
  1000f0588  b.ne    loc_1000f05b0                            ; if (a0[+0xf8] != 4)
  1000f058c  ldr     x0, [x20, #0xb8]                         ; x0 = a0[+0xb8]
  1000f0590  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f0594  ldr     x2, [x8, #0x70]                          ; x2 = a0[+0xb8][+0x0][+0x70]
  1000f0598  mov     x1, x19
  1000f059c  sub     sp, x29, #0x20
  1000f05a0  ldp     x29, x30, [sp, #0x20]
  1000f05a4  ldp     x20, x19, [sp, #0x10]
  1000f05a8  ldp     x22, x21, [sp], #0x30
  1000f05ac  br      x2
loc_1000f05b0:
  1000f05b0  ldr     x0, [x20, #0x100]                        ; x0 = a0[+0x100]
  1000f05b4  cbz     x0, loc_1000f05c8                        ; if (a0[+0x100] == 0)
  1000f05b8  ldr     x8, [x0]                                 ; x8 = a0[+0x100][+0x0]
  1000f05bc  ldr     x8, [x8, #8]                             ; x8 = a0[+0x100][+0x0][+0x8]
  1000f05c0  blr     x8                                       ; call a0[+0x100][+0x0][+0x8]
  1000f05c4  str     xzr, [x20, #0x100]                       ; a0[+0x100] = 0
loc_1000f05c8:
  1000f05c8  mov     w0, #0x148
  1000f05cc  bl      __Znwm                                   ; Znwm(328)
  1000f05d0  mov     x21, x0
  1000f05d4  mov     x1, x19
  1000f05d8  bl      sub_1000ef27c                            ; sub_1000ef27c(Znwm(328), a1)
  1000f05dc  str     x21, [x20, #0x100]                       ; a0[+0x100] = Znwm(328)
  1000f05e0  ldr     s0, [x20, #0x108]                        ; s0 = a0[+0x108]
  1000f05e4  mov     x0, x21
  1000f05e8  bl      sub_1000ef76c                            ; sub_1000ef76c(Znwm(328))
  1000f05ec  ldr     x0, [x20, #0xb8]                         ; x0 = a0[+0xb8]
  1000f05f0  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f05f4  ldr     x8, [x8, #0x70]                          ; x8 = a0[+0xb8][+0x0][+0x70]
  1000f05f8  ldr     x1, [x20, #0x100]                        ; x1 = a0[+0x100]
  1000f05fc  blr     x8                                       ; call a0[+0xb8][+0x0][+0x70]
  1000f0600  ldr     x21, [x20, #0x100]                       ; x21 = a0[+0x100]
  1000f0604  add     x0, x20, #0xc0
  1000f0608  str     x19, [sp, #8]
  1000f060c  add     x1, sp, #8
  1000f0610  bl      __ZNSt3mapIPN3csl13SpatialSourceEPNS0_17DistanceSimulatorESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_ ; ZNSt3mapIPN3csl13SpatialSourceEPNS0_17DistanceSimulatorESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_((a0 + 192), &sp[0x8])
  1000f0614  str     x21, [x0]                                ; ZNSt3mapIPN3csl13SpatialSourceEPNS0_17DistanceSimulatorESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_((a0 + 192), &sp[0x8])[+0x0] = a0[+0x100]
  1000f0618  sub     sp, x29, #0x20
  1000f061c  ldp     x29, x30, [sp, #0x20]
  1000f0620  ldp     x20, x19, [sp, #0x10]
  1000f0624  ldp     x22, x21, [sp], #0x30
  1000f0628  ret
  1000f062c  mov     x19, x0
  1000f0630  mov     x0, x21
  1000f0634  bl      __ZdlPv                                  ; ZdlPv()
  1000f0638  mov     x0, x19
  1000f063c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000f0640
; address 0x1000f0640  size 152  kind sub
; ======================================================================
  1000f0640  stp     x22, x21, [sp, #-0x30]!
  1000f0644  stp     x20, x19, [sp, #0x10]
  1000f0648  stp     x29, x30, [sp, #0x20]
  1000f064c  add     x29, sp, #0x20
  1000f0650  sub     sp, sp, #0x10
  1000f0654  mov     x20, x1
  1000f0658  mov     x21, x0
  1000f065c  add     x19, x21, #0xc0
  1000f0660  str     x20, [sp, #8]
  1000f0664  add     x1, sp, #8
  1000f0668  mov     x0, x19
  1000f066c  bl      __ZNSt3mapIPN3csl13SpatialSourceEPNS0_17DistanceSimulatorESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_ ; ZNSt3mapIPN3csl13SpatialSourceEPNS0_17DistanceSimulatorESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_((a0 + 192), &sp[0x8], a2, a3)
  1000f0670  ldr     x1, [x0]                                 ; x1 = ZNSt3mapIPN3csl13SpatialSourceEPNS0_17DistanceSimulatorESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_((a0 + 192), &sp[0x8], a2, a3)[+0x0]
  1000f0674  ldr     x0, [x21, #0xb8]                         ; x0 = a0[+0xb8]
  1000f0678  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f067c  ldr     x2, [x8, #0x78]                          ; x2 = a0[+0xb8][+0x0][+0x78]
  1000f0680  cbz     x1, loc_1000f06c0                        ; if (ZNSt3mapIPN3csl13SpatialSourceEPNS0_17DistanceSimulatorESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_((a0 + 192), &sp[0x8], a2, a3)[+0x0] == 0)
  1000f0684  blr     x2                                       ; call a0[+0xb8][+0x0][+0x78]
  1000f0688  str     x20, [sp]
  1000f068c  mov     x1, sp
  1000f0690  mov     x0, x19
  1000f0694  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE11equal_rangeERS4_ ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE11equal_rangeERS4_((a0 + 192), &sp[0x0])
  1000f0698  mov     x2, x0
  1000f069c  mov     x3, x1
  1000f06a0  mov     x0, x19
  1000f06a4  mov     x1, x2
  1000f06a8  mov     x2, x3
  1000f06ac  sub     sp, x29, #0x20
  1000f06b0  ldp     x29, x30, [sp, #0x20]
  1000f06b4  ldp     x20, x19, [sp, #0x10]
  1000f06b8  ldp     x22, x21, [sp], #0x30
  1000f06bc  b       __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE5eraseESt17_Rb_tree_iteratorIS7_ESF_ ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE5eraseESt17_Rb_tree_iteratorIS7_ESF_((a0 + 192), ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE11equal_rangeERS4_((a0 + 192), &sp[0x0]))
loc_1000f06c0:
  1000f06c0  mov     x1, x20
  1000f06c4  sub     sp, x29, #0x20
  1000f06c8  ldp     x29, x30, [sp, #0x20]
  1000f06cc  ldp     x20, x19, [sp, #0x10]
  1000f06d0  ldp     x22, x21, [sp], #0x30
  1000f06d4  br      x2

; ======================================================================
; csl::Spatializer::vfunc_14
; address 0x1000f06d8  size 4  kind cxx
; ======================================================================
  1000f06d8  ret

; ======================================================================
; csl::Spatializer::thunk_vfunc_2
; address 0x1000f06dc  size 4  kind cxx
; ======================================================================
  1000f06dc  ret

; ======================================================================
; csl::Spatializer::vfunc_12
; address 0x1000f06e0  size 112  kind cxx
; ======================================================================
  1000f06e0  stp     x22, x21, [sp, #-0x30]!
  1000f06e4  stp     x20, x19, [sp, #0x10]
  1000f06e8  stp     x29, x30, [sp, #0x20]
  1000f06ec  add     x29, sp, #0x20
  1000f06f0  sub     sp, sp, #0x50
  1000f06f4  mov     x19, x1
  1000f06f8  mov     x20, x0
  1000f06fc  adrp    x21, #0x1003b0000
  1000f0700  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000f0704  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000f0708  stur    x21, [x29, #-0x28]
  1000f070c  add     x0, sp, #8
  1000f0710  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000f0714  ldr     x0, [x20, #0xb8]                         ; x0 = a0[+0xb8]
  1000f0718  cbz     x0, loc_1000f072c                        ; if (a0[+0xb8] == 0)
  1000f071c  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f0720  ldr     x8, [x8, #0x60]                          ; x8 = a0[+0xb8][+0x0][+0x60]
  1000f0724  add     w1, w19, #1
  1000f0728  blr     x8                                       ; call a0[+0xb8][+0x0][+0x60]
loc_1000f072c:
  1000f072c  ldur    x8, [x29, #-0x28]
  1000f0730  sub     x8, x21, x8
  1000f0734  cbnz    x8, loc_1000f074c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000f0738  sub     sp, x29, #0x20
  1000f073c  ldp     x29, x30, [sp, #0x20]
  1000f0740  ldp     x20, x19, [sp, #0x10]
  1000f0744  ldp     x22, x21, [sp], #0x30
  1000f0748  ret
loc_1000f074c:
  1000f074c  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_1000f0750
; address 0x1000f0750  size 20  kind sub
; ======================================================================
  1000f0750  str     s0, [x0, #0x108]                         ; a0[+0x108] = s0
  1000f0754  ldr     x0, [x0, #0x100]                         ; x0 = a0[+0x100]
  1000f0758  cbz     x0, loc_1000f0760                        ; if (a0[+0x100] == 0)
  1000f075c  b       sub_1000ef76c                            ; sub_1000ef76c(a0[+0x100], a1, a2, a3)
loc_1000f0760:
  1000f0760  ret

; ======================================================================
; csl::Spatializer::vfunc_4
; address 0x1000f0764  size 72  kind cxx
; ======================================================================
  1000f0764  stp     x20, x19, [sp, #-0x20]!
  1000f0768  stp     x29, x30, [sp, #0x10]
  1000f076c  add     x29, sp, #0x10
  1000f0770  mov     x19, x1
  1000f0774  mov     x20, x0
  1000f0778  mov     x0, x19
  1000f077c  bl      sub_1000e8310                            ; sub_1000e8310(a1, a1, a2, a3)
  1000f0780  ldr     x0, [x20, #0xb8]                         ; x0 = a0[+0xb8]
  1000f0784  ldr     x8, [x0]                                 ; x8 = a0[+0xb8][+0x0]
  1000f0788  ldr     x8, [x8, #0x20]                          ; x8 = a0[+0xb8][+0x0][+0x20]
  1000f078c  mov     x1, x19
  1000f0790  blr     x8                                       ; call a0[+0xb8][+0x0][+0x20]
  1000f0794  ldp     x29, x30, [sp, #0x10]
  1000f0798  ldp     x20, x19, [sp], #0x20
  1000f079c  ret
  1000f07a0  tbz     w1, 0x1f, loc_1000f07a8                  ; if (w1 >= 0)
  1000f07a4  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000f07a8:
  1000f07a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; std::map<…>::::DistanceSimulator(…)
; address 0x1000f07ac  size 140  kind sym
; ======================================================================
  1000f07ac  stp     x29, x30, [sp, #-0x10]!
  1000f07b0  mov     x29, sp
  1000f07b4  sub     sp, sp, #0x10
  1000f07b8  add     x9, x0, #8
  1000f07bc  ldr     x10, [x0, #0x10]                         ; x10 = a0[+0x10]
  1000f07c0  mov     x8, x9
  1000f07c4  cbz     x10, loc_1000f07f4                       ; if (a0[+0x10] == 0)
  1000f07c8  ldr     x11, [x1]                                ; x11 = a1[+0x0]
  1000f07cc  mov     x8, x9
loc_1000f07d0:
  1000f07d0  ldr     x12, [x10, #0x20]
  1000f07d4  cmp     x12, x11
  1000f07d8  b.hs    loc_1000f07e8                            ; if (x12 >=u a1[+0x0])
  1000f07dc  ldr     x10, [x10, #0x18]
  1000f07e0  cbnz    x10, loc_1000f07d0                       ; if (x10 != 0)
  1000f07e4  b       loc_1000f07f4
loc_1000f07e8:
  1000f07e8  mov     x8, x10
  1000f07ec  ldr     x10, [x10, #0x10]
  1000f07f0  cbnz    x10, loc_1000f07d0                       ; if (x10 != 0)
loc_1000f07f4:
  1000f07f4  cmp     x8, x9
  1000f07f8  b.eq    loc_1000f0810                            ; if (x8 == (a0 + 8))
  1000f07fc  ldr     x9, [x1]                                 ; x9 = a1[+0x0]
  1000f0800  ldr     x10, [x8, #0x20]
  1000f0804  cmp     x9, x10
  1000f0808  b.hs    loc_1000f0828                            ; if (a1[+0x0] >=u x10)
  1000f080c  b       loc_1000f0814
loc_1000f0810:
  1000f0810  ldr     x9, [x1]                                 ; x9 = a1[+0x0]
loc_1000f0814:
  1000f0814  stp     x9, xzr, [sp]
  1000f0818  mov     x2, sp
  1000f081c  mov     x1, x8
  1000f0820  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS7_ERKS7_ ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS7_ERKS7_(a0, x1, &sp[0x0], a3)
  1000f0824  mov     x8, x0
loc_1000f0828:
  1000f0828  add     x0, x8, #0x28
  1000f082c  mov     sp, x29
  1000f0830  ldp     x29, x30, [sp], #0x10
  1000f0834  ret

; ======================================================================
; std::_Rb_tree<…>::std::pair<…>(…)
; address 0x1000f0838  size 112  kind sym
; ======================================================================
  1000f0838  mov     x8, x1
  1000f083c  add     x1, x0, #8
  1000f0840  ldr     x9, [x0, #0x10]                          ; x9 = a0[+0x10]
  1000f0844  cbz     x9, loc_1000f08a0                        ; if (a0[+0x10] == 0)
  1000f0848  ldr     x8, [x8]                                 ; x8 = a1[+0x0]
  1000f084c  mov     x10, x9
  1000f0850  mov     x0, x1
loc_1000f0854:
  1000f0854  ldr     x11, [x10, #0x20]
  1000f0858  cmp     x11, x8
  1000f085c  b.hs    loc_1000f086c                            ; if (x11 >=u a1[+0x0])
  1000f0860  ldr     x10, [x10, #0x18]
  1000f0864  cbnz    x10, loc_1000f0854                       ; if (x10 != 0)
  1000f0868  b       loc_1000f0878
loc_1000f086c:
  1000f086c  mov     x0, x10
  1000f0870  ldr     x10, [x10, #0x10]
  1000f0874  cbnz    x10, loc_1000f0854                       ; if (x10 != 0)
loc_1000f0878:
  1000f0878  ldr     x10, [x9, #0x20]
  1000f087c  cmp     x8, x10
  1000f0880  b.lo    loc_1000f0890                            ; if (a1[+0x0] <u x10)
  1000f0884  ldr     x9, [x9, #0x18]
  1000f0888  cbnz    x9, loc_1000f0878                        ; if (x9 != 0)
  1000f088c  b       loc_1000f089c
loc_1000f0890:
  1000f0890  mov     x1, x9
  1000f0894  ldr     x9, [x9, #0x10]
  1000f0898  cbnz    x9, loc_1000f0878                        ; if (x9 != 0)
loc_1000f089c:
  1000f089c  ret
loc_1000f08a0:
  1000f08a0  mov     x0, x1
  1000f08a4  ret

; ======================================================================
; std::_Rb_tree<…>::std::pair<…>(…)
; address 0x1000f08a8  size 160  kind sym
; ======================================================================
  1000f08a8  stp     x24, x23, [sp, #-0x40]!
  1000f08ac  stp     x22, x21, [sp, #0x10]
  1000f08b0  stp     x20, x19, [sp, #0x20]
  1000f08b4  stp     x29, x30, [sp, #0x30]
  1000f08b8  add     x29, sp, #0x30
  1000f08bc  mov     x19, x2
  1000f08c0  mov     x21, x1
  1000f08c4  mov     x20, x0
  1000f08c8  add     x8, x20, #8
  1000f08cc  ldr     x9, [x20, #0x18]                         ; x9 = a0[+0x18]
  1000f08d0  cmp     x21, x9
  1000f08d4  ccmp    x19, x8, #0, eq
  1000f08d8  b.ne    loc_1000f08f4                            ; if (flags !=)
  1000f08dc  ldr     x1, [x20, #0x10]                         ; x1 = a0[+0x10]
  1000f08e0  mov     x0, x20
  1000f08e4  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(a0, a0[+0x10], a2, a3)
  1000f08e8  stp     xzr, x19, [x20, #0x10]
  1000f08ec  stp     x19, xzr, [x20, #0x20]
  1000f08f0  b       loc_1000f0934
loc_1000f08f4:
  1000f08f4  cmp     x21, x19
  1000f08f8  b.eq    loc_1000f0934                            ; if (a1 == a2)
  1000f08fc  add     x22, x20, #8
loc_1000f0900:
  1000f0900  mov     x0, x21
  1000f0904  bl      __ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base()
  1000f0908  mov     x23, x0
  1000f090c  mov     x0, x21
  1000f0910  mov     x1, x22
  1000f0914  bl      __ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_ ; ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(x0, (a0 + 8))
  1000f0918  bl      __ZdlPv                                  ; ZdlPv(ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(x0, (a0 + 8)))
  1000f091c  ldr     x8, [x20, #0x28]                         ; x8 = a0[+0x28]
  1000f0920  sub     x8, x8, #1
  1000f0924  str     x8, [x20, #0x28]                         ; a0[+0x28] = (a0[+0x28] - 1)
  1000f0928  cmp     x23, x19
  1000f092c  mov     x21, x23
  1000f0930  b.ne    loc_1000f0900                            ; if (ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base() != a2)
loc_1000f0934:
  1000f0934  ldp     x29, x30, [sp, #0x30]
  1000f0938  ldp     x20, x19, [sp, #0x20]
  1000f093c  ldp     x22, x21, [sp, #0x10]
  1000f0940  ldp     x24, x23, [sp], #0x40
  1000f0944  ret

; ======================================================================
; std::_Rb_tree<…>::std::pair<…>(…)
; address 0x1000f0948  size 76  kind sym
; ======================================================================
loc_1000f0948:
  1000f0948  stp     x22, x21, [sp, #-0x30]!
  1000f094c  stp     x20, x19, [sp, #0x10]
  1000f0950  stp     x29, x30, [sp, #0x20]
  1000f0954  add     x29, sp, #0x20
  1000f0958  mov     x20, x1
  1000f095c  mov     x19, x0
  1000f0960  cbz     x20, loc_1000f0984                       ; if (a1 == 0)
loc_1000f0964:
  1000f0964  ldr     x1, [x20, #0x18]
  1000f0968  mov     x0, x19
  1000f096c  bl      loc_1000f0948                            ; std::_Rb_tree<…>::std::pair<…>(…)(a0)
  1000f0970  ldr     x21, [x20, #0x10]
  1000f0974  mov     x0, x20
  1000f0978  bl      __ZdlPv                                  ; ZdlPv()
  1000f097c  mov     x20, x21
  1000f0980  cbnz    x21, loc_1000f0964                       ; if (x21 != 0)
loc_1000f0984:
  1000f0984  ldp     x29, x30, [sp, #0x20]
  1000f0988  ldp     x20, x19, [sp, #0x10]
  1000f098c  ldp     x22, x21, [sp], #0x30
  1000f0990  ret

; ======================================================================
; std::_Rb_tree<…>::std::pair<…>(…)
; address 0x1000f0994  size 308  kind sym
; ======================================================================
  1000f0994  stp     x22, x21, [sp, #-0x30]!
  1000f0998  stp     x20, x19, [sp, #0x10]
  1000f099c  stp     x29, x30, [sp, #0x20]
  1000f09a0  add     x29, sp, #0x20
  1000f09a4  mov     x19, x2
  1000f09a8  mov     x21, x1
  1000f09ac  mov     x20, x0
  1000f09b0  add     x8, x20, #8
  1000f09b4  cmp     x21, x8
  1000f09b8  b.eq    loc_1000f0a08                            ; if (a1 == (a0 + 8))
  1000f09bc  ldr     x8, [x19]                                ; x8 = a2[+0x0]
  1000f09c0  ldr     x9, [x21, #0x20]                         ; x9 = a1[+0x20]
  1000f09c4  cmp     x8, x9
  1000f09c8  b.hs    loc_1000f0a30                            ; if (a2[+0x0] >=u a1[+0x20])
  1000f09cc  ldr     x8, [x20, #0x18]                         ; x8 = a0[+0x18]
  1000f09d0  cmp     x21, x8
  1000f09d4  b.eq    loc_1000f09fc                            ; if (a1 == a0[+0x18])
  1000f09d8  mov     x0, x21
  1000f09dc  bl      __ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)
  1000f09e0  mov     x8, x0
  1000f09e4  ldr     x9, [x8, #0x20]                          ; x9 = ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20]
  1000f09e8  ldr     x10, [x19]                               ; x10 = a2[+0x0]
  1000f09ec  cmp     x9, x10
  1000f09f0  b.hs    loc_1000f0a74                            ; if (ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20] >=u a2[+0x0])
  1000f09f4  ldr     x9, [x8, #0x18]                          ; x9 = ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x18]
  1000f09f8  cbz     x9, loc_1000f0aa8                        ; if (ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x18] == 0)
loc_1000f09fc:
  1000f09fc  mov     x0, x20
  1000f0a00  mov     x1, x21
  1000f0a04  b       loc_1000f0aa0
loc_1000f0a08:
  1000f0a08  ldr     x8, [x20, #0x28]                         ; x8 = a0[+0x28]
  1000f0a0c  cbz     x8, loc_1000f0a74                        ; if (a0[+0x28] == 0)
  1000f0a10  ldr     x2, [x20, #0x20]                         ; x2 = a0[+0x20]
  1000f0a14  ldr     x8, [x2, #0x20]                          ; x8 = a0[+0x20][+0x20]
  1000f0a18  ldr     x9, [x19]                                ; x9 = a2[+0x0]
  1000f0a1c  cmp     x8, x9
  1000f0a20  b.hs    loc_1000f0a74                            ; if (a0[+0x20][+0x20] >=u a2[+0x0])
  1000f0a24  mov     x1, #0
  1000f0a28  mov     x0, x20
  1000f0a2c  b       loc_1000f0ab4
loc_1000f0a30:
  1000f0a30  cmp     x9, x8
  1000f0a34  b.hs    loc_1000f0a84                            ; if (a1[+0x20] >=u a2[+0x0])
  1000f0a38  ldr     x8, [x20, #0x20]                         ; x8 = a0[+0x20]
  1000f0a3c  cmp     x21, x8
  1000f0a40  b.eq    loc_1000f0a98                            ; if (a1 == a0[+0x20])
  1000f0a44  mov     x0, x21
  1000f0a48  bl      __ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)
  1000f0a4c  mov     x8, x0
  1000f0a50  ldr     x9, [x19]                                ; x9 = a2[+0x0]
  1000f0a54  ldr     x10, [x8, #0x20]                         ; x10 = ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20]
  1000f0a58  cmp     x9, x10
  1000f0a5c  b.hs    loc_1000f0a74                            ; if (a2[+0x0] >=u ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(a1, a1, a2, a3)[+0x20])
  1000f0a60  ldr     x9, [x21, #0x18]                         ; x9 = a1[+0x18]
  1000f0a64  cbz     x9, loc_1000f0a98                        ; if (a1[+0x18] == 0)
  1000f0a68  mov     x0, x20
  1000f0a6c  mov     x1, x8
  1000f0a70  b       loc_1000f0ab0
loc_1000f0a74:
  1000f0a74  mov     x0, x20
  1000f0a78  mov     x1, x19
  1000f0a7c  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE16_M_insert_uniqueERKS7_ ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE16_M_insert_uniqueERKS7_(a0, a2)
  1000f0a80  mov     x21, x0
loc_1000f0a84:
  1000f0a84  mov     x0, x21
  1000f0a88  ldp     x29, x30, [sp, #0x20]
  1000f0a8c  ldp     x20, x19, [sp, #0x10]
  1000f0a90  ldp     x22, x21, [sp], #0x30
  1000f0a94  ret
loc_1000f0a98:
  1000f0a98  mov     x1, #0
  1000f0a9c  mov     x0, x20
loc_1000f0aa0:
  1000f0aa0  mov     x2, x21
  1000f0aa4  b       loc_1000f0ab4
loc_1000f0aa8:
  1000f0aa8  mov     x1, #0
  1000f0aac  mov     x0, x20
loc_1000f0ab0:
  1000f0ab0  mov     x2, x8
loc_1000f0ab4:
  1000f0ab4  mov     x3, x19
  1000f0ab8  ldp     x29, x30, [sp, #0x20]
  1000f0abc  ldp     x20, x19, [sp, #0x10]
  1000f0ac0  ldp     x22, x21, [sp], #0x30
  1000f0ac4  b       __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE9_M_insertEPSt18_Rb_tree_node_baseSF_RKS7_ ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE9_M_insertEPSt18_Rb_tree_node_baseSF_RKS7_(a0, x1, x2, a2)

; ======================================================================
; std::_Rb_tree<…>::std::pair<…>(…)
; address 0x1000f0ac8  size 144  kind sym
; ======================================================================
  1000f0ac8  stp     x24, x23, [sp, #-0x40]!
  1000f0acc  stp     x22, x21, [sp, #0x10]
  1000f0ad0  stp     x20, x19, [sp, #0x20]
  1000f0ad4  stp     x29, x30, [sp, #0x30]
  1000f0ad8  add     x29, sp, #0x30
  1000f0adc  mov     x22, x3
  1000f0ae0  mov     x20, x2
  1000f0ae4  mov     x19, x0
  1000f0ae8  add     x21, x19, #8
  1000f0aec  mov     w23, #1
  1000f0af0  cbnz    x1, loc_1000f0b0c                        ; if (a1 != 0)
  1000f0af4  cmp     x21, x20
  1000f0af8  b.eq    loc_1000f0b0c                            ; if ((a0 + 8) == a2)
  1000f0afc  ldr     x8, [x22]                                ; x8 = a3[+0x0]
  1000f0b00  ldr     x9, [x20, #0x20]                         ; x9 = a2[+0x20]
  1000f0b04  cmp     x8, x9
  1000f0b08  cset    w23, lo
loc_1000f0b0c:
  1000f0b0c  mov     w0, #0x30
  1000f0b10  bl      __Znwm                                   ; Znwm(48, a1, a2, a3)
  1000f0b14  mov     x24, x0
  1000f0b18  ldr     q0, [x22]                                ; q0 = a3[+0x0]
  1000f0b1c  str     q0, [x24, #0x20]                         ; Znwm(48, a1, a2, a3)[+0x20] = a3[+0x0]
  1000f0b20  mov     x0, x23
  1000f0b24  mov     x1, x24
  1000f0b28  mov     x2, x20
  1000f0b2c  mov     x3, x21
  1000f0b30  bl      __ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_ ; ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(x0, Znwm(48, a1, a2, a3), a2, (a0 + 8))
  1000f0b34  ldr     x8, [x19, #0x28]                         ; x8 = a0[+0x28]
  1000f0b38  add     x8, x8, #1
  1000f0b3c  str     x8, [x19, #0x28]                         ; a0[+0x28] = (a0[+0x28] + 1)
  1000f0b40  mov     x0, x24
  1000f0b44  ldp     x29, x30, [sp, #0x30]
  1000f0b48  ldp     x20, x19, [sp, #0x20]
  1000f0b4c  ldp     x22, x21, [sp, #0x10]
  1000f0b50  ldp     x24, x23, [sp], #0x40
  1000f0b54  ret

; ======================================================================
; std::_Rb_tree<…>::std::pair<…>(…)
; address 0x1000f0b58  size 184  kind sym
; ======================================================================
  1000f0b58  stp     x22, x21, [sp, #-0x30]!
  1000f0b5c  stp     x20, x19, [sp, #0x10]
  1000f0b60  stp     x29, x30, [sp, #0x20]
  1000f0b64  add     x29, sp, #0x20
  1000f0b68  mov     x19, x1
  1000f0b6c  mov     x20, x0
  1000f0b70  ldr     x9, [x20, #0x10]                         ; x9 = a0[+0x10]
  1000f0b74  cbz     x9, loc_1000f0bac                        ; if (a0[+0x10] == 0)
  1000f0b78  ldr     x8, [x19]                                ; x8 = a1[+0x0]
loc_1000f0b7c:
  1000f0b7c  mov     x21, x9
  1000f0b80  ldr     x10, [x21, #0x20]
  1000f0b84  add     x9, x21, #0x10
  1000f0b88  add     x11, x21, #0x18
  1000f0b8c  cmp     x8, x10
  1000f0b90  csel    x9, x9, x11, lo
  1000f0b94  ldr     x9, [x9]                                 ; x9 = (a1[+0x0] <u x10 ? (x21 + 16) : (x21 + 24))[+0x0]
  1000f0b98  cbnz    x9, loc_1000f0b7c                        ; if ((a1[+0x0] <u x10 ? (x21 + 16) : (x21 + 24))[+0x0] != 0)
  1000f0b9c  cmp     x8, x10
  1000f0ba0  mov     x0, x21
  1000f0ba4  b.hs    loc_1000f0bc4                            ; if (a1[+0x0] >=u x10)
  1000f0ba8  b       loc_1000f0bb0
loc_1000f0bac:
  1000f0bac  add     x21, x20, #8
loc_1000f0bb0:
  1000f0bb0  ldr     x8, [x20, #0x18]                         ; x8 = a0[+0x18]
  1000f0bb4  cmp     x21, x8
  1000f0bb8  b.eq    loc_1000f0bd4                            ; if (x21 == a0[+0x18])
  1000f0bbc  mov     x0, x21
  1000f0bc0  bl      __ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base ; ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(x0, a1, a2, a3)
loc_1000f0bc4:
  1000f0bc4  ldr     x8, [x0, #0x20]
  1000f0bc8  ldr     x9, [x19]                                ; x9 = a1[+0x0]
  1000f0bcc  cmp     x8, x9
  1000f0bd0  b.hs    loc_1000f0bf4                            ; if (x8 >=u a1[+0x0])
loc_1000f0bd4:
  1000f0bd4  mov     x1, #0
  1000f0bd8  mov     x0, x20
  1000f0bdc  mov     x2, x21
  1000f0be0  mov     x3, x19
  1000f0be4  bl      __ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE9_M_insertEPSt18_Rb_tree_node_baseSF_RKS7_ ; ZNSt8_Rb_treeIPN3csl13SpatialSourceESt4pairIKS2_PNS0_17DistanceSimulatorEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE9_M_insertEPSt18_Rb_tree_node_baseSF_RKS7_(a0, 0, x2, a1)
  1000f0be8  mov     x8, #0
  1000f0bec  mov     w1, #1
  1000f0bf0  b       loc_1000f0bfc
loc_1000f0bf4:
  1000f0bf4  mov     x8, #0
  1000f0bf8  mov     x1, #0
loc_1000f0bfc:
  1000f0bfc  orr     x0, x8, x0
  1000f0c00  ldp     x29, x30, [sp, #0x20]
  1000f0c04  ldp     x20, x19, [sp, #0x10]
  1000f0c08  ldp     x22, x21, [sp], #0x30
  1000f0c0c  ret

; ======================================================================
; sub_1000f0c10
; address 0x1000f0c10  size 240  kind sub
; ======================================================================
  1000f0c10  stp     x22, x21, [sp, #-0x30]!
  1000f0c14  stp     x20, x19, [sp, #0x10]
  1000f0c18  stp     x29, x30, [sp, #0x20]
  1000f0c1c  add     x29, sp, #0x20
  1000f0c20  mov     x20, x1
  1000f0c24  mov     x19, x0
  1000f0c28  bl      sub_1000e732c                            ; sub_1000e732c(a0, a1, a2, a3)
  1000f0c2c  mov     x1, x0
  1000f0c30  mov     w2, #2
  1000f0c34  mov     x0, x19
  1000f0c38  bl      sub_1000e886c                            ; sub_1000e886c(a0, sub_1000e732c(a0, a1, a2, a3), 2)
  1000f0c3c  stp     wzr, wzr, [x19, #0xb0]
  1000f0c40  adrp    x8, #0x1003b6000
  1000f0c44  add     x8, x8, #0x3c0                           ; &d_1003b63c0
  1000f0c48  add     x9, x8, #0x10                            ; vtable<csl::SpatialPanner>
  1000f0c4c  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::SpatialPanner>
  1000f0c50  mov     x22, x19
  1000f0c54  add     x8, x8, #0xb8                            ; vtable<csl::SpatialPanner (secondary, -0xa8)>
  1000f0c58  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::SpatialPanner (secondary, -0xa8)>
  1000f0c5c  str     xzr, [x22, #0xb8]!                       ; a0[+0xb8] = 0
  1000f0c60  add     x21, x22, #0x38
  1000f0c64  stp     xzr, xzr, [x22, #0x28]
  1000f0c68  stp     xzr, xzr, [x22, #0x18]
  1000f0c6c  stp     xzr, xzr, [x22, #8]
  1000f0c70  mov     w1, #1
  1000f0c74  mov     w2, #0x100
  1000f0c78  mov     w3, #4
  1000f0c7c  mov     x0, x21
  1000f0c80  bl      sub_1000e8084                            ; sub_1000e8084((a0 + 56), 1, 256, 4)
  1000f0c84  bl      sub_1000e735c                            ; sub_1000e735c(sub_1000e8084((a0 + 56), 1, 256, 4))
  1000f0c88  mov     x2, x0
  1000f0c8c  mov     w1, #1
  1000f0c90  mov     x0, x21
  1000f0c94  bl      sub_1000e7fac                            ; sub_1000e7fac((a0 + 56), 1, sub_1000e735c(sub_1000e8084((a0 + 56), 1, 256, 4)))
  1000f0c98  mov     x0, x21
  1000f0c9c  bl      sub_1000e8220                            ; sub_1000e8220((a0 + 56))
  1000f0ca0  mov     x0, x19
  1000f0ca4  mov     x1, x20
  1000f0ca8  bl      sub_1000f0d00                            ; sub_1000f0d00(a0, a1)
  1000f0cac  mov     x0, x19
  1000f0cb0  ldp     x29, x30, [sp, #0x20]
  1000f0cb4  ldp     x20, x19, [sp, #0x10]
  1000f0cb8  ldp     x22, x21, [sp], #0x30
  1000f0cbc  ret
  1000f0cc0  mov     x20, x0
  1000f0cc4  mov     x0, x21
  1000f0cc8  bl      csl::Buffer::~Buffer
  1000f0ccc  b       loc_1000f0cd4
  1000f0cd0  mov     x20, x0
loc_1000f0cd4:
  1000f0cd4  ldr     x0, [x19, #0xd0]
  1000f0cd8  cbz     x0, loc_1000f0ce0                        ; if (x0 == 0)
  1000f0cdc  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f0ce0:
  1000f0ce0  ldr     x0, [x22]
  1000f0ce4  cbz     x0, loc_1000f0cec                        ; if (x0 == 0)
  1000f0ce8  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f0cec:
  1000f0cec  mov     x0, x19
  1000f0cf0  bl      sub_1000e8918
  1000f0cf4  mov     x0, x20
  1000f0cf8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f0cfc  bl      sub_10000b760

; ======================================================================
; sub_1000f0d00
; address 0x1000f0d00  size 112  kind sub
; ======================================================================
  1000f0d00  stp     x22, x21, [sp, #-0x30]!
  1000f0d04  stp     x20, x19, [sp, #0x10]
  1000f0d08  stp     x29, x30, [sp, #0x20]
  1000f0d0c  add     x29, sp, #0x20
  1000f0d10  mov     x20, x1
  1000f0d14  mov     x19, x0
  1000f0d18  ldr     x0, [x19, #0xe8]                         ; x0 = a0[+0xe8]
  1000f0d1c  cmp     x0, x20
  1000f0d20  b.eq    loc_1000f0d60                            ; if (a0[+0xe8] == a1)
  1000f0d24  add     x21, x19, #0xa8
  1000f0d28  cbz     x0, loc_1000f0d34                        ; if (a0[+0xe8] == 0)
  1000f0d2c  mov     x1, x21
  1000f0d30  bl      sub_1000e77c8                            ; sub_1000e77c8(a0[+0xe8], (a0 + 168), a2, a3)
loc_1000f0d34:
  1000f0d34  str     x20, [x19, #0xe8]                        ; a0[+0xe8] = a1
  1000f0d38  mov     x0, x20
  1000f0d3c  mov     x1, x21
  1000f0d40  bl      sub_1000e7754                            ; sub_1000e7754(a1, (a0 + 168))
  1000f0d44  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000f0d48  ldr     x1, [x8, #0x90]                          ; x1 = a0[+0x0][+0x90]
  1000f0d4c  mov     x0, x19
  1000f0d50  ldp     x29, x30, [sp, #0x20]
  1000f0d54  ldp     x20, x19, [sp, #0x10]
  1000f0d58  ldp     x22, x21, [sp], #0x30
  1000f0d5c  br      x1
loc_1000f0d60:
  1000f0d60  ldp     x29, x30, [sp, #0x20]
  1000f0d64  ldp     x20, x19, [sp, #0x10]
  1000f0d68  ldp     x22, x21, [sp], #0x30
  1000f0d6c  ret

; ======================================================================
; sub_1000f0d70
; address 0x1000f0d70  size 184  kind sub
; ======================================================================
  1000f0d70  stp     x20, x19, [sp, #-0x20]!
  1000f0d74  stp     x29, x30, [sp, #0x10]
  1000f0d78  add     x29, sp, #0x10
  1000f0d7c  mov     x19, x0
  1000f0d80  adrp    x8, #0x1003b6000
  1000f0d84  add     x8, x8, #0x3c0                           ; &d_1003b63c0
  1000f0d88  add     x9, x8, #0x10                            ; vtable<csl::SpatialPanner>
  1000f0d8c  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::SpatialPanner>
  1000f0d90  add     x8, x8, #0xb8                            ; vtable<csl::SpatialPanner (secondary, -0xa8)>
  1000f0d94  mov     x1, x19
  1000f0d98  str     x8, [x1, #0xa8]!                         ; a0[+0xa8] = vtable<csl::SpatialPanner (secondary, -0xa8)>
  1000f0d9c  ldr     x0, [x1, #0x40]                          ; x0 = a0[+0x40]
  1000f0da0  bl      sub_1000e77c8                            ; sub_1000e77c8(a0[+0x40], a0, a2, a3)
  1000f0da4  add     x20, x19, #0xf0
  1000f0da8  mov     x0, x20
  1000f0dac  bl      sub_1000e8130                            ; sub_1000e8130((a0 + 240))
  1000f0db0  mov     x0, x20
  1000f0db4  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((a0 + 240))
  1000f0db8  ldr     x0, [x19, #0xd0]                         ; x0 = a0[+0xd0]
  1000f0dbc  cbz     x0, loc_1000f0dc4                        ; if (a0[+0xd0] == 0)
  1000f0dc0  bl      __ZdlPv                                  ; ZdlPv(a0[+0xd0])
loc_1000f0dc4:
  1000f0dc4  ldr     x0, [x19, #0xb8]                         ; x0 = a0[+0xb8]
  1000f0dc8  cbz     x0, loc_1000f0dd0                        ; if (a0[+0xb8] == 0)
  1000f0dcc  bl      __ZdlPv                                  ; ZdlPv(a0[+0xb8])
loc_1000f0dd0:
  1000f0dd0  mov     x0, x19
  1000f0dd4  bl      sub_1000e8918                            ; sub_1000e8918(a0)
  1000f0dd8  mov     x0, x19
  1000f0ddc  ldp     x29, x30, [sp, #0x10]
  1000f0de0  ldp     x20, x19, [sp], #0x20
  1000f0de4  ret
  1000f0de8  mov     x20, x0
  1000f0dec  add     x0, x19, #0xf0
  1000f0df0  bl      csl::Buffer::~Buffer                     ; csl::Buffer::~Buffer((x19 + 240))
  1000f0df4  b       loc_1000f0dfc
  1000f0df8  mov     x20, x0
loc_1000f0dfc:
  1000f0dfc  ldr     x0, [x19, #0xd0]
  1000f0e00  cbz     x0, loc_1000f0e08                        ; if (x0 == 0)
  1000f0e04  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f0e08:
  1000f0e08  ldr     x0, [x19, #0xb8]
  1000f0e0c  cbz     x0, loc_1000f0e14                        ; if (x0 == 0)
  1000f0e10  bl      __ZdlPv                                  ; ZdlPv()
loc_1000f0e14:
  1000f0e14  mov     x0, x19
  1000f0e18  bl      sub_1000e8918
  1000f0e1c  mov     x0, x20
  1000f0e20  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000f0e24  bl      sub_10000b760
