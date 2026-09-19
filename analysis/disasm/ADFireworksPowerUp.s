// unit ADFireworksPowerUp — 12 functions
//   0x100091770     240  -[ADFireworksPowerUp preload]
//   0x100091860    1464  -[ADFireworksPowerUp use]
//   0x100091e18     204  -[ADFireworksPowerUp update:]
//   0x100091ee4     152  -[ADFireworksPowerUp randomizeNextExplosionTime]
//   0x100091f7c     840  -[ADFireworksPowerUp playRandomExplosion]
//   0x1000922c4     388  -[ADFireworksPowerUp clean]
//   0x100092448      20  -[ADFireworksPowerUp dispersal]
//   0x10009245c      20  -[ADFireworksPowerUp setDispersal:]
//   0x100092470      20  -[ADFireworksPowerUp radius]
//   0x100092484      20  -[ADFireworksPowerUp setRadius:]
//   0x100092498      20  -[ADFireworksPowerUp damages]
//   0x1000924ac      20  -[ADFireworksPowerUp setDamages:]

; ======================================================================
; -[ADFireworksPowerUp preload]
; address 0x100091770  size 240  kind objc
; ======================================================================
  100091770  stp     x22, x21, [sp, #-0x30]!
  100091774  stp     x20, x19, [sp, #0x10]
  100091778  stp     x29, x30, [sp, #0x20]
  10009177c  add     x29, sp, #0x20
  100091780  mov     x19, x0
  100091784  adrp    x8, #0x10041d000
  100091788  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10009178c  adrp    x8, #0x100417000
  100091790  nop
  100091794  ldr     x1, [x8, #0x4f0]
  100091798  bl      _objc_msgSend                            ; [S3DEngine engine]
  10009179c  mov     x29, x29
  1000917a0  bl      _objc_retainAutoreleasedReturnValue
  1000917a4  mov     x20, x0
  1000917a8  adrp    x8, #0x100417000
  1000917ac  nop
  1000917b0  ldr     x1, [x8, #0x4f8]
  1000917b4  adrp    x2, #0x1003bf000
  1000917b8  add     x2, x2, #0xe10                           ; @"fireworks"
  1000917bc  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"fireworks"]
  1000917c0  mov     x29, x29
  1000917c4  bl      _objc_retainAutoreleasedReturnValue
  1000917c8  mov     x21, x0
  1000917cc  adrp    x8, #0x100417000
  1000917d0  nop
  1000917d4  ldr     x1, [x8, #0x500]
  1000917d8  mov     x0, x19
  1000917dc  mov     x2, x21
  1000917e0  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:@"fireworks"]]
  1000917e4  mov     x0, x21
  1000917e8  bl      _objc_release
  1000917ec  mov     x0, x20
  1000917f0  bl      _objc_release
  1000917f4  adrp    x8, #0x100416000
  1000917f8  nop
  1000917fc  ldr     x1, [x8, #0xc98]
  100091800  mov     x0, x19
  100091804  bl      _objc_msgSend                            ; [self playlist]
  100091808  mov     x29, x29
  10009180c  bl      _objc_retainAutoreleasedReturnValue
  100091810  mov     x20, x0
  100091814  adrp    x8, #0x100417000
  100091818  nop
  10009181c  ldr     x1, [x8, #0x508]
  100091820  bl      _objc_msgSend                            ; [[self playlist] activate]
  100091824  mov     x0, x20
  100091828  ldp     x29, x30, [sp, #0x20]
  10009182c  ldp     x20, x19, [sp, #0x10]
  100091830  ldp     x22, x21, [sp], #0x30
  100091834  b       _objc_release
  100091838  b       loc_10009184c
  10009183c  mov     x19, x0
  100091840  mov     x0, x21
  100091844  bl      _objc_release
  100091848  b       loc_100091850
loc_10009184c:
  10009184c  mov     x19, x0
loc_100091850:
  100091850  mov     x0, x20
  100091854  bl      _objc_release
  100091858  mov     x0, x19
  10009185c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADFireworksPowerUp use]
; address 0x100091860  size 1464  kind objc
; ======================================================================
  100091860  stp     x28, x27, [sp, #-0x60]!
  100091864  stp     x26, x25, [sp, #0x10]
  100091868  stp     x24, x23, [sp, #0x20]
  10009186c  stp     x22, x21, [sp, #0x30]
  100091870  stp     x20, x19, [sp, #0x40]
  100091874  stp     x29, x30, [sp, #0x50]
  100091878  add     x29, sp, #0x50
  10009187c  sub     sp, sp, #0x40
  100091880  mov     x21, x0
  100091884  adrp    x8, #0x100416000
  100091888  nop
  10009188c  ldr     x1, [x8, #0xc98]
  100091890  bl      _objc_msgSend                            ; [self playlist]
  100091894  mov     x29, x29
  100091898  bl      _objc_retainAutoreleasedReturnValue
  10009189c  mov     x20, x0
  1000918a0  adrp    x8, #0x100417000
  1000918a4  nop
  1000918a8  ldr     x1, [x8, #0x990]
  1000918ac  adrp    x2, #0x1003bf000
  1000918b0  add     x2, x2, #0xe30                           ; @"fireworks_launch"
  1000918b4  bl      _objc_msgSend                            ; [[self playlist] S3DSound:@"fireworks_launch"]
  1000918b8  mov     x29, x29
  1000918bc  bl      _objc_retainAutoreleasedReturnValue
  1000918c0  mov     x19, x0
  1000918c4  mov     x0, x20
  1000918c8  bl      _objc_release
  1000918cc  adrp    x8, #0x100416000
  1000918d0  nop
  1000918d4  ldr     x1, [x8, #0xcb8]
  1000918d8  mov     w2, #0
  1000918dc  mov     x0, x19
  1000918e0  bl      _objc_msgSend                            ; [[[self playlist] S3DSound:@"fireworks_launch"] play:0]
  1000918e4  adrp    x8, #0x100419000
  1000918e8  nop
  1000918ec  ldr     x1, [x8, #0xfd8]
  1000918f0  fmov    s0, #10.00000000
  1000918f4  mov     x0, x21
  1000918f8  bl      _objc_msgSend                            ; [self setRadius:10]
  1000918fc  adrp    x8, #0x10041d000
  100091900  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100091904  adrp    x8, #0x100417000
  100091908  nop
  10009190c  ldr     x1, [x8, #0xa0]
  100091910  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100091914  mov     x29, x29
  100091918  bl      _objc_retainAutoreleasedReturnValue
  10009191c  mov     x22, x0
  100091920  adrp    x8, #0x100418000
  100091924  nop
  100091928  ldr     x1, [x8, #0x4a0]
  10009192c  adrp    x2, #0x1003bf000
  100091930  add     x2, x2, #0xe10                           ; @"fireworks"
  100091934  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"]
  100091938  mov     x29, x29
  10009193c  bl      _objc_retainAutoreleasedReturnValue
  100091940  mov     x20, x0
  100091944  mov     x0, x22
  100091948  bl      _objc_release
  10009194c  adrp    x8, #0x10041d000
  100091950  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100091954  adrp    x8, #0x100416000
  100091958  nop
  10009195c  ldr     x1, [x8, #0xec8]
  100091960  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100091964  mov     x29, x29
  100091968  bl      _objc_retainAutoreleasedReturnValue
  10009196c  mov     x23, x0
  100091970  adrp    x8, #0x100417000
  100091974  nop
  100091978  ldr     x1, [x8, #0xd90]
  10009197c  adrp    x2, #0x1003bf000
  100091980  add     x2, x2, #0xe10                           ; @"fireworks"
  100091984  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"]
  100091988  mov     x22, x0
  10009198c  mov     x0, x23
  100091990  bl      _objc_release
  100091994  adrp    x8, #0x100417000
  100091998  nop
  10009199c  ldr     x23, [x8, #0x40]
  1000919a0  adrp    x2, #0x1003b9000
  1000919a4  add     x2, x2, #0xdb0                           ; @"name"
  1000919a8  mov     x0, x20
  1000919ac  mov     x1, x23
  1000919b0  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:@"name"]
  1000919b4  mov     x29, x29
  1000919b8  bl      _objc_retainAutoreleasedReturnValue
  1000919bc  mov     x24, x0
  1000919c0  adrp    x8, #0x100417000
  1000919c4  nop
  1000919c8  ldr     x1, [x8, #0x428]
  1000919cc  mov     x0, x21
  1000919d0  mov     x2, x24
  1000919d4  bl      _objc_msgSend                            ; [self setName:[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:@"name"]]
  1000919d8  mov     x0, x24
  1000919dc  bl      _objc_release
  1000919e0  adrp    x8, #0x10041e000
  1000919e4  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000919e8  adrp    x8, #0x100417000
  1000919ec  nop
  1000919f0  ldr     x1, [x8, #0x510]
  1000919f4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000919f8  mov     x29, x29
  1000919fc  bl      _objc_retainAutoreleasedReturnValue
  100091a00  mov     x24, x0
  100091a04  adrp    x8, #0x100419000
  100091a08  nop
  100091a0c  ldr     x1, [x8, #0xfe0]
  100091a10  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] betterPowerUps]
  100091a14  cbz     w0, loc_100091a7c                        ; if ([[ADGameModifiers sharedModifiers] betterPowerUps] == 0)
  100091a18  adrp    x8, #0x10041d000
  100091a1c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100091a20  add     w8, w22, #1
  100091a24  adrp    x9, #0x100416000
  100091a28  nop
  100091a2c  ldr     x1, [x9, #0xee8]
  100091a30  str     x8, [sp]
  100091a34  adrp    x2, #0x1003ba000
  100091a38  add     x2, x2, #0x450                           ; @"level_%i"
  100091a3c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"] + 1)]
  100091a40  mov     x29, x29
  100091a44  bl      _objc_retainAutoreleasedReturnValue
  100091a48  mov     x25, x0
  100091a4c  mov     x0, x20
  100091a50  mov     x1, x23
  100091a54  mov     x2, x25
  100091a58  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"] + 1)]]
  100091a5c  mov     x29, x29
  100091a60  bl      _objc_retainAutoreleasedReturnValue
  100091a64  cmp     x0, #0
  100091a68  cset    w26, ne                                  ; t1 = ([[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:[NSString stringWithForm… != 0)
  100091a6c  bl      _objc_release
  100091a70  mov     x0, x25
  100091a74  bl      _objc_release
  100091a78  b       loc_100091a80
loc_100091a7c:
  100091a7c  mov     w26, #0
loc_100091a80:
  100091a80  mov     x0, x24
  100091a84  bl      _objc_release
  100091a88  add     w8, w26, w22
  100091a8c  adrp    x9, #0x10041d000
  100091a90  ldr     x0, [x9, #0xf78]                         ; class NSString
  100091a94  adrp    x9, #0x100416000
  100091a98  nop
  100091a9c  ldr     x1, [x9, #0xee8]
  100091aa0  str     x8, [sp]
  100091aa4  adrp    x2, #0x1003ba000
  100091aa8  add     x2, x2, #0x450                           ; @"level_%i"
  100091aac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"])]
  100091ab0  mov     x29, x29
  100091ab4  bl      _objc_retainAutoreleasedReturnValue
  100091ab8  mov     x24, x0
  100091abc  mov     x0, x20
  100091ac0  mov     x1, x23
  100091ac4  mov     x2, x24
  100091ac8  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"])]]
  100091acc  mov     x29, x29
  100091ad0  bl      _objc_retainAutoreleasedReturnValue
  100091ad4  mov     x25, x0
  100091ad8  adrp    x22, #0x1003ba000
  100091adc  add     x22, x22, #0x490                         ; @"damages"
  100091ae0  mov     x1, x23
  100091ae4  mov     x2, x22
  100091ae8  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"])]] objectForKey:@"damages"]
  100091aec  mov     x29, x29
  100091af0  bl      _objc_retainAutoreleasedReturnValue
  100091af4  mov     x23, x0
  100091af8  adrp    x8, #0x100417000
  100091afc  nop
  100091b00  ldr     x1, [x8, #0x110]
  100091b04  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"])]] objectForKey:@"damages"] intValue]
  100091b08  scvtf   s0, w0                                   ; t2 = (float)[[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"fireworks"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"fireworks"])]] objectForKey:@"damages"] intValue]
  100091b0c  adrp    x8, #0x100417000
  100091b10  nop
  100091b14  ldr     x1, [x8, #0x470]
  100091b18  mov     x0, x21
  100091b1c  bl      _objc_msgSend                            ; [self setDamages:t2]
  100091b20  mov     x0, x23
  100091b24  bl      _objc_release
  100091b28  mov     x0, x25
  100091b2c  bl      _objc_release
  100091b30  mov     x0, x24
  100091b34  bl      _objc_release
  100091b38  adrp    x8, #0x100417000
  100091b3c  nop
  100091b40  ldr     x1, [x8, #0x4a0]
  100091b44  nop
  100091b48  ldr     s0, #0x100181ac0                         ; s0 = 50.0
  100091b4c  mov     x0, x21
  100091b50  bl      _objc_msgSend                            ; [self setDispersal:50]
  100091b54  adrp    x8, #0x10041f000
  100091b58  adrp    x9, #0x10041f000
  100091b5c  ldrsw   x8, [x8, #0xf68]                         ; ivar offset ADFireworksPowerUp.timeSinceActivation (+0x8)
  100091b60  ldrsw   x9, [x9, #0xf6c]                         ; ivar offset ADFireworksPowerUp.active (+0xc)
  100091b64  str     wzr, [x21, x8]                           ; self->timeSinceActivation = 0
  100091b68  mov     w8, #1
  100091b6c  strb    w8, [x21, x9]                            ; self->active = 1
  100091b70  adrp    x8, #0x100419000
  100091b74  nop
  100091b78  ldr     x1, [x8, #0xfe8]
  100091b7c  mov     x0, x21
  100091b80  bl      _objc_msgSend                            ; [self randomizeNextExplosionTime]
  100091b84  adrp    x8, #0x10041d000
  100091b88  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100091b8c  adrp    x8, #0x100416000
  100091b90  nop
  100091b94  ldr     x1, [x8, #0xac8]
  100091b98  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100091b9c  mov     x24, x0
  100091ba0  adrp    x27, #0x10041d000
  100091ba4  ldr     x23, [x27, #0xf68]                       ; class NSNumber
  100091ba8  adrp    x8, #0x100419000
  100091bac  nop
  100091bb0  ldr     x1, [x8, #0xff0]
  100091bb4  mov     x0, x21
  100091bb8  bl      _objc_msgSend                            ; [self radius]
  100091bbc  adrp    x8, #0x100418000
  100091bc0  nop
  100091bc4  ldr     x26, [x8, #0x310]
  100091bc8  mov     x0, x23
  100091bcc  mov     x1, x26
  100091bd0  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self radius]]
  100091bd4  mov     x29, x29
  100091bd8  bl      _objc_retainAutoreleasedReturnValue
  100091bdc  mov     x23, x0
  100091be0  ldr     x25, [x27, #0xf68]                       ; class NSNumber
  100091be4  adrp    x8, #0x100419000
  100091be8  nop
  100091bec  ldr     x1, [x8, #0x370]
  100091bf0  mov     x0, x21
  100091bf4  bl      _objc_msgSend                            ; [self damages]
  100091bf8  fadd    s0, s0, s0
  100091bfc  mov     x0, x25
  100091c00  mov     x1, x26
  100091c04  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:([self damages] + [self damages])]
  100091c08  mov     x29, x29
  100091c0c  bl      _objc_retainAutoreleasedReturnValue
  100091c10  mov     x25, x0
  100091c14  ldr     x27, [x27, #0xf68]                       ; class NSNumber
  100091c18  adrp    x8, #0x100419000
  100091c1c  nop
  100091c20  ldr     x1, [x8, #0x378]
  100091c24  mov     x0, x21
  100091c28  bl      _objc_msgSend                            ; [self dispersal]
  100091c2c  mov     x0, x27
  100091c30  mov     x1, x26
  100091c34  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self dispersal]]
  100091c38  mov     x29, x29
  100091c3c  bl      _objc_retainAutoreleasedReturnValue
  100091c40  mov     x26, x0
  100091c44  adrp    x8, #0x100419000
  100091c48  nop
  100091c4c  ldr     x1, [x8, #0x510]
  100091c50  adrp    x8, #0x1003ba000
  100091c54  add     x8, x8, #0x550                           ; @"dispersal"
  100091c58  stp     x8, xzr, [sp, #0x20]
  100091c5c  stp     x22, x26, [sp, #0x10]
  100091c60  adrp    x8, #0x1003bf000
  100091c64  add     x8, x8, #0xe50                           ; @"radius"
  100091c68  stp     x8, x25, [sp]
  100091c6c  mov     x0, x24
  100091c70  mov     x2, x23
  100091c74  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithFloat:[self radius]], @"radius", [NSNumber numberWithFloat:([self damages] + [self damages])], @"damages", [NSNumber numberWithFloat:[self dispersal]], @"dispersal", nil]
  100091c78  mov     x22, x0
  100091c7c  mov     x0, x26
  100091c80  bl      _objc_release
  100091c84  mov     x0, x25
  100091c88  bl      _objc_release
  100091c8c  mov     x0, x23
  100091c90  bl      _objc_release
  100091c94  adrp    x8, #0x10041e000
  100091c98  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100091c9c  adrp    x8, #0x100417000
  100091ca0  nop
  100091ca4  ldr     x1, [x8, #0xaa8]
  100091ca8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100091cac  mov     x29, x29
  100091cb0  bl      _objc_retainAutoreleasedReturnValue
  100091cb4  mov     x23, x0
  100091cb8  adrp    x8, #0x1003b0000
  100091cbc  ldr     x8, [x8, #8]                             ; _CGPointZero
  100091cc0  ldp     d0, d1, [x8]
  100091cc4  adrp    x8, #0x100419000
  100091cc8  nop
  100091ccc  ldr     x1, [x8, #0x400]
  100091cd0  adrp    x3, #0x1003bf000
  100091cd4  add     x3, x3, #0xe10                           ; @"fireworks"
  100091cd8  mov     w4, #1
  100091cdc  mov     x2, x22
  100091ce0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] solveExplosionWithDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithFloat:[self radius]], @"radius", [NSNumber numberWithFloat:([self damages] + [self damages])], @"damages", [NSNumber numberWithFloat:[self dispersal]], @"dispersal", nil] atPosition:{CGPointZero.x, CGPointZero.y} withWeaponName:@"fireworks" ignoreTinnitus:1]
  100091ce4  mov     x0, x23
  100091ce8  bl      _objc_release
  100091cec  str     x21, [sp, #0x30]
  100091cf0  adrp    x8, #0x10041e000
  100091cf4  ldr     x8, [x8, #0xe90]
  100091cf8  str     x8, [sp, #0x38]
  100091cfc  adrp    x8, #0x100417000
  100091d00  nop
  100091d04  ldr     x1, [x8, #0x9c0]
  100091d08  add     x0, sp, #0x30
  100091d0c  bl      _objc_msgSendSuper2                      ; [super use]
  100091d10  mov     x0, x22
  100091d14  bl      _objc_release
  100091d18  mov     x0, x20
  100091d1c  bl      _objc_release
  100091d20  mov     x0, x19
  100091d24  bl      _objc_release
  100091d28  sub     sp, x29, #0x50
  100091d2c  ldp     x29, x30, [sp, #0x50]
  100091d30  ldp     x20, x19, [sp, #0x40]
  100091d34  ldp     x22, x21, [sp, #0x30]
  100091d38  ldp     x24, x23, [sp, #0x20]
  100091d3c  ldp     x26, x25, [sp, #0x10]
  100091d40  ldp     x28, x27, [sp], #0x60
  100091d44  ret
  100091d48  mov     x21, x0
  100091d4c  b       loc_100091e00
  100091d50  mov     x21, x0
  100091d54  b       loc_100091e08
  100091d58  mov     x21, x0
  100091d5c  mov     x0, x23
  100091d60  bl      _objc_release
  100091d64  b       loc_100091df0
  100091d68  mov     x21, x0
  100091d6c  b       loc_100091dd0
  100091d70  mov     x21, x0
  100091d74  b       loc_100091dc8
  100091d78  mov     x21, x0
  100091d7c  b       loc_100091de4
  100091d80  mov     x21, x0
  100091d84  b       loc_100091df8
  100091d88  mov     x21, x0
  100091d8c  mov     x0, x20
  100091d90  b       loc_100091e0c
  100091d94  mov     x21, x0
  100091d98  mov     x0, x22
  100091d9c  b       loc_100091e04
  100091da0  mov     x21, x0
  100091da4  b       loc_100091dd0
  100091da8  mov     x21, x0
  100091dac  b       loc_100091df8
  100091db0  mov     x21, x0
  100091db4  b       loc_100091df8
  100091db8  b       loc_100091dec
  100091dbc  mov     x21, x0
  100091dc0  mov     x0, x26
  100091dc4  bl      _objc_release
loc_100091dc8:
  100091dc8  mov     x0, x25
  100091dcc  bl      _objc_release
loc_100091dd0:
  100091dd0  mov     x0, x23
  100091dd4  b       loc_100091dfc
  100091dd8  mov     x21, x0
  100091ddc  mov     x0, x23
  100091de0  bl      _objc_release
loc_100091de4:
  100091de4  mov     x0, x22
  100091de8  b       loc_100091dfc
loc_100091dec:
  100091dec  mov     x21, x0
loc_100091df0:
  100091df0  mov     x0, x25
  100091df4  bl      _objc_release
loc_100091df8:
  100091df8  mov     x0, x24
loc_100091dfc:
  100091dfc  bl      _objc_release
loc_100091e00:
  100091e00  mov     x0, x20
loc_100091e04:
  100091e04  bl      _objc_release
loc_100091e08:
  100091e08  mov     x0, x19
loc_100091e0c:
  100091e0c  bl      _objc_release
  100091e10  mov     x0, x21
  100091e14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADFireworksPowerUp update:]
; address 0x100091e18  size 204  kind objc
; ======================================================================
  100091e18  stp     x22, x21, [sp, #-0x30]!
  100091e1c  stp     x20, x19, [sp, #0x10]
  100091e20  stp     x29, x30, [sp, #0x20]
  100091e24  add     x29, sp, #0x20
  100091e28  mov     x19, x0
  100091e2c  adrp    x8, #0x10041f000
  100091e30  ldrsw   x20, [x8, #0xf6c]                        ; ivar offset ADFireworksPowerUp.active (+0xc)
  100091e34  ldrb    w8, [x19, x20]                           ; w8 = self->active
  100091e38  cbz     w8, loc_100091ed4                        ; if (self->active == 0)
  100091e3c  adrp    x8, #0x10041f000
  100091e40  ldrsw   x21, [x8, #0xf68]                        ; ivar offset ADFireworksPowerUp.timeSinceActivation (+0x8)
  100091e44  ldr     s1, [x19, x21]                           ; s1 = self->timeSinceActivation
  100091e48  fadd    s1, s1, s0
  100091e4c  str     s1, [x19, x21]                           ; self->timeSinceActivation = (self->timeSinceActivation + arg1)
  100091e50  fmov    s2, #1.00000000
  100091e54  fcmp    s1, s2
  100091e58  b.le    loc_100091ed4                            ; if ((self->timeSinceActivation + arg1) <= (or unordered) 1)
  100091e5c  adrp    x8, #0x10041f000
  100091e60  ldrsw   x8, [x8, #0xf70]                         ; ivar offset ADFireworksPowerUp.nextExplosionTime (+0x10)
  100091e64  ldr     s1, [x19, x8]                            ; s1 = self->nextExplosionTime
  100091e68  fsub    s0, s1, s0
  100091e6c  fcmp    s0, #0.0
  100091e70  str     s0, [x19, x8]                            ; self->nextExplosionTime = (self->nextExplosionTime - arg1)
  100091e74  b.pl    loc_100091ea0                            ; if ((self->nextExplosionTime - arg1) >= (or unordered) 0.0)
  100091e78  adrp    x8, #0x100419000
  100091e7c  nop
  100091e80  ldr     x1, [x8, #0xfe8]
  100091e84  mov     x0, x19
  100091e88  bl      _objc_msgSend                            ; [self randomizeNextExplosionTime]
  100091e8c  adrp    x8, #0x100419000
  100091e90  nop
  100091e94  ldr     x1, [x8, #0xff8]
  100091e98  mov     x0, x19
  100091e9c  bl      _objc_msgSend                            ; [self playRandomExplosion]
loc_100091ea0:
  100091ea0  ldr     s0, [x19, x21]                           ; s0 = self->timeSinceActivation
  100091ea4  fmov    s1, #8.00000000
  100091ea8  fcmp    s0, s1
  100091eac  b.le    loc_100091ed4                            ; if (self->timeSinceActivation <= (or unordered) 8)
  100091eb0  strb    wzr, [x19, x20]                          ; self->active = 0
  100091eb4  adrp    x8, #0x100419000
  100091eb8  nop
  100091ebc  ldr     x1, [x8, #0x158]
  100091ec0  mov     x0, x19
  100091ec4  ldp     x29, x30, [sp, #0x20]
  100091ec8  ldp     x20, x19, [sp, #0x10]
  100091ecc  ldp     x22, x21, [sp], #0x30
  100091ed0  b       _objc_msgSend                            ; [self clean]
loc_100091ed4:
  100091ed4  ldp     x29, x30, [sp, #0x20]
  100091ed8  ldp     x20, x19, [sp, #0x10]
  100091edc  ldp     x22, x21, [sp], #0x30
  100091ee0  ret

; ======================================================================
; -[ADFireworksPowerUp randomizeNextExplosionTime]
; address 0x100091ee4  size 152  kind objc
; ======================================================================
  100091ee4  stp     d9, d8, [sp, #-0x30]!
  100091ee8  stp     x20, x19, [sp, #0x10]
  100091eec  stp     x29, x30, [sp, #0x20]
  100091ef0  add     x29, sp, #0x20
  100091ef4  mov     x19, x0
  100091ef8  bl      _rand                                    ; rand()
  100091efc  sxtw    x8, w0
  100091f00  mov     w9, #0x51eb0000
  100091f04  movk    w9, #0x851f
  100091f08  mul     x8, x8, x9
  100091f0c  lsr     x9, x8, #0x3f
  100091f10  asr     x8, x8, #0x25
  100091f14  add     w8, w8, w9
  100091f18  mov     w9, #0x64
  100091f1c  msub    w8, w8, w9, w0
  100091f20  scvtf   d0, w8
  100091f24  nop
  100091f28  ldr     d1, #0x100181c00                         ; d1 = 200.0
  100091f2c  fdiv    d8, d0, d1                               ; t1 = ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) / 200)
  100091f30  bl      _rand                                    ; rand()
  100091f34  mov     w8, #2
  100091f38  bic     w8, w8, w0, lsl #1
  100091f3c  sub     w8, w8, #1
  100091f40  scvtf   d0, w8
  100091f44  fmul    d0, d8, d0
  100091f48  fcvt    s0, d0
  100091f4c  fcvt    d0, s0
  100091f50  nop
  100091f54  ldr     d1, #0x100181ce8                         ; d1 = 0.571428571
  100091f58  fadd    d0, d0, d1
  100091f5c  fcvt    s0, d0
  100091f60  adrp    x8, #0x10041f000
  100091f64  ldrsw   x8, [x8, #0xf70]                         ; ivar offset ADFireworksPowerUp.nextExplosionTime (+0x10)
  100091f68  str     s0, [x19, x8]                            ; self->nextExplosionTime = ((t1 * (float)((2 &~ (rand() << 1)) - 1)) + 0.571429)
  100091f6c  ldp     x29, x30, [sp, #0x20]
  100091f70  ldp     x20, x19, [sp, #0x10]
  100091f74  ldp     d9, d8, [sp], #0x30
  100091f78  ret

; ======================================================================
; -[ADFireworksPowerUp playRandomExplosion]
; address 0x100091f7c  size 840  kind objc
; ======================================================================
  100091f7c  stp     d9, d8, [sp, #-0x60]!
  100091f80  stp     x26, x25, [sp, #0x10]
  100091f84  stp     x24, x23, [sp, #0x20]
  100091f88  stp     x22, x21, [sp, #0x30]
  100091f8c  stp     x20, x19, [sp, #0x40]
  100091f90  stp     x29, x30, [sp, #0x50]
  100091f94  add     x29, sp, #0x50
  100091f98  sub     sp, sp, #0x30
  100091f9c  mov     x20, x0
  100091fa0  adrp    x8, #0x100416000
  100091fa4  nop
  100091fa8  ldr     x1, [x8, #0xc98]
  100091fac  bl      _objc_msgSend                            ; [self playlist]
  100091fb0  mov     x29, x29
  100091fb4  bl      _objc_retainAutoreleasedReturnValue
  100091fb8  mov     x21, x0
  100091fbc  adrp    x8, #0x100416000
  100091fc0  nop
  100091fc4  ldr     x1, [x8, #0xca0]
  100091fc8  adrp    x2, #0x1003bf000
  100091fcc  add     x2, x2, #0xe70                           ; @"explode"
  100091fd0  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"explode"]
  100091fd4  mov     x29, x29
  100091fd8  bl      _objc_retainAutoreleasedReturnValue
  100091fdc  mov     x19, x0
  100091fe0  mov     x0, x21
  100091fe4  bl      _objc_release
  100091fe8  adrp    x8, #0x100416000
  100091fec  nop
  100091ff0  ldr     x1, [x8, #0xca8]
  100091ff4  mov     w2, #1
  100091ff8  mov     x0, x19
  100091ffc  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"explode"] setSpatialized:1]
  100092000  bl      _rand                                    ; rand()
  100092004  mov     x21, x0
  100092008  bl      _rand                                    ; rand()
  10009200c  sxtw    x8, w21
  100092010  mov     x9, #-0x49f40001
  100092014  movk    x9, #0x60b7
  100092018  mul     x8, x8, x9
  10009201c  lsr     x8, x8, #0x20
  100092020  add     w8, w8, w21
  100092024  asr     w9, w8, #8
  100092028  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  10009202c  mov     w9, #0x168
  100092030  msub    w8, w8, w9, w21
  100092034  scvtf   s0, w8
  100092038  fcvt    d0, s0
  10009203c  nop
  100092040  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  100092044  fmul    d0, d0, d1
  100092048  nop
  10009204c  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  100092050  fdiv    d0, d0, d1
  100092054  fcvt    s0, d0
  100092058  sxtw    x8, w0
  10009205c  mov     w9, #0x55550000
  100092060  movk    w9, #0x5556
  100092064  mul     x8, x8, x9
  100092068  lsr     x9, x8, #0x3f
  10009206c  lsr     x8, x8, #0x20
  100092070  add     w8, w8, w9
  100092074  add     w8, w8, w8, lsl #1                       ; t2 = ((((rand() * 0x55555556) >>> 32) + ((rand() * 0x55555556) >>> 63)) + ((((rand() * 0x55555556) >>> 32) + ((rand() * 0x55555556) >>> 63)) << 1))
  100092078  sub     w8, w0, w8
  10009207c  add     w8, w8, #2
  100092080  scvtf   s8, w8
  100092084  bl      ___sincosf_stret                         ; d0 = sin((((float)(rand() - t1 * 360) * 3.14159) / 180)), d1 = cos((((float)(rand() - t1 * 360) * 3.14159) / 180))
  100092088  fmul    s0, s0, s8
  10009208c  fmul    s1, s1, s8
  100092090  adrp    x8, #0x100417000
  100092094  nop
  100092098  ldr     x1, [x8, #0x38]
  10009209c  movi    v2.16b, #0
  1000920a0  mov     x0, x19
  1000920a4  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"explode"] setPlanar:{(sin((((float)(rand() - t1 * 360) * 3.14159) / 180)) * (float)((rand() - t2) + 2)), (cos((((float)(rand() - t1 * 360) * 3.14159) / 180)) * (float)((rand() - t2) + 2)), 0}]
  1000920a8  adrp    x8, #0x100416000
  1000920ac  nop
  1000920b0  ldr     x1, [x8, #0xcb8]
  1000920b4  mov     w2, #0
  1000920b8  mov     x0, x19
  1000920bc  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"explode"] play:0]
  1000920c0  adrp    x8, #0x10041d000
  1000920c4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000920c8  adrp    x8, #0x100416000
  1000920cc  nop
  1000920d0  ldr     x1, [x8, #0xac8]
  1000920d4  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000920d8  mov     x22, x0
  1000920dc  adrp    x25, #0x10041d000
  1000920e0  ldr     x21, [x25, #0xf68]                       ; class NSNumber
  1000920e4  adrp    x8, #0x100419000
  1000920e8  nop
  1000920ec  ldr     x1, [x8, #0xff0]
  1000920f0  mov     x0, x20
  1000920f4  bl      _objc_msgSend                            ; [self radius]
  1000920f8  adrp    x8, #0x100418000
  1000920fc  nop
  100092100  ldr     x24, [x8, #0x310]
  100092104  mov     x0, x21
  100092108  mov     x1, x24
  10009210c  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self radius]]
  100092110  mov     x29, x29
  100092114  bl      _objc_retainAutoreleasedReturnValue
  100092118  mov     x21, x0
  10009211c  ldr     x23, [x25, #0xf68]                       ; class NSNumber
  100092120  adrp    x8, #0x100419000
  100092124  nop
  100092128  ldr     x1, [x8, #0x370]
  10009212c  mov     x0, x20
  100092130  bl      _objc_msgSend                            ; [self damages]
  100092134  mov     x0, x23
  100092138  mov     x1, x24
  10009213c  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self damages]]
  100092140  mov     x29, x29
  100092144  bl      _objc_retainAutoreleasedReturnValue
  100092148  mov     x23, x0
  10009214c  ldr     x25, [x25, #0xf68]                       ; class NSNumber
  100092150  adrp    x8, #0x100419000
  100092154  nop
  100092158  ldr     x1, [x8, #0x378]
  10009215c  mov     x0, x20
  100092160  bl      _objc_msgSend                            ; [self dispersal]
  100092164  mov     x0, x25
  100092168  mov     x1, x24
  10009216c  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self dispersal]]
  100092170  mov     x29, x29
  100092174  bl      _objc_retainAutoreleasedReturnValue
  100092178  mov     x24, x0
  10009217c  adrp    x8, #0x100419000
  100092180  nop
  100092184  ldr     x1, [x8, #0x510]
  100092188  adrp    x8, #0x1003ba000
  10009218c  add     x8, x8, #0x550                           ; @"dispersal"
  100092190  adrp    x9, #0x1003ba000
  100092194  add     x9, x9, #0x490                           ; @"damages"
  100092198  stp     x8, xzr, [sp, #0x20]
  10009219c  stp     x9, x24, [sp, #0x10]
  1000921a0  adrp    x8, #0x1003bf000
  1000921a4  add     x8, x8, #0xe50                           ; @"radius"
  1000921a8  stp     x8, x23, [sp]
  1000921ac  mov     x0, x22
  1000921b0  mov     x2, x21
  1000921b4  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithFloat:[self radius]], @"radius", [NSNumber numberWithFloat:[self damages]], @"damages", [NSNumber numberWithFloat:[self dispersal]], @"dispersal", nil]
  1000921b8  mov     x20, x0
  1000921bc  mov     x0, x24
  1000921c0  bl      _objc_release
  1000921c4  mov     x0, x23
  1000921c8  bl      _objc_release
  1000921cc  mov     x0, x21
  1000921d0  bl      _objc_release
  1000921d4  adrp    x8, #0x10041e000
  1000921d8  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000921dc  adrp    x8, #0x100417000
  1000921e0  nop
  1000921e4  ldr     x1, [x8, #0xaa8]
  1000921e8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000921ec  mov     x29, x29
  1000921f0  bl      _objc_retainAutoreleasedReturnValue
  1000921f4  mov     x21, x0
  1000921f8  adrp    x8, #0x1003b0000
  1000921fc  ldr     x8, [x8, #8]                             ; _CGPointZero
  100092200  ldp     d0, d1, [x8]
  100092204  adrp    x8, #0x100419000
  100092208  nop
  10009220c  ldr     x1, [x8, #0x400]
  100092210  adrp    x3, #0x1003bf000
  100092214  add     x3, x3, #0xe10                           ; @"fireworks"
  100092218  mov     w4, #1
  10009221c  mov     x2, x20
  100092220  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] solveExplosionWithDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithFloat:[self radius]], @"radius", [NSNumber numberWithFloat:[self damages]], @"damages", [NSNumber numberWithFloat:[self dispersal]], @"dispersal", nil] atPosition:{CGPointZero.x, CGPointZero.y} withWeaponName:@"fireworks" ignoreTinnitus:1]
  100092224  mov     x0, x21
  100092228  bl      _objc_release
  10009222c  mov     x0, x20
  100092230  bl      _objc_release
  100092234  mov     x0, x19
  100092238  sub     sp, x29, #0x50
  10009223c  ldp     x29, x30, [sp, #0x50]
  100092240  ldp     x20, x19, [sp, #0x40]
  100092244  ldp     x22, x21, [sp, #0x30]
  100092248  ldp     x24, x23, [sp, #0x20]
  10009224c  ldp     x26, x25, [sp, #0x10]
  100092250  ldp     d9, d8, [sp], #0x60
  100092254  b       _objc_release
  100092258  mov     x22, x0
  10009225c  b       loc_1000922b4
  100092260  mov     x22, x0
  100092264  b       loc_100092290
  100092268  mov     x22, x0
  10009226c  b       loc_100092288
  100092270  mov     x22, x0
  100092274  mov     x0, x21
  100092278  b       loc_1000922b8
  10009227c  mov     x22, x0
  100092280  mov     x0, x24
  100092284  bl      _objc_release
loc_100092288:
  100092288  mov     x0, x23
  10009228c  bl      _objc_release
loc_100092290:
  100092290  mov     x0, x21
  100092294  b       loc_1000922b0
  100092298  mov     x22, x0
  10009229c  b       loc_1000922ac
  1000922a0  mov     x22, x0
  1000922a4  mov     x0, x21
  1000922a8  bl      _objc_release
loc_1000922ac:
  1000922ac  mov     x0, x20
loc_1000922b0:
  1000922b0  bl      _objc_release
loc_1000922b4:
  1000922b4  mov     x0, x19
loc_1000922b8:
  1000922b8  bl      _objc_release
  1000922bc  mov     x0, x22
  1000922c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADFireworksPowerUp clean]
; address 0x1000922c4  size 388  kind objc
; ======================================================================
  1000922c4  stp     x24, x23, [sp, #-0x40]!
  1000922c8  stp     x22, x21, [sp, #0x10]
  1000922cc  stp     x20, x19, [sp, #0x20]
  1000922d0  stp     x29, x30, [sp, #0x30]
  1000922d4  add     x29, sp, #0x30
  1000922d8  mov     x20, x0
  1000922dc  adrp    x8, #0x100416000
  1000922e0  nop
  1000922e4  ldr     x1, [x8, #0xc98]
  1000922e8  bl      _objc_msgSend                            ; [self playlist]
  1000922ec  mov     x29, x29
  1000922f0  bl      _objc_retainAutoreleasedReturnValue
  1000922f4  mov     x19, x0
  1000922f8  adrp    x8, #0x100417000
  1000922fc  nop
  100092300  ldr     x1, [x8, #0x618]
  100092304  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  100092308  mov     x0, x19
  10009230c  bl      _objc_release
  100092310  adrp    x8, #0x10041e000
  100092314  ldr     x0, [x8, #8]                             ; class ADTracker
  100092318  adrp    x8, #0x100416000
  10009231c  nop
  100092320  ldr     x1, [x8, #0xac0]
  100092324  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100092328  mov     x29, x29
  10009232c  bl      _objc_retainAutoreleasedReturnValue
  100092330  mov     x19, x0
  100092334  adrp    x24, #0x10041d000
  100092338  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  10009233c  adrp    x8, #0x100417000
  100092340  nop
  100092344  ldr     x21, [x8, #0x228]
  100092348  mov     x1, x21
  10009234c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100092350  mov     x29, x29
  100092354  bl      _objc_retainAutoreleasedReturnValue
  100092358  mov     x22, x0
  10009235c  adrp    x8, #0x10041a000
  100092360  nop
  100092364  ldr     x1, [x8]
  100092368  bl      _objc_msgSend                            ; [[ADInGameStats singleton] enemyKillsWithPowerup]
  10009236c  mov     x23, x0
  100092370  adrp    x8, #0x100417000
  100092374  nop
  100092378  ldr     x1, [x8, #0x450]
  10009237c  mov     x0, x20
  100092380  bl      _objc_msgSend                            ; [self name]
  100092384  mov     x29, x29
  100092388  bl      _objc_retainAutoreleasedReturnValue
  10009238c  mov     x20, x0
  100092390  adrp    x8, #0x10041a000
  100092394  nop
  100092398  ldr     x1, [x8, #8]
  10009239c  mov     x0, x19
  1000923a0  mov     x2, x23
  1000923a4  mov     x3, x20
  1000923a8  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] numberOfEnemyKills:[[ADInGameStats singleton] enemyKillsWithPowerup] ByPowerUp:[self name]]
  1000923ac  mov     x0, x20
  1000923b0  bl      _objc_release
  1000923b4  mov     x0, x22
  1000923b8  bl      _objc_release
  1000923bc  mov     x0, x19
  1000923c0  bl      _objc_release
  1000923c4  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000923c8  mov     x1, x21
  1000923cc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000923d0  mov     x29, x29
  1000923d4  bl      _objc_retainAutoreleasedReturnValue
  1000923d8  mov     x19, x0
  1000923dc  adrp    x8, #0x10041a000
  1000923e0  nop
  1000923e4  ldr     x1, [x8, #0x10]
  1000923e8  mov     x2, #0
  1000923ec  bl      _objc_msgSend                            ; [[ADInGameStats singleton] setEnemyKillsWithPowerup:0]
  1000923f0  mov     x0, x19
  1000923f4  ldp     x29, x30, [sp, #0x30]
  1000923f8  ldp     x20, x19, [sp, #0x20]
  1000923fc  ldp     x22, x21, [sp, #0x10]
  100092400  ldp     x24, x23, [sp], #0x40
  100092404  b       _objc_release
  100092408  mov     x20, x0
  10009240c  b       loc_100092428
  100092410  b       loc_100092434
  100092414  b       loc_100092434
  100092418  mov     x1, x20
  10009241c  mov     x20, x0
  100092420  mov     x0, x1
  100092424  bl      _objc_release
loc_100092428:
  100092428  mov     x0, x22
  10009242c  bl      _objc_release
  100092430  b       loc_100092438
loc_100092434:
  100092434  mov     x20, x0
loc_100092438:
  100092438  mov     x0, x19
  10009243c  bl      _objc_release
  100092440  mov     x0, x20
  100092444  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADFireworksPowerUp dispersal]
; address 0x100092448  size 20  kind objc
; ======================================================================
  100092448  adrp    x8, #0x10041f000
  10009244c  ldrsw   x8, [x8, #0xf74]                         ; ivar offset ADFireworksPowerUp._dispersal (+0x14)
  100092450  ldr     w8, [x0, x8]                             ; w8 = self->_dispersal
  100092454  fmov    s0, w8
  100092458  ret

; ======================================================================
; -[ADFireworksPowerUp setDispersal:]
; address 0x10009245c  size 20  kind objc
; ======================================================================
  10009245c  fmov    w8, s0
  100092460  adrp    x9, #0x10041f000
  100092464  ldrsw   x9, [x9, #0xf74]                         ; ivar offset ADFireworksPowerUp._dispersal (+0x14)
  100092468  str     w8, [x0, x9]                             ; self->_dispersal = arg1
  10009246c  ret

; ======================================================================
; -[ADFireworksPowerUp radius]
; address 0x100092470  size 20  kind objc
; ======================================================================
  100092470  adrp    x8, #0x10041f000
  100092474  ldrsw   x8, [x8, #0xf78]                         ; ivar offset ADFireworksPowerUp._radius (+0x18)
  100092478  ldr     w8, [x0, x8]                             ; w8 = self->_radius
  10009247c  fmov    s0, w8
  100092480  ret

; ======================================================================
; -[ADFireworksPowerUp setRadius:]
; address 0x100092484  size 20  kind objc
; ======================================================================
  100092484  fmov    w8, s0
  100092488  adrp    x9, #0x10041f000
  10009248c  ldrsw   x9, [x9, #0xf78]                         ; ivar offset ADFireworksPowerUp._radius (+0x18)
  100092490  str     w8, [x0, x9]                             ; self->_radius = arg1
  100092494  ret

; ======================================================================
; -[ADFireworksPowerUp damages]
; address 0x100092498  size 20  kind objc
; ======================================================================
  100092498  adrp    x8, #0x10041f000
  10009249c  ldrsw   x8, [x8, #0xf7c]                         ; ivar offset ADFireworksPowerUp._damages (+0x1c)
  1000924a0  ldr     w8, [x0, x8]                             ; w8 = self->_damages
  1000924a4  fmov    s0, w8
  1000924a8  ret

; ======================================================================
; -[ADFireworksPowerUp setDamages:]
; address 0x1000924ac  size 20  kind objc
; ======================================================================
  1000924ac  fmov    w8, s0
  1000924b0  adrp    x9, #0x10041f000
  1000924b4  ldrsw   x9, [x9, #0xf7c]                         ; ivar offset ADFireworksPowerUp._damages (+0x1c)
  1000924b8  str     w8, [x0, x9]                             ; self->_damages = arg1
  1000924bc  ret
