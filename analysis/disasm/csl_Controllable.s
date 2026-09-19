// unit csl_Controllable — 13 functions
//   0x1000e93e0      88  csl::Controllable::~Controllable
//   0x1000e9438     108  csl::Controllable::~Controllable/*deleting*/
//   0x1000e94a4     188  sub_1000e94a4
//   0x1000e9560      60  sub_1000e9560
//   0x1000e959c     112  sub_1000e959c
//   0x1000e960c     144  sub_1000e960c
//   0x1000e969c     120  sub_1000e969c
//   0x1000e9714     112  sub_1000e9714
//   0x1000e9784      12  sub_1000e9784
//   0x1000e9790     236  csl::Controllable::vfunc_2
//   0x1000e987c     316  csl::Controllable::vfunc_3
//   0x1000e99b8      76  sub_1000e99b8
//   0x1000e9a04       4  sub_1000e9a04

; ======================================================================
; csl::Controllable::~Controllable
; address 0x1000e93e0  size 88  kind cxx
; ======================================================================
  1000e93e0  stp     x20, x19, [sp, #-0x20]!
  1000e93e4  stp     x29, x30, [sp, #0x10]
  1000e93e8  add     x29, sp, #0x10
  1000e93ec  mov     x19, x0
  1000e93f0  adrp    x8, #0x1003b4000
  1000e93f4  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e93f8  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e93fc  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::Controllable>
  1000e9400  mov     w20, #8
loc_1000e9404:
  1000e9404  ldr     x0, [x19, x20]
  1000e9408  cbz     x0, loc_1000e941c                        ; if (x0 == 0)
  1000e940c  ldr     x8, [x0]
  1000e9410  ldr     x8, [x8, #8]
  1000e9414  blr     x8
  1000e9418  str     xzr, [x19, x20]
loc_1000e941c:
  1000e941c  add     x20, x20, #8
  1000e9420  cmp     x20, #0x70
  1000e9424  b.ne    loc_1000e9404                            ; if ((x20 + 8) != 112)
  1000e9428  mov     x0, x19
  1000e942c  ldp     x29, x30, [sp, #0x10]
  1000e9430  ldp     x20, x19, [sp], #0x20
  1000e9434  ret

; ======================================================================
; csl::Controllable::~Controllable/*deleting*/
; address 0x1000e9438  size 108  kind cxx
; ======================================================================
  1000e9438  stp     x20, x19, [sp, #-0x20]!
  1000e943c  stp     x29, x30, [sp, #0x10]
  1000e9440  add     x29, sp, #0x10
  1000e9444  mov     x19, x0
  1000e9448  adrp    x8, #0x1003b4000
  1000e944c  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9450  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e9454  str     x8, [x19]                                ; a0[+0x0] = vtable<csl::Controllable>
  1000e9458  mov     w20, #8
loc_1000e945c:
  1000e945c  ldr     x0, [x19, x20]
  1000e9460  cbz     x0, loc_1000e9474                        ; if (x0 == 0)
  1000e9464  ldr     x8, [x0]
  1000e9468  ldr     x8, [x8, #8]
  1000e946c  blr     x8
  1000e9470  str     xzr, [x19, x20]
loc_1000e9474:
  1000e9474  add     x20, x20, #8
  1000e9478  cmp     x20, #0x70
  1000e947c  b.ne    loc_1000e945c                            ; if ((x20 + 8) != 112)
  1000e9480  mov     x0, x19
  1000e9484  ldp     x29, x30, [sp, #0x10]
  1000e9488  ldp     x20, x19, [sp], #0x20
  1000e948c  b       __ZdlPv                                  ; ZdlPv(a0)
  1000e9490  mov     x20, x0
  1000e9494  mov     x0, x19
  1000e9498  bl      __ZdlPv                                  ; ZdlPv()
  1000e949c  mov     x0, x20
  1000e94a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e94a4
; address 0x1000e94a4  size 188  kind sub
; ======================================================================
  1000e94a4  stp     x22, x21, [sp, #-0x30]!
  1000e94a8  stp     x20, x19, [sp, #0x10]
  1000e94ac  stp     x29, x30, [sp, #0x20]
  1000e94b0  add     x29, sp, #0x20
  1000e94b4  mov     x22, x2
  1000e94b8  mov     x19, x1
  1000e94bc  cbz     x19, loc_1000e9528                       ; if (a1 == 0)
  1000e94c0  ldr     x21, [x19, #8]                           ; x21 = a1[+0x8]
  1000e94c4  cbz     x21, loc_1000e9544                       ; if (a1[+0x8] == 0)
  1000e94c8  ldr     x20, [x19, #0x10]                        ; x20 = a1[+0x10]
  1000e94cc  cbz     x20, loc_1000e9538                       ; if (a1[+0x10] == 0)
  1000e94d0  mov     x0, x19
  1000e94d4  bl      sub_1000e9130                            ; sub_1000e9130(a1, a1, a2, a3)
  1000e94d8  str     w22, [x20, #0xc]                         ; a1[+0x10][+0xc] = a2
  1000e94dc  str     wzr, [x20, #0x2c]                        ; a1[+0x10][+0x2c] = 0
  1000e94e0  mov     x0, x20
  1000e94e4  bl      sub_1000e8310                            ; sub_1000e8310(a1[+0x10])
  1000e94e8  ldr     x8, [x21]                                ; x8 = a1[+0x8][+0x0]
  1000e94ec  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x8][+0x0][+0x20]
  1000e94f0  mov     x0, x21
  1000e94f4  mov     x1, x20
  1000e94f8  blr     x8                                       ; call a1[+0x8][+0x0][+0x20]
  1000e94fc  mov     w8, #1
  1000e9500  strb    w8, [x20, #0x2a]                         ; a1[+0x10][+0x2a] = 1
  1000e9504  ldr     x0, [x19, #0x10]                         ; x0 = a1[+0x10]
  1000e9508  ldr     x8, [x0]                                 ; x8 = a1[+0x10][+0x0]
  1000e950c  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x10][+0x0][+0x20]
  1000e9510  mov     w1, #0
  1000e9514  blr     x8                                       ; call a1[+0x10][+0x0][+0x20]
  1000e9518  sub     x8, x0, #4
  1000e951c  str     x8, [x19, #0x20]                         ; a1[+0x20] = (a1[+0x10][+0x0][+0x20](…) - 4)
  1000e9520  str     wzr, [x19, #0x2c]                        ; a1[+0x2c] = 0
  1000e9524  b       loc_1000e9544
loc_1000e9528:
  1000e9528  adrp    x0, #0x100388000
  1000e952c  add     x0, x0, #0x404                           ; "Controllable::pullInput port == null!"
  1000e9530  bl      sub_1000e75a0                            ; sub_1000e75a0("Controllable::pullInput port == null!", a1, a2, a3)
  1000e9534  b       loc_1000e9544
loc_1000e9538:
  1000e9538  adrp    x0, #0x100388000
  1000e953c  add     x0, x0, #0x42a                           ; "Controllable::pullInput Buffer == null!"
  1000e9540  bl      sub_1000e75a0                            ; sub_1000e75a0("Controllable::pullInput Buffer == null!", a1, a2, a3)
loc_1000e9544:
  1000e9544  ldp     x29, x30, [sp, #0x20]
  1000e9548  ldp     x20, x19, [sp, #0x10]
  1000e954c  ldp     x22, x21, [sp], #0x30
  1000e9550  ret
  1000e9554  tbz     w1, 0x1f, loc_1000e955c                  ; if (w1 >= 0)
  1000e9558  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e955c:
  1000e955c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e9560
; address 0x1000e9560  size 60  kind sub
; ======================================================================
  1000e9560  stp     x20, x19, [sp, #-0x20]!
  1000e9564  stp     x29, x30, [sp, #0x10]
  1000e9568  add     x29, sp, #0x10
  1000e956c  mov     x19, x0
  1000e9570  adrp    x8, #0x1003b4000
  1000e9574  add     x8, x8, #0x390                           ; &d_1003b4390
  1000e9578  add     x8, x8, #0x10                            ; vtable<csl::Controllable>
  1000e957c  str     x8, [x0], #8
  1000e9580  mov     w2, #0x68
  1000e9584  mov     w1, #0
  1000e9588  bl      _memset                                  ; memset(a0, 0, 104, a3)
  1000e958c  mov     x0, x19
  1000e9590  ldp     x29, x30, [sp, #0x10]
  1000e9594  ldp     x20, x19, [sp], #0x20
  1000e9598  ret

; ======================================================================
; sub_1000e959c
; address 0x1000e959c  size 112  kind sub
; ======================================================================
  1000e959c  stp     x20, x19, [sp, #-0x20]!
  1000e95a0  stp     x29, x30, [sp, #0x10]
  1000e95a4  add     x29, sp, #0x10
  1000e95a8  mov     x20, x2
  1000e95ac  mov     x19, x1
  1000e95b0  cbz     x19, loc_1000e95f4                       ; if (a1 == 0)
  1000e95b4  ldr     x0, [x19, #8]                            ; x0 = a1[+0x8]
  1000e95b8  cbz     x0, loc_1000e95f4                        ; if (a1[+0x8] == 0)
  1000e95bc  ldr     x8, [x0]                                 ; x8 = a1[+0x8][+0x0]
  1000e95c0  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x8][+0x0][+0x20]
  1000e95c4  mov     x1, x20
  1000e95c8  blr     x8                                       ; call a1[+0x8][+0x0][+0x20]
  1000e95cc  mov     w8, #1
  1000e95d0  strb    w8, [x20, #0x2a]                         ; a2[+0x2a] = 1
  1000e95d4  ldr     x8, [x20]                                ; x8 = a2[+0x0]
  1000e95d8  ldr     x8, [x8, #0x20]                          ; x8 = a2[+0x0][+0x20]
  1000e95dc  mov     w1, #0
  1000e95e0  mov     x0, x20
  1000e95e4  blr     x8                                       ; call a2[+0x0][+0x20]
  1000e95e8  sub     x8, x0, #4
  1000e95ec  str     x8, [x19, #0x20]                         ; a1[+0x20] = (a2[+0x0][+0x20](…) - 4)
  1000e95f0  str     wzr, [x19, #0x2c]                        ; a1[+0x2c] = 0
loc_1000e95f4:
  1000e95f4  ldp     x29, x30, [sp, #0x10]
  1000e95f8  ldp     x20, x19, [sp], #0x20
  1000e95fc  ret
  1000e9600  tbz     w1, 0x1f, loc_1000e9608                  ; if (w1 >= 0)
  1000e9604  bl      ___cxa_call_unexpected                   ; cxa_call_unexpected()
loc_1000e9608:
  1000e9608  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e960c
; address 0x1000e960c  size 144  kind sub
; ======================================================================
  1000e960c  stp     x22, x21, [sp, #-0x30]!
  1000e9610  stp     x20, x19, [sp, #0x10]
  1000e9614  stp     x29, x30, [sp, #0x20]
  1000e9618  add     x29, sp, #0x20
  1000e961c  sub     sp, sp, #0x30
  1000e9620  mov     x19, x2
  1000e9624  mov     x20, x0
  1000e9628  add     x21, x20, w1, uxtw #3
  1000e962c  ldr     x0, [x21, #8]!                           ; x0 = (a0 + (a1 << 3))[+0x8]
  1000e9630  cbz     x0, loc_1000e9644                        ; if ((a0 + (a1 << 3))[+0x8] == 0)
  1000e9634  ldr     x8, [x0]                                 ; x8 = (a0 + (a1 << 3))[+0x8][+0x0]
  1000e9638  ldr     x8, [x8, #8]                             ; x8 = (a0 + (a1 << 3))[+0x8][+0x0][+0x8]
  1000e963c  blr     x8                                       ; call (a0 + (a1 << 3))[+0x8][+0x0][+0x8]
  1000e9640  str     xzr, [x21]                               ; (a0 + (a1 << 3))[+0x0] = 0
loc_1000e9644:
  1000e9644  adrp    x8, #0x1003b0000
  1000e9648  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000e964c  add     x0, x19, #0x68
  1000e9650  mov     w9, #0x40000000
  1000e9654  adr     x10, #0x1000e8b64                        ; &sub_1000e8b64
  1000e9658  nop
  1000e965c  str     x8, [sp]
  1000e9660  stp     w9, wzr, [sp, #8]
  1000e9664  adrp    x8, #0x1003b4000
  1000e9668  add     x8, x8, #0x340                           ; &d_1003b4340
  1000e966c  stp     x10, x8, [sp, #0x10]
  1000e9670  stp     x19, x20, [sp, #0x20]
  1000e9674  mov     x1, sp
  1000e9678  bl      __ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE4eachEU13block_pointerFvRS2_PbE ; ZN3csl12SimpleVectorIPNS_13UnitGeneratorEE4eachEU13block_pointerFvRS2_PbE((a2 + 104), ^{sub_1000e8b64 captures +0x20=a2, +0x28=a0})
  1000e967c  ldr     w8, [x19, #0x90]                         ; w8 = a2[+0x90]
  1000e9680  sub     w8, w8, #1
  1000e9684  str     w8, [x19, #0x90]                         ; a2[+0x90] = (a2[+0x90] - 1)
  1000e9688  sub     sp, x29, #0x20
  1000e968c  ldp     x29, x30, [sp, #0x20]
  1000e9690  ldp     x20, x19, [sp, #0x10]
  1000e9694  ldp     x22, x21, [sp], #0x30
  1000e9698  ret

; ======================================================================
; sub_1000e969c
; address 0x1000e969c  size 120  kind sub
; ======================================================================
  1000e969c  stp     x22, x21, [sp, #-0x30]!
  1000e96a0  stp     x20, x19, [sp, #0x10]
  1000e96a4  stp     x29, x30, [sp, #0x20]
  1000e96a8  add     x29, sp, #0x20
  1000e96ac  mov     x19, x2
  1000e96b0  mov     x20, x0
  1000e96b4  add     x22, x20, w1, uxtw #3
  1000e96b8  ldr     x0, [x22, #8]!                           ; x0 = (a0 + (a1 << 3))[+0x8]
  1000e96bc  cbz     x0, loc_1000e96d0                        ; if ((a0 + (a1 << 3))[+0x8] == 0)
  1000e96c0  ldr     x8, [x0]                                 ; x8 = (a0 + (a1 << 3))[+0x8][+0x0]
  1000e96c4  ldr     x8, [x8, #8]                             ; x8 = (a0 + (a1 << 3))[+0x8][+0x0][+0x8]
  1000e96c8  blr     x8                                       ; call (a0 + (a1 << 3))[+0x8][+0x0][+0x8]
  1000e96cc  str     xzr, [x22]                               ; (a0 + (a1 << 3))[+0x0] = 0
loc_1000e96d0:
  1000e96d0  mov     w0, #0x30
  1000e96d4  bl      __Znwm                                   ; Znwm(48)
  1000e96d8  mov     x21, x0
  1000e96dc  mov     x1, x19
  1000e96e0  bl      sub_1000e8f70                            ; sub_1000e8f70(Znwm(48), a2)
  1000e96e4  str     x21, [x22]                               ; (a0 + (a1 << 3))[+0x0] = Znwm(48)
  1000e96e8  mov     x0, x19
  1000e96ec  mov     x1, x20
  1000e96f0  ldp     x29, x30, [sp, #0x20]
  1000e96f4  ldp     x20, x19, [sp, #0x10]
  1000e96f8  ldp     x22, x21, [sp], #0x30
  1000e96fc  b       sub_1000e89bc                            ; sub_1000e89bc(a2, a0)
  1000e9700  mov     x19, x0
  1000e9704  mov     x0, x21
  1000e9708  bl      __ZdlPv                                  ; ZdlPv()
  1000e970c  mov     x0, x19
  1000e9710  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000e9714
; address 0x1000e9714  size 112  kind sub
; ======================================================================
  1000e9714  stp     d9, d8, [sp, #-0x30]!
  1000e9718  stp     x20, x19, [sp, #0x10]
  1000e971c  stp     x29, x30, [sp, #0x20]
  1000e9720  add     x29, sp, #0x20
  1000e9724  mov     v8.16b, v0.16b
  1000e9728  add     x19, x0, w1, uxtw #3
  1000e972c  ldr     x0, [x19, #8]!                           ; x0 = (a0 + (a1 << 3))[+0x8]
  1000e9730  cbz     x0, loc_1000e9744                        ; if ((a0 + (a1 << 3))[+0x8] == 0)
  1000e9734  ldr     x8, [x0]                                 ; x8 = (a0 + (a1 << 3))[+0x8][+0x0]
  1000e9738  ldr     x8, [x8, #8]                             ; x8 = (a0 + (a1 << 3))[+0x8][+0x0][+0x8]
  1000e973c  blr     x8                                       ; call (a0 + (a1 << 3))[+0x8][+0x0][+0x8]
  1000e9740  str     xzr, [x19]                               ; (a0 + (a1 << 3))[+0x0] = 0
loc_1000e9744:
  1000e9744  mov     w0, #0x30
  1000e9748  bl      __Znwm                                   ; Znwm(48)
  1000e974c  adrp    x8, #0x1003b4000
  1000e9750  add     x8, x8, #0x360                           ; &d_1003b4360
  1000e9754  add     x8, x8, #0x10                            ; vtable<csl::Port>
  1000e9758  str     x8, [x0]                                 ; Znwm(48)[+0x0] = vtable<csl::Port>
  1000e975c  stp     xzr, xzr, [x0, #8]
  1000e9760  mov     x8, x0
  1000e9764  str     s8, [x8, #0x18]!                         ; Znwm(48)[+0x18] = s8
  1000e9768  str     x8, [x0, #0x20]                          ; Znwm(48)[+0x20] = Znwm(48)
  1000e976c  str     wzr, [x0, #0x28]                         ; Znwm(48)[+0x28] = 0
  1000e9770  str     x0, [x19]                                ; (a0 + (a1 << 3))[+0x0] = Znwm(48)
  1000e9774  ldp     x29, x30, [sp, #0x20]
  1000e9778  ldp     x20, x19, [sp, #0x10]
  1000e977c  ldp     d9, d8, [sp], #0x30
  1000e9780  ret

; ======================================================================
; sub_1000e9784
; address 0x1000e9784  size 12  kind sub
; ======================================================================
  1000e9784  add     x8, x0, w1, uxtw #3
  1000e9788  ldr     x0, [x8, #8]                             ; x0 = (a0 + (a1 << 3))[+0x8]
  1000e978c  ret

; ======================================================================
; csl::Controllable::vfunc_2
; address 0x1000e9790  size 236  kind cxx
; ======================================================================
  1000e9790  stp     x26, x25, [sp, #-0x50]!
  1000e9794  stp     x24, x23, [sp, #0x10]
  1000e9798  stp     x22, x21, [sp, #0x20]
  1000e979c  stp     x20, x19, [sp, #0x30]
  1000e97a0  stp     x29, x30, [sp, #0x40]
  1000e97a4  add     x29, sp, #0x40
  1000e97a8  mov     x19, x0
  1000e97ac  adrp    x0, #0x100388000
  1000e97b0  add     x0, x0, #0x452                           ; "a Controllable with the map:"
  1000e97b4  bl      sub_1000e75a0                            ; sub_1000e75a0("a Controllable with the map:", a1, a2, a3)
  1000e97b8  mov     x24, #0
  1000e97bc  add     x25, x19, #8
  1000e97c0  adrp    x19, #0x100388000
  1000e97c4  add     x19, x19, #0x4c0                         ; "	key: Other = UG: "
  1000e97c8  adr     x26, #0x1000e9864                        ; 0x1000e9864
  1000e97cc  nop
  1000e97d0  adrp    x20, #0x100388000
  1000e97d4  add     x20, x20, #0x486                         ; "	key: Scale = UG: "
  1000e97d8  adrp    x21, #0x100388000
  1000e97dc  add     x21, x21, #0x499                         ; "	key: Offset = UG: "
  1000e97e0  adrp    x22, #0x100388000
  1000e97e4  add     x22, x22, #0x4ad                         ; "	key: Input = UG: "
  1000e97e8  adrp    x23, #0x100388000
  1000e97ec  add     x23, x23, #0x46f                         ; "	key: Frequency = UG: "
  1000e97f0  b       loc_1000e980c
  1000e97f4  mov     x0, x21
  1000e97f8  b       loc_1000e9830
  1000e97fc  mov     x0, x22
  1000e9800  b       loc_1000e9830
  1000e9804  mov     x0, x23
  1000e9808  b       loc_1000e9830
loc_1000e980c:
  1000e980c  sub     w8, w24, #1
  1000e9810  cmp     w8, #5
  1000e9814  b.hi    loc_1000e982c                            ; if ((w24 - 1) >u 5)
  1000e9818  ldrsw   x8, [x26, x8, lsl #2]
  1000e981c  add     x8, x8, x26
  1000e9820  br      x8
  1000e9824  mov     x0, x20
  1000e9828  b       loc_1000e9830
loc_1000e982c:
  1000e982c  mov     x0, x19
loc_1000e9830:
  1000e9830  bl      sub_1000e75a0                            ; sub_1000e75a0("	key: Other = UG: ")
  1000e9834  ldr     x0, [x25, x24, lsl #3]
  1000e9838  cbz     x0, loc_1000e9840                        ; if (x0 == 0)
  1000e983c  bl      sub_1000e9304
loc_1000e9840:
  1000e9840  add     x24, x24, #1
  1000e9844  cmp     x24, #0xd
  1000e9848  b.ne    loc_1000e980c                            ; if ((x24 + 1) != 13)
  1000e984c  ldp     x29, x30, [sp, #0x40]
  1000e9850  ldp     x20, x19, [sp, #0x30]
  1000e9854  ldp     x22, x21, [sp, #0x20]
  1000e9858  ldp     x24, x23, [sp, #0x10]
  1000e985c  ldp     x26, x25, [sp], #0x50
  1000e9860  ret
  1000e9864  .data   24 undecodable bytes (padding/data)

; ======================================================================
; csl::Controllable::vfunc_3
; address 0x1000e987c  size 316  kind cxx
; ======================================================================
  1000e987c  stp     x28, x27, [sp, #-0x60]!
  1000e9880  stp     x26, x25, [sp, #0x10]
  1000e9884  stp     x24, x23, [sp, #0x20]
  1000e9888  stp     x22, x21, [sp, #0x30]
  1000e988c  stp     x20, x19, [sp, #0x40]
  1000e9890  stp     x29, x30, [sp, #0x50]
  1000e9894  add     x29, sp, #0x50
  1000e9898  sub     sp, sp, #0x50
  1000e989c  mov     x19, x1
  1000e98a0  mov     x20, x0
  1000e98a4  adrp    x25, #0x1003b0000
  1000e98a8  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000e98ac  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000e98b0  str     x25, [sp, #0x48]
  1000e98b4  add     x0, sp, #8
  1000e98b8  bl      sub_1000e8c00                            ; sub_1000e8c00(&sp[0x8], a1, a2, a3)
  1000e98bc  mov     x26, #0
  1000e98c0  add     w19, w19, #1
  1000e98c4  add     x27, x20, #8
  1000e98c8  adrp    x20, #0x100388000
  1000e98cc  add     x20, x20, #0x4c0                         ; "	key: Other = UG: "
  1000e98d0  adr     x28, #0x1000e99a0                        ; 0x1000e99a0
  1000e98d4  nop
  1000e98d8  adrp    x21, #0x100388000
  1000e98dc  add     x21, x21, #0x486                         ; "	key: Scale = UG: "
  1000e98e0  adrp    x22, #0x100388000
  1000e98e4  add     x22, x22, #0x499                         ; "	key: Offset = UG: "
  1000e98e8  adrp    x23, #0x100388000
  1000e98ec  add     x23, x23, #0x4ad                         ; "	key: Input = UG: "
  1000e98f0  adrp    x24, #0x100388000
  1000e98f4  add     x24, x24, #0x46f                         ; "	key: Frequency = UG: "
  1000e98f8  b       loc_1000e9914
  1000e98fc  mov     x0, x22
  1000e9900  b       loc_1000e9938
  1000e9904  mov     x0, x23
  1000e9908  b       loc_1000e9938
  1000e990c  mov     x0, x24
  1000e9910  b       loc_1000e9938
loc_1000e9914:
  1000e9914  sub     w8, w26, #1
  1000e9918  cmp     w8, #5
  1000e991c  b.hi    loc_1000e9934                            ; if ((w26 - 1) >u 5)
  1000e9920  ldrsw   x8, [x28, x8, lsl #2]
  1000e9924  add     x8, x8, x28
  1000e9928  br      x8
  1000e992c  mov     x0, x21
  1000e9930  b       loc_1000e9938
loc_1000e9934:
  1000e9934  mov     x0, x20
loc_1000e9938:
  1000e9938  bl      _printf                                  ; printf("	key: Other = UG: ")
  1000e993c  mov     w0, #0xa
  1000e9940  bl      _putchar                                 ; putchar(10)
  1000e9944  ldr     x8, [x27, x26, lsl #3]
  1000e9948  cbz     x8, loc_1000e9964                        ; if (x8 == 0)
  1000e994c  ldr     x0, [x8, #8]
  1000e9950  cbz     x0, loc_1000e9964                        ; if (x0 == 0)
  1000e9954  ldr     x8, [x0]
  1000e9958  ldr     x8, [x8, #0x60]
  1000e995c  mov     x1, x19
  1000e9960  blr     x8
loc_1000e9964:
  1000e9964  add     x26, x26, #1
  1000e9968  cmp     x26, #0xd
  1000e996c  b.ne    loc_1000e9914                            ; if ((x26 + 1) != 13)
  1000e9970  ldr     x8, [sp, #0x48]
  1000e9974  sub     x8, x25, x8
  1000e9978  cbnz    x8, loc_1000e999c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e997c  sub     sp, x29, #0x50
  1000e9980  ldp     x29, x30, [sp, #0x50]
  1000e9984  ldp     x20, x19, [sp, #0x40]
  1000e9988  ldp     x22, x21, [sp, #0x30]
  1000e998c  ldp     x24, x23, [sp, #0x20]
  1000e9990  ldp     x26, x25, [sp, #0x10]
  1000e9994  ldp     x28, x27, [sp], #0x60
  1000e9998  ret
loc_1000e999c:
  1000e999c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000e99a0  .data   24 undecodable bytes (padding/data)

; ======================================================================
; sub_1000e99b8
; address 0x1000e99b8  size 76  kind sub
; ======================================================================
  1000e99b8  stp     x20, x19, [sp, #-0x20]!
  1000e99bc  stp     x29, x30, [sp, #0x10]
  1000e99c0  add     x29, sp, #0x10
  1000e99c4  mov     x19, x0
  1000e99c8  ldr     x8, [x1]                                 ; x8 = a1[+0x0]
  1000e99cc  str     x8, [x19]                                ; a0[+0x0] = a1[+0x0]
  1000e99d0  ldr     x9, [x1, #8]                             ; x9 = a1[+0x8]
  1000e99d4  ldur    x8, [x8, #-0x18]                         ; x8 = a1[+0x0][+0x-18]
  1000e99d8  str     x9, [x19, x8]
  1000e99dc  str     s1, [x19, #8]                            ; a0[+0x8] = s1
  1000e99e0  ldr     x8, [x19]                                ; x8 = a0[+0x0]
  1000e99e4  ldur    x8, [x8, #-0x18]                         ; x8 = a0[+0x0][+0x-18]
  1000e99e8  add     x0, x19, x8
  1000e99ec  mov     w1, #6
  1000e99f0  bl      sub_1000e9714                            ; sub_1000e9714((a0 + a0[+0x0][+0x-18]), 6, a2, a3)
  1000e99f4  mov     x0, x19
  1000e99f8  ldp     x29, x30, [sp, #0x10]
  1000e99fc  ldp     x20, x19, [sp], #0x20
  1000e9a00  ret

; ======================================================================
; sub_1000e9a04
; address 0x1000e9a04  size 4  kind sub
; ======================================================================
  1000e9a04  ret
