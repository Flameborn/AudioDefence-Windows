// unit Accessible_ADWeaponDescriptionViewController — 31 functions
//   0x10006f000     384  -[Accessible_ADWeaponDescriptionViewController initWithWeaponDictionary:]
//   0x10006f180      92  -[Accessible_ADWeaponDescriptionViewController viewDidLoad]
//   0x10006f1dc    2188  -[Accessible_ADWeaponDescriptionViewController loadInformations]
//   0x10006fa68    1316  -[Accessible_ADWeaponDescriptionViewController checkBuyOrUpgradeButton]
//   0x10006ff8c    2088  -[Accessible_ADWeaponDescriptionViewController checkEquipButtons]
//   0x1000707b4     168  -[Accessible_ADWeaponDescriptionViewController backButtonPressed:]
//   0x10007085c    2044  -[Accessible_ADWeaponDescriptionViewController buyOrUpgradeButtonPressed:]
//   0x100071058     464  -[Accessible_ADWeaponDescriptionViewController equipSlot1ButtonPressed:]
//   0x100071228     228  -[Accessible_ADWeaponDescriptionViewController equipSlot2ButtonPressed:]
//   0x10007130c      60  -[Accessible_ADWeaponDescriptionViewController didReceiveMemoryWarning]
//   0x100071348      32  -[Accessible_ADWeaponDescriptionViewController armoryViewController]
//   0x100071368      20  -[Accessible_ADWeaponDescriptionViewController setArmoryViewController:]
//   0x10007137c      32  -[Accessible_ADWeaponDescriptionViewController parentTableView]
//   0x10007139c      20  -[Accessible_ADWeaponDescriptionViewController setParentTableView:]
//   0x1000713b0      16  -[Accessible_ADWeaponDescriptionViewController weaponName]
//   0x1000713c0      56  -[Accessible_ADWeaponDescriptionViewController setWeaponName:]
//   0x1000713f8      16  -[Accessible_ADWeaponDescriptionViewController weaponDescription]
//   0x100071408      56  -[Accessible_ADWeaponDescriptionViewController setWeaponDescription:]
//   0x100071440      16  -[Accessible_ADWeaponDescriptionViewController weaponStats]
//   0x100071450      56  -[Accessible_ADWeaponDescriptionViewController setWeaponStats:]
//   0x100071488      16  -[Accessible_ADWeaponDescriptionViewController buyOrUpgradeButton]
//   0x100071498      56  -[Accessible_ADWeaponDescriptionViewController setBuyOrUpgradeButton:]
//   0x1000714d0      16  -[Accessible_ADWeaponDescriptionViewController equip1Button]
//   0x1000714e0      56  -[Accessible_ADWeaponDescriptionViewController setEquip1Button:]
//   0x100071518      16  -[Accessible_ADWeaponDescriptionViewController equip2Button]
//   0x100071528      56  -[Accessible_ADWeaponDescriptionViewController setEquip2Button:]
//   0x100071560      16  -[Accessible_ADWeaponDescriptionViewController equip3Button]
//   0x100071570      56  -[Accessible_ADWeaponDescriptionViewController setEquip3Button:]
//   0x1000715a8      16  -[Accessible_ADWeaponDescriptionViewController hideButtons]
//   0x1000715b8      16  -[Accessible_ADWeaponDescriptionViewController setHideButtons:]
//   0x1000715c8     276  -[Accessible_ADWeaponDescriptionViewController .cxx_destruct]

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController initWithWeaponDictionary:]
; address 0x10006f000  size 384  kind objc
; ======================================================================
  10006f000  stp     x24, x23, [sp, #-0x40]!
  10006f004  stp     x22, x21, [sp, #0x10]
  10006f008  stp     x20, x19, [sp, #0x20]
  10006f00c  stp     x29, x30, [sp, #0x30]
  10006f010  add     x29, sp, #0x30
  10006f014  sub     sp, sp, #0x10
  10006f018  mov     x20, x0
  10006f01c  mov     x0, x2
  10006f020  bl      _objc_retain
  10006f024  mov     x19, x0
  10006f028  str     x20, [sp]
  10006f02c  adrp    x8, #0x10041e000
  10006f030  ldr     x8, [x8, #0xdd0]
  10006f034  str     x8, [sp, #8]
  10006f038  adrp    x8, #0x100416000
  10006f03c  nop
  10006f040  ldr     x1, [x8, #0xb40]
  10006f044  mov     x21, #0
  10006f048  mov     x0, sp
  10006f04c  mov     x2, #0
  10006f050  mov     x3, #0
  10006f054  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  10006f058  mov     x20, x0
  10006f05c  cbz     x20, loc_10006f118                       ; if (self == 0)
  10006f060  mov     x21, x20
  10006f064  adrp    x8, #0x10041f000
  10006f068  ldrsw   x23, [x8, #0xcd8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  10006f06c  mov     x0, x19
  10006f070  bl      _objc_retain
  10006f074  mov     x22, x0
  10006f078  ldr     x0, [x20, x23]                           ; x0 = self->weaponInventoryDict
  10006f07c  str     x22, [x20, x23]                          ; self->weaponInventoryDict = arg1
  10006f080  bl      _objc_release
  10006f084  adrp    x8, #0x10041d000
  10006f088  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10006f08c  adrp    x8, #0x100417000
  10006f090  nop
  10006f094  ldr     x1, [x8, #0xa0]
  10006f098  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10006f09c  mov     x29, x29
  10006f0a0  bl      _objc_retainAutoreleasedReturnValue
  10006f0a4  mov     x21, x0
  10006f0a8  adrp    x8, #0x100417000
  10006f0ac  nop
  10006f0b0  ldr     x1, [x8, #0x40]
  10006f0b4  adrp    x2, #0x1003b9000
  10006f0b8  add     x2, x2, #0xdb0                           ; @"name"
  10006f0bc  mov     x0, x22
  10006f0c0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  10006f0c4  mov     x29, x29
  10006f0c8  bl      _objc_retainAutoreleasedReturnValue
  10006f0cc  mov     x22, x0
  10006f0d0  adrp    x8, #0x100417000
  10006f0d4  nop
  10006f0d8  ldr     x1, [x8, #0xa48]
  10006f0dc  mov     x0, x21
  10006f0e0  mov     x2, x22
  10006f0e4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[arg1 objectForKey:@"name"]]
  10006f0e8  mov     x29, x29
  10006f0ec  bl      _objc_retainAutoreleasedReturnValue
  10006f0f0  adrp    x8, #0x10041f000
  10006f0f4  ldrsw   x9, [x8, #0xcdc]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponStatsDict (+0x148)
  10006f0f8  ldr     x8, [x20, x9]                            ; x8 = self->weaponStatsDict
  10006f0fc  str     x0, [x20, x9]                            ; self->weaponStatsDict = [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[arg1 objectForKey:@"name"]]
  10006f100  mov     x0, x8
  10006f104  bl      _objc_release
  10006f108  mov     x0, x22
  10006f10c  bl      _objc_release
  10006f110  mov     x0, x21
  10006f114  bl      _objc_release
loc_10006f118:
  10006f118  mov     x0, x19
  10006f11c  bl      _objc_release
  10006f120  mov     x0, x20
  10006f124  sub     sp, x29, #0x30
  10006f128  ldp     x29, x30, [sp, #0x30]
  10006f12c  ldp     x20, x19, [sp, #0x20]
  10006f130  ldp     x22, x21, [sp, #0x10]
  10006f134  ldp     x24, x23, [sp], #0x40
  10006f138  ret
  10006f13c  mov     x22, x0
  10006f140  b       loc_10006f168
  10006f144  mov     x22, x0
  10006f148  b       loc_10006f15c
  10006f14c  mov     x1, x22
  10006f150  mov     x22, x0
  10006f154  mov     x0, x1
  10006f158  bl      _objc_release
loc_10006f15c:
  10006f15c  mov     x0, x21
  10006f160  bl      _objc_release
  10006f164  mov     x21, x20
loc_10006f168:
  10006f168  mov     x0, x19
  10006f16c  bl      _objc_release
  10006f170  mov     x0, x21
  10006f174  bl      _objc_release
  10006f178  mov     x0, x22
  10006f17c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController viewDidLoad]
; address 0x10006f180  size 92  kind objc
; ======================================================================
  10006f180  stp     x20, x19, [sp, #-0x20]!
  10006f184  stp     x29, x30, [sp, #0x10]
  10006f188  add     x29, sp, #0x10
  10006f18c  sub     sp, sp, #0x10
  10006f190  mov     x19, x0
  10006f194  str     x19, [sp]
  10006f198  adrp    x8, #0x10041e000
  10006f19c  ldr     x8, [x8, #0xdd0]
  10006f1a0  str     x8, [sp, #8]
  10006f1a4  adrp    x8, #0x100416000
  10006f1a8  nop
  10006f1ac  ldr     x1, [x8, #0xb48]
  10006f1b0  mov     x0, sp
  10006f1b4  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10006f1b8  adrp    x8, #0x100419000
  10006f1bc  nop
  10006f1c0  ldr     x1, [x8, #0x700]
  10006f1c4  mov     x0, x19
  10006f1c8  bl      _objc_msgSend                            ; [self loadInformations]
  10006f1cc  sub     sp, x29, #0x10
  10006f1d0  ldp     x29, x30, [sp, #0x10]
  10006f1d4  ldp     x20, x19, [sp], #0x20
  10006f1d8  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController loadInformations]
; address 0x10006f1dc  size 2188  kind objc
; ======================================================================
  10006f1dc  stp     d9, d8, [sp, #-0x70]!
  10006f1e0  stp     x28, x27, [sp, #0x10]
  10006f1e4  stp     x26, x25, [sp, #0x20]
  10006f1e8  stp     x24, x23, [sp, #0x30]
  10006f1ec  stp     x22, x21, [sp, #0x40]
  10006f1f0  stp     x20, x19, [sp, #0x50]
  10006f1f4  stp     x29, x30, [sp, #0x60]
  10006f1f8  add     x29, sp, #0x60
  10006f1fc  sub     sp, sp, #0x50
  10006f200  mov     x19, x0
  10006f204  adrp    x8, #0x10041d000
  10006f208  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10006f20c  adrp    x8, #0x100416000
  10006f210  nop
  10006f214  ldr     x1, [x8, #0xec8]
  10006f218  str     x1, [sp, #0x38]
  10006f21c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006f220  mov     x29, x29
  10006f224  bl      _objc_retainAutoreleasedReturnValue
  10006f228  mov     x21, x0
  10006f22c  adrp    x8, #0x10041f000
  10006f230  ldrsw   x20, [x8, #0xcd8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  10006f234  ldr     x0, [x19, x20]                           ; x0 = self->weaponInventoryDict
  10006f238  adrp    x8, #0x100417000
  10006f23c  nop
  10006f240  ldr     x28, [x8, #0x40]
  10006f244  adrp    x2, #0x1003b9000
  10006f248  add     x2, x2, #0xdb0                           ; @"name"
  10006f24c  mov     x1, x28
  10006f250  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10006f254  mov     x29, x29
  10006f258  bl      _objc_retainAutoreleasedReturnValue
  10006f25c  mov     x22, x0
  10006f260  adrp    x8, #0x100417000
  10006f264  nop
  10006f268  ldr     x1, [x8, #0x458]
  10006f26c  mov     x0, x21
  10006f270  mov     x2, x22
  10006f274  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  10006f278  adrp    x8, #0x10041f000
  10006f27c  ldrsw   x23, [x8, #0xce0]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.current_level (+0x160)
  10006f280  str     w0, [x19, x23]                           ; self->current_level = [[ADInventory sharedInventory] levelForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  10006f284  mov     x0, x22
  10006f288  bl      _objc_release
  10006f28c  mov     x0, x21
  10006f290  bl      _objc_release
  10006f294  adrp    x8, #0x10041f000
  10006f298  ldrsw   x26, [x8, #0xcdc]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponStatsDict (+0x148)
  10006f29c  ldr     x22, [x19, x26]                          ; x22 = self->weaponStatsDict
  10006f2a0  adrp    x27, #0x10041d000
  10006f2a4  ldr     x0, [x27, #0xf78]                        ; class NSString
  10006f2a8  adrp    x8, #0x100416000
  10006f2ac  nop
  10006f2b0  ldr     x24, [x8, #0xee8]
  10006f2b4  ldr     w8, [x19, x23]                           ; w8 = self->current_level
  10006f2b8  str     x8, [sp]
  10006f2bc  adrp    x2, #0x1003ba000
  10006f2c0  add     x2, x2, #0x450                           ; @"level_%i"
  10006f2c4  mov     x1, x24
  10006f2c8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", self->current_level]
  10006f2cc  mov     x29, x29
  10006f2d0  bl      _objc_retainAutoreleasedReturnValue
  10006f2d4  mov     x21, x0
  10006f2d8  mov     x0, x22
  10006f2dc  mov     x1, x28
  10006f2e0  mov     x2, x21
  10006f2e4  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", self->current_level]]
  10006f2e8  mov     x29, x29
  10006f2ec  bl      _objc_retainAutoreleasedReturnValue
  10006f2f0  adrp    x8, #0x10041f000
  10006f2f4  ldrsw   x9, [x8, #0xce4]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.currentLevelDict (+0x150)
  10006f2f8  str     x9, [sp, #0x30]
  10006f2fc  ldr     x8, [x19, x9]                            ; x8 = self->currentLevelDict
  10006f300  str     x0, [x19, x9]                            ; self->currentLevelDict = [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", self->current_level]]
  10006f304  mov     x0, x8
  10006f308  bl      _objc_release
  10006f30c  mov     x0, x21
  10006f310  bl      _objc_release
  10006f314  ldr     x22, [x19, x26]                          ; x22 = self->weaponStatsDict
  10006f318  ldr     x0, [x27, #0xf78]                        ; class NSString
  10006f31c  ldr     w8, [x19, x23]                           ; w8 = self->current_level
  10006f320  add     w8, w8, #1
  10006f324  str     x8, [sp]
  10006f328  adrp    x2, #0x1003ba000
  10006f32c  add     x2, x2, #0x450                           ; @"level_%i"
  10006f330  mov     x1, x24
  10006f334  str     x24, [sp, #0x40]
  10006f338  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", (self->current_level + 1)]
  10006f33c  mov     x29, x29
  10006f340  bl      _objc_retainAutoreleasedReturnValue
  10006f344  mov     x21, x0
  10006f348  mov     x0, x22
  10006f34c  mov     x1, x28
  10006f350  mov     x2, x21
  10006f354  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", (self->current_level + 1)]]
  10006f358  mov     x29, x29
  10006f35c  bl      _objc_retainAutoreleasedReturnValue
  10006f360  adrp    x8, #0x10041f000
  10006f364  ldrsw   x9, [x8, #0xce8]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.nextLevelDict (+0x158)
  10006f368  ldr     x8, [x19, x9]                            ; x8 = self->nextLevelDict
  10006f36c  str     x0, [x19, x9]                            ; self->nextLevelDict = [self->weaponStatsDict objectForKey:[NSString stringWithFormat:@"level_%i", (self->current_level + 1)]]
  10006f370  mov     x0, x8
  10006f374  bl      _objc_release
  10006f378  mov     x0, x21
  10006f37c  bl      _objc_release
  10006f380  adrp    x8, #0x100419000
  10006f384  nop
  10006f388  ldr     x24, [x8, #0x708]
  10006f38c  mov     x0, x19
  10006f390  mov     x1, x24
  10006f394  bl      _objc_msgSend                            ; [self weaponName]
  10006f398  mov     x29, x29
  10006f39c  bl      _objc_retainAutoreleasedReturnValue
  10006f3a0  mov     x25, x0
  10006f3a4  adrp    x8, #0x10041d000
  10006f3a8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10006f3ac  adrp    x8, #0x100417000
  10006f3b0  nop
  10006f3b4  ldr     x1, [x8, #0xa0]
  10006f3b8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10006f3bc  mov     x22, x27
  10006f3c0  str     x26, [sp, #0x20]
  10006f3c4  mov     x29, x29
  10006f3c8  bl      _objc_retainAutoreleasedReturnValue
  10006f3cc  mov     x26, x0
  10006f3d0  ldr     x0, [x19, x20]                           ; x0 = self->weaponInventoryDict
  10006f3d4  adrp    x2, #0x1003b9000
  10006f3d8  add     x2, x2, #0xdb0                           ; @"name"
  10006f3dc  mov     x1, x28
  10006f3e0  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10006f3e4  mov     x29, x29
  10006f3e8  bl      _objc_retainAutoreleasedReturnValue
  10006f3ec  mov     x27, x0
  10006f3f0  adrp    x8, #0x100417000
  10006f3f4  nop
  10006f3f8  ldr     x1, [x8, #0x1f0]
  10006f3fc  mov     x0, x26
  10006f400  mov     x2, x27
  10006f404  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  10006f408  mov     x29, x29
  10006f40c  bl      _objc_retainAutoreleasedReturnValue
  10006f410  mov     x21, x0
  10006f414  adrp    x8, #0x100416000
  10006f418  nop
  10006f41c  ldr     x1, [x8, #0xb68]
  10006f420  str     x1, [sp, #0x48]
  10006f424  mov     x0, x25
  10006f428  mov     x2, x21
  10006f42c  bl      _objc_msgSend                            ; [[self weaponName] setText:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"name"]]]
  10006f430  mov     x0, x21
  10006f434  bl      _objc_release
  10006f438  mov     x0, x27
  10006f43c  bl      _objc_release
  10006f440  mov     x0, x26
  10006f444  bl      _objc_release
  10006f448  mov     x0, x25
  10006f44c  bl      _objc_release
  10006f450  adrp    x8, #0x10041d000
  10006f454  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10006f458  ldr     x1, [sp, #0x38]
  10006f45c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006f460  mov     x29, x29
  10006f464  bl      _objc_retainAutoreleasedReturnValue
  10006f468  mov     x25, x0
  10006f46c  ldr     x0, [x19, x20]                           ; x0 = self->weaponInventoryDict
  10006f470  adrp    x2, #0x1003b9000
  10006f474  add     x2, x2, #0xdb0                           ; @"name"
  10006f478  mov     x1, x28
  10006f47c  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10006f480  str     x28, [sp, #0x28]
  10006f484  mov     x29, x29
  10006f488  bl      _objc_retainAutoreleasedReturnValue
  10006f48c  mov     x26, x0
  10006f490  adrp    x8, #0x100417000
  10006f494  nop
  10006f498  ldr     x1, [x8, #0x1d8]
  10006f49c  mov     x0, x25
  10006f4a0  mov     x2, x26
  10006f4a4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  10006f4a8  mov     x21, x0
  10006f4ac  mov     x27, x22
  10006f4b0  mov     x0, x26
  10006f4b4  bl      _objc_release
  10006f4b8  mov     x0, x25
  10006f4bc  bl      _objc_release
  10006f4c0  mov     x0, x19
  10006f4c4  mov     x1, x24
  10006f4c8  bl      _objc_msgSend                            ; [self weaponName]
  10006f4cc  mov     x29, x29
  10006f4d0  bl      _objc_retainAutoreleasedReturnValue
  10006f4d4  mov     x25, x0
  10006f4d8  ldr     x28, [x27, #0xf78]                       ; class NSString
  10006f4dc  cbz     w21, loc_10006f68c                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] == 0)
  10006f4e0  mov     x0, x19
  10006f4e4  mov     x1, x24
  10006f4e8  bl      _objc_msgSend                            ; [self weaponName]
  10006f4ec  mov     x29, x29
  10006f4f0  bl      _objc_retainAutoreleasedReturnValue
  10006f4f4  mov     x27, x0
  10006f4f8  adrp    x8, #0x100418000
  10006f4fc  nop
  10006f500  ldr     x21, [x8, #0x290]
  10006f504  mov     x1, x21
  10006f508  bl      _objc_msgSend                            ; [[self weaponName] text]
  10006f50c  mov     x29, x29
  10006f510  bl      _objc_retainAutoreleasedReturnValue
  10006f514  mov     x26, x0
  10006f518  ldr     w8, [x19, x23]                           ; w8 = self->current_level
  10006f51c  stp     x26, x8, [sp]
  10006f520  adrp    x2, #0x1003be000
  10006f524  add     x2, x2, #0xe30                           ; @"%@ : level %i"
  10006f528  mov     x0, x28
  10006f52c  ldr     x1, [sp, #0x40]
  10006f530  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ : level %i", [[self weaponName] text], self->current_level]
  10006f534  str     x21, [sp, #0x18]
  10006f538  mov     x29, x29
  10006f53c  bl      _objc_retainAutoreleasedReturnValue
  10006f540  mov     x21, x0
  10006f544  mov     x0, x25
  10006f548  ldr     x1, [sp, #0x48]
  10006f54c  mov     x2, x21
  10006f550  bl      _objc_msgSend                            ; [[self weaponName] setText:[NSString stringWithFormat:@"%@ : level %i", [[self weaponName] text], self->current_level]]
  10006f554  ldr     x28, [sp, #0x28]
  10006f558  mov     x0, x21
  10006f55c  bl      _objc_release
  10006f560  mov     x0, x26
  10006f564  bl      _objc_release
  10006f568  mov     x0, x27
  10006f56c  bl      _objc_release
  10006f570  mov     x0, x25
  10006f574  bl      _objc_release
  10006f578  adrp    x8, #0x10041d000
  10006f57c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10006f580  ldr     x1, [sp, #0x38]
  10006f584  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006f588  mov     x29, x29
  10006f58c  bl      _objc_retainAutoreleasedReturnValue
  10006f590  mov     x23, x0
  10006f594  ldr     x0, [x19, x20]                           ; x0 = self->weaponInventoryDict
  10006f598  adrp    x2, #0x1003b9000
  10006f59c  add     x2, x2, #0xdb0                           ; @"name"
  10006f5a0  mov     x1, x28
  10006f5a4  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10006f5a8  ldr     x22, [sp, #0x30]
  10006f5ac  mov     x29, x29
  10006f5b0  bl      _objc_retainAutoreleasedReturnValue
  10006f5b4  mov     x21, x0
  10006f5b8  adrp    x8, #0x100418000
  10006f5bc  nop
  10006f5c0  ldr     x1, [x8, #0xad8]
  10006f5c4  mov     x0, x23
  10006f5c8  mov     x2, x21
  10006f5cc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] isWeaponEquipped:[self->weaponInventoryDict objectForKey:@"name"]]
  10006f5d0  mov     x25, x0
  10006f5d4  adrp    x27, #0x10041d000
  10006f5d8  mov     x0, x21
  10006f5dc  bl      _objc_release
  10006f5e0  mov     x0, x23
  10006f5e4  bl      _objc_release
  10006f5e8  cbz     w25, loc_10006f71c                       ; if ([[ADInventory sharedInventory] isWeaponEquipped:[self->weaponInventoryDict objectForKey:@"name"]] == 0)
  10006f5ec  mov     x0, x19
  10006f5f0  mov     x1, x24
  10006f5f4  bl      _objc_msgSend                            ; [self weaponName]
  10006f5f8  mov     x29, x29
  10006f5fc  bl      _objc_retainAutoreleasedReturnValue
  10006f600  mov     x23, x0
  10006f604  ldr     x26, [x27, #0xf78]                       ; class NSString
  10006f608  mov     x0, x19
  10006f60c  mov     x1, x24
  10006f610  bl      _objc_msgSend                            ; [self weaponName]
  10006f614  mov     x29, x29
  10006f618  bl      _objc_retainAutoreleasedReturnValue
  10006f61c  mov     x24, x0
  10006f620  ldr     x1, [sp, #0x18]
  10006f624  bl      _objc_msgSend                            ; [[self weaponName] text]
  10006f628  mov     x29, x29
  10006f62c  bl      _objc_retainAutoreleasedReturnValue
  10006f630  mov     x25, x0
  10006f634  str     x25, [sp]
  10006f638  adrp    x2, #0x1003be000
  10006f63c  add     x2, x2, #0xe50                           ; @"%@ : equipped"
  10006f640  mov     x0, x26
  10006f644  ldr     x1, [sp, #0x40]
  10006f648  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ : equipped", [[self weaponName] text]]
  10006f64c  mov     x29, x29
  10006f650  bl      _objc_retainAutoreleasedReturnValue
  10006f654  mov     x21, x0
  10006f658  mov     x0, x23
  10006f65c  ldr     x1, [sp, #0x48]
  10006f660  mov     x2, x21
  10006f664  bl      _objc_msgSend                            ; [[self weaponName] setText:[NSString stringWithFormat:@"%@ : equipped", [[self weaponName] text]]]
  10006f668  mov     x0, x21
  10006f66c  bl      _objc_release
  10006f670  mov     x0, x25
  10006f674  bl      _objc_release
  10006f678  mov     x0, x24
  10006f67c  bl      _objc_release
  10006f680  mov     x0, x23
  10006f684  bl      _objc_release
  10006f688  b       loc_10006f71c
loc_10006f68c:
  10006f68c  mov     x0, x19
  10006f690  mov     x1, x24
  10006f694  bl      _objc_msgSend                            ; [self weaponName]
  10006f698  mov     x29, x29
  10006f69c  bl      _objc_retainAutoreleasedReturnValue
  10006f6a0  mov     x23, x0
  10006f6a4  adrp    x8, #0x100418000
  10006f6a8  nop
  10006f6ac  ldr     x1, [x8, #0x290]
  10006f6b0  bl      _objc_msgSend                            ; [[self weaponName] text]
  10006f6b4  mov     x29, x29
  10006f6b8  bl      _objc_retainAutoreleasedReturnValue
  10006f6bc  mov     x24, x0
  10006f6c0  str     x24, [sp]
  10006f6c4  adrp    x2, #0x1003be000
  10006f6c8  add     x2, x2, #0xe70                           ; @"%@ : locked"
  10006f6cc  mov     x0, x28
  10006f6d0  ldr     x1, [sp, #0x40]
  10006f6d4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ : locked", [[self weaponName] text]]
  10006f6d8  mov     x29, x29
  10006f6dc  bl      _objc_retainAutoreleasedReturnValue
  10006f6e0  mov     x21, x0
  10006f6e4  mov     x0, x25
  10006f6e8  ldr     x1, [sp, #0x48]
  10006f6ec  mov     x2, x21
  10006f6f0  bl      _objc_msgSend                            ; [[self weaponName] setText:[NSString stringWithFormat:@"%@ : locked", [[self weaponName] text]]]
  10006f6f4  ldr     x28, [sp, #0x28]
  10006f6f8  mov     x0, x21
  10006f6fc  bl      _objc_release
  10006f700  mov     x0, x24
  10006f704  bl      _objc_release
  10006f708  mov     x0, x23
  10006f70c  bl      _objc_release
  10006f710  mov     x0, x25
  10006f714  bl      _objc_release
  10006f718  ldr     x22, [sp, #0x30]
loc_10006f71c:
  10006f71c  adrp    x8, #0x100419000
  10006f720  nop
  10006f724  ldr     x1, [x8, #0x710]
  10006f728  mov     x0, x19
  10006f72c  bl      _objc_msgSend                            ; [self weaponStats]
  10006f730  mov     x29, x29
  10006f734  bl      _objc_retainAutoreleasedReturnValue
  10006f738  mov     x23, x0
  10006f73c  ldr     x26, [x27, #0xf78]                       ; class NSString
  10006f740  ldr     x0, [x19, x22]                           ; x0 = self->currentLevelDict
  10006f744  adrp    x8, #0x100416000
  10006f748  nop
  10006f74c  ldr     x27, [x8, #0xda0]
  10006f750  adrp    x2, #0x1003ba000
  10006f754  add     x2, x2, #0x490                           ; @"damages"
  10006f758  mov     x1, x27
  10006f75c  bl      _objc_msgSend                            ; [self->currentLevelDict valueForKey:@"damages"]
  10006f760  mov     x20, x28
  10006f764  mov     x29, x29
  10006f768  bl      _objc_retainAutoreleasedReturnValue
  10006f76c  mov     x24, x0
  10006f770  adrp    x8, #0x100417000
  10006f774  nop
  10006f778  ldr     x1, [x8, #0x48]
  10006f77c  bl      _objc_msgSend                            ; [[self->currentLevelDict valueForKey:@"damages"] floatValue]
  10006f780  mov     v8.16b, v0.16b
  10006f784  ldr     x0, [x19, x22]                           ; x0 = self->currentLevelDict
  10006f788  adrp    x2, #0x1003ba000
  10006f78c  add     x2, x2, #0x5f0                           ; @"capacity"
  10006f790  mov     x1, x27
  10006f794  bl      _objc_msgSend                            ; [self->currentLevelDict valueForKey:@"capacity"]
  10006f798  mov     x29, x29
  10006f79c  bl      _objc_retainAutoreleasedReturnValue
  10006f7a0  mov     x25, x0
  10006f7a4  adrp    x8, #0x100417000
  10006f7a8  nop
  10006f7ac  ldr     x21, [x8, #0x110]
  10006f7b0  mov     x1, x21
  10006f7b4  bl      _objc_msgSend                            ; [[self->currentLevelDict valueForKey:@"capacity"] intValue]
  10006f7b8  mov     x28, x0
  10006f7bc  ldr     x0, [x19, x22]                           ; x0 = self->currentLevelDict
  10006f7c0  adrp    x2, #0x1003ba000
  10006f7c4  add     x2, x2, #0x4b0                           ; @"spread"
  10006f7c8  mov     x1, x27
  10006f7cc  bl      _objc_msgSend                            ; [self->currentLevelDict valueForKey:@"spread"]
  10006f7d0  mov     x29, x29
  10006f7d4  bl      _objc_retainAutoreleasedReturnValue
  10006f7d8  mov     x27, x0
  10006f7dc  mov     x1, x21
  10006f7e0  bl      _objc_msgSend                            ; [[self->currentLevelDict valueForKey:@"spread"] intValue]
  10006f7e4  fcvt    d0, s8
  10006f7e8  stp     x28, x0, [sp, #8]
  10006f7ec  str     d0, [sp]
  10006f7f0  adrp    x2, #0x1003be000
  10006f7f4  add     x2, x2, #0xe90                           ; @"Damages : %.1f, Capacity : %i, Spread : %i"
  10006f7f8  mov     x0, x26
  10006f7fc  ldr     x1, [sp, #0x40]
  10006f800  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Damages : %.1f, Capacity : %i, Spread : %i", [[self->currentLevelDict valueForKey:@"damages"] floatValue], [[self->currentLevelDict valueForKey:@"capacity"] intValue], [[self->currentLevelDict valueForKey:@"spread"] intValue]]
  10006f804  mov     x29, x29
  10006f808  bl      _objc_retainAutoreleasedReturnValue
  10006f80c  mov     x21, x0
  10006f810  mov     x0, x23
  10006f814  ldr     x1, [sp, #0x48]
  10006f818  mov     x2, x21
  10006f81c  bl      _objc_msgSend                            ; [[self weaponStats] setText:[NSString stringWithFormat:@"Damages : %.1f, Capacity : %i, Spread : %i", [[self->currentLevelDict valueForKey:@"damages"] floatValue], [[self->currentLevelDict valueForKey:@"capacity"] intValue], [[self->currentLevelDict valueForKey:@"spread"] intValue]]]
  10006f820  mov     x0, x21
  10006f824  bl      _objc_release
  10006f828  mov     x0, x27
  10006f82c  bl      _objc_release
  10006f830  mov     x0, x25
  10006f834  bl      _objc_release
  10006f838  mov     x0, x24
  10006f83c  bl      _objc_release
  10006f840  mov     x0, x23
  10006f844  bl      _objc_release
  10006f848  adrp    x8, #0x100419000
  10006f84c  nop
  10006f850  ldr     x1, [x8, #0x718]
  10006f854  mov     x0, x19
  10006f858  bl      _objc_msgSend                            ; [self weaponDescription]
  10006f85c  mov     x29, x29
  10006f860  bl      _objc_retainAutoreleasedReturnValue
  10006f864  mov     x21, x0
  10006f868  ldr     x8, [sp, #0x20]
  10006f86c  ldr     x0, [x19, x8]                            ; x0 = self->weaponStatsDict
  10006f870  adrp    x2, #0x1003bc000
  10006f874  add     x2, x2, #0xdf0                           ; @"description"
  10006f878  mov     x1, x20
  10006f87c  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"description"]
  10006f880  mov     x29, x29
  10006f884  bl      _objc_retainAutoreleasedReturnValue
  10006f888  mov     x20, x0
  10006f88c  mov     x0, x21
  10006f890  ldr     x1, [sp, #0x48]
  10006f894  mov     x2, x20
  10006f898  bl      _objc_msgSend                            ; [[self weaponDescription] setText:[self->weaponStatsDict objectForKey:@"description"]]
  10006f89c  mov     x0, x20
  10006f8a0  bl      _objc_release
  10006f8a4  mov     x0, x21
  10006f8a8  bl      _objc_release
  10006f8ac  adrp    x8, #0x100419000
  10006f8b0  nop
  10006f8b4  ldr     x1, [x8, #0x720]
  10006f8b8  mov     x0, x19
  10006f8bc  bl      _objc_msgSend                            ; [self checkBuyOrUpgradeButton]
  10006f8c0  adrp    x8, #0x100418000
  10006f8c4  nop
  10006f8c8  ldr     x1, [x8, #0x528]
  10006f8cc  mov     x0, x19
  10006f8d0  sub     sp, x29, #0x60
  10006f8d4  ldp     x29, x30, [sp, #0x60]
  10006f8d8  ldp     x20, x19, [sp, #0x50]
  10006f8dc  ldp     x22, x21, [sp, #0x40]
  10006f8e0  ldp     x24, x23, [sp, #0x30]
  10006f8e4  ldp     x26, x25, [sp, #0x20]
  10006f8e8  ldp     x28, x27, [sp, #0x10]
  10006f8ec  ldp     d9, d8, [sp], #0x70
  10006f8f0  b       _objc_msgSend                            ; [self checkEquipButtons]
  10006f8f4  mov     x19, x0
  10006f8f8  b       loc_10006f98c
  10006f8fc  mov     x19, x0
  10006f900  b       loc_10006f984
  10006f904  mov     x19, x0
  10006f908  b       loc_10006f97c
  10006f90c  b       loc_10006f99c
  10006f910  mov     x19, x0
  10006f914  mov     x0, x22
  10006f918  b       loc_10006f9ac
  10006f91c  b       loc_10006f99c
  10006f920  b       loc_10006f99c
  10006f924  mov     x19, x0
  10006f928  b       loc_10006fa34
  10006f92c  mov     x19, x0
  10006f930  b       loc_10006f960
  10006f934  mov     x19, x0
  10006f938  b       loc_10006f948
  10006f93c  mov     x19, x0
  10006f940  mov     x0, x21
  10006f944  bl      _objc_release
loc_10006f948:
  10006f948  mov     x0, x27
  10006f94c  bl      _objc_release
  10006f950  b       loc_10006f960
  10006f954  mov     x19, x0
  10006f958  b       loc_10006fa34
  10006f95c  mov     x19, x0
loc_10006f960:
  10006f960  mov     x0, x26
  10006f964  b       loc_10006fa30
  10006f968  mov     x19, x0
  10006f96c  b       loc_10006f994
  10006f970  mov     x19, x0
  10006f974  mov     x0, x21
  10006f978  bl      _objc_release
loc_10006f97c:
  10006f97c  mov     x0, x27
loc_10006f980:
  10006f980  bl      _objc_release
loc_10006f984:
  10006f984  mov     x0, x25
  10006f988  bl      _objc_release
loc_10006f98c:
  10006f98c  mov     x0, x24
loc_10006f990:
  10006f990  bl      _objc_release
loc_10006f994:
  10006f994  mov     x0, x23
  10006f998  b       loc_10006fa38
loc_10006f99c:
  10006f99c  mov     x19, x0
  10006f9a0  b       loc_10006f9b0
  10006f9a4  mov     x19, x0
  10006f9a8  mov     x0, x20
loc_10006f9ac:
  10006f9ac  bl      _objc_release
loc_10006f9b0:
  10006f9b0  mov     x0, x21
  10006f9b4  b       loc_10006fa38
  10006f9b8  mov     x19, x0
  10006f9bc  b       loc_10006fa34
  10006f9c0  mov     x19, x0
  10006f9c4  b       loc_10006f9e4
  10006f9c8  mov     x19, x0
  10006f9cc  b       loc_10006f9dc
  10006f9d0  mov     x19, x0
  10006f9d4  mov     x0, x21
  10006f9d8  bl      _objc_release
loc_10006f9dc:
  10006f9dc  mov     x0, x26
  10006f9e0  bl      _objc_release
loc_10006f9e4:
  10006f9e4  mov     x0, x27
  10006f9e8  b       loc_10006fa30
  10006f9ec  mov     x19, x0
  10006f9f0  b       loc_10006f994
  10006f9f4  mov     x19, x0
  10006f9f8  mov     x0, x21
  10006f9fc  b       loc_10006f990
  10006fa00  mov     x19, x0
  10006fa04  b       loc_10006fa34
  10006fa08  mov     x19, x0
  10006fa0c  b       loc_10006fa2c
  10006fa10  mov     x19, x0
  10006fa14  b       loc_10006fa24
  10006fa18  mov     x19, x0
  10006fa1c  mov     x0, x21
  10006fa20  bl      _objc_release
loc_10006fa24:
  10006fa24  mov     x0, x24
  10006fa28  bl      _objc_release
loc_10006fa2c:
  10006fa2c  mov     x0, x23
loc_10006fa30:
  10006fa30  bl      _objc_release
loc_10006fa34:
  10006fa34  mov     x0, x25
loc_10006fa38:
  10006fa38  bl      _objc_release
  10006fa3c  mov     x0, x19
  10006fa40  bl      __Unwind_Resume                          ; Unwind_Resume()
  10006fa44  mov     x19, x0
  10006fa48  b       loc_10006f994
  10006fa4c  mov     x19, x0
  10006fa50  b       loc_10006f98c
  10006fa54  mov     x19, x0
  10006fa58  b       loc_10006f984
  10006fa5c  mov     x19, x0
  10006fa60  mov     x0, x21
  10006fa64  b       loc_10006f980

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController checkBuyOrUpgradeButton]
; address 0x10006fa68  size 1316  kind objc
; ======================================================================
  10006fa68  stp     x26, x25, [sp, #-0x50]!
  10006fa6c  stp     x24, x23, [sp, #0x10]
  10006fa70  stp     x22, x21, [sp, #0x20]
  10006fa74  stp     x20, x19, [sp, #0x30]
  10006fa78  stp     x29, x30, [sp, #0x40]
  10006fa7c  add     x29, sp, #0x40
  10006fa80  sub     sp, sp, #0x10
  10006fa84  mov     x19, x0
  10006fa88  adrp    x8, #0x10041d000
  10006fa8c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10006fa90  adrp    x8, #0x100416000
  10006fa94  nop
  10006fa98  ldr     x1, [x8, #0xec8]
  10006fa9c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006faa0  mov     x29, x29
  10006faa4  bl      _objc_retainAutoreleasedReturnValue
  10006faa8  mov     x20, x0
  10006faac  adrp    x8, #0x10041f000
  10006fab0  ldrsw   x8, [x8, #0xcd8]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  10006fab4  ldr     x0, [x19, x8]                            ; x0 = self->weaponInventoryDict
  10006fab8  adrp    x8, #0x100417000
  10006fabc  nop
  10006fac0  ldr     x21, [x8, #0x40]
  10006fac4  adrp    x2, #0x1003b9000
  10006fac8  add     x2, x2, #0xdb0                           ; @"name"
  10006facc  mov     x1, x21
  10006fad0  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10006fad4  mov     x29, x29
  10006fad8  bl      _objc_retainAutoreleasedReturnValue
  10006fadc  mov     x22, x0
  10006fae0  adrp    x8, #0x100417000
  10006fae4  nop
  10006fae8  ldr     x1, [x8, #0x1d8]
  10006faec  mov     x0, x20
  10006faf0  mov     x2, x22
  10006faf4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  10006faf8  mov     x23, x0
  10006fafc  mov     x0, x22
  10006fb00  bl      _objc_release
  10006fb04  mov     x0, x20
  10006fb08  bl      _objc_release
  10006fb0c  cbz     w23, loc_10006fc1c                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] == 0)
  10006fb10  adrp    x8, #0x10041f000
  10006fb14  ldrsw   x24, [x8, #0xce8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.nextLevelDict (+0x158)
  10006fb18  ldr     x0, [x19, x24]                           ; x0 = self->nextLevelDict
  10006fb1c  cbz     x0, loc_10006fd0c                        ; if (self->nextLevelDict == 0)
  10006fb20  adrp    x8, #0x100416000
  10006fb24  nop
  10006fb28  ldr     x21, [x8, #0xda0]
  10006fb2c  adrp    x2, #0x1003bd000
  10006fb30  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  10006fb34  mov     x1, x21
  10006fb38  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  10006fb3c  mov     x29, x29
  10006fb40  bl      _objc_retainAutoreleasedReturnValue
  10006fb44  mov     x22, x0
  10006fb48  adrp    x8, #0x100417000
  10006fb4c  nop
  10006fb50  ldr     x20, [x8, #0x110]
  10006fb54  mov     x1, x20
  10006fb58  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]
  10006fb5c  mov     x23, x0
  10006fb60  mov     x0, x22
  10006fb64  bl      _objc_release
  10006fb68  cbz     w23, loc_10006fdcc                       ; if ([[self->nextLevelDict valueForKey:@"upgradeCost"] intValue] == 0)
  10006fb6c  adrp    x8, #0x100419000
  10006fb70  nop
  10006fb74  ldr     x1, [x8, #0x728]
  10006fb78  mov     x0, x19
  10006fb7c  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  10006fb80  mov     x29, x29
  10006fb84  bl      _objc_retainAutoreleasedReturnValue
  10006fb88  mov     x22, x0
  10006fb8c  adrp    x8, #0x10041d000
  10006fb90  ldr     x23, [x8, #0xf78]                        ; class NSString
  10006fb94  adrp    x8, #0x10041f000
  10006fb98  ldrsw   x8, [x8, #0xce0]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.current_level (+0x160)
  10006fb9c  ldr     w25, [x19, x8]                           ; w25 = self->current_level
  10006fba0  ldr     x0, [x19, x24]                           ; x0 = self->nextLevelDict
  10006fba4  adrp    x2, #0x1003bd000
  10006fba8  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  10006fbac  mov     x1, x21
  10006fbb0  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  10006fbb4  mov     x29, x29
  10006fbb8  bl      _objc_retainAutoreleasedReturnValue
  10006fbbc  mov     x21, x0
  10006fbc0  mov     x1, x20
  10006fbc4  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]
  10006fbc8  add     w8, w25, #1
  10006fbcc  adrp    x9, #0x100416000
  10006fbd0  nop
  10006fbd4  ldr     x1, [x9, #0xee8]
  10006fbd8  stp     x8, x0, [sp]
  10006fbdc  adrp    x2, #0x1003be000
  10006fbe0  add     x2, x2, #0xeb0                           ; @"Upgrade to level %i for %i coins"
  10006fbe4  mov     x0, x23
  10006fbe8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Upgrade to level %i for %i coins", (self->current_level + 1), [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]]
  10006fbec  mov     x29, x29
  10006fbf0  bl      _objc_retainAutoreleasedReturnValue
  10006fbf4  mov     x20, x0
  10006fbf8  adrp    x8, #0x100417000
  10006fbfc  nop
  10006fc00  ldr     x1, [x8, #0x920]
  10006fc04  mov     x3, #0
  10006fc08  mov     x0, x22
  10006fc0c  mov     x2, x20
  10006fc10  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"Upgrade to level %i for %i coins", (self->current_level + 1), [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]] forState:0]
  10006fc14  b       loc_10006feac
  10006fc18  b       loc_10006ff68
loc_10006fc1c:
  10006fc1c  adrp    x8, #0x10041f000
  10006fc20  ldrsw   x25, [x8, #0xcdc]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponStatsDict (+0x148)
  10006fc24  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  10006fc28  adrp    x2, #0x1003b9000
  10006fc2c  add     x2, x2, #0xd70                           ; @"price"
  10006fc30  mov     x1, x21
  10006fc34  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"price"]
  10006fc38  mov     x29, x29
  10006fc3c  bl      _objc_retainAutoreleasedReturnValue
  10006fc40  mov     x20, x0
  10006fc44  adrp    x8, #0x100417000
  10006fc48  nop
  10006fc4c  ldr     x22, [x8, #0x110]
  10006fc50  mov     x1, x22
  10006fc54  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"price"] intValue]
  10006fc58  mov     x24, x0
  10006fc5c  mov     x0, x20
  10006fc60  bl      _objc_release
  10006fc64  adrp    x8, #0x100419000
  10006fc68  nop
  10006fc6c  ldr     x1, [x8, #0x728]
  10006fc70  mov     x0, x19
  10006fc74  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  10006fc78  mov     x29, x29
  10006fc7c  bl      _objc_retainAutoreleasedReturnValue
  10006fc80  mov     x20, x0
  10006fc84  adrp    x8, #0x10041d000
  10006fc88  ldr     x23, [x8, #0xf78]                        ; class NSString
  10006fc8c  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  10006fc90  cmp     w24, #1
  10006fc94  b.lt    loc_10006fd48                            ; if ([[self->weaponStatsDict objectForKey:@"price"] intValue] < 1)
  10006fc98  adrp    x2, #0x1003b9000
  10006fc9c  add     x2, x2, #0xd70                           ; @"price"
  10006fca0  mov     x1, x21
  10006fca4  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"price"]
  10006fca8  mov     x29, x29
  10006fcac  bl      _objc_retainAutoreleasedReturnValue
  10006fcb0  mov     x21, x0
  10006fcb4  mov     x1, x22
  10006fcb8  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"price"] intValue]
  10006fcbc  adrp    x8, #0x100416000
  10006fcc0  nop
  10006fcc4  ldr     x1, [x8, #0xee8]
  10006fcc8  str     x0, [sp]
  10006fccc  adrp    x2, #0x1003be000
  10006fcd0  add     x2, x2, #0xf10                           ; @"Buy for %i coins"
  10006fcd4  mov     x0, x23
  10006fcd8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Buy for %i coins", [[self->weaponStatsDict objectForKey:@"price"] intValue]]
  10006fcdc  mov     x29, x29
  10006fce0  bl      _objc_retainAutoreleasedReturnValue
  10006fce4  mov     x22, x0
  10006fce8  adrp    x8, #0x100417000
  10006fcec  nop
  10006fcf0  ldr     x1, [x8, #0x920]
  10006fcf4  mov     x3, #0
  10006fcf8  mov     x0, x20
  10006fcfc  mov     x2, x22
  10006fd00  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"Buy for %i coins", [[self->weaponStatsDict objectForKey:@"price"] intValue]] forState:0]
  10006fd04  b       loc_10006fdb4
  10006fd08  b       loc_10006ff38
loc_10006fd0c:
  10006fd0c  adrp    x8, #0x100419000
  10006fd10  nop
  10006fd14  ldr     x1, [x8, #0x728]
  10006fd18  mov     x0, x19
  10006fd1c  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  10006fd20  mov     x29, x29
  10006fd24  bl      _objc_retainAutoreleasedReturnValue
  10006fd28  mov     x20, x0
  10006fd2c  adrp    x8, #0x100416000
  10006fd30  nop
  10006fd34  ldr     x1, [x8, #0xba8]
  10006fd38  mov     w2, #1
  10006fd3c  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setHidden:1]
  10006fd40  b       loc_10006fdc4
  10006fd44  b       loc_10006ff30
loc_10006fd48:
  10006fd48  adrp    x2, #0x1003b9000
  10006fd4c  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  10006fd50  mov     x1, x21
  10006fd54  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"priceInDiamonds"]
  10006fd58  mov     x29, x29
  10006fd5c  bl      _objc_retainAutoreleasedReturnValue
  10006fd60  mov     x21, x0
  10006fd64  mov     x1, x22
  10006fd68  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]
  10006fd6c  adrp    x8, #0x100416000
  10006fd70  nop
  10006fd74  ldr     x1, [x8, #0xee8]
  10006fd78  str     x0, [sp]
  10006fd7c  adrp    x2, #0x1003be000
  10006fd80  add     x2, x2, #0xf30                           ; @"Buy for %i diamonds"
  10006fd84  mov     x0, x23
  10006fd88  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Buy for %i diamonds", [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]]
  10006fd8c  mov     x29, x29
  10006fd90  bl      _objc_retainAutoreleasedReturnValue
  10006fd94  mov     x22, x0
  10006fd98  adrp    x8, #0x100417000
  10006fd9c  nop
  10006fda0  ldr     x1, [x8, #0x920]
  10006fda4  mov     x3, #0
  10006fda8  mov     x0, x20
  10006fdac  mov     x2, x22
  10006fdb0  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"Buy for %i diamonds", [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]] forState:0]
loc_10006fdb4:
  10006fdb4  mov     x0, x22
  10006fdb8  bl      _objc_release
  10006fdbc  mov     x0, x21
  10006fdc0  bl      _objc_release
loc_10006fdc4:
  10006fdc4  mov     x0, x20
  10006fdc8  b       loc_10006fec0
loc_10006fdcc:
  10006fdcc  ldr     x0, [x19, x24]                           ; x0 = self->nextLevelDict
  10006fdd0  adrp    x2, #0x1003be000
  10006fdd4  add     x2, x2, #0xed0                           ; @"upgradeCostInDiamonds"
  10006fdd8  mov     x1, x21
  10006fddc  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"]
  10006fde0  mov     x29, x29
  10006fde4  bl      _objc_retainAutoreleasedReturnValue
  10006fde8  mov     x22, x0
  10006fdec  mov     x1, x20
  10006fdf0  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]
  10006fdf4  mov     x23, x0
  10006fdf8  mov     x0, x22
  10006fdfc  bl      _objc_release
  10006fe00  cbz     w23, loc_10006fedc                       ; if ([[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue] == 0)
  10006fe04  adrp    x8, #0x100419000
  10006fe08  nop
  10006fe0c  ldr     x1, [x8, #0x728]
  10006fe10  mov     x0, x19
  10006fe14  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  10006fe18  mov     x29, x29
  10006fe1c  bl      _objc_retainAutoreleasedReturnValue
  10006fe20  mov     x22, x0
  10006fe24  adrp    x8, #0x10041d000
  10006fe28  ldr     x23, [x8, #0xf78]                        ; class NSString
  10006fe2c  adrp    x8, #0x10041f000
  10006fe30  ldrsw   x8, [x8, #0xce0]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.current_level (+0x160)
  10006fe34  ldr     w25, [x19, x8]                           ; w25 = self->current_level
  10006fe38  ldr     x0, [x19, x24]                           ; x0 = self->nextLevelDict
  10006fe3c  adrp    x2, #0x1003be000
  10006fe40  add     x2, x2, #0xed0                           ; @"upgradeCostInDiamonds"
  10006fe44  mov     x1, x21
  10006fe48  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"]
  10006fe4c  mov     x29, x29
  10006fe50  bl      _objc_retainAutoreleasedReturnValue
  10006fe54  mov     x21, x0
  10006fe58  mov     x1, x20
  10006fe5c  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]
  10006fe60  add     w8, w25, #1
  10006fe64  adrp    x9, #0x100416000
  10006fe68  nop
  10006fe6c  ldr     x1, [x9, #0xee8]
  10006fe70  stp     x8, x0, [sp]
  10006fe74  adrp    x2, #0x1003be000
  10006fe78  add     x2, x2, #0xef0                           ; @"Upgrade to level %i for %i diamonds"
  10006fe7c  mov     x0, x23
  10006fe80  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Upgrade to level %i for %i diamonds", (self->current_level + 1), [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]]
  10006fe84  mov     x29, x29
  10006fe88  bl      _objc_retainAutoreleasedReturnValue
  10006fe8c  mov     x20, x0
  10006fe90  adrp    x8, #0x100417000
  10006fe94  nop
  10006fe98  ldr     x1, [x8, #0x920]
  10006fe9c  mov     x3, #0
  10006fea0  mov     x0, x22
  10006fea4  mov     x2, x20
  10006fea8  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] setTitle:[NSString stringWithFormat:@"Upgrade to level %i for %i diamonds", (self->current_level + 1), [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]] forState:0]
loc_10006feac:
  10006feac  mov     x0, x20
  10006feb0  bl      _objc_release
  10006feb4  mov     x0, x21
  10006feb8  bl      _objc_release
  10006febc  mov     x0, x22
loc_10006fec0:
  10006fec0  sub     sp, x29, #0x40
  10006fec4  ldp     x29, x30, [sp, #0x40]
  10006fec8  ldp     x20, x19, [sp, #0x30]
  10006fecc  ldp     x22, x21, [sp, #0x20]
  10006fed0  ldp     x24, x23, [sp, #0x10]
  10006fed4  ldp     x26, x25, [sp], #0x50
  10006fed8  b       _objc_release
loc_10006fedc:
  10006fedc  sub     sp, x29, #0x40
  10006fee0  ldp     x29, x30, [sp, #0x40]
  10006fee4  ldp     x20, x19, [sp, #0x30]
  10006fee8  ldp     x22, x21, [sp, #0x20]
  10006feec  ldp     x24, x23, [sp, #0x10]
  10006fef0  ldp     x26, x25, [sp], #0x50
  10006fef4  ret
  10006fef8  b       loc_10006ff30
  10006fefc  mov     x19, x0
  10006ff00  mov     x0, x22
  10006ff04  b       loc_10006ff48
  10006ff08  mov     x19, x0
  10006ff0c  b       loc_10006ff44
  10006ff10  b       loc_10006ff30
  10006ff14  mov     x19, x0
  10006ff18  b       loc_10006ff74
  10006ff1c  mov     x19, x0
  10006ff20  b       loc_10006ff44
  10006ff24  b       loc_10006ff60
  10006ff28  b       loc_10006ff30
  10006ff2c  b       loc_10006ff60
loc_10006ff30:
  10006ff30  mov     x19, x0
  10006ff34  b       loc_10006ff4c
loc_10006ff38:
  10006ff38  mov     x19, x0
  10006ff3c  mov     x0, x22
  10006ff40  bl      _objc_release
loc_10006ff44:
  10006ff44  mov     x0, x21
loc_10006ff48:
  10006ff48  bl      _objc_release
loc_10006ff4c:
  10006ff4c  mov     x0, x20
  10006ff50  b       loc_10006ff80
  10006ff54  mov     x19, x0
  10006ff58  b       loc_10006ff74
  10006ff5c  b       loc_10006ff60
loc_10006ff60:
  10006ff60  mov     x19, x0
  10006ff64  b       loc_10006ff7c
loc_10006ff68:
  10006ff68  mov     x19, x0
  10006ff6c  mov     x0, x20
  10006ff70  bl      _objc_release
loc_10006ff74:
  10006ff74  mov     x0, x21
  10006ff78  bl      _objc_release
loc_10006ff7c:
  10006ff7c  mov     x0, x22
loc_10006ff80:
  10006ff80  bl      _objc_release
  10006ff84  mov     x0, x19
  10006ff88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController checkEquipButtons]
; address 0x10006ff8c  size 2088  kind objc
; ======================================================================
  10006ff8c  stp     x28, x27, [sp, #-0x60]!
  10006ff90  stp     x26, x25, [sp, #0x10]
  10006ff94  stp     x24, x23, [sp, #0x20]
  10006ff98  stp     x22, x21, [sp, #0x30]
  10006ff9c  stp     x20, x19, [sp, #0x40]
  10006ffa0  stp     x29, x30, [sp, #0x50]
  10006ffa4  add     x29, sp, #0x50
  10006ffa8  sub     sp, sp, #0x30
  10006ffac  mov     x19, x0
  10006ffb0  adrp    x8, #0x100419000
  10006ffb4  nop
  10006ffb8  ldr     x1, [x8, #0x730]
  10006ffbc  bl      _objc_msgSend                            ; [self hideButtons]
  10006ffc0  tbnz    w0, #0, loc_1000702cc                    ; if (([self hideButtons] & 1))
  10006ffc4  adrp    x27, #0x10041d000
  10006ffc8  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  10006ffcc  adrp    x8, #0x100416000
  10006ffd0  nop
  10006ffd4  ldr     x21, [x8, #0xec8]
  10006ffd8  mov     x1, x21
  10006ffdc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10006ffe0  mov     x29, x29
  10006ffe4  bl      _objc_retainAutoreleasedReturnValue
  10006ffe8  mov     x20, x0
  10006ffec  adrp    x8, #0x10041f000
  10006fff0  ldrsw   x28, [x8, #0xcd8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  10006fff4  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  10006fff8  adrp    x8, #0x100417000
  10006fffc  nop
  100070000  ldr     x22, [x8, #0x40]
  100070004  adrp    x2, #0x1003b9000
  100070008  add     x2, x2, #0xdb0                           ; @"name"
  10007000c  mov     x1, x22
  100070010  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100070014  mov     x29, x29
  100070018  bl      _objc_retainAutoreleasedReturnValue
  10007001c  mov     x23, x0
  100070020  adrp    x8, #0x100418000
  100070024  nop
  100070028  ldr     x1, [x8, #0xad8]
  10007002c  mov     x0, x20
  100070030  mov     x2, x23
  100070034  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] isWeaponEquipped:[self->weaponInventoryDict objectForKey:@"name"]]
  100070038  tbz     w0, #0, loc_100070050                    ; if (!([[ADInventory sharedInventory] isWeaponEquipped:[self->weaponInventoryDict objectForKey:@"name"]] & 1))
  10007003c  mov     x0, x23
  100070040  bl      _objc_release
  100070044  mov     x0, x20
  100070048  bl      _objc_release
  10007004c  b       loc_1000702cc
loc_100070050:
  100070050  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  100070054  mov     x1, x21
  100070058  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10007005c  mov     x29, x29
  100070060  bl      _objc_retainAutoreleasedReturnValue
  100070064  mov     x24, x0
  100070068  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  10007006c  adrp    x2, #0x1003b9000
  100070070  add     x2, x2, #0xdb0                           ; @"name"
  100070074  mov     x1, x22
  100070078  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  10007007c  mov     x29, x29
  100070080  bl      _objc_retainAutoreleasedReturnValue
  100070084  mov     x25, x0
  100070088  adrp    x8, #0x100417000
  10007008c  nop
  100070090  ldr     x1, [x8, #0x1d8]
  100070094  mov     x0, x24
  100070098  mov     x2, x25
  10007009c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000700a0  mov     x26, x0
  1000700a4  mov     x0, x25
  1000700a8  bl      _objc_release
  1000700ac  mov     x0, x24
  1000700b0  bl      _objc_release
  1000700b4  mov     x0, x23
  1000700b8  bl      _objc_release
  1000700bc  mov     x0, x20
  1000700c0  bl      _objc_release
  1000700c4  tbz     w26, #0, loc_1000702cc                   ; if (!([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] & 1))
  1000700c8  adrp    x8, #0x10041d000
  1000700cc  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000700d0  adrp    x8, #0x100417000
  1000700d4  nop
  1000700d8  ldr     x23, [x8, #0xa0]
  1000700dc  mov     x1, x23
  1000700e0  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000700e4  mov     x29, x29
  1000700e8  bl      _objc_retainAutoreleasedReturnValue
  1000700ec  mov     x20, x0
  1000700f0  ldr     x0, [x19, x28]                           ; x0 = self->weaponInventoryDict
  1000700f4  adrp    x2, #0x1003b9000
  1000700f8  add     x2, x2, #0xdb0                           ; @"name"
  1000700fc  mov     x1, x22
  100070100  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100070104  mov     x29, x29
  100070108  bl      _objc_retainAutoreleasedReturnValue
  10007010c  mov     x24, x0
  100070110  adrp    x8, #0x100418000
  100070114  nop
  100070118  ldr     x1, [x8, #0x6f8]
  10007011c  mov     x0, x20
  100070120  mov     x2, x24
  100070124  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100070128  mov     x22, x0
  10007012c  mov     x0, x24
  100070130  bl      _objc_release
  100070134  mov     x0, x20
  100070138  bl      _objc_release
  10007013c  adrp    x8, #0x100419000
  100070140  nop
  100070144  ldr     x26, [x8, #0x738]
  100070148  mov     x0, x19
  10007014c  mov     x1, x26
  100070150  bl      _objc_msgSend                            ; [self equip1Button]
  100070154  mov     x29, x29
  100070158  bl      _objc_retainAutoreleasedReturnValue
  10007015c  mov     x25, x0
  100070160  adrp    x8, #0x10041d000
  100070164  ldr     x24, [x8, #0xf78]                        ; class NSString
  100070168  nop
  10007016c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100070170  cbz     w22, loc_100070390                       ; if ([[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] == 0)
  100070174  mov     x1, x23
  100070178  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10007017c  mov     x29, x29
  100070180  bl      _objc_retainAutoreleasedReturnValue
  100070184  mov     x22, x0
  100070188  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  10007018c  mov     x1, x21
  100070190  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070194  mov     x29, x29
  100070198  bl      _objc_retainAutoreleasedReturnValue
  10007019c  mov     x21, x0
  1000701a0  adrp    x8, #0x100416000
  1000701a4  nop
  1000701a8  ldr     x1, [x8, #0xee0]
  1000701ac  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  1000701b0  mov     x29, x29
  1000701b4  bl      _objc_retainAutoreleasedReturnValue
  1000701b8  mov     x20, x0
  1000701bc  adrp    x8, #0x100417000
  1000701c0  nop
  1000701c4  ldr     x1, [x8, #0x1f0]
  1000701c8  mov     x0, x22
  1000701cc  mov     x2, x20
  1000701d0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory sharedInventory] weaponSlotMelee]]
  1000701d4  mov     x29, x29
  1000701d8  bl      _objc_retainAutoreleasedReturnValue
  1000701dc  mov     x23, x0
  1000701e0  adrp    x8, #0x100416000
  1000701e4  nop
  1000701e8  ldr     x1, [x8, #0xee8]
  1000701ec  str     x23, [sp]
  1000701f0  adrp    x2, #0x1003be000
  1000701f4  add     x2, x2, #0xf50                           ; @"equip instead of %@"
  1000701f8  mov     x0, x24
  1000701fc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"equip instead of %@", [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory …]
  100070200  mov     x29, x29
  100070204  bl      _objc_retainAutoreleasedReturnValue
  100070208  mov     x24, x0
  10007020c  adrp    x8, #0x100417000
  100070210  nop
  100070214  ldr     x1, [x8, #0x920]
  100070218  mov     x3, #0
  10007021c  mov     x0, x25
  100070220  mov     x2, x24
  100070224  bl      _objc_msgSend                            ; [[self equip1Button] setTitle:[NSString stringWithFormat:@"equip instead of %@", [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory …] forState:0]
  100070228  mov     x0, x24
  10007022c  bl      _objc_release
  100070230  mov     x0, x23
  100070234  bl      _objc_release
  100070238  mov     x0, x20
  10007023c  bl      _objc_release
  100070240  mov     x0, x21
  100070244  bl      _objc_release
  100070248  mov     x0, x22
  10007024c  bl      _objc_release
  100070250  mov     x0, x25
  100070254  bl      _objc_release
  100070258  adrp    x8, #0x100419000
  10007025c  nop
  100070260  ldr     x1, [x8, #0x740]
  100070264  mov     x0, x19
  100070268  bl      _objc_msgSend                            ; [self equip2Button]
  10007026c  mov     x29, x29
  100070270  bl      _objc_retainAutoreleasedReturnValue
  100070274  mov     x21, x0
  100070278  adrp    x8, #0x100416000
  10007027c  nop
  100070280  ldr     x20, [x8, #0xba8]
  100070284  mov     w2, #1
  100070288  mov     x1, x20
  10007028c  bl      _objc_msgSend                            ; [[self equip2Button] setHidden:1]
  100070290  mov     x0, x21
  100070294  bl      _objc_release
  100070298  adrp    x8, #0x100419000
  10007029c  nop
  1000702a0  ldr     x1, [x8, #0x748]
  1000702a4  mov     x0, x19
  1000702a8  bl      _objc_msgSend                            ; [self equip3Button]
  1000702ac  mov     x29, x29
  1000702b0  bl      _objc_retainAutoreleasedReturnValue
  1000702b4  mov     x21, x0
  1000702b8  mov     w2, #1
  1000702bc  mov     x1, x20
  1000702c0  bl      _objc_msgSend                            ; [[self equip3Button] setHidden:1]
  1000702c4  b       loc_10007036c
  1000702c8  b       loc_100070630
loc_1000702cc:
  1000702cc  adrp    x8, #0x100419000
  1000702d0  nop
  1000702d4  ldr     x1, [x8, #0x738]
  1000702d8  mov     x0, x19
  1000702dc  bl      _objc_msgSend                            ; [self equip1Button]
  1000702e0  mov     x29, x29
  1000702e4  bl      _objc_retainAutoreleasedReturnValue
  1000702e8  mov     x21, x0
  1000702ec  adrp    x8, #0x100416000
  1000702f0  nop
  1000702f4  ldr     x20, [x8, #0xba8]
  1000702f8  mov     w2, #1
  1000702fc  mov     x1, x20
  100070300  bl      _objc_msgSend                            ; [[self equip1Button] setHidden:1]
  100070304  mov     x0, x21
  100070308  bl      _objc_release
  10007030c  adrp    x8, #0x100419000
  100070310  nop
  100070314  ldr     x1, [x8, #0x740]
  100070318  mov     x0, x19
  10007031c  bl      _objc_msgSend                            ; [self equip2Button]
  100070320  mov     x29, x29
  100070324  bl      _objc_retainAutoreleasedReturnValue
  100070328  mov     x21, x0
  10007032c  mov     w2, #1
  100070330  mov     x1, x20
  100070334  bl      _objc_msgSend                            ; [[self equip2Button] setHidden:1]
  100070338  mov     x0, x21
  10007033c  bl      _objc_release
  100070340  adrp    x8, #0x100419000
  100070344  nop
  100070348  ldr     x1, [x8, #0x748]
  10007034c  mov     x0, x19
  100070350  bl      _objc_msgSend                            ; [self equip3Button]
  100070354  mov     x29, x29
  100070358  bl      _objc_retainAutoreleasedReturnValue
  10007035c  mov     x21, x0
  100070360  mov     w2, #1
  100070364  mov     x1, x20
  100070368  bl      _objc_msgSend                            ; [[self equip3Button] setHidden:1]
loc_10007036c:
  10007036c  mov     x0, x21
  100070370  sub     sp, x29, #0x50
  100070374  ldp     x29, x30, [sp, #0x50]
  100070378  ldp     x20, x19, [sp, #0x40]
  10007037c  ldp     x22, x21, [sp, #0x30]
  100070380  ldp     x24, x23, [sp, #0x20]
  100070384  ldp     x26, x25, [sp, #0x10]
  100070388  ldp     x28, x27, [sp], #0x60
  10007038c  b       _objc_release
loc_100070390:
  100070390  mov     x1, x23
  100070394  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100070398  mov     x29, x29
  10007039c  bl      _objc_retainAutoreleasedReturnValue
  1000703a0  mov     x28, x0
  1000703a4  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  1000703a8  mov     x1, x21
  1000703ac  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000703b0  mov     x29, x29
  1000703b4  bl      _objc_retainAutoreleasedReturnValue
  1000703b8  mov     x20, x0
  1000703bc  adrp    x8, #0x100416000
  1000703c0  nop
  1000703c4  ldr     x1, [x8, #0xed0]
  1000703c8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  1000703cc  str     x25, [sp, #0x28]
  1000703d0  mov     x29, x29
  1000703d4  bl      _objc_retainAutoreleasedReturnValue
  1000703d8  mov     x22, x0
  1000703dc  adrp    x8, #0x100417000
  1000703e0  nop
  1000703e4  ldr     x1, [x8, #0x1f0]
  1000703e8  str     x1, [sp, #0x18]
  1000703ec  mov     x0, x28
  1000703f0  mov     x2, x22
  1000703f4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory sharedInventory] weaponSlot1]]
  1000703f8  str     x28, [sp, #0x20]
  1000703fc  str     x26, [sp, #8]
  100070400  mov     x29, x29
  100070404  bl      _objc_retainAutoreleasedReturnValue
  100070408  mov     x25, x0
  10007040c  adrp    x8, #0x100416000
  100070410  nop
  100070414  ldr     x1, [x8, #0xee8]
  100070418  str     x1, [sp, #0x10]
  10007041c  str     x25, [sp]
  100070420  adrp    x2, #0x1003be000
  100070424  add     x2, x2, #0xf50                           ; @"equip instead of %@"
  100070428  mov     x0, x24
  10007042c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"equip instead of %@", [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory …]
  100070430  mov     x29, x29
  100070434  bl      _objc_retainAutoreleasedReturnValue
  100070438  mov     x24, x0
  10007043c  adrp    x8, #0x100417000
  100070440  nop
  100070444  ldr     x28, [x8, #0x920]
  100070448  mov     x3, #0
  10007044c  ldr     x26, [sp, #0x28]
  100070450  mov     x0, x26
  100070454  mov     x1, x28
  100070458  mov     x2, x24
  10007045c  bl      _objc_msgSend                            ; [[self equip1Button] setTitle:[NSString stringWithFormat:@"equip instead of %@", [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory …] forState:0]
  100070460  mov     x0, x24
  100070464  bl      _objc_release
  100070468  mov     x0, x25
  10007046c  bl      _objc_release
  100070470  mov     x0, x22
  100070474  bl      _objc_release
  100070478  mov     x0, x20
  10007047c  bl      _objc_release
  100070480  ldr     x0, [sp, #0x20]
  100070484  bl      _objc_release
  100070488  mov     x0, x26
  10007048c  bl      _objc_release
  100070490  adrp    x8, #0x100419000
  100070494  nop
  100070498  ldr     x24, [x8, #0x740]
  10007049c  mov     x0, x19
  1000704a0  mov     x1, x24
  1000704a4  bl      _objc_msgSend                            ; [self equip2Button]
  1000704a8  mov     x29, x29
  1000704ac  bl      _objc_retainAutoreleasedReturnValue
  1000704b0  mov     x20, x0
  1000704b4  adrp    x8, #0x10041d000
  1000704b8  ldr     x25, [x8, #0xf78]                        ; class NSString
  1000704bc  nop
  1000704c0  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000704c4  mov     x1, x23
  1000704c8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000704cc  mov     x29, x29
  1000704d0  bl      _objc_retainAutoreleasedReturnValue
  1000704d4  mov     x23, x0
  1000704d8  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  1000704dc  mov     x1, x21
  1000704e0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000704e4  mov     x29, x29
  1000704e8  bl      _objc_retainAutoreleasedReturnValue
  1000704ec  mov     x21, x0
  1000704f0  adrp    x8, #0x100416000
  1000704f4  nop
  1000704f8  ldr     x1, [x8, #0xed8]
  1000704fc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  100070500  mov     x29, x29
  100070504  bl      _objc_retainAutoreleasedReturnValue
  100070508  mov     x22, x0
  10007050c  mov     x0, x23
  100070510  ldr     x1, [sp, #0x18]
  100070514  mov     x2, x22
  100070518  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory sharedInventory] weaponSlot2]]
  10007051c  mov     x29, x29
  100070520  bl      _objc_retainAutoreleasedReturnValue
  100070524  mov     x27, x0
  100070528  str     x27, [sp]
  10007052c  adrp    x2, #0x1003be000
  100070530  add     x2, x2, #0xf50                           ; @"equip instead of %@"
  100070534  mov     x0, x25
  100070538  ldr     x1, [sp, #0x10]
  10007053c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"equip instead of %@", [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory …]
  100070540  mov     x29, x29
  100070544  bl      _objc_retainAutoreleasedReturnValue
  100070548  mov     x25, x0
  10007054c  mov     x3, #0
  100070550  mov     x0, x20
  100070554  mov     x1, x28
  100070558  mov     x2, x25
  10007055c  bl      _objc_msgSend                            ; [[self equip2Button] setTitle:[NSString stringWithFormat:@"equip instead of %@", [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[ADInventory …] forState:0]
  100070560  mov     x0, x25
  100070564  bl      _objc_release
  100070568  mov     x0, x27
  10007056c  bl      _objc_release
  100070570  mov     x0, x22
  100070574  bl      _objc_release
  100070578  mov     x0, x21
  10007057c  bl      _objc_release
  100070580  mov     x0, x23
  100070584  bl      _objc_release
  100070588  mov     x0, x20
  10007058c  bl      _objc_release
  100070590  mov     x0, x19
  100070594  ldr     x1, [sp, #8]
  100070598  bl      _objc_msgSend                            ; [self equip1Button]
  10007059c  mov     x29, x29
  1000705a0  bl      _objc_retainAutoreleasedReturnValue
  1000705a4  mov     x21, x0
  1000705a8  adrp    x8, #0x100416000
  1000705ac  nop
  1000705b0  ldr     x20, [x8, #0xba8]
  1000705b4  mov     w2, #0
  1000705b8  mov     x1, x20
  1000705bc  bl      _objc_msgSend                            ; [[self equip1Button] setHidden:0]
  1000705c0  mov     x0, x21
  1000705c4  bl      _objc_release
  1000705c8  mov     x0, x19
  1000705cc  mov     x1, x24
  1000705d0  bl      _objc_msgSend                            ; [self equip2Button]
  1000705d4  mov     x29, x29
  1000705d8  bl      _objc_retainAutoreleasedReturnValue
  1000705dc  mov     x21, x0
  1000705e0  mov     w2, #0
  1000705e4  mov     x1, x20
  1000705e8  bl      _objc_msgSend                            ; [[self equip2Button] setHidden:0]
  1000705ec  mov     x0, x21
  1000705f0  bl      _objc_release
  1000705f4  adrp    x8, #0x100419000
  1000705f8  nop
  1000705fc  ldr     x1, [x8, #0x748]
  100070600  mov     x0, x19
  100070604  bl      _objc_msgSend                            ; [self equip3Button]
  100070608  mov     x29, x29
  10007060c  bl      _objc_retainAutoreleasedReturnValue
  100070610  mov     x21, x0
  100070614  mov     w2, #1
  100070618  mov     x1, x20
  10007061c  bl      _objc_msgSend                            ; [[self equip3Button] setHidden:1]
  100070620  b       loc_10007036c
  100070624  b       loc_100070630
  100070628  b       loc_100070630
  10007062c  b       loc_100070630
loc_100070630:
  100070630  mov     x19, x0
  100070634  mov     x0, x21
  100070638  b       loc_1000707a0
  10007063c  mov     x19, x0
  100070640  b       loc_100070794
  100070644  mov     x19, x0
  100070648  b       loc_10007079c
  10007064c  mov     x19, x0
  100070650  b       loc_100070660
  100070654  mov     x19, x0
  100070658  mov     x0, x25
  10007065c  bl      _objc_release
loc_100070660:
  100070660  mov     x0, x24
  100070664  b       loc_100070790
  100070668  mov     x19, x0
  10007066c  b       loc_10007079c
  100070670  mov     x19, x0
  100070674  mov     x0, x24
  100070678  b       loc_100070798
  10007067c  mov     x19, x0
  100070680  b       loc_1000706d0
  100070684  mov     x19, x0
  100070688  b       loc_1000706c8
  10007068c  mov     x19, x0
  100070690  b       loc_1000706c0
  100070694  mov     x19, x0
  100070698  b       loc_1000706b8
  10007069c  mov     x19, x0
  1000706a0  b       loc_1000706b0
  1000706a4  mov     x19, x0
  1000706a8  mov     x0, x24
  1000706ac  bl      _objc_release
loc_1000706b0:
  1000706b0  mov     x0, x23
  1000706b4  bl      _objc_release
loc_1000706b8:
  1000706b8  mov     x0, x20
  1000706bc  bl      _objc_release
loc_1000706c0:
  1000706c0  mov     x0, x21
  1000706c4  bl      _objc_release
loc_1000706c8:
  1000706c8  mov     x0, x22
  1000706cc  bl      _objc_release
loc_1000706d0:
  1000706d0  mov     x0, x25
  1000706d4  b       loc_1000707a0
  1000706d8  b       loc_100070630
  1000706dc  str     x25, [sp, #0x28]
  1000706e0  mov     x19, x0
  1000706e4  b       loc_100070740
  1000706e8  stp     x28, x25, [sp, #0x20]
  1000706ec  mov     x19, x0
  1000706f0  b       loc_100070738
  1000706f4  stp     x28, x25, [sp, #0x20]
  1000706f8  mov     x19, x0
  1000706fc  b       loc_100070730
  100070700  str     x28, [sp, #0x20]
  100070704  mov     x19, x0
  100070708  b       loc_100070728
  10007070c  mov     x19, x0
  100070710  b       loc_100070720
  100070714  mov     x19, x0
  100070718  mov     x0, x24
  10007071c  bl      _objc_release
loc_100070720:
  100070720  mov     x0, x25
  100070724  bl      _objc_release
loc_100070728:
  100070728  mov     x0, x22
  10007072c  bl      _objc_release
loc_100070730:
  100070730  mov     x0, x20
  100070734  bl      _objc_release
loc_100070738:
  100070738  ldr     x0, [sp, #0x20]
  10007073c  bl      _objc_release
loc_100070740:
  100070740  ldr     x0, [sp, #0x28]
  100070744  b       loc_1000707a0
  100070748  mov     x19, x0
  10007074c  b       loc_10007079c
  100070750  mov     x19, x0
  100070754  b       loc_100070794
  100070758  mov     x19, x0
  10007075c  b       loc_10007078c
  100070760  mov     x19, x0
  100070764  b       loc_100070784
  100070768  mov     x19, x0
  10007076c  b       loc_10007077c
  100070770  mov     x19, x0
  100070774  mov     x0, x25
  100070778  bl      _objc_release
loc_10007077c:
  10007077c  mov     x0, x27
  100070780  bl      _objc_release
loc_100070784:
  100070784  mov     x0, x22
  100070788  bl      _objc_release
loc_10007078c:
  10007078c  mov     x0, x21
loc_100070790:
  100070790  bl      _objc_release
loc_100070794:
  100070794  mov     x0, x23
loc_100070798:
  100070798  bl      _objc_release
loc_10007079c:
  10007079c  mov     x0, x20
loc_1000707a0:
  1000707a0  bl      _objc_release
  1000707a4  mov     x0, x19
  1000707a8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000707ac  b       loc_100070630
  1000707b0  b       loc_100070630

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController backButtonPressed:]
; address 0x1000707b4  size 168  kind objc
; ======================================================================
  1000707b4  stp     x20, x19, [sp, #-0x20]!
  1000707b8  stp     x29, x30, [sp, #0x10]
  1000707bc  add     x29, sp, #0x10
  1000707c0  mov     x19, x0
  1000707c4  adrp    x8, #0x100419000
  1000707c8  nop
  1000707cc  ldr     x1, [x8, #0x750]
  1000707d0  bl      _objc_msgSend                            ; [self parentTableView]
  1000707d4  mov     x29, x29
  1000707d8  bl      _objc_retainAutoreleasedReturnValue
  1000707dc  mov     x20, x0
  1000707e0  adrp    x8, #0x100418000
  1000707e4  nop
  1000707e8  ldr     x1, [x8, #0xaf0]
  1000707ec  mov     w2, #0
  1000707f0  bl      _objc_msgSend                            ; [[self parentTableView] setAccessibilityElementsHidden:0]
  1000707f4  mov     x0, x20
  1000707f8  bl      _objc_release
  1000707fc  adrp    x8, #0x100416000
  100070800  nop
  100070804  ldr     x1, [x8, #0xf18]
  100070808  mov     x0, x19
  10007080c  bl      _objc_msgSend                            ; [self view]
  100070810  mov     x29, x29
  100070814  bl      _objc_retainAutoreleasedReturnValue
  100070818  mov     x20, x0
  10007081c  adrp    x8, #0x100417000
  100070820  nop
  100070824  ldr     x1, [x8, #0x1d0]
  100070828  bl      _objc_msgSend                            ; [[self view] removeFromSuperview]
  10007082c  mov     x0, x20
  100070830  ldp     x29, x30, [sp, #0x10]
  100070834  ldp     x20, x19, [sp], #0x20
  100070838  b       _objc_release
  10007083c  mov     x19, x0
  100070840  b       loc_100070854
  100070844  b       loc_100070848
loc_100070848:
  100070848  mov     x19, x0
  10007084c  mov     x0, x20
  100070850  bl      _objc_release
loc_100070854:
  100070854  mov     x0, x19
  100070858  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController buyOrUpgradeButtonPressed:]
; address 0x10007085c  size 2044  kind objc
; ======================================================================
  10007085c  stp     x28, x27, [sp, #-0x60]!
  100070860  stp     x26, x25, [sp, #0x10]
  100070864  stp     x24, x23, [sp, #0x20]
  100070868  stp     x22, x21, [sp, #0x30]
  10007086c  stp     x20, x19, [sp, #0x40]
  100070870  stp     x29, x30, [sp, #0x50]
  100070874  add     x29, sp, #0x50
  100070878  mov     x19, x0
  10007087c  adrp    x26, #0x10041d000
  100070880  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070884  adrp    x8, #0x100416000
  100070888  nop
  10007088c  ldr     x20, [x8, #0xec8]
  100070890  mov     x1, x20
  100070894  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070898  mov     x29, x29
  10007089c  bl      _objc_retainAutoreleasedReturnValue
  1000708a0  mov     x22, x0
  1000708a4  adrp    x8, #0x10041f000
  1000708a8  ldrsw   x27, [x8, #0xcd8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  1000708ac  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  1000708b0  adrp    x8, #0x100417000
  1000708b4  nop
  1000708b8  ldr     x21, [x8, #0x40]
  1000708bc  adrp    x2, #0x1003b9000
  1000708c0  add     x2, x2, #0xdb0                           ; @"name"
  1000708c4  mov     x1, x21
  1000708c8  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000708cc  mov     x29, x29
  1000708d0  bl      _objc_retainAutoreleasedReturnValue
  1000708d4  mov     x23, x0
  1000708d8  adrp    x8, #0x100417000
  1000708dc  nop
  1000708e0  ldr     x1, [x8, #0x1d8]
  1000708e4  mov     x0, x22
  1000708e8  mov     x2, x23
  1000708ec  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000708f0  mov     x24, x0
  1000708f4  mov     x0, x23
  1000708f8  bl      _objc_release
  1000708fc  mov     x0, x22
  100070900  bl      _objc_release
  100070904  tbz     w24, #0, loc_100070a80                   ; if (!([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] & 1))
  100070908  adrp    x8, #0x10041f000
  10007090c  ldrsw   x28, [x8, #0xce8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.nextLevelDict (+0x158)
  100070910  ldr     x0, [x19, x28]                           ; x0 = self->nextLevelDict
  100070914  adrp    x8, #0x100416000
  100070918  nop
  10007091c  ldr     x23, [x8, #0xda0]
  100070920  adrp    x2, #0x1003bd000
  100070924  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  100070928  mov     x1, x23
  10007092c  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCost"]
  100070930  mov     x29, x29
  100070934  bl      _objc_retainAutoreleasedReturnValue
  100070938  mov     x25, x0
  10007093c  adrp    x8, #0x100417000
  100070940  nop
  100070944  ldr     x24, [x8, #0x110]
  100070948  mov     x1, x24
  10007094c  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue]
  100070950  mov     x22, x0
  100070954  mov     x0, x25
  100070958  bl      _objc_release
  10007095c  cbz     w22, loc_100070b48                       ; if ([[self->nextLevelDict valueForKey:@"upgradeCost"] intValue] == 0)
  100070960  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070964  mov     x1, x20
  100070968  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10007096c  mov     x29, x29
  100070970  bl      _objc_retainAutoreleasedReturnValue
  100070974  mov     x24, x0
  100070978  adrp    x8, #0x100417000
  10007097c  nop
  100070980  ldr     x23, [x8, #0x958]
  100070984  mov     x1, x23
  100070988  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10007098c  mov     x25, x0
  100070990  mov     x0, x24
  100070994  bl      _objc_release
  100070998  cmp     w25, w22
  10007099c  b.lt    loc_100070b10                            ; if ([[ADInventory sharedInventory] coins] < [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue])
  1000709a0  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  1000709a4  mov     x1, x20
  1000709a8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000709ac  mov     x29, x29
  1000709b0  bl      _objc_retainAutoreleasedReturnValue
  1000709b4  mov     x24, x0
  1000709b8  adrp    x8, #0x10041f000
  1000709bc  ldrsw   x25, [x8, #0xce0]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.current_level (+0x160)
  1000709c0  ldr     w28, [x19, x25]                          ; w28 = self->current_level
  1000709c4  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  1000709c8  adrp    x2, #0x1003b9000
  1000709cc  add     x2, x2, #0xdb0                           ; @"name"
  1000709d0  mov     x1, x21
  1000709d4  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000709d8  mov     x3, x0
  1000709dc  add     w2, w28, #1
  1000709e0  adrp    x8, #0x100419000
  1000709e4  nop
  1000709e8  ldr     x1, [x8, #0x760]
  1000709ec  mov     x0, x24
  1000709f0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setLevel:(self->current_level + 1) forWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000709f4  mov     x0, x24
  1000709f8  bl      _objc_release
  1000709fc  adrp    x8, #0x10041d000
  100070a00  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100070a04  adrp    x8, #0x100417000
  100070a08  nop
  100070a0c  ldr     x1, [x8, #0x848]
  100070a10  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  100070a14  mov     x29, x29
  100070a18  bl      _objc_retainAutoreleasedReturnValue
  100070a1c  mov     x21, x0
  100070a20  ldr     w8, [x19, x25]                           ; w8 = self->current_level
  100070a24  add     w2, w8, #1
  100070a28  adrp    x8, #0x100419000
  100070a2c  nop
  100070a30  ldr     x1, [x8, #0x768]
  100070a34  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] upgradeWeaponToLevel:(self->current_level + 1)]
  100070a38  mov     x0, x21
  100070a3c  bl      _objc_release
  100070a40  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070a44  mov     x1, x20
  100070a48  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070a4c  mov     x29, x29
  100070a50  bl      _objc_retainAutoreleasedReturnValue
  100070a54  mov     x20, x0
  100070a58  mov     x1, x23
  100070a5c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100070a60  sub     w2, w0, w22                              ; t1 = ([[ADInventory sharedInventory] coins] - [[self->nextLevelDict valueForKey:@"upgradeCost"] intValue])
  100070a64  adrp    x8, #0x100417000
  100070a68  nop
  100070a6c  ldr     x1, [x8, #0x90]
  100070a70  mov     x0, x20
  100070a74  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t1]
  100070a78  b       loc_100070ec0
  100070a7c  b       loc_100071014
loc_100070a80:
  100070a80  adrp    x8, #0x10041f000
  100070a84  ldrsw   x25, [x8, #0xcdc]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponStatsDict (+0x148)
  100070a88  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  100070a8c  adrp    x2, #0x1003b9000
  100070a90  add     x2, x2, #0xd70                           ; @"price"
  100070a94  mov     x1, x21
  100070a98  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"price"]
  100070a9c  mov     x29, x29
  100070aa0  bl      _objc_retainAutoreleasedReturnValue
  100070aa4  mov     x24, x0
  100070aa8  adrp    x8, #0x100417000
  100070aac  nop
  100070ab0  ldr     x23, [x8, #0x110]
  100070ab4  mov     x1, x23
  100070ab8  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"price"] intValue]
  100070abc  mov     x22, x0
  100070ac0  mov     x0, x24
  100070ac4  bl      _objc_release
  100070ac8  cmp     w22, #1
  100070acc  b.lt    loc_100070bf8                            ; if ([[self->weaponStatsDict objectForKey:@"price"] intValue] < 1)
  100070ad0  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070ad4  mov     x1, x20
  100070ad8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070adc  mov     x29, x29
  100070ae0  bl      _objc_retainAutoreleasedReturnValue
  100070ae4  mov     x24, x0
  100070ae8  adrp    x8, #0x100417000
  100070aec  nop
  100070af0  ldr     x23, [x8, #0x958]
  100070af4  mov     x1, x23
  100070af8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100070afc  mov     x25, x0
  100070b00  mov     x0, x24
  100070b04  bl      _objc_release
  100070b08  cmp     w25, w22
  100070b0c  b.ge    loc_100070ca8                            ; if ([[ADInventory sharedInventory] coins] >= [[self->weaponStatsDict objectForKey:@"price"] intValue])
loc_100070b10:
  100070b10  adrp    x8, #0x100416000
  100070b14  nop
  100070b18  ldr     x1, [x8, #0xfa0]
  100070b1c  mov     x0, x19
  100070b20  bl      _objc_msgSend                            ; [self armoryViewController]
  100070b24  mov     x29, x29
  100070b28  bl      _objc_retainAutoreleasedReturnValue
  100070b2c  mov     x20, x0
  100070b30  adrp    x8, #0x100419000
  100070b34  nop
  100070b38  ldr     x1, [x8, #0x770]
  100070b3c  bl      _objc_msgSend                            ; [[self armoryViewController] showNotEnoughMoneyAlert]
  100070b40  mov     x0, x20
  100070b44  b       loc_100070f74
loc_100070b48:
  100070b48  ldr     x0, [x19, x28]                           ; x0 = self->nextLevelDict
  100070b4c  adrp    x2, #0x1003be000
  100070b50  add     x2, x2, #0xed0                           ; @"upgradeCostInDiamonds"
  100070b54  mov     x1, x23
  100070b58  bl      _objc_msgSend                            ; [self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"]
  100070b5c  mov     x29, x29
  100070b60  bl      _objc_retainAutoreleasedReturnValue
  100070b64  mov     x23, x0
  100070b68  mov     x1, x24
  100070b6c  bl      _objc_msgSend                            ; [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue]
  100070b70  mov     x22, x0
  100070b74  mov     x0, x23
  100070b78  bl      _objc_release
  100070b7c  cbz     w22, loc_100070bc0                       ; if ([[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue] == 0)
  100070b80  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070b84  mov     x1, x20
  100070b88  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070b8c  mov     x29, x29
  100070b90  bl      _objc_retainAutoreleasedReturnValue
  100070b94  mov     x24, x0
  100070b98  adrp    x8, #0x100417000
  100070b9c  nop
  100070ba0  ldr     x23, [x8, #0x960]
  100070ba4  mov     x1, x23
  100070ba8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100070bac  mov     x25, x0
  100070bb0  mov     x0, x24
  100070bb4  bl      _objc_release
  100070bb8  cmp     w25, w22
  100070bbc  b.ge    loc_100070d48                            ; if ([[ADInventory sharedInventory] diamonds] >= [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue])
loc_100070bc0:
  100070bc0  adrp    x8, #0x100416000
  100070bc4  nop
  100070bc8  ldr     x1, [x8, #0xfa0]
  100070bcc  mov     x0, x19
  100070bd0  bl      _objc_msgSend                            ; [self armoryViewController]
  100070bd4  mov     x29, x29
  100070bd8  bl      _objc_retainAutoreleasedReturnValue
  100070bdc  mov     x20, x0
  100070be0  adrp    x8, #0x100417000
  100070be4  nop
  100070be8  ldr     x1, [x8, #0xae0]
  100070bec  bl      _objc_msgSend                            ; [[self armoryViewController] showNoDiamondsAlert]
  100070bf0  b       loc_100070ec0
  100070bf4  b       loc_100071014
loc_100070bf8:
  100070bf8  ldr     x0, [x19, x25]                           ; x0 = self->weaponStatsDict
  100070bfc  adrp    x2, #0x1003b9000
  100070c00  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  100070c04  mov     x1, x21
  100070c08  bl      _objc_msgSend                            ; [self->weaponStatsDict objectForKey:@"priceInDiamonds"]
  100070c0c  mov     x29, x29
  100070c10  bl      _objc_retainAutoreleasedReturnValue
  100070c14  mov     x24, x0
  100070c18  mov     x1, x23
  100070c1c  bl      _objc_msgSend                            ; [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue]
  100070c20  mov     x22, x0
  100070c24  mov     x0, x24
  100070c28  bl      _objc_release
  100070c2c  cbz     w22, loc_100070ec8                       ; if ([[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue] == 0)
  100070c30  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070c34  mov     x1, x20
  100070c38  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070c3c  mov     x29, x29
  100070c40  bl      _objc_retainAutoreleasedReturnValue
  100070c44  mov     x24, x0
  100070c48  adrp    x8, #0x100417000
  100070c4c  nop
  100070c50  ldr     x23, [x8, #0x960]
  100070c54  mov     x1, x23
  100070c58  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100070c5c  mov     x25, x0
  100070c60  mov     x0, x24
  100070c64  bl      _objc_release
  100070c68  cmp     w25, w22
  100070c6c  b.ge    loc_100070e28                            ; if ([[ADInventory sharedInventory] diamonds] >= [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue])
  100070c70  adrp    x8, #0x100416000
  100070c74  nop
  100070c78  ldr     x1, [x8, #0xfa0]
  100070c7c  mov     x0, x19
  100070c80  bl      _objc_msgSend                            ; [self armoryViewController]
  100070c84  mov     x29, x29
  100070c88  bl      _objc_retainAutoreleasedReturnValue
  100070c8c  mov     x20, x0
  100070c90  adrp    x8, #0x100417000
  100070c94  nop
  100070c98  ldr     x1, [x8, #0xae0]
  100070c9c  bl      _objc_msgSend                            ; [[self armoryViewController] showNoDiamondsAlert]
  100070ca0  b       loc_100070ec0
  100070ca4  b       loc_100071014
loc_100070ca8:
  100070ca8  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070cac  mov     x1, x20
  100070cb0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070cb4  mov     x29, x29
  100070cb8  bl      _objc_retainAutoreleasedReturnValue
  100070cbc  mov     x24, x0
  100070cc0  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  100070cc4  adrp    x2, #0x1003b9000
  100070cc8  add     x2, x2, #0xdb0                           ; @"name"
  100070ccc  mov     x1, x21
  100070cd0  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100070cd4  mov     x29, x29
  100070cd8  bl      _objc_retainAutoreleasedReturnValue
  100070cdc  mov     x21, x0
  100070ce0  adrp    x8, #0x100419000
  100070ce4  nop
  100070ce8  ldr     x1, [x8, #0x758]
  100070cec  mov     x0, x24
  100070cf0  mov     x2, x21
  100070cf4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] unlockWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100070cf8  mov     x0, x21
  100070cfc  bl      _objc_release
  100070d00  mov     x0, x24
  100070d04  bl      _objc_release
  100070d08  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070d0c  mov     x1, x20
  100070d10  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070d14  mov     x29, x29
  100070d18  bl      _objc_retainAutoreleasedReturnValue
  100070d1c  mov     x20, x0
  100070d20  mov     x1, x23
  100070d24  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100070d28  sub     w2, w0, w22                              ; t2 = ([[ADInventory sharedInventory] coins] - [[self->weaponStatsDict objectForKey:@"price"] intValue])
  100070d2c  adrp    x8, #0x100417000
  100070d30  nop
  100070d34  ldr     x1, [x8, #0x90]
  100070d38  mov     x0, x20
  100070d3c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t2]
  100070d40  b       loc_100070ec0
  100070d44  b       loc_100071014
loc_100070d48:
  100070d48  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070d4c  mov     x1, x20
  100070d50  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070d54  mov     x29, x29
  100070d58  bl      _objc_retainAutoreleasedReturnValue
  100070d5c  mov     x24, x0
  100070d60  adrp    x8, #0x10041f000
  100070d64  ldrsw   x25, [x8, #0xce0]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.current_level (+0x160)
  100070d68  ldr     w28, [x19, x25]                          ; w28 = self->current_level
  100070d6c  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  100070d70  adrp    x2, #0x1003b9000
  100070d74  add     x2, x2, #0xdb0                           ; @"name"
  100070d78  mov     x1, x21
  100070d7c  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100070d80  mov     x3, x0
  100070d84  add     w2, w28, #1
  100070d88  adrp    x8, #0x100419000
  100070d8c  nop
  100070d90  ldr     x1, [x8, #0x760]
  100070d94  mov     x0, x24
  100070d98  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setLevel:(self->current_level + 1) forWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100070d9c  mov     x0, x24
  100070da0  bl      _objc_release
  100070da4  adrp    x8, #0x10041d000
  100070da8  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100070dac  adrp    x8, #0x100417000
  100070db0  nop
  100070db4  ldr     x1, [x8, #0x848]
  100070db8  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  100070dbc  mov     x29, x29
  100070dc0  bl      _objc_retainAutoreleasedReturnValue
  100070dc4  mov     x21, x0
  100070dc8  ldr     w8, [x19, x25]                           ; w8 = self->current_level
  100070dcc  add     w2, w8, #1
  100070dd0  adrp    x8, #0x100419000
  100070dd4  nop
  100070dd8  ldr     x1, [x8, #0x768]
  100070ddc  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] upgradeWeaponToLevel:(self->current_level + 1)]
  100070de0  mov     x0, x21
  100070de4  bl      _objc_release
  100070de8  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070dec  mov     x1, x20
  100070df0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070df4  mov     x29, x29
  100070df8  bl      _objc_retainAutoreleasedReturnValue
  100070dfc  mov     x20, x0
  100070e00  mov     x1, x23
  100070e04  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100070e08  sub     w2, w0, w22                              ; t3 = ([[ADInventory sharedInventory] diamonds] - [[self->nextLevelDict valueForKey:@"upgradeCostInDiamonds"] intValue])
  100070e0c  adrp    x8, #0x100417000
  100070e10  nop
  100070e14  ldr     x1, [x8, #0x98]
  100070e18  mov     x0, x20
  100070e1c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:t3]
  100070e20  b       loc_100070ec0
  100070e24  b       loc_100071014
loc_100070e28:
  100070e28  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070e2c  mov     x1, x20
  100070e30  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070e34  mov     x29, x29
  100070e38  bl      _objc_retainAutoreleasedReturnValue
  100070e3c  mov     x24, x0
  100070e40  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  100070e44  adrp    x2, #0x1003b9000
  100070e48  add     x2, x2, #0xdb0                           ; @"name"
  100070e4c  mov     x1, x21
  100070e50  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100070e54  mov     x29, x29
  100070e58  bl      _objc_retainAutoreleasedReturnValue
  100070e5c  mov     x21, x0
  100070e60  adrp    x8, #0x100419000
  100070e64  nop
  100070e68  ldr     x1, [x8, #0x758]
  100070e6c  mov     x0, x24
  100070e70  mov     x2, x21
  100070e74  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] unlockWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  100070e78  mov     x0, x21
  100070e7c  bl      _objc_release
  100070e80  mov     x0, x24
  100070e84  bl      _objc_release
  100070e88  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100070e8c  mov     x1, x20
  100070e90  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100070e94  mov     x29, x29
  100070e98  bl      _objc_retainAutoreleasedReturnValue
  100070e9c  mov     x20, x0
  100070ea0  mov     x1, x23
  100070ea4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100070ea8  sub     w2, w0, w22                              ; t4 = ([[ADInventory sharedInventory] diamonds] - [[self->weaponStatsDict objectForKey:@"priceInDiamonds"] intValue])
  100070eac  adrp    x8, #0x100417000
  100070eb0  nop
  100070eb4  ldr     x1, [x8, #0x98]
  100070eb8  mov     x0, x20
  100070ebc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:t4]
loc_100070ec0:
  100070ec0  mov     x0, x20
  100070ec4  bl      _objc_release
loc_100070ec8:
  100070ec8  adrp    x8, #0x100419000
  100070ecc  nop
  100070ed0  ldr     x1, [x8, #0x700]
  100070ed4  mov     x0, x19
  100070ed8  bl      _objc_msgSend                            ; [self loadInformations]
  100070edc  adrp    x8, #0x100416000
  100070ee0  nop
  100070ee4  ldr     x1, [x8, #0xfa0]
  100070ee8  mov     x0, x19
  100070eec  bl      _objc_msgSend                            ; [self armoryViewController]
  100070ef0  mov     x29, x29
  100070ef4  bl      _objc_retainAutoreleasedReturnValue
  100070ef8  mov     x20, x0
  100070efc  adrp    x8, #0x100417000
  100070f00  nop
  100070f04  ldr     x1, [x8, #0x2a8]
  100070f08  bl      _objc_msgSend                            ; [[self armoryViewController] statusBarViewController]
  100070f0c  mov     x29, x29
  100070f10  bl      _objc_retainAutoreleasedReturnValue
  100070f14  mov     x21, x0
  100070f18  adrp    x8, #0x100417000
  100070f1c  nop
  100070f20  ldr     x1, [x8, #0x930]
  100070f24  bl      _objc_msgSend                            ; [[[self armoryViewController] statusBarViewController] refreshCoinsAndDiamonds]
  100070f28  mov     x0, x21
  100070f2c  bl      _objc_release
  100070f30  mov     x0, x20
  100070f34  bl      _objc_release
  100070f38  adrp    x8, #0x1003b0000
  100070f3c  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  100070f40  ldr     w20, [x8]                                ; w20 = _UIAccessibilityScreenChangedNotification[+0x0]
  100070f44  adrp    x8, #0x100419000
  100070f48  nop
  100070f4c  ldr     x1, [x8, #0x710]
  100070f50  mov     x0, x19
  100070f54  bl      _objc_msgSend                            ; [self weaponStats]
  100070f58  mov     x29, x29
  100070f5c  bl      _objc_retainAutoreleasedReturnValue
  100070f60  mov     x21, x0
  100070f64  mov     x0, x20
  100070f68  mov     x1, x21
  100070f6c  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [self weaponStats])
  100070f70  mov     x0, x21
loc_100070f74:
  100070f74  ldp     x29, x30, [sp, #0x50]
  100070f78  ldp     x20, x19, [sp, #0x40]
  100070f7c  ldp     x22, x21, [sp, #0x30]
  100070f80  ldp     x24, x23, [sp, #0x20]
  100070f84  ldp     x26, x25, [sp, #0x10]
  100070f88  ldp     x28, x27, [sp], #0x60
  100070f8c  b       _objc_release
  100070f90  mov     x19, x0
  100070f94  b       loc_100071040
  100070f98  mov     x19, x0
  100070f9c  b       loc_100070fac
  100070fa0  mov     x19, x0
  100070fa4  mov     x0, x23
  100070fa8  bl      _objc_release
loc_100070fac:
  100070fac  mov     x0, x22
  100070fb0  b       loc_10007103c
  100070fb4  b       loc_100071014
  100070fb8  mov     x19, x0
  100070fbc  mov     x0, x21
  100070fc0  bl      _objc_release
  100070fc4  b       loc_100071018
  100070fc8  b       loc_100071028
  100070fcc  mov     x19, x0
  100070fd0  mov     x0, x25
  100070fd4  b       loc_10007103c
  100070fd8  b       loc_100071034
  100070fdc  b       loc_100071034
  100070fe0  b       loc_100071034
  100070fe4  b       loc_100071014
  100070fe8  mov     x19, x0
  100070fec  mov     x0, x23
  100070ff0  b       loc_10007103c
  100070ff4  b       loc_100071034
  100070ff8  b       loc_100071034
  100070ffc  b       loc_100071034
  100071000  b       loc_100071028
  100071004  b       loc_100071034
  100071008  b       loc_100071048
  10007100c  b       loc_100071034
  100071010  b       loc_100071034
loc_100071014:
  100071014  mov     x19, x0
loc_100071018:
  100071018  mov     x0, x20
  10007101c  b       loc_10007103c
  100071020  b       loc_100071034
  100071024  b       loc_100071034
loc_100071028:
  100071028  mov     x19, x0
  10007102c  mov     x0, x21
  100071030  b       loc_10007103c
loc_100071034:
  100071034  mov     x19, x0
loc_100071038:
  100071038  mov     x0, x24
loc_10007103c:
  10007103c  bl      _objc_release
loc_100071040:
  100071040  mov     x0, x19
  100071044  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_100071048:
  100071048  mov     x19, x0
  10007104c  mov     x0, x21
  100071050  bl      _objc_release
  100071054  b       loc_100071038

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController equipSlot1ButtonPressed:]
; address 0x100071058  size 464  kind objc
; ======================================================================
  100071058  stp     x24, x23, [sp, #-0x40]!
  10007105c  stp     x22, x21, [sp, #0x10]
  100071060  stp     x20, x19, [sp, #0x20]
  100071064  stp     x29, x30, [sp, #0x30]
  100071068  add     x29, sp, #0x30
  10007106c  mov     x19, x0
  100071070  adrp    x8, #0x10041d000
  100071074  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100071078  adrp    x8, #0x100417000
  10007107c  nop
  100071080  ldr     x1, [x8, #0xa0]
  100071084  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100071088  mov     x29, x29
  10007108c  bl      _objc_retainAutoreleasedReturnValue
  100071090  mov     x21, x0
  100071094  adrp    x8, #0x10041f000
  100071098  ldrsw   x24, [x8, #0xcd8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  10007109c  ldr     x0, [x19, x24]                           ; x0 = self->weaponInventoryDict
  1000710a0  adrp    x8, #0x100417000
  1000710a4  nop
  1000710a8  ldr     x20, [x8, #0x40]
  1000710ac  adrp    x2, #0x1003b9000
  1000710b0  add     x2, x2, #0xdb0                           ; @"name"
  1000710b4  mov     x1, x20
  1000710b8  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000710bc  mov     x29, x29
  1000710c0  bl      _objc_retainAutoreleasedReturnValue
  1000710c4  mov     x22, x0
  1000710c8  adrp    x8, #0x100418000
  1000710cc  nop
  1000710d0  ldr     x1, [x8, #0x6f8]
  1000710d4  mov     x0, x21
  1000710d8  mov     x2, x22
  1000710dc  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000710e0  mov     x23, x0
  1000710e4  mov     x0, x22
  1000710e8  bl      _objc_release
  1000710ec  mov     x0, x21
  1000710f0  bl      _objc_release
  1000710f4  adrp    x8, #0x10041d000
  1000710f8  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000710fc  adrp    x8, #0x100416000
  100071100  add     x8, x8, #0xec8                           ; &@selector(sharedInventory)
  100071104  ldr     x1, [x8]
  100071108  cbz     w23, loc_10007115c                       ; if ([[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[self->weaponInventoryDict objectForKey:@"name"]] == 0)
  10007110c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100071110  mov     x29, x29
  100071114  bl      _objc_retainAutoreleasedReturnValue
  100071118  mov     x21, x0
  10007111c  ldr     x0, [x19, x24]                           ; x0 = self->weaponInventoryDict
  100071120  adrp    x2, #0x1003b9000
  100071124  add     x2, x2, #0xdb0                           ; @"name"
  100071128  mov     x1, x20
  10007112c  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100071130  mov     x29, x29
  100071134  bl      _objc_retainAutoreleasedReturnValue
  100071138  mov     x20, x0
  10007113c  adrp    x8, #0x100416000
  100071140  nop
  100071144  ldr     x1, [x8, #0xf70]
  100071148  mov     x0, x21
  10007114c  mov     x2, x20
  100071150  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlotMelee:[self->weaponInventoryDict objectForKey:@"name"]]
  100071154  b       loc_1000711a4
  100071158  b       loc_10007120c
loc_10007115c:
  10007115c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100071160  mov     x29, x29
  100071164  bl      _objc_retainAutoreleasedReturnValue
  100071168  mov     x21, x0
  10007116c  ldr     x0, [x19, x24]                           ; x0 = self->weaponInventoryDict
  100071170  adrp    x2, #0x1003b9000
  100071174  add     x2, x2, #0xdb0                           ; @"name"
  100071178  mov     x1, x20
  10007117c  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100071180  mov     x29, x29
  100071184  bl      _objc_retainAutoreleasedReturnValue
  100071188  mov     x20, x0
  10007118c  adrp    x8, #0x100416000
  100071190  nop
  100071194  ldr     x1, [x8, #0xf60]
  100071198  mov     x0, x21
  10007119c  mov     x2, x20
  1000711a0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot1:[self->weaponInventoryDict objectForKey:@"name"]]
loc_1000711a4:
  1000711a4  mov     x0, x20
  1000711a8  bl      _objc_release
  1000711ac  mov     x0, x21
  1000711b0  bl      _objc_release
  1000711b4  adrp    x8, #0x100418000
  1000711b8  nop
  1000711bc  ldr     x1, [x8, #0xc20]
  1000711c0  mov     x2, #0
  1000711c4  mov     x0, x19
  1000711c8  bl      _objc_msgSend                            ; [self backButtonPressed:0]
  1000711cc  ldp     x29, x30, [sp, #0x30]
  1000711d0  ldp     x20, x19, [sp, #0x20]
  1000711d4  ldp     x22, x21, [sp, #0x10]
  1000711d8  ldp     x24, x23, [sp], #0x40
  1000711dc  ret
  1000711e0  mov     x19, x0
  1000711e4  b       loc_100071220
  1000711e8  mov     x19, x0
  1000711ec  b       loc_100071218
  1000711f0  mov     x19, x0
  1000711f4  mov     x0, x22
  1000711f8  b       loc_100071214
  1000711fc  mov     x19, x0
  100071200  b       loc_100071218
  100071204  mov     x19, x0
  100071208  b       loc_100071218
loc_10007120c:
  10007120c  mov     x19, x0
  100071210  mov     x0, x20
loc_100071214:
  100071214  bl      _objc_release
loc_100071218:
  100071218  mov     x0, x21
  10007121c  bl      _objc_release
loc_100071220:
  100071220  mov     x0, x19
  100071224  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController equipSlot2ButtonPressed:]
; address 0x100071228  size 228  kind objc
; ======================================================================
  100071228  stp     x22, x21, [sp, #-0x30]!
  10007122c  stp     x20, x19, [sp, #0x10]
  100071230  stp     x29, x30, [sp, #0x20]
  100071234  add     x29, sp, #0x20
  100071238  mov     x19, x0
  10007123c  adrp    x8, #0x10041d000
  100071240  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100071244  adrp    x8, #0x100416000
  100071248  nop
  10007124c  ldr     x1, [x8, #0xec8]
  100071250  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100071254  mov     x29, x29
  100071258  bl      _objc_retainAutoreleasedReturnValue
  10007125c  mov     x20, x0
  100071260  adrp    x8, #0x10041f000
  100071264  ldrsw   x8, [x8, #0xcd8]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  100071268  ldr     x0, [x19, x8]                            ; x0 = self->weaponInventoryDict
  10007126c  adrp    x8, #0x100417000
  100071270  nop
  100071274  ldr     x1, [x8, #0x40]
  100071278  adrp    x2, #0x1003b9000
  10007127c  add     x2, x2, #0xdb0                           ; @"name"
  100071280  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  100071284  mov     x29, x29
  100071288  bl      _objc_retainAutoreleasedReturnValue
  10007128c  mov     x21, x0
  100071290  adrp    x8, #0x100416000
  100071294  nop
  100071298  ldr     x1, [x8, #0xf68]
  10007129c  mov     x0, x20
  1000712a0  mov     x2, x21
  1000712a4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setWeaponSlot2:[self->weaponInventoryDict objectForKey:@"name"]]
  1000712a8  mov     x0, x21
  1000712ac  bl      _objc_release
  1000712b0  mov     x0, x20
  1000712b4  bl      _objc_release
  1000712b8  adrp    x8, #0x100418000
  1000712bc  nop
  1000712c0  ldr     x1, [x8, #0xc20]
  1000712c4  mov     x2, #0
  1000712c8  mov     x0, x19
  1000712cc  bl      _objc_msgSend                            ; [self backButtonPressed:0]
  1000712d0  ldp     x29, x30, [sp, #0x20]
  1000712d4  ldp     x20, x19, [sp, #0x10]
  1000712d8  ldp     x22, x21, [sp], #0x30
  1000712dc  ret
  1000712e0  mov     x19, x0
  1000712e4  b       loc_100071304
  1000712e8  mov     x19, x0
  1000712ec  b       loc_1000712fc
  1000712f0  mov     x19, x0
  1000712f4  mov     x0, x21
  1000712f8  bl      _objc_release
loc_1000712fc:
  1000712fc  mov     x0, x20
  100071300  bl      _objc_release
loc_100071304:
  100071304  mov     x0, x19
  100071308  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController didReceiveMemoryWarning]
; address 0x10007130c  size 60  kind objc
; ======================================================================
  10007130c  stp     x29, x30, [sp, #-0x10]!
  100071310  mov     x29, sp
  100071314  sub     sp, sp, #0x10
  100071318  str     x0, [sp]
  10007131c  adrp    x8, #0x10041e000
  100071320  ldr     x8, [x8, #0xdd0]
  100071324  str     x8, [sp, #8]
  100071328  adrp    x8, #0x100416000
  10007132c  nop
  100071330  ldr     x1, [x8, #0xbf8]
  100071334  mov     x0, sp
  100071338  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10007133c  mov     sp, x29
  100071340  ldp     x29, x30, [sp], #0x10
  100071344  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController armoryViewController]
; address 0x100071348  size 32  kind objc
; ======================================================================
  100071348  stp     x29, x30, [sp, #-0x10]!
  10007134c  mov     x29, sp
  100071350  adrp    x8, #0x10041f000
  100071354  ldrsw   x8, [x8, #0xcec]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._armoryViewController (+0x168)
  100071358  add     x0, x0, x8
  10007135c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100071360  ldp     x29, x30, [sp], #0x10
  100071364  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setArmoryViewController:]
; address 0x100071368  size 20  kind objc
; ======================================================================
  100071368  adrp    x8, #0x10041f000
  10007136c  ldrsw   x8, [x8, #0xcec]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._armoryViewController (+0x168)
  100071370  add     x0, x0, x8
  100071374  mov     x1, x2
  100071378  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController parentTableView]
; address 0x10007137c  size 32  kind objc
; ======================================================================
  10007137c  stp     x29, x30, [sp, #-0x10]!
  100071380  mov     x29, sp
  100071384  adrp    x8, #0x10041f000
  100071388  ldrsw   x8, [x8, #0xcf0]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._parentTableView (+0x170)
  10007138c  add     x0, x0, x8
  100071390  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100071394  ldp     x29, x30, [sp], #0x10
  100071398  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setParentTableView:]
; address 0x10007139c  size 20  kind objc
; ======================================================================
  10007139c  adrp    x8, #0x10041f000
  1000713a0  ldrsw   x8, [x8, #0xcf0]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._parentTableView (+0x170)
  1000713a4  add     x0, x0, x8
  1000713a8  mov     x1, x2
  1000713ac  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController weaponName]
; address 0x1000713b0  size 16  kind objc
; ======================================================================
  1000713b0  adrp    x8, #0x10041f000
  1000713b4  ldrsw   x8, [x8, #0xcf4]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponName (+0x178)
  1000713b8  ldr     x0, [x0, x8]                             ; x0 = self->_weaponName
  1000713bc  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setWeaponName:]
; address 0x1000713c0  size 56  kind objc
; ======================================================================
  1000713c0  stp     x20, x19, [sp, #-0x20]!
  1000713c4  stp     x29, x30, [sp, #0x10]
  1000713c8  add     x29, sp, #0x10
  1000713cc  mov     x19, x0
  1000713d0  adrp    x8, #0x10041f000
  1000713d4  ldrsw   x20, [x8, #0xcf4]                        ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponName (+0x178)
  1000713d8  mov     x0, x2
  1000713dc  bl      _objc_retain
  1000713e0  ldr     x8, [x19, x20]                           ; x8 = self->_weaponName
  1000713e4  str     x0, [x19, x20]                           ; self->_weaponName = arg1
  1000713e8  mov     x0, x8
  1000713ec  ldp     x29, x30, [sp, #0x10]
  1000713f0  ldp     x20, x19, [sp], #0x20
  1000713f4  b       _objc_release

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController weaponDescription]
; address 0x1000713f8  size 16  kind objc
; ======================================================================
  1000713f8  adrp    x8, #0x10041f000
  1000713fc  ldrsw   x8, [x8, #0xcf8]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponDescription (+0x180)
  100071400  ldr     x0, [x0, x8]                             ; x0 = self->_weaponDescription
  100071404  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setWeaponDescription:]
; address 0x100071408  size 56  kind objc
; ======================================================================
  100071408  stp     x20, x19, [sp, #-0x20]!
  10007140c  stp     x29, x30, [sp, #0x10]
  100071410  add     x29, sp, #0x10
  100071414  mov     x19, x0
  100071418  adrp    x8, #0x10041f000
  10007141c  ldrsw   x20, [x8, #0xcf8]                        ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponDescription (+0x180)
  100071420  mov     x0, x2
  100071424  bl      _objc_retain
  100071428  ldr     x8, [x19, x20]                           ; x8 = self->_weaponDescription
  10007142c  str     x0, [x19, x20]                           ; self->_weaponDescription = arg1
  100071430  mov     x0, x8
  100071434  ldp     x29, x30, [sp, #0x10]
  100071438  ldp     x20, x19, [sp], #0x20
  10007143c  b       _objc_release

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController weaponStats]
; address 0x100071440  size 16  kind objc
; ======================================================================
  100071440  adrp    x8, #0x10041f000
  100071444  ldrsw   x8, [x8, #0xcfc]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponStats (+0x188)
  100071448  ldr     x0, [x0, x8]                             ; x0 = self->_weaponStats
  10007144c  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setWeaponStats:]
; address 0x100071450  size 56  kind objc
; ======================================================================
  100071450  stp     x20, x19, [sp, #-0x20]!
  100071454  stp     x29, x30, [sp, #0x10]
  100071458  add     x29, sp, #0x10
  10007145c  mov     x19, x0
  100071460  adrp    x8, #0x10041f000
  100071464  ldrsw   x20, [x8, #0xcfc]                        ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponStats (+0x188)
  100071468  mov     x0, x2
  10007146c  bl      _objc_retain
  100071470  ldr     x8, [x19, x20]                           ; x8 = self->_weaponStats
  100071474  str     x0, [x19, x20]                           ; self->_weaponStats = arg1
  100071478  mov     x0, x8
  10007147c  ldp     x29, x30, [sp, #0x10]
  100071480  ldp     x20, x19, [sp], #0x20
  100071484  b       _objc_release

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController buyOrUpgradeButton]
; address 0x100071488  size 16  kind objc
; ======================================================================
  100071488  adrp    x8, #0x10041f000
  10007148c  ldrsw   x8, [x8, #0xd00]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._buyOrUpgradeButton (+0x190)
  100071490  ldr     x0, [x0, x8]                             ; x0 = self->_buyOrUpgradeButton
  100071494  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setBuyOrUpgradeButton:]
; address 0x100071498  size 56  kind objc
; ======================================================================
  100071498  stp     x20, x19, [sp, #-0x20]!
  10007149c  stp     x29, x30, [sp, #0x10]
  1000714a0  add     x29, sp, #0x10
  1000714a4  mov     x19, x0
  1000714a8  adrp    x8, #0x10041f000
  1000714ac  ldrsw   x20, [x8, #0xd00]                        ; ivar offset Accessible_ADWeaponDescriptionViewController._buyOrUpgradeButton (+0x190)
  1000714b0  mov     x0, x2
  1000714b4  bl      _objc_retain
  1000714b8  ldr     x8, [x19, x20]                           ; x8 = self->_buyOrUpgradeButton
  1000714bc  str     x0, [x19, x20]                           ; self->_buyOrUpgradeButton = arg1
  1000714c0  mov     x0, x8
  1000714c4  ldp     x29, x30, [sp, #0x10]
  1000714c8  ldp     x20, x19, [sp], #0x20
  1000714cc  b       _objc_release

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController equip1Button]
; address 0x1000714d0  size 16  kind objc
; ======================================================================
  1000714d0  adrp    x8, #0x10041f000
  1000714d4  ldrsw   x8, [x8, #0xd04]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._equip1Button (+0x198)
  1000714d8  ldr     x0, [x0, x8]                             ; x0 = self->_equip1Button
  1000714dc  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setEquip1Button:]
; address 0x1000714e0  size 56  kind objc
; ======================================================================
  1000714e0  stp     x20, x19, [sp, #-0x20]!
  1000714e4  stp     x29, x30, [sp, #0x10]
  1000714e8  add     x29, sp, #0x10
  1000714ec  mov     x19, x0
  1000714f0  adrp    x8, #0x10041f000
  1000714f4  ldrsw   x20, [x8, #0xd04]                        ; ivar offset Accessible_ADWeaponDescriptionViewController._equip1Button (+0x198)
  1000714f8  mov     x0, x2
  1000714fc  bl      _objc_retain
  100071500  ldr     x8, [x19, x20]                           ; x8 = self->_equip1Button
  100071504  str     x0, [x19, x20]                           ; self->_equip1Button = arg1
  100071508  mov     x0, x8
  10007150c  ldp     x29, x30, [sp, #0x10]
  100071510  ldp     x20, x19, [sp], #0x20
  100071514  b       _objc_release

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController equip2Button]
; address 0x100071518  size 16  kind objc
; ======================================================================
  100071518  adrp    x8, #0x10041f000
  10007151c  ldrsw   x8, [x8, #0xd08]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._equip2Button (+0x1a0)
  100071520  ldr     x0, [x0, x8]                             ; x0 = self->_equip2Button
  100071524  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setEquip2Button:]
; address 0x100071528  size 56  kind objc
; ======================================================================
  100071528  stp     x20, x19, [sp, #-0x20]!
  10007152c  stp     x29, x30, [sp, #0x10]
  100071530  add     x29, sp, #0x10
  100071534  mov     x19, x0
  100071538  adrp    x8, #0x10041f000
  10007153c  ldrsw   x20, [x8, #0xd08]                        ; ivar offset Accessible_ADWeaponDescriptionViewController._equip2Button (+0x1a0)
  100071540  mov     x0, x2
  100071544  bl      _objc_retain
  100071548  ldr     x8, [x19, x20]                           ; x8 = self->_equip2Button
  10007154c  str     x0, [x19, x20]                           ; self->_equip2Button = arg1
  100071550  mov     x0, x8
  100071554  ldp     x29, x30, [sp, #0x10]
  100071558  ldp     x20, x19, [sp], #0x20
  10007155c  b       _objc_release

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController equip3Button]
; address 0x100071560  size 16  kind objc
; ======================================================================
  100071560  adrp    x8, #0x10041f000
  100071564  ldrsw   x8, [x8, #0xd0c]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._equip3Button (+0x1a8)
  100071568  ldr     x0, [x0, x8]                             ; x0 = self->_equip3Button
  10007156c  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setEquip3Button:]
; address 0x100071570  size 56  kind objc
; ======================================================================
  100071570  stp     x20, x19, [sp, #-0x20]!
  100071574  stp     x29, x30, [sp, #0x10]
  100071578  add     x29, sp, #0x10
  10007157c  mov     x19, x0
  100071580  adrp    x8, #0x10041f000
  100071584  ldrsw   x20, [x8, #0xd0c]                        ; ivar offset Accessible_ADWeaponDescriptionViewController._equip3Button (+0x1a8)
  100071588  mov     x0, x2
  10007158c  bl      _objc_retain
  100071590  ldr     x8, [x19, x20]                           ; x8 = self->_equip3Button
  100071594  str     x0, [x19, x20]                           ; self->_equip3Button = arg1
  100071598  mov     x0, x8
  10007159c  ldp     x29, x30, [sp, #0x10]
  1000715a0  ldp     x20, x19, [sp], #0x20
  1000715a4  b       _objc_release

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController hideButtons]
; address 0x1000715a8  size 16  kind objc
; ======================================================================
  1000715a8  adrp    x8, #0x10041f000
  1000715ac  ldrsw   x8, [x8, #0xd10]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._hideButtons (+0x164)
  1000715b0  ldrb    w0, [x0, x8]                             ; w0 = self->_hideButtons
  1000715b4  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController setHideButtons:]
; address 0x1000715b8  size 16  kind objc
; ======================================================================
  1000715b8  adrp    x8, #0x10041f000
  1000715bc  ldrsw   x8, [x8, #0xd10]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._hideButtons (+0x164)
  1000715c0  strb    w2, [x0, x8]                             ; self->_hideButtons = arg1
  1000715c4  ret

; ======================================================================
; -[Accessible_ADWeaponDescriptionViewController .cxx_destruct]
; address 0x1000715c8  size 276  kind objc
; ======================================================================
  1000715c8  stp     x20, x19, [sp, #-0x20]!
  1000715cc  stp     x29, x30, [sp, #0x10]
  1000715d0  add     x29, sp, #0x10
  1000715d4  mov     x19, x0
  1000715d8  adrp    x8, #0x10041f000
  1000715dc  ldrsw   x8, [x8, #0xd0c]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._equip3Button (+0x1a8)
  1000715e0  add     x0, x19, x8
  1000715e4  mov     x1, #0
  1000715e8  bl      _objc_storeStrong
  1000715ec  adrp    x8, #0x10041f000
  1000715f0  ldrsw   x8, [x8, #0xd08]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._equip2Button (+0x1a0)
  1000715f4  add     x0, x19, x8
  1000715f8  mov     x1, #0
  1000715fc  bl      _objc_storeStrong
  100071600  adrp    x8, #0x10041f000
  100071604  ldrsw   x8, [x8, #0xd04]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._equip1Button (+0x198)
  100071608  add     x0, x19, x8
  10007160c  mov     x1, #0
  100071610  bl      _objc_storeStrong
  100071614  adrp    x8, #0x10041f000
  100071618  ldrsw   x8, [x8, #0xd00]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._buyOrUpgradeButton (+0x190)
  10007161c  add     x0, x19, x8
  100071620  mov     x1, #0
  100071624  bl      _objc_storeStrong
  100071628  adrp    x8, #0x10041f000
  10007162c  ldrsw   x8, [x8, #0xcfc]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponStats (+0x188)
  100071630  add     x0, x19, x8
  100071634  mov     x1, #0
  100071638  bl      _objc_storeStrong
  10007163c  adrp    x8, #0x10041f000
  100071640  ldrsw   x8, [x8, #0xcf8]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponDescription (+0x180)
  100071644  add     x0, x19, x8
  100071648  mov     x1, #0
  10007164c  bl      _objc_storeStrong
  100071650  adrp    x8, #0x10041f000
  100071654  ldrsw   x8, [x8, #0xcf4]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._weaponName (+0x178)
  100071658  add     x0, x19, x8
  10007165c  mov     x1, #0
  100071660  bl      _objc_storeStrong
  100071664  adrp    x8, #0x10041f000
  100071668  ldrsw   x8, [x8, #0xcf0]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._parentTableView (+0x170)
  10007166c  add     x0, x19, x8
  100071670  bl      _objc_destroyWeak
  100071674  adrp    x8, #0x10041f000
  100071678  ldrsw   x8, [x8, #0xcec]                         ; ivar offset Accessible_ADWeaponDescriptionViewController._armoryViewController (+0x168)
  10007167c  add     x0, x19, x8
  100071680  bl      _objc_destroyWeak
  100071684  adrp    x8, #0x10041f000
  100071688  ldrsw   x8, [x8, #0xce8]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.nextLevelDict (+0x158)
  10007168c  add     x0, x19, x8
  100071690  mov     x1, #0
  100071694  bl      _objc_storeStrong
  100071698  adrp    x8, #0x10041f000
  10007169c  ldrsw   x8, [x8, #0xce4]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.currentLevelDict (+0x150)
  1000716a0  add     x0, x19, x8
  1000716a4  mov     x1, #0
  1000716a8  bl      _objc_storeStrong
  1000716ac  adrp    x8, #0x10041f000
  1000716b0  ldrsw   x8, [x8, #0xcdc]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponStatsDict (+0x148)
  1000716b4  add     x0, x19, x8
  1000716b8  mov     x1, #0
  1000716bc  bl      _objc_storeStrong
  1000716c0  mov     x1, #0
  1000716c4  adrp    x8, #0x10041f000
  1000716c8  ldrsw   x8, [x8, #0xcd8]                         ; ivar offset Accessible_ADWeaponDescriptionViewController.weaponInventoryDict (+0x140)
  1000716cc  add     x0, x19, x8
  1000716d0  ldp     x29, x30, [sp, #0x10]
  1000716d4  ldp     x20, x19, [sp], #0x20
  1000716d8  b       _objc_storeStrong
