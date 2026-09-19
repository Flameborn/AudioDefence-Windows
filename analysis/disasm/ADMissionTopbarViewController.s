// unit ADMissionTopbarViewController — 28 functions
//   0x100019c70      96  -[ADMissionTopbarViewController initWithSkip:]
//   0x100019cd0     476  -[ADMissionTopbarViewController viewDidLoad]
//   0x100019eac    1296  -[ADMissionTopbarViewController reloadMissions]
//   0x10001a3bc      24  -[ADMissionTopbarViewController reloadMissions]_block_invoke
//   0x10001a3d4       8  sub_10001a3d4
//   0x10001a3dc       8  sub_10001a3dc
//   0x10001a3e4     408  -[ADMissionTopbarViewController removeAllMissions]
//   0x10001a57c     548  -[ADMissionTopbarViewController missionButtonPressed:]
//   0x10001a7a0     100  -[ADMissionTopbarViewController missionButtonPressed:]_block_invoke
//   0x10001a804       8  sub_10001a804
//   0x10001a80c       8  sub_10001a80c
//   0x10001a814     120  -[ADMissionTopbarViewController missionButtonPressed:]_block_invoke_2
//   0x10001a88c       8  sub_10001a88c
//   0x10001a894       8  sub_10001a894
//   0x10001a89c     300  -[ADMissionTopbarViewController backButtonTouched:]
//   0x10001a9c8     100  -[ADMissionTopbarViewController backButtonTouched:]_block_invoke
//   0x10001aa2c       8  sub_10001aa2c
//   0x10001aa34       8  sub_10001aa34
//   0x10001aa3c     320  -[ADMissionTopbarViewController backButtonTouched:]_block_invoke_2
//   0x10001ab7c       8  sub_10001ab7c
//   0x10001ab84       8  sub_10001ab84
//   0x10001ab8c      60  -[ADMissionTopbarViewController didReceiveMemoryWarning]
//   0x10001abc8     160  -[ADMissionTopbarViewController dealloc]
//   0x10001ac68      16  -[ADMissionTopbarViewController containerView]
//   0x10001ac78      56  -[ADMissionTopbarViewController setContainerView:]
//   0x10001acb0      16  -[ADMissionTopbarViewController missionButton]
//   0x10001acc0      56  -[ADMissionTopbarViewController setMissionButton:]
//   0x10001acf8      84  -[ADMissionTopbarViewController .cxx_destruct]

