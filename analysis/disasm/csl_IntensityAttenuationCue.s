// unit csl_IntensityAttenuationCue — 7 functions
//   0x1000ef780      32  csl::IntensityAttenuationCue::vfunc_2
//   0x1000ef7a0      72  csl::IntensityAttenuationCue::vfunc_3
//   0x1000ef8d8       4  csl::IntensityAttenuationCue::~IntensityAttenuationCue
//   0x1000ef8dc       4  csl::IntensityAttenuationCue::~IntensityAttenuationCue/*deleting*/
//   0x1000ef8e0     696  sub_1000ef8e0
//   0x1000efb98      36  sub_1000efb98
//   0x1000efbbc     460  sub_1000efbbc

; ======================================================================
; csl::IntensityAttenuationCue::vfunc_2
; address 0x1000ef780  size 32  kind cxx
; ======================================================================
  1000ef780  fmov    s1, #1.00000000
  1000ef784  fdiv    s1, s1, s0
  1000ef788  str     s1, [x0, #8]                             ; a0[+0x8] = (1 / s0)
  1000ef78c  ldr     s0, [x0, #0xc]                           ; s0 = a0[+0xc]
  1000ef790  fcmp    s1, s0
  1000ef794  b.le    loc_1000ef79c                            ; if ((1 / s0) <= (or unordered) a0[+0xc])
  1000ef798  str     s0, [x0, #8]                             ; a0[+0x8] = a0[+0xc]
loc_1000ef79c:
  1000ef79c  ret

; ======================================================================
; csl::IntensityAttenuationCue::vfunc_3
; address 0x1000ef7a0  size 72  kind cxx
; ======================================================================
  1000ef7a0  stp     x20, x19, [sp, #-0x20]!
  1000ef7a4  stp     x29, x30, [sp, #0x10]
  1000ef7a8  add     x29, sp, #0x10
  1000ef7ac  mov     x19, x1
  1000ef7b0  mov     x20, x0
  1000ef7b4  ldr     x8, [x19]                                ; x8 = a1[+0x0]
  1000ef7b8  ldr     x8, [x8, #0x20]                          ; x8 = a1[+0x0][+0x20]
  1000ef7bc  mov     w1, #0
  1000ef7c0  mov     x0, x19
  1000ef7c4  blr     x8                                       ; call a1[+0x0][+0x20]
  1000ef7c8  add     x2, x20, #8
  1000ef7cc  ldr     w5, [x19, #0xc]                          ; w5 = a1[+0xc]
  1000ef7d0  mov     w1, #1
  1000ef7d4  mov     w4, #1
  1000ef7d8  mov     x3, x0
  1000ef7dc  ldp     x29, x30, [sp, #0x10]
  1000ef7e0  ldp     x20, x19, [sp], #0x20
  1000ef7e4  b       _vDSP_vsmul                              ; vDSP_vsmul(a1[+0x0][+0x20](…), 1, (a0 + 8), a1[+0x0][+0x20](…))

; ======================================================================
; csl::IntensityAttenuationCue::~IntensityAttenuationCue
; address 0x1000ef8d8  size 4  kind cxx
; ======================================================================
  1000ef8d8  ret

; ======================================================================
; csl::IntensityAttenuationCue::~IntensityAttenuationCue/*deleting*/
; address 0x1000ef8dc  size 4  kind cxx
; ======================================================================
  1000ef8dc  b       __ZdlPv                                  ; ZdlPv(a0, a1, a2, a3)

; ======================================================================
; sub_1000ef8e0
; address 0x1000ef8e0  size 696  kind sub
; ======================================================================
  1000ef8e0  stp     d9, d8, [sp, #-0x70]!
  1000ef8e4  stp     x28, x27, [sp, #0x10]
  1000ef8e8  stp     x26, x25, [sp, #0x20]
  1000ef8ec  stp     x24, x23, [sp, #0x30]
  1000ef8f0  stp     x22, x21, [sp, #0x40]
  1000ef8f4  stp     x20, x19, [sp, #0x50]
  1000ef8f8  stp     x29, x30, [sp, #0x60]
  1000ef8fc  add     x29, sp, #0x60
  1000ef900  sub     sp, sp, #0x10
  1000ef904  mov     x19, x0
  1000ef908  bl      sub_1000f1cec                            ; sub_1000f1cec(a0, a1, a2, a3)
  1000ef90c  mov     x1, x0
  1000ef910  mov     x0, x19
  1000ef914  bl      sub_1000f0c10                            ; sub_1000f0c10(a0, sub_1000f1cec(a0, a1, a2, a3))
  1000ef918  adrp    x8, #0x1003b6000
  1000ef91c  add     x8, x8, #0x1e0                           ; &d_1003b61e0
  1000ef920  add     x9, x8, #0x10                            ; vtable<csl::SimplePanner>
  1000ef924  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::SimplePanner>
  1000ef928  add     x8, x8, #0xb8                            ; vtable<csl::SimplePanner (secondary, -0xa8)>
  1000ef92c  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::SimplePanner (secondary, -0xa8)>
  1000ef930  add     x20, x19, #0x128
  1000ef934  mov     w1, #2
  1000ef938  mov     x0, x20
  1000ef93c  bl      sub_1000eda70                            ; sub_1000eda70((a0 + 296), 2)
  1000ef940  add     x21, x19, #0x2b8
  1000ef944  mov     w1, #2
  1000ef948  mov     x0, x21
  1000ef94c  bl      sub_1000eda70                            ; sub_1000eda70((a0 + 696), 2)
  1000ef950  add     x22, x19, #0x448
  1000ef954  mov     w1, #2
  1000ef958  mov     x0, x22
  1000ef95c  bl      sub_1000eda70                            ; sub_1000eda70((a0 + 1096), 2)
  1000ef960  add     x23, x19, #0x5d8
  1000ef964  mov     x0, x23
  1000ef968  mov     x1, x21
  1000ef96c  bl      sub_1000ea57c                            ; sub_1000ea57c((a0 + 1496), (a0 + 696))
  1000ef970  add     x24, x19, #0x738
  1000ef974  mov     w2, #0
  1000ef978  nop
  1000ef97c  ldr     s8, #0x10018215c                         ; s8 = 800.0
  1000ef980  mov     x0, x24
  1000ef984  mov     x1, x23
  1000ef988  mov     v0.16b, v8.16b
  1000ef98c  bl      sub_1000ec1e8                            ; sub_1000ec1e8((a0 + 1848), (a0 + 1496), 0)
  1000ef990  add     x25, x19, #0x908
  1000ef994  mov     w2, #0
  1000ef998  mov     x0, x25
  1000ef99c  mov     x1, x23
  1000ef9a0  mov     v0.16b, v8.16b
  1000ef9a4  bl      sub_1000ec1e8                            ; sub_1000ec1e8((a0 + 2312), (a0 + 1496), 0)
  1000ef9a8  add     x26, x19, #0xad8
  1000ef9ac  mov     x0, x26
  1000ef9b0  mov     x1, x25
  1000ef9b4  mov     x2, x24
  1000ef9b8  bl      sub_1000ea94c                            ; sub_1000ea94c((a0 + 2776), (a0 + 2312), (a0 + 1848))
  1000ef9bc  add     x28, x19, #0xbf8
  1000ef9c0  mov     x0, x28
  1000ef9c4  mov     x1, x22
  1000ef9c8  bl      sub_1000ed088                            ; sub_1000ed088((a0 + 3064), (a0 + 1096))
  1000ef9cc  str     x21, [sp, #8]
  1000ef9d0  add     x27, x19, #0xd40
  1000ef9d4  mov     w1, #2
  1000ef9d8  mov     x0, x27
  1000ef9dc  bl      sub_1000eda70                            ; sub_1000eda70((a0 + 3392), 2)
  1000ef9e0  str     xzr, [x19, #0xee0]                       ; a0[+0xee0] = 0
  1000ef9e4  add     x21, x19, #0xed0
  1000ef9e8  str     xzr, [x19, #0xed8]                       ; a0[+0xed8] = 0
  1000ef9ec  str     xzr, [x19, #0xed0]                       ; a0[+0xed0] = 0
  1000ef9f0  mov     x0, x27
  1000ef9f4  mov     x1, x20
  1000ef9f8  bl      sub_1000edd54                            ; sub_1000edd54((a0 + 3392), (a0 + 296))
  1000ef9fc  mov     x0, x27
  1000efa00  mov     x1, x26
  1000efa04  bl      sub_1000edd54                            ; sub_1000edd54((a0 + 3392), (a0 + 2776))
  1000efa08  mov     x0, x27
  1000efa0c  mov     x1, x28
  1000efa10  bl      sub_1000edd54                            ; sub_1000edd54((a0 + 3392), (a0 + 3064))
  1000efa14  nop
  1000efa18  ldr     s8, #0x100181cd0                         ; s8 = 0.400000006
  1000efa1c  mov     x0, x27
  1000efa20  mov     x1, x20
  1000efa24  mov     v0.16b, v8.16b
  1000efa28  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 3392), (a0 + 296))
  1000efa2c  mov     x0, x27
  1000efa30  mov     x1, x26
  1000efa34  mov     v0.16b, v8.16b
  1000efa38  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 3392), (a0 + 2776))
  1000efa3c  mov     x0, x27
  1000efa40  mov     x1, x28
  1000efa44  mov     v0.16b, v8.16b
  1000efa48  bl      sub_1000edfec                            ; sub_1000edfec((a0 + 3392), (a0 + 3064))
  1000efa4c  fmov    s0, #1.00000000
  1000efa50  mov     x0, x28
  1000efa54  bl      sub_1000ed600                            ; sub_1000ed600((a0 + 3064))
  1000efa58  movi    v0.16b, #0
  1000efa5c  mov     x0, x28
  1000efa60  bl      sub_1000ed674                            ; sub_1000ed674((a0 + 3064))
  1000efa64  mov     x0, x19
  1000efa68  sub     sp, x29, #0x60
  1000efa6c  ldp     x29, x30, [sp, #0x60]
  1000efa70  ldp     x20, x19, [sp, #0x50]
  1000efa74  ldp     x22, x21, [sp, #0x40]
  1000efa78  ldp     x24, x23, [sp, #0x30]
  1000efa7c  ldp     x26, x25, [sp, #0x20]
  1000efa80  ldp     x28, x27, [sp, #0x10]
  1000efa84  ldp     d9, d8, [sp], #0x70
  1000efa88  ret
  1000efa8c  str     x0, [sp]
  1000efa90  ldr     x0, [x21]
  1000efa94  cbz     x0, loc_1000efa9c                        ; if (x0 == 0)
  1000efa98  bl      __ZdlPv                                  ; ZdlPv()
loc_1000efa9c:
  1000efa9c  mov     x0, x27
  1000efaa0  bl      csl::Mixer::~Mixer
  1000efaa4  b       loc_1000efaec
  1000efaa8  str     x0, [sp]
  1000efaac  b       loc_1000efb54
  1000efab0  str     x0, [sp]
  1000efab4  b       loc_1000efb4c
  1000efab8  stp     x0, x21, [sp]
  1000efabc  b       loc_1000efb44
  1000efac0  stp     x0, x21, [sp]
  1000efac4  b       loc_1000efb3c
  1000efac8  stp     x0, x21, [sp]
  1000efacc  b       loc_1000efb34
  1000efad0  stp     x0, x21, [sp]
  1000efad4  b       loc_1000efb18
  1000efad8  stp     x0, x21, [sp]
  1000efadc  b       loc_1000efafc
  1000efae0  stp     x0, x21, [sp]
  1000efae4  b       loc_1000efaf4
  1000efae8  str     x0, [sp]
loc_1000efaec:
  1000efaec  mov     x0, x28
  1000efaf0  bl      csl::Stereoverb::~Stereoverb
loc_1000efaf4:
  1000efaf4  mov     x0, x26
  1000efaf8  bl      __ZN3csl6JoinerD1Ev                      ; ZN3csl6JoinerD1Ev()
loc_1000efafc:
  1000efafc  adrp    x8, #0x1003b4000
  1000efb00  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000efb04  add     x1, x8, #8                               ; &d_1003b4e28
  1000efb08  mov     x0, x25
  1000efb0c  bl      sub_1000ebc5c                            ; sub_1000ebc5c(x0, &d_1003b4e28)
  1000efb10  add     x0, x19, #0xa68
  1000efb14  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2664))
loc_1000efb18:
  1000efb18  adrp    x8, #0x1003b4000
  1000efb1c  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000efb20  add     x1, x8, #8                               ; &d_1003b4e28
  1000efb24  mov     x0, x24
  1000efb28  bl      sub_1000ebc5c                            ; sub_1000ebc5c(x0, &d_1003b4e28)
  1000efb2c  add     x0, x19, #0x898
  1000efb30  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2200))
loc_1000efb34:
  1000efb34  mov     x0, x23
  1000efb38  bl      __ZN3csl8SplitterD1Ev                    ; ZN3csl8SplitterD1Ev()
loc_1000efb3c:
  1000efb3c  mov     x0, x22
  1000efb40  bl      csl::Mixer::~Mixer
loc_1000efb44:
  1000efb44  ldr     x0, [sp, #8]
  1000efb48  bl      csl::Mixer::~Mixer
loc_1000efb4c:
  1000efb4c  mov     x0, x20
  1000efb50  bl      csl::Mixer::~Mixer
loc_1000efb54:
  1000efb54  mov     x0, x19
  1000efb58  bl      sub_1000f0d70
  1000efb5c  ldr     x0, [sp]
  1000efb60  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000efb64  mov     x20, x0
loc_1000efb68:
  1000efb68  mov     x0, x20
  1000efb6c  bl      sub_10000b760
  1000efb70  mov     x20, x0
  1000efb74  add     x0, x19, #0xa68
  1000efb78  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2664))
  1000efb7c  b       loc_1000efb68
  1000efb80  bl      sub_10000b760
  1000efb84  mov     x20, x0
  1000efb88  add     x0, x19, #0x898
  1000efb8c  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2200))
  1000efb90  b       loc_1000efb68
  1000efb94  bl      sub_10000b760

; ======================================================================
; sub_1000efb98
; address 0x1000efb98  size 36  kind sub
; ======================================================================
  1000efb98  stp     x20, x19, [sp, #-0x20]!
  1000efb9c  stp     x29, x30, [sp, #0x10]
  1000efba0  add     x29, sp, #0x10
  1000efba4  mov     x19, x0
  1000efba8  bl      sub_1000ef8e0                            ; sub_1000ef8e0(a0, a1, a2, a3)
  1000efbac  mov     x0, x19
  1000efbb0  ldp     x29, x30, [sp, #0x10]
  1000efbb4  ldp     x20, x19, [sp], #0x20
  1000efbb8  ret

; ======================================================================
; sub_1000efbbc
; address 0x1000efbbc  size 460  kind sub
; ======================================================================
  1000efbbc  stp     x20, x19, [sp, #-0x20]!
  1000efbc0  stp     x29, x30, [sp, #0x10]
  1000efbc4  add     x29, sp, #0x10
  1000efbc8  mov     x19, x0
  1000efbcc  adrp    x8, #0x1003b6000
  1000efbd0  add     x8, x8, #0x1e0                           ; &d_1003b61e0
  1000efbd4  add     x9, x8, #0x10                            ; vtable<csl::SimplePanner>
  1000efbd8  str     x9, [x19]                                ; a0[+0x0] = vtable<csl::SimplePanner>
  1000efbdc  add     x8, x8, #0xb8                            ; vtable<csl::SimplePanner (secondary, -0xa8)>
  1000efbe0  str     x8, [x19, #0xa8]                         ; a0[+0xa8] = vtable<csl::SimplePanner (secondary, -0xa8)>
  1000efbe4  ldr     x0, [x19, #0xed0]                        ; x0 = a0[+0xed0]
  1000efbe8  cbz     x0, loc_1000efbf0                        ; if (a0[+0xed0] == 0)
  1000efbec  bl      __ZdlPv                                  ; ZdlPv(a0[+0xed0], a1, a2, a3)
loc_1000efbf0:
  1000efbf0  add     x0, x19, #0xd40
  1000efbf4  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((a0 + 3392))
  1000efbf8  add     x0, x19, #0xbf8
  1000efbfc  bl      csl::Stereoverb::~Stereoverb             ; csl::Stereoverb::~Stereoverb((a0 + 3064))
  1000efc00  add     x0, x19, #0xad8
  1000efc04  bl      __ZN3csl6JoinerD1Ev                      ; ZN3csl6JoinerD1Ev((a0 + 2776))
  1000efc08  add     x0, x19, #0x908
  1000efc0c  adrp    x20, #0x1003b4000
  1000efc10  add     x20, x20, #0xe20                         ; &d_1003b4e20
  1000efc14  add     x1, x20, #8                              ; &d_1003b4e28
  1000efc18  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 + 2312), &d_1003b4e28)
  1000efc1c  add     x0, x19, #0xa68
  1000efc20  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 2664))
  1000efc24  add     x0, x19, #0x738
  1000efc28  add     x1, x20, #8                              ; &d_1003b4e28
  1000efc2c  bl      sub_1000ebc5c                            ; sub_1000ebc5c((a0 + 1848), &d_1003b4e28)
  1000efc30  add     x0, x19, #0x898
  1000efc34  bl      sub_1000e9388                            ; sub_1000e9388((a0 + 2200))
  1000efc38  add     x0, x19, #0x5d8
  1000efc3c  bl      __ZN3csl8SplitterD1Ev                    ; ZN3csl8SplitterD1Ev((a0 + 1496))
  1000efc40  add     x0, x19, #0x448
  1000efc44  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((a0 + 1096))
  1000efc48  add     x0, x19, #0x2b8
  1000efc4c  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((a0 + 696))
  1000efc50  add     x0, x19, #0x128
  1000efc54  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((a0 + 296))
  1000efc58  mov     x0, x19
  1000efc5c  bl      sub_1000f0d70                            ; sub_1000f0d70(a0)
  1000efc60  mov     x0, x19
  1000efc64  ldp     x29, x30, [sp, #0x10]
  1000efc68  ldp     x20, x19, [sp], #0x20
  1000efc6c  ret
  1000efc70  mov     x20, x0
  1000efc74  add     x0, x19, #0xbf8
  1000efc78  bl      csl::Stereoverb::~Stereoverb             ; csl::Stereoverb::~Stereoverb((x19 + 3064))
  1000efc7c  b       loc_1000efc84
  1000efc80  mov     x20, x0
loc_1000efc84:
  1000efc84  add     x0, x19, #0xad8
  1000efc88  bl      __ZN3csl6JoinerD1Ev                      ; ZN3csl6JoinerD1Ev((x19 + 2776))
  1000efc8c  b       loc_1000efc94
  1000efc90  mov     x20, x0
loc_1000efc94:
  1000efc94  add     x0, x19, #0x908
  1000efc98  adrp    x8, #0x1003b4000
  1000efc9c  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000efca0  add     x1, x8, #8                               ; &d_1003b4e28
  1000efca4  bl      sub_1000ebc5c                            ; sub_1000ebc5c((x19 + 2312), &d_1003b4e28)
  1000efca8  add     x0, x19, #0xa68
  1000efcac  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2664))
  1000efcb0  b       loc_1000efccc
  1000efcb4  mov     x20, x0
  1000efcb8  add     x0, x19, #0xa68
  1000efcbc  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2664))
  1000efcc0  b       loc_1000efccc
  1000efcc4  bl      sub_10000b760
  1000efcc8  mov     x20, x0
loc_1000efccc:
  1000efccc  add     x0, x19, #0x738
  1000efcd0  adrp    x8, #0x1003b4000
  1000efcd4  add     x8, x8, #0xe20                           ; &d_1003b4e20
  1000efcd8  add     x1, x8, #8                               ; &d_1003b4e28
  1000efcdc  bl      sub_1000ebc5c                            ; sub_1000ebc5c((x19 + 1848), &d_1003b4e28)
  1000efce0  add     x0, x19, #0x898
  1000efce4  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2200))
  1000efce8  b       loc_1000efd04
  1000efcec  mov     x20, x0
  1000efcf0  add     x0, x19, #0x898
  1000efcf4  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2200))
  1000efcf8  b       loc_1000efd04
  1000efcfc  bl      sub_10000b760
  1000efd00  mov     x20, x0
loc_1000efd04:
  1000efd04  add     x0, x19, #0x5d8
  1000efd08  bl      __ZN3csl8SplitterD1Ev                    ; ZN3csl8SplitterD1Ev((x19 + 1496))
  1000efd0c  b       loc_1000efd14
  1000efd10  mov     x20, x0
loc_1000efd14:
  1000efd14  add     x0, x19, #0x448
  1000efd18  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((x19 + 1096))
  1000efd1c  b       loc_1000efd24
  1000efd20  mov     x20, x0
loc_1000efd24:
  1000efd24  add     x0, x19, #0x2b8
  1000efd28  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((x19 + 696))
  1000efd2c  b       loc_1000efd34
  1000efd30  mov     x20, x0
loc_1000efd34:
  1000efd34  add     x0, x19, #0x128
  1000efd38  bl      csl::Mixer::~Mixer                       ; csl::Mixer::~Mixer((x19 + 296))
  1000efd3c  b       loc_1000efd44
  1000efd40  mov     x20, x0
loc_1000efd44:
  1000efd44  mov     x0, x19
  1000efd48  bl      sub_1000f0d70
  1000efd4c  mov     x0, x20
  1000efd50  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000efd54  mov     x20, x0
loc_1000efd58:
  1000efd58  mov     x0, x20
  1000efd5c  bl      sub_10000b760
  1000efd60  mov     x20, x0
  1000efd64  add     x0, x19, #0x898
  1000efd68  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2200))
  1000efd6c  b       loc_1000efd58
  1000efd70  bl      sub_10000b760
  1000efd74  mov     x20, x0
  1000efd78  add     x0, x19, #0xa68
  1000efd7c  bl      sub_1000e9388                            ; sub_1000e9388((x19 + 2664))
  1000efd80  b       loc_1000efd58
  1000efd84  bl      sub_10000b760
