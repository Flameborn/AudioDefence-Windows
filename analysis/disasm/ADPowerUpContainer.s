// unit ADPowerUpContainer — 9 functions
//   0x100069880     528  -[ADPowerUpContainer update:]
//   0x100069a90     240  -[ADPowerUpContainer spawn]
//   0x100069b80     148  -[ADPowerUpContainer die]
//   0x100069c14     104  -[ADPowerUpContainer canBeShotAt]
//   0x100069c7c      72  -[ADPowerUpContainer startBeeping]
//   0x100069cc4     204  -[ADPowerUpContainer removePowerUp]
//   0x100069d90      60  -[ADPowerUpContainer getType]
//   0x100069dcc      16  -[ADPowerUpContainer powerUpType]
//   0x100069ddc      16  -[ADPowerUpContainer setPowerUpType:]

; ======================================================================
; -[ADPowerUpContainer update:]
; address 0x100069880  size 528  kind objc
; ======================================================================
  100069880  stp     d11, d10, [sp, #-0x40]!
  100069884  stp     d9, d8, [sp, #0x10]
  100069888  stp     x20, x19, [sp, #0x20]
  10006988c  stp     x29, x30, [sp, #0x30]
  100069890  add     x29, sp, #0x30
  100069894  mov     v8.16b, v0.16b
  100069898  mov     x19, x0
  10006989c  adrp    x8, #0x100416000
  1000698a0  nop
  1000698a4  ldr     x1, [x8, #0xc60]
  1000698a8  bl      _objc_msgSend                            ; [self state]
  1000698ac  cmp     w0, #0x258
  1000698b0  b.gt    loc_1000698f0                            ; if ([self state] > 600)
  1000698b4  cbnz    w0, loc_100069924                        ; if ([self state] != 0)
  1000698b8  adrp    x8, #0x100416000
  1000698bc  nop
  1000698c0  ldr     x1, [x8, #0xc68]
  1000698c4  mov     x0, x19
  1000698c8  bl      _objc_msgSend                            ; [self timeInState]
  1000698cc  mov     v9.16b, v0.16b
  1000698d0  adrp    x8, #0x100416000
  1000698d4  nop
  1000698d8  ldr     x1, [x8, #0xfd0]
  1000698dc  mov     x0, x19
  1000698e0  bl      _objc_msgSend                            ; [self spawn_time]
  1000698e4  fcmp    s9, s0
  1000698e8  b.le    loc_100069a40                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
  1000698ec  b       loc_10006994c
loc_1000698f0:
  1000698f0  cmp     w0, #0x259
  1000698f4  b.ne    loc_100069964                            ; if ([self state] != 601)
  1000698f8  adrp    x8, #0x100416000
  1000698fc  nop
  100069900  ldr     x1, [x8, #0xc68]
  100069904  mov     x0, x19
  100069908  bl      _objc_msgSend                            ; [self timeInState]
  10006990c  fmov    s1, #15.00000000
  100069910  fcmp    s0, s1
  100069914  b.le    loc_100069a40                            ; if ([self timeInState] <= (or unordered) 15)
  100069918  adrp    x8, #0x100419000
  10006991c  add     x8, x8, #0x558                           ; &@selector(removePowerUp)
  100069920  b       loc_100069954
loc_100069924:
  100069924  cmp     w0, #1
  100069928  b.ne    loc_100069a40                            ; if ([self state] != 1)
  10006992c  adrp    x8, #0x100416000
  100069930  nop
  100069934  ldr     x20, [x8, #0xfe0]
  100069938  mov     x0, x19
  10006993c  mov     x1, x20
  100069940  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  100069944  fcmp    s0, #0.0
  100069948  b.ne    loc_100069a08                            ; if ([self spawn_sound_duration] != 0.0)
loc_10006994c:
  10006994c  adrp    x8, #0x100416000
  100069950  add     x8, x8, #0xfd8                           ; &@selector(spawn)
loc_100069954:
  100069954  ldr     x1, [x8]                                 ; x1 = one of selectors {removePowerUp, spawn, startBeeping}
  100069958  mov     x0, x19
  10006995c  bl      _objc_msgSend                            ; [self removePowerUp | spawn | startBeeping]
  100069960  b       loc_100069a40
loc_100069964:
  100069964  cmp     w0, #0x3e7
  100069968  b.ne    loc_100069a40                            ; if ([self state] != 999)
  10006996c  adrp    x8, #0x100416000
  100069970  nop
  100069974  ldr     x20, [x8, #0xc68]
  100069978  mov     x0, x19
  10006997c  mov     x1, x20
  100069980  bl      _objc_msgSend                            ; [self timeInState]
  100069984  fcvt    d0, s0
  100069988  adrp    x8, #0x100181000
  10006998c  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  100069990  fcmp    d0, d1
  100069994  b.le    loc_100069a40                            ; if ([self timeInState] <= (or unordered) 0.1)
  100069998  mov     x0, x19
  10006999c  mov     x1, x20
  1000699a0  bl      _objc_msgSend                            ; [self timeInState]
  1000699a4  mov     v9.16b, v0.16b
  1000699a8  adrp    x8, #0x100416000
  1000699ac  nop
  1000699b0  ldr     x1, [x8, #0xff0]
  1000699b4  mov     x0, x19
  1000699b8  bl      _objc_msgSend                            ; [self sound]
  1000699bc  mov     x29, x29
  1000699c0  bl      _objc_retainAutoreleasedReturnValue
  1000699c4  mov     x20, x0
  1000699c8  adrp    x8, #0x100416000
  1000699cc  nop
  1000699d0  ldr     x1, [x8, #0xff8]
  1000699d4  bl      _objc_msgSend                            ; [[self sound] duration]
  1000699d8  mov     v10.16b, v0.16b
  1000699dc  mov     x0, x20
  1000699e0  bl      _objc_release
  1000699e4  fcmp    s9, s10
  1000699e8  b.le    loc_100069a40                            ; if ([self timeInState] <= (or unordered) [[self sound] duration])
  1000699ec  adrp    x8, #0x100416000
  1000699f0  nop
  1000699f4  ldr     x1, [x8, #0xc78]
  1000699f8  mov     w2, #-1
  1000699fc  mov     x0, x19
  100069a00  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  100069a04  b       loc_100069a40
loc_100069a08:
  100069a08  adrp    x8, #0x100416000
  100069a0c  nop
  100069a10  ldr     x1, [x8, #0xc68]
  100069a14  mov     x0, x19
  100069a18  bl      _objc_msgSend                            ; [self timeInState]
  100069a1c  mov     v9.16b, v0.16b
  100069a20  mov     x0, x19
  100069a24  mov     x1, x20
  100069a28  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  100069a2c  fcmp    s9, s0
  100069a30  b.le    loc_100069a40                            ; if ([self timeInState] <= (or unordered) [self spawn_sound_duration])
  100069a34  adrp    x8, #0x100419000
  100069a38  add     x8, x8, #0x550                           ; &@selector(startBeeping)
  100069a3c  b       loc_100069954
loc_100069a40:
  100069a40  adrp    x8, #0x100416000
  100069a44  nop
  100069a48  ldr     x1, [x8, #0xc68]
  100069a4c  mov     x0, x19
  100069a50  bl      _objc_msgSend                            ; [self timeInState]
  100069a54  fadd    s0, s0, s8
  100069a58  adrp    x8, #0x100416000
  100069a5c  nop
  100069a60  ldr     x1, [x8, #0xc80]
  100069a64  mov     x0, x19
  100069a68  ldp     x29, x30, [sp, #0x30]
  100069a6c  ldp     x20, x19, [sp, #0x20]
  100069a70  ldp     d9, d8, [sp, #0x10]
  100069a74  ldp     d11, d10, [sp], #0x40
  100069a78  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]
  100069a7c  mov     x19, x0
  100069a80  mov     x0, x20
  100069a84  bl      _objc_release
  100069a88  mov     x0, x19
  100069a8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUpContainer spawn]
; address 0x100069a90  size 240  kind objc
; ======================================================================
  100069a90  stp     x22, x21, [sp, #-0x30]!
  100069a94  stp     x20, x19, [sp, #0x10]
  100069a98  stp     x29, x30, [sp, #0x20]
  100069a9c  add     x29, sp, #0x20
  100069aa0  sub     sp, sp, #0x10
  100069aa4  mov     x20, x0
  100069aa8  str     x20, [sp]
  100069aac  adrp    x8, #0x10041e000
  100069ab0  ldr     x8, [x8, #0xda8]
  100069ab4  str     x8, [sp, #8]
  100069ab8  adrp    x8, #0x100416000
  100069abc  nop
  100069ac0  ldr     x1, [x8, #0xfd8]
  100069ac4  mov     x0, sp
  100069ac8  bl      _objc_msgSendSuper2                      ; [super spawn]
  100069acc  adrp    x8, #0x100419000
  100069ad0  nop
  100069ad4  ldr     x21, [x8, #0x560]
  100069ad8  mov     x0, x20
  100069adc  mov     x1, x21
  100069ae0  bl      _objc_msgSend                            ; [self powerUpType]
  100069ae4  mov     x22, x0
  100069ae8  adrp    x8, #0x10041d000
  100069aec  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100069af0  adrp    x8, #0x100417000
  100069af4  nop
  100069af8  ldr     x1, [x8, #0xa0]
  100069afc  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100069b00  mov     x29, x29
  100069b04  bl      _objc_retainAutoreleasedReturnValue
  100069b08  mov     x19, x0
  100069b0c  cbz     w22, loc_100069b3c                       ; if ([self powerUpType] == 0)
  100069b10  mov     x0, x20
  100069b14  mov     x1, x21
  100069b18  bl      _objc_msgSend                            ; [self powerUpType]
  100069b1c  mov     x2, x0
  100069b20  adrp    x8, #0x100419000
  100069b24  nop
  100069b28  ldr     x1, [x8, #0x568]
  100069b2c  mov     x0, x19
  100069b30  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] initPowerUp:[self powerUpType]]
  100069b34  b       loc_100069b50
  100069b38  b       loc_100069b6c
loc_100069b3c:
  100069b3c  adrp    x8, #0x100419000
  100069b40  nop
  100069b44  ldr     x1, [x8, #0x570]
  100069b48  mov     x0, x19
  100069b4c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] initRandomPowerUp]
loc_100069b50:
  100069b50  mov     x0, x19
  100069b54  bl      _objc_release
  100069b58  sub     sp, x29, #0x20
  100069b5c  ldp     x29, x30, [sp, #0x20]
  100069b60  ldp     x20, x19, [sp, #0x10]
  100069b64  ldp     x22, x21, [sp], #0x30
  100069b68  ret
loc_100069b6c:
  100069b6c  mov     x20, x0
  100069b70  mov     x0, x19
  100069b74  bl      _objc_release
  100069b78  mov     x0, x20
  100069b7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUpContainer die]
; address 0x100069b80  size 148  kind objc
; ======================================================================
  100069b80  stp     x20, x19, [sp, #-0x20]!
  100069b84  stp     x29, x30, [sp, #0x10]
  100069b88  add     x29, sp, #0x10
  100069b8c  sub     sp, sp, #0x10
  100069b90  str     x0, [sp]
  100069b94  adrp    x8, #0x10041e000
  100069b98  ldr     x8, [x8, #0xda8]
  100069b9c  str     x8, [sp, #8]
  100069ba0  adrp    x8, #0x100418000
  100069ba4  nop
  100069ba8  ldr     x1, [x8, #0xcc0]
  100069bac  mov     x0, sp
  100069bb0  bl      _objc_msgSendSuper2                      ; [super die]
  100069bb4  adrp    x8, #0x10041d000
  100069bb8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100069bbc  adrp    x8, #0x100417000
  100069bc0  nop
  100069bc4  ldr     x1, [x8, #0xa0]
  100069bc8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100069bcc  mov     x29, x29
  100069bd0  bl      _objc_retainAutoreleasedReturnValue
  100069bd4  mov     x19, x0
  100069bd8  adrp    x8, #0x100419000
  100069bdc  nop
  100069be0  ldr     x1, [x8, #0xe0]
  100069be4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] usePowerUp]
  100069be8  mov     x0, x19
  100069bec  bl      _objc_release
  100069bf0  sub     sp, x29, #0x10
  100069bf4  ldp     x29, x30, [sp, #0x10]
  100069bf8  ldp     x20, x19, [sp], #0x20
  100069bfc  ret
  100069c00  mov     x20, x0
  100069c04  mov     x0, x19
  100069c08  bl      _objc_release
  100069c0c  mov     x0, x20
  100069c10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUpContainer canBeShotAt]
; address 0x100069c14  size 104  kind objc
; ======================================================================
  100069c14  stp     x20, x19, [sp, #-0x20]!
  100069c18  stp     x29, x30, [sp, #0x10]
  100069c1c  add     x29, sp, #0x10
  100069c20  sub     sp, sp, #0x10
  100069c24  mov     x19, x0
  100069c28  adrp    x8, #0x100416000
  100069c2c  nop
  100069c30  ldr     x1, [x8, #0xc60]
  100069c34  bl      _objc_msgSend                            ; [self state]
  100069c38  cmp     w0, #1
  100069c3c  b.ne    loc_100069c48                            ; if ([self state] != 1)
  100069c40  mov     w0, #0
  100069c44  b       loc_100069c6c
loc_100069c48:
  100069c48  str     x19, [sp]
  100069c4c  adrp    x8, #0x10041e000
  100069c50  ldr     x8, [x8, #0xda8]
  100069c54  str     x8, [sp, #8]
  100069c58  adrp    x8, #0x100419000
  100069c5c  nop
  100069c60  ldr     x1, [x8, #0x578]
  100069c64  mov     x0, sp
  100069c68  bl      _objc_msgSendSuper2                      ; [super canBeShotAt]
loc_100069c6c:
  100069c6c  sub     sp, x29, #0x10
  100069c70  ldp     x29, x30, [sp, #0x10]
  100069c74  ldp     x20, x19, [sp], #0x20
  100069c78  ret

; ======================================================================
; -[ADPowerUpContainer startBeeping]
; address 0x100069c7c  size 72  kind objc
; ======================================================================
  100069c7c  stp     x20, x19, [sp, #-0x20]!
  100069c80  stp     x29, x30, [sp, #0x10]
  100069c84  add     x29, sp, #0x10
  100069c88  mov     x19, x0
  100069c8c  adrp    x8, #0x100416000
  100069c90  nop
  100069c94  ldr     x1, [x8, #0xc78]
  100069c98  mov     w2, #0x259
  100069c9c  bl      _objc_msgSend                            ; [self setState:601]
  100069ca0  adrp    x8, #0x100417000
  100069ca4  nop
  100069ca8  ldr     x1, [x8, #0x70]
  100069cac  adrp    x2, #0x1003be000
  100069cb0  add     x2, x2, #0xcd0                           ; @"_alerting_"
  100069cb4  mov     x0, x19
  100069cb8  ldp     x29, x30, [sp, #0x10]
  100069cbc  ldp     x20, x19, [sp], #0x20
  100069cc0  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_alerting_"]

; ======================================================================
; -[ADPowerUpContainer removePowerUp]
; address 0x100069cc4  size 204  kind objc
; ======================================================================
  100069cc4  stp     x20, x19, [sp, #-0x20]!
  100069cc8  stp     x29, x30, [sp, #0x10]
  100069ccc  add     x29, sp, #0x10
  100069cd0  mov     x19, x0
  100069cd4  adrp    x8, #0x100416000
  100069cd8  nop
  100069cdc  ldr     x1, [x8, #0xc78]
  100069ce0  mov     w2, #-1
  100069ce4  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  100069ce8  adrp    x8, #0x100419000
  100069cec  nop
  100069cf0  ldr     x1, [x8, #0x358]
  100069cf4  mov     x0, x19
  100069cf8  bl      _objc_msgSend                            ; [self setLifeToZero]
  100069cfc  adrp    x8, #0x100416000
  100069d00  nop
  100069d04  ldr     x1, [x8, #0xff0]
  100069d08  mov     x0, x19
  100069d0c  bl      _objc_msgSend                            ; [self sound]
  100069d10  mov     x29, x29
  100069d14  bl      _objc_retainAutoreleasedReturnValue
  100069d18  mov     x19, x0
  100069d1c  adrp    x8, #0x100417000
  100069d20  nop
  100069d24  ldr     x1, [x8, #0x568]
  100069d28  bl      _objc_msgSend                            ; [[self sound] stop]
  100069d2c  mov     x0, x19
  100069d30  bl      _objc_release
  100069d34  adrp    x8, #0x10041e000
  100069d38  ldr     x0, [x8, #8]                             ; class ADTracker
  100069d3c  adrp    x8, #0x100416000
  100069d40  nop
  100069d44  ldr     x1, [x8, #0xac0]
  100069d48  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100069d4c  mov     x29, x29
  100069d50  bl      _objc_retainAutoreleasedReturnValue
  100069d54  mov     x19, x0
  100069d58  adrp    x8, #0x100419000
  100069d5c  nop
  100069d60  ldr     x1, [x8, #0x580]
  100069d64  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] powerUpMissed]
  100069d68  mov     x0, x19
  100069d6c  ldp     x29, x30, [sp, #0x10]
  100069d70  ldp     x20, x19, [sp], #0x20
  100069d74  b       _objc_release
  100069d78  b       loc_100069d7c
loc_100069d7c:
  100069d7c  mov     x20, x0
  100069d80  mov     x0, x19
  100069d84  bl      _objc_release
  100069d88  mov     x0, x20
  100069d8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUpContainer getType]
; address 0x100069d90  size 60  kind objc
; ======================================================================
  100069d90  stp     x29, x30, [sp, #-0x10]!
  100069d94  mov     x29, sp
  100069d98  sub     sp, sp, #0x10
  100069d9c  str     x0, [sp]
  100069da0  adrp    x8, #0x10041e000
  100069da4  ldr     x8, [x8, #0xda8]
  100069da8  str     x8, [sp, #8]
  100069dac  adrp    x8, #0x100418000
  100069db0  nop
  100069db4  ldr     x1, [x8, #0xf30]
  100069db8  mov     x0, sp
  100069dbc  bl      _objc_msgSendSuper2                      ; [super getType]
  100069dc0  mov     sp, x29
  100069dc4  ldp     x29, x30, [sp], #0x10
  100069dc8  ret

; ======================================================================
; -[ADPowerUpContainer powerUpType]
; address 0x100069dcc  size 16  kind objc
; ======================================================================
  100069dcc  adrp    x8, #0x10041f000
  100069dd0  ldrsw   x8, [x8, #0xc60]                         ; ivar offset ADPowerUpContainer._powerUpType (+0x8)
  100069dd4  ldr     w0, [x0, x8]                             ; w0 = self->_powerUpType
  100069dd8  ret

; ======================================================================
; -[ADPowerUpContainer setPowerUpType:]
; address 0x100069ddc  size 16  kind objc
; ======================================================================
  100069ddc  adrp    x8, #0x10041f000
  100069de0  ldrsw   x8, [x8, #0xc60]                         ; ivar offset ADPowerUpContainer._powerUpType (+0x8)
  100069de4  str     w2, [x0, x8]                             ; self->_powerUpType = arg1
  100069de8  ret