; ======================================================================
; -[ADMissionTopbarViewController initWithSkip:]
; address 0x100019c70  size 96  kind objc
; ======================================================================
  100019c70  stp     x20, x19, [sp, #-0x20]!
  100019c74  stp     x29, x30, [sp, #0x10]
  100019c78  add     x29, sp, #0x10
  100019c7c  sub     sp, sp, #0x10
  100019c80  mov     x19, x2
  100019c84  str     x0, [sp]
  100019c88  adrp    x8, #0x10041e000
  100019c8c  ldr     x8, [x8, #0xc10]
  100019c90  str     x8, [sp, #8]
  100019c94  adrp    x8, #0x100416000
  100019c98  nop
  100019c9c  ldr     x1, [x8, #0xb40]
  100019ca0  mov     x0, sp
  100019ca4  mov     x2, #0
  100019ca8  mov     x3, #0
  100019cac  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  100019cb0  cbz     x0, loc_100019cc0                        ; if (self == 0)
  100019cb4  adrp    x8, #0x10041f000
  100019cb8  ldrsw   x8, [x8, #0x610]                         ; ivar offset ADMissionTopbarViewController.canSkip (+0x150)
  100019cbc  strb    w19, [x0, x8]                            ; self->canSkip = arg1
loc_100019cc0:
  100019cc0  sub     sp, x29, #0x10
  100019cc4  ldp     x29, x30, [sp, #0x10]
  100019cc8  ldp     x20, x19, [sp], #0x20
  100019ccc  ret

; ======================================================================
; -[ADMissionTopbarViewController viewDidLoad]
; address 0x100019cd0  size 476  kind objc
; ======================================================================
  100019cd0  stp     x24, x23, [sp, #-0x40]!
  100019cd4  stp     x22, x21, [sp, #0x10]
  100019cd8  stp     x20, x19, [sp, #0x20]
  100019cdc  stp     x29, x30, [sp, #0x30]
  100019ce0  add     x29, sp, #0x30
  100019ce4  sub     sp, sp, #0x10
  100019ce8  mov     x19, x0
  100019cec  str     x19, [sp]
  100019cf0  adrp    x8, #0x10041e000
  100019cf4  ldr     x8, [x8, #0xc10]
  100019cf8  str     x8, [sp, #8]
  100019cfc  adrp    x8, #0x100416000
  100019d00  nop
  100019d04  ldr     x1, [x8, #0xb48]
  100019d08  mov     x0, sp
  100019d0c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100019d10  adrp    x8, #0x100416000
  100019d14  nop
  100019d18  ldr     x21, [x8, #0xf18]
  100019d1c  mov     x0, x19
  100019d20  mov     x1, x21
  100019d24  bl      _objc_msgSend                            ; [self view]
  100019d28  mov     x29, x29
  100019d2c  bl      _objc_retainAutoreleasedReturnValue
  100019d30  mov     x20, x0
  100019d34  adrp    x8, #0x100417000
  100019d38  nop
  100019d3c  ldr     x1, [x8, #0x818]
  100019d40  bl      _objc_msgSend                            ; [[self view] superview]
  100019d44  mov     x29, x29
  100019d48  bl      _objc_retainAutoreleasedReturnValue
  100019d4c  mov     x22, x0
  100019d50  mov     x0, x19
  100019d54  mov     x1, x21
  100019d58  bl      _objc_msgSend                            ; [self view]
  100019d5c  mov     x29, x29
  100019d60  bl      _objc_retainAutoreleasedReturnValue
  100019d64  mov     x23, x0
  100019d68  adrp    x8, #0x100417000
  100019d6c  nop
  100019d70  ldr     x1, [x8, #0x820]
  100019d74  mov     x0, x22
  100019d78  mov     x2, x23
  100019d7c  bl      _objc_msgSend                            ; [[[self view] superview] sendSubviewToBack:[self view]]
  100019d80  mov     x0, x23
  100019d84  bl      _objc_release
  100019d88  mov     x0, x22
  100019d8c  bl      _objc_release
  100019d90  mov     x0, x20
  100019d94  bl      _objc_release
  100019d98  mov     x0, x19
  100019d9c  mov     x1, x21
  100019da0  bl      _objc_msgSend                            ; [self view]
  100019da4  mov     x29, x29
  100019da8  bl      _objc_retainAutoreleasedReturnValue
  100019dac  mov     x20, x0
  100019db0  adrp    x8, #0x100417000
  100019db4  nop
  100019db8  ldr     x1, [x8, #0x828]
  100019dbc  movi    v0.16b, #0
  100019dc0  bl      _objc_msgSend                            ; [[self view] setAlpha:0]
  100019dc4  mov     x0, x20
  100019dc8  bl      _objc_release
  100019dcc  adrp    x8, #0x10041d000
  100019dd0  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100019dd4  adrp    x8, #0x100416000
  100019dd8  nop
  100019ddc  ldr     x1, [x8, #0xac8]
  100019de0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100019de4  adrp    x8, #0x100416000
  100019de8  nop
  100019dec  ldr     x1, [x8, #0xab8]
  100019df0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100019df4  adrp    x8, #0x10041f000
  100019df8  ldrsw   x9, [x8, #0x614]                         ; ivar offset ADMissionTopbarViewController.missionViewControllers (+0x148)
  100019dfc  ldr     x8, [x19, x9]                            ; x8 = self->missionViewControllers
  100019e00  str     x0, [x19, x9]                            ; self->missionViewControllers = [[NSMutableArray alloc] init]
  100019e04  mov     x0, x8
  100019e08  bl      _objc_release
  100019e0c  adrp    x8, #0x100417000
  100019e10  nop
  100019e14  ldr     x1, [x8, #0x830]
  100019e18  mov     x0, x19
  100019e1c  bl      _objc_msgSend                            ; [self missionButton]
  100019e20  mov     x29, x29
  100019e24  bl      _objc_retainAutoreleasedReturnValue
  100019e28  mov     x20, x0
  100019e2c  adrp    x8, #0x100417000
  100019e30  nop
  100019e34  ldr     x3, [x8, #0x838]
  100019e38  adrp    x8, #0x100417000
  100019e3c  nop
  100019e40  ldr     x1, [x8, #0x7d0]
  100019e44  mov     w4, #0x40
  100019e48  mov     x2, x19
  100019e4c  bl      _objc_msgSend                            ; [[self missionButton] addTarget:self action:@selector(missionButtonPressed:) forControlEvents:64]
  100019e50  mov     x0, x20
  100019e54  bl      _objc_release
  100019e58  sub     sp, x29, #0x30
  100019e5c  ldp     x29, x30, [sp, #0x30]
  100019e60  ldp     x20, x19, [sp, #0x20]
  100019e64  ldp     x22, x21, [sp, #0x10]
  100019e68  ldp     x24, x23, [sp], #0x40
  100019e6c  ret
  100019e70  b       loc_100019e98
  100019e74  mov     x19, x0
  100019e78  b       loc_100019e88
  100019e7c  mov     x19, x0
  100019e80  mov     x0, x23
  100019e84  bl      _objc_release
loc_100019e88:
  100019e88  mov     x0, x22
  100019e8c  bl      _objc_release
  100019e90  b       loc_100019e9c
  100019e94  b       loc_100019e98
loc_100019e98:
  100019e98  mov     x19, x0
loc_100019e9c:
  100019e9c  mov     x0, x20
  100019ea0  bl      _objc_release
  100019ea4  mov     x0, x19
  100019ea8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionTopbarViewController reloadMissions]
; address 0x100019eac  size 1296  kind objc
; ======================================================================
  100019eac  stp     d11, d10, [sp, #-0x80]!
  100019eb0  stp     d9, d8, [sp, #0x10]
  100019eb4  stp     x28, x27, [sp, #0x20]
  100019eb8  stp     x26, x25, [sp, #0x30]
  100019ebc  stp     x24, x23, [sp, #0x40]
  100019ec0  stp     x22, x21, [sp, #0x50]
  100019ec4  stp     x20, x19, [sp, #0x60]
  100019ec8  stp     x29, x30, [sp, #0x70]
  100019ecc  add     x29, sp, #0x70
  100019ed0  sub     sp, sp, #0x170
  100019ed4  mov     x20, x0
  100019ed8  adrp    x8, #0x1003b0000
  100019edc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100019ee0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100019ee4  stur    x8, [x29, #-0x78]
  100019ee8  adrp    x8, #0x100417000
  100019eec  nop
  100019ef0  ldr     x1, [x8, #0x840]
  100019ef4  bl      _objc_msgSend                            ; [self removeAllMissions]
  100019ef8  stp     xzr, xzr, [sp, #0xd8]
  100019efc  stp     xzr, xzr, [sp, #0xc8]
  100019f00  stp     xzr, xzr, [sp, #0xb8]
  100019f04  stp     xzr, xzr, [sp, #0xa8]
  100019f08  adrp    x8, #0x10041d000
  100019f0c  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100019f10  adrp    x8, #0x100417000
  100019f14  nop
  100019f18  ldr     x1, [x8, #0x848]
  100019f1c  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  100019f20  mov     x29, x29
  100019f24  bl      _objc_retainAutoreleasedReturnValue
  100019f28  mov     x19, x0
  100019f2c  adrp    x8, #0x100416000
  100019f30  nop
  100019f34  ldr     x1, [x8, #0xd88]
  100019f38  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] activeMissions]
  100019f3c  mov     x29, x29
  100019f40  bl      _objc_retainAutoreleasedReturnValue
  100019f44  mov     x21, x0
  100019f48  str     x21, [sp, #0x18]
  100019f4c  mov     x0, x19
  100019f50  bl      _objc_release
  100019f54  adrp    x8, #0x100416000
  100019f58  nop
  100019f5c  ldr     x1, [x8, #0xe00]
  100019f60  str     x1, [sp, #0x10]
  100019f64  add     x2, sp, #0xa8
  100019f68  add     x3, sp, #0xe8
  100019f6c  mov     w4, #0x10
  100019f70  mov     x0, x21
  100019f74  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0xe8] count:16]
  100019f78  mov     x22, x0
  100019f7c  cbz     x22, loc_10001a2f0                       ; if ([[[ADMissionManager sharedMissionManager] activeMissions] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0xe8] count:16] == 0)
  100019f80  ldr     x8, [sp, #0xb8]
  100019f84  adrp    x9, #0x100416000
  100019f88  nop
  100019f8c  adrp    x10, #0x100417000
  100019f90  nop
  100019f94  adrp    x11, #0x100417000
  100019f98  add     x11, x11, #0x858                         ; &@selector(containerView)
  100019f9c  adrp    x12, #0x10041f000
  100019fa0  adrp    x13, #0x100416000
  100019fa4  add     x13, x13, #0xf18                         ; &@selector(view)
  100019fa8  adrp    x14, #0x100416000
  100019fac  add     x14, x14, #0xf20                         ; &@selector(addSubview:)
  100019fb0  ldrsw   x12, [x12, #0x610]                       ; ivar offset ADMissionTopbarViewController.canSkip (+0x150)
  100019fb4  str     x12, [sp, #0x58]
  100019fb8  ldr     x9, [x9, #0xac8]
  100019fbc  str     x9, [sp, #0x60]
  100019fc0  adrp    x9, #0x100416000
  100019fc4  nop
  100019fc8  adrp    x12, #0x100417000
  100019fcc  add     x12, x12, #0x7b8                         ; &@selector(setFrame:)
  100019fd0  ldr     x10, [x10, #0x850]
  100019fd4  str     x10, [sp, #0x50]
  100019fd8  ldr     x26, [x11]
  100019fdc  ldr     x27, [x13]
  100019fe0  ldr     x10, [x14]
  100019fe4  str     x10, [sp, #0x48]
  100019fe8  ldr     x21, [x9, #0xf38]
  100019fec  ldr     x9, [x12]
  100019ff0  str     x9, [sp, #0x40]
  100019ff4  ldr     x8, [x8]
  100019ff8  str     x8, [sp, #0x68]
  100019ffc  adrp    x8, #0x10041f000
  10001a000  adrp    x9, #0x100416000
  10001a004  nop
  10001a008  adrp    x10, #0x100417000
  10001a00c  add     x10, x10, #0x860                         ; &@selector(mission)
  10001a010  ldrsw   x8, [x8, #0x614]                         ; ivar offset ADMissionTopbarViewController.missionViewControllers (+0x148)
  10001a014  str     x8, [sp, #0x38]
  10001a018  ldr     x8, [x9, #0xd90]
  10001a01c  str     x8, [sp, #0x30]
  10001a020  adrp    x8, #0x100416000
  10001a024  nop
  10001a028  fmov    d11, #0.50000000
  10001a02c  ldr     x9, [x10]
  10001a030  str     x9, [sp, #0x28]
  10001a034  ldr     x8, [x8, #0xe08]
  10001a038  str     x8, [sp, #0x20]
  10001a03c  movi    v0.16b, #0
  10001a040  str     q0, [sp, #0x70]
loc_10001a044:
  10001a044  mov     x28, #0
loc_10001a048:
  10001a048  ldr     x8, [sp, #0xb8]
  10001a04c  ldr     x8, [x8]
  10001a050  ldr     x9, [sp, #0x68]
  10001a054  cmp     x8, x9
  10001a058  b.eq    loc_10001a064                            ; if (x8 == x9)
  10001a05c  ldr     x0, [sp, #0x18]
  10001a060  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADMissionManager sharedMissionManager] activeMissions])
loc_10001a064:
  10001a064  ldr     x8, [sp, #0xb0]
  10001a068  ldr     x19, [x8, x28, lsl #3]
  10001a06c  adrp    x8, #0x10041e000
  10001a070  ldr     x0, [x8, #0x88]                          ; class ADMissionForTopbarViewController
  10001a074  ldr     x1, [sp, #0x60]
  10001a078  bl      _objc_msgSend                            ; [ADMissionForTopbarViewController alloc]
  10001a07c  ldp     x1, x8, [sp, #0x50]
  10001a080  ldrb    w3, [x20, x8]                            ; w3 = self->canSkip
  10001a084  mov     x2, x19
  10001a088  bl      _objc_msgSend                            ; [[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip]
  10001a08c  mov     x24, x0
  10001a090  mov     x0, x20
  10001a094  mov     x1, x26
  10001a098  bl      _objc_msgSend                            ; [self containerView]
  10001a09c  mov     x29, x29
  10001a0a0  bl      _objc_retainAutoreleasedReturnValue
  10001a0a4  mov     x19, x0
  10001a0a8  mov     x0, x24
  10001a0ac  mov     x1, x27
  10001a0b0  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view]
  10001a0b4  mov     x29, x29
  10001a0b8  bl      _objc_retainAutoreleasedReturnValue
  10001a0bc  mov     x23, x0
  10001a0c0  mov     x0, x19
  10001a0c4  ldr     x1, [sp, #0x48]
  10001a0c8  mov     x2, x23
  10001a0cc  bl      _objc_msgSend                            ; [[self containerView] addSubview:[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view]]
  10001a0d0  mov     x0, x23
  10001a0d4  bl      _objc_release
  10001a0d8  mov     x0, x19
  10001a0dc  bl      _objc_release
  10001a0e0  mov     x0, x20
  10001a0e4  mov     x1, x26
  10001a0e8  bl      _objc_msgSend                            ; [self containerView]
  10001a0ec  mov     x29, x29
  10001a0f0  bl      _objc_retainAutoreleasedReturnValue
  10001a0f4  mov     x19, x0
  10001a0f8  mov     x1, x21
  10001a0fc  bl      _objc_msgSend                            ; [[self containerView] frame]
  10001a100  mov     v8.16b, v2.16b
  10001a104  mov     x0, x24
  10001a108  mov     x1, x27
  10001a10c  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view]
  10001a110  mov     x29, x29
  10001a114  bl      _objc_retainAutoreleasedReturnValue
  10001a118  mov     x23, x0
  10001a11c  mov     x1, x21
  10001a120  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame]
  10001a124  mov     v9.16b, v2.16b
  10001a128  mov     x0, x23
  10001a12c  bl      _objc_release
  10001a130  mov     x0, x19
  10001a134  bl      _objc_release
  10001a138  mov     x0, x24
  10001a13c  mov     x1, x27
  10001a140  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view]
  10001a144  bl      _objc_retain
  10001a148  mov     x19, x0
  10001a14c  mov     x0, x24
  10001a150  mov     x1, x27
  10001a154  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view]
  10001a158  mov     x29, x29
  10001a15c  bl      _objc_retainAutoreleasedReturnValue
  10001a160  mov     x23, x0
  10001a164  mov     x1, x21
  10001a168  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame]
  10001a16c  mov     v10.16b, v2.16b
  10001a170  mov     x0, x24
  10001a174  mov     x1, x27
  10001a178  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view]
  10001a17c  mov     x29, x29
  10001a180  bl      _objc_retainAutoreleasedReturnValue
  10001a184  mov     x25, x0
  10001a188  mov     x1, x21
  10001a18c  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame]
  10001a190  fsub    d0, d8, d9                               ; t1 = ([[self containerView] frame].2 - [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame].2)
  10001a194  fmul    d0, d0, d11
  10001a198  fcvt    s0, d0
  10001a19c  fcvt    d0, s0
  10001a1a0  movi    v1.16b, #0
  10001a1a4  ldr     q2, [sp, #0x70]
  10001a1a8  fadd    s1, s2, s1
  10001a1ac  fcvt    d1, s1
  10001a1b0  mov     x0, x19
  10001a1b4  ldr     x1, [sp, #0x40]
  10001a1b8  mov     v2.16b, v10.16b
  10001a1bc  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] setFrame:{(t1 * 0.5), (s2 + 0), [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame].2, [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame].3}]
  10001a1c0  mov     x0, x25
  10001a1c4  bl      _objc_release
  10001a1c8  mov     x0, x23
  10001a1cc  bl      _objc_release
  10001a1d0  mov     x0, x19
  10001a1d4  bl      _objc_release
  10001a1d8  mov     x0, x24
  10001a1dc  mov     x1, x27
  10001a1e0  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view]
  10001a1e4  mov     x29, x29
  10001a1e8  bl      _objc_retainAutoreleasedReturnValue
  10001a1ec  mov     x19, x0
  10001a1f0  mov     x1, x21
  10001a1f4  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame]
  10001a1f8  mov     v8.16b, v3.16b
  10001a1fc  mov     x0, x19
  10001a200  bl      _objc_release
  10001a204  ldp     x1, x8, [sp, #0x30]
  10001a208  ldr     x0, [x20, x8]                            ; x0 = self->missionViewControllers
  10001a20c  mov     x2, x24
  10001a210  bl      _objc_msgSend                            ; [self->missionViewControllers addObject:[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip]]
  10001a214  mov     x0, x24
  10001a218  ldr     x1, [sp, #0x28]
  10001a21c  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] mission]
  10001a220  mov     x29, x29
  10001a224  bl      _objc_retainAutoreleasedReturnValue
  10001a228  mov     x19, x0
  10001a22c  ldr     x1, [sp, #0x20]
  10001a230  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] mission] isMissionCompleted]
  10001a234  mov     x23, x0
  10001a238  ldr     q0, [sp, #0x70]
  10001a23c  fcvt    d0, s0
  10001a240  fadd    d8, d0, d8                               ; t2 = (d0 + [[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] view] frame].3)
  10001a244  mov     x0, x19
  10001a248  bl      _objc_release
  10001a24c  cbz     w23, loc_10001a2b8                       ; if ([[[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] mission] isMissionCompleted] == 0)
  10001a250  mov     w1, #0x59680000
  10001a254  movk    w1, #0x2f00
  10001a258  mov     x0, #0
  10001a25c  bl      _dispatch_time                           ; dispatch_time(0, 0x59682f00)
  10001a260  mov     x19, x0
  10001a264  adrp    x8, #0x1003b0000
  10001a268  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10001a26c  str     x8, [sp, #0x80]
  10001a270  mov     w8, #-0x3e000000
  10001a274  stp     w8, wzr, [sp, #0x88]
  10001a278  adr     x8, #0x10001a3bc                         ; &-[ADMissionTopbarViewController reloadMissions]_block_invoke
  10001a27c  nop
  10001a280  str     x8, [sp, #0x90]
  10001a284  adrp    x8, #0x1003b0000
  10001a288  add     x8, x8, #0xff0                           ; &d_1003b0ff0
  10001a28c  str     x8, [sp, #0x98]
  10001a290  mov     x0, x24
  10001a294  bl      _objc_retain
  10001a298  str     x0, [sp, #0xa0]
  10001a29c  add     x2, sp, #0x80
  10001a2a0  mov     x0, x19
  10001a2a4  adrp    x1, #0x1003b0000
  10001a2a8  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10001a2ac  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x59682f00), __dispatch_main_q, ^{-[ADMissionTopbarViewController reloadMissions]_block_invoke captures +0x20=[[ADMissionForTopbarViewController alloc…})
  10001a2b0  ldr     x0, [sp, #0xa0]
  10001a2b4  bl      _objc_release
loc_10001a2b8:
  10001a2b8  fcvt    s0, d8
  10001a2bc  str     q0, [sp, #0x70]
  10001a2c0  mov     x0, x24
  10001a2c4  bl      _objc_release
  10001a2c8  add     x28, x28, #1
  10001a2cc  cmp     x28, x22
  10001a2d0  b.lo    loc_10001a048                            ; if ((x28 + 1) <u [[[ADMissionManager sharedMissionManager] activeMissions] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0xe8] count:…)
  10001a2d4  add     x2, sp, #0xa8
  10001a2d8  add     x3, sp, #0xe8
  10001a2dc  mov     w4, #0x10
  10001a2e0  ldp     x1, x0, [sp, #0x10]
  10001a2e4  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0xe8] count:16]
  10001a2e8  mov     x22, x0
  10001a2ec  cbnz    x22, loc_10001a044                       ; if ([[[ADMissionManager sharedMissionManager] activeMissions] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0xe8] count:16] != 0)
loc_10001a2f0:
  10001a2f0  ldr     x0, [sp, #0x18]
  10001a2f4  bl      _objc_release
  10001a2f8  ldur    x8, [x29, #-0x78]
  10001a2fc  adrp    x9, #0x1003b0000
  10001a300  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10001a304  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10001a308  sub     x8, x9, x8
  10001a30c  cbnz    x8, loc_10001a338                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001a310  sub     sp, x29, #0x70
  10001a314  ldp     x29, x30, [sp, #0x70]
  10001a318  ldp     x20, x19, [sp, #0x60]
  10001a31c  ldp     x22, x21, [sp, #0x50]
  10001a320  ldp     x24, x23, [sp, #0x40]
  10001a324  ldp     x26, x25, [sp, #0x30]
  10001a328  ldp     x28, x27, [sp, #0x20]
  10001a32c  ldp     d9, d8, [sp, #0x10]
  10001a330  ldp     d11, d10, [sp], #0x80
  10001a334  ret
loc_10001a338:
  10001a338  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10001a33c  mov     x20, x0
  10001a340  b       loc_10001a390
loc_10001a344:
  10001a344  mov     x20, x0
  10001a348  b       loc_10001a398
  10001a34c  b       loc_10001a384
  10001a350  b       loc_10001a36c
  10001a354  mov     x20, x0
  10001a358  mov     x0, x25
  10001a35c  bl      _objc_release
  10001a360  b       loc_10001a370
  10001a364  b       loc_10001a384
  10001a368  b       loc_10001a36c
loc_10001a36c:
  10001a36c  mov     x20, x0
loc_10001a370:
  10001a370  mov     x0, x23
  10001a374  bl      _objc_release
  10001a378  b       loc_10001a388
  10001a37c  b       loc_10001a384
  10001a380  b       loc_10001a384
loc_10001a384:
  10001a384  mov     x20, x0
loc_10001a388:
  10001a388  mov     x0, x19
  10001a38c  bl      _objc_release
loc_10001a390:
  10001a390  mov     x0, x24
  10001a394  bl      _objc_release
loc_10001a398:
  10001a398  ldr     x0, [sp, #0x18]
loc_10001a39c:
  10001a39c  bl      _objc_release
  10001a3a0  mov     x0, x20
  10001a3a4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001a3a8  b       loc_10001a344
  10001a3ac  mov     x20, x0
  10001a3b0  mov     x0, x19
  10001a3b4  b       loc_10001a39c
  10001a3b8  b       loc_10001a344

; ======================================================================
; -[ADMissionTopbarViewController reloadMissions]_block_invoke
; address 0x10001a3bc  size 24  kind block
; ======================================================================
  10001a3bc  ldr     x0, [x0, #0x20]                          ; x0 = captured [[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip]
  10001a3c0  adrp    x8, #0x100417000
  10001a3c4  nop
  10001a3c8  ldr     x1, [x8, #0x868]
  10001a3cc  mov     w2, #1
  10001a3d0  b       _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:x2 skippable:self->canSkip] markAsCompletedAndSwapWithReward:1]

; ======================================================================
; sub_10001a3d4
; address 0x10001a3d4  size 8  kind sub
; ======================================================================
  10001a3d4  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001a3d8  b       _objc_retain

; ======================================================================
; sub_10001a3dc
; address 0x10001a3dc  size 8  kind sub
; ======================================================================
  10001a3dc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001a3e0  b       _objc_release

; ======================================================================
; -[ADMissionTopbarViewController removeAllMissions]
; address 0x10001a3e4  size 408  kind objc
; ======================================================================
  10001a3e4  stp     x28, x27, [sp, #-0x60]!
  10001a3e8  stp     x26, x25, [sp, #0x10]
  10001a3ec  stp     x24, x23, [sp, #0x20]
  10001a3f0  stp     x22, x21, [sp, #0x30]
  10001a3f4  stp     x20, x19, [sp, #0x40]
  10001a3f8  stp     x29, x30, [sp, #0x50]
  10001a3fc  add     x29, sp, #0x50
  10001a400  sub     sp, sp, #0xd0
  10001a404  mov     x20, x0
  10001a408  adrp    x8, #0x1003b0000
  10001a40c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10001a410  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10001a414  stur    x8, [x29, #-0x58]
  10001a418  stp     xzr, xzr, [sp, #0x38]
  10001a41c  stp     xzr, xzr, [sp, #0x28]
  10001a420  stp     xzr, xzr, [sp, #0x18]
  10001a424  stp     xzr, xzr, [sp, #8]
  10001a428  adrp    x8, #0x10041f000
  10001a42c  ldrsw   x27, [x8, #0x614]                        ; ivar offset ADMissionTopbarViewController.missionViewControllers (+0x148)
  10001a430  ldr     x0, [x20, x27]                           ; x0 = self->missionViewControllers
  10001a434  bl      _objc_retain
  10001a438  mov     x19, x0
  10001a43c  adrp    x8, #0x100416000
  10001a440  nop
  10001a444  ldr     x21, [x8, #0xe00]
  10001a448  add     x2, sp, #8
  10001a44c  add     x3, sp, #0x48
  10001a450  mov     w4, #0x10
  10001a454  mov     x1, x21
  10001a458  bl      _objc_msgSend                            ; [self->missionViewControllers countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10001a45c  mov     x22, x0
  10001a460  cbz     x22, loc_10001a4f8                       ; if ([self->missionViewControllers countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10001a464  ldr     x8, [sp, #0x18]
  10001a468  ldr     x28, [x8]
  10001a46c  adrp    x8, #0x100416000
  10001a470  nop
  10001a474  ldr     x23, [x8, #0xf18]
  10001a478  adrp    x8, #0x100417000
  10001a47c  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  10001a480  ldr     x24, [x8]
loc_10001a484:
  10001a484  mov     x26, #0
loc_10001a488:
  10001a488  ldr     x8, [sp, #0x18]
  10001a48c  ldr     x8, [x8]
  10001a490  cmp     x8, x28
  10001a494  b.eq    loc_10001a4a0                            ; if (x8 == x28)
  10001a498  mov     x0, x19
  10001a49c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->missionViewControllers)
loc_10001a4a0:
  10001a4a0  ldr     x8, [sp, #0x10]
  10001a4a4  ldr     x0, [x8, x26, lsl #3]
  10001a4a8  mov     x1, x23
  10001a4ac  bl      _objc_msgSend                            ; [x0 view]
  10001a4b0  mov     x29, x29
  10001a4b4  bl      _objc_retainAutoreleasedReturnValue
  10001a4b8  mov     x25, x0
  10001a4bc  mov     x1, x24
  10001a4c0  bl      _objc_msgSend                            ; [[x0 view] removeFromSuperview]
  10001a4c4  mov     x0, x25
  10001a4c8  bl      _objc_release
  10001a4cc  add     x26, x26, #1
  10001a4d0  cmp     x26, x22
  10001a4d4  b.lo    loc_10001a488                            ; if ((x26 + 1) <u [self->missionViewControllers countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  10001a4d8  add     x2, sp, #8
  10001a4dc  add     x3, sp, #0x48
  10001a4e0  mov     w4, #0x10
  10001a4e4  mov     x0, x19
  10001a4e8  mov     x1, x21
  10001a4ec  bl      _objc_msgSend                            ; [self->missionViewControllers countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10001a4f0  mov     x22, x0
  10001a4f4  cbnz    x22, loc_10001a484                       ; if ([self->missionViewControllers countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_10001a4f8:
  10001a4f8  mov     x0, x19
  10001a4fc  bl      _objc_release
  10001a500  ldr     x0, [x20, x27]                           ; x0 = self->missionViewControllers
  10001a504  adrp    x8, #0x100417000
  10001a508  nop
  10001a50c  ldr     x1, [x8, #0x1b8]
  10001a510  bl      _objc_msgSend                            ; [self->missionViewControllers removeAllObjects]
  10001a514  ldur    x8, [x29, #-0x58]
  10001a518  adrp    x9, #0x1003b0000
  10001a51c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10001a520  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10001a524  sub     x8, x9, x8
  10001a528  cbnz    x8, loc_10001a54c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001a52c  sub     sp, x29, #0x50
  10001a530  ldp     x29, x30, [sp, #0x50]
  10001a534  ldp     x20, x19, [sp, #0x40]
  10001a538  ldp     x22, x21, [sp, #0x30]
  10001a53c  ldp     x24, x23, [sp, #0x20]
  10001a540  ldp     x26, x25, [sp, #0x10]
  10001a544  ldp     x28, x27, [sp], #0x60
  10001a548  ret
loc_10001a54c:
  10001a54c  bl      ___stack_chk_fail                        ; stack_chk_fail([self->missionViewControllers removeAllObjects])
loc_10001a550:
  10001a550  mov     x20, x0
  10001a554  b       loc_10001a564
  10001a558  mov     x20, x0
  10001a55c  mov     x0, x25
  10001a560  bl      _objc_release
loc_10001a564:
  10001a564  mov     x0, x19
  10001a568  bl      _objc_release
  10001a56c  mov     x0, x20
  10001a570  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001a574  b       loc_10001a550
  10001a578  b       loc_10001a550

; ======================================================================
; -[ADMissionTopbarViewController missionButtonPressed:]
; address 0x10001a57c  size 548  kind objc
; ======================================================================
  10001a57c  stp     x22, x21, [sp, #-0x30]!
  10001a580  stp     x20, x19, [sp, #0x10]
  10001a584  stp     x29, x30, [sp, #0x20]
  10001a588  add     x29, sp, #0x20
  10001a58c  sub     sp, sp, #0x50
  10001a590  mov     x19, x0
  10001a594  adrp    x8, #0x100417000
  10001a598  nop
  10001a59c  ldr     x1, [x8, #0x870]
  10001a5a0  bl      _objc_msgSend                            ; [self reloadMissions]
  10001a5a4  adrp    x8, #0x100417000
  10001a5a8  nop
  10001a5ac  ldr     x1, [x8, #0x830]
  10001a5b0  mov     x0, x19
  10001a5b4  bl      _objc_msgSend                            ; [self missionButton]
  10001a5b8  mov     x29, x29
  10001a5bc  bl      _objc_retainAutoreleasedReturnValue
  10001a5c0  mov     x20, x0
  10001a5c4  adrp    x8, #0x100417000
  10001a5c8  nop
  10001a5cc  ldr     x1, [x8, #0x878]
  10001a5d0  mov     w2, #0
  10001a5d4  bl      _objc_msgSend                            ; [[self missionButton] setEnabled:0]
  10001a5d8  mov     x0, x20
  10001a5dc  bl      _objc_release
  10001a5e0  adrp    x8, #0x100416000
  10001a5e4  nop
  10001a5e8  ldr     x21, [x8, #0xf18]
  10001a5ec  mov     x0, x19
  10001a5f0  mov     x1, x21
  10001a5f4  bl      _objc_msgSend                            ; [self view]
  10001a5f8  mov     x29, x29
  10001a5fc  bl      _objc_retainAutoreleasedReturnValue
  10001a600  mov     x20, x0
  10001a604  adrp    x8, #0x100417000
  10001a608  nop
  10001a60c  ldr     x1, [x8, #0x828]
  10001a610  movi    v0.16b, #0
  10001a614  bl      _objc_msgSend                            ; [[self view] setAlpha:0]
  10001a618  mov     x0, x20
  10001a61c  bl      _objc_release
  10001a620  mov     x0, x19
  10001a624  mov     x1, x21
  10001a628  bl      _objc_msgSend                            ; [self view]
  10001a62c  mov     x29, x29
  10001a630  bl      _objc_retainAutoreleasedReturnValue
  10001a634  mov     x20, x0
  10001a638  adrp    x8, #0x100417000
  10001a63c  nop
  10001a640  ldr     x1, [x8, #0x818]
  10001a644  bl      _objc_msgSend                            ; [[self view] superview]
  10001a648  mov     x29, x29
  10001a64c  bl      _objc_retainAutoreleasedReturnValue
  10001a650  mov     x22, x0
  10001a654  mov     x0, x19
  10001a658  mov     x1, x21
  10001a65c  bl      _objc_msgSend                            ; [self view]
  10001a660  mov     x29, x29
  10001a664  bl      _objc_retainAutoreleasedReturnValue
  10001a668  mov     x21, x0
  10001a66c  adrp    x8, #0x100417000
  10001a670  nop
  10001a674  ldr     x1, [x8, #0x190]
  10001a678  mov     x0, x22
  10001a67c  mov     x2, x21
  10001a680  bl      _objc_msgSend                            ; [[[self view] superview] bringSubviewToFront:[self view]]
  10001a684  mov     x0, x21
  10001a688  bl      _objc_release
  10001a68c  mov     x0, x22
  10001a690  bl      _objc_release
  10001a694  mov     x0, x20
  10001a698  bl      _objc_release
  10001a69c  adrp    x21, #0x1003b0000
  10001a6a0  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  10001a6a4  adrp    x8, #0x10041d000
  10001a6a8  ldr     x20, [x8, #0xf98]                        ; class UIView
  10001a6ac  mov     w22, #-0x3e000000
  10001a6b0  str     x21, [sp, #0x28]
  10001a6b4  stp     w22, wzr, [sp, #0x30]
  10001a6b8  adr     x8, #0x10001a7a0                         ; &-[ADMissionTopbarViewController missionButtonPressed:]_block_invoke
  10001a6bc  nop
  10001a6c0  str     x8, [sp, #0x38]
  10001a6c4  adrp    x8, #0x1003b1000
  10001a6c8  add     x8, x8, #0x20                            ; &d_1003b1020
  10001a6cc  str     x8, [sp, #0x40]
  10001a6d0  mov     x0, x19
  10001a6d4  bl      _objc_retain
  10001a6d8  str     x0, [sp, #0x48]
  10001a6dc  str     x21, [sp]
  10001a6e0  stp     w22, wzr, [sp, #8]
  10001a6e4  adr     x8, #0x10001a814                         ; &-[ADMissionTopbarViewController missionButtonPressed:]_block_invoke_2
  10001a6e8  nop
  10001a6ec  str     x8, [sp, #0x10]
  10001a6f0  adrp    x8, #0x1003b1000
  10001a6f4  add     x8, x8, #0x50                            ; &d_1003b1050
  10001a6f8  str     x8, [sp, #0x18]
  10001a6fc  bl      _objc_retain
  10001a700  str     x0, [sp, #0x20]
  10001a704  adrp    x8, #0x100417000
  10001a708  nop
  10001a70c  ldr     x1, [x8, #0x880]
  10001a710  fmov    d0, #0.50000000
  10001a714  add     x2, sp, #0x28
  10001a718  mov     x3, sp
  10001a71c  mov     x0, x20
  10001a720  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADMissionTopbarViewController missionButtonPressed:]_block_invoke captures +0x20=self} completion:^{-[ADMissionTopbarViewController missionButtonPressed:]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADMissionTopbarViewController mission…, +0x40=&d_1003b1020, +0x48=self}]
  10001a724  ldr     x0, [sp, #0x20]
  10001a728  bl      _objc_release
  10001a72c  ldr     x0, [sp, #0x48]
  10001a730  bl      _objc_release
  10001a734  sub     sp, x29, #0x20
  10001a738  ldp     x29, x30, [sp, #0x20]
  10001a73c  ldp     x20, x19, [sp, #0x10]
  10001a740  ldp     x22, x21, [sp], #0x30
  10001a744  ret
  10001a748  mov     x19, x0
  10001a74c  b       loc_10001a798
  10001a750  b       loc_10001a758
  10001a754  b       loc_10001a758
loc_10001a758:
  10001a758  mov     x19, x0
  10001a75c  b       loc_10001a77c
  10001a760  mov     x19, x0
  10001a764  b       loc_10001a774
  10001a768  mov     x19, x0
  10001a76c  mov     x0, x21
  10001a770  bl      _objc_release
loc_10001a774:
  10001a774  mov     x0, x22
  10001a778  bl      _objc_release
loc_10001a77c:
  10001a77c  mov     x0, x20
  10001a780  b       loc_10001a794
  10001a784  mov     x19, x0
  10001a788  ldr     x0, [sp, #0x20]
  10001a78c  bl      _objc_release
  10001a790  ldr     x0, [sp, #0x48]
loc_10001a794:
  10001a794  bl      _objc_release
loc_10001a798:
  10001a798  mov     x0, x19
  10001a79c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionTopbarViewController missionButtonPressed:]_block_invoke
; address 0x10001a7a0  size 100  kind block
; ======================================================================
  10001a7a0  stp     x20, x19, [sp, #-0x20]!
  10001a7a4  stp     x29, x30, [sp, #0x10]
  10001a7a8  add     x29, sp, #0x10
  10001a7ac  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10001a7b0  adrp    x8, #0x100416000
  10001a7b4  nop
  10001a7b8  ldr     x1, [x8, #0xf18]
  10001a7bc  bl      _objc_msgSend                            ; [self view]
  10001a7c0  mov     x29, x29
  10001a7c4  bl      _objc_retainAutoreleasedReturnValue
  10001a7c8  mov     x19, x0
  10001a7cc  adrp    x8, #0x100417000
  10001a7d0  nop
  10001a7d4  ldr     x1, [x8, #0x828]
  10001a7d8  fmov    d0, #1.00000000
  10001a7dc  bl      _objc_msgSend                            ; [[self view] setAlpha:1]
  10001a7e0  mov     x0, x19
  10001a7e4  ldp     x29, x30, [sp, #0x10]
  10001a7e8  ldp     x20, x19, [sp], #0x20
  10001a7ec  b       _objc_release
  10001a7f0  mov     x20, x0
  10001a7f4  mov     x0, x19
  10001a7f8  bl      _objc_release
  10001a7fc  mov     x0, x20
  10001a800  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10001a804
; address 0x10001a804  size 8  kind sub
; ======================================================================
  10001a804  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001a808  b       _objc_retain

; ======================================================================
; sub_10001a80c
; address 0x10001a80c  size 8  kind sub
; ======================================================================
  10001a80c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001a810  b       _objc_release

; ======================================================================
; -[ADMissionTopbarViewController missionButtonPressed:]_block_invoke_2
; address 0x10001a814  size 120  kind block
; ======================================================================
  10001a814  stp     x20, x19, [sp, #-0x20]!
  10001a818  stp     x29, x30, [sp, #0x10]
  10001a81c  add     x29, sp, #0x10
  10001a820  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  10001a824  adrp    x9, #0x10041f000
  10001a828  ldrsw   x9, [x9, #0x618]                         ; ivar offset ADMissionTopbarViewController.open (+0x140)
  10001a82c  mov     w10, #1
  10001a830  strb    w10, [x8, x9]                            ; self->open = 1
  10001a834  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10001a838  adrp    x8, #0x100417000
  10001a83c  nop
  10001a840  ldr     x1, [x8, #0x830]
  10001a844  bl      _objc_msgSend                            ; [self missionButton]
  10001a848  mov     x29, x29
  10001a84c  bl      _objc_retainAutoreleasedReturnValue
  10001a850  mov     x19, x0
  10001a854  adrp    x8, #0x100417000
  10001a858  nop
  10001a85c  ldr     x1, [x8, #0x878]
  10001a860  mov     w2, #1
  10001a864  bl      _objc_msgSend                            ; [[self missionButton] setEnabled:1]
  10001a868  mov     x0, x19
  10001a86c  ldp     x29, x30, [sp, #0x10]
  10001a870  ldp     x20, x19, [sp], #0x20
  10001a874  b       _objc_release
  10001a878  mov     x20, x0
  10001a87c  mov     x0, x19
  10001a880  bl      _objc_release
  10001a884  mov     x0, x20
  10001a888  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10001a88c
; address 0x10001a88c  size 8  kind sub
; ======================================================================
  10001a88c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001a890  b       _objc_retain

; ======================================================================
; sub_10001a894
; address 0x10001a894  size 8  kind sub
; ======================================================================
  10001a894  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001a898  b       _objc_release

; ======================================================================
; -[ADMissionTopbarViewController backButtonTouched:]
; address 0x10001a89c  size 300  kind objc
; ======================================================================
  10001a89c  stp     x22, x21, [sp, #-0x30]!
  10001a8a0  stp     x20, x19, [sp, #0x10]
  10001a8a4  stp     x29, x30, [sp, #0x20]
  10001a8a8  add     x29, sp, #0x20
  10001a8ac  sub     sp, sp, #0x50
  10001a8b0  mov     x19, x0
  10001a8b4  adrp    x8, #0x100417000
  10001a8b8  nop
  10001a8bc  ldr     x1, [x8, #0x830]
  10001a8c0  bl      _objc_msgSend                            ; [self missionButton]
  10001a8c4  mov     x29, x29
  10001a8c8  bl      _objc_retainAutoreleasedReturnValue
  10001a8cc  mov     x20, x0
  10001a8d0  adrp    x8, #0x100417000
  10001a8d4  nop
  10001a8d8  ldr     x1, [x8, #0x878]
  10001a8dc  mov     w2, #0
  10001a8e0  bl      _objc_msgSend                            ; [[self missionButton] setEnabled:0]
  10001a8e4  mov     x0, x20
  10001a8e8  bl      _objc_release
  10001a8ec  adrp    x21, #0x1003b0000
  10001a8f0  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  10001a8f4  adrp    x8, #0x10041d000
  10001a8f8  ldr     x20, [x8, #0xf98]                        ; class UIView
  10001a8fc  mov     w22, #-0x3e000000
  10001a900  str     x21, [sp, #0x28]
  10001a904  stp     w22, wzr, [sp, #0x30]
  10001a908  adr     x8, #0x10001a9c8                         ; &-[ADMissionTopbarViewController backButtonTouched:]_block_invoke
  10001a90c  nop
  10001a910  str     x8, [sp, #0x38]
  10001a914  adrp    x8, #0x1003b1000
  10001a918  add     x8, x8, #0x80                            ; &d_1003b1080
  10001a91c  str     x8, [sp, #0x40]
  10001a920  mov     x0, x19
  10001a924  bl      _objc_retain
  10001a928  str     x0, [sp, #0x48]
  10001a92c  str     x21, [sp]
  10001a930  stp     w22, wzr, [sp, #8]
  10001a934  adr     x8, #0x10001aa3c                         ; &-[ADMissionTopbarViewController backButtonTouched:]_block_invoke_2
  10001a938  nop
  10001a93c  str     x8, [sp, #0x10]
  10001a940  adrp    x8, #0x1003b1000
  10001a944  add     x8, x8, #0xb0                            ; &d_1003b10b0
  10001a948  str     x8, [sp, #0x18]
  10001a94c  bl      _objc_retain
  10001a950  str     x0, [sp, #0x20]
  10001a954  adrp    x8, #0x100417000
  10001a958  nop
  10001a95c  ldr     x1, [x8, #0x880]
  10001a960  fmov    d0, #0.50000000
  10001a964  add     x2, sp, #0x28
  10001a968  mov     x3, sp
  10001a96c  mov     x0, x20
  10001a970  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADMissionTopbarViewController backButtonTouched:]_block_invoke captures +0x20=self} completion:^{-[ADMissionTopbarViewController backButtonTouched:]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADMissionTopbarViewController backBut…, +0x40=&d_1003b1080, +0x48=self}]
  10001a974  ldr     x0, [sp, #0x20]
  10001a978  bl      _objc_release
  10001a97c  ldr     x0, [sp, #0x48]
  10001a980  bl      _objc_release
  10001a984  sub     sp, x29, #0x20
  10001a988  ldp     x29, x30, [sp, #0x20]
  10001a98c  ldp     x20, x19, [sp, #0x10]
  10001a990  ldp     x22, x21, [sp], #0x30
  10001a994  ret
  10001a998  mov     x19, x0
  10001a99c  b       loc_10001a9c0
  10001a9a0  mov     x19, x0
  10001a9a4  mov     x0, x20
  10001a9a8  b       loc_10001a9bc
  10001a9ac  mov     x19, x0
  10001a9b0  ldr     x0, [sp, #0x20]
  10001a9b4  bl      _objc_release
  10001a9b8  ldr     x0, [sp, #0x48]
loc_10001a9bc:
  10001a9bc  bl      _objc_release
loc_10001a9c0:
  10001a9c0  mov     x0, x19
  10001a9c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionTopbarViewController backButtonTouched:]_block_invoke
; address 0x10001a9c8  size 100  kind block
; ======================================================================
  10001a9c8  stp     x20, x19, [sp, #-0x20]!
  10001a9cc  stp     x29, x30, [sp, #0x10]
  10001a9d0  add     x29, sp, #0x10
  10001a9d4  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10001a9d8  adrp    x8, #0x100416000
  10001a9dc  nop
  10001a9e0  ldr     x1, [x8, #0xf18]
  10001a9e4  bl      _objc_msgSend                            ; [self view]
  10001a9e8  mov     x29, x29
  10001a9ec  bl      _objc_retainAutoreleasedReturnValue
  10001a9f0  mov     x19, x0
  10001a9f4  adrp    x8, #0x100417000
  10001a9f8  nop
  10001a9fc  ldr     x1, [x8, #0x828]
  10001aa00  movi    v0.16b, #0
  10001aa04  bl      _objc_msgSend                            ; [[self view] setAlpha:0]
  10001aa08  mov     x0, x19
  10001aa0c  ldp     x29, x30, [sp, #0x10]
  10001aa10  ldp     x20, x19, [sp], #0x20
  10001aa14  b       _objc_release
  10001aa18  mov     x20, x0
  10001aa1c  mov     x0, x19
  10001aa20  bl      _objc_release
  10001aa24  mov     x0, x20
  10001aa28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10001aa2c
; address 0x10001aa2c  size 8  kind sub
; ======================================================================
  10001aa2c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001aa30  b       _objc_retain

; ======================================================================
; sub_10001aa34
; address 0x10001aa34  size 8  kind sub
; ======================================================================
  10001aa34  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001aa38  b       _objc_release

; ======================================================================
; -[ADMissionTopbarViewController backButtonTouched:]_block_invoke_2
; address 0x10001aa3c  size 320  kind block
; ======================================================================
  10001aa3c  stp     x22, x21, [sp, #-0x30]!
  10001aa40  stp     x20, x19, [sp, #0x10]
  10001aa44  stp     x29, x30, [sp, #0x20]
  10001aa48  add     x29, sp, #0x20
  10001aa4c  mov     x19, x0
  10001aa50  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  10001aa54  adrp    x9, #0x10041f000
  10001aa58  ldrsw   x9, [x9, #0x618]                         ; ivar offset ADMissionTopbarViewController.open (+0x140)
  10001aa5c  strb    wzr, [x8, x9]                            ; self->open = 0
  10001aa60  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10001aa64  adrp    x8, #0x100416000
  10001aa68  nop
  10001aa6c  ldr     x22, [x8, #0xf18]
  10001aa70  mov     x1, x22
  10001aa74  bl      _objc_msgSend                            ; [self view]
  10001aa78  mov     x29, x29
  10001aa7c  bl      _objc_retainAutoreleasedReturnValue
  10001aa80  mov     x20, x0
  10001aa84  adrp    x8, #0x100417000
  10001aa88  nop
  10001aa8c  ldr     x1, [x8, #0x818]
  10001aa90  bl      _objc_msgSend                            ; [[self view] superview]
  10001aa94  mov     x29, x29
  10001aa98  bl      _objc_retainAutoreleasedReturnValue
  10001aa9c  mov     x21, x0
  10001aaa0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10001aaa4  mov     x1, x22
  10001aaa8  bl      _objc_msgSend                            ; [self view]
  10001aaac  mov     x29, x29
  10001aab0  bl      _objc_retainAutoreleasedReturnValue
  10001aab4  mov     x22, x0
  10001aab8  adrp    x8, #0x100417000
  10001aabc  nop
  10001aac0  ldr     x1, [x8, #0x820]
  10001aac4  mov     x0, x21
  10001aac8  mov     x2, x22
  10001aacc  bl      _objc_msgSend                            ; [[[self view] superview] sendSubviewToBack:[self view]]
  10001aad0  mov     x0, x22
  10001aad4  bl      _objc_release
  10001aad8  mov     x0, x21
  10001aadc  bl      _objc_release
  10001aae0  mov     x0, x20
  10001aae4  bl      _objc_release
  10001aae8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10001aaec  adrp    x8, #0x100417000
  10001aaf0  nop
  10001aaf4  ldr     x1, [x8, #0x830]
  10001aaf8  bl      _objc_msgSend                            ; [self missionButton]
  10001aafc  mov     x29, x29
  10001ab00  bl      _objc_retainAutoreleasedReturnValue
  10001ab04  mov     x20, x0
  10001ab08  adrp    x8, #0x100417000
  10001ab0c  nop
  10001ab10  ldr     x1, [x8, #0x878]
  10001ab14  mov     w2, #1
  10001ab18  bl      _objc_msgSend                            ; [[self missionButton] setEnabled:1]
  10001ab1c  mov     x0, x20
  10001ab20  bl      _objc_release
  10001ab24  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10001ab28  adrp    x8, #0x100417000
  10001ab2c  nop
  10001ab30  ldr     x1, [x8, #0x840]
  10001ab34  ldp     x29, x30, [sp, #0x20]
  10001ab38  ldp     x20, x19, [sp, #0x10]
  10001ab3c  ldp     x22, x21, [sp], #0x30
  10001ab40  b       _objc_msgSend                            ; [self removeAllMissions]
  10001ab44  b       loc_10001ab68
  10001ab48  mov     x19, x0
  10001ab4c  b       loc_10001ab5c
  10001ab50  mov     x19, x0
  10001ab54  mov     x0, x22
  10001ab58  bl      _objc_release
loc_10001ab5c:
  10001ab5c  mov     x0, x21
  10001ab60  bl      _objc_release
  10001ab64  b       loc_10001ab6c
loc_10001ab68:
  10001ab68  mov     x19, x0
loc_10001ab6c:
  10001ab6c  mov     x0, x20
  10001ab70  bl      _objc_release
  10001ab74  mov     x0, x19
  10001ab78  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10001ab7c
; address 0x10001ab7c  size 8  kind sub
; ======================================================================
  10001ab7c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001ab80  b       _objc_retain

; ======================================================================
; sub_10001ab84
; address 0x10001ab84  size 8  kind sub
; ======================================================================
  10001ab84  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001ab88  b       _objc_release

; ======================================================================
; -[ADMissionTopbarViewController didReceiveMemoryWarning]
; address 0x10001ab8c  size 60  kind objc
; ======================================================================
  10001ab8c  stp     x29, x30, [sp, #-0x10]!
  10001ab90  mov     x29, sp
  10001ab94  sub     sp, sp, #0x10
  10001ab98  str     x0, [sp]
  10001ab9c  adrp    x8, #0x10041e000
  10001aba0  ldr     x8, [x8, #0xc10]
  10001aba4  str     x8, [sp, #8]
  10001aba8  adrp    x8, #0x100416000
  10001abac  nop
  10001abb0  ldr     x1, [x8, #0xbf8]
  10001abb4  mov     x0, sp
  10001abb8  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10001abbc  mov     sp, x29
  10001abc0  ldp     x29, x30, [sp], #0x10
  10001abc4  ret

; ======================================================================
; -[ADMissionTopbarViewController dealloc]
; address 0x10001abc8  size 160  kind objc
; ======================================================================
  10001abc8  stp     x20, x19, [sp, #-0x20]!
  10001abcc  stp     x29, x30, [sp, #0x10]
  10001abd0  add     x29, sp, #0x10
  10001abd4  sub     sp, sp, #0x20
  10001abd8  mov     x19, x0
  10001abdc  adrp    x8, #0x100417000
  10001abe0  nop
  10001abe4  ldr     x1, [x8, #0x840]
  10001abe8  bl      _objc_msgSend                            ; [self removeAllMissions]
  10001abec  adrp    x8, #0x10041f000
  10001abf0  ldrsw   x8, [x8, #0x614]                         ; ivar offset ADMissionTopbarViewController.missionViewControllers (+0x148)
  10001abf4  ldr     x0, [x19, x8]                            ; x0 = self->missionViewControllers
  10001abf8  str     xzr, [x19, x8]                           ; self->missionViewControllers = 0
  10001abfc  bl      _objc_release
  10001ac00  str     x19, [sp, #0x10]
  10001ac04  adrp    x8, #0x10041e000
  10001ac08  ldr     x8, [x8, #0xc10]
  10001ac0c  str     x8, [sp, #0x18]
  10001ac10  adrp    x8, #0x100416000
  10001ac14  nop
  10001ac18  ldr     x1, [x8, #0xfc8]
  10001ac1c  add     x0, sp, #0x10
  10001ac20  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10001ac24  sub     sp, x29, #0x10
  10001ac28  ldp     x29, x30, [sp, #0x10]
  10001ac2c  ldp     x20, x19, [sp], #0x20
  10001ac30  ret
  10001ac34  mov     x20, x0
  10001ac38  str     x19, [sp]
  10001ac3c  adrp    x8, #0x10041e000
  10001ac40  ldr     x8, [x8, #0xc10]
  10001ac44  str     x8, [sp, #8]
  10001ac48  adrp    x8, #0x100416000
  10001ac4c  nop
  10001ac50  ldr     x1, [x8, #0xfc8]
  10001ac54  mov     x0, sp
  10001ac58  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10001ac5c  mov     x0, x20
  10001ac60  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001ac64  bl      sub_10000b760

; ======================================================================
; -[ADMissionTopbarViewController containerView]
; address 0x10001ac68  size 16  kind objc
; ======================================================================
  10001ac68  adrp    x8, #0x10041f000
  10001ac6c  ldrsw   x8, [x8, #0x61c]                         ; ivar offset ADMissionTopbarViewController._containerView (+0x158)
  10001ac70  ldr     x0, [x0, x8]                             ; x0 = self->_containerView
  10001ac74  ret

; ======================================================================
; -[ADMissionTopbarViewController setContainerView:]
; address 0x10001ac78  size 56  kind objc
; ======================================================================
  10001ac78  stp     x20, x19, [sp, #-0x20]!
  10001ac7c  stp     x29, x30, [sp, #0x10]
  10001ac80  add     x29, sp, #0x10
  10001ac84  mov     x19, x0
  10001ac88  adrp    x8, #0x10041f000
  10001ac8c  ldrsw   x20, [x8, #0x61c]                        ; ivar offset ADMissionTopbarViewController._containerView (+0x158)
  10001ac90  mov     x0, x2
  10001ac94  bl      _objc_retain
  10001ac98  ldr     x8, [x19, x20]                           ; x8 = self->_containerView
  10001ac9c  str     x0, [x19, x20]                           ; self->_containerView = arg1
  10001aca0  mov     x0, x8
  10001aca4  ldp     x29, x30, [sp, #0x10]
  10001aca8  ldp     x20, x19, [sp], #0x20
  10001acac  b       _objc_release

; ======================================================================
; -[ADMissionTopbarViewController missionButton]
; address 0x10001acb0  size 16  kind objc
; ======================================================================
  10001acb0  adrp    x8, #0x10041f000
  10001acb4  ldrsw   x8, [x8, #0x620]                         ; ivar offset ADMissionTopbarViewController._missionButton (+0x160)
  10001acb8  ldr     x0, [x0, x8]                             ; x0 = self->_missionButton
  10001acbc  ret

; ======================================================================
; -[ADMissionTopbarViewController setMissionButton:]
; address 0x10001acc0  size 56  kind objc
; ======================================================================
  10001acc0  stp     x20, x19, [sp, #-0x20]!
  10001acc4  stp     x29, x30, [sp, #0x10]
  10001acc8  add     x29, sp, #0x10
  10001accc  mov     x19, x0
  10001acd0  adrp    x8, #0x10041f000
  10001acd4  ldrsw   x20, [x8, #0x620]                        ; ivar offset ADMissionTopbarViewController._missionButton (+0x160)
  10001acd8  mov     x0, x2
  10001acdc  bl      _objc_retain
  10001ace0  ldr     x8, [x19, x20]                           ; x8 = self->_missionButton
  10001ace4  str     x0, [x19, x20]                           ; self->_missionButton = arg1
  10001ace8  mov     x0, x8
  10001acec  ldp     x29, x30, [sp, #0x10]
  10001acf0  ldp     x20, x19, [sp], #0x20
  10001acf4  b       _objc_release

; ======================================================================
; -[ADMissionTopbarViewController .cxx_destruct]
; address 0x10001acf8  size 84  kind objc
; ======================================================================
  10001acf8  stp     x20, x19, [sp, #-0x20]!
  10001acfc  stp     x29, x30, [sp, #0x10]
  10001ad00  add     x29, sp, #0x10
  10001ad04  mov     x19, x0
  10001ad08  adrp    x8, #0x10041f000
  10001ad0c  ldrsw   x8, [x8, #0x620]                         ; ivar offset ADMissionTopbarViewController._missionButton (+0x160)
  10001ad10  add     x0, x19, x8
  10001ad14  mov     x1, #0
  10001ad18  bl      _objc_storeStrong
  10001ad1c  adrp    x8, #0x10041f000
  10001ad20  ldrsw   x8, [x8, #0x61c]                         ; ivar offset ADMissionTopbarViewController._containerView (+0x158)
  10001ad24  add     x0, x19, x8
  10001ad28  mov     x1, #0
  10001ad2c  bl      _objc_storeStrong
  10001ad30  mov     x1, #0
  10001ad34  adrp    x8, #0x10041f000
  10001ad38  ldrsw   x8, [x8, #0x614]                         ; ivar offset ADMissionTopbarViewController.missionViewControllers (+0x148)
  10001ad3c  add     x0, x19, x8
  10001ad40  ldp     x29, x30, [sp, #0x10]
  10001ad44  ldp     x20, x19, [sp], #0x20
  10001ad48  b       _objc_storeStrong
