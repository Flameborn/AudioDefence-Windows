// unit ADArmoryWeaponDescriptionViewController — 57 functions
//   0x100092afc     452  -[ADArmoryWeaponDescriptionViewController initWithWeaponDictionary:]
//   0x100092cc0     656  -[ADArmoryWeaponDescriptionViewController viewDidLoad]
//   0x100092f50    1408  -[ADArmoryWeaponDescriptionViewController loadView]
//   0x1000934d0     672  -[ADArmoryWeaponDescriptionViewController viewWillAppear:]
//   0x100093770      92  -[ADArmoryWeaponDescriptionViewController handleBackActionFromStatusBar]
//   0x1000937cc    1048  -[ADArmoryWeaponDescriptionViewController initForCurrentLevel]
//   0x100093be4    1920  -[ADArmoryWeaponDescriptionViewController setStatBars]
//   0x100094364    1700  -[ADArmoryWeaponDescriptionViewController checkLock]
//   0x100094a08      32  -[ADArmoryWeaponDescriptionViewController cancelBuyOrUpgradeButtonPressed:]
//   0x100094a28    3920  -[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]
//   0x100095978     288  -[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke
//   0x100095a98       8  sub_100095a98
//   0x100095aa0       8  sub_100095aa0
//   0x100095aa8     232  -[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke_2
//   0x100095b90       8  sub_100095b90
//   0x100095b98       8  sub_100095b98
//   0x100095ba0     308  -[ADArmoryWeaponDescriptionViewController showNextLevel]
//   0x100095cd4    2908  -[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]
//   0x100096830      20  -[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke
//   0x100096844       8  sub_100096844
//   0x10009684c       8  sub_10009684c
//   0x100096854      20  -[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke_2
//   0x100096868       8  sub_100096868
//   0x100096870       8  sub_100096870
//   0x100096878    1056  -[ADArmoryWeaponDescriptionViewController checkEquipButtons]
//   0x100096c98     300  -[ADArmoryWeaponDescriptionViewController equipSlot1ButtonPressed:]
//   0x100096dc4     300  -[ADArmoryWeaponDescriptionViewController equipSlot2ButtonPressed:]
//   0x100096ef0     492  -[ADArmoryWeaponDescriptionViewController dealloc]
//   0x1000970dc      16  -[ADArmoryWeaponDescriptionViewController damagesView]
//   0x1000970ec      56  -[ADArmoryWeaponDescriptionViewController setDamagesView:]
//   0x100097124      16  -[ADArmoryWeaponDescriptionViewController capacityView]
//   0x100097134      56  -[ADArmoryWeaponDescriptionViewController setCapacityView:]
//   0x10009716c      16  -[ADArmoryWeaponDescriptionViewController reloadSpeedView]
//   0x10009717c      56  -[ADArmoryWeaponDescriptionViewController setReloadSpeedView:]
//   0x1000971b4      16  -[ADArmoryWeaponDescriptionViewController fireRateView]
//   0x1000971c4      56  -[ADArmoryWeaponDescriptionViewController setFireRateView:]
//   0x1000971fc      16  -[ADArmoryWeaponDescriptionViewController levelImage]
//   0x10009720c      56  -[ADArmoryWeaponDescriptionViewController setLevelImage:]
//   0x100097244      16  -[ADArmoryWeaponDescriptionViewController lockImage]
//   0x100097254      56  -[ADArmoryWeaponDescriptionViewController setLockImage:]
//   0x10009728c      16  -[ADArmoryWeaponDescriptionViewController cancelBuyOrUpgradeButton]
//   0x10009729c      56  -[ADArmoryWeaponDescriptionViewController setCancelBuyOrUpgradeButton:]
//   0x1000972d4      16  -[ADArmoryWeaponDescriptionViewController shopInfoTextView]
//   0x1000972e4      56  -[ADArmoryWeaponDescriptionViewController setShopInfoTextView:]
//   0x10009731c      16  -[ADArmoryWeaponDescriptionViewController equip1Button]
//   0x10009732c      56  -[ADArmoryWeaponDescriptionViewController setEquip1Button:]
//   0x100097364      16  -[ADArmoryWeaponDescriptionViewController equip2Button]
//   0x100097374      56  -[ADArmoryWeaponDescriptionViewController setEquip2Button:]
//   0x1000973ac      16  -[ADArmoryWeaponDescriptionViewController hideEquipButtons]
//   0x1000973bc      16  -[ADArmoryWeaponDescriptionViewController setHideEquipButtons:]
//   0x1000973cc      16  -[ADArmoryWeaponDescriptionViewController damamgesLabel]
//   0x1000973dc      56  -[ADArmoryWeaponDescriptionViewController setDamamgesLabel:]
//   0x100097414      16  -[ADArmoryWeaponDescriptionViewController capacityLabel]
//   0x100097424      56  -[ADArmoryWeaponDescriptionViewController setCapacityLabel:]
//   0x10009745c      16  -[ADArmoryWeaponDescriptionViewController effectiveAngleLabel]
//   0x10009746c      56  -[ADArmoryWeaponDescriptionViewController setEffectiveAngleLabel:]
//   0x1000974a4     384  -[ADArmoryWeaponDescriptionViewController .cxx_destruct]

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController initWithWeaponDictionary:]
; address 0x100092afc  size 452  kind objc
; ======================================================================
  100092afc  stp     x24, x23, [sp, #-0x40]!
  100092b00  stp     x22, x21, [sp, #0x10]
  100092b04  stp     x20, x19, [sp, #0x20]
  100092b08  stp     x29, x30, [sp, #0x30]
  100092b0c  add     x29, sp, #0x30
  100092b10  sub     sp, sp, #0x10
  100092b14  mov     x20, x0
  100092b18  mov     x0, x2
  100092b1c  bl      _objc_retain
  100092b20  mov     x19, x0
  100092b24  str     x20, [sp]
  100092b28  adrp    x8, #0x10041e000
  100092b2c  ldr     x8, [x8, #0xea0]
  100092b30  str     x8, [sp, #8]
  100092b34  adrp    x8, #0x100416000
  100092b38  nop
  100092b3c  ldr     x1, [x8, #0xb40]
  100092b40  mov     x21, #0
  100092b44  mov     x0, sp
  100092b48  mov     x2, #0
  100092b4c  mov     x3, #0
  100092b50  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  100092b54  mov     x20, x0
  100092b58  cbz     x20, loc_100092c5c                       ; if (self == 0)
  100092b5c  mov     x21, x20
  100092b60  adrp    x8, #0x10041f000
  100092b64  ldrsw   x22, [x8, #0xf88]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100092b68  mov     x0, x19
  100092b6c  bl      _objc_retain
  100092b70  mov     x23, x0
  100092b74  ldr     x0, [x20, x22]                           ; x0 = self->weaponInventoryDict
  100092b78  str     x23, [x20, x22]                          ; self->weaponInventoryDict = arg1
  100092b7c  bl      _objc_release
  100092b80  adrp    x8, #0x10041d000
  100092b84  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100092b88  adrp    x8, #0x100417000
  100092b8c  nop
  100092b90  ldr     x1, [x8, #0xa0]
  100092b94  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100092b98  mov     x29, x29
  100092b9c  bl      _objc_retainAutoreleasedReturnValue
  100092ba0  mov     x22, x0
  100092ba4  adrp    x8, #0x100417000
  100092ba8  nop
  100092bac  ldr     x1, [x8, #0x40]
  100092bb0  adrp    x2, #0x1003b9000
  100092bb4  add     x2, x2, #0xdb0                           ; @"name"
  100092bb8  mov     x0, x23
  100092bbc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  100092bc0  mov     x29, x29
  100092bc4  bl      _objc_retainAutoreleasedReturnValue
  100092bc8  mov     x23, x0
  100092bcc  adrp    x8, #0x100417000
  100092bd0  nop
  100092bd4  ldr     x1, [x8, #0xa48]
  100092bd8  mov     x0, x22
  100092bdc  mov     x2, x23
  100092be0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[arg1 objectForKey:@"name"]]
  100092be4  mov     x21, x20
  100092be8  mov     x29, x29
  100092bec  bl      _objc_retainAutoreleasedReturnValue
  100092bf0  adrp    x8, #0x10041f000
  100092bf4  ldrsw   x9, [x8, #0xf8c]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponStatsDict (+0x148)
  100092bf8  ldr     x8, [x20, x9]                            ; x8 = self->weaponStatsDict
  100092bfc  str     x0, [x20, x9]                            ; self->weaponStatsDict = [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[arg1 objectForKey:@"name"]]
  100092c00  mov     x0, x8
  100092c04  bl      _objc_release
  100092c08  mov     x0, x23
  100092c0c  bl      _objc_release
  100092c10  mov     x0, x22
  100092c14  bl      _objc_release
  100092c18  adrp    x8, #0x10041d000
  100092c1c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100092c20  adrp    x8, #0x100416000
  100092c24  nop
  100092c28  ldr     x1, [x8, #0xac8]
  100092c2c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100092c30  mov     x21, x20
  100092c34  adrp    x8, #0x100416000
  100092c38  nop
  100092c3c  ldr     x1, [x8, #0xab8]
  100092c40  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100092c44  adrp    x8, #0x10041f000
  100092c48  ldrsw   x9, [x8, #0xf90]                         ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  100092c4c  ldr     x8, [x20, x9]                            ; x8 = self->statBars
  100092c50  str     x0, [x20, x9]                            ; self->statBars = [[NSMutableArray alloc] init]
  100092c54  mov     x0, x8
  100092c58  bl      _objc_release
loc_100092c5c:
  100092c5c  mov     x0, x19
  100092c60  bl      _objc_release
  100092c64  mov     x0, x20
  100092c68  sub     sp, x29, #0x30
  100092c6c  ldp     x29, x30, [sp, #0x30]
  100092c70  ldp     x20, x19, [sp, #0x20]
  100092c74  ldp     x22, x21, [sp, #0x10]
  100092c78  ldp     x24, x23, [sp], #0x40
  100092c7c  ret
  100092c80  mov     x24, x0
  100092c84  b       loc_100092ca8
  100092c88  mov     x24, x0
  100092c8c  b       loc_100092c9c
  100092c90  mov     x24, x0
  100092c94  mov     x0, x23
  100092c98  bl      _objc_release
loc_100092c9c:
  100092c9c  mov     x0, x22
  100092ca0  bl      _objc_release
  100092ca4  mov     x21, x20
loc_100092ca8:
  100092ca8  mov     x0, x19
  100092cac  bl      _objc_release
  100092cb0  mov     x0, x21
  100092cb4  bl      _objc_release
  100092cb8  mov     x0, x24
  100092cbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController viewDidLoad]
; address 0x100092cc0  size 656  kind objc
; ======================================================================
  100092cc0  stp     x28, x27, [sp, #-0x60]!
  100092cc4  stp     x26, x25, [sp, #0x10]
  100092cc8  stp     x24, x23, [sp, #0x20]
  100092ccc  stp     x22, x21, [sp, #0x30]
  100092cd0  stp     x20, x19, [sp, #0x40]
  100092cd4  stp     x29, x30, [sp, #0x50]
  100092cd8  add     x29, sp, #0x50
  100092cdc  sub     sp, sp, #0x20
  100092ce0  mov     x19, x0
  100092ce4  str     x19, [sp, #0x10]
  100092ce8  adrp    x8, #0x10041e000
  100092cec  ldr     x8, [x8, #0xea0]
  100092cf0  str     x8, [sp, #0x18]
  100092cf4  adrp    x8, #0x100416000
  100092cf8  nop
  100092cfc  ldr     x1, [x8, #0xb48]
  100092d00  add     x0, sp, #0x10
  100092d04  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100092d08  adrp    x8, #0x100418000
  100092d0c  nop
  100092d10  ldr     x1, [x8, #0x488]
  100092d14  mov     x0, x19
  100092d18  bl      _objc_msgSend                            ; [self initForCurrentLevel]
  100092d1c  adrp    x8, #0x10041a000
  100092d20  nop
  100092d24  ldr     x1, [x8, #0x48]
  100092d28  mov     x0, x19
  100092d2c  bl      _objc_msgSend                            ; [self weaponTitle]
  100092d30  mov     x29, x29
  100092d34  bl      _objc_retainAutoreleasedReturnValue
  100092d38  mov     x21, x0
  100092d3c  adrp    x20, #0x10041d000
  100092d40  ldr     x0, [x20, #0xf88]                        ; class ADWeaponManager
  100092d44  adrp    x8, #0x100417000
  100092d48  nop
  100092d4c  ldr     x23, [x8, #0xa0]
  100092d50  mov     x1, x23
  100092d54  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100092d58  str     x21, [sp, #8]
  100092d5c  mov     x29, x29
  100092d60  bl      _objc_retainAutoreleasedReturnValue
  100092d64  mov     x25, x0
  100092d68  adrp    x8, #0x10041f000
  100092d6c  ldrsw   x28, [x8, #0xf88]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100092d70  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  100092d74  adrp    x8, #0x100417000
  100092d78  nop
  100092d7c  ldr     x22, [x8, #0x40]
  100092d80  adrp    x2, #0x1003b9000
  100092d84  add     x2, x2, #0xdb0                           ; @"name"
  100092d88  mov     x1, x22
  100092d8c  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100092d90  str     x23, [sp]
  100092d94  mov     x29, x29
  100092d98  bl      _objc_retainAutoreleasedReturnValue
  100092d9c  mov     x26, x0
  100092da0  adrp    x8, #0x100417000
  100092da4  nop
  100092da8  ldr     x23, [x8, #0x1f0]
  100092dac  mov     x0, x25
  100092db0  mov     x1, x23
  100092db4  mov     x2, x26
  100092db8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100092dbc  mov     x29, x29
  100092dc0  bl      _objc_retainAutoreleasedReturnValue
  100092dc4  mov     x27, x0
  100092dc8  adrp    x8, #0x100416000
  100092dcc  nop
  100092dd0  ldr     x24, [x8, #0xb68]
  100092dd4  ldr     x21, [sp, #8]
  100092dd8  mov     x0, x21
  100092ddc  mov     x1, x24
  100092de0  mov     x2, x27
  100092de4  bl      _objc_msgSend                            ; [[self weaponTitle] setText:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"name"]]]
  100092de8  mov     x0, x27
  100092dec  bl      _objc_release
  100092df0  mov     x0, x26
  100092df4  bl      _objc_release
  100092df8  mov     x0, x25
  100092dfc  bl      _objc_release
  100092e00  mov     x0, x21
  100092e04  bl      _objc_release
  100092e08  adrp    x8, #0x10041a000
  100092e0c  nop
  100092e10  ldr     x1, [x8, #0x50]
  100092e14  mov     x0, x19
  100092e18  bl      _objc_msgSend                            ; [self shopInfoTextView]
  100092e1c  mov     x29, x29
  100092e20  bl      _objc_retainAutoreleasedReturnValue
  100092e24  mov     x25, x0
  100092e28  ldr     x0, [x20, #0xf88]                        ; class ADWeaponManager
  100092e2c  ldr     x1, [sp]
  100092e30  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100092e34  mov     x29, x29
  100092e38  bl      _objc_retainAutoreleasedReturnValue
  100092e3c  mov     x21, x0
  100092e40  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  100092e44  adrp    x2, #0x1003bc000
  100092e48  add     x2, x2, #0xdf0                           ; @"description"
  100092e4c  mov     x1, x22
  100092e50  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"description"]
  100092e54  mov     x29, x29
  100092e58  bl      _objc_retainAutoreleasedReturnValue
  100092e5c  mov     x22, x0
  100092e60  mov     x0, x21
  100092e64  mov     x1, x23
  100092e68  mov     x2, x22
  100092e6c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"description"]]
  100092e70  mov     x29, x29
  100092e74  bl      _objc_retainAutoreleasedReturnValue
  100092e78  mov     x23, x0
  100092e7c  mov     x0, x25
  100092e80  mov     x1, x24
  100092e84  mov     x2, x23
  100092e88  bl      _objc_msgSend                            ; [[self shopInfoTextView] setText:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"description"]]]
  100092e8c  mov     x0, x23
  100092e90  bl      _objc_release
  100092e94  mov     x0, x22
  100092e98  bl      _objc_release
  100092e9c  mov     x0, x21
  100092ea0  bl      _objc_release
  100092ea4  mov     x0, x25
  100092ea8  bl      _objc_release
  100092eac  sub     sp, x29, #0x50
  100092eb0  ldp     x29, x30, [sp, #0x50]
  100092eb4  ldp     x20, x19, [sp, #0x40]
  100092eb8  ldp     x22, x21, [sp, #0x30]
  100092ebc  ldp     x24, x23, [sp, #0x20]
  100092ec0  ldp     x26, x25, [sp, #0x10]
  100092ec4  ldp     x28, x27, [sp], #0x60
  100092ec8  ret
  100092ecc  str     x21, [sp, #8]
  100092ed0  mov     x19, x0
  100092ed4  b       loc_100092f04
  100092ed8  mov     x19, x0
  100092edc  b       loc_100092efc
  100092ee0  mov     x19, x0
  100092ee4  b       loc_100092ef4
  100092ee8  mov     x19, x0
  100092eec  mov     x0, x27
  100092ef0  bl      _objc_release
loc_100092ef4:
  100092ef4  mov     x0, x26
  100092ef8  bl      _objc_release
loc_100092efc:
  100092efc  mov     x0, x25
  100092f00  bl      _objc_release
loc_100092f04:
  100092f04  ldr     x0, [sp, #8]
  100092f08  b       loc_100092f44
  100092f0c  mov     x19, x0
  100092f10  b       loc_100092f40
  100092f14  mov     x19, x0
  100092f18  b       loc_100092f38
  100092f1c  mov     x19, x0
  100092f20  b       loc_100092f30
  100092f24  mov     x19, x0
  100092f28  mov     x0, x23
  100092f2c  bl      _objc_release
loc_100092f30:
  100092f30  mov     x0, x22
  100092f34  bl      _objc_release
loc_100092f38:
  100092f38  mov     x0, x21
  100092f3c  bl      _objc_release
loc_100092f40:
  100092f40  mov     x0, x25
loc_100092f44:
  100092f44  bl      _objc_release
  100092f48  mov     x0, x19
  100092f4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController loadView]
; address 0x100092f50  size 1408  kind objc
; ======================================================================
  100092f50  stp     x28, x27, [sp, #-0x60]!
  100092f54  stp     x26, x25, [sp, #0x10]
  100092f58  stp     x24, x23, [sp, #0x20]
  100092f5c  stp     x22, x21, [sp, #0x30]
  100092f60  stp     x20, x19, [sp, #0x40]
  100092f64  stp     x29, x30, [sp, #0x50]
  100092f68  add     x29, sp, #0x50
  100092f6c  sub     sp, sp, #0x110
  100092f70  mov     x19, x0
  100092f74  adrp    x8, #0x1003b0000
  100092f78  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100092f7c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100092f80  stur    x8, [x29, #-0x58]
  100092f84  adrp    x8, #0x1003bf000
  100092f88  add     x8, x8, #0xed0                           ; @"buyOrUpgradeButton"
  100092f8c  str     x8, [sp, #0x38]
  100092f90  adrp    x24, #0x10041d000
  100092f94  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100092f98  adrp    x8, #0x100416000
  100092f9c  nop
  100092fa0  ldr     x25, [x8, #0xec0]
  100092fa4  mov     w2, #1
  100092fa8  mov     x1, x25
  100092fac  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100092fb0  mov     x29, x29
  100092fb4  bl      _objc_retainAutoreleasedReturnValue
  100092fb8  str     x0, [sp, #0x30]
  100092fbc  str     x0, [sp, #0xa0]
  100092fc0  adrp    x8, #0x1003bf000
  100092fc4  add     x8, x8, #0xef0                           ; @"cancelBuyOrUpgradeButton"
  100092fc8  str     x8, [sp, #0x40]
  100092fcc  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100092fd0  mov     w2, #2
  100092fd4  mov     x1, x25
  100092fd8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100092fdc  bl      _objc_retain
  100092fe0  str     x0, [sp, #0x28]
  100092fe4  str     x0, [sp, #0xa8]
  100092fe8  adrp    x8, #0x1003bf000
  100092fec  add     x8, x8, #0xf10                           ; @"capacityLabel"
  100092ff0  str     x8, [sp, #0x48]
  100092ff4  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100092ff8  mov     w2, #3
  100092ffc  mov     x1, x25
  100093000  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100093004  bl      _objc_retain
  100093008  str     x0, [sp, #0x20]
  10009300c  str     x0, [sp, #0xb0]
  100093010  adrp    x8, #0x1003bf000
  100093014  add     x8, x8, #0xf30                           ; @"capacityView"
  100093018  str     x8, [sp, #0x50]
  10009301c  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093020  mov     w2, #4
  100093024  mov     x1, x25
  100093028  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  10009302c  bl      _objc_retain
  100093030  str     x0, [sp, #0x18]
  100093034  str     x0, [sp, #0xb8]
  100093038  adrp    x8, #0x1003bf000
  10009303c  add     x8, x8, #0xf50                           ; @"damamgesLabel"
  100093040  str     x8, [sp, #0x58]
  100093044  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093048  mov     w2, #5
  10009304c  mov     x1, x25
  100093050  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  100093054  bl      _objc_retain
  100093058  str     x0, [sp, #0x10]
  10009305c  str     x0, [sp, #0xc0]
  100093060  adrp    x8, #0x1003bf000
  100093064  add     x8, x8, #0xf70                           ; @"damagesView"
  100093068  str     x8, [sp, #0x60]
  10009306c  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093070  mov     w2, #6
  100093074  mov     x1, x25
  100093078  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  10009307c  bl      _objc_retain
  100093080  mov     x26, x0
  100093084  str     x26, [sp, #0xc8]
  100093088  adrp    x8, #0x1003bf000
  10009308c  add     x8, x8, #0xf90                           ; @"effectiveAngleLabel"
  100093090  str     x8, [sp, #0x68]
  100093094  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093098  mov     w2, #7
  10009309c  mov     x1, x25
  1000930a0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  1000930a4  bl      _objc_retain
  1000930a8  mov     x27, x0
  1000930ac  str     x27, [sp, #0xd0]
  1000930b0  adrp    x8, #0x1003bf000
  1000930b4  add     x8, x8, #0xfb0                           ; @"equip1Button"
  1000930b8  str     x8, [sp, #0x70]
  1000930bc  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000930c0  mov     w2, #8
  1000930c4  mov     x1, x25
  1000930c8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:8]
  1000930cc  bl      _objc_retain
  1000930d0  mov     x28, x0
  1000930d4  str     x28, [sp, #0xd8]
  1000930d8  adrp    x8, #0x1003bf000
  1000930dc  add     x8, x8, #0xfd0                           ; @"equip2Button"
  1000930e0  str     x8, [sp, #0x78]
  1000930e4  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000930e8  mov     w2, #9
  1000930ec  mov     x1, x25
  1000930f0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:9]
  1000930f4  bl      _objc_retain
  1000930f8  mov     x20, x0
  1000930fc  str     x20, [sp, #0xe0]
  100093100  adrp    x8, #0x1003bf000
  100093104  add     x8, x8, #0xff0                           ; @"levelImage"
  100093108  str     x8, [sp, #0x80]
  10009310c  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093110  mov     w2, #0xa
  100093114  mov     x1, x25
  100093118  bl      _objc_msgSend                            ; [NSNumber numberWithInt:10]
  10009311c  bl      _objc_retain
  100093120  mov     x21, x0
  100093124  str     x21, [sp, #0xe8]
  100093128  adrp    x8, #0x1003c0000
  10009312c  add     x8, x8, #0x10                            ; @"reloadSpeedView"
  100093130  str     x8, [sp, #0x88]
  100093134  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093138  mov     w2, #0xb
  10009313c  mov     x1, x25
  100093140  bl      _objc_msgSend                            ; [NSNumber numberWithInt:11]
  100093144  bl      _objc_retain
  100093148  mov     x22, x0
  10009314c  str     x22, [sp, #0xf0]
  100093150  adrp    x8, #0x1003c0000
  100093154  add     x8, x8, #0x30                            ; @"weaponImage"
  100093158  str     x8, [sp, #0x90]
  10009315c  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093160  mov     w2, #0xc
  100093164  mov     x1, x25
  100093168  bl      _objc_msgSend                            ; [NSNumber numberWithInt:12]
  10009316c  bl      _objc_retain
  100093170  mov     x23, x0
  100093174  str     x23, [sp, #0xf8]
  100093178  adrp    x8, #0x1003c0000
  10009317c  add     x8, x8, #0x50                            ; @"weaponTitle"
  100093180  str     x8, [sp, #0x98]
  100093184  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  100093188  mov     w2, #0xd
  10009318c  mov     x1, x25
  100093190  bl      _objc_msgSend                            ; [NSNumber numberWithInt:13]
  100093194  bl      _objc_retain
  100093198  mov     x24, x0
  10009319c  str     x24, [sp, #0x100]
  1000931a0  adrp    x8, #0x10041d000
  1000931a4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000931a8  adrp    x8, #0x100416000
  1000931ac  nop
  1000931b0  ldr     x1, [x8, #0xcd0]
  1000931b4  add     x2, sp, #0xa0
  1000931b8  add     x3, sp, #0x38
  1000931bc  mov     w4, #0xd
  1000931c0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xa0] forKeys:&sp[0x38] count:13]
  1000931c4  mov     x29, x29
  1000931c8  bl      _objc_retainAutoreleasedReturnValue
  1000931cc  mov     x25, x0
  1000931d0  mov     x0, x24
  1000931d4  bl      _objc_release
  1000931d8  mov     x0, x23
  1000931dc  bl      _objc_release
  1000931e0  mov     x0, x22
  1000931e4  bl      _objc_release
  1000931e8  mov     x0, x21
  1000931ec  bl      _objc_release
  1000931f0  mov     x0, x20
  1000931f4  bl      _objc_release
  1000931f8  mov     x0, x28
  1000931fc  bl      _objc_release
  100093200  mov     x0, x27
  100093204  bl      _objc_release
  100093208  mov     x0, x26
  10009320c  bl      _objc_release
  100093210  ldr     x0, [sp, #0x10]
  100093214  bl      _objc_release
  100093218  ldr     x0, [sp, #0x18]
  10009321c  bl      _objc_release
  100093220  ldr     x0, [sp, #0x20]
  100093224  bl      _objc_release
  100093228  ldr     x0, [sp, #0x28]
  10009322c  bl      _objc_release
  100093230  ldr     x0, [sp, #0x30]
  100093234  bl      _objc_release
  100093238  adrp    x8, #0x100416000
  10009323c  nop
  100093240  ldr     x1, [x8, #0xbf0]
  100093244  adrp    x2, #0x1003c0000
  100093248  add     x2, x2, #0x70                            ; @"ADArmoryWeaponDescriptionViewController"
  10009324c  mov     x0, x19
  100093250  mov     x3, x25
  100093254  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADArmoryWeaponDescriptionViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0xa0] forKeys:&sp[0x38] count:13]]
  100093258  adrp    x8, #0x100416000
  10009325c  nop
  100093260  adrp    x9, #0x100417000
  100093264  add     x9, x9, #0xd08                           ; &@selector(viewWithTag:)
  100093268  ldr     x21, [x8, #0xf18]
  10009326c  ldr     x22, [x9]
  100093270  adrp    x8, #0x100417000
  100093274  add     x8, x8, #0x670                           ; &@selector(setTag:)
  100093278  ldr     x20, [x8]
  10009327c  mov     w23, #1
loc_100093280:
  100093280  mov     x0, x19
  100093284  mov     x1, x21
  100093288  bl      _objc_msgSend                            ; [self view]
  10009328c  mov     x29, x29
  100093290  bl      _objc_retainAutoreleasedReturnValue
  100093294  mov     x24, x0
  100093298  mov     x1, x22
  10009329c  mov     x2, x23
  1000932a0  bl      _objc_msgSend                            ; [[self view] viewWithTag:x2]
  1000932a4  mov     x29, x29
  1000932a8  bl      _objc_retainAutoreleasedReturnValue
  1000932ac  mov     x26, x0
  1000932b0  mov     x2, #0
  1000932b4  mov     x1, x20
  1000932b8  bl      _objc_msgSend                            ; [[[self view] viewWithTag:x2] setTag:0]
  1000932bc  mov     x0, x26
  1000932c0  bl      _objc_release
  1000932c4  mov     x0, x24
  1000932c8  bl      _objc_release
  1000932cc  add     x23, x23, #1
  1000932d0  cmp     w23, #0xe
  1000932d4  b.lt    loc_100093280                            ; if ((x23 + 1) < 14)
  1000932d8  adrp    x8, #0x10041a000
  1000932dc  nop
  1000932e0  ldr     x1, [x8, #0x58]
  1000932e4  mov     x0, x19
  1000932e8  bl      _objc_msgSend                            ; [self damagesView]
  1000932ec  mov     x29, x29
  1000932f0  bl      _objc_retainAutoreleasedReturnValue
  1000932f4  mov     x21, x0
  1000932f8  mov     w2, #1
  1000932fc  mov     x1, x20
  100093300  bl      _objc_msgSend                            ; [[self damagesView] setTag:1]
  100093304  mov     x0, x21
  100093308  bl      _objc_release
  10009330c  adrp    x8, #0x10041a000
  100093310  nop
  100093314  ldr     x1, [x8, #0x60]
  100093318  mov     x0, x19
  10009331c  bl      _objc_msgSend                            ; [self capacityView]
  100093320  mov     x29, x29
  100093324  bl      _objc_retainAutoreleasedReturnValue
  100093328  mov     x21, x0
  10009332c  mov     w2, #2
  100093330  mov     x1, x20
  100093334  bl      _objc_msgSend                            ; [[self capacityView] setTag:2]
  100093338  mov     x0, x21
  10009333c  bl      _objc_release
  100093340  adrp    x8, #0x10041a000
  100093344  nop
  100093348  ldr     x1, [x8, #0x68]
  10009334c  mov     x0, x19
  100093350  bl      _objc_msgSend                            ; [self reloadSpeedView]
  100093354  mov     x29, x29
  100093358  bl      _objc_retainAutoreleasedReturnValue
  10009335c  mov     x21, x0
  100093360  mov     w2, #3
  100093364  mov     x1, x20
  100093368  bl      _objc_msgSend                            ; [[self reloadSpeedView] setTag:3]
  10009336c  mov     x0, x21
  100093370  bl      _objc_release
  100093374  mov     x0, x25
  100093378  bl      _objc_release
  10009337c  ldur    x8, [x29, #-0x58]
  100093380  adrp    x9, #0x1003b0000
  100093384  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100093388  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10009338c  sub     x8, x9, x8
  100093390  cbnz    x8, loc_1000933b4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100093394  sub     sp, x29, #0x50
  100093398  ldp     x29, x30, [sp, #0x50]
  10009339c  ldp     x20, x19, [sp, #0x40]
  1000933a0  ldp     x22, x21, [sp, #0x30]
  1000933a4  ldp     x24, x23, [sp, #0x20]
  1000933a8  ldp     x26, x25, [sp, #0x10]
  1000933ac  ldp     x28, x27, [sp], #0x60
  1000933b0  ret
loc_1000933b4:
  1000933b4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000933b8:
  1000933b8  mov     x19, x0
  1000933bc  b       loc_1000933dc
  1000933c0  mov     x19, x0
  1000933c4  b       loc_1000933d4
  1000933c8  mov     x19, x0
  1000933cc  mov     x0, x26
  1000933d0  bl      _objc_release
loc_1000933d4:
  1000933d4  mov     x0, x24
loc_1000933d8:
  1000933d8  bl      _objc_release
loc_1000933dc:
  1000933dc  mov     x0, x25
loc_1000933e0:
  1000933e0  bl      _objc_release
  1000933e4  mov     x0, x19
  1000933e8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000933ec  b       loc_1000933b8
  1000933f0  mov     x19, x0
  1000933f4  b       loc_1000934b4
  1000933f8  mov     x19, x0
  1000933fc  b       loc_1000934ac
  100093400  mov     x19, x0
  100093404  b       loc_1000934a4
  100093408  mov     x19, x0
  10009340c  b       loc_10009349c
  100093410  mov     x19, x0
  100093414  b       loc_100093494
  100093418  mov     x19, x0
  10009341c  b       loc_10009348c
  100093420  mov     x19, x0
  100093424  b       loc_100093484
  100093428  mov     x19, x0
  10009342c  b       loc_10009347c
  100093430  mov     x19, x0
  100093434  b       loc_100093474
  100093438  mov     x19, x0
  10009343c  b       loc_10009346c
  100093440  mov     x19, x0
  100093444  b       loc_100093464
  100093448  mov     x19, x0
  10009344c  b       loc_10009345c
  100093450  mov     x19, x0
  100093454  mov     x0, x24
  100093458  bl      _objc_release
loc_10009345c:
  10009345c  mov     x0, x23
  100093460  bl      _objc_release
loc_100093464:
  100093464  mov     x0, x22
  100093468  bl      _objc_release
loc_10009346c:
  10009346c  mov     x0, x21
  100093470  bl      _objc_release
loc_100093474:
  100093474  mov     x0, x20
  100093478  bl      _objc_release
loc_10009347c:
  10009347c  mov     x0, x28
  100093480  bl      _objc_release
loc_100093484:
  100093484  mov     x0, x27
  100093488  bl      _objc_release
loc_10009348c:
  10009348c  mov     x0, x26
  100093490  bl      _objc_release
loc_100093494:
  100093494  ldr     x0, [sp, #0x10]
  100093498  bl      _objc_release
loc_10009349c:
  10009349c  ldr     x0, [sp, #0x18]
  1000934a0  bl      _objc_release
loc_1000934a4:
  1000934a4  ldr     x0, [sp, #0x20]
  1000934a8  bl      _objc_release
loc_1000934ac:
  1000934ac  ldr     x0, [sp, #0x28]
  1000934b0  bl      _objc_release
loc_1000934b4:
  1000934b4  ldr     x0, [sp, #0x30]
  1000934b8  b       loc_1000933e0
  1000934bc  b       loc_1000934c4
  1000934c0  b       loc_1000934c4
loc_1000934c4:
  1000934c4  mov     x19, x0
  1000934c8  mov     x0, x21
  1000934cc  b       loc_1000933d8

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController viewWillAppear:]
; address 0x1000934d0  size 672  kind objc
; ======================================================================
  1000934d0  stp     x24, x23, [sp, #-0x40]!
  1000934d4  stp     x22, x21, [sp, #0x10]
  1000934d8  stp     x20, x19, [sp, #0x20]
  1000934dc  stp     x29, x30, [sp, #0x30]
  1000934e0  add     x29, sp, #0x30
  1000934e4  sub     sp, sp, #0x20
  1000934e8  mov     x19, x2
  1000934ec  mov     x20, x0
  1000934f0  adrp    x8, #0x10041a000
  1000934f4  nop
  1000934f8  ldr     x1, [x8, #0x48]
  1000934fc  bl      _objc_msgSend                            ; [self weaponTitle]
  100093500  mov     x29, x29
  100093504  bl      _objc_retainAutoreleasedReturnValue
  100093508  mov     x21, x0
  10009350c  adrp    x8, #0x100416000
  100093510  nop
  100093514  ldr     x1, [x8, #0xb88]
  100093518  bl      _objc_msgSend                            ; [[self weaponTitle] setupAsTitle]
  10009351c  mov     x0, x21
  100093520  bl      _objc_release
  100093524  adrp    x8, #0x10041a000
  100093528  nop
  10009352c  ldr     x1, [x8, #0x70]
  100093530  mov     x0, x20
  100093534  bl      _objc_msgSend                            ; [self damamgesLabel]
  100093538  mov     x29, x29
  10009353c  bl      _objc_retainAutoreleasedReturnValue
  100093540  mov     x22, x0
  100093544  adrp    x8, #0x100416000
  100093548  nop
  10009354c  ldr     x21, [x8, #0xeb8]
  100093550  mov     x1, x21
  100093554  bl      _objc_msgSend                            ; [[self damamgesLabel] setupAsInfo]
  100093558  mov     x0, x22
  10009355c  bl      _objc_release
  100093560  adrp    x8, #0x10041a000
  100093564  nop
  100093568  ldr     x1, [x8, #0x78]
  10009356c  mov     x0, x20
  100093570  bl      _objc_msgSend                            ; [self capacityLabel]
  100093574  mov     x29, x29
  100093578  bl      _objc_retainAutoreleasedReturnValue
  10009357c  mov     x22, x0
  100093580  mov     x1, x21
  100093584  bl      _objc_msgSend                            ; [[self capacityLabel] setupAsInfo]
  100093588  mov     x0, x22
  10009358c  bl      _objc_release
  100093590  adrp    x8, #0x10041a000
  100093594  nop
  100093598  ldr     x1, [x8, #0x80]
  10009359c  mov     x0, x20
  1000935a0  bl      _objc_msgSend                            ; [self effectiveAngleLabel]
  1000935a4  mov     x29, x29
  1000935a8  bl      _objc_retainAutoreleasedReturnValue
  1000935ac  mov     x22, x0
  1000935b0  mov     x1, x21
  1000935b4  bl      _objc_msgSend                            ; [[self effectiveAngleLabel] setupAsInfo]
  1000935b8  mov     x0, x22
  1000935bc  bl      _objc_release
  1000935c0  adrp    x8, #0x100418000
  1000935c4  nop
  1000935c8  ldr     x1, [x8, #0x488]
  1000935cc  mov     x0, x20
  1000935d0  bl      _objc_msgSend                            ; [self initForCurrentLevel]
  1000935d4  adrp    x8, #0x100418000
  1000935d8  nop
  1000935dc  ldr     x1, [x8, #0x528]
  1000935e0  mov     x0, x20
  1000935e4  bl      _objc_msgSend                            ; [self checkEquipButtons]
  1000935e8  adrp    x8, #0x100418000
  1000935ec  nop
  1000935f0  ldr     x1, [x8, #0x898]
  1000935f4  mov     x0, x20
  1000935f8  bl      _objc_msgSend                            ; [self weaponImage]
  1000935fc  mov     x29, x29
  100093600  bl      _objc_retainAutoreleasedReturnValue
  100093604  mov     x21, x0
  100093608  adrp    x8, #0x10041d000
  10009360c  ldr     x24, [x8, #0xf10]                        ; class UIImage
  100093610  nop
  100093614  ldr     x23, [x8, #0xf78]                        ; class NSString
  100093618  adrp    x8, #0x10041f000
  10009361c  ldrsw   x8, [x8, #0xf88]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100093620  ldr     x0, [x20, x8]                            ; x0 = self->weaponInventoryDict
  100093624  adrp    x8, #0x100417000
  100093628  nop
  10009362c  ldr     x1, [x8, #0x40]
  100093630  adrp    x2, #0x1003b9000
  100093634  add     x2, x2, #0xdb0                           ; @"name"
  100093638  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10009363c  mov     x29, x29
  100093640  bl      _objc_retainAutoreleasedReturnValue
  100093644  mov     x22, x0
  100093648  adrp    x8, #0x100416000
  10009364c  nop
  100093650  ldr     x1, [x8, #0xee8]
  100093654  str     x22, [sp]
  100093658  adrp    x2, #0x1003b9000
  10009365c  add     x2, x2, #0xc10                           ; @"%@_icon"
  100093660  mov     x0, x23
  100093664  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [self->weaponInventoryDict objectForKey:@"name"]]
  100093668  mov     x29, x29
  10009366c  bl      _objc_retainAutoreleasedReturnValue
  100093670  mov     x23, x0
  100093674  adrp    x8, #0x100416000
  100093678  nop
  10009367c  ldr     x1, [x8, #0xd40]
  100093680  mov     x0, x24
  100093684  mov     x2, x23
  100093688  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self->weaponInventoryDict objectForKey:@"name"]]]
  10009368c  mov     x29, x29
  100093690  bl      _objc_retainAutoreleasedReturnValue
  100093694  mov     x24, x0
  100093698  adrp    x8, #0x100416000
  10009369c  nop
  1000936a0  ldr     x1, [x8, #0xef0]
  1000936a4  mov     x0, x21
  1000936a8  mov     x2, x24
  1000936ac  bl      _objc_msgSend                            ; [[self weaponImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self->weaponInventoryDict objectForKey:@"name"]]]]
  1000936b0  mov     x0, x24
  1000936b4  bl      _objc_release
  1000936b8  mov     x0, x23
  1000936bc  bl      _objc_release
  1000936c0  mov     x0, x22
  1000936c4  bl      _objc_release
  1000936c8  mov     x0, x21
  1000936cc  bl      _objc_release
  1000936d0  str     x20, [sp, #0x10]
  1000936d4  adrp    x8, #0x10041e000
  1000936d8  ldr     x8, [x8, #0xea0]
  1000936dc  str     x8, [sp, #0x18]
  1000936e0  adrp    x8, #0x100417000
  1000936e4  nop
  1000936e8  ldr     x1, [x8, #0x928]
  1000936ec  add     x0, sp, #0x10
  1000936f0  mov     x2, x19
  1000936f4  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  1000936f8  sub     sp, x29, #0x30
  1000936fc  ldp     x29, x30, [sp, #0x30]
  100093700  ldp     x20, x19, [sp, #0x20]
  100093704  ldp     x22, x21, [sp, #0x10]
  100093708  ldp     x24, x23, [sp], #0x40
  10009370c  ret
  100093710  mov     x19, x0
  100093714  b       loc_100093760
  100093718  b       loc_100093720
  10009371c  b       loc_100093720
loc_100093720:
  100093720  mov     x19, x0
  100093724  mov     x0, x22
  100093728  b       loc_100093764
  10009372c  mov     x19, x0
  100093730  b       loc_100093760
  100093734  mov     x19, x0
  100093738  b       loc_100093758
  10009373c  mov     x19, x0
  100093740  b       loc_100093750
  100093744  mov     x19, x0
  100093748  mov     x0, x24
  10009374c  bl      _objc_release
loc_100093750:
  100093750  mov     x0, x23
  100093754  bl      _objc_release
loc_100093758:
  100093758  mov     x0, x22
  10009375c  bl      _objc_release
loc_100093760:
  100093760  mov     x0, x21
loc_100093764:
  100093764  bl      _objc_release
  100093768  mov     x0, x19
  10009376c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController handleBackActionFromStatusBar]
; address 0x100093770  size 92  kind objc
; ======================================================================
  100093770  stp     x20, x19, [sp, #-0x20]!
  100093774  stp     x29, x30, [sp, #0x10]
  100093778  add     x29, sp, #0x10
  10009377c  adrp    x8, #0x100416000
  100093780  nop
  100093784  ldr     x1, [x8, #0xfa0]
  100093788  bl      _objc_msgSend                            ; [self armoryViewController]
  10009378c  mov     x29, x29
  100093790  bl      _objc_retainAutoreleasedReturnValue
  100093794  mov     x19, x0
  100093798  adrp    x8, #0x100418000
  10009379c  nop
  1000937a0  ldr     x1, [x8, #0x538]
  1000937a4  bl      _objc_msgSend                            ; [[self armoryViewController] sendDetailViewToBack]
  1000937a8  mov     x0, x19
  1000937ac  ldp     x29, x30, [sp, #0x10]
  1000937b0  ldp     x20, x19, [sp], #0x20
  1000937b4  b       _objc_release
  1000937b8  mov     x20, x0
  1000937bc  mov     x0, x19
  1000937c0  bl      _objc_release
  1000937c4  mov     x0, x20
  1000937c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController initForCurrentLevel]
; address 0x1000937cc  size 1048  kind objc
; ======================================================================
  1000937cc  stp     x28, x27, [sp, #-0x60]!
  1000937d0  stp     x26, x25, [sp, #0x10]
  1000937d4  stp     x24, x23, [sp, #0x20]
  1000937d8  stp     x22, x21, [sp, #0x30]
  1000937dc  stp     x20, x19, [sp, #0x40]
  1000937e0  stp     x29, x30, [sp, #0x50]
  1000937e4  add     x29, sp, #0x50
  1000937e8  sub     sp, sp, #0xe0
  1000937ec  mov     x19, x0
  1000937f0  adrp    x8, #0x1003b0000
  1000937f4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000937f8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000937fc  stur    x8, [x29, #-0x58]
  100093800  adrp    x8, #0x10041d000
  100093804  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100093808  adrp    x8, #0x100416000
  10009380c  nop
  100093810  ldr     x1, [x8, #0xec8]
  100093814  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100093818  mov     x29, x29
  10009381c  bl      _objc_retainAutoreleasedReturnValue
  100093820  mov     x20, x0
  100093824  adrp    x8, #0x10041f000
  100093828  ldrsw   x8, [x8, #0xf88]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  10009382c  ldr     x0, [x19, x8]                            ; x0 = self->weaponInventoryDict
  100093830  adrp    x8, #0x100417000
  100093834  nop
  100093838  ldr     x21, [x8, #0x40]
  10009383c  adrp    x2, #0x1003b9000
  100093840  add     x2, x2, #0xdb0                           ; @"name"
  100093844  mov     x1, x21
  100093848  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10009384c  mov     x29, x29
  100093850  bl      _objc_retainAutoreleasedReturnValue
  100093854  mov     x22, x0
  100093858  adrp    x8, #0x100417000
  10009385c  nop
  100093860  ldr     x1, [x8, #0x458]
  100093864  mov     x0, x20
  100093868  mov     x2, x22
  10009386c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100093870  adrp    x8, #0x10041f000
  100093874  ldrsw   x26, [x8, #0xf94]                        ; ivar offset ADArmoryWeaponDescriptionViewController.current_level (+0x16c)
  100093878  str     w0, [x19, x26]                           ; self->current_level = [[ADInventory sharedInventory] levelForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  10009387c  mov     x0, x22
  100093880  bl      _objc_release
  100093884  mov     x0, x20
  100093888  bl      _objc_release
  10009388c  adrp    x8, #0x10041f000
  100093890  ldrsw   x24, [x8, #0xf8c]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponStatsDict (+0x148)
  100093894  ldr     x23, [x19, x24]                          ; x23 = self->weaponStatsDict
  100093898  adrp    x27, #0x10041d000
  10009389c  ldr     x0, [x27, #0xf78]                        ; class NSString
  1000938a0  adrp    x8, #0x100416000
  1000938a4  nop
  1000938a8  ldr     x20, [x8, #0xee8]
  1000938ac  ldr     w8, [x19, x26]                           ; w8 = self->current_level
  1000938b0  str     x8, [sp]
  1000938b4  adrp    x2, #0x1003ba000
  1000938b8  add     x2, x2, #0x450                           ; @"level_%i"
  1000938bc  mov     x1, x20
  1000938c0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", self->current_level]
  1000938c4  mov     x29, x29
  1000938c8  bl      _objc_retainAutoreleasedReturnValue
  1000938cc  mov     x22, x0
  1000938d0  mov     x0, x23
  1000938d4  mov     x1, x21
  1000938d8  mov     x2, x22
  1000938dc  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", self->current_level]]
  1000938e0  mov     x29, x29
  1000938e4  bl      _objc_retainAutoreleasedReturnValue
  1000938e8  adrp    x8, #0x10041f000
  1000938ec  ldrsw   x9, [x8, #0xf98]                         ; ivar offset ADArmoryWeaponDescriptionViewController.currentLevelDict (+0x158)
  1000938f0  ldr     x8, [x19, x9]                            ; x8 = self->currentLevelDict
  1000938f4  str     x0, [x19, x9]                            ; self->currentLevelDict = [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", self->current_level]]
  1000938f8  mov     x0, x8
  1000938fc  bl      _objc_release
  100093900  mov     x0, x22
  100093904  bl      _objc_release
  100093908  ldr     x23, [x19, x24]                          ; x23 = self->weaponStatsDict
  10009390c  ldr     x0, [x27, #0xf78]                        ; class NSString
  100093910  ldr     w8, [x19, x26]                           ; w8 = self->current_level
  100093914  add     w8, w8, #1
  100093918  str     x8, [sp]
  10009391c  adrp    x2, #0x1003ba000
  100093920  add     x2, x2, #0x450                           ; @"level_%i"
  100093924  mov     x1, x20
  100093928  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", (self->current_level + 1)]
  10009392c  mov     x29, x29
  100093930  bl      _objc_retainAutoreleasedReturnValue
  100093934  mov     x22, x0
  100093938  mov     x0, x23
  10009393c  mov     x1, x21
  100093940  mov     x2, x22
  100093944  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", (self->current_level + 1)]]
  100093948  mov     x29, x29
  10009394c  bl      _objc_retainAutoreleasedReturnValue
  100093950  adrp    x8, #0x10041f000
  100093954  ldrsw   x9, [x8, #0xf9c]                         ; ivar offset ADArmoryWeaponDescriptionViewController.nextLevelDict (+0x160)
  100093958  ldr     x8, [x19, x9]                            ; x8 = self->nextLevelDict
  10009395c  str     x0, [x19, x9]                            ; self->nextLevelDict = [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", (self->current_level + 1)]]
  100093960  mov     x0, x8
  100093964  bl      _objc_release
  100093968  mov     x0, x22
  10009396c  bl      _objc_release
  100093970  adrp    x8, #0x10041a000
  100093974  nop
  100093978  ldr     x1, [x8, #0x88]
  10009397c  mov     x0, x19
  100093980  bl      _objc_msgSend                            ; [self setStatBars]
  100093984  stp     xzr, xzr, [sp, #0x48]
  100093988  stp     xzr, xzr, [sp, #0x38]
  10009398c  stp     xzr, xzr, [sp, #0x28]
  100093990  stp     xzr, xzr, [sp, #0x18]
  100093994  adrp    x8, #0x10041f000
  100093998  ldrsw   x8, [x8, #0xf90]                         ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  10009399c  ldr     x0, [x19, x8]                            ; x0 = self->statBars
  1000939a0  bl      _objc_retain
  1000939a4  mov     x21, x0
  1000939a8  adrp    x8, #0x100416000
  1000939ac  nop
  1000939b0  ldr     x22, [x8, #0xe00]
  1000939b4  add     x2, sp, #0x18
  1000939b8  add     x3, sp, #0x58
  1000939bc  mov     w4, #0x10
  1000939c0  mov     x1, x22
  1000939c4  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000939c8  mov     x23, x0
  1000939cc  cbz     x23, loc_100093a3c                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  1000939d0  ldr     x8, [sp, #0x28]
  1000939d4  ldr     x28, [x8]
  1000939d8  adrp    x8, #0x10041a000
  1000939dc  add     x8, x8, #0x90                            ; &@selector(refreshBars)
  1000939e0  ldr     x24, [x8]
loc_1000939e4:
  1000939e4  mov     x25, #0
loc_1000939e8:
  1000939e8  ldr     x8, [sp, #0x28]
  1000939ec  ldr     x8, [x8]
  1000939f0  cmp     x8, x28
  1000939f4  b.eq    loc_100093a00                            ; if (x8 == x28)
  1000939f8  mov     x0, x21
  1000939fc  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->statBars)
loc_100093a00:
  100093a00  ldr     x8, [sp, #0x20]
  100093a04  ldr     x0, [x8, x25, lsl #3]
  100093a08  mov     x1, x24
  100093a0c  bl      _objc_msgSend                            ; [x0 refreshBars]
  100093a10  add     x25, x25, #1
  100093a14  cmp     x25, x23
  100093a18  b.lo    loc_1000939e8                            ; if ((x25 + 1) <u [self->statBars countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  100093a1c  add     x2, sp, #0x18
  100093a20  add     x3, sp, #0x58
  100093a24  mov     w4, #0x10
  100093a28  mov     x0, x21
  100093a2c  mov     x1, x22
  100093a30  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  100093a34  mov     x23, x0
  100093a38  cbnz    x23, loc_1000939e4                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_100093a3c:
  100093a3c  mov     x0, x21
  100093a40  bl      _objc_release
  100093a44  adrp    x8, #0x10041a000
  100093a48  nop
  100093a4c  ldr     x1, [x8, #0x98]
  100093a50  mov     x0, x19
  100093a54  bl      _objc_msgSend                            ; [self levelImage]
  100093a58  mov     x29, x29
  100093a5c  bl      _objc_retainAutoreleasedReturnValue
  100093a60  mov     x21, x0
  100093a64  adrp    x8, #0x10041d000
  100093a68  ldr     x22, [x8, #0xf10]                        ; class UIImage
  100093a6c  ldr     x0, [x27, #0xf78]                        ; class NSString
  100093a70  ldr     w8, [x19, x26]                           ; w8 = self->current_level
  100093a74  str     x8, [sp]
  100093a78  adrp    x2, #0x1003bd000
  100093a7c  add     x2, x2, #0x490                           ; @"badge_level%i"
  100093a80  mov     x1, x20
  100093a84  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"badge_level%i", self->current_level]
  100093a88  mov     x29, x29
  100093a8c  bl      _objc_retainAutoreleasedReturnValue
  100093a90  mov     x20, x0
  100093a94  adrp    x8, #0x100416000
  100093a98  nop
  100093a9c  ldr     x1, [x8, #0xd40]
  100093aa0  mov     x0, x22
  100093aa4  mov     x2, x20
  100093aa8  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", self->current_level]]
  100093aac  adrp    x27, #0x1003b0000
  100093ab0  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  100093ab4  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  100093ab8  mov     x29, x29
  100093abc  bl      _objc_retainAutoreleasedReturnValue
  100093ac0  mov     x22, x0
  100093ac4  adrp    x8, #0x100416000
  100093ac8  nop
  100093acc  ldr     x1, [x8, #0xef0]
  100093ad0  mov     x0, x21
  100093ad4  mov     x2, x22
  100093ad8  bl      _objc_msgSend                            ; [[self levelImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", self->current_level]]]
  100093adc  mov     x0, x22
  100093ae0  bl      _objc_release
  100093ae4  mov     x0, x20
  100093ae8  bl      _objc_release
  100093aec  mov     x0, x21
  100093af0  bl      _objc_release
  100093af4  adrp    x8, #0x10041a000
  100093af8  nop
  100093afc  ldr     x1, [x8, #0xa0]
  100093b00  mov     x0, x19
  100093b04  bl      _objc_msgSend                            ; [self cancelBuyOrUpgradeButton]
  100093b08  mov     x29, x29
  100093b0c  bl      _objc_retainAutoreleasedReturnValue
  100093b10  mov     x20, x0
  100093b14  adrp    x8, #0x100416000
  100093b18  nop
  100093b1c  ldr     x1, [x8, #0xba8]
  100093b20  mov     w2, #1
  100093b24  bl      _objc_msgSend                            ; [[self cancelBuyOrUpgradeButton] setHidden:1]
  100093b28  mov     x0, x20
  100093b2c  bl      _objc_release
  100093b30  adrp    x8, #0x100419000
  100093b34  nop
  100093b38  ldr     x1, [x8, #0x6b0]
  100093b3c  mov     x0, x19
  100093b40  bl      _objc_msgSend                            ; [self checkLock]
  100093b44  ldur    x8, [x29, #-0x58]
  100093b48  sub     x8, x27, x8
  100093b4c  cbnz    x8, loc_100093b70                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100093b50  sub     sp, x29, #0x50
  100093b54  ldp     x29, x30, [sp, #0x50]
  100093b58  ldp     x20, x19, [sp, #0x40]
  100093b5c  ldp     x22, x21, [sp, #0x30]
  100093b60  ldp     x24, x23, [sp, #0x20]
  100093b64  ldp     x26, x25, [sp, #0x10]
  100093b68  ldp     x28, x27, [sp], #0x60
  100093b6c  ret
loc_100093b70:
  100093b70  bl      ___stack_chk_fail                        ; stack_chk_fail([self checkLock])
loc_100093b74:
  100093b74  mov     x19, x0
loc_100093b78:
  100093b78  mov     x0, x21
loc_100093b7c:
  100093b7c  bl      _objc_release
  100093b80  mov     x0, x19
  100093b84  bl      __Unwind_Resume                          ; Unwind_Resume()
  100093b88  b       loc_100093b74
  100093b8c  b       loc_100093bd8
  100093b90  mov     x19, x0
  100093b94  mov     x0, x22
  100093b98  bl      _objc_release
  100093b9c  b       loc_100093bdc
  100093ba0  b       loc_100093ba4
loc_100093ba4:
  100093ba4  mov     x19, x0
  100093ba8  mov     x0, x22
  100093bac  b       loc_100093b7c
  100093bb0  b       loc_100093b74
  100093bb4  b       loc_100093b74
  100093bb8  mov     x19, x0
  100093bbc  b       loc_100093bcc
  100093bc0  mov     x19, x0
  100093bc4  mov     x0, x22
  100093bc8  bl      _objc_release
loc_100093bcc:
  100093bcc  mov     x0, x20
  100093bd0  bl      _objc_release
  100093bd4  b       loc_100093b78
loc_100093bd8:
  100093bd8  mov     x19, x0
loc_100093bdc:
  100093bdc  mov     x0, x20
  100093be0  b       loc_100093b7c

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setStatBars]
; address 0x100093be4  size 1920  kind objc
; ======================================================================
  100093be4  stp     d11, d10, [sp, #-0x80]!
  100093be8  stp     d9, d8, [sp, #0x10]
  100093bec  stp     x28, x27, [sp, #0x20]
  100093bf0  stp     x26, x25, [sp, #0x30]
  100093bf4  stp     x24, x23, [sp, #0x40]
  100093bf8  stp     x22, x21, [sp, #0x50]
  100093bfc  stp     x20, x19, [sp, #0x60]
  100093c00  stp     x29, x30, [sp, #0x70]
  100093c04  add     x29, sp, #0x70
  100093c08  sub     sp, sp, #0x220
  100093c0c  mov     x19, x0
  100093c10  adrp    x8, #0x1003b0000
  100093c14  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100093c18  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100093c1c  stur    x8, [x29, #-0x78]
  100093c20  adrp    x8, #0x10041f000
  100093c24  ldrsw   x28, [x8, #0xf90]                        ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  100093c28  ldr     x0, [x19, x28]                           ; x0 = self->statBars
  100093c2c  adrp    x8, #0x100416000
  100093c30  nop
  100093c34  ldr     x1, [x8, #0xe30]
  100093c38  bl      _objc_msgSend                            ; [self->statBars count]
  100093c3c  cbz     x0, loc_100093d20                        ; if ([self->statBars count] == 0)
  100093c40  stp     xzr, xzr, [sp, #0x108]
  100093c44  stp     xzr, xzr, [sp, #0xf8]
  100093c48  stp     xzr, xzr, [sp, #0xe8]
  100093c4c  stp     xzr, xzr, [sp, #0xd8]
  100093c50  ldr     x0, [x19, x28]                           ; x0 = self->statBars
  100093c54  bl      _objc_retain
  100093c58  mov     x20, x0
  100093c5c  adrp    x8, #0x100416000
  100093c60  nop
  100093c64  ldr     x21, [x8, #0xe00]
  100093c68  add     x2, sp, #0xd8
  100093c6c  sub     x3, x29, #0xf8
  100093c70  mov     w4, #0x10
  100093c74  mov     x1, x21
  100093c78  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xf8] count:16]
  100093c7c  mov     x22, x0
  100093c80  cbz     x22, loc_100093d18                       ; if ([self->statBars countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xf8] count:16] == 0)
  100093c84  ldr     x8, [sp, #0xe8]
  100093c88  ldr     x26, [x8]
  100093c8c  adrp    x8, #0x100416000
  100093c90  nop
  100093c94  ldr     x23, [x8, #0xf18]
  100093c98  adrp    x8, #0x100417000
  100093c9c  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  100093ca0  ldr     x24, [x8]
loc_100093ca4:
  100093ca4  mov     x27, #0
loc_100093ca8:
  100093ca8  ldr     x8, [sp, #0xe8]
  100093cac  ldr     x8, [x8]
  100093cb0  cmp     x8, x26
  100093cb4  b.eq    loc_100093cc0                            ; if (x8 == x26)
  100093cb8  mov     x0, x20
  100093cbc  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->statBars)
loc_100093cc0:
  100093cc0  ldr     x8, [sp, #0xe0]
  100093cc4  ldr     x0, [x8, x27, lsl #3]
  100093cc8  mov     x1, x23
  100093ccc  bl      _objc_msgSend                            ; [x0 view]
  100093cd0  mov     x29, x29
  100093cd4  bl      _objc_retainAutoreleasedReturnValue
  100093cd8  mov     x25, x0
  100093cdc  mov     x1, x24
  100093ce0  bl      _objc_msgSend                            ; [[x0 view] removeFromSuperview]
  100093ce4  mov     x0, x25
  100093ce8  bl      _objc_release
  100093cec  add     x27, x27, #1
  100093cf0  cmp     x27, x22
  100093cf4  b.lo    loc_100093ca8                            ; if ((x27 + 1) <u [self->statBars countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xf8] count:16])
  100093cf8  add     x2, sp, #0xd8
  100093cfc  sub     x3, x29, #0xf8
  100093d00  mov     w4, #0x10
  100093d04  mov     x0, x20
  100093d08  mov     x1, x21
  100093d0c  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xf8] count:16]
  100093d10  mov     x22, x0
  100093d14  cbnz    x22, loc_100093ca4                       ; if ([self->statBars countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xf8] count:16] != 0)
loc_100093d18:
  100093d18  mov     x0, x20
  100093d1c  bl      _objc_release
loc_100093d20:
  100093d20  ldr     x0, [x19, x28]                           ; x0 = self->statBars
  100093d24  adrp    x8, #0x100417000
  100093d28  nop
  100093d2c  ldr     x1, [x8, #0x1b8]
  100093d30  bl      _objc_msgSend                            ; [self->statBars removeAllObjects]
  100093d34  stp     xzr, xzr, [sp, #0xc8]
  100093d38  stp     xzr, xzr, [sp, #0xb8]
  100093d3c  stp     xzr, xzr, [sp, #0xa8]
  100093d40  stp     xzr, xzr, [sp, #0x98]
  100093d44  adrp    x8, #0x100416000
  100093d48  nop
  100093d4c  ldr     x21, [x8, #0xf18]
  100093d50  mov     x0, x19
  100093d54  mov     x1, x21
  100093d58  bl      _objc_msgSend                            ; [self view]
  100093d5c  mov     x29, x29
  100093d60  bl      _objc_retainAutoreleasedReturnValue
  100093d64  mov     x20, x0
  100093d68  adrp    x8, #0x100417000
  100093d6c  nop
  100093d70  ldr     x1, [x8, #0x1c8]
  100093d74  bl      _objc_msgSend                            ; [[self view] subviews]
  100093d78  str     x28, [sp, #0x70]
  100093d7c  mov     x29, x29
  100093d80  bl      _objc_retainAutoreleasedReturnValue
  100093d84  mov     x22, x0
  100093d88  str     x22, [sp, #0x20]
  100093d8c  mov     x0, x20
  100093d90  bl      _objc_release
  100093d94  adrp    x8, #0x100416000
  100093d98  nop
  100093d9c  ldr     x1, [x8, #0xe00]
  100093da0  str     x1, [sp, #0x10]
  100093da4  add     x2, sp, #0x98
  100093da8  add     x3, sp, #0x118
  100093dac  mov     w4, #0x10
  100093db0  mov     x0, x22
  100093db4  bl      _objc_msgSend                            ; [[[self view] subviews] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x118] count:16]
  100093db8  mov     x20, x0
  100093dbc  cbz     x20, loc_10009425c                       ; if ([[[self view] subviews] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x118] count:16] == 0)
  100093dc0  adrp    x8, #0x100417000
  100093dc4  nop
  100093dc8  adrp    x9, #0x100416000
  100093dcc  nop
  100093dd0  adrp    x10, #0x100416000
  100093dd4  nop
  100093dd8  ldr     x11, [sp, #0xa8]
  100093ddc  adrp    x12, #0x100416000
  100093de0  nop
  100093de4  adrp    x13, #0x100416000
  100093de8  add     x13, x13, #0xf38                         ; &@selector(frame)
  100093dec  ldr     x24, [x8, #0x6b0]
  100093df0  ldr     x8, [x9, #0xac8]
  100093df4  str     x8, [sp, #0x68]
  100093df8  adrp    x8, #0x100417000
  100093dfc  nop
  100093e00  ldr     x9, [x10, #0xb40]
  100093e04  str     x9, [sp, #0x60]
  100093e08  adrp    x9, #0x100416000
  100093e0c  nop
  100093e10  ldr     x10, [x12, #0xf20]
  100093e14  str     x10, [sp, #0x58]
  100093e18  adrp    x10, #0x10041f000
  100093e1c  ldr     x12, [x13]
  100093e20  str     x12, [sp, #0x50]
  100093e24  ldr     x8, [x8, #0x7b8]
  100093e28  str     x8, [sp, #0x48]
  100093e2c  adrp    x8, #0x100416000
  100093e30  nop
  100093e34  adrp    x12, #0x100417000
  100093e38  add     x12, x12, #0x48                          ; &@selector(floatValue)
  100093e3c  ldr     x9, [x9, #0xd90]
  100093e40  str     x9, [sp, #0x40]
  100093e44  ldr     x9, [x11]
  100093e48  str     x9, [sp, #0x88]
  100093e4c  adrp    x9, #0x10041a000
  100093e50  nop
  100093e54  ldrsw   x10, [x10, #0xf98]                       ; ivar offset ADArmoryWeaponDescriptionViewController.currentLevelDict (+0x158)
  100093e58  str     x10, [sp, #0x80]
  100093e5c  ldr     x26, [x8, #0xda0]
  100093e60  adrp    x8, #0x10041a000
  100093e64  nop
  100093e68  ldr     x10, [x12]
  100093e6c  str     x10, [sp, #0x90]
  100093e70  adrp    x10, #0x10041f000
  100093e74  ldr     x9, [x9, #0xa8]
  100093e78  str     x9, [sp, #0x38]
  100093e7c  adrp    x9, #0x100417000
  100093e80  nop
  100093e84  ldr     x8, [x8, #0xb0]
  100093e88  str     x8, [sp, #0x30]
  100093e8c  adrp    x8, #0x10041a000
  100093e90  nop
  100093e94  ldrsw   x10, [x10, #0xf9c]                       ; ivar offset ADArmoryWeaponDescriptionViewController.nextLevelDict (+0x160)
  100093e98  str     x10, [sp, #0x78]
  100093e9c  ldr     x9, [x9, #0x110]
  100093ea0  str     x9, [sp, #0x18]
  100093ea4  ldr     x8, [x8, #0xb8]
  100093ea8  str     x8, [sp, #0x28]
  100093eac  nop
  100093eb0  ldr     s8, #0x100181a10                         ; s8 = 100.0
  100093eb4  nop
  100093eb8  ldr     s9, #0x100181cf0                         ; s9 = 80.0
  100093ebc  adrp    x8, #0x100181000
  100093ec0  ldr     s10, [x8, #0xa90]                        ; s10 = 60.0
loc_100093ec4:
  100093ec4  mov     x23, #0
loc_100093ec8:
  100093ec8  ldr     x8, [sp, #0xa8]
  100093ecc  ldr     x8, [x8]
  100093ed0  ldr     x9, [sp, #0x88]
  100093ed4  cmp     x8, x9
  100093ed8  b.eq    loc_100093ee4                            ; if (x8 == x9)
  100093edc  ldr     x0, [sp, #0x20]
  100093ee0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self view] subviews])
loc_100093ee4:
  100093ee4  ldr     x8, [sp, #0xa0]
  100093ee8  ldr     x22, [x8, x23, lsl #3]
  100093eec  mov     x0, x22
  100093ef0  mov     x1, x24
  100093ef4  bl      _objc_msgSend                            ; [x0 tag]
  100093ef8  cbz     x0, loc_100094230                        ; if ([x0 tag] == 0)
  100093efc  adrp    x8, #0x10041e000
  100093f00  ldr     x0, [x8, #0x378]                         ; class ADWeaponStatBarViewController
  100093f04  ldr     x1, [sp, #0x68]
  100093f08  bl      _objc_msgSend                            ; [ADWeaponStatBarViewController alloc]
  100093f0c  mov     x2, #0
  100093f10  mov     x3, #0
  100093f14  ldr     x1, [sp, #0x60]
  100093f18  bl      _objc_msgSend                            ; [[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0]
  100093f1c  mov     x28, x0
  100093f20  mov     x27, x20
  100093f24  mov     x0, x19
  100093f28  mov     x1, x21
  100093f2c  bl      _objc_msgSend                            ; [self view]
  100093f30  mov     x29, x29
  100093f34  bl      _objc_retainAutoreleasedReturnValue
  100093f38  mov     x20, x0
  100093f3c  mov     x0, x28
  100093f40  mov     x1, x21
  100093f44  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] view]
  100093f48  mov     x29, x29
  100093f4c  bl      _objc_retainAutoreleasedReturnValue
  100093f50  mov     x25, x0
  100093f54  mov     x0, x20
  100093f58  ldr     x1, [sp, #0x58]
  100093f5c  mov     x2, x25
  100093f60  bl      _objc_msgSend                            ; [[self view] addSubview:[[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] view]]
  100093f64  mov     x0, x25
  100093f68  bl      _objc_release
  100093f6c  mov     x0, x20
  100093f70  bl      _objc_release
  100093f74  mov     x0, x28
  100093f78  mov     x1, x21
  100093f7c  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] view]
  100093f80  mov     x29, x29
  100093f84  bl      _objc_retainAutoreleasedReturnValue
  100093f88  mov     x20, x0
  100093f8c  mov     x0, x22
  100093f90  ldr     x1, [sp, #0x50]
  100093f94  bl      _objc_msgSend                            ; [x0 frame]
  100093f98  mov     x0, x20
  100093f9c  ldr     x1, [sp, #0x48]
  100093fa0  bl      _objc_msgSend                            ; [[[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] view] setFrame:{[x0 frame].0, [x0 frame].1, [x0 frame].2, [x0 frame].3}]
  100093fa4  mov     x0, x20
  100093fa8  bl      _objc_release
  100093fac  ldr     x8, [sp, #0x70]
  100093fb0  ldr     x0, [x19, x8]                            ; x0 = self->statBars
  100093fb4  ldr     x1, [sp, #0x40]
  100093fb8  mov     x2, x28
  100093fbc  bl      _objc_msgSend                            ; [self->statBars addObject:[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0]]
  100093fc0  mov     x0, x22
  100093fc4  mov     x1, x24
  100093fc8  bl      _objc_msgSend                            ; [x0 tag]
  100093fcc  cmp     x0, #1
  100093fd0  b.ne    loc_1000940e0                            ; if ([x0 tag] != 1)
  100093fd4  ldr     x8, [sp, #0x80]
  100093fd8  ldr     x0, [x19, x8]                            ; x0 = self->currentLevelDict
  100093fdc  mov     x1, x26
  100093fe0  adrp    x2, #0x1003ba000
  100093fe4  add     x2, x2, #0x490                           ; @"damages"
  100093fe8  bl      _objc_msgSend                            ; [self->currentLevelDict valueForKey:@"damages"]
  100093fec  mov     x29, x29
  100093ff0  bl      _objc_retainAutoreleasedReturnValue
  100093ff4  mov     x22, x0
  100093ff8  ldr     x1, [sp, #0x90]
  100093ffc  bl      _objc_msgSend                            ; [[self->currentLevelDict valueForKey:@"damages"] floatValue]
  100094000  mov     v11.16b, v0.16b
  100094004  ldr     x8, [sp, #0x80]
  100094008  ldr     x0, [x19, x8]                            ; x0 = self->currentLevelDict
  10009400c  mov     x1, x26
  100094010  adrp    x2, #0x1003ba000
  100094014  add     x2, x2, #0x470                           ; @"fireRate"
  100094018  bl      _objc_msgSend                            ; [self->currentLevelDict valueForKey:@"fireRate"]
  10009401c  mov     x29, x29
  100094020  bl      _objc_retainAutoreleasedReturnValue
  100094024  mov     x20, x0
  100094028  ldr     x1, [sp, #0x90]
  10009402c  bl      _objc_msgSend                            ; [[self->currentLevelDict valueForKey:@"fireRate"] floatValue]
  100094030  fdiv    s0, s11, s0                              ; t1 = ([[self->currentLevelDict valueForKey:@"damages"] floatValue] / [[self->currentLevelDict valueForKey:@"fireRate"] floatValue])
  100094034  mov     x0, x28
  100094038  ldr     x1, [sp, #0x38]
  10009403c  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setCurrentValue:t1]
  100094040  mov     x0, x20
  100094044  bl      _objc_release
  100094048  mov     x0, x22
  10009404c  bl      _objc_release
  100094050  mov     x0, x28
  100094054  ldr     x1, [sp, #0x30]
  100094058  mov     v0.16b, v8.16b
  10009405c  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setMaxValue:100]
  100094060  ldr     x8, [sp, #0x78]
  100094064  ldr     x0, [x19, x8]                            ; x0 = self->nextLevelDict
  100094068  mov     x1, x26
  10009406c  adrp    x2, #0x1003ba000
  100094070  add     x2, x2, #0x490                           ; @"damages"
  100094074  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"damages"]
  100094078  mov     x29, x29
  10009407c  bl      _objc_retainAutoreleasedReturnValue
  100094080  mov     x22, x0
  100094084  ldr     x1, [sp, #0x18]
  100094088  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"damages"] intValue]
  10009408c  mov     x20, x0
  100094090  ldr     x8, [sp, #0x78]
  100094094  ldr     x0, [x19, x8]                            ; x0 = self->nextLevelDict
  100094098  mov     x1, x26
  10009409c  adrp    x2, #0x1003ba000
  1000940a0  add     x2, x2, #0x470                           ; @"fireRate"
  1000940a4  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"fireRate"]
  1000940a8  mov     x29, x29
  1000940ac  bl      _objc_retainAutoreleasedReturnValue
  1000940b0  mov     x25, x0
  1000940b4  ldr     x1, [sp, #0x90]
  1000940b8  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"fireRate"] floatValue]
  1000940bc  scvtf   s1, w20
  1000940c0  fdiv    s0, s1, s0                               ; t2 = ((float)[[self->nextLevelDict valueForKey:@"damages"] intValue] / [[self->nextLevelDict valueForKey:@"fireRate"] floatValue])
  1000940c4  mov     x0, x28
  1000940c8  ldr     x1, [sp, #0x28]
  1000940cc  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setNextLevelValue:t2]
  1000940d0  mov     x0, x25
  1000940d4  bl      _objc_release
  1000940d8  mov     x0, x22
  1000940dc  b       loc_100094220
loc_1000940e0:
  1000940e0  mov     x0, x22
  1000940e4  mov     x1, x24
  1000940e8  bl      _objc_msgSend                            ; [x0 tag]
  1000940ec  cmp     x0, #2
  1000940f0  b.ne    loc_100094180                            ; if ([x0 tag] != 2)
  1000940f4  ldr     x8, [sp, #0x80]
  1000940f8  ldr     x0, [x19, x8]                            ; x0 = self->currentLevelDict
  1000940fc  mov     x1, x26
  100094100  adrp    x2, #0x1003ba000
  100094104  add     x2, x2, #0x5f0                           ; @"capacity"
  100094108  bl      _objc_msgSend                            ; [self->currentLevelDict valueForKey:@"capacity"]
  10009410c  mov     x29, x29
  100094110  bl      _objc_retainAutoreleasedReturnValue
  100094114  mov     x20, x0
  100094118  ldr     x1, [sp, #0x90]
  10009411c  bl      _objc_msgSend                            ; [[self->currentLevelDict valueForKey:@"capacity"] floatValue]
  100094120  mov     x0, x28
  100094124  ldr     x1, [sp, #0x38]
  100094128  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setCurrentValue:[[self->currentLevelDict valueForKey:@"capacity"] floatValue]]
  10009412c  mov     x0, x20
  100094130  bl      _objc_release
  100094134  mov     x0, x28
  100094138  ldr     x1, [sp, #0x30]
  10009413c  mov     v0.16b, v9.16b
  100094140  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setMaxValue:80]
  100094144  ldr     x8, [sp, #0x78]
  100094148  ldr     x0, [x19, x8]                            ; x0 = self->nextLevelDict
  10009414c  mov     x1, x26
  100094150  adrp    x2, #0x1003ba000
  100094154  add     x2, x2, #0x5f0                           ; @"capacity"
  100094158  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"capacity"]
  10009415c  mov     x29, x29
  100094160  bl      _objc_retainAutoreleasedReturnValue
  100094164  mov     x20, x0
  100094168  ldr     x1, [sp, #0x90]
  10009416c  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"capacity"] floatValue]
  100094170  mov     x0, x28
  100094174  ldr     x1, [sp, #0x28]
  100094178  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setNextLevelValue:[[self->nextLevelDict valueForKey:@"capacity"] floatValue]]
  10009417c  b       loc_10009421c
loc_100094180:
  100094180  mov     x0, x22
  100094184  mov     x1, x24
  100094188  bl      _objc_msgSend                            ; [x0 tag]
  10009418c  cmp     x0, #3
  100094190  b.ne    loc_100094224                            ; if ([x0 tag] != 3)
  100094194  ldr     x8, [sp, #0x80]
  100094198  ldr     x0, [x19, x8]                            ; x0 = self->currentLevelDict
  10009419c  mov     x1, x26
  1000941a0  adrp    x2, #0x1003ba000
  1000941a4  add     x2, x2, #0x4b0                           ; @"spread"
  1000941a8  bl      _objc_msgSend                            ; [self->currentLevelDict valueForKey:@"spread"]
  1000941ac  mov     x29, x29
  1000941b0  bl      _objc_retainAutoreleasedReturnValue
  1000941b4  mov     x20, x0
  1000941b8  ldr     x1, [sp, #0x90]
  1000941bc  bl      _objc_msgSend                            ; [[self->currentLevelDict valueForKey:@"spread"] floatValue]
  1000941c0  mov     x0, x28
  1000941c4  ldr     x1, [sp, #0x38]
  1000941c8  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setCurrentValue:[[self->currentLevelDict valueForKey:@"spread"] floatValue]]
  1000941cc  mov     x0, x20
  1000941d0  bl      _objc_release
  1000941d4  mov     x0, x28
  1000941d8  ldr     x1, [sp, #0x30]
  1000941dc  mov     v0.16b, v10.16b
  1000941e0  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setMaxValue:60]
  1000941e4  ldr     x8, [sp, #0x78]
  1000941e8  ldr     x0, [x19, x8]                            ; x0 = self->nextLevelDict
  1000941ec  mov     x1, x26
  1000941f0  adrp    x2, #0x1003ba000
  1000941f4  add     x2, x2, #0x4b0                           ; @"spread"
  1000941f8  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"spread"]
  1000941fc  mov     x29, x29
  100094200  bl      _objc_retainAutoreleasedReturnValue
  100094204  mov     x20, x0
  100094208  ldr     x1, [sp, #0x90]
  10009420c  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"spread"] floatValue]
  100094210  mov     x0, x28
  100094214  ldr     x1, [sp, #0x28]
  100094218  bl      _objc_msgSend                            ; [[[ADWeaponStatBarViewController alloc] initWithNibName:0 bundle:0] setNextLevelValue:[[self->nextLevelDict valueForKey:@"spread"] floatValue]]
loc_10009421c:
  10009421c  mov     x0, x20
loc_100094220:
  100094220  bl      _objc_release
loc_100094224:
  100094224  mov     x0, x28
  100094228  bl      _objc_release
  10009422c  mov     x20, x27
loc_100094230:
  100094230  add     x23, x23, #1
  100094234  cmp     x23, x20
  100094238  b.lo    loc_100093ec8                            ; if ((x23 + 1) <u [[[self view] subviews] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x118] count:16])
  10009423c  add     x2, sp, #0x98
  100094240  add     x3, sp, #0x118
  100094244  mov     w4, #0x10
  100094248  ldr     x0, [sp, #0x20]
  10009424c  ldr     x1, [sp, #0x10]
  100094250  bl      _objc_msgSend                            ; [[[self view] subviews] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x118] count:16]
  100094254  mov     x20, x0
  100094258  cbnz    x20, loc_100093ec4                       ; if ([[[self view] subviews] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x118] count:16] != 0)
loc_10009425c:
  10009425c  ldr     x0, [sp, #0x20]
  100094260  bl      _objc_release
  100094264  ldur    x8, [x29, #-0x78]
  100094268  adrp    x9, #0x1003b0000
  10009426c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100094270  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100094274  sub     x8, x9, x8
  100094278  cbnz    x8, loc_1000942a4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10009427c  sub     sp, x29, #0x70
  100094280  ldp     x29, x30, [sp, #0x70]
  100094284  ldp     x20, x19, [sp, #0x60]
  100094288  ldp     x22, x21, [sp, #0x50]
  10009428c  ldp     x24, x23, [sp, #0x40]
  100094290  ldp     x26, x25, [sp, #0x30]
  100094294  ldp     x28, x27, [sp, #0x20]
  100094298  ldp     d9, d8, [sp, #0x10]
  10009429c  ldp     d11, d10, [sp], #0x80
  1000942a0  ret
loc_1000942a4:
  1000942a4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000942a8  mov     x19, x0
  1000942ac  b       loc_100094338
loc_1000942b0:
  1000942b0  mov     x19, x0
  1000942b4  b       loc_100094340
  1000942b8  b       loc_10009432c
loc_1000942bc:
  1000942bc  mov     x19, x0
  1000942c0  b       loc_1000942d0
  1000942c4  mov     x19, x0
  1000942c8  mov     x0, x25
  1000942cc  bl      _objc_release
loc_1000942d0:
  1000942d0  mov     x0, x20
  1000942d4  b       loc_100094344
  1000942d8  b       loc_10009432c
  1000942dc  mov     x19, x0
  1000942e0  mov     x0, x25
  1000942e4  bl      _objc_release
  1000942e8  b       loc_100094330
  1000942ec  mov     x19, x0
  1000942f0  b       loc_100094314
  1000942f4  mov     x19, x0
  1000942f8  mov     x0, x20
  1000942fc  b       loc_100094310
  100094300  mov     x19, x0
  100094304  b       loc_100094314
  100094308  mov     x19, x0
  10009430c  mov     x0, x25
loc_100094310:
  100094310  bl      _objc_release
loc_100094314:
  100094314  mov     x0, x22
  100094318  bl      _objc_release
  10009431c  b       loc_100094338
  100094320  b       loc_10009432c
  100094324  b       loc_10009432c
  100094328  b       loc_10009432c
loc_10009432c:
  10009432c  mov     x19, x0
loc_100094330:
  100094330  mov     x0, x20
  100094334  bl      _objc_release
loc_100094338:
  100094338  mov     x0, x28
  10009433c  bl      _objc_release
loc_100094340:
  100094340  ldr     x0, [sp, #0x20]
loc_100094344:
  100094344  bl      _objc_release
  100094348  mov     x0, x19
  10009434c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100094350  b       loc_1000942b0
  100094354  b       loc_1000942bc
  100094358  b       loc_1000942bc
  10009435c  b       loc_1000942b0
  100094360  b       loc_1000942bc

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController checkLock]
; address 0x100094364  size 1700  kind objc
; ======================================================================
  100094364  stp     x26, x25, [sp, #-0x50]!
  100094368  stp     x24, x23, [sp, #0x10]
  10009436c  stp     x22, x21, [sp, #0x20]
  100094370  stp     x20, x19, [sp, #0x30]
  100094374  stp     x29, x30, [sp, #0x40]
  100094378  add     x29, sp, #0x40
  10009437c  sub     sp, sp, #0x10
  100094380  mov     x19, x0
  100094384  adrp    x8, #0x10041d000
  100094388  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10009438c  adrp    x8, #0x100416000
  100094390  nop
  100094394  ldr     x1, [x8, #0xec8]
  100094398  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10009439c  mov     x29, x29
  1000943a0  bl      _objc_retainAutoreleasedReturnValue
  1000943a4  mov     x21, x0
  1000943a8  adrp    x8, #0x10041f000
  1000943ac  ldrsw   x8, [x8, #0xf88]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  1000943b0  ldr     x0, [x19, x8]                            ; x0 = self->weaponInventoryDict
  1000943b4  adrp    x8, #0x100417000
  1000943b8  nop
  1000943bc  ldr     x20, [x8, #0x40]
  1000943c0  adrp    x2, #0x1003b9000
  1000943c4  add     x2, x2, #0xdb0                           ; @"name"
  1000943c8  mov     x1, x20
  1000943cc  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000943d0  mov     x29, x29
  1000943d4  bl      _objc_retainAutoreleasedReturnValue
  1000943d8  mov     x22, x0
  1000943dc  adrp    x8, #0x100417000
  1000943e0  nop
  1000943e4  ldr     x1, [x8, #0x1d8]
  1000943e8  mov     x0, x21
  1000943ec  mov     x2, x22
  1000943f0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000943f4  mov     x23, x0
  1000943f8  mov     x0, x22
  1000943fc  bl      _objc_release
  100094400  mov     x0, x21
  100094404  bl      _objc_release
  100094408  cbz     w23, loc_1000944c0                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] == 0)
  10009440c  adrp    x8, #0x10041f000
  100094410  ldrsw   x8, [x8, #0xf9c]                         ; ivar offset ADArmoryWeaponDescriptionViewController.nextLevelDict (+0x160)
  100094414  ldr     x22, [x19, x8]                           ; x22 = self->nextLevelDict
  100094418  adrp    x8, #0x100419000
  10009441c  nop
  100094420  ldr     x20, [x8, #0x728]
  100094424  mov     x0, x19
  100094428  mov     x1, x20
  10009442c  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094430  mov     x29, x29
  100094434  bl      _objc_retainAutoreleasedReturnValue
  100094438  mov     x21, x0
  10009443c  cbz     x22, loc_100094638                       ; if (self->nextLevelDict == 0)
  100094440  adrp    x8, #0x10041d000
  100094444  ldr     x0, [x8, #0xf78]                         ; class NSString
  100094448  adrp    x8, #0x10041f000
  10009444c  ldrsw   x8, [x8, #0xf94]                         ; ivar offset ADArmoryWeaponDescriptionViewController.current_level (+0x16c)
  100094450  ldr     w8, [x19, x8]                            ; w8 = self->current_level
  100094454  add     w8, w8, #1
  100094458  adrp    x9, #0x100416000
  10009445c  nop
  100094460  ldr     x1, [x9, #0xee8]
  100094464  str     x8, [sp]
  100094468  adrp    x2, #0x1003c0000
  10009446c  add     x2, x2, #0x90                            ; @"PREVIEW LEVEL %i"
  100094470  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"PREVIEW LEVEL %i", (self->current_level + 1)]
  100094474  mov     x29, x29
  100094478  bl      _objc_retainAutoreleasedReturnValue
  10009447c  mov     x22, x0
  100094480  adrp    x8, #0x100417000
  100094484  nop
  100094488  ldr     x1, [x8, #0x920]
  10009448c  mov     x3, #0
  100094490  mov     x0, x21
  100094494  mov     x2, x22
  100094498  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"PREVIEW LEVEL %i", (self->current_level + 1)] forState:0]
  10009449c  mov     x0, x22
  1000944a0  bl      _objc_release
  1000944a4  mov     x0, x21
  1000944a8  bl      _objc_release
  1000944ac  adrp    x8, #0x10041f000
  1000944b0  ldrsw   x8, [x8, #0xfa0]                         ; ivar offset ADArmoryWeaponDescriptionViewController.button_state (+0x168)
  1000944b4  mov     w9, #1
  1000944b8  str     w9, [x19, x8]                            ; self->button_state = 1
  1000944bc  b       loc_1000946a0
loc_1000944c0:
  1000944c0  adrp    x8, #0x10041f000
  1000944c4  ldrsw   x25, [x8, #0xf8c]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponStatsDict (+0x148)
  1000944c8  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  1000944cc  adrp    x2, #0x1003b9000
  1000944d0  add     x2, x2, #0xd70                           ; @"price"
  1000944d4  mov     x1, x20
  1000944d8  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"price"]
  1000944dc  mov     x29, x29
  1000944e0  bl      _objc_retainAutoreleasedReturnValue
  1000944e4  mov     x21, x0
  1000944e8  bl      _objc_release
  1000944ec  cbz     x21, loc_100094740                       ; if ([self->weaponStatsDict objectForKey:@"price"] == 0)
  1000944f0  adrp    x8, #0x100419000
  1000944f4  nop
  1000944f8  ldr     x21, [x8, #0x728]
  1000944fc  mov     x0, x19
  100094500  mov     x1, x21
  100094504  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094508  mov     x29, x29
  10009450c  bl      _objc_retainAutoreleasedReturnValue
  100094510  mov     x23, x0
  100094514  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  100094518  adrp    x2, #0x1003b9000
  10009451c  add     x2, x2, #0xd70                           ; @"price"
  100094520  mov     x1, x20
  100094524  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"price"]
  100094528  mov     x29, x29
  10009452c  bl      _objc_retainAutoreleasedReturnValue
  100094530  mov     x24, x0
  100094534  adrp    x8, #0x100417000
  100094538  nop
  10009453c  ldr     x22, [x8, #0x110]
  100094540  mov     x1, x22
  100094544  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"price"] intValue]
  100094548  mov     x2, x0
  10009454c  adrp    x8, #0x100417000
  100094550  nop
  100094554  ldr     x1, [x8, #0x90]
  100094558  mov     x0, x23
  10009455c  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setCoins:[[self->weaponStatsDict objectForKey:@"price"] intValue]]
  100094560  mov     x0, x24
  100094564  bl      _objc_release
  100094568  mov     x0, x23
  10009456c  bl      _objc_release
  100094570  mov     x0, x19
  100094574  mov     x1, x21
  100094578  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  10009457c  mov     x29, x29
  100094580  bl      _objc_retainAutoreleasedReturnValue
  100094584  mov     x23, x0
  100094588  adrp    x8, #0x100418000
  10009458c  nop
  100094590  ldr     x1, [x8, #0xc58]
  100094594  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] centerButtonTextWithCoinsImage]
  100094598  mov     x0, x23
  10009459c  bl      _objc_release
  1000945a0  mov     x0, x19
  1000945a4  mov     x1, x21
  1000945a8  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  1000945ac  mov     x29, x29
  1000945b0  bl      _objc_retainAutoreleasedReturnValue
  1000945b4  mov     x21, x0
  1000945b8  adrp    x8, #0x10041d000
  1000945bc  ldr     x23, [x8, #0xf78]                        ; class NSString
  1000945c0  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  1000945c4  adrp    x2, #0x1003b9000
  1000945c8  add     x2, x2, #0xd70                           ; @"price"
  1000945cc  mov     x1, x20
  1000945d0  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"price"]
  1000945d4  mov     x29, x29
  1000945d8  bl      _objc_retainAutoreleasedReturnValue
  1000945dc  mov     x20, x0
  1000945e0  mov     x1, x22
  1000945e4  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"price"] intValue]
  1000945e8  adrp    x8, #0x100416000
  1000945ec  nop
  1000945f0  ldr     x1, [x8, #0xee8]
  1000945f4  str     x0, [sp]
  1000945f8  adrp    x2, #0x1003c0000
  1000945fc  add     x2, x2, #0xd0                            ; @"BUY FOR %i"
  100094600  mov     x0, x23
  100094604  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"BUY FOR %i", [[self->weaponStatsDict objectForKey:@"price"] intValue]]
  100094608  mov     x29, x29
  10009460c  bl      _objc_retainAutoreleasedReturnValue
  100094610  mov     x22, x0
  100094614  adrp    x8, #0x100417000
  100094618  nop
  10009461c  ldr     x1, [x8, #0x920]
  100094620  mov     x3, #0
  100094624  mov     x0, x21
  100094628  mov     x2, x22
  10009462c  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"BUY FOR %i", [[self->weaponStatsDict objectForKey:@"price"] intValue]] forState:0]
  100094630  b       loc_1000948a8
  100094634  b       loc_1000949e4
loc_100094638:
  100094638  adrp    x8, #0x100417000
  10009463c  nop
  100094640  ldr     x1, [x8, #0x920]
  100094644  mov     x3, #0
  100094648  adrp    x2, #0x1003c0000
  10009464c  add     x2, x2, #0xb0                            ; @"NO UPGRADE"
  100094650  mov     x0, x21
  100094654  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:@"NO UPGRADE" forState:0]
  100094658  mov     x0, x21
  10009465c  bl      _objc_release
  100094660  adrp    x8, #0x10041f000
  100094664  ldrsw   x8, [x8, #0xfa0]                         ; ivar offset ADArmoryWeaponDescriptionViewController.button_state (+0x168)
  100094668  str     wzr, [x19, x8]                           ; self->button_state = 0
  10009466c  mov     x0, x19
  100094670  mov     x1, x20
  100094674  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094678  mov     x29, x29
  10009467c  bl      _objc_retainAutoreleasedReturnValue
  100094680  mov     x21, x0
  100094684  adrp    x8, #0x100417000
  100094688  nop
  10009468c  ldr     x1, [x8, #0x98]
  100094690  mov     w2, #0
  100094694  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setDiamonds:0]
  100094698  mov     x0, x21
  10009469c  bl      _objc_release
loc_1000946a0:
  1000946a0  mov     x0, x19
  1000946a4  mov     x1, x20
  1000946a8  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  1000946ac  mov     x29, x29
  1000946b0  bl      _objc_retainAutoreleasedReturnValue
  1000946b4  mov     x21, x0
  1000946b8  adrp    x8, #0x100418000
  1000946bc  nop
  1000946c0  ldr     x1, [x8, #0xc50]
  1000946c4  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] centerButtonWithoutImage]
  1000946c8  mov     x0, x21
  1000946cc  bl      _objc_release
  1000946d0  mov     x0, x19
  1000946d4  mov     x1, x20
  1000946d8  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  1000946dc  mov     x29, x29
  1000946e0  bl      _objc_retainAutoreleasedReturnValue
  1000946e4  mov     x20, x0
  1000946e8  adrp    x8, #0x100417000
  1000946ec  nop
  1000946f0  ldr     x1, [x8, #0x90]
  1000946f4  mov     w2, #0
  1000946f8  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setCoins:0]
  1000946fc  mov     x0, x20
  100094700  bl      _objc_release
  100094704  adrp    x8, #0x10041a000
  100094708  nop
  10009470c  ldr     x1, [x8, #0xc0]
  100094710  mov     x0, x19
  100094714  bl      _objc_msgSend                            ; [self lockImage]
  100094718  mov     x29, x29
  10009471c  bl      _objc_retainAutoreleasedReturnValue
  100094720  mov     x20, x0
  100094724  adrp    x8, #0x100416000
  100094728  nop
  10009472c  ldr     x1, [x8, #0xba8]
  100094730  mov     w2, #1
  100094734  bl      _objc_msgSend                            ; [[self lockImage] setHidden:1]
  100094738  mov     x0, x20
  10009473c  b       loc_100094940
loc_100094740:
  100094740  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  100094744  adrp    x2, #0x1003b9000
  100094748  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  10009474c  mov     x1, x20
  100094750  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"priceInDiamonds"]
  100094754  mov     x29, x29
  100094758  bl      _objc_retainAutoreleasedReturnValue
  10009475c  mov     x21, x0
  100094760  bl      _objc_release
  100094764  cbz     x21, loc_1000948c0                       ; if ([self->weaponStatsDict objectForKey:@"priceInDiamonds"] == 0)
  100094768  adrp    x8, #0x100419000
  10009476c  nop
  100094770  ldr     x21, [x8, #0x728]
  100094774  mov     x0, x19
  100094778  mov     x1, x21
  10009477c  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094780  mov     x29, x29
  100094784  bl      _objc_retainAutoreleasedReturnValue
  100094788  mov     x23, x0
  10009478c  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  100094790  adrp    x2, #0x1003b9000
  100094794  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  100094798  mov     x1, x20
  10009479c  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"priceInDiamonds"]
  1000947a0  mov     x29, x29
  1000947a4  bl      _objc_retainAutoreleasedReturnValue
  1000947a8  mov     x24, x0
  1000947ac  adrp    x8, #0x100417000
  1000947b0  nop
  1000947b4  ldr     x22, [x8, #0x110]
  1000947b8  mov     x1, x22
  1000947bc  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]
  1000947c0  mov     x2, x0
  1000947c4  adrp    x8, #0x100417000
  1000947c8  nop
  1000947cc  ldr     x1, [x8, #0x98]
  1000947d0  mov     x0, x23
  1000947d4  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setDiamonds:[[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]]
  1000947d8  mov     x0, x24
  1000947dc  bl      _objc_release
  1000947e0  mov     x0, x23
  1000947e4  bl      _objc_release
  1000947e8  mov     x0, x19
  1000947ec  mov     x1, x21
  1000947f0  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  1000947f4  mov     x29, x29
  1000947f8  bl      _objc_retainAutoreleasedReturnValue
  1000947fc  mov     x23, x0
  100094800  adrp    x8, #0x100417000
  100094804  nop
  100094808  ldr     x1, [x8, #0xa90]
  10009480c  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] centerButtonTextWithDiamondsImage]
  100094810  mov     x0, x23
  100094814  bl      _objc_release
  100094818  mov     x0, x19
  10009481c  mov     x1, x21
  100094820  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094824  mov     x29, x29
  100094828  bl      _objc_retainAutoreleasedReturnValue
  10009482c  mov     x21, x0
  100094830  adrp    x8, #0x10041d000
  100094834  ldr     x23, [x8, #0xf78]                        ; class NSString
  100094838  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  10009483c  adrp    x2, #0x1003b9000
  100094840  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  100094844  mov     x1, x20
  100094848  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"priceInDiamonds"]
  10009484c  mov     x29, x29
  100094850  bl      _objc_retainAutoreleasedReturnValue
  100094854  mov     x20, x0
  100094858  mov     x1, x22
  10009485c  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]
  100094860  adrp    x8, #0x100416000
  100094864  nop
  100094868  ldr     x1, [x8, #0xee8]
  10009486c  str     x0, [sp]
  100094870  adrp    x2, #0x1003c0000
  100094874  add     x2, x2, #0xd0                            ; @"BUY FOR %i"
  100094878  mov     x0, x23
  10009487c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"BUY FOR %i", [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]]
  100094880  mov     x29, x29
  100094884  bl      _objc_retainAutoreleasedReturnValue
  100094888  mov     x22, x0
  10009488c  adrp    x8, #0x100417000
  100094890  nop
  100094894  ldr     x1, [x8, #0x920]
  100094898  mov     x3, #0
  10009489c  mov     x0, x21
  1000948a0  mov     x2, x22
  1000948a4  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"BUY FOR %i", [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]] forState:0]
loc_1000948a8:
  1000948a8  mov     x0, x22
  1000948ac  bl      _objc_release
  1000948b0  mov     x0, x20
  1000948b4  bl      _objc_release
  1000948b8  mov     x0, x21
  1000948bc  bl      _objc_release
loc_1000948c0:
  1000948c0  adrp    x8, #0x10041f000
  1000948c4  ldrsw   x8, [x8, #0xfa0]                         ; ivar offset ADArmoryWeaponDescriptionViewController.button_state (+0x168)
  1000948c8  mov     w9, #3
  1000948cc  str     w9, [x19, x8]                            ; self->button_state = 3
  1000948d0  adrp    x8, #0x10041a000
  1000948d4  nop
  1000948d8  ldr     x1, [x8, #0x98]
  1000948dc  mov     x0, x19
  1000948e0  bl      _objc_msgSend                            ; [self levelImage]
  1000948e4  mov     x29, x29
  1000948e8  bl      _objc_retainAutoreleasedReturnValue
  1000948ec  mov     x21, x0
  1000948f0  adrp    x8, #0x100416000
  1000948f4  nop
  1000948f8  ldr     x20, [x8, #0xba8]
  1000948fc  mov     w2, #1
  100094900  mov     x1, x20
  100094904  bl      _objc_msgSend                            ; [[self levelImage] setHidden:1]
  100094908  mov     x0, x21
  10009490c  bl      _objc_release
  100094910  adrp    x8, #0x10041a000
  100094914  nop
  100094918  ldr     x1, [x8, #0xc0]
  10009491c  mov     x0, x19
  100094920  bl      _objc_msgSend                            ; [self lockImage]
  100094924  mov     x29, x29
  100094928  bl      _objc_retainAutoreleasedReturnValue
  10009492c  mov     x21, x0
  100094930  mov     w2, #0
  100094934  mov     x1, x20
  100094938  bl      _objc_msgSend                            ; [[self lockImage] setHidden:0]
  10009493c  mov     x0, x21
loc_100094940:
  100094940  sub     sp, x29, #0x40
  100094944  ldp     x29, x30, [sp, #0x40]
  100094948  ldp     x20, x19, [sp, #0x30]
  10009494c  ldp     x22, x21, [sp, #0x20]
  100094950  ldp     x24, x23, [sp, #0x10]
  100094954  ldp     x26, x25, [sp], #0x50
  100094958  b       _objc_release
  10009495c  b       loc_1000949dc
  100094960  b       loc_100094990
  100094964  b       loc_1000949ac
  100094968  mov     x19, x0
  10009496c  b       loc_1000949f0
  100094970  b       loc_1000949dc
  100094974  b       loc_100094978
loc_100094978:
  100094978  mov     x19, x0
  10009497c  mov     x0, x20
  100094980  b       loc_1000949fc
  100094984  b       loc_1000949dc
  100094988  b       loc_1000949dc
  10009498c  b       loc_1000949dc
loc_100094990:
  100094990  mov     x19, x0
  100094994  mov     x0, x22
  100094998  bl      _objc_release
  10009499c  b       loc_1000949f8
  1000949a0  b       loc_1000949d0
  1000949a4  b       loc_1000949d0
  1000949a8  b       loc_1000949dc
loc_1000949ac:
  1000949ac  mov     x19, x0
  1000949b0  mov     x0, x24
  1000949b4  bl      _objc_release
  1000949b8  b       loc_1000949d4
  1000949bc  mov     x19, x0
  1000949c0  b       loc_1000949f0
  1000949c4  b       loc_1000949dc
  1000949c8  b       loc_1000949dc
  1000949cc  b       loc_1000949d0
loc_1000949d0:
  1000949d0  mov     x19, x0
loc_1000949d4:
  1000949d4  mov     x0, x23
  1000949d8  b       loc_1000949fc
loc_1000949dc:
  1000949dc  mov     x19, x0
  1000949e0  b       loc_1000949f8
loc_1000949e4:
  1000949e4  mov     x19, x0
  1000949e8  mov     x0, x22
  1000949ec  bl      _objc_release
loc_1000949f0:
  1000949f0  mov     x0, x20
  1000949f4  bl      _objc_release
loc_1000949f8:
  1000949f8  mov     x0, x21
loc_1000949fc:
  1000949fc  bl      _objc_release
  100094a00  mov     x0, x19
  100094a04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController cancelBuyOrUpgradeButtonPressed:]
; address 0x100094a08  size 32  kind objc
; ======================================================================
  100094a08  stp     x29, x30, [sp, #-0x10]!
  100094a0c  mov     x29, sp
  100094a10  adrp    x8, #0x100418000
  100094a14  nop
  100094a18  ldr     x1, [x8, #0x488]
  100094a1c  bl      _objc_msgSend                            ; [self initForCurrentLevel]
  100094a20  ldp     x29, x30, [sp], #0x10
  100094a24  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]
; address 0x100094a28  size 3920  kind objc
; ======================================================================
  100094a28  stp     x28, x27, [sp, #-0x60]!
  100094a2c  stp     x26, x25, [sp, #0x10]
  100094a30  stp     x24, x23, [sp, #0x20]
  100094a34  stp     x22, x21, [sp, #0x30]
  100094a38  stp     x20, x19, [sp, #0x40]
  100094a3c  stp     x29, x30, [sp, #0x50]
  100094a40  add     x29, sp, #0x50
  100094a44  sub     sp, sp, #0x90
  100094a48  mov     x20, x0
  100094a4c  adrp    x21, #0x1003b0000
  100094a50  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  100094a54  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  100094a58  stur    x21, [x29, #-0x58]
  100094a5c  mov     x0, x2
  100094a60  bl      _objc_retain
  100094a64  mov     x19, x0
  100094a68  adrp    x8, #0x10041f000
  100094a6c  ldrsw   x28, [x8, #0xfa0]                        ; ivar offset ADArmoryWeaponDescriptionViewController.button_state (+0x168)
  100094a70  ldr     w8, [x20, x28]                           ; w8 = self->button_state
  100094a74  cmp     w8, #3
  100094a78  b.hi    loc_100095784                            ; if (self->button_state >u 3)
  100094a7c  adr     x9, #0x100095968                         ; 0x100095968
  100094a80  nop
  100094a84  ldrsw   x8, [x9, x8, lsl #2]
  100094a88  add     x8, x8, x9
  100094a8c  br      x8                                       ; switch (self->button_state) { case 0: goto loc_100094a90; case 1: goto loc_100094ad4; case 2: goto loc_100094c80; case 3: goto loc_100094e04 }
loc_100094a90:  ; case 0
  100094a90  mov     x22, x21
  100094a94  adrp    x8, #0x100419000
  100094a98  nop
  100094a9c  ldr     x1, [x8, #0x728]
  100094aa0  mov     x0, x20
  100094aa4  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094aa8  mov     x29, x29
  100094aac  bl      _objc_retainAutoreleasedReturnValue
  100094ab0  mov     x21, x0
  100094ab4  adrp    x8, #0x100418000
  100094ab8  nop
  100094abc  ldr     x1, [x8, #0xc50]
  100094ac0  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] centerButtonWithoutImage]
  100094ac4  mov     x0, x21
  100094ac8  bl      _objc_release
  100094acc  mov     x21, x22
  100094ad0  b       loc_100095784
loc_100094ad4:  ; case 1
  100094ad4  adrp    x8, #0x10041f000
  100094ad8  ldrsw   x27, [x8, #0xf9c]                        ; ivar offset ADArmoryWeaponDescriptionViewController.nextLevelDict (+0x160)
  100094adc  ldr     x0, [x20, x27]                           ; x0 = self->nextLevelDict
  100094ae0  cbz     x0, loc_100095784                        ; if (self->nextLevelDict == 0)
  100094ae4  adrp    x8, #0x100416000
  100094ae8  nop
  100094aec  ldr     x21, [x8, #0xda0]
  100094af0  adrp    x2, #0x1003bd000
  100094af4  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  100094af8  mov     x1, x21
  100094afc  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  100094b00  mov     x29, x29
  100094b04  bl      _objc_retainAutoreleasedReturnValue
  100094b08  mov     x22, x0
  100094b0c  adrp    x8, #0x100417000
  100094b10  nop
  100094b14  ldr     x23, [x8, #0x110]
  100094b18  mov     x1, x23
  100094b1c  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]
  100094b20  mov     x24, x0
  100094b24  mov     x0, x22
  100094b28  bl      _objc_release
  100094b2c  adrp    x8, #0x100419000
  100094b30  add     x8, x8, #0x728                           ; &@selector(buyOrUpgradeButton)
  100094b34  ldr     x22, [x8]
  100094b38  cmp     w24, #1
  100094b3c  b.lt    loc_10009525c                            ; if ([[self->nextLevelDict valueForKey:@"upgradeCost"] intValue] < 1)
  100094b40  mov     x0, x20
  100094b44  mov     x1, x22
  100094b48  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094b4c  mov     x29, x29
  100094b50  bl      _objc_retainAutoreleasedReturnValue
  100094b54  mov     x24, x0
  100094b58  adrp    x8, #0x10041d000
  100094b5c  ldr     x26, [x8, #0xf78]                        ; class NSString
  100094b60  ldr     x0, [x20, x27]                           ; x0 = self->nextLevelDict
  100094b64  adrp    x2, #0x1003bd000
  100094b68  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  100094b6c  mov     x1, x21
  100094b70  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  100094b74  mov     x29, x29
  100094b78  bl      _objc_retainAutoreleasedReturnValue
  100094b7c  mov     x25, x0
  100094b80  mov     x1, x23
  100094b84  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]
  100094b88  adrp    x8, #0x100416000
  100094b8c  nop
  100094b90  ldr     x1, [x8, #0xee8]
  100094b94  str     x0, [sp]
  100094b98  adrp    x2, #0x1003c0000
  100094b9c  add     x2, x2, #0xf0                            ; @"LEVEL UP FOR %i"
  100094ba0  mov     x0, x26
  100094ba4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"LEVEL UP FOR %i", [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]]
  100094ba8  mov     x29, x29
  100094bac  bl      _objc_retainAutoreleasedReturnValue
  100094bb0  mov     x26, x0
  100094bb4  adrp    x8, #0x100417000
  100094bb8  nop
  100094bbc  ldr     x1, [x8, #0x920]
  100094bc0  mov     x3, #0
  100094bc4  mov     x0, x24
  100094bc8  mov     x2, x26
  100094bcc  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"LEVEL UP FOR %i", [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]] forState:0]
  100094bd0  mov     x0, x26
  100094bd4  bl      _objc_release
  100094bd8  mov     x0, x25
  100094bdc  bl      _objc_release
  100094be0  mov     x0, x24
  100094be4  bl      _objc_release
  100094be8  mov     x0, x20
  100094bec  mov     x1, x22
  100094bf0  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094bf4  mov     x29, x29
  100094bf8  bl      _objc_retainAutoreleasedReturnValue
  100094bfc  mov     x24, x0
  100094c00  ldr     x0, [x20, x27]                           ; x0 = self->nextLevelDict
  100094c04  adrp    x2, #0x1003bd000
  100094c08  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  100094c0c  mov     x1, x21
  100094c10  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  100094c14  mov     x29, x29
  100094c18  bl      _objc_retainAutoreleasedReturnValue
  100094c1c  mov     x25, x0
  100094c20  mov     x1, x23
  100094c24  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]
  100094c28  mov     x2, x0
  100094c2c  adrp    x8, #0x100417000
  100094c30  nop
  100094c34  ldr     x1, [x8, #0x90]
  100094c38  mov     x0, x24
  100094c3c  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setCoins:[[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]]
  100094c40  mov     x0, x25
  100094c44  bl      _objc_release
  100094c48  mov     x0, x24
  100094c4c  bl      _objc_release
  100094c50  mov     x0, x20
  100094c54  mov     x1, x22
  100094c58  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094c5c  mov     x29, x29
  100094c60  bl      _objc_retainAutoreleasedReturnValue
  100094c64  mov     x22, x0
  100094c68  adrp    x8, #0x100418000
  100094c6c  nop
  100094c70  ldr     x1, [x8, #0xc58]
  100094c74  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] centerButtonTextWithCoinsImage]
  100094c78  b       loc_100095394
  100094c7c  b       loc_1000958c8
loc_100094c80:  ; case 2
  100094c80  adrp    x8, #0x10041a000
  100094c84  nop
  100094c88  ldr     x1, [x8, #0xd0]
  100094c8c  mov     x0, x20
  100094c90  bl      _objc_msgSend                            ; [self upgradeToNextLevel]
  100094c94  cbz     w0, loc_100095784                        ; if ([self upgradeToNextLevel] == 0)
  100094c98  mov     x25, x21
  100094c9c  adrp    x8, #0x100419000
  100094ca0  nop
  100094ca4  ldr     x1, [x8, #0x728]
  100094ca8  mov     x0, x20
  100094cac  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100094cb0  mov     x29, x29
  100094cb4  bl      _objc_retainAutoreleasedReturnValue
  100094cb8  mov     x22, x0
  100094cbc  adrp    x8, #0x100417000
  100094cc0  nop
  100094cc4  ldr     x21, [x8, #0x998]
  100094cc8  mov     w2, #0
  100094ccc  mov     x1, x21
  100094cd0  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setUserInteractionEnabled:0]
  100094cd4  mov     x0, x22
  100094cd8  bl      _objc_release
  100094cdc  adrp    x8, #0x100417000
  100094ce0  nop
  100094ce4  ldr     x1, [x8, #0x2a8]
  100094ce8  mov     x0, x20
  100094cec  bl      _objc_msgSend                            ; [self statusBarViewController]
  100094cf0  mov     x29, x29
  100094cf4  bl      _objc_retainAutoreleasedReturnValue
  100094cf8  mov     x22, x0
  100094cfc  adrp    x8, #0x100417000
  100094d00  nop
  100094d04  ldr     x1, [x8, #0x7c8]
  100094d08  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  100094d0c  mov     x29, x29
  100094d10  bl      _objc_retainAutoreleasedReturnValue
  100094d14  mov     x23, x0
  100094d18  mov     w2, #0
  100094d1c  mov     x1, x21
  100094d20  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setUserInteractionEnabled:0]
  100094d24  mov     x0, x23
  100094d28  bl      _objc_release
  100094d2c  mov     x0, x22
  100094d30  bl      _objc_release
  100094d34  adrp    x8, #0x10041d000
  100094d38  ldr     x21, [x8, #0xf98]                        ; class UIView
  100094d3c  adrp    x8, #0x10041a000
  100094d40  nop
  100094d44  ldr     x1, [x8, #0x98]
  100094d48  mov     x0, x20
  100094d4c  bl      _objc_msgSend                            ; [self levelImage]
  100094d50  mov     x29, x29
  100094d54  bl      _objc_retainAutoreleasedReturnValue
  100094d58  mov     x22, x0
  100094d5c  adrp    x23, #0x1003b0000
  100094d60  ldr     x23, [x23, #0x118]                       ; __NSConcreteStackBlock
  100094d64  mov     w24, #-0x3e000000
  100094d68  str     x23, [sp, #0x40]
  100094d6c  stp     w24, wzr, [sp, #0x48]
  100094d70  adr     x8, #0x100095978                         ; &-[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke
  100094d74  nop
  100094d78  str     x8, [sp, #0x50]
  100094d7c  adrp    x8, #0x1003b2000
  100094d80  add     x8, x8, #0x130                           ; &d_1003b2130
  100094d84  str     x8, [sp, #0x58]
  100094d88  mov     x0, x20
  100094d8c  bl      _objc_retain
  100094d90  str     x0, [sp, #0x60]
  100094d94  str     x23, [sp, #0x18]
  100094d98  stp     w24, wzr, [sp, #0x20]
  100094d9c  adr     x8, #0x100095aa8                         ; &-[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke_2
  100094da0  nop
  100094da4  str     x8, [sp, #0x28]
  100094da8  adrp    x8, #0x1003b2000
  100094dac  add     x8, x8, #0x160                           ; &d_1003b2160
  100094db0  str     x8, [sp, #0x30]
  100094db4  bl      _objc_retain
  100094db8  str     x0, [sp, #0x38]
  100094dbc  adrp    x8, #0x100418000
  100094dc0  nop
  100094dc4  ldr     x1, [x8, #0xc80]
  100094dc8  fmov    d0, #0.50000000
  100094dcc  mov     w3, #0x200000
  100094dd0  add     x4, sp, #0x40
  100094dd4  add     x5, sp, #0x18
  100094dd8  mov     x0, x21
  100094ddc  mov     x2, x22
  100094de0  bl      _objc_msgSend                            ; [UIView transitionWithView:[self levelImage] duration:0.5 options:0x200000 animations:^{-[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke captures +0x20=self} completion:^{-[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADArmoryWeaponDescriptionViewControll…, +0x40=&d_1003b2130, +0x48=self}]
  100094de4  mov     x0, x22
  100094de8  bl      _objc_release
  100094dec  ldr     x0, [sp, #0x38]
  100094df0  bl      _objc_release
  100094df4  ldr     x0, [sp, #0x60]
  100094df8  bl      _objc_release
  100094dfc  mov     x21, x25
  100094e00  b       loc_100095784
loc_100094e04:  ; case 3
  100094e04  adrp    x8, #0x10041f000
  100094e08  ldrsw   x21, [x8, #0xf8c]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponStatsDict (+0x148)
  100094e0c  ldr     x0, [x20, x21]                           ; x0 = self->weaponStatsDict
  100094e10  adrp    x8, #0x100417000
  100094e14  nop
  100094e18  ldr     x27, [x8, #0x40]
  100094e1c  adrp    x2, #0x1003b9000
  100094e20  add     x2, x2, #0xd70                           ; @"price"
  100094e24  mov     x1, x27
  100094e28  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"price"]
  100094e2c  mov     x29, x29
  100094e30  bl      _objc_retainAutoreleasedReturnValue
  100094e34  mov     x23, x0
  100094e38  adrp    x8, #0x100417000
  100094e3c  nop
  100094e40  ldr     x22, [x8, #0x110]
  100094e44  mov     x1, x22
  100094e48  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"price"] intValue]
  100094e4c  mov     x24, x0
  100094e50  mov     x0, x23
  100094e54  bl      _objc_release
  100094e58  cbz     w24, loc_100094ee4                       ; if ([[self->weaponStatsDict objectForKey:@"price"] intValue] == 0)
  100094e5c  adrp    x21, #0x10041d000
  100094e60  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  100094e64  adrp    x8, #0x100416000
  100094e68  nop
  100094e6c  ldr     x25, [x8, #0xec8]
  100094e70  mov     x1, x25
  100094e74  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100094e78  mov     x29, x29
  100094e7c  bl      _objc_retainAutoreleasedReturnValue
  100094e80  mov     x22, x0
  100094e84  adrp    x8, #0x100417000
  100094e88  nop
  100094e8c  ldr     x26, [x8, #0x958]
  100094e90  mov     x1, x26
  100094e94  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100094e98  mov     x23, x0
  100094e9c  mov     x0, x22
  100094ea0  bl      _objc_release
  100094ea4  cmp     w23, w24
  100094ea8  b.ge    loc_100094fa0                            ; if ([[ADInventory sharedInventory] coins] >= [[self->weaponStatsDict objectForKey:@"price"] intValue])
  100094eac  adrp    x8, #0x100416000
  100094eb0  nop
  100094eb4  ldr     x1, [x8, #0xfa0]
  100094eb8  mov     x0, x20
  100094ebc  bl      _objc_msgSend                            ; [self armoryViewController]
  100094ec0  mov     x29, x29
  100094ec4  bl      _objc_retainAutoreleasedReturnValue
  100094ec8  mov     x21, x0
  100094ecc  adrp    x8, #0x100419000
  100094ed0  nop
  100094ed4  ldr     x1, [x8, #0x770]
  100094ed8  bl      _objc_msgSend                            ; [[self armoryViewController] showNotEnoughMoneyAlert]
  100094edc  b       loc_100094f98
  100094ee0  b       loc_1000958d0
loc_100094ee4:
  100094ee4  ldr     x0, [x20, x21]                           ; x0 = self->weaponStatsDict
  100094ee8  adrp    x2, #0x1003b9000
  100094eec  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  100094ef0  mov     x1, x27
  100094ef4  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"priceInDiamonds"]
  100094ef8  mov     x29, x29
  100094efc  bl      _objc_retainAutoreleasedReturnValue
  100094f00  mov     x23, x0
  100094f04  mov     x1, x22
  100094f08  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]
  100094f0c  mov     x24, x0
  100094f10  mov     x0, x23
  100094f14  bl      _objc_release
  100094f18  adrp    x21, #0x10041d000
  100094f1c  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  100094f20  adrp    x8, #0x100416000
  100094f24  nop
  100094f28  ldr     x25, [x8, #0xec8]
  100094f2c  mov     x1, x25
  100094f30  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100094f34  mov     x29, x29
  100094f38  bl      _objc_retainAutoreleasedReturnValue
  100094f3c  mov     x22, x0
  100094f40  adrp    x8, #0x100417000
  100094f44  nop
  100094f48  ldr     x26, [x8, #0x960]
  100094f4c  mov     x1, x26
  100094f50  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100094f54  mov     x23, x0
  100094f58  mov     x0, x22
  100094f5c  bl      _objc_release
  100094f60  cmp     w23, w24
  100094f64  b.ge    loc_1000954ac                            ; if ([[ADInventory sharedInventory] diamonds] >= [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue])
  100094f68  adrp    x8, #0x100416000
  100094f6c  nop
  100094f70  ldr     x1, [x8, #0xfa0]
  100094f74  mov     x0, x20
  100094f78  bl      _objc_msgSend                            ; [self armoryViewController]
  100094f7c  mov     x29, x29
  100094f80  bl      _objc_retainAutoreleasedReturnValue
  100094f84  mov     x21, x0
  100094f88  adrp    x8, #0x100417000
  100094f8c  nop
  100094f90  ldr     x1, [x8, #0xae0]
  100094f94  bl      _objc_msgSend                            ; [[self armoryViewController] showNoDiamondsAlert]
loc_100094f98:
  100094f98  mov     x0, x21
  100094f9c  b       loc_100095774
loc_100094fa0:
  100094fa0  adrp    x8, #0x10041f000
  100094fa4  ldrsw   x22, [x8, #0xf88]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100094fa8  ldr     x0, [x20, x22]                           ; x0 = self->weaponInventoryDict
  100094fac  adrp    x2, #0x1003b9000
  100094fb0  add     x2, x2, #0xdb0                           ; @"name"
  100094fb4  mov     x1, x27
  100094fb8  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100094fbc  stp     x22, x27, [sp, #8]
  100094fc0  mov     x29, x29
  100094fc4  bl      _objc_retainAutoreleasedReturnValue
  100094fc8  mov     x28, x0
  100094fcc  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  100094fd0  mov     x1, x25
  100094fd4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100094fd8  mov     x29, x29
  100094fdc  bl      _objc_retainAutoreleasedReturnValue
  100094fe0  mov     x23, x0
  100094fe4  adrp    x8, #0x100419000
  100094fe8  nop
  100094fec  ldr     x1, [x8, #0x758]
  100094ff0  mov     x2, x28
  100094ff4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] unlockWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100094ff8  mov     x0, x23
  100094ffc  bl      _objc_release
  100095000  adrp    x8, #0x100419000
  100095004  nop
  100095008  ldr     x1, [x8, #0x6b0]
  10009500c  mov     x0, x20
  100095010  bl      _objc_msgSend                            ; [self checkLock]
  100095014  adrp    x8, #0x10041d000
  100095018  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10009501c  adrp    x8, #0x100416000
  100095020  nop
  100095024  ldr     x1, [x8, #0xb28]
  100095028  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10009502c  mov     x22, x28
  100095030  mov     x29, x29
  100095034  bl      _objc_retainAutoreleasedReturnValue
  100095038  mov     x27, x0
  10009503c  adrp    x8, #0x100416000
  100095040  nop
  100095044  ldr     x1, [x8, #0xc18]
  100095048  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10009504c  mov     x29, x29
  100095050  bl      _objc_retainAutoreleasedReturnValue
  100095054  mov     x28, x0
  100095058  adrp    x8, #0x100417000
  10009505c  nop
  100095060  ldr     x1, [x8, #0xb08]
  100095064  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  100095068  mov     x29, x29
  10009506c  bl      _objc_retainAutoreleasedReturnValue
  100095070  mov     x23, x0
  100095074  neg     w2, w24
  100095078  adrp    x8, #0x100417000
  10009507c  nop
  100095080  ldr     x1, [x8, #0x968]
  100095084  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateCoins:-[[self->weaponStatsDict objectForKey:@"price"] intValue]]
  100095088  mov     x0, x23
  10009508c  bl      _objc_release
  100095090  mov     x0, x28
  100095094  bl      _objc_release
  100095098  mov     x0, x27
  10009509c  bl      _objc_release
  1000950a0  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  1000950a4  mov     x1, x25
  1000950a8  mov     x28, x22
  1000950ac  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000950b0  mov     x29, x29
  1000950b4  bl      _objc_retainAutoreleasedReturnValue
  1000950b8  mov     x27, x0
  1000950bc  mov     x1, x26
  1000950c0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000950c4  sub     w2, w0, w24                              ; t1 = ([[ADInventory sharedInventory] coins] - [[self->weaponStatsDict objectForKey:@"price"] intValue])
  1000950c8  adrp    x8, #0x100417000
  1000950cc  nop
  1000950d0  ldr     x25, [x8, #0x90]
  1000950d4  mov     x0, x27
  1000950d8  mov     x1, x25
  1000950dc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t1]
  1000950e0  mov     x0, x27
  1000950e4  bl      _objc_release
  1000950e8  adrp    x8, #0x10041e000
  1000950ec  ldr     x0, [x8, #8]                             ; class ADTracker
  1000950f0  adrp    x8, #0x100416000
  1000950f4  nop
  1000950f8  ldr     x1, [x8, #0xac0]
  1000950fc  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100095100  mov     x29, x29
  100095104  bl      _objc_retainAutoreleasedReturnValue
  100095108  mov     x23, x0
  10009510c  scvtf   d0, w24
  100095110  adrp    x8, #0x10041a000
  100095114  nop
  100095118  ldr     x1, [x8, #0xd8]
  10009511c  mov     x2, x28
  100095120  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordPurchaseForItemOrWeapon:[self->weaponInventoryDict objectForKey:@"name"] Price:(float)[[self->weaponStatsDict objectForKey:@"price"] intValue]]
  100095124  mov     x0, x23
  100095128  bl      _objc_release
  10009512c  adrp    x8, #0x10041a000
  100095130  nop
  100095134  ldr     x1, [x8, #0x98]
  100095138  mov     x0, x20
  10009513c  bl      _objc_msgSend                            ; [self levelImage]
  100095140  mov     x29, x29
  100095144  bl      _objc_retainAutoreleasedReturnValue
  100095148  mov     x23, x0
  10009514c  adrp    x8, #0x100416000
  100095150  nop
  100095154  ldr     x1, [x8, #0xba8]
  100095158  mov     w2, #0
  10009515c  bl      _objc_msgSend                            ; [[self levelImage] setHidden:0]
  100095160  mov     x0, x23
  100095164  bl      _objc_release
  100095168  adrp    x8, #0x100419000
  10009516c  nop
  100095170  ldr     x1, [x8, #0x728]
  100095174  mov     x0, x20
  100095178  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  10009517c  mov     x29, x29
  100095180  bl      _objc_retainAutoreleasedReturnValue
  100095184  mov     x23, x0
  100095188  mov     w2, #0
  10009518c  mov     x1, x25
  100095190  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setCoins:0]
  100095194  mov     x0, x23
  100095198  bl      _objc_release
  10009519c  adrp    x8, #0x100418000
  1000951a0  nop
  1000951a4  ldr     x1, [x8, #0x528]
  1000951a8  mov     x0, x20
  1000951ac  bl      _objc_msgSend                            ; [self checkEquipButtons]
  1000951b0  adrp    x2, #0x1003b9000
  1000951b4  add     x2, x2, #0xdb0                           ; @"name"
  1000951b8  stur    x2, [x29, #-0x68]
  1000951bc  ldp     x8, x1, [sp, #8]
  1000951c0  ldr     x0, [x20, x8]                            ; x0 = self->weaponInventoryDict
  1000951c4  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000951c8  mov     x29, x29
  1000951cc  bl      _objc_retainAutoreleasedReturnValue
  1000951d0  mov     x23, x0
  1000951d4  stur    x23, [x29, #-0x60]
  1000951d8  adrp    x8, #0x10041d000
  1000951dc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000951e0  adrp    x8, #0x100416000
  1000951e4  nop
  1000951e8  ldr     x1, [x8, #0xcd0]
  1000951ec  sub     x2, x29, #0x60
  1000951f0  sub     x3, x29, #0x68
  1000951f4  mov     w4, #1
  1000951f8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x60] forKeys:&x29[-0x68] count:1]
  1000951fc  mov     x29, x29
  100095200  bl      _objc_retainAutoreleasedReturnValue
  100095204  mov     x21, x0
  100095208  mov     x0, x23
  10009520c  bl      _objc_release
  100095210  adrp    x8, #0x10041d000
  100095214  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100095218  adrp    x8, #0x100416000
  10009521c  nop
  100095220  ldr     x1, [x8, #0xe88]
  100095224  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100095228  mov     x29, x29
  10009522c  bl      _objc_retainAutoreleasedReturnValue
  100095230  mov     x23, x0
  100095234  adrp    x8, #0x100417000
  100095238  nop
  10009523c  ldr     x1, [x8, #0xf98]
  100095240  adrp    x2, #0x1003b9000
  100095244  add     x2, x2, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  100095248  mov     x3, x20
  10009524c  mov     x4, x21
  100095250  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"WEAPON_UPGRADE_EVENT" object:self userInfo:[NSDictionary dictionaryWithObjects:&x29[-0x60] forKeys:&x29[-0x68] count:1]]
  100095254  b       loc_100095760
  100095258  b       loc_100095938
loc_10009525c:
  10009525c  mov     x0, x20
  100095260  mov     x1, x22
  100095264  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100095268  mov     x29, x29
  10009526c  bl      _objc_retainAutoreleasedReturnValue
  100095270  mov     x24, x0
  100095274  adrp    x8, #0x10041d000
  100095278  ldr     x26, [x8, #0xf78]                        ; class NSString
  10009527c  ldr     x0, [x20, x27]                           ; x0 = self->nextLevelDict
  100095280  adrp    x2, #0x1003be000
  100095284  add     x2, x2, #0xed0                           ; @"upgradeCostInDiamonds"
  100095288  mov     x1, x21
  10009528c  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"]
  100095290  mov     x29, x29
  100095294  bl      _objc_retainAutoreleasedReturnValue
  100095298  mov     x25, x0
  10009529c  mov     x1, x23
  1000952a0  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]
  1000952a4  adrp    x8, #0x100416000
  1000952a8  nop
  1000952ac  ldr     x1, [x8, #0xee8]
  1000952b0  str     x0, [sp]
  1000952b4  adrp    x2, #0x1003c0000
  1000952b8  add     x2, x2, #0xf0                            ; @"LEVEL UP FOR %i"
  1000952bc  mov     x0, x26
  1000952c0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"LEVEL UP FOR %i", [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]]
  1000952c4  mov     x29, x29
  1000952c8  bl      _objc_retainAutoreleasedReturnValue
  1000952cc  mov     x26, x0
  1000952d0  adrp    x8, #0x100417000
  1000952d4  nop
  1000952d8  ldr     x1, [x8, #0x920]
  1000952dc  mov     x3, #0
  1000952e0  mov     x0, x24
  1000952e4  mov     x2, x26
  1000952e8  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"LEVEL UP FOR %i", [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]] forState:0]
  1000952ec  mov     x0, x26
  1000952f0  bl      _objc_release
  1000952f4  mov     x0, x25
  1000952f8  bl      _objc_release
  1000952fc  mov     x0, x24
  100095300  bl      _objc_release
  100095304  mov     x0, x20
  100095308  mov     x1, x22
  10009530c  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100095310  mov     x29, x29
  100095314  bl      _objc_retainAutoreleasedReturnValue
  100095318  mov     x24, x0
  10009531c  ldr     x0, [x20, x27]                           ; x0 = self->nextLevelDict
  100095320  adrp    x2, #0x1003be000
  100095324  add     x2, x2, #0xed0                           ; @"upgradeCostInDiamonds"
  100095328  mov     x1, x21
  10009532c  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"]
  100095330  mov     x29, x29
  100095334  bl      _objc_retainAutoreleasedReturnValue
  100095338  mov     x25, x0
  10009533c  mov     x1, x23
  100095340  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]
  100095344  mov     x2, x0
  100095348  adrp    x8, #0x100417000
  10009534c  nop
  100095350  ldr     x1, [x8, #0x98]
  100095354  mov     x0, x24
  100095358  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setDiamonds:[[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]]
  10009535c  mov     x0, x25
  100095360  bl      _objc_release
  100095364  mov     x0, x24
  100095368  bl      _objc_release
  10009536c  mov     x0, x20
  100095370  mov     x1, x22
  100095374  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100095378  mov     x29, x29
  10009537c  bl      _objc_retainAutoreleasedReturnValue
  100095380  mov     x22, x0
  100095384  adrp    x8, #0x100417000
  100095388  nop
  10009538c  ldr     x1, [x8, #0xa90]
  100095390  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] centerButtonTextWithDiamondsImage]
loc_100095394:
  100095394  mov     x0, x22
  100095398  bl      _objc_release
  10009539c  adrp    x8, #0x100418000
  1000953a0  nop
  1000953a4  ldr     x1, [x8, #0xc78]
  1000953a8  mov     x0, x20
  1000953ac  bl      _objc_msgSend                            ; [self showNextLevel]
  1000953b0  adrp    x8, #0x10041a000
  1000953b4  nop
  1000953b8  ldr     x1, [x8, #0xa0]
  1000953bc  mov     x0, x20
  1000953c0  bl      _objc_msgSend                            ; [self cancelBuyOrUpgradeButton]
  1000953c4  mov     x29, x29
  1000953c8  bl      _objc_retainAutoreleasedReturnValue
  1000953cc  mov     x22, x0
  1000953d0  adrp    x8, #0x100416000
  1000953d4  nop
  1000953d8  ldr     x1, [x8, #0xba8]
  1000953dc  mov     w2, #0
  1000953e0  bl      _objc_msgSend                            ; [[self cancelBuyOrUpgradeButton] setHidden:0]
  1000953e4  mov     x0, x22
  1000953e8  bl      _objc_release
  1000953ec  mov     w8, #2
  1000953f0  str     w8, [x20, x28]                           ; self->button_state = 2
  1000953f4  adrp    x8, #0x10041f000
  1000953f8  ldrsw   x8, [x8, #0xf88]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  1000953fc  ldr     x0, [x20, x8]                            ; x0 = self->weaponInventoryDict
  100095400  adrp    x8, #0x100417000
  100095404  nop
  100095408  ldr     x1, [x8, #0x40]
  10009540c  adrp    x2, #0x1003b9000
  100095410  add     x2, x2, #0xdb0                           ; @"name"
  100095414  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100095418  mov     x29, x29
  10009541c  bl      _objc_retainAutoreleasedReturnValue
  100095420  mov     x22, x0
  100095424  ldr     x0, [x20, x27]                           ; x0 = self->nextLevelDict
  100095428  adrp    x2, #0x1003bd000
  10009542c  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  100095430  mov     x1, x21
  100095434  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  100095438  mov     x29, x29
  10009543c  bl      _objc_retainAutoreleasedReturnValue
  100095440  mov     x21, x0
  100095444  adrp    x8, #0x100417000
  100095448  nop
  10009544c  ldr     x1, [x8, #0xb0]
  100095450  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] integerValue]
  100095454  mov     x20, x0
  100095458  mov     x0, x21
  10009545c  bl      _objc_release
  100095460  adrp    x8, #0x10041e000
  100095464  ldr     x0, [x8, #8]                             ; class ADTracker
  100095468  adrp    x8, #0x100416000
  10009546c  nop
  100095470  ldr     x1, [x8, #0xac0]
  100095474  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100095478  mov     x29, x29
  10009547c  bl      _objc_retainAutoreleasedReturnValue
  100095480  mov     x21, x0
  100095484  adrp    x8, #0x10041a000
  100095488  nop
  10009548c  ldr     x1, [x8, #0xc8]
  100095490  mov     x2, x22
  100095494  mov     x3, x20
  100095498  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponUpgradePreview:[self->weaponInventoryDict objectForKey:@"name"] LevelPreviewed:[[self->nextLevelDict valueForKey:@"upgradeCost"] integerValue]]
  10009549c  mov     x0, x21
  1000954a0  bl      _objc_release
  1000954a4  mov     x0, x22
  1000954a8  b       loc_100095774
loc_1000954ac:
  1000954ac  adrp    x8, #0x10041f000
  1000954b0  ldrsw   x22, [x8, #0xf88]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  1000954b4  ldr     x0, [x20, x22]                           ; x0 = self->weaponInventoryDict
  1000954b8  adrp    x2, #0x1003b9000
  1000954bc  add     x2, x2, #0xdb0                           ; @"name"
  1000954c0  mov     x1, x27
  1000954c4  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000954c8  stp     x22, x27, [sp, #8]
  1000954cc  mov     x29, x29
  1000954d0  bl      _objc_retainAutoreleasedReturnValue
  1000954d4  mov     x28, x0
  1000954d8  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  1000954dc  mov     x1, x25
  1000954e0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000954e4  mov     x29, x29
  1000954e8  bl      _objc_retainAutoreleasedReturnValue
  1000954ec  mov     x23, x0
  1000954f0  adrp    x8, #0x100419000
  1000954f4  nop
  1000954f8  ldr     x1, [x8, #0x758]
  1000954fc  mov     x2, x28
  100095500  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] unlockWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100095504  mov     x0, x23
  100095508  bl      _objc_release
  10009550c  adrp    x8, #0x100419000
  100095510  nop
  100095514  ldr     x1, [x8, #0x6b0]
  100095518  mov     x0, x20
  10009551c  bl      _objc_msgSend                            ; [self checkLock]
  100095520  adrp    x8, #0x10041d000
  100095524  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100095528  adrp    x8, #0x100416000
  10009552c  nop
  100095530  ldr     x1, [x8, #0xb28]
  100095534  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100095538  mov     x22, x28
  10009553c  mov     x29, x29
  100095540  bl      _objc_retainAutoreleasedReturnValue
  100095544  mov     x27, x0
  100095548  adrp    x8, #0x100416000
  10009554c  nop
  100095550  ldr     x1, [x8, #0xc18]
  100095554  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100095558  mov     x29, x29
  10009555c  bl      _objc_retainAutoreleasedReturnValue
  100095560  mov     x28, x0
  100095564  adrp    x8, #0x100417000
  100095568  nop
  10009556c  ldr     x1, [x8, #0xb08]
  100095570  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  100095574  mov     x29, x29
  100095578  bl      _objc_retainAutoreleasedReturnValue
  10009557c  mov     x23, x0
  100095580  neg     w2, w24
  100095584  adrp    x8, #0x100418000
  100095588  nop
  10009558c  ldr     x1, [x8, #0x6b8]
  100095590  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateDiamonds:-[[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]]
  100095594  mov     x0, x23
  100095598  bl      _objc_release
  10009559c  mov     x0, x28
  1000955a0  bl      _objc_release
  1000955a4  mov     x0, x27
  1000955a8  bl      _objc_release
  1000955ac  ldr     x0, [x21, #0xf70]                        ; class ADInventory
  1000955b0  mov     x1, x25
  1000955b4  mov     x28, x22
  1000955b8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000955bc  mov     x29, x29
  1000955c0  bl      _objc_retainAutoreleasedReturnValue
  1000955c4  mov     x27, x0
  1000955c8  mov     x1, x26
  1000955cc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  1000955d0  sub     w2, w0, w24                              ; t2 = ([[ADInventory sharedInventory] diamonds] - [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue])
  1000955d4  adrp    x8, #0x100417000
  1000955d8  nop
  1000955dc  ldr     x25, [x8, #0x98]
  1000955e0  mov     x0, x27
  1000955e4  mov     x1, x25
  1000955e8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:t2]
  1000955ec  mov     x0, x27
  1000955f0  bl      _objc_release
  1000955f4  adrp    x8, #0x10041e000
  1000955f8  ldr     x0, [x8, #8]                             ; class ADTracker
  1000955fc  adrp    x8, #0x100416000
  100095600  nop
  100095604  ldr     x1, [x8, #0xac0]
  100095608  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10009560c  mov     x29, x29
  100095610  bl      _objc_retainAutoreleasedReturnValue
  100095614  mov     x23, x0
  100095618  scvtf   d0, w24
  10009561c  adrp    x8, #0x10041a000
  100095620  nop
  100095624  ldr     x1, [x8, #0xd8]
  100095628  mov     x2, x28
  10009562c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordPurchaseForItemOrWeapon:[self->weaponInventoryDict objectForKey:@"name"] Price:(float)[[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]]
  100095630  mov     x0, x23
  100095634  bl      _objc_release
  100095638  adrp    x8, #0x10041a000
  10009563c  nop
  100095640  ldr     x1, [x8, #0x98]
  100095644  mov     x0, x20
  100095648  bl      _objc_msgSend                            ; [self levelImage]
  10009564c  mov     x29, x29
  100095650  bl      _objc_retainAutoreleasedReturnValue
  100095654  mov     x23, x0
  100095658  adrp    x8, #0x100416000
  10009565c  nop
  100095660  ldr     x1, [x8, #0xba8]
  100095664  mov     w2, #0
  100095668  bl      _objc_msgSend                            ; [[self levelImage] setHidden:0]
  10009566c  mov     x0, x23
  100095670  bl      _objc_release
  100095674  adrp    x8, #0x100419000
  100095678  nop
  10009567c  ldr     x1, [x8, #0x728]
  100095680  mov     x0, x20
  100095684  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100095688  mov     x29, x29
  10009568c  bl      _objc_retainAutoreleasedReturnValue
  100095690  mov     x23, x0
  100095694  mov     w2, #0
  100095698  mov     x1, x25
  10009569c  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setDiamonds:0]
  1000956a0  mov     x0, x23
  1000956a4  bl      _objc_release
  1000956a8  adrp    x8, #0x100418000
  1000956ac  nop
  1000956b0  ldr     x1, [x8, #0x528]
  1000956b4  mov     x0, x20
  1000956b8  bl      _objc_msgSend                            ; [self checkEquipButtons]
  1000956bc  adrp    x2, #0x1003b9000
  1000956c0  add     x2, x2, #0xdb0                           ; @"name"
  1000956c4  str     x2, [sp, #0x68]
  1000956c8  ldp     x8, x1, [sp, #8]
  1000956cc  ldr     x0, [x20, x8]                            ; x0 = self->weaponInventoryDict
  1000956d0  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000956d4  mov     x29, x29
  1000956d8  bl      _objc_retainAutoreleasedReturnValue
  1000956dc  mov     x23, x0
  1000956e0  str     x23, [sp, #0x70]
  1000956e4  adrp    x8, #0x10041d000
  1000956e8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000956ec  adrp    x8, #0x100416000
  1000956f0  nop
  1000956f4  ldr     x1, [x8, #0xcd0]
  1000956f8  add     x2, sp, #0x70
  1000956fc  add     x3, sp, #0x68
  100095700  mov     w4, #1
  100095704  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x70] forKeys:&sp[0x68] count:1]
  100095708  mov     x29, x29
  10009570c  bl      _objc_retainAutoreleasedReturnValue
  100095710  mov     x21, x0
  100095714  mov     x0, x23
  100095718  bl      _objc_release
  10009571c  adrp    x8, #0x10041d000
  100095720  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100095724  adrp    x8, #0x100416000
  100095728  nop
  10009572c  ldr     x1, [x8, #0xe88]
  100095730  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100095734  mov     x29, x29
  100095738  bl      _objc_retainAutoreleasedReturnValue
  10009573c  mov     x23, x0
  100095740  adrp    x8, #0x100417000
  100095744  nop
  100095748  ldr     x1, [x8, #0xf98]
  10009574c  adrp    x2, #0x1003b9000
  100095750  add     x2, x2, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  100095754  mov     x3, x20
  100095758  mov     x4, x21
  10009575c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"WEAPON_UPGRADE_EVENT" object:self userInfo:[NSDictionary dictionaryWithObjects:&sp[0x70] forKeys:&sp[0x68] count:1]]
loc_100095760:
  100095760  mov     x0, x23
  100095764  bl      _objc_release
  100095768  mov     x0, x21
  10009576c  bl      _objc_release
  100095770  mov     x0, x28
loc_100095774:
  100095774  bl      _objc_release
  100095778  adrp    x21, #0x1003b0000
  10009577c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  100095780  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
loc_100095784:
  100095784  mov     x0, x19
  100095788  bl      _objc_release
  10009578c  ldur    x8, [x29, #-0x58]
  100095790  sub     x8, x21, x8
  100095794  cbnz    x8, loc_1000957b8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100095798  sub     sp, x29, #0x50
  10009579c  ldp     x29, x30, [sp, #0x50]
  1000957a0  ldp     x20, x19, [sp, #0x40]
  1000957a4  ldp     x22, x21, [sp, #0x30]
  1000957a8  ldp     x24, x23, [sp, #0x20]
  1000957ac  ldp     x26, x25, [sp, #0x10]
  1000957b0  ldp     x28, x27, [sp], #0x60
  1000957b4  ret
loc_1000957b8:
  1000957b8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000957bc:
  1000957bc  mov     x20, x0
  1000957c0  b       loc_100095958
  1000957c4  b       loc_1000957c8
loc_1000957c8:
  1000957c8  mov     x22, x28
  1000957cc  b       loc_1000958c8
  1000957d0  b       loc_1000958c8
  1000957d4  b       loc_1000958d0
  1000957d8  b       loc_10009584c
  1000957dc  b       loc_100095830
  1000957e0  b       loc_100095830
  1000957e4  b       loc_1000958c8
  1000957e8  b       loc_1000958c8
  1000957ec  b       loc_100095860
  1000957f0  b       loc_1000958c8
  1000957f4  b       loc_100095930
  1000957f8  b       loc_100095930
  1000957fc  b       loc_1000958c8
  100095800  b       loc_1000958c8
  100095804  b       loc_100095920
  100095808  b       loc_1000957bc
  10009580c  mov     x20, x0
  100095810  mov     x0, x22
  100095814  bl      _objc_release
  100095818  ldr     x0, [sp, #0x38]
  10009581c  bl      _objc_release
  100095820  ldr     x0, [sp, #0x60]
  100095824  bl      _objc_release
  100095828  b       loc_100095958
  10009582c  b       loc_100095830
loc_100095830:
  100095830  mov     x20, x0
  100095834  b       loc_1000958ac
  100095838  mov     x20, x0
  10009583c  b       loc_1000958b4
  100095840  b       loc_1000958a0
  100095844  mov     x20, x0
  100095848  b       loc_1000958b4
loc_10009584c:
  10009584c  mov     x20, x0
  100095850  mov     x0, x23
  100095854  bl      _objc_release
  100095858  b       loc_100095958
  10009585c  b       loc_1000958c8
loc_100095860:
  100095860  mov     x22, x28
  100095864  mov     x20, x0
  100095868  b       loc_100095908
  10009586c  b       loc_10009591c
  100095870  mov     x20, x0
  100095874  b       loc_100095908
  100095878  mov     x20, x0
  10009587c  b       loc_100095900
  100095880  b       loc_1000958f4
  100095884  b       loc_10009591c
  100095888  b       loc_10009591c
  10009588c  b       loc_10009591c
  100095890  b       loc_10009591c
  100095894  b       loc_10009592c
  100095898  mov     x20, x0
  10009589c  b       loc_1000958b4
loc_1000958a0:
  1000958a0  mov     x20, x0
  1000958a4  mov     x0, x26
  1000958a8  bl      _objc_release
loc_1000958ac:
  1000958ac  mov     x0, x25
  1000958b0  bl      _objc_release
loc_1000958b4:
  1000958b4  mov     x0, x24
  1000958b8  bl      _objc_release
  1000958bc  b       loc_100095958
  1000958c0  mov     x20, x0
  1000958c4  b       loc_1000958b4
loc_1000958c8:
  1000958c8  mov     x20, x0
  1000958cc  b       loc_100095950
loc_1000958d0:
  1000958d0  mov     x20, x0
  1000958d4  mov     x0, x21
  1000958d8  bl      _objc_release
  1000958dc  b       loc_100095958
  1000958e0  b       loc_10009591c
  1000958e4  mov     x20, x0
  1000958e8  b       loc_100095908
  1000958ec  mov     x20, x0
  1000958f0  b       loc_100095900
loc_1000958f4:
  1000958f4  mov     x20, x0
  1000958f8  mov     x0, x23
  1000958fc  bl      _objc_release
loc_100095900:
  100095900  mov     x0, x28
  100095904  bl      _objc_release
loc_100095908:
  100095908  mov     x0, x27
  10009590c  b       loc_10009594c
  100095910  b       loc_10009591c
  100095914  b       loc_10009591c
  100095918  b       loc_10009591c
loc_10009591c:
  10009591c  mov     x22, x28
loc_100095920:
  100095920  mov     x20, x0
  100095924  mov     x0, x23
  100095928  b       loc_10009594c
loc_10009592c:
  10009592c  mov     x22, x28
loc_100095930:
  100095930  mov     x20, x0
  100095934  b       loc_100095948
loc_100095938:
  100095938  mov     x22, x28
  10009593c  mov     x20, x0
  100095940  mov     x0, x23
  100095944  bl      _objc_release
loc_100095948:
  100095948  mov     x0, x21
loc_10009594c:
  10009594c  bl      _objc_release
loc_100095950:
  100095950  mov     x0, x22
  100095954  bl      _objc_release
loc_100095958:
  100095958  mov     x0, x19
  10009595c  bl      _objc_release
  100095960  mov     x0, x20
  100095964  bl      __Unwind_Resume                          ; Unwind_Resume()
  100095968  .word   jump table of 100094a8c, case 0 -> loc_100094a90
  10009596c  .word   jump table of 100094a8c, case 1 -> loc_100094ad4
  100095970  .word   jump table of 100094a8c, case 2 -> loc_100094c80
  100095974  .word   jump table of 100094a8c, case 3 -> loc_100094e04

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke
; address 0x100095978  size 288  kind block
; ======================================================================
  100095978  stp     x22, x21, [sp, #-0x30]!
  10009597c  stp     x20, x19, [sp, #0x10]
  100095980  stp     x29, x30, [sp, #0x20]
  100095984  add     x29, sp, #0x20
  100095988  sub     sp, sp, #0x10
  10009598c  mov     x20, x0
  100095990  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100095994  adrp    x8, #0x10041a000
  100095998  nop
  10009599c  ldr     x1, [x8, #0x98]
  1000959a0  bl      _objc_msgSend                            ; [self levelImage]
  1000959a4  mov     x29, x29
  1000959a8  bl      _objc_retainAutoreleasedReturnValue
  1000959ac  mov     x19, x0
  1000959b0  adrp    x8, #0x10041d000
  1000959b4  ldr     x21, [x8, #0xf10]                        ; class UIImage
  1000959b8  nop
  1000959bc  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000959c0  ldr     x8, [x20, #0x20]                         ; x8 = captured self
  1000959c4  adrp    x9, #0x10041f000
  1000959c8  ldrsw   x9, [x9, #0xf94]                         ; ivar offset ADArmoryWeaponDescriptionViewController.current_level (+0x16c)
  1000959cc  ldr     w8, [x8, x9]                             ; w8 = self->current_level
  1000959d0  add     w8, w8, #1
  1000959d4  adrp    x9, #0x100416000
  1000959d8  nop
  1000959dc  ldr     x1, [x9, #0xee8]
  1000959e0  str     x8, [sp]
  1000959e4  adrp    x2, #0x1003bd000
  1000959e8  add     x2, x2, #0x490                           ; @"badge_level%i"
  1000959ec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"badge_level%i", (self->current_level + 1)]
  1000959f0  mov     x29, x29
  1000959f4  bl      _objc_retainAutoreleasedReturnValue
  1000959f8  mov     x20, x0
  1000959fc  adrp    x8, #0x100416000
  100095a00  nop
  100095a04  ldr     x1, [x8, #0xd40]
  100095a08  mov     x0, x21
  100095a0c  mov     x2, x20
  100095a10  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", (self->current_level + 1)]]
  100095a14  mov     x29, x29
  100095a18  bl      _objc_retainAutoreleasedReturnValue
  100095a1c  mov     x21, x0
  100095a20  adrp    x8, #0x100416000
  100095a24  nop
  100095a28  ldr     x1, [x8, #0xef0]
  100095a2c  mov     x0, x19
  100095a30  mov     x2, x21
  100095a34  bl      _objc_msgSend                            ; [[self levelImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", (self->current_level + 1)]]]
  100095a38  mov     x0, x21
  100095a3c  bl      _objc_release
  100095a40  mov     x0, x20
  100095a44  bl      _objc_release
  100095a48  mov     x0, x19
  100095a4c  sub     sp, x29, #0x20
  100095a50  ldp     x29, x30, [sp, #0x20]
  100095a54  ldp     x20, x19, [sp, #0x10]
  100095a58  ldp     x22, x21, [sp], #0x30
  100095a5c  b       _objc_release
  100095a60  mov     x21, x0
  100095a64  b       loc_100095a88
  100095a68  mov     x21, x0
  100095a6c  b       loc_100095a80
  100095a70  mov     x1, x21
  100095a74  mov     x21, x0
  100095a78  mov     x0, x1
  100095a7c  bl      _objc_release
loc_100095a80:
  100095a80  mov     x0, x20
  100095a84  bl      _objc_release
loc_100095a88:
  100095a88  mov     x0, x19
  100095a8c  bl      _objc_release
  100095a90  mov     x0, x21
  100095a94  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100095a98
; address 0x100095a98  size 8  kind sub
; ======================================================================
  100095a98  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100095a9c  b       _objc_retain

; ======================================================================
; sub_100095aa0
; address 0x100095aa0  size 8  kind sub
; ======================================================================
  100095aa0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100095aa4  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController buyOrUpgradeButtonPressed:]_block_invoke_2
; address 0x100095aa8  size 232  kind block
; ======================================================================
  100095aa8  stp     x22, x21, [sp, #-0x30]!
  100095aac  stp     x20, x19, [sp, #0x10]
  100095ab0  stp     x29, x30, [sp, #0x20]
  100095ab4  add     x29, sp, #0x20
  100095ab8  mov     x20, x0
  100095abc  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100095ac0  adrp    x8, #0x100419000
  100095ac4  nop
  100095ac8  ldr     x1, [x8, #0x728]
  100095acc  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  100095ad0  mov     x29, x29
  100095ad4  bl      _objc_retainAutoreleasedReturnValue
  100095ad8  mov     x21, x0
  100095adc  adrp    x8, #0x100417000
  100095ae0  nop
  100095ae4  ldr     x19, [x8, #0x998]
  100095ae8  mov     w2, #1
  100095aec  mov     x1, x19
  100095af0  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setUserInteractionEnabled:1]
  100095af4  mov     x0, x21
  100095af8  bl      _objc_release
  100095afc  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100095b00  adrp    x8, #0x100417000
  100095b04  nop
  100095b08  ldr     x1, [x8, #0x2a8]
  100095b0c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100095b10  mov     x29, x29
  100095b14  bl      _objc_retainAutoreleasedReturnValue
  100095b18  mov     x20, x0
  100095b1c  adrp    x8, #0x100417000
  100095b20  nop
  100095b24  ldr     x1, [x8, #0x7c8]
  100095b28  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  100095b2c  mov     x29, x29
  100095b30  bl      _objc_retainAutoreleasedReturnValue
  100095b34  mov     x21, x0
  100095b38  mov     w2, #1
  100095b3c  mov     x1, x19
  100095b40  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setUserInteractionEnabled:1]
  100095b44  mov     x0, x21
  100095b48  bl      _objc_release
  100095b4c  mov     x0, x20
  100095b50  ldp     x29, x30, [sp, #0x20]
  100095b54  ldp     x20, x19, [sp, #0x10]
  100095b58  ldp     x22, x21, [sp], #0x30
  100095b5c  b       _objc_release
  100095b60  mov     x19, x0
  100095b64  mov     x0, x21
  100095b68  b       loc_100095b84
  100095b6c  mov     x19, x0
  100095b70  b       loc_100095b80
  100095b74  mov     x19, x0
  100095b78  mov     x0, x21
  100095b7c  bl      _objc_release
loc_100095b80:
  100095b80  mov     x0, x20
loc_100095b84:
  100095b84  bl      _objc_release
  100095b88  mov     x0, x19
  100095b8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100095b90
; address 0x100095b90  size 8  kind sub
; ======================================================================
  100095b90  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100095b94  b       _objc_retain

; ======================================================================
; sub_100095b98
; address 0x100095b98  size 8  kind sub
; ======================================================================
  100095b98  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100095b9c  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController showNextLevel]
; address 0x100095ba0  size 308  kind objc
; ======================================================================
  100095ba0  stp     x26, x25, [sp, #-0x50]!
  100095ba4  stp     x24, x23, [sp, #0x10]
  100095ba8  stp     x22, x21, [sp, #0x20]
  100095bac  stp     x20, x19, [sp, #0x30]
  100095bb0  stp     x29, x30, [sp, #0x40]
  100095bb4  add     x29, sp, #0x40
  100095bb8  sub     sp, sp, #0xd0
  100095bbc  adrp    x23, #0x1003b0000
  100095bc0  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100095bc4  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100095bc8  stur    x23, [x29, #-0x48]
  100095bcc  stp     xzr, xzr, [sp, #0x38]
  100095bd0  stp     xzr, xzr, [sp, #0x28]
  100095bd4  stp     xzr, xzr, [sp, #0x18]
  100095bd8  stp     xzr, xzr, [sp, #8]
  100095bdc  adrp    x8, #0x10041f000
  100095be0  ldrsw   x8, [x8, #0xf90]                         ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  100095be4  ldr     x0, [x0, x8]                             ; x0 = self->statBars
  100095be8  bl      _objc_retain
  100095bec  mov     x19, x0
  100095bf0  adrp    x8, #0x100416000
  100095bf4  nop
  100095bf8  ldr     x20, [x8, #0xe00]
  100095bfc  add     x2, sp, #8
  100095c00  add     x3, sp, #0x48
  100095c04  mov     w4, #0x10
  100095c08  mov     x1, x20
  100095c0c  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100095c10  mov     x21, x0
  100095c14  cbz     x21, loc_100095c84                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100095c18  ldr     x8, [sp, #0x18]
  100095c1c  ldr     x24, [x8]
  100095c20  adrp    x8, #0x100418000
  100095c24  add     x8, x8, #0xc78                           ; &@selector(showNextLevel)
  100095c28  ldr     x22, [x8]
loc_100095c2c:
  100095c2c  mov     x25, #0
loc_100095c30:
  100095c30  ldr     x8, [sp, #0x18]
  100095c34  ldr     x8, [x8]
  100095c38  cmp     x8, x24
  100095c3c  b.eq    loc_100095c48                            ; if (x8 == x24)
  100095c40  mov     x0, x19
  100095c44  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->statBars)
loc_100095c48:
  100095c48  ldr     x8, [sp, #0x10]
  100095c4c  ldr     x0, [x8, x25, lsl #3]
  100095c50  mov     x1, x22
  100095c54  bl      _objc_msgSend                            ; [x0 showNextLevel]
  100095c58  add     x25, x25, #1
  100095c5c  cmp     x25, x21
  100095c60  b.lo    loc_100095c30                            ; if ((x25 + 1) <u [self->statBars countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100095c64  add     x2, sp, #8
  100095c68  add     x3, sp, #0x48
  100095c6c  mov     w4, #0x10
  100095c70  mov     x0, x19
  100095c74  mov     x1, x20
  100095c78  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100095c7c  mov     x21, x0
  100095c80  cbnz    x21, loc_100095c2c                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100095c84:
  100095c84  mov     x0, x19
  100095c88  bl      _objc_release
  100095c8c  ldur    x8, [x29, #-0x48]
  100095c90  sub     x8, x23, x8
  100095c94  cbnz    x8, loc_100095cb4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100095c98  sub     sp, x29, #0x40
  100095c9c  ldp     x29, x30, [sp, #0x40]
  100095ca0  ldp     x20, x19, [sp, #0x30]
  100095ca4  ldp     x22, x21, [sp, #0x20]
  100095ca8  ldp     x24, x23, [sp, #0x10]
  100095cac  ldp     x26, x25, [sp], #0x50
  100095cb0  ret
loc_100095cb4:
  100095cb4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100095cb8:
  100095cb8  mov     x20, x0
  100095cbc  mov     x0, x19
  100095cc0  bl      _objc_release
  100095cc4  mov     x0, x20
  100095cc8  bl      __Unwind_Resume                          ; Unwind_Resume()
  100095ccc  b       loc_100095cb8
  100095cd0  b       loc_100095cb8

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]
; address 0x100095cd4  size 2908  kind objc
; ======================================================================
  100095cd4  stp     x28, x27, [sp, #-0x60]!
  100095cd8  stp     x26, x25, [sp, #0x10]
  100095cdc  stp     x24, x23, [sp, #0x20]
  100095ce0  stp     x22, x21, [sp, #0x30]
  100095ce4  stp     x20, x19, [sp, #0x40]
  100095ce8  stp     x29, x30, [sp, #0x50]
  100095cec  add     x29, sp, #0x50
  100095cf0  sub     sp, sp, #0x210
  100095cf4  mov     x19, x0
  100095cf8  adrp    x25, #0x1003b0000
  100095cfc  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100095d00  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  100095d04  stur    x25, [x29, #-0x58]
  100095d08  adrp    x8, #0x10041f000
  100095d0c  ldrsw   x24, [x8, #0xf9c]                        ; ivar offset ADArmoryWeaponDescriptionViewController.nextLevelDict (+0x160)
  100095d10  ldr     x0, [x19, x24]                           ; x0 = self->nextLevelDict
  100095d14  adrp    x8, #0x100416000
  100095d18  nop
  100095d1c  ldr     x21, [x8, #0xda0]
  100095d20  adrp    x2, #0x1003bd000
  100095d24  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  100095d28  mov     x1, x21
  100095d2c  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  100095d30  mov     x29, x29
  100095d34  bl      _objc_retainAutoreleasedReturnValue
  100095d38  mov     x23, x0
  100095d3c  adrp    x8, #0x100417000
  100095d40  nop
  100095d44  ldr     x22, [x8, #0x110]
  100095d48  mov     x1, x22
  100095d4c  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]
  100095d50  mov     x20, x0
  100095d54  mov     x0, x23
  100095d58  bl      _objc_release
  100095d5c  ldr     x0, [x19, x24]                           ; x0 = self->nextLevelDict
  100095d60  adrp    x2, #0x1003be000
  100095d64  add     x2, x2, #0xed0                           ; @"upgradeCostInDiamonds"
  100095d68  mov     x1, x21
  100095d6c  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"]
  100095d70  mov     x29, x29
  100095d74  bl      _objc_retainAutoreleasedReturnValue
  100095d78  mov     x23, x0
  100095d7c  mov     x1, x22
  100095d80  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]
  100095d84  mov     x21, x0
  100095d88  mov     x0, x23
  100095d8c  bl      _objc_release
  100095d90  cmp     w20, #0
  100095d94  ccmp    w21, #0, #0, ne
  100095d98  b.ne    loc_100095e24                            ; if (flags !=)
  100095d9c  adrp    x8, #0x10041d000
  100095da0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100095da4  adrp    x8, #0x100416000
  100095da8  nop
  100095dac  ldr     x21, [x8, #0xec8]
  100095db0  mov     x1, x21
  100095db4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100095db8  mov     x29, x29
  100095dbc  bl      _objc_retainAutoreleasedReturnValue
  100095dc0  mov     x23, x0
  100095dc4  adrp    x8, #0x100417000
  100095dc8  nop
  100095dcc  ldr     x22, [x8, #0x958]
  100095dd0  mov     x1, x22
  100095dd4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100095dd8  mov     x24, x0
  100095ddc  mov     x0, x23
  100095de0  bl      _objc_release
  100095de4  cmp     w24, w20
  100095de8  b.ge    loc_100095eb8                            ; if ([[ADInventory sharedInventory] coins] >= [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue])
  100095dec  adrp    x8, #0x100416000
  100095df0  nop
  100095df4  ldr     x1, [x8, #0xfa0]
  100095df8  mov     x0, x19
  100095dfc  bl      _objc_msgSend                            ; [self armoryViewController]
  100095e00  mov     x29, x29
  100095e04  bl      _objc_retainAutoreleasedReturnValue
  100095e08  mov     x20, x0
  100095e0c  adrp    x8, #0x100419000
  100095e10  nop
  100095e14  ldr     x1, [x8, #0x770]
  100095e18  bl      _objc_msgSend                            ; [[self armoryViewController] showNotEnoughMoneyAlert]
  100095e1c  b       loc_100096300
  100095e20  b       loc_1000967bc
loc_100095e24:
  100095e24  cmp     w21, #0
  100095e28  ccmp    w20, #0, #0, ne
  100095e2c  b.ne    loc_100096290                            ; if (flags !=)
  100095e30  adrp    x8, #0x10041d000
  100095e34  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100095e38  adrp    x8, #0x100416000
  100095e3c  nop
  100095e40  ldr     x20, [x8, #0xec8]
  100095e44  mov     x1, x20
  100095e48  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100095e4c  mov     x29, x29
  100095e50  bl      _objc_retainAutoreleasedReturnValue
  100095e54  mov     x23, x0
  100095e58  adrp    x8, #0x100417000
  100095e5c  nop
  100095e60  ldr     x22, [x8, #0x960]
  100095e64  mov     x1, x22
  100095e68  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100095e6c  mov     x24, x0
  100095e70  mov     x0, x23
  100095e74  bl      _objc_release
  100095e78  cmp     w24, w21
  100095e7c  b.ge    loc_100096310                            ; if ([[ADInventory sharedInventory] diamonds] >= [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue])
  100095e80  adrp    x8, #0x100416000
  100095e84  nop
  100095e88  ldr     x1, [x8, #0xfa0]
  100095e8c  mov     x0, x19
  100095e90  bl      _objc_msgSend                            ; [self armoryViewController]
  100095e94  mov     x29, x29
  100095e98  bl      _objc_retainAutoreleasedReturnValue
  100095e9c  mov     x20, x0
  100095ea0  adrp    x8, #0x100417000
  100095ea4  nop
  100095ea8  ldr     x1, [x8, #0xae0]
  100095eac  bl      _objc_msgSend                            ; [[self armoryViewController] showNoDiamondsAlert]
  100095eb0  b       loc_100096300
  100095eb4  b       loc_1000967bc
loc_100095eb8:
  100095eb8  stp     xzr, xzr, [sp, #0xd8]
  100095ebc  stp     xzr, xzr, [sp, #0xc8]
  100095ec0  stp     xzr, xzr, [sp, #0xb8]
  100095ec4  stp     xzr, xzr, [sp, #0xa8]
  100095ec8  adrp    x8, #0x10041f000
  100095ecc  ldrsw   x8, [x8, #0xf90]                         ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  100095ed0  ldr     x0, [x19, x8]                            ; x0 = self->statBars
  100095ed4  bl      _objc_retain
  100095ed8  mov     x23, x0
  100095edc  adrp    x8, #0x100416000
  100095ee0  nop
  100095ee4  ldr     x24, [x8, #0xe00]
  100095ee8  add     x2, sp, #0xa8
  100095eec  sub     x3, x29, #0xd8
  100095ef0  mov     w4, #0x10
  100095ef4  mov     x1, x24
  100095ef8  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  100095efc  mov     x25, x0
  100095f00  cbz     x25, loc_100095f70                       ; if ([self->statBars countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] == 0)
  100095f04  ldr     x8, [sp, #0xb8]
  100095f08  ldr     x27, [x8]
  100095f0c  adrp    x8, #0x10041a000
  100095f10  add     x8, x8, #0xd0                            ; &@selector(upgradeToNextLevel)
  100095f14  ldr     x26, [x8]
loc_100095f18:
  100095f18  mov     x28, #0
loc_100095f1c:
  100095f1c  ldr     x8, [sp, #0xb8]
  100095f20  ldr     x8, [x8]
  100095f24  cmp     x8, x27
  100095f28  b.eq    loc_100095f34                            ; if (x8 == x27)
  100095f2c  mov     x0, x23
  100095f30  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->statBars)
loc_100095f34:
  100095f34  ldr     x8, [sp, #0xb0]
  100095f38  ldr     x0, [x8, x28, lsl #3]
  100095f3c  mov     x1, x26
  100095f40  bl      _objc_msgSend                            ; [x0 upgradeToNextLevel]
  100095f44  add     x28, x28, #1
  100095f48  cmp     x28, x25
  100095f4c  b.lo    loc_100095f1c                            ; if ((x28 + 1) <u [self->statBars countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16])
  100095f50  add     x2, sp, #0xa8
  100095f54  sub     x3, x29, #0xd8
  100095f58  mov     w4, #0x10
  100095f5c  mov     x0, x23
  100095f60  mov     x1, x24
  100095f64  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  100095f68  mov     x25, x0
  100095f6c  cbnz    x25, loc_100095f18                       ; if ([self->statBars countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] != 0)
loc_100095f70:
  100095f70  mov     x0, x23
  100095f74  bl      _objc_release
  100095f78  adrp    x8, #0x10041d000
  100095f7c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100095f80  mov     x1, x21
  100095f84  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100095f88  mov     x29, x29
  100095f8c  bl      _objc_retainAutoreleasedReturnValue
  100095f90  mov     x25, x0
  100095f94  adrp    x8, #0x10041f000
  100095f98  ldrsw   x26, [x8, #0xf94]                        ; ivar offset ADArmoryWeaponDescriptionViewController.current_level (+0x16c)
  100095f9c  ldr     w27, [x19, x26]                          ; w27 = self->current_level
  100095fa0  nop
  100095fa4  ldrsw   x28, [x8, #0xf88]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100095fa8  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  100095fac  adrp    x8, #0x100417000
  100095fb0  nop
  100095fb4  ldr     x23, [x8, #0x40]
  100095fb8  adrp    x24, #0x1003b9000
  100095fbc  add     x24, x24, #0xdb0                         ; @"name"
  100095fc0  mov     x1, x23
  100095fc4  mov     x2, x24
  100095fc8  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100095fcc  mov     x3, x0
  100095fd0  add     w2, w27, #1
  100095fd4  adrp    x8, #0x100419000
  100095fd8  nop
  100095fdc  ldr     x1, [x8, #0x760]
  100095fe0  mov     x0, x25
  100095fe4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setLevel:(self->current_level + 1) forWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100095fe8  mov     x0, x25
  100095fec  bl      _objc_release
  100095ff0  adrp    x8, #0x10041d000
  100095ff4  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100095ff8  adrp    x8, #0x100417000
  100095ffc  nop
  100096000  ldr     x1, [x8, #0x848]
  100096004  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  100096008  mov     x29, x29
  10009600c  bl      _objc_retainAutoreleasedReturnValue
  100096010  mov     x25, x0
  100096014  ldr     w8, [x19, x26]                           ; w8 = self->current_level
  100096018  add     w2, w8, #1
  10009601c  adrp    x8, #0x100419000
  100096020  nop
  100096024  ldr     x1, [x8, #0x768]
  100096028  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] upgradeWeaponToLevel:(self->current_level + 1)]
  10009602c  mov     x0, x25
  100096030  bl      _objc_release
  100096034  adrp    x8, #0x10041d000
  100096038  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10009603c  adrp    x8, #0x100416000
  100096040  nop
  100096044  ldr     x1, [x8, #0xb28]
  100096048  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10009604c  mov     x29, x29
  100096050  bl      _objc_retainAutoreleasedReturnValue
  100096054  mov     x25, x0
  100096058  adrp    x8, #0x100416000
  10009605c  nop
  100096060  ldr     x1, [x8, #0xc18]
  100096064  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100096068  mov     x29, x29
  10009606c  bl      _objc_retainAutoreleasedReturnValue
  100096070  mov     x26, x0
  100096074  adrp    x8, #0x100417000
  100096078  nop
  10009607c  ldr     x1, [x8, #0xb08]
  100096080  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  100096084  mov     x29, x29
  100096088  bl      _objc_retainAutoreleasedReturnValue
  10009608c  mov     x27, x0
  100096090  neg     w2, w20
  100096094  adrp    x8, #0x100417000
  100096098  nop
  10009609c  ldr     x1, [x8, #0x968]
  1000960a0  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateCoins:-[[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]]
  1000960a4  mov     x0, x27
  1000960a8  bl      _objc_release
  1000960ac  mov     x0, x26
  1000960b0  bl      _objc_release
  1000960b4  mov     x0, x25
  1000960b8  bl      _objc_release
  1000960bc  adrp    x8, #0x10041d000
  1000960c0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000960c4  mov     x1, x21
  1000960c8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000960cc  mov     x29, x29
  1000960d0  bl      _objc_retainAutoreleasedReturnValue
  1000960d4  mov     x21, x0
  1000960d8  mov     x1, x22
  1000960dc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000960e0  sub     w2, w0, w20                              ; t1 = ([[ADInventory sharedInventory] coins] - [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue])
  1000960e4  adrp    x8, #0x100417000
  1000960e8  nop
  1000960ec  ldr     x1, [x8, #0x90]
  1000960f0  mov     x0, x21
  1000960f4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t1]
  1000960f8  mov     x0, x21
  1000960fc  bl      _objc_release
  100096100  stur    x24, [x29, #-0xe8]
  100096104  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  100096108  mov     x1, x23
  10009610c  mov     x2, x24
  100096110  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100096114  mov     x29, x29
  100096118  bl      _objc_retainAutoreleasedReturnValue
  10009611c  mov     x22, x0
  100096120  stur    x22, [x29, #-0xe0]
  100096124  adrp    x8, #0x10041d000
  100096128  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10009612c  adrp    x8, #0x100416000
  100096130  nop
  100096134  ldr     x1, [x8, #0xcd0]
  100096138  sub     x2, x29, #0xe0
  10009613c  sub     x3, x29, #0xe8
  100096140  mov     w4, #1
  100096144  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xe0] forKeys:&x29[-0xe8] count:1]
  100096148  mov     x29, x29
  10009614c  bl      _objc_retainAutoreleasedReturnValue
  100096150  mov     x21, x0
  100096154  mov     x0, x22
  100096158  bl      _objc_release
  10009615c  adrp    x8, #0x10041d000
  100096160  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100096164  adrp    x8, #0x100416000
  100096168  nop
  10009616c  ldr     x1, [x8, #0xe88]
  100096170  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100096174  mov     x29, x29
  100096178  bl      _objc_retainAutoreleasedReturnValue
  10009617c  mov     x22, x0
  100096180  adrp    x8, #0x100417000
  100096184  nop
  100096188  ldr     x1, [x8, #0xf98]
  10009618c  adrp    x2, #0x1003b9000
  100096190  add     x2, x2, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  100096194  mov     x3, x19
  100096198  mov     x4, x21
  10009619c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"WEAPON_UPGRADE_EVENT" object:self userInfo:[NSDictionary dictionaryWithObjects:&x29[-0xe0] forKeys:&x29[-0xe8] count:1]]
  1000961a0  mov     x0, x22
  1000961a4  bl      _objc_release
  1000961a8  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  1000961ac  adrp    x2, #0x1003b9000
  1000961b0  add     x2, x2, #0xdb0                           ; @"name"
  1000961b4  mov     x1, x23
  1000961b8  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000961bc  mov     x29, x29
  1000961c0  bl      _objc_retainAutoreleasedReturnValue
  1000961c4  mov     x22, x0
  1000961c8  adrp    x8, #0x10041e000
  1000961cc  ldr     x0, [x8, #8]                             ; class ADTracker
  1000961d0  adrp    x8, #0x100416000
  1000961d4  nop
  1000961d8  ldr     x1, [x8, #0xac0]
  1000961dc  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000961e0  mov     x29, x29
  1000961e4  bl      _objc_retainAutoreleasedReturnValue
  1000961e8  mov     x23, x0
  1000961ec  scvtf   d0, w20
  1000961f0  adrp    x8, #0x100418000
  1000961f4  nop
  1000961f8  ldr     x1, [x8, #0xc70]
  1000961fc  mov     x2, x22
  100096200  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponUpgrade:[self->weaponInventoryDict objectForKey:@"name"] Price:(float)[[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]]
  100096204  adrp    x25, #0x1003b0000
  100096208  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  10009620c  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  100096210  mov     w24, #-0x3e000000
  100096214  mov     x0, x23
  100096218  bl      _objc_release
  10009621c  mov     w1, #0x3b9a0000
  100096220  movk    w1, #0xca00
  100096224  mov     x0, #0
  100096228  bl      _dispatch_time                           ; dispatch_time(0, 0x3b9aca00)
  10009622c  mov     x20, x0
  100096230  adrp    x8, #0x1003b0000
  100096234  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100096238  str     x8, [sp, #0x80]
  10009623c  stp     w24, wzr, [sp, #0x88]
  100096240  adr     x8, #0x100096830                         ; &-[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke
  100096244  nop
  100096248  str     x8, [sp, #0x90]
  10009624c  adrp    x8, #0x1003b2000
  100096250  add     x8, x8, #0x190                           ; &d_1003b2190
  100096254  str     x8, [sp, #0x98]
  100096258  mov     x0, x19
  10009625c  bl      _objc_retain
  100096260  str     x0, [sp, #0xa0]
  100096264  adrp    x1, #0x1003b0000
  100096268  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10009626c  add     x2, sp, #0x80
  100096270  mov     x0, x20
  100096274  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x3b9aca00), __dispatch_main_q, ^{-[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke captures +0x20=self})
  100096278  ldr     x0, [sp, #0xa0]
  10009627c  bl      _objc_release
  100096280  mov     x0, x22
  100096284  bl      _objc_release
  100096288  mov     x0, x21
  10009628c  b       loc_1000966e4
loc_100096290:
  100096290  adrp    x8, #0x10041a000
  100096294  nop
  100096298  ldr     x1, [x8, #0x48]
  10009629c  mov     x0, x19
  1000962a0  bl      _objc_msgSend                            ; [self weaponTitle]
  1000962a4  mov     x29, x29
  1000962a8  bl      _objc_retainAutoreleasedReturnValue
  1000962ac  mov     x21, x0
  1000962b0  adrp    x8, #0x100418000
  1000962b4  nop
  1000962b8  ldr     x1, [x8, #0x290]
  1000962bc  bl      _objc_msgSend                            ; [[self weaponTitle] text]
  1000962c0  mov     x29, x29
  1000962c4  bl      _objc_retainAutoreleasedReturnValue
  1000962c8  mov     x20, x0
  1000962cc  mov     x0, x21
  1000962d0  bl      _objc_release
  1000962d4  adrp    x8, #0x10041d000
  1000962d8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1000962dc  adrp    x8, #0x100417000
  1000962e0  nop
  1000962e4  ldr     x1, [x8, #0x260]
  1000962e8  str     x20, [sp]
  1000962ec  adrp    x2, #0x1003c0000
  1000962f0  add     x2, x2, #0x110                           ; @"Weapon upgrade exception"
  1000962f4  adrp    x3, #0x1003c0000
  1000962f8  add     x3, x3, #0x130                           ; @"The weapon %@ dowsn't seem to have a price in coins or diamonds!"
  1000962fc  bl      _objc_msgSend                            ; [NSException raise:@"Weapon upgrade exception" format:@"The weapon %@ dowsn't seem to have a price in coins or diamonds!", [[self weaponTitle] text]]
loc_100096300:
  100096300  mov     x0, x20
  100096304  bl      _objc_release
  100096308  mov     w0, #0
  10009630c  b       loc_1000966ec
loc_100096310:
  100096310  stp     xzr, xzr, [sp, #0x70]
  100096314  stp     xzr, xzr, [sp, #0x60]
  100096318  stp     xzr, xzr, [sp, #0x50]
  10009631c  stp     xzr, xzr, [sp, #0x40]
  100096320  adrp    x8, #0x10041f000
  100096324  ldrsw   x8, [x8, #0xf90]                         ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  100096328  ldr     x0, [x19, x8]                            ; x0 = self->statBars
  10009632c  bl      _objc_retain
  100096330  mov     x23, x0
  100096334  adrp    x8, #0x100416000
  100096338  nop
  10009633c  ldr     x24, [x8, #0xe00]
  100096340  add     x2, sp, #0x40
  100096344  add     x3, sp, #0xf8
  100096348  mov     w4, #0x10
  10009634c  mov     x1, x24
  100096350  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x40] objects:&sp[0xf8] count:16]
  100096354  mov     x25, x0
  100096358  cbz     x25, loc_1000963c8                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x40] objects:&sp[0xf8] count:16] == 0)
  10009635c  ldr     x8, [sp, #0x50]
  100096360  ldr     x27, [x8]
  100096364  adrp    x8, #0x10041a000
  100096368  add     x8, x8, #0xd0                            ; &@selector(upgradeToNextLevel)
  10009636c  ldr     x26, [x8]
loc_100096370:
  100096370  mov     x28, #0
loc_100096374:
  100096374  ldr     x8, [sp, #0x50]
  100096378  ldr     x8, [x8]
  10009637c  cmp     x8, x27
  100096380  b.eq    loc_10009638c                            ; if (x8 == x27)
  100096384  mov     x0, x23
  100096388  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->statBars)
loc_10009638c:
  10009638c  ldr     x8, [sp, #0x48]
  100096390  ldr     x0, [x8, x28, lsl #3]
  100096394  mov     x1, x26
  100096398  bl      _objc_msgSend                            ; [x0 upgradeToNextLevel]
  10009639c  add     x28, x28, #1
  1000963a0  cmp     x28, x25
  1000963a4  b.lo    loc_100096374                            ; if ((x28 + 1) <u [self->statBars countByEnumeratingWithState:&sp[0x40] objects:&sp[0xf8] count:16])
  1000963a8  add     x2, sp, #0x40
  1000963ac  add     x3, sp, #0xf8
  1000963b0  mov     w4, #0x10
  1000963b4  mov     x0, x23
  1000963b8  mov     x1, x24
  1000963bc  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x40] objects:&sp[0xf8] count:16]
  1000963c0  mov     x25, x0
  1000963c4  cbnz    x25, loc_100096370                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x40] objects:&sp[0xf8] count:16] != 0)
loc_1000963c8:
  1000963c8  mov     x0, x23
  1000963cc  bl      _objc_release
  1000963d0  adrp    x8, #0x10041d000
  1000963d4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000963d8  mov     x1, x20
  1000963dc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000963e0  mov     x29, x29
  1000963e4  bl      _objc_retainAutoreleasedReturnValue
  1000963e8  mov     x25, x0
  1000963ec  adrp    x8, #0x10041f000
  1000963f0  ldrsw   x26, [x8, #0xf94]                        ; ivar offset ADArmoryWeaponDescriptionViewController.current_level (+0x16c)
  1000963f4  ldr     w27, [x19, x26]                          ; w27 = self->current_level
  1000963f8  nop
  1000963fc  ldrsw   x28, [x8, #0xf88]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100096400  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  100096404  adrp    x8, #0x100417000
  100096408  nop
  10009640c  ldr     x23, [x8, #0x40]
  100096410  adrp    x24, #0x1003b9000
  100096414  add     x24, x24, #0xdb0                         ; @"name"
  100096418  mov     x1, x23
  10009641c  mov     x2, x24
  100096420  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100096424  mov     x3, x0
  100096428  add     w2, w27, #1
  10009642c  adrp    x8, #0x100419000
  100096430  nop
  100096434  ldr     x1, [x8, #0x760]
  100096438  mov     x0, x25
  10009643c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setLevel:(self->current_level + 1) forWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100096440  mov     x0, x25
  100096444  bl      _objc_release
  100096448  adrp    x8, #0x10041d000
  10009644c  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100096450  adrp    x8, #0x100417000
  100096454  nop
  100096458  ldr     x1, [x8, #0x848]
  10009645c  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  100096460  mov     x29, x29
  100096464  bl      _objc_retainAutoreleasedReturnValue
  100096468  mov     x25, x0
  10009646c  ldr     w8, [x19, x26]                           ; w8 = self->current_level
  100096470  add     w2, w8, #1
  100096474  adrp    x8, #0x100419000
  100096478  nop
  10009647c  ldr     x1, [x8, #0x768]
  100096480  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] upgradeWeaponToLevel:(self->current_level + 1)]
  100096484  mov     x0, x25
  100096488  bl      _objc_release
  10009648c  adrp    x8, #0x10041d000
  100096490  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100096494  adrp    x8, #0x100416000
  100096498  nop
  10009649c  ldr     x1, [x8, #0xb28]
  1000964a0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000964a4  mov     x29, x29
  1000964a8  bl      _objc_retainAutoreleasedReturnValue
  1000964ac  mov     x25, x0
  1000964b0  adrp    x8, #0x100416000
  1000964b4  nop
  1000964b8  ldr     x1, [x8, #0xc18]
  1000964bc  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000964c0  mov     x29, x29
  1000964c4  bl      _objc_retainAutoreleasedReturnValue
  1000964c8  mov     x26, x0
  1000964cc  adrp    x8, #0x100417000
  1000964d0  nop
  1000964d4  ldr     x1, [x8, #0xb08]
  1000964d8  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  1000964dc  mov     x29, x29
  1000964e0  bl      _objc_retainAutoreleasedReturnValue
  1000964e4  mov     x27, x0
  1000964e8  neg     w2, w21
  1000964ec  adrp    x8, #0x100418000
  1000964f0  nop
  1000964f4  ldr     x1, [x8, #0x6b8]
  1000964f8  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateDiamonds:-[[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]]
  1000964fc  mov     x0, x27
  100096500  bl      _objc_release
  100096504  mov     x0, x26
  100096508  bl      _objc_release
  10009650c  mov     x0, x25
  100096510  bl      _objc_release
  100096514  adrp    x8, #0x10041d000
  100096518  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10009651c  mov     x1, x20
  100096520  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100096524  mov     x29, x29
  100096528  bl      _objc_retainAutoreleasedReturnValue
  10009652c  mov     x20, x0
  100096530  mov     x1, x22
  100096534  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100096538  sub     w2, w0, w21                              ; t2 = ([[ADInventory sharedInventory] diamonds] - [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue])
  10009653c  adrp    x8, #0x100417000
  100096540  nop
  100096544  ldr     x1, [x8, #0x98]
  100096548  mov     x0, x20
  10009654c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:t2]
  100096550  mov     x0, x20
  100096554  bl      _objc_release
  100096558  str     x24, [sp, #0xe8]
  10009655c  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  100096560  mov     x1, x23
  100096564  mov     x2, x24
  100096568  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10009656c  mov     x29, x29
  100096570  bl      _objc_retainAutoreleasedReturnValue
  100096574  mov     x21, x0
  100096578  str     x21, [sp, #0xf0]
  10009657c  adrp    x8, #0x10041d000
  100096580  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100096584  adrp    x8, #0x100416000
  100096588  nop
  10009658c  ldr     x1, [x8, #0xcd0]
  100096590  add     x2, sp, #0xf0
  100096594  add     x3, sp, #0xe8
  100096598  mov     w4, #1
  10009659c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xf0] forKeys:&sp[0xe8] count:1]
  1000965a0  mov     x29, x29
  1000965a4  bl      _objc_retainAutoreleasedReturnValue
  1000965a8  mov     x20, x0
  1000965ac  mov     x0, x21
  1000965b0  bl      _objc_release
  1000965b4  adrp    x8, #0x10041d000
  1000965b8  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1000965bc  adrp    x8, #0x100416000
  1000965c0  nop
  1000965c4  ldr     x1, [x8, #0xe88]
  1000965c8  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000965cc  mov     x29, x29
  1000965d0  bl      _objc_retainAutoreleasedReturnValue
  1000965d4  mov     x21, x0
  1000965d8  adrp    x8, #0x100417000
  1000965dc  nop
  1000965e0  ldr     x1, [x8, #0xf98]
  1000965e4  adrp    x2, #0x1003b9000
  1000965e8  add     x2, x2, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  1000965ec  mov     x3, x19
  1000965f0  mov     x4, x20
  1000965f4  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"WEAPON_UPGRADE_EVENT" object:self userInfo:[NSDictionary dictionaryWithObjects:&sp[0xf0] forKeys:&sp[0xe8] count:1]]
  1000965f8  mov     x0, x21
  1000965fc  bl      _objc_release
  100096600  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  100096604  adrp    x2, #0x1003b9000
  100096608  add     x2, x2, #0xdb0                           ; @"name"
  10009660c  mov     x1, x23
  100096610  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100096614  mov     x29, x29
  100096618  bl      _objc_retainAutoreleasedReturnValue
  10009661c  mov     x21, x0
  100096620  adrp    x8, #0x10041e000
  100096624  ldr     x0, [x8, #8]                             ; class ADTracker
  100096628  adrp    x8, #0x100416000
  10009662c  nop
  100096630  ldr     x1, [x8, #0xac0]
  100096634  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100096638  mov     x29, x29
  10009663c  bl      _objc_retainAutoreleasedReturnValue
  100096640  mov     x22, x0
  100096644  adrp    x8, #0x100418000
  100096648  nop
  10009664c  ldr     x1, [x8, #0xc70]
  100096650  movi    v0.16b, #0
  100096654  mov     x2, x21
  100096658  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponUpgrade:[self->weaponInventoryDict objectForKey:@"name"] Price:0]
  10009665c  adrp    x25, #0x1003b0000
  100096660  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100096664  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  100096668  mov     w23, #-0x3e000000
  10009666c  mov     x0, x22
  100096670  bl      _objc_release
  100096674  mov     w1, #0x3b9a0000
  100096678  movk    w1, #0xca00
  10009667c  mov     x0, #0
  100096680  bl      _dispatch_time                           ; dispatch_time(0, 0x3b9aca00)
  100096684  mov     x22, x0
  100096688  adrp    x8, #0x1003b0000
  10009668c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100096690  str     x8, [sp, #0x18]
  100096694  stp     w23, wzr, [sp, #0x20]
  100096698  adr     x8, #0x100096854                         ; &-[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke_2
  10009669c  nop
  1000966a0  str     x8, [sp, #0x28]
  1000966a4  adrp    x8, #0x1003b2000
  1000966a8  add     x8, x8, #0x1c0                           ; &d_1003b21c0
  1000966ac  str     x8, [sp, #0x30]
  1000966b0  mov     x0, x19
  1000966b4  bl      _objc_retain
  1000966b8  str     x0, [sp, #0x38]
  1000966bc  adrp    x1, #0x1003b0000
  1000966c0  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000966c4  add     x2, sp, #0x18
  1000966c8  mov     x0, x22
  1000966cc  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x3b9aca00), __dispatch_main_q, ^{-[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke_2 captures +0x20=self})
  1000966d0  ldr     x0, [sp, #0x38]
  1000966d4  bl      _objc_release
  1000966d8  mov     x0, x21
  1000966dc  bl      _objc_release
  1000966e0  mov     x0, x20
loc_1000966e4:
  1000966e4  bl      _objc_release
  1000966e8  mov     w0, #1
loc_1000966ec:
  1000966ec  ldur    x8, [x29, #-0x58]
  1000966f0  sub     x8, x25, x8
  1000966f4  cbnz    x8, loc_100096718                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000966f8  sub     sp, x29, #0x50
  1000966fc  ldp     x29, x30, [sp, #0x50]
  100096700  ldp     x20, x19, [sp, #0x40]
  100096704  ldp     x22, x21, [sp, #0x30]
  100096708  ldp     x24, x23, [sp, #0x20]
  10009670c  ldp     x26, x25, [sp, #0x10]
  100096710  ldp     x28, x27, [sp], #0x60
  100096714  ret
loc_100096718:
  100096718  bl      ___stack_chk_fail                        ; stack_chk_fail(one of {0, 1})
  10009671c  b       loc_100096720
loc_100096720:
  100096720  mov     x19, x0
  100096724  mov     x0, x23
loc_100096728:
  100096728  bl      _objc_release
  10009672c  mov     x0, x19
  100096730  bl      __Unwind_Resume                          ; Unwind_Resume()
  100096734  b       loc_100096720
  100096738  b       loc_100096720
  10009673c  b       loc_100096720
  100096740  b       loc_100096720
  100096744  b       loc_100096720
  100096748  b       loc_10009674c
loc_10009674c:
  10009674c  mov     x19, x0
  100096750  b       loc_1000967a4
  100096754  b       loc_100096720
  100096758  b       loc_1000967d4
  10009675c  b       loc_1000967d4
  100096760  b       loc_1000967d4
  100096764  b       loc_1000967d4
  100096768  mov     x19, x0
  10009676c  b       loc_1000967f0
  100096770  b       loc_1000967e4
  100096774  mov     x19, x0
  100096778  mov     x0, x22
  10009677c  b       loc_100096728
  100096780  mov     x19, x0
  100096784  b       loc_10009679c
  100096788  mov     x19, x0
  10009678c  b       loc_10009679c
  100096790  mov     x19, x0
  100096794  mov     x0, x23
  100096798  bl      _objc_release
loc_10009679c:
  10009679c  mov     x0, x22
  1000967a0  bl      _objc_release
loc_1000967a4:
  1000967a4  mov     x0, x21
  1000967a8  b       loc_100096728
  1000967ac  b       loc_100096720
  1000967b0  b       loc_1000967bc
  1000967b4  b       loc_1000967bc
  1000967b8  b       loc_10009674c
loc_1000967bc:
  1000967bc  mov     x19, x0
  1000967c0  b       loc_100096828
  1000967c4  b       loc_100096720
  1000967c8  b       loc_1000967d4
  1000967cc  b       loc_1000967d4
  1000967d0  b       loc_1000967d4
loc_1000967d4:
  1000967d4  mov     x19, x0
  1000967d8  b       loc_1000967f8
  1000967dc  mov     x19, x0
  1000967e0  b       loc_1000967f0
loc_1000967e4:
  1000967e4  mov     x19, x0
  1000967e8  mov     x0, x27
  1000967ec  bl      _objc_release
loc_1000967f0:
  1000967f0  mov     x0, x26
  1000967f4  bl      _objc_release
loc_1000967f8:
  1000967f8  mov     x0, x25
  1000967fc  b       loc_100096728
  100096800  b       loc_10009674c
  100096804  mov     x19, x0
  100096808  b       loc_100096820
  10009680c  mov     x19, x0
  100096810  b       loc_100096820
  100096814  mov     x19, x0
  100096818  mov     x0, x22
  10009681c  bl      _objc_release
loc_100096820:
  100096820  mov     x0, x21
  100096824  bl      _objc_release
loc_100096828:
  100096828  mov     x0, x20
  10009682c  b       loc_100096728

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke
; address 0x100096830  size 20  kind block
; ======================================================================
  100096830  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100096834  adrp    x8, #0x100418000
  100096838  nop
  10009683c  ldr     x1, [x8, #0x488]
  100096840  b       _objc_msgSend                            ; [self initForCurrentLevel]

; ======================================================================
; sub_100096844
; address 0x100096844  size 8  kind sub
; ======================================================================
  100096844  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100096848  b       _objc_retain

; ======================================================================
; sub_10009684c
; address 0x10009684c  size 8  kind sub
; ======================================================================
  10009684c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100096850  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController upgradeToNextLevel]_block_invoke_2
; address 0x100096854  size 20  kind block
; ======================================================================
  100096854  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100096858  adrp    x8, #0x100418000
  10009685c  nop
  100096860  ldr     x1, [x8, #0x488]
  100096864  b       _objc_msgSend                            ; [self initForCurrentLevel]

; ======================================================================
; sub_100096868
; address 0x100096868  size 8  kind sub
; ======================================================================
  100096868  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10009686c  b       _objc_retain

; ======================================================================
; sub_100096870
; address 0x100096870  size 8  kind sub
; ======================================================================
  100096870  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100096874  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController checkEquipButtons]
; address 0x100096878  size 1056  kind objc
; ======================================================================
  100096878  stp     x28, x27, [sp, #-0x60]!
  10009687c  stp     x26, x25, [sp, #0x10]
  100096880  stp     x24, x23, [sp, #0x20]
  100096884  stp     x22, x21, [sp, #0x30]
  100096888  stp     x20, x19, [sp, #0x40]
  10009688c  stp     x29, x30, [sp, #0x50]
  100096890  add     x29, sp, #0x50
  100096894  mov     x19, x0
  100096898  adrp    x8, #0x10041a000
  10009689c  nop
  1000968a0  ldr     x1, [x8, #0xe0]
  1000968a4  bl      _objc_msgSend                            ; [self hideEquipButtons]
  1000968a8  cbz     w0, loc_100096954                        ; if ([self hideEquipButtons] == 0)
  1000968ac  adrp    x8, #0x100419000
  1000968b0  nop
  1000968b4  ldr     x1, [x8, #0x738]
  1000968b8  mov     x0, x19
  1000968bc  bl      _objc_msgSend                            ; [self equip1Button]
  1000968c0  mov     x29, x29
  1000968c4  bl      _objc_retainAutoreleasedReturnValue
  1000968c8  mov     x21, x0
  1000968cc  adrp    x8, #0x100416000
  1000968d0  nop
  1000968d4  ldr     x20, [x8, #0xba8]
  1000968d8  mov     w2, #1
  1000968dc  mov     x1, x20
  1000968e0  bl      _objc_msgSend                            ; [[self equip1Button] setHidden:1]
  1000968e4  mov     x0, x21
  1000968e8  bl      _objc_release
  1000968ec  adrp    x8, #0x100419000
  1000968f0  nop
  1000968f4  ldr     x1, [x8, #0x740]
  1000968f8  mov     x0, x19
  1000968fc  bl      _objc_msgSend                            ; [self equip2Button]
  100096900  mov     x29, x29
  100096904  bl      _objc_retainAutoreleasedReturnValue
  100096908  mov     x21, x0
  10009690c  mov     w2, #1
  100096910  mov     x1, x20
  100096914  bl      _objc_msgSend                            ; [[self equip2Button] setHidden:1]
  100096918  mov     x0, x21
  10009691c  bl      _objc_release
  100096920  adrp    x8, #0x10041a000
  100096924  nop
  100096928  ldr     x1, [x8, #0x50]
  10009692c  mov     x0, x19
  100096930  bl      _objc_msgSend                            ; [self shopInfoTextView]
  100096934  mov     x29, x29
  100096938  bl      _objc_retainAutoreleasedReturnValue
  10009693c  mov     x21, x0
  100096940  mov     w2, #0
  100096944  mov     x1, x20
  100096948  bl      _objc_msgSend                            ; [[self shopInfoTextView] setHidden:0]
  10009694c  b       loc_100096ba0
  100096950  b       loc_100096c84
loc_100096954:
  100096954  adrp    x8, #0x10041a000
  100096958  nop
  10009695c  ldr     x1, [x8, #0x50]
  100096960  mov     x0, x19
  100096964  bl      _objc_msgSend                            ; [self shopInfoTextView]
  100096968  mov     x29, x29
  10009696c  bl      _objc_retainAutoreleasedReturnValue
  100096970  mov     x21, x0
  100096974  adrp    x8, #0x100416000
  100096978  nop
  10009697c  ldr     x20, [x8, #0xba8]
  100096980  mov     w2, #1
  100096984  mov     x1, x20
  100096988  bl      _objc_msgSend                            ; [[self shopInfoTextView] setHidden:1]
  10009698c  mov     x0, x21
  100096990  bl      _objc_release
  100096994  adrp    x25, #0x10041d000
  100096998  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  10009699c  adrp    x8, #0x100416000
  1000969a0  nop
  1000969a4  ldr     x24, [x8, #0xec8]
  1000969a8  mov     x1, x24
  1000969ac  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000969b0  mov     x29, x29
  1000969b4  bl      _objc_retainAutoreleasedReturnValue
  1000969b8  mov     x21, x0
  1000969bc  adrp    x8, #0x10041f000
  1000969c0  ldrsw   x27, [x8, #0xf88]                        ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  1000969c4  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  1000969c8  adrp    x8, #0x100417000
  1000969cc  nop
  1000969d0  ldr     x22, [x8, #0x40]
  1000969d4  adrp    x2, #0x1003b9000
  1000969d8  add     x2, x2, #0xdb0                           ; @"name"
  1000969dc  mov     x1, x22
  1000969e0  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000969e4  mov     x29, x29
  1000969e8  bl      _objc_retainAutoreleasedReturnValue
  1000969ec  mov     x23, x0
  1000969f0  adrp    x8, #0x100418000
  1000969f4  nop
  1000969f8  ldr     x1, [x8, #0xad8]
  1000969fc  mov     x0, x21
  100096a00  mov     x2, x23
  100096a04  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] isWeaponEquipped:[self->weaponInventoryDict objectForKey:@"name"]]
  100096a08  tbz     w0, #0, loc_100096a20                    ; if (!([[ADInventory sharedInventory] isWeaponEquipped:[self->weaponInventoryDict objectForKey:@"name"]] & 1))
  100096a0c  mov     x0, x23
  100096a10  bl      _objc_release
  100096a14  mov     x0, x21
  100096a18  bl      _objc_release
  100096a1c  b       loc_100096b40
loc_100096a20:
  100096a20  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100096a24  mov     x1, x24
  100096a28  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100096a2c  mov     x29, x29
  100096a30  bl      _objc_retainAutoreleasedReturnValue
  100096a34  mov     x24, x0
  100096a38  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  100096a3c  adrp    x2, #0x1003b9000
  100096a40  add     x2, x2, #0xdb0                           ; @"name"
  100096a44  mov     x1, x22
  100096a48  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100096a4c  mov     x29, x29
  100096a50  bl      _objc_retainAutoreleasedReturnValue
  100096a54  mov     x25, x0
  100096a58  adrp    x8, #0x100417000
  100096a5c  nop
  100096a60  ldr     x1, [x8, #0x1d8]
  100096a64  mov     x0, x24
  100096a68  mov     x2, x25
  100096a6c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100096a70  mov     x26, x0
  100096a74  mov     x0, x25
  100096a78  bl      _objc_release
  100096a7c  mov     x0, x24
  100096a80  bl      _objc_release
  100096a84  mov     x0, x23
  100096a88  bl      _objc_release
  100096a8c  mov     x0, x21
  100096a90  bl      _objc_release
  100096a94  tbz     w26, #0, loc_100096b40                   ; if (!([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] & 1))
  100096a98  adrp    x8, #0x10041d000
  100096a9c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100096aa0  adrp    x8, #0x100417000
  100096aa4  nop
  100096aa8  ldr     x1, [x8, #0xa0]
  100096aac  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100096ab0  mov     x29, x29
  100096ab4  bl      _objc_retainAutoreleasedReturnValue
  100096ab8  mov     x21, x0
  100096abc  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  100096ac0  adrp    x2, #0x1003b9000
  100096ac4  add     x2, x2, #0xdb0                           ; @"name"
  100096ac8  mov     x1, x22
  100096acc  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100096ad0  mov     x29, x29
  100096ad4  bl      _objc_retainAutoreleasedReturnValue
  100096ad8  mov     x22, x0
  100096adc  adrp    x8, #0x100418000
  100096ae0  nop
  100096ae4  ldr     x1, [x8, #0x6f8]
  100096ae8  mov     x0, x21
  100096aec  mov     x2, x22
  100096af0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100096af4  mov     x23, x0
  100096af8  mov     x0, x22
  100096afc  bl      _objc_release
  100096b00  mov     x0, x21
  100096b04  bl      _objc_release
  100096b08  cbz     w23, loc_100096bc0                       ; if ([[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] == 0)
  100096b0c  adrp    x8, #0x100419000
  100096b10  nop
  100096b14  ldr     x1, [x8, #0x740]
  100096b18  mov     x0, x19
  100096b1c  bl      _objc_msgSend                            ; [self equip2Button]
  100096b20  mov     x29, x29
  100096b24  bl      _objc_retainAutoreleasedReturnValue
  100096b28  mov     x21, x0
  100096b2c  mov     w2, #1
  100096b30  mov     x1, x20
  100096b34  bl      _objc_msgSend                            ; [[self equip2Button] setHidden:1]
  100096b38  b       loc_100096ba0
  100096b3c  b       loc_100096c84
loc_100096b40:
  100096b40  adrp    x8, #0x100419000
  100096b44  nop
  100096b48  ldr     x1, [x8, #0x738]
  100096b4c  mov     x0, x19
  100096b50  bl      _objc_msgSend                            ; [self equip1Button]
  100096b54  mov     x29, x29
  100096b58  bl      _objc_retainAutoreleasedReturnValue
  100096b5c  mov     x21, x0
  100096b60  mov     w2, #1
  100096b64  mov     x1, x20
  100096b68  bl      _objc_msgSend                            ; [[self equip1Button] setHidden:1]
  100096b6c  mov     x0, x21
  100096b70  bl      _objc_release
  100096b74  adrp    x8, #0x100419000
  100096b78  nop
  100096b7c  ldr     x1, [x8, #0x740]
  100096b80  mov     x0, x19
  100096b84  bl      _objc_msgSend                            ; [self equip2Button]
  100096b88  mov     x29, x29
  100096b8c  bl      _objc_retainAutoreleasedReturnValue
  100096b90  mov     x21, x0
  100096b94  mov     w2, #1
  100096b98  mov     x1, x20
  100096b9c  bl      _objc_msgSend                            ; [[self equip2Button] setHidden:1]
loc_100096ba0:
  100096ba0  mov     x0, x21
  100096ba4  ldp     x29, x30, [sp, #0x50]
  100096ba8  ldp     x20, x19, [sp, #0x40]
  100096bac  ldp     x22, x21, [sp, #0x30]
  100096bb0  ldp     x24, x23, [sp, #0x20]
  100096bb4  ldp     x26, x25, [sp, #0x10]
  100096bb8  ldp     x28, x27, [sp], #0x60
  100096bbc  b       _objc_release
loc_100096bc0:
  100096bc0  adrp    x8, #0x100419000
  100096bc4  nop
  100096bc8  ldr     x1, [x8, #0x738]
  100096bcc  mov     x0, x19
  100096bd0  bl      _objc_msgSend                            ; [self equip1Button]
  100096bd4  mov     x29, x29
  100096bd8  bl      _objc_retainAutoreleasedReturnValue
  100096bdc  mov     x21, x0
  100096be0  mov     w2, #0
  100096be4  mov     x1, x20
  100096be8  bl      _objc_msgSend                            ; [[self equip1Button] setHidden:0]
  100096bec  mov     x0, x21
  100096bf0  bl      _objc_release
  100096bf4  adrp    x8, #0x100419000
  100096bf8  nop
  100096bfc  ldr     x1, [x8, #0x740]
  100096c00  mov     x0, x19
  100096c04  bl      _objc_msgSend                            ; [self equip2Button]
  100096c08  mov     x29, x29
  100096c0c  bl      _objc_retainAutoreleasedReturnValue
  100096c10  mov     x21, x0
  100096c14  mov     w2, #0
  100096c18  mov     x1, x20
  100096c1c  bl      _objc_msgSend                            ; [[self equip2Button] setHidden:0]
  100096c20  b       loc_100096ba0
  100096c24  b       loc_100096c84
  100096c28  mov     x19, x0
  100096c2c  b       loc_100096c64
  100096c30  b       loc_100096c84
  100096c34  b       loc_100096c84
  100096c38  b       loc_100096c84
  100096c3c  b       loc_100096c84
  100096c40  b       loc_100096c84
  100096c44  b       loc_100096c84
  100096c48  mov     x19, x0
  100096c4c  b       loc_100096c5c
  100096c50  mov     x19, x0
  100096c54  mov     x0, x25
  100096c58  bl      _objc_release
loc_100096c5c:
  100096c5c  mov     x0, x24
  100096c60  bl      _objc_release
loc_100096c64:
  100096c64  mov     x0, x23
  100096c68  bl      _objc_release
  100096c6c  b       loc_100096c88
  100096c70  b       loc_100096c84
  100096c74  mov     x19, x0
  100096c78  mov     x0, x22
  100096c7c  bl      _objc_release
  100096c80  b       loc_100096c88
loc_100096c84:
  100096c84  mov     x19, x0
loc_100096c88:
  100096c88  mov     x0, x21
  100096c8c  bl      _objc_release
  100096c90  mov     x0, x19
  100096c94  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController equipSlot1ButtonPressed:]
; address 0x100096c98  size 300  kind objc
; ======================================================================
  100096c98  stp     x22, x21, [sp, #-0x30]!
  100096c9c  stp     x20, x19, [sp, #0x10]
  100096ca0  stp     x29, x30, [sp, #0x20]
  100096ca4  add     x29, sp, #0x20
  100096ca8  mov     x19, x0
  100096cac  adrp    x8, #0x10041d000
  100096cb0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100096cb4  adrp    x8, #0x100416000
  100096cb8  nop
  100096cbc  ldr     x1, [x8, #0xec8]
  100096cc0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100096cc4  mov     x29, x29
  100096cc8  bl      _objc_retainAutoreleasedReturnValue
  100096ccc  mov     x20, x0
  100096cd0  adrp    x8, #0x10041f000
  100096cd4  ldrsw   x8, [x8, #0xf88]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100096cd8  ldr     x0, [x19, x8]                            ; x0 = self->weaponInventoryDict
  100096cdc  adrp    x8, #0x100417000
  100096ce0  nop
  100096ce4  ldr     x1, [x8, #0x40]
  100096ce8  adrp    x2, #0x1003b9000
  100096cec  add     x2, x2, #0xdb0                           ; @"name"
  100096cf0  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100096cf4  mov     x29, x29
  100096cf8  bl      _objc_retainAutoreleasedReturnValue
  100096cfc  mov     x21, x0
  100096d00  adrp    x8, #0x100416000
  100096d04  nop
  100096d08  ldr     x1, [x8, #0xf60]
  100096d0c  mov     x0, x20
  100096d10  mov     x2, x21
  100096d14  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot1:[self->weaponInventoryDict objectForKey:@"name"]]
  100096d18  mov     x0, x21
  100096d1c  bl      _objc_release
  100096d20  mov     x0, x20
  100096d24  bl      _objc_release
  100096d28  adrp    x8, #0x10041d000
  100096d2c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100096d30  adrp    x8, #0x100416000
  100096d34  nop
  100096d38  ldr     x1, [x8, #0xe88]
  100096d3c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100096d40  mov     x29, x29
  100096d44  bl      _objc_retainAutoreleasedReturnValue
  100096d48  mov     x20, x0
  100096d4c  adrp    x8, #0x10041a000
  100096d50  nop
  100096d54  ldr     x1, [x8, #0x40]
  100096d58  adrp    x2, #0x1003b9000
  100096d5c  add     x2, x2, #0xaf0                           ; @"INVENTORY_CHANGED"
  100096d60  mov     x3, x19
  100096d64  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"INVENTORY_CHANGED" object:self]
  100096d68  mov     x0, x20
  100096d6c  bl      _objc_release
  100096d70  adrp    x8, #0x100418000
  100096d74  nop
  100096d78  ldr     x1, [x8, #0x528]
  100096d7c  mov     x0, x19
  100096d80  bl      _objc_msgSend                            ; [self checkEquipButtons]
  100096d84  ldp     x29, x30, [sp, #0x20]
  100096d88  ldp     x20, x19, [sp, #0x10]
  100096d8c  ldp     x22, x21, [sp], #0x30
  100096d90  ret
  100096d94  mov     x19, x0
  100096d98  b       loc_100096dbc
  100096d9c  b       loc_100096db0
  100096da0  mov     x19, x0
  100096da4  mov     x0, x21
  100096da8  bl      _objc_release
  100096dac  b       loc_100096db4
loc_100096db0:
  100096db0  mov     x19, x0
loc_100096db4:
  100096db4  mov     x0, x20
  100096db8  bl      _objc_release
loc_100096dbc:
  100096dbc  mov     x0, x19
  100096dc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController equipSlot2ButtonPressed:]
; address 0x100096dc4  size 300  kind objc
; ======================================================================
  100096dc4  stp     x22, x21, [sp, #-0x30]!
  100096dc8  stp     x20, x19, [sp, #0x10]
  100096dcc  stp     x29, x30, [sp, #0x20]
  100096dd0  add     x29, sp, #0x20
  100096dd4  mov     x19, x0
  100096dd8  adrp    x8, #0x10041d000
  100096ddc  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100096de0  adrp    x8, #0x100416000
  100096de4  nop
  100096de8  ldr     x1, [x8, #0xec8]
  100096dec  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100096df0  mov     x29, x29
  100096df4  bl      _objc_retainAutoreleasedReturnValue
  100096df8  mov     x20, x0
  100096dfc  adrp    x8, #0x10041f000
  100096e00  ldrsw   x8, [x8, #0xf88]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100096e04  ldr     x0, [x19, x8]                            ; x0 = self->weaponInventoryDict
  100096e08  adrp    x8, #0x100417000
  100096e0c  nop
  100096e10  ldr     x1, [x8, #0x40]
  100096e14  adrp    x2, #0x1003b9000
  100096e18  add     x2, x2, #0xdb0                           ; @"name"
  100096e1c  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100096e20  mov     x29, x29
  100096e24  bl      _objc_retainAutoreleasedReturnValue
  100096e28  mov     x21, x0
  100096e2c  adrp    x8, #0x100416000
  100096e30  nop
  100096e34  ldr     x1, [x8, #0xf68]
  100096e38  mov     x0, x20
  100096e3c  mov     x2, x21
  100096e40  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot2:[self->weaponInventoryDict objectForKey:@"name"]]
  100096e44  mov     x0, x21
  100096e48  bl      _objc_release
  100096e4c  mov     x0, x20
  100096e50  bl      _objc_release
  100096e54  adrp    x8, #0x10041d000
  100096e58  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100096e5c  adrp    x8, #0x100416000
  100096e60  nop
  100096e64  ldr     x1, [x8, #0xe88]
  100096e68  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100096e6c  mov     x29, x29
  100096e70  bl      _objc_retainAutoreleasedReturnValue
  100096e74  mov     x20, x0
  100096e78  adrp    x8, #0x10041a000
  100096e7c  nop
  100096e80  ldr     x1, [x8, #0x40]
  100096e84  adrp    x2, #0x1003b9000
  100096e88  add     x2, x2, #0xaf0                           ; @"INVENTORY_CHANGED"
  100096e8c  mov     x3, x19
  100096e90  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"INVENTORY_CHANGED" object:self]
  100096e94  mov     x0, x20
  100096e98  bl      _objc_release
  100096e9c  adrp    x8, #0x100418000
  100096ea0  nop
  100096ea4  ldr     x1, [x8, #0x528]
  100096ea8  mov     x0, x19
  100096eac  bl      _objc_msgSend                            ; [self checkEquipButtons]
  100096eb0  ldp     x29, x30, [sp, #0x20]
  100096eb4  ldp     x20, x19, [sp, #0x10]
  100096eb8  ldp     x22, x21, [sp], #0x30
  100096ebc  ret
  100096ec0  mov     x19, x0
  100096ec4  b       loc_100096ee8
  100096ec8  b       loc_100096edc
  100096ecc  mov     x19, x0
  100096ed0  mov     x0, x21
  100096ed4  bl      _objc_release
  100096ed8  b       loc_100096ee0
loc_100096edc:
  100096edc  mov     x19, x0
loc_100096ee0:
  100096ee0  mov     x0, x20
  100096ee4  bl      _objc_release
loc_100096ee8:
  100096ee8  mov     x0, x19
  100096eec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController dealloc]
; address 0x100096ef0  size 492  kind objc
; ======================================================================
  100096ef0  stp     x28, x27, [sp, #-0x60]!
  100096ef4  stp     x26, x25, [sp, #0x10]
  100096ef8  stp     x24, x23, [sp, #0x20]
  100096efc  stp     x22, x21, [sp, #0x30]
  100096f00  stp     x20, x19, [sp, #0x40]
  100096f04  stp     x29, x30, [sp, #0x50]
  100096f08  add     x29, sp, #0x50
  100096f0c  sub     sp, sp, #0xf0
  100096f10  mov     x19, x0
  100096f14  adrp    x8, #0x1003b0000
  100096f18  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100096f1c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100096f20  stur    x8, [x29, #-0x58]
  100096f24  stp     xzr, xzr, [sp, #0x58]
  100096f28  stp     xzr, xzr, [sp, #0x48]
  100096f2c  stp     xzr, xzr, [sp, #0x38]
  100096f30  stp     xzr, xzr, [sp, #0x28]
  100096f34  adrp    x8, #0x10041f000
  100096f38  ldrsw   x27, [x8, #0xf90]                        ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  100096f3c  ldr     x0, [x19, x27]                           ; x0 = self->statBars
  100096f40  bl      _objc_retain
  100096f44  mov     x20, x0
  100096f48  adrp    x8, #0x100416000
  100096f4c  nop
  100096f50  ldr     x21, [x8, #0xe00]
  100096f54  add     x2, sp, #0x28
  100096f58  add     x3, sp, #0x68
  100096f5c  mov     w4, #0x10
  100096f60  mov     x1, x21
  100096f64  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100096f68  mov     x22, x0
  100096f6c  cbz     x22, loc_100097004                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  100096f70  ldr     x8, [sp, #0x38]
  100096f74  ldr     x28, [x8]
  100096f78  adrp    x8, #0x100416000
  100096f7c  nop
  100096f80  ldr     x23, [x8, #0xf18]
  100096f84  adrp    x8, #0x100417000
  100096f88  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  100096f8c  ldr     x24, [x8]
loc_100096f90:
  100096f90  mov     x26, #0
loc_100096f94:
  100096f94  ldr     x8, [sp, #0x38]
  100096f98  ldr     x8, [x8]
  100096f9c  cmp     x8, x28
  100096fa0  b.eq    loc_100096fac                            ; if (x8 == x28)
  100096fa4  mov     x0, x20
  100096fa8  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->statBars)
loc_100096fac:
  100096fac  ldr     x8, [sp, #0x30]
  100096fb0  ldr     x0, [x8, x26, lsl #3]
  100096fb4  mov     x1, x23
  100096fb8  bl      _objc_msgSend                            ; [x0 view]
  100096fbc  mov     x29, x29
  100096fc0  bl      _objc_retainAutoreleasedReturnValue
  100096fc4  mov     x25, x0
  100096fc8  mov     x1, x24
  100096fcc  bl      _objc_msgSend                            ; [[x0 view] removeFromSuperview]
  100096fd0  mov     x0, x25
  100096fd4  bl      _objc_release
  100096fd8  add     x26, x26, #1
  100096fdc  cmp     x26, x22
  100096fe0  b.lo    loc_100096f94                            ; if ((x26 + 1) <u [self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  100096fe4  add     x2, sp, #0x28
  100096fe8  add     x3, sp, #0x68
  100096fec  mov     w4, #0x10
  100096ff0  mov     x0, x20
  100096ff4  mov     x1, x21
  100096ff8  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100096ffc  mov     x22, x0
  100097000  cbnz    x22, loc_100096f90                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_100097004:
  100097004  mov     x0, x20
  100097008  bl      _objc_release
  10009700c  ldr     x0, [x19, x27]                           ; x0 = self->statBars
  100097010  adrp    x8, #0x100417000
  100097014  nop
  100097018  ldr     x1, [x8, #0x1b8]
  10009701c  bl      _objc_msgSend                            ; [self->statBars removeAllObjects]
  100097020  str     x19, [sp, #0x18]
  100097024  adrp    x8, #0x10041e000
  100097028  ldr     x8, [x8, #0xea0]
  10009702c  str     x8, [sp, #0x20]
  100097030  adrp    x8, #0x100416000
  100097034  nop
  100097038  ldr     x1, [x8, #0xfc8]
  10009703c  add     x0, sp, #0x18
  100097040  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100097044  ldur    x8, [x29, #-0x58]
  100097048  adrp    x9, #0x1003b0000
  10009704c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100097050  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100097054  sub     x8, x9, x8
  100097058  cbnz    x8, loc_10009707c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10009705c  sub     sp, x29, #0x50
  100097060  ldp     x29, x30, [sp, #0x50]
  100097064  ldp     x20, x19, [sp, #0x40]
  100097068  ldp     x22, x21, [sp, #0x30]
  10009706c  ldp     x24, x23, [sp, #0x20]
  100097070  ldp     x26, x25, [sp, #0x10]
  100097074  ldp     x28, x27, [sp], #0x60
  100097078  ret
loc_10009707c:
  10009707c  bl      ___stack_chk_fail                        ; stack_chk_fail([super dealloc])
loc_100097080:
  100097080  mov     x21, x0
  100097084  b       loc_100097094
  100097088  mov     x21, x0
  10009708c  mov     x0, x25
  100097090  bl      _objc_release
loc_100097094:
  100097094  mov     x0, x20
  100097098  bl      _objc_release
loc_10009709c:
  10009709c  str     x19, [sp, #8]
  1000970a0  adrp    x8, #0x10041e000
  1000970a4  ldr     x8, [x8, #0xea0]
  1000970a8  str     x8, [sp, #0x10]
  1000970ac  adrp    x8, #0x100416000
  1000970b0  nop
  1000970b4  ldr     x1, [x8, #0xfc8]
  1000970b8  add     x0, sp, #8
  1000970bc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000970c0  mov     x0, x21
  1000970c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000970c8  bl      sub_10000b760
  1000970cc  b       loc_100097080
  1000970d0  b       loc_100097080
  1000970d4  mov     x21, x0
  1000970d8  b       loc_10009709c

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController damagesView]
; address 0x1000970dc  size 16  kind objc
; ======================================================================
  1000970dc  adrp    x8, #0x10041f000
  1000970e0  ldrsw   x8, [x8, #0xfa4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._damagesView (+0x178)
  1000970e4  ldr     x0, [x0, x8]                             ; x0 = self->_damagesView
  1000970e8  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setDamagesView:]
; address 0x1000970ec  size 56  kind objc
; ======================================================================
  1000970ec  stp     x20, x19, [sp, #-0x20]!
  1000970f0  stp     x29, x30, [sp, #0x10]
  1000970f4  add     x29, sp, #0x10
  1000970f8  mov     x19, x0
  1000970fc  adrp    x8, #0x10041f000
  100097100  ldrsw   x20, [x8, #0xfa4]                        ; ivar offset ADArmoryWeaponDescriptionViewController._damagesView (+0x178)
  100097104  mov     x0, x2
  100097108  bl      _objc_retain
  10009710c  ldr     x8, [x19, x20]                           ; x8 = self->_damagesView
  100097110  str     x0, [x19, x20]                           ; self->_damagesView = arg1
  100097114  mov     x0, x8
  100097118  ldp     x29, x30, [sp, #0x10]
  10009711c  ldp     x20, x19, [sp], #0x20
  100097120  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController capacityView]
; address 0x100097124  size 16  kind objc
; ======================================================================
  100097124  adrp    x8, #0x10041f000
  100097128  ldrsw   x8, [x8, #0xfa8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._capacityView (+0x180)
  10009712c  ldr     x0, [x0, x8]                             ; x0 = self->_capacityView
  100097130  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setCapacityView:]
; address 0x100097134  size 56  kind objc
; ======================================================================
  100097134  stp     x20, x19, [sp, #-0x20]!
  100097138  stp     x29, x30, [sp, #0x10]
  10009713c  add     x29, sp, #0x10
  100097140  mov     x19, x0
  100097144  adrp    x8, #0x10041f000
  100097148  ldrsw   x20, [x8, #0xfa8]                        ; ivar offset ADArmoryWeaponDescriptionViewController._capacityView (+0x180)
  10009714c  mov     x0, x2
  100097150  bl      _objc_retain
  100097154  ldr     x8, [x19, x20]                           ; x8 = self->_capacityView
  100097158  str     x0, [x19, x20]                           ; self->_capacityView = arg1
  10009715c  mov     x0, x8
  100097160  ldp     x29, x30, [sp, #0x10]
  100097164  ldp     x20, x19, [sp], #0x20
  100097168  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController reloadSpeedView]
; address 0x10009716c  size 16  kind objc
; ======================================================================
  10009716c  adrp    x8, #0x10041f000
  100097170  ldrsw   x8, [x8, #0xfac]                         ; ivar offset ADArmoryWeaponDescriptionViewController._reloadSpeedView (+0x188)
  100097174  ldr     x0, [x0, x8]                             ; x0 = self->_reloadSpeedView
  100097178  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setReloadSpeedView:]
; address 0x10009717c  size 56  kind objc
; ======================================================================
  10009717c  stp     x20, x19, [sp, #-0x20]!
  100097180  stp     x29, x30, [sp, #0x10]
  100097184  add     x29, sp, #0x10
  100097188  mov     x19, x0
  10009718c  adrp    x8, #0x10041f000
  100097190  ldrsw   x20, [x8, #0xfac]                        ; ivar offset ADArmoryWeaponDescriptionViewController._reloadSpeedView (+0x188)
  100097194  mov     x0, x2
  100097198  bl      _objc_retain
  10009719c  ldr     x8, [x19, x20]                           ; x8 = self->_reloadSpeedView
  1000971a0  str     x0, [x19, x20]                           ; self->_reloadSpeedView = arg1
  1000971a4  mov     x0, x8
  1000971a8  ldp     x29, x30, [sp, #0x10]
  1000971ac  ldp     x20, x19, [sp], #0x20
  1000971b0  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController fireRateView]
; address 0x1000971b4  size 16  kind objc
; ======================================================================
  1000971b4  adrp    x8, #0x10041f000
  1000971b8  ldrsw   x8, [x8, #0xfb0]                         ; ivar offset ADArmoryWeaponDescriptionViewController._fireRateView (+0x190)
  1000971bc  ldr     x0, [x0, x8]                             ; x0 = self->_fireRateView
  1000971c0  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setFireRateView:]
; address 0x1000971c4  size 56  kind objc
; ======================================================================
  1000971c4  stp     x20, x19, [sp, #-0x20]!
  1000971c8  stp     x29, x30, [sp, #0x10]
  1000971cc  add     x29, sp, #0x10
  1000971d0  mov     x19, x0
  1000971d4  adrp    x8, #0x10041f000
  1000971d8  ldrsw   x20, [x8, #0xfb0]                        ; ivar offset ADArmoryWeaponDescriptionViewController._fireRateView (+0x190)
  1000971dc  mov     x0, x2
  1000971e0  bl      _objc_retain
  1000971e4  ldr     x8, [x19, x20]                           ; x8 = self->_fireRateView
  1000971e8  str     x0, [x19, x20]                           ; self->_fireRateView = arg1
  1000971ec  mov     x0, x8
  1000971f0  ldp     x29, x30, [sp, #0x10]
  1000971f4  ldp     x20, x19, [sp], #0x20
  1000971f8  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController levelImage]
; address 0x1000971fc  size 16  kind objc
; ======================================================================
  1000971fc  adrp    x8, #0x10041f000
  100097200  ldrsw   x8, [x8, #0xfb4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._levelImage (+0x198)
  100097204  ldr     x0, [x0, x8]                             ; x0 = self->_levelImage
  100097208  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setLevelImage:]
; address 0x10009720c  size 56  kind objc
; ======================================================================
  10009720c  stp     x20, x19, [sp, #-0x20]!
  100097210  stp     x29, x30, [sp, #0x10]
  100097214  add     x29, sp, #0x10
  100097218  mov     x19, x0
  10009721c  adrp    x8, #0x10041f000
  100097220  ldrsw   x20, [x8, #0xfb4]                        ; ivar offset ADArmoryWeaponDescriptionViewController._levelImage (+0x198)
  100097224  mov     x0, x2
  100097228  bl      _objc_retain
  10009722c  ldr     x8, [x19, x20]                           ; x8 = self->_levelImage
  100097230  str     x0, [x19, x20]                           ; self->_levelImage = arg1
  100097234  mov     x0, x8
  100097238  ldp     x29, x30, [sp, #0x10]
  10009723c  ldp     x20, x19, [sp], #0x20
  100097240  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController lockImage]
; address 0x100097244  size 16  kind objc
; ======================================================================
  100097244  adrp    x8, #0x10041f000
  100097248  ldrsw   x8, [x8, #0xfb8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._lockImage (+0x1a0)
  10009724c  ldr     x0, [x0, x8]                             ; x0 = self->_lockImage
  100097250  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setLockImage:]
; address 0x100097254  size 56  kind objc
; ======================================================================
  100097254  stp     x20, x19, [sp, #-0x20]!
  100097258  stp     x29, x30, [sp, #0x10]
  10009725c  add     x29, sp, #0x10
  100097260  mov     x19, x0
  100097264  adrp    x8, #0x10041f000
  100097268  ldrsw   x20, [x8, #0xfb8]                        ; ivar offset ADArmoryWeaponDescriptionViewController._lockImage (+0x1a0)
  10009726c  mov     x0, x2
  100097270  bl      _objc_retain
  100097274  ldr     x8, [x19, x20]                           ; x8 = self->_lockImage
  100097278  str     x0, [x19, x20]                           ; self->_lockImage = arg1
  10009727c  mov     x0, x8
  100097280  ldp     x29, x30, [sp, #0x10]
  100097284  ldp     x20, x19, [sp], #0x20
  100097288  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController cancelBuyOrUpgradeButton]
; address 0x10009728c  size 16  kind objc
; ======================================================================
  10009728c  adrp    x8, #0x10041f000
  100097290  ldrsw   x8, [x8, #0xfbc]                         ; ivar offset ADArmoryWeaponDescriptionViewController._cancelBuyOrUpgradeButton (+0x1a8)
  100097294  ldr     x0, [x0, x8]                             ; x0 = self->_cancelBuyOrUpgradeButton
  100097298  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setCancelBuyOrUpgradeButton:]
; address 0x10009729c  size 56  kind objc
; ======================================================================
  10009729c  stp     x20, x19, [sp, #-0x20]!
  1000972a0  stp     x29, x30, [sp, #0x10]
  1000972a4  add     x29, sp, #0x10
  1000972a8  mov     x19, x0
  1000972ac  adrp    x8, #0x10041f000
  1000972b0  ldrsw   x20, [x8, #0xfbc]                        ; ivar offset ADArmoryWeaponDescriptionViewController._cancelBuyOrUpgradeButton (+0x1a8)
  1000972b4  mov     x0, x2
  1000972b8  bl      _objc_retain
  1000972bc  ldr     x8, [x19, x20]                           ; x8 = self->_cancelBuyOrUpgradeButton
  1000972c0  str     x0, [x19, x20]                           ; self->_cancelBuyOrUpgradeButton = arg1
  1000972c4  mov     x0, x8
  1000972c8  ldp     x29, x30, [sp, #0x10]
  1000972cc  ldp     x20, x19, [sp], #0x20
  1000972d0  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController shopInfoTextView]
; address 0x1000972d4  size 16  kind objc
; ======================================================================
  1000972d4  adrp    x8, #0x10041f000
  1000972d8  ldrsw   x8, [x8, #0xfc0]                         ; ivar offset ADArmoryWeaponDescriptionViewController._shopInfoTextView (+0x1b0)
  1000972dc  ldr     x0, [x0, x8]                             ; x0 = self->_shopInfoTextView
  1000972e0  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setShopInfoTextView:]
; address 0x1000972e4  size 56  kind objc
; ======================================================================
  1000972e4  stp     x20, x19, [sp, #-0x20]!
  1000972e8  stp     x29, x30, [sp, #0x10]
  1000972ec  add     x29, sp, #0x10
  1000972f0  mov     x19, x0
  1000972f4  adrp    x8, #0x10041f000
  1000972f8  ldrsw   x20, [x8, #0xfc0]                        ; ivar offset ADArmoryWeaponDescriptionViewController._shopInfoTextView (+0x1b0)
  1000972fc  mov     x0, x2
  100097300  bl      _objc_retain
  100097304  ldr     x8, [x19, x20]                           ; x8 = self->_shopInfoTextView
  100097308  str     x0, [x19, x20]                           ; self->_shopInfoTextView = arg1
  10009730c  mov     x0, x8
  100097310  ldp     x29, x30, [sp, #0x10]
  100097314  ldp     x20, x19, [sp], #0x20
  100097318  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController equip1Button]
; address 0x10009731c  size 16  kind objc
; ======================================================================
  10009731c  adrp    x8, #0x10041f000
  100097320  ldrsw   x8, [x8, #0xfc4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._equip1Button (+0x1b8)
  100097324  ldr     x0, [x0, x8]                             ; x0 = self->_equip1Button
  100097328  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setEquip1Button:]
; address 0x10009732c  size 56  kind objc
; ======================================================================
  10009732c  stp     x20, x19, [sp, #-0x20]!
  100097330  stp     x29, x30, [sp, #0x10]
  100097334  add     x29, sp, #0x10
  100097338  mov     x19, x0
  10009733c  adrp    x8, #0x10041f000
  100097340  ldrsw   x20, [x8, #0xfc4]                        ; ivar offset ADArmoryWeaponDescriptionViewController._equip1Button (+0x1b8)
  100097344  mov     x0, x2
  100097348  bl      _objc_retain
  10009734c  ldr     x8, [x19, x20]                           ; x8 = self->_equip1Button
  100097350  str     x0, [x19, x20]                           ; self->_equip1Button = arg1
  100097354  mov     x0, x8
  100097358  ldp     x29, x30, [sp, #0x10]
  10009735c  ldp     x20, x19, [sp], #0x20
  100097360  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController equip2Button]
; address 0x100097364  size 16  kind objc
; ======================================================================
  100097364  adrp    x8, #0x10041f000
  100097368  ldrsw   x8, [x8, #0xfc8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._equip2Button (+0x1c0)
  10009736c  ldr     x0, [x0, x8]                             ; x0 = self->_equip2Button
  100097370  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setEquip2Button:]
; address 0x100097374  size 56  kind objc
; ======================================================================
  100097374  stp     x20, x19, [sp, #-0x20]!
  100097378  stp     x29, x30, [sp, #0x10]
  10009737c  add     x29, sp, #0x10
  100097380  mov     x19, x0
  100097384  adrp    x8, #0x10041f000
  100097388  ldrsw   x20, [x8, #0xfc8]                        ; ivar offset ADArmoryWeaponDescriptionViewController._equip2Button (+0x1c0)
  10009738c  mov     x0, x2
  100097390  bl      _objc_retain
  100097394  ldr     x8, [x19, x20]                           ; x8 = self->_equip2Button
  100097398  str     x0, [x19, x20]                           ; self->_equip2Button = arg1
  10009739c  mov     x0, x8
  1000973a0  ldp     x29, x30, [sp, #0x10]
  1000973a4  ldp     x20, x19, [sp], #0x20
  1000973a8  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController hideEquipButtons]
; address 0x1000973ac  size 16  kind objc
; ======================================================================
  1000973ac  adrp    x8, #0x10041f000
  1000973b0  ldrsw   x8, [x8, #0xfcc]                         ; ivar offset ADArmoryWeaponDescriptionViewController._hideEquipButtons (+0x170)
  1000973b4  ldrb    w0, [x0, x8]                             ; w0 = self->_hideEquipButtons
  1000973b8  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setHideEquipButtons:]
; address 0x1000973bc  size 16  kind objc
; ======================================================================
  1000973bc  adrp    x8, #0x10041f000
  1000973c0  ldrsw   x8, [x8, #0xfcc]                         ; ivar offset ADArmoryWeaponDescriptionViewController._hideEquipButtons (+0x170)
  1000973c4  strb    w2, [x0, x8]                             ; self->_hideEquipButtons = arg1
  1000973c8  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController damamgesLabel]
; address 0x1000973cc  size 16  kind objc
; ======================================================================
  1000973cc  adrp    x8, #0x10041f000
  1000973d0  ldrsw   x8, [x8, #0xfd0]                         ; ivar offset ADArmoryWeaponDescriptionViewController._damamgesLabel (+0x1c8)
  1000973d4  ldr     x0, [x0, x8]                             ; x0 = self->_damamgesLabel
  1000973d8  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setDamamgesLabel:]
; address 0x1000973dc  size 56  kind objc
; ======================================================================
  1000973dc  stp     x20, x19, [sp, #-0x20]!
  1000973e0  stp     x29, x30, [sp, #0x10]
  1000973e4  add     x29, sp, #0x10
  1000973e8  mov     x19, x0
  1000973ec  adrp    x8, #0x10041f000
  1000973f0  ldrsw   x20, [x8, #0xfd0]                        ; ivar offset ADArmoryWeaponDescriptionViewController._damamgesLabel (+0x1c8)
  1000973f4  mov     x0, x2
  1000973f8  bl      _objc_retain
  1000973fc  ldr     x8, [x19, x20]                           ; x8 = self->_damamgesLabel
  100097400  str     x0, [x19, x20]                           ; self->_damamgesLabel = arg1
  100097404  mov     x0, x8
  100097408  ldp     x29, x30, [sp, #0x10]
  10009740c  ldp     x20, x19, [sp], #0x20
  100097410  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController capacityLabel]
; address 0x100097414  size 16  kind objc
; ======================================================================
  100097414  adrp    x8, #0x10041f000
  100097418  ldrsw   x8, [x8, #0xfd4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._capacityLabel (+0x1d0)
  10009741c  ldr     x0, [x0, x8]                             ; x0 = self->_capacityLabel
  100097420  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setCapacityLabel:]
; address 0x100097424  size 56  kind objc
; ======================================================================
  100097424  stp     x20, x19, [sp, #-0x20]!
  100097428  stp     x29, x30, [sp, #0x10]
  10009742c  add     x29, sp, #0x10
  100097430  mov     x19, x0
  100097434  adrp    x8, #0x10041f000
  100097438  ldrsw   x20, [x8, #0xfd4]                        ; ivar offset ADArmoryWeaponDescriptionViewController._capacityLabel (+0x1d0)
  10009743c  mov     x0, x2
  100097440  bl      _objc_retain
  100097444  ldr     x8, [x19, x20]                           ; x8 = self->_capacityLabel
  100097448  str     x0, [x19, x20]                           ; self->_capacityLabel = arg1
  10009744c  mov     x0, x8
  100097450  ldp     x29, x30, [sp, #0x10]
  100097454  ldp     x20, x19, [sp], #0x20
  100097458  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController effectiveAngleLabel]
; address 0x10009745c  size 16  kind objc
; ======================================================================
  10009745c  adrp    x8, #0x10041f000
  100097460  ldrsw   x8, [x8, #0xfd8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._effectiveAngleLabel (+0x1d8)
  100097464  ldr     x0, [x0, x8]                             ; x0 = self->_effectiveAngleLabel
  100097468  ret

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController setEffectiveAngleLabel:]
; address 0x10009746c  size 56  kind objc
; ======================================================================
  10009746c  stp     x20, x19, [sp, #-0x20]!
  100097470  stp     x29, x30, [sp, #0x10]
  100097474  add     x29, sp, #0x10
  100097478  mov     x19, x0
  10009747c  adrp    x8, #0x10041f000
  100097480  ldrsw   x20, [x8, #0xfd8]                        ; ivar offset ADArmoryWeaponDescriptionViewController._effectiveAngleLabel (+0x1d8)
  100097484  mov     x0, x2
  100097488  bl      _objc_retain
  10009748c  ldr     x8, [x19, x20]                           ; x8 = self->_effectiveAngleLabel
  100097490  str     x0, [x19, x20]                           ; self->_effectiveAngleLabel = arg1
  100097494  mov     x0, x8
  100097498  ldp     x29, x30, [sp, #0x10]
  10009749c  ldp     x20, x19, [sp], #0x20
  1000974a0  b       _objc_release

; ======================================================================
; -[ADArmoryWeaponDescriptionViewController .cxx_destruct]
; address 0x1000974a4  size 384  kind objc
; ======================================================================
  1000974a4  stp     x20, x19, [sp, #-0x20]!
  1000974a8  stp     x29, x30, [sp, #0x10]
  1000974ac  add     x29, sp, #0x10
  1000974b0  mov     x19, x0
  1000974b4  adrp    x8, #0x10041f000
  1000974b8  ldrsw   x8, [x8, #0xfd8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._effectiveAngleLabel (+0x1d8)
  1000974bc  add     x0, x19, x8
  1000974c0  mov     x1, #0
  1000974c4  bl      _objc_storeStrong
  1000974c8  adrp    x8, #0x10041f000
  1000974cc  ldrsw   x8, [x8, #0xfd4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._capacityLabel (+0x1d0)
  1000974d0  add     x0, x19, x8
  1000974d4  mov     x1, #0
  1000974d8  bl      _objc_storeStrong
  1000974dc  adrp    x8, #0x10041f000
  1000974e0  ldrsw   x8, [x8, #0xfd0]                         ; ivar offset ADArmoryWeaponDescriptionViewController._damamgesLabel (+0x1c8)
  1000974e4  add     x0, x19, x8
  1000974e8  mov     x1, #0
  1000974ec  bl      _objc_storeStrong
  1000974f0  adrp    x8, #0x10041f000
  1000974f4  ldrsw   x8, [x8, #0xfc8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._equip2Button (+0x1c0)
  1000974f8  add     x0, x19, x8
  1000974fc  mov     x1, #0
  100097500  bl      _objc_storeStrong
  100097504  adrp    x8, #0x10041f000
  100097508  ldrsw   x8, [x8, #0xfc4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._equip1Button (+0x1b8)
  10009750c  add     x0, x19, x8
  100097510  mov     x1, #0
  100097514  bl      _objc_storeStrong
  100097518  adrp    x8, #0x10041f000
  10009751c  ldrsw   x8, [x8, #0xfc0]                         ; ivar offset ADArmoryWeaponDescriptionViewController._shopInfoTextView (+0x1b0)
  100097520  add     x0, x19, x8
  100097524  mov     x1, #0
  100097528  bl      _objc_storeStrong
  10009752c  adrp    x8, #0x10041f000
  100097530  ldrsw   x8, [x8, #0xfbc]                         ; ivar offset ADArmoryWeaponDescriptionViewController._cancelBuyOrUpgradeButton (+0x1a8)
  100097534  add     x0, x19, x8
  100097538  mov     x1, #0
  10009753c  bl      _objc_storeStrong
  100097540  adrp    x8, #0x10041f000
  100097544  ldrsw   x8, [x8, #0xfb8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._lockImage (+0x1a0)
  100097548  add     x0, x19, x8
  10009754c  mov     x1, #0
  100097550  bl      _objc_storeStrong
  100097554  adrp    x8, #0x10041f000
  100097558  ldrsw   x8, [x8, #0xfb4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._levelImage (+0x198)
  10009755c  add     x0, x19, x8
  100097560  mov     x1, #0
  100097564  bl      _objc_storeStrong
  100097568  adrp    x8, #0x10041f000
  10009756c  ldrsw   x8, [x8, #0xfb0]                         ; ivar offset ADArmoryWeaponDescriptionViewController._fireRateView (+0x190)
  100097570  add     x0, x19, x8
  100097574  mov     x1, #0
  100097578  bl      _objc_storeStrong
  10009757c  adrp    x8, #0x10041f000
  100097580  ldrsw   x8, [x8, #0xfac]                         ; ivar offset ADArmoryWeaponDescriptionViewController._reloadSpeedView (+0x188)
  100097584  add     x0, x19, x8
  100097588  mov     x1, #0
  10009758c  bl      _objc_storeStrong
  100097590  adrp    x8, #0x10041f000
  100097594  ldrsw   x8, [x8, #0xfa8]                         ; ivar offset ADArmoryWeaponDescriptionViewController._capacityView (+0x180)
  100097598  add     x0, x19, x8
  10009759c  mov     x1, #0
  1000975a0  bl      _objc_storeStrong
  1000975a4  adrp    x8, #0x10041f000
  1000975a8  ldrsw   x8, [x8, #0xfa4]                         ; ivar offset ADArmoryWeaponDescriptionViewController._damagesView (+0x178)
  1000975ac  add     x0, x19, x8
  1000975b0  mov     x1, #0
  1000975b4  bl      _objc_storeStrong
  1000975b8  adrp    x8, #0x10041f000
  1000975bc  ldrsw   x8, [x8, #0xf9c]                         ; ivar offset ADArmoryWeaponDescriptionViewController.nextLevelDict (+0x160)
  1000975c0  add     x0, x19, x8
  1000975c4  mov     x1, #0
  1000975c8  bl      _objc_storeStrong
  1000975cc  adrp    x8, #0x10041f000
  1000975d0  ldrsw   x8, [x8, #0xf98]                         ; ivar offset ADArmoryWeaponDescriptionViewController.currentLevelDict (+0x158)
  1000975d4  add     x0, x19, x8
  1000975d8  mov     x1, #0
  1000975dc  bl      _objc_storeStrong
  1000975e0  adrp    x8, #0x10041f000
  1000975e4  ldrsw   x8, [x8, #0xf90]                         ; ivar offset ADArmoryWeaponDescriptionViewController.statBars (+0x150)
  1000975e8  add     x0, x19, x8
  1000975ec  mov     x1, #0
  1000975f0  bl      _objc_storeStrong
  1000975f4  adrp    x8, #0x10041f000
  1000975f8  ldrsw   x8, [x8, #0xf8c]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponStatsDict (+0x148)
  1000975fc  add     x0, x19, x8
  100097600  mov     x1, #0
  100097604  bl      _objc_storeStrong
  100097608  mov     x1, #0
  10009760c  adrp    x8, #0x10041f000
  100097610  ldrsw   x8, [x8, #0xf88]                         ; ivar offset ADArmoryWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100097614  add     x0, x19, x8
  100097618  ldp     x29, x30, [sp, #0x10]
  10009761c  ldp     x20, x19, [sp], #0x20
  100097620  b       _objc_storeStrong
