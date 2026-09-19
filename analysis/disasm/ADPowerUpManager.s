// unit ADPowerUpManager — 5 functions
//   0x10004b524     128  -[ADPowerUpManager init]
//   0x10004b5a4     156  -[ADPowerUpManager update:]
//   0x10004b640     552  -[ADPowerUpManager resetPowerUpCooldown]
//   0x10004b868      92  -[ADPowerUpManager tryToPopPowerUp]
//   0x10004b8c4     432  -[ADPowerUpManager popPowerUpWithType:]

; ======================================================================
; -[ADPowerUpManager init]
; address 0x10004b524  size 128  kind objc
; ======================================================================
  10004b524  stp     x20, x19, [sp, #-0x20]!
  10004b528  stp     x29, x30, [sp, #0x10]
  10004b52c  add     x29, sp, #0x10
  10004b530  sub     sp, sp, #0x10
  10004b534  str     x0, [sp]
  10004b538  adrp    x8, #0x10041e000
  10004b53c  ldr     x8, [x8, #0xd30]
  10004b540  str     x8, [sp, #8]
  10004b544  adrp    x8, #0x100416000
  10004b548  nop
  10004b54c  ldr     x1, [x8, #0xab8]
  10004b550  mov     x19, #0
  10004b554  mov     x0, sp
  10004b558  bl      _objc_msgSendSuper2                      ; [super init]
  10004b55c  mov     x20, x0
  10004b560  cbz     x20, loc_10004b57c                       ; if (self == 0)
  10004b564  mov     x19, x20
  10004b568  adrp    x8, #0x100418000
  10004b56c  nop
  10004b570  ldr     x1, [x8, #0xb50]
  10004b574  mov     x0, x20
  10004b578  bl      _objc_msgSend                            ; [self resetPowerUpCooldown]
loc_10004b57c:
  10004b57c  mov     x0, x20
  10004b580  sub     sp, x29, #0x10
  10004b584  ldp     x29, x30, [sp, #0x10]
  10004b588  ldp     x20, x19, [sp], #0x20
  10004b58c  ret
  10004b590  mov     x20, x0
  10004b594  mov     x0, x19
  10004b598  bl      _objc_release
  10004b59c  mov     x0, x20
  10004b5a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUpManager update:]
; address 0x10004b5a4  size 156  kind objc
; ======================================================================
  10004b5a4  stp     d9, d8, [sp, #-0x40]!
  10004b5a8  stp     x22, x21, [sp, #0x10]
  10004b5ac  stp     x20, x19, [sp, #0x20]
  10004b5b0  stp     x29, x30, [sp, #0x30]
  10004b5b4  add     x29, sp, #0x30
  10004b5b8  mov     v8.16b, v0.16b
  10004b5bc  mov     x19, x0
  10004b5c0  adrp    x8, #0x10041e000
  10004b5c4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10004b5c8  adrp    x8, #0x100417000
  10004b5cc  nop
  10004b5d0  ldr     x1, [x8, #0xaa8]
  10004b5d4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10004b5d8  mov     x29, x29
  10004b5dc  bl      _objc_retainAutoreleasedReturnValue
  10004b5e0  mov     x20, x0
  10004b5e4  adrp    x8, #0x100418000
  10004b5e8  nop
  10004b5ec  ldr     x1, [x8, #0xb58]
  10004b5f0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  10004b5f4  mov     x21, x0
  10004b5f8  mov     x0, x20
  10004b5fc  bl      _objc_release
  10004b600  tbnz    w21, #0, loc_10004b618                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  10004b604  adrp    x8, #0x10041f000
  10004b608  ldrsw   x8, [x8, #0xa10]                         ; ivar offset ADPowerUpManager.powerupCoolDown (+0x8)
  10004b60c  ldr     s0, [x19, x8]                            ; s0 = self->powerupCoolDown
  10004b610  fsub    s0, s0, s8
  10004b614  str     s0, [x19, x8]                            ; self->powerupCoolDown = (self->powerupCoolDown - arg1)
loc_10004b618:
  10004b618  ldp     x29, x30, [sp, #0x30]
  10004b61c  ldp     x20, x19, [sp, #0x20]
  10004b620  ldp     x22, x21, [sp, #0x10]
  10004b624  ldp     d9, d8, [sp], #0x40
  10004b628  ret
  10004b62c  mov     x19, x0
  10004b630  mov     x0, x20
  10004b634  bl      _objc_release
  10004b638  mov     x0, x19
  10004b63c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUpManager resetPowerUpCooldown]
; address 0x10004b640  size 552  kind objc
; ======================================================================
  10004b640  stp     x24, x23, [sp, #-0x40]!
  10004b644  stp     x22, x21, [sp, #0x10]
  10004b648  stp     x20, x19, [sp, #0x20]
  10004b64c  stp     x29, x30, [sp, #0x30]
  10004b650  add     x29, sp, #0x30
  10004b654  sub     sp, sp, #0x10
  10004b658  mov     x20, x0
  10004b65c  adrp    x8, #0x10041d000
  10004b660  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10004b664  adrp    x8, #0x100417000
  10004b668  nop
  10004b66c  ldr     x1, [x8, #0xa0]
  10004b670  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10004b674  mov     x29, x29
  10004b678  bl      _objc_retainAutoreleasedReturnValue
  10004b67c  mov     x21, x0
  10004b680  adrp    x8, #0x100418000
  10004b684  nop
  10004b688  ldr     x1, [x8, #0x4a0]
  10004b68c  adrp    x2, #0x1003bd000
  10004b690  add     x2, x2, #0x230                           ; @"frequency"
  10004b694  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"frequency"]
  10004b698  mov     x29, x29
  10004b69c  bl      _objc_retainAutoreleasedReturnValue
  10004b6a0  mov     x19, x0
  10004b6a4  mov     x0, x21
  10004b6a8  bl      _objc_release
  10004b6ac  adrp    x8, #0x10041d000
  10004b6b0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10004b6b4  adrp    x8, #0x100416000
  10004b6b8  nop
  10004b6bc  ldr     x1, [x8, #0xec8]
  10004b6c0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004b6c4  mov     x29, x29
  10004b6c8  bl      _objc_retainAutoreleasedReturnValue
  10004b6cc  mov     x21, x0
  10004b6d0  adrp    x8, #0x100417000
  10004b6d4  nop
  10004b6d8  ldr     x1, [x8, #0xd90]
  10004b6dc  adrp    x2, #0x1003bd000
  10004b6e0  add     x2, x2, #0x230                           ; @"frequency"
  10004b6e4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:@"frequency"]
  10004b6e8  mov     x22, x0
  10004b6ec  mov     x0, x21
  10004b6f0  bl      _objc_release
  10004b6f4  adrp    x8, #0x10041d000
  10004b6f8  ldr     x0, [x8, #0xf78]                         ; class NSString
  10004b6fc  adrp    x8, #0x100416000
  10004b700  nop
  10004b704  ldr     x1, [x8, #0xee8]
  10004b708  str     x22, [sp]
  10004b70c  adrp    x2, #0x1003ba000
  10004b710  add     x2, x2, #0x450                           ; @"level_%i"
  10004b714  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForPowerUpWithName:@"frequency"]]
  10004b718  mov     x29, x29
  10004b71c  bl      _objc_retainAutoreleasedReturnValue
  10004b720  mov     x21, x0
  10004b724  adrp    x8, #0x100417000
  10004b728  nop
  10004b72c  ldr     x23, [x8, #0x40]
  10004b730  mov     x0, x19
  10004b734  mov     x1, x23
  10004b738  mov     x2, x21
  10004b73c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"frequency"] objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForPowerUpWithName:@"frequency"]]]
  10004b740  mov     x29, x29
  10004b744  bl      _objc_retainAutoreleasedReturnValue
  10004b748  mov     x22, x0
  10004b74c  adrp    x2, #0x1003bd000
  10004b750  add     x2, x2, #0x250                           ; @"cooldownTime"
  10004b754  mov     x1, x23
  10004b758  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"frequency"] objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForPowerUpWithName:@"frequency"]]] objectForKey:@"cooldownTime"]
  10004b75c  mov     x29, x29
  10004b760  bl      _objc_retainAutoreleasedReturnValue
  10004b764  mov     x23, x0
  10004b768  adrp    x8, #0x100417000
  10004b76c  nop
  10004b770  ldr     x1, [x8, #0x110]
  10004b774  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"frequency"] objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForPowerUpWithName:@"frequency"]]] objectForKey:@"cooldownTime"] intValue]
  10004b778  scvtf   s0, w0                                   ; t1 = (float)[[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"frequency"] objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForPowerUpWithName:@"frequency"]]] objectForKey:@"cooldownTime"] intValue]
  10004b77c  adrp    x8, #0x10041f000
  10004b780  ldrsw   x24, [x8, #0xa10]                        ; ivar offset ADPowerUpManager.powerupCoolDown (+0x8)
  10004b784  str     s0, [x20, x24]                           ; self->powerupCoolDown = t1
  10004b788  mov     x0, x23
  10004b78c  bl      _objc_release
  10004b790  mov     x0, x22
  10004b794  bl      _objc_release
  10004b798  mov     x0, x21
  10004b79c  bl      _objc_release
  10004b7a0  adrp    x8, #0x10041e000
  10004b7a4  ldr     x0, [x8]                                 ; class ADGameModifiers
  10004b7a8  adrp    x8, #0x100417000
  10004b7ac  nop
  10004b7b0  ldr     x1, [x8, #0x510]
  10004b7b4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10004b7b8  mov     x29, x29
  10004b7bc  bl      _objc_retainAutoreleasedReturnValue
  10004b7c0  mov     x21, x0
  10004b7c4  adrp    x8, #0x100418000
  10004b7c8  nop
  10004b7cc  ldr     x1, [x8, #0xb60]
  10004b7d0  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] morePowerUps]
  10004b7d4  mov     x22, x0
  10004b7d8  mov     x0, x21
  10004b7dc  bl      _objc_release
  10004b7e0  cbz     w22, loc_10004b7f4                       ; if ([[ADGameModifiers sharedModifiers] morePowerUps] == 0)
  10004b7e4  ldr     s0, [x20, x24]                           ; s0 = self->powerupCoolDown
  10004b7e8  fmov    s1, #-10.00000000
  10004b7ec  fadd    s0, s0, s1
  10004b7f0  str     s0, [x20, x24]                           ; self->powerupCoolDown = (self->powerupCoolDown + -10)
loc_10004b7f4:
  10004b7f4  mov     x0, x19
  10004b7f8  sub     sp, x29, #0x30
  10004b7fc  ldp     x29, x30, [sp, #0x30]
  10004b800  ldp     x20, x19, [sp, #0x20]
  10004b804  ldp     x22, x21, [sp, #0x10]
  10004b808  ldp     x24, x23, [sp], #0x40
  10004b80c  b       _objc_release
  10004b810  mov     x20, x0
  10004b814  b       loc_10004b858
  10004b818  mov     x20, x0
  10004b81c  mov     x0, x21
  10004b820  b       loc_10004b85c
  10004b824  b       loc_10004b84c
  10004b828  b       loc_10004b84c
  10004b82c  mov     x20, x0
  10004b830  b       loc_10004b840
  10004b834  mov     x20, x0
  10004b838  mov     x0, x23
  10004b83c  bl      _objc_release
loc_10004b840:
  10004b840  mov     x0, x22
  10004b844  bl      _objc_release
  10004b848  b       loc_10004b850
loc_10004b84c:
  10004b84c  mov     x20, x0
loc_10004b850:
  10004b850  mov     x0, x21
  10004b854  bl      _objc_release
loc_10004b858:
  10004b858  mov     x0, x19
loc_10004b85c:
  10004b85c  bl      _objc_release
  10004b860  mov     x0, x20
  10004b864  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUpManager tryToPopPowerUp]
; address 0x10004b868  size 92  kind objc
; ======================================================================
  10004b868  stp     x29, x30, [sp, #-0x10]!
  10004b86c  mov     x29, sp
  10004b870  sub     sp, sp, #0x10
  10004b874  adrp    x8, #0x10041f000
  10004b878  ldrsw   x8, [x8, #0xa10]                         ; ivar offset ADPowerUpManager.powerupCoolDown (+0x8)
  10004b87c  ldr     s0, [x0, x8]                             ; s0 = self->powerupCoolDown
  10004b880  fcmp    s0, #0.0
  10004b884  b.le    loc_10004b8a8                            ; if (self->powerupCoolDown <= (or unordered) 0.0)
  10004b888  fcvt    d0, s0
  10004b88c  str     d0, [sp]
  10004b890  adrp    x0, #0x1003bd000
  10004b894  add     x0, x0, #0x270                           ; @"Cooldown has %f seconds left, can't pop powerup"
  10004b898  bl      _NSLog                                   ; NSLog(@"Cooldown has %f seconds left, can't pop powerup", _cmd, self->powerupCoolDown)
  10004b89c  mov     sp, x29
  10004b8a0  ldp     x29, x30, [sp], #0x10
  10004b8a4  ret
loc_10004b8a8:
  10004b8a8  mov     w2, #0
  10004b8ac  adrp    x8, #0x100418000
  10004b8b0  nop
  10004b8b4  ldr     x1, [x8, #0xb68]
  10004b8b8  mov     sp, x29
  10004b8bc  ldp     x29, x30, [sp], #0x10
  10004b8c0  b       _objc_msgSend                            ; [self popPowerUpWithType:0]

; ======================================================================
; -[ADPowerUpManager popPowerUpWithType:]
; address 0x10004b8c4  size 432  kind objc
; ======================================================================
  10004b8c4  stp     x24, x23, [sp, #-0x40]!
  10004b8c8  stp     x22, x21, [sp, #0x10]
  10004b8cc  stp     x20, x19, [sp, #0x20]
  10004b8d0  stp     x29, x30, [sp, #0x30]
  10004b8d4  add     x29, sp, #0x30
  10004b8d8  mov     x21, x2
  10004b8dc  mov     x20, x0
  10004b8e0  adrp    x8, #0x10041e000
  10004b8e4  ldr     x0, [x8, #0x1c0]                         ; class ADPowerUpContainer
  10004b8e8  adrp    x8, #0x100416000
  10004b8ec  nop
  10004b8f0  ldr     x1, [x8, #0xac8]
  10004b8f4  bl      _objc_msgSend                            ; [ADPowerUpContainer alloc]
  10004b8f8  adrp    x8, #0x100418000
  10004b8fc  nop
  10004b900  ldr     x1, [x8, #0xb70]
  10004b904  adrp    x2, #0x1003bd000
  10004b908  add     x2, x2, #0x290                           ; @"PowerUpContainer"
  10004b90c  bl      _objc_msgSend                            ; [[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"]
  10004b910  mov     x19, x0
  10004b914  adrp    x8, #0x100418000
  10004b918  nop
  10004b91c  ldr     x1, [x8, #0xb78]
  10004b920  mov     x2, x21
  10004b924  bl      _objc_msgSend                            ; [[[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"] setPowerUpType:arg1]
  10004b928  adrp    x8, #0x100418000
  10004b92c  nop
  10004b930  ldr     x1, [x8, #0xb80]
  10004b934  mov     x0, x19
  10004b938  bl      _objc_msgSend                            ; [[[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"] activatePlaylist]
  10004b93c  adrp    x8, #0x100418000
  10004b940  nop
  10004b944  ldr     x1, [x8, #0xb88]
  10004b948  mov     w2, #5
  10004b94c  mov     x0, x19
  10004b950  bl      _objc_msgSend                            ; [[[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"] setRandomPositionAtDistance:5]
  10004b954  adrp    x23, #0x10041e000
  10004b958  ldr     x0, [x23, #0x98]                         ; class ADBrickManager
  10004b95c  adrp    x8, #0x100417000
  10004b960  nop
  10004b964  ldr     x21, [x8, #0xaa8]
  10004b968  mov     x1, x21
  10004b96c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10004b970  mov     x29, x29
  10004b974  bl      _objc_retainAutoreleasedReturnValue
  10004b978  mov     x22, x0
  10004b97c  adrp    x8, #0x100418000
  10004b980  nop
  10004b984  ldr     x1, [x8, #0xb90]
  10004b988  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] passersByCount]
  10004b98c  mov     w8, #0x30000
  10004b990  movk    w8, #0xd40
  10004b994  add     w2, w0, w8
  10004b998  adrp    x8, #0x100417000
  10004b99c  nop
  10004b9a0  ldr     x1, [x8, #0x670]
  10004b9a4  mov     x0, x19
  10004b9a8  bl      _objc_msgSend                            ; [[[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"] setTag:([[ADBrickManager sharedBrickManager] passersByCount] + 0x30d40)]
  10004b9ac  mov     x0, x22
  10004b9b0  bl      _objc_release
  10004b9b4  adrp    x8, #0x100416000
  10004b9b8  nop
  10004b9bc  ldr     x1, [x8, #0xc78]
  10004b9c0  mov     w2, #0
  10004b9c4  mov     x0, x19
  10004b9c8  bl      _objc_msgSend                            ; [[[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"] setState:0]
  10004b9cc  adrp    x8, #0x100418000
  10004b9d0  nop
  10004b9d4  ldr     x1, [x8, #0xb98]
  10004b9d8  fmov    s0, #2.00000000
  10004b9dc  mov     x0, x19
  10004b9e0  bl      _objc_msgSend                            ; [[[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"] setSpawn_time:2]
  10004b9e4  ldr     x0, [x23, #0x98]                         ; class ADBrickManager
  10004b9e8  mov     x1, x21
  10004b9ec  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10004b9f0  mov     x29, x29
  10004b9f4  bl      _objc_retainAutoreleasedReturnValue
  10004b9f8  mov     x21, x0
  10004b9fc  adrp    x8, #0x100418000
  10004ba00  nop
  10004ba04  ldr     x1, [x8, #0xba0]
  10004ba08  mov     x2, x19
  10004ba0c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] addPasserBy:[[ADPowerUpContainer alloc] initWithName:@"PowerUpContainer"]]
  10004ba10  mov     x0, x21
  10004ba14  bl      _objc_release
  10004ba18  adrp    x8, #0x100418000
  10004ba1c  nop
  10004ba20  ldr     x1, [x8, #0xb50]
  10004ba24  mov     x0, x20
  10004ba28  bl      _objc_msgSend                            ; [self resetPowerUpCooldown]
  10004ba2c  mov     x0, x19
  10004ba30  ldp     x29, x30, [sp, #0x30]
  10004ba34  ldp     x20, x19, [sp, #0x20]
  10004ba38  ldp     x22, x21, [sp, #0x10]
  10004ba3c  ldp     x24, x23, [sp], #0x40
  10004ba40  b       _objc_release
  10004ba44  mov     x20, x0
  10004ba48  b       loc_10004ba64
  10004ba4c  mov     x20, x0
  10004ba50  mov     x0, x22
  10004ba54  b       loc_10004ba60
  10004ba58  mov     x20, x0
  10004ba5c  mov     x0, x21
loc_10004ba60:
  10004ba60  bl      _objc_release
loc_10004ba64:
  10004ba64  mov     x0, x19
  10004ba68  bl      _objc_release
  10004ba6c  mov     x0, x20
  10004ba70  bl      __Unwind_Resume                          ; Unwind_Resume()
