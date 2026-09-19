// unit ADInventory — 33 functions
//   0x10000c0ac     152  +[ADInventory sharedInventory]
//   0x10000c144     128  -[ADInventory init]
//   0x10000c1c4    3480  -[ADInventory createOrRestoreWeaponDictionary]
//   0x10000cf5c    1328  -[ADInventory setupWeapons]
//   0x10000d48c    1120  -[ADInventory setupPowerups]
//   0x10000d8ec     332  -[ADInventory setWeaponSlot1:]
//   0x10000da38     332  -[ADInventory setWeaponSlot2:]
//   0x10000db84     444  -[ADInventory isWeaponEquipped:]
//   0x10000dd40     332  -[ADInventory setWeaponSlotMelee:]
//   0x10000de8c     332  -[ADInventory setPowerUpSlot:]
//   0x10000dfd8     252  -[ADInventory setCoins:]
//   0x10000e0d4     252  -[ADInventory setDiamonds:]
//   0x10000e1d0     564  -[ADInventory levelForWeaponWithName:]
//   0x10000e404     592  -[ADInventory setLevel:forWeaponWithName:]
//   0x10000e654     564  -[ADInventory levelForPowerUpWithName:]
//   0x10000e888     592  -[ADInventory setLevel:forPowerUpWithName:]
//   0x10000ead8     564  -[ADInventory quantityForPowerUpWithName:]
//   0x10000ed0c     592  -[ADInventory setQuantity:ForPowerUpWithName:]
//   0x10000ef5c     568  -[ADInventory hasUnlockedWeaponWithName:]
//   0x10000f194     420  -[ADInventory getNumberOfWeaponsUnlocked]
//   0x10000f338     668  -[ADInventory unlockWeaponWithName:]
//   0x10000f5d4     276  -[ADInventory saveWeaponDictionary]
//   0x10000f6e8      16  -[ADInventory coins]
//   0x10000f6f8      16  -[ADInventory diamonds]
//   0x10000f708      16  -[ADInventory weapons]
//   0x10000f718      56  -[ADInventory setWeapons:]
//   0x10000f750      16  -[ADInventory powerups]
//   0x10000f760      56  -[ADInventory setPowerups:]
//   0x10000f798      32  -[ADInventory weaponSlot1]
//   0x10000f7b8      32  -[ADInventory weaponSlot2]
//   0x10000f7d8      32  -[ADInventory weaponSlotMelee]
//   0x10000f7f8      32  -[ADInventory powerUpSlot]
//   0x10000f818     128  -[ADInventory .cxx_destruct]

; ======================================================================
; +[ADInventory sharedInventory]
; address 0x10000c0ac  size 152  kind objc
; ======================================================================
  10000c0ac  stp     x20, x19, [sp, #-0x20]!
  10000c0b0  stp     x29, x30, [sp, #0x10]
  10000c0b4  add     x29, sp, #0x10
  10000c0b8  bl      _objc_retain
  10000c0bc  mov     x19, x0
  10000c0c0  bl      _objc_sync_enter                         ; objc_sync_enter(ADInventory)
  10000c0c4  adrp    x20, #0x10042d000
  10000c0c8  ldr     x8, [x20, #0x958]                        ; load g_10042d958
  10000c0cc  cbnz    x8, loc_10000c108                        ; if (g_10042d958 != 0)
  10000c0d0  adrp    x8, #0x10041d000
  10000c0d4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10000c0d8  adrp    x8, #0x100416000
  10000c0dc  nop
  10000c0e0  ldr     x1, [x8, #0xac8]
  10000c0e4  bl      _objc_msgSend                            ; [ADInventory alloc]
  10000c0e8  adrp    x8, #0x100416000
  10000c0ec  nop
  10000c0f0  ldr     x1, [x8, #0xab8]
  10000c0f4  bl      _objc_msgSend                            ; [[ADInventory alloc] init]
  10000c0f8  ldr     x8, [x20, #0x958]                        ; load g_10042d958
  10000c0fc  str     x0, [x20, #0x958]                        ; store g_10042d958 = [[ADInventory alloc] init]
  10000c100  mov     x0, x8
  10000c104  bl      _objc_release
loc_10000c108:
  10000c108  mov     x0, x19
  10000c10c  bl      _objc_sync_exit                          ; objc_sync_exit(ADInventory)
  10000c110  mov     x0, x19
  10000c114  bl      _objc_release
  10000c118  ldr     x0, [x20, #0x958]                        ; load g_10042d958
  10000c11c  ldp     x29, x30, [sp, #0x10]
  10000c120  ldp     x20, x19, [sp], #0x20
  10000c124  b       _objc_retainAutoreleaseReturnValue
  10000c128  mov     x20, x0
  10000c12c  mov     x0, x19
  10000c130  bl      _objc_sync_exit                          ; objc_sync_exit()
  10000c134  mov     x0, x19
  10000c138  bl      _objc_release
  10000c13c  mov     x0, x20
  10000c140  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory init]
; address 0x10000c144  size 128  kind objc
; ======================================================================
  10000c144  stp     x20, x19, [sp, #-0x20]!
  10000c148  stp     x29, x30, [sp, #0x10]
  10000c14c  add     x29, sp, #0x10
  10000c150  sub     sp, sp, #0x10
  10000c154  str     x0, [sp]
  10000c158  adrp    x8, #0x10041e000
  10000c15c  ldr     x8, [x8, #0xbd8]
  10000c160  str     x8, [sp, #8]
  10000c164  adrp    x8, #0x100416000
  10000c168  nop
  10000c16c  ldr     x1, [x8, #0xab8]
  10000c170  mov     x19, #0
  10000c174  mov     x0, sp
  10000c178  bl      _objc_msgSendSuper2                      ; [super init]
  10000c17c  mov     x20, x0
  10000c180  cbz     x20, loc_10000c19c                       ; if (self == 0)
  10000c184  mov     x19, x20
  10000c188  adrp    x8, #0x100417000
  10000c18c  nop
  10000c190  ldr     x1, [x8, #0x78]
  10000c194  mov     x0, x20
  10000c198  bl      _objc_msgSend                            ; [self createOrRestoreWeaponDictionary]
loc_10000c19c:
  10000c19c  mov     x0, x20
  10000c1a0  sub     sp, x29, #0x10
  10000c1a4  ldp     x29, x30, [sp, #0x10]
  10000c1a8  ldp     x20, x19, [sp], #0x20
  10000c1ac  ret
  10000c1b0  mov     x20, x0
  10000c1b4  mov     x0, x19
  10000c1b8  bl      _objc_release
  10000c1bc  mov     x0, x20
  10000c1c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory createOrRestoreWeaponDictionary]
; address 0x10000c1c4  size 3480  kind objc
; ======================================================================
  10000c1c4  stp     x28, x27, [sp, #-0x60]!
  10000c1c8  stp     x26, x25, [sp, #0x10]
  10000c1cc  stp     x24, x23, [sp, #0x20]
  10000c1d0  stp     x22, x21, [sp, #0x30]
  10000c1d4  stp     x20, x19, [sp, #0x40]
  10000c1d8  stp     x29, x30, [sp, #0x50]
  10000c1dc  add     x29, sp, #0x50
  10000c1e0  sub     sp, sp, #0x260
  10000c1e4  mov     x22, x0
  10000c1e8  adrp    x27, #0x1003b0000
  10000c1ec  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10000c1f0  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10000c1f4  stur    x27, [x29, #-0x58]
  10000c1f8  adrp    x25, #0x10041d000
  10000c1fc  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  10000c200  adrp    x8, #0x100416000
  10000c204  nop
  10000c208  ldr     x21, [x8, #0xd98]
  10000c20c  mov     x1, x21
  10000c210  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000c214  mov     x29, x29
  10000c218  bl      _objc_retainAutoreleasedReturnValue
  10000c21c  mov     x26, x0
  10000c220  adrp    x8, #0x100416000
  10000c224  nop
  10000c228  ldr     x19, [x8, #0xda0]
  10000c22c  adrp    x2, #0x1003b9000
  10000c230  add     x2, x2, #0xd50                           ; @"weaponDictionary"
  10000c234  mov     x1, x19
  10000c238  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"]
  10000c23c  mov     x29, x29
  10000c240  bl      _objc_retainAutoreleasedReturnValue
  10000c244  mov     x20, x0
  10000c248  bl      _objc_release
  10000c24c  cbz     x20, loc_10000c4c8                       ; if ([[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"] == 0)
  10000c250  adrp    x8, #0x100417000
  10000c254  nop
  10000c258  ldr     x1, [x8, #0xf8]
  10000c25c  mov     x0, x22
  10000c260  bl      _objc_msgSend                            ; [self setupWeapons]
  10000c264  adrp    x8, #0x100417000
  10000c268  nop
  10000c26c  ldr     x1, [x8, #0x100]
  10000c270  mov     x0, x22
  10000c274  bl      _objc_msgSend                            ; [self setupPowerups]
  10000c278  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  10000c27c  mov     x1, x21
  10000c280  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000c284  mov     x23, x22
  10000c288  mov     x29, x29
  10000c28c  bl      _objc_retainAutoreleasedReturnValue
  10000c290  mov     x20, x0
  10000c294  adrp    x2, #0x1003b9000
  10000c298  add     x2, x2, #0xbb0                           ; @"weaponSlot1"
  10000c29c  mov     x1, x19
  10000c2a0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"weaponSlot1"]
  10000c2a4  mov     x29, x29
  10000c2a8  bl      _objc_retainAutoreleasedReturnValue
  10000c2ac  mov     x22, x0
  10000c2b0  adrp    x8, #0x100416000
  10000c2b4  nop
  10000c2b8  ldr     x1, [x8, #0xf60]
  10000c2bc  mov     x0, x23
  10000c2c0  mov     x2, x22
  10000c2c4  bl      _objc_msgSend                            ; [self setWeaponSlot1:[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponSlot1"]]
  10000c2c8  mov     x0, x22
  10000c2cc  bl      _objc_release
  10000c2d0  mov     x0, x20
  10000c2d4  bl      _objc_release
  10000c2d8  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  10000c2dc  mov     x1, x21
  10000c2e0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000c2e4  mov     x29, x29
  10000c2e8  bl      _objc_retainAutoreleasedReturnValue
  10000c2ec  mov     x20, x0
  10000c2f0  adrp    x2, #0x1003b9000
  10000c2f4  add     x2, x2, #0xbd0                           ; @"weaponSlot2"
  10000c2f8  mov     x1, x19
  10000c2fc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"weaponSlot2"]
  10000c300  mov     x29, x29
  10000c304  bl      _objc_retainAutoreleasedReturnValue
  10000c308  mov     x22, x0
  10000c30c  adrp    x8, #0x100416000
  10000c310  nop
  10000c314  ldr     x1, [x8, #0xf68]
  10000c318  mov     x0, x23
  10000c31c  mov     x2, x22
  10000c320  bl      _objc_msgSend                            ; [self setWeaponSlot2:[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponSlot2"]]
  10000c324  mov     x0, x22
  10000c328  bl      _objc_release
  10000c32c  mov     x0, x20
  10000c330  bl      _objc_release
  10000c334  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  10000c338  mov     x1, x21
  10000c33c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000c340  mov     x29, x29
  10000c344  bl      _objc_retainAutoreleasedReturnValue
  10000c348  mov     x20, x0
  10000c34c  adrp    x2, #0x1003b9000
  10000c350  add     x2, x2, #0xe30                           ; @"weaponSlotMelee"
  10000c354  mov     x1, x19
  10000c358  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"weaponSlotMelee"]
  10000c35c  mov     x29, x29
  10000c360  bl      _objc_retainAutoreleasedReturnValue
  10000c364  mov     x22, x0
  10000c368  adrp    x8, #0x100416000
  10000c36c  nop
  10000c370  ldr     x1, [x8, #0xf70]
  10000c374  mov     x0, x23
  10000c378  mov     x2, x22
  10000c37c  bl      _objc_msgSend                            ; [self setWeaponSlotMelee:[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponSlotMelee"]]
  10000c380  mov     x0, x22
  10000c384  bl      _objc_release
  10000c388  mov     x0, x20
  10000c38c  bl      _objc_release
  10000c390  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  10000c394  mov     x1, x21
  10000c398  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000c39c  mov     x29, x29
  10000c3a0  bl      _objc_retainAutoreleasedReturnValue
  10000c3a4  mov     x20, x0
  10000c3a8  adrp    x2, #0x1003b9000
  10000c3ac  add     x2, x2, #0xe50                           ; @"powerupSlot"
  10000c3b0  mov     x1, x19
  10000c3b4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"powerupSlot"]
  10000c3b8  mov     x29, x29
  10000c3bc  bl      _objc_retainAutoreleasedReturnValue
  10000c3c0  mov     x22, x0
  10000c3c4  adrp    x8, #0x100417000
  10000c3c8  nop
  10000c3cc  ldr     x1, [x8, #0x108]
  10000c3d0  mov     x0, x23
  10000c3d4  mov     x2, x22
  10000c3d8  bl      _objc_msgSend                            ; [self setPowerUpSlot:[[NSUserDefaults standardUserDefaults] valueForKey:@"powerupSlot"]]
  10000c3dc  mov     x0, x22
  10000c3e0  bl      _objc_release
  10000c3e4  mov     x0, x20
  10000c3e8  bl      _objc_release
  10000c3ec  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  10000c3f0  mov     x1, x21
  10000c3f4  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000c3f8  mov     x22, x23
  10000c3fc  mov     x29, x29
  10000c400  bl      _objc_retainAutoreleasedReturnValue
  10000c404  mov     x23, x0
  10000c408  adrp    x2, #0x1003b9000
  10000c40c  add     x2, x2, #0xe70                           ; @"coins"
  10000c410  mov     x1, x19
  10000c414  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"coins"]
  10000c418  mov     x29, x29
  10000c41c  bl      _objc_retainAutoreleasedReturnValue
  10000c420  mov     x24, x0
  10000c424  adrp    x8, #0x100417000
  10000c428  nop
  10000c42c  ldr     x20, [x8, #0x110]
  10000c430  mov     x1, x20
  10000c434  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"coins"] intValue]
  10000c438  mov     x2, x0
  10000c43c  adrp    x8, #0x100417000
  10000c440  nop
  10000c444  ldr     x1, [x8, #0x90]
  10000c448  mov     x0, x22
  10000c44c  bl      _objc_msgSend                            ; [self setCoins:[[[NSUserDefaults standardUserDefaults] valueForKey:@"coins"] intValue]]
  10000c450  mov     x0, x24
  10000c454  bl      _objc_release
  10000c458  mov     x0, x23
  10000c45c  bl      _objc_release
  10000c460  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  10000c464  mov     x1, x21
  10000c468  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000c46c  mov     x29, x29
  10000c470  bl      _objc_retainAutoreleasedReturnValue
  10000c474  mov     x21, x0
  10000c478  adrp    x2, #0x1003b9000
  10000c47c  add     x2, x2, #0xe90                           ; @"diamonds"
  10000c480  mov     x1, x19
  10000c484  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"diamonds"]
  10000c488  mov     x29, x29
  10000c48c  bl      _objc_retainAutoreleasedReturnValue
  10000c490  mov     x19, x0
  10000c494  mov     x1, x20
  10000c498  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"diamonds"] intValue]
  10000c49c  mov     x2, x0
  10000c4a0  adrp    x8, #0x100417000
  10000c4a4  nop
  10000c4a8  ldr     x1, [x8, #0x98]
  10000c4ac  mov     x0, x22
  10000c4b0  bl      _objc_msgSend                            ; [self setDiamonds:[[[NSUserDefaults standardUserDefaults] valueForKey:@"diamonds"] intValue]]
  10000c4b4  mov     x0, x19
  10000c4b8  bl      _objc_release
  10000c4bc  mov     x0, x21
  10000c4c0  bl      _objc_release
  10000c4c4  b       loc_10000ccfc
loc_10000c4c8:
  10000c4c8  adrp    x21, #0x10041d000
  10000c4cc  ldr     x0, [x21, #0xf28]                        ; class NSMutableArray
  10000c4d0  adrp    x8, #0x100416000
  10000c4d4  nop
  10000c4d8  ldr     x1, [x8, #0xac8]
  10000c4dc  str     x1, [sp, #0xc0]
  10000c4e0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10000c4e4  adrp    x8, #0x100416000
  10000c4e8  nop
  10000c4ec  ldr     x19, [x8, #0xab8]
  10000c4f0  mov     x1, x19
  10000c4f4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10000c4f8  mov     x20, x0
  10000c4fc  adrp    x8, #0x100417000
  10000c500  nop
  10000c504  ldr     x1, [x8, #0x80]
  10000c508  mov     x0, x22
  10000c50c  mov     x2, x20
  10000c510  bl      _objc_msgSend                            ; [self setWeapons:[[NSMutableArray alloc] init]]
  10000c514  mov     x0, x20
  10000c518  bl      _objc_release
  10000c51c  ldr     x0, [x21, #0xf28]                        ; class NSMutableArray
  10000c520  ldr     x1, [sp, #0xc0]
  10000c524  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10000c528  mov     x1, x19
  10000c52c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10000c530  mov     x19, x0
  10000c534  adrp    x8, #0x100417000
  10000c538  nop
  10000c53c  ldr     x1, [x8, #0x88]
  10000c540  mov     x0, x22
  10000c544  mov     x2, x19
  10000c548  bl      _objc_msgSend                            ; [self setPowerups:[[NSMutableArray alloc] init]]
  10000c54c  mov     x0, x19
  10000c550  bl      _objc_release
  10000c554  adrp    x8, #0x100417000
  10000c558  nop
  10000c55c  ldr     x1, [x8, #0x90]
  10000c560  mov     w2, #0x1388
  10000c564  mov     x0, x22
  10000c568  bl      _objc_msgSend                            ; [self setCoins:0x1388]
  10000c56c  adrp    x8, #0x100417000
  10000c570  nop
  10000c574  ldr     x1, [x8, #0x98]
  10000c578  mov     w2, #0x1f4
  10000c57c  mov     x0, x22
  10000c580  bl      _objc_msgSend                            ; [self setDiamonds:500]
  10000c584  stp     xzr, xzr, [sp, #0x148]
  10000c588  stp     xzr, xzr, [sp, #0x138]
  10000c58c  stp     xzr, xzr, [sp, #0x128]
  10000c590  stp     xzr, xzr, [sp, #0x118]
  10000c594  adrp    x8, #0x10041d000
  10000c598  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10000c59c  adrp    x8, #0x100417000
  10000c5a0  nop
  10000c5a4  ldr     x20, [x8, #0xa0]
  10000c5a8  mov     x1, x20
  10000c5ac  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10000c5b0  mov     x29, x29
  10000c5b4  bl      _objc_retainAutoreleasedReturnValue
  10000c5b8  mov     x19, x0
  10000c5bc  adrp    x8, #0x100417000
  10000c5c0  nop
  10000c5c4  ldr     x1, [x8, #0xa8]
  10000c5c8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10000c5cc  stp     x20, x26, [sp, #0x28]
  10000c5d0  mov     x29, x29
  10000c5d4  bl      _objc_retainAutoreleasedReturnValue
  10000c5d8  mov     x20, x0
  10000c5dc  str     x20, [sp, #0x70]
  10000c5e0  mov     x0, x19
  10000c5e4  bl      _objc_release
  10000c5e8  adrp    x8, #0x100416000
  10000c5ec  nop
  10000c5f0  ldr     x1, [x8, #0xe00]
  10000c5f4  str     x1, [sp, #0x38]
  10000c5f8  add     x2, sp, #0x118
  10000c5fc  sub     x3, x29, #0xd8
  10000c600  mov     w4, #0x10
  10000c604  mov     x0, x20
  10000c608  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16]
  10000c60c  mov     x24, x0
  10000c610  cbz     x24, loc_10000ca90                       ; if ([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16] == 0)
  10000c614  adrp    x8, #0x100417000
  10000c618  nop
  10000c61c  adrp    x9, #0x100417000
  10000c620  nop
  10000c624  adrp    x10, #0x100417000
  10000c628  nop
  10000c62c  adrp    x11, #0x100416000
  10000c630  nop
  10000c634  ldr     x12, [sp, #0x128]
  10000c638  adrp    x13, #0x100417000
  10000c63c  nop
  10000c640  adrp    x14, #0x100417000
  10000c644  add     x14, x14, #0xc8                          ; &@selector(initWithObjects:forKeys:)
  10000c648  ldr     x26, [x8, #0x40]
  10000c64c  ldr     x8, [x9, #0xb0]
  10000c650  str     x8, [sp, #0xb0]
  10000c654  ldr     x8, [x10, #0xb8]
  10000c658  str     x8, [sp, #0xa0]
  10000c65c  adrp    x8, #0x100417000
  10000c660  nop
  10000c664  adrp    x9, #0x100416000
  10000c668  nop
  10000c66c  ldr     x10, [x11, #0xec0]
  10000c670  str     x10, [sp, #0x98]
  10000c674  ldr     x27, [x13, #0xc0]
  10000c678  adrp    x10, #0x100417000
  10000c67c  nop
  10000c680  adrp    x11, #0x100416000
  10000c684  add     x11, x11, #0xee0                         ; &@selector(weaponSlotMelee)
  10000c688  ldr     x13, [x14]
  10000c68c  str     x13, [sp, #0x90]
  10000c690  ldr     x8, [x8, #0xd0]
  10000c694  str     x8, [sp, #0x88]
  10000c698  ldr     x8, [x9, #0xd90]
  10000c69c  str     x8, [sp, #0x80]
  10000c6a0  ldr     x8, [x12]
  10000c6a4  str     x8, [sp, #0xa8]
  10000c6a8  adrp    x8, #0x100416000
  10000c6ac  nop
  10000c6b0  ldr     x9, [x10, #0xd8]
  10000c6b4  str     x9, [sp, #0x78]
  10000c6b8  ldr     x9, [x11]
  10000c6bc  str     x9, [sp, #0x68]
  10000c6c0  adrp    x9, #0x100416000
  10000c6c4  nop
  10000c6c8  adrp    x10, #0x100416000
  10000c6cc  nop
  10000c6d0  ldr     x8, [x8, #0xf70]
  10000c6d4  str     x8, [sp, #0x50]
  10000c6d8  ldr     x8, [x9, #0xed0]
  10000c6dc  str     x8, [sp, #0x60]
  10000c6e0  adrp    x8, #0x100416000
  10000c6e4  nop
  10000c6e8  adrp    x9, #0x100416000
  10000c6ec  add     x9, x9, #0xf68                           ; &@selector(setWeaponSlot2:)
  10000c6f0  ldr     x10, [x10, #0xf60]
  10000c6f4  str     x10, [sp, #0x48]
  10000c6f8  ldr     x8, [x8, #0xed8]
  10000c6fc  str     x8, [sp, #0x58]
  10000c700  ldr     x8, [x9]
  10000c704  str     x8, [sp, #0x40]
  10000c708  adrp    x28, #0x10041d000
  10000c70c  adrp    x25, #0x10041d000
loc_10000c710:
  10000c710  mov     x23, #0
loc_10000c714:
  10000c714  ldr     x8, [sp, #0x128]
  10000c718  ldr     x8, [x8]
  10000c71c  ldr     x9, [sp, #0xa8]
  10000c720  cmp     x8, x9
  10000c724  b.eq    loc_10000c730                            ; if (x8 == x9)
  10000c728  ldr     x0, [sp, #0x70]
  10000c72c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADWeaponManager sharedWeaponManager] getAllWeaponsArray])
loc_10000c730:
  10000c730  ldr     x8, [sp, #0x120]
  10000c734  ldr     x0, [x8, x23, lsl #3]
  10000c738  str     x0, [sp, #0xc8]
  10000c73c  mov     x1, x26
  10000c740  adrp    x2, #0x1003b9000
  10000c744  add     x2, x2, #0xd70                           ; @"price"
  10000c748  bl      _objc_msgSend                            ; [x0 objectForKey:@"price"]
  10000c74c  mov     x29, x29
  10000c750  bl      _objc_retainAutoreleasedReturnValue
  10000c754  mov     x19, x0
  10000c758  ldr     x1, [sp, #0xb0]
  10000c75c  bl      _objc_msgSend                            ; [[x0 objectForKey:@"price"] integerValue]
  10000c760  cbz     x0, loc_10000c76c                        ; if ([[x0 objectForKey:@"price"] integerValue] == 0)
  10000c764  mov     w21, #0
  10000c768  b       loc_10000c7a4
loc_10000c76c:
  10000c76c  ldr     x0, [sp, #0xc8]
  10000c770  mov     x1, x26
  10000c774  adrp    x2, #0x1003b9000
  10000c778  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  10000c77c  bl      _objc_msgSend                            ; [x0 objectForKey:@"priceInDiamonds"]
  10000c780  mov     x29, x29
  10000c784  bl      _objc_retainAutoreleasedReturnValue
  10000c788  mov     x20, x0
  10000c78c  ldr     x1, [sp, #0xb0]
  10000c790  bl      _objc_msgSend                            ; [[x0 objectForKey:@"priceInDiamonds"] integerValue]
  10000c794  cmp     x0, #0
  10000c798  cset    w21, eq
  10000c79c  mov     x0, x20
  10000c7a0  bl      _objc_release
loc_10000c7a4:
  10000c7a4  mov     x0, x19
  10000c7a8  bl      _objc_release
  10000c7ac  adrp    x8, #0x10041d000
  10000c7b0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10000c7b4  ldr     x1, [sp, #0xc0]
  10000c7b8  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10000c7bc  mov     x19, x0
  10000c7c0  ldr     x20, [x28, #0xf20]                       ; class NSArray
  10000c7c4  ldr     x0, [sp, #0xc8]
  10000c7c8  mov     x1, x26
  10000c7cc  adrp    x2, #0x1003b9000
  10000c7d0  add     x2, x2, #0xdb0                           ; @"name"
  10000c7d4  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000c7d8  str     x19, [sp, #0xd0]
  10000c7dc  mov     x29, x29
  10000c7e0  bl      _objc_retainAutoreleasedReturnValue
  10000c7e4  mov     x19, x0
  10000c7e8  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10000c7ec  ldr     x1, [sp, #0xa0]
  10000c7f0  mov     x2, x21
  10000c7f4  bl      _objc_msgSend                            ; [NSNumber numberWithBool:x2]
  10000c7f8  mov     x29, x29
  10000c7fc  bl      _objc_retainAutoreleasedReturnValue
  10000c800  mov     x21, x0
  10000c804  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10000c808  mov     w2, #1
  10000c80c  ldr     x1, [sp, #0x98]
  10000c810  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10000c814  str     x23, [sp, #0xb8]
  10000c818  mov     x29, x29
  10000c81c  bl      _objc_retainAutoreleasedReturnValue
  10000c820  mov     x25, x0
  10000c824  stp     x25, xzr, [sp, #8]
  10000c828  str     x21, [sp]
  10000c82c  mov     x0, x20
  10000c830  mov     x1, x27
  10000c834  mov     x2, x19
  10000c838  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil]
  10000c83c  mov     x29, x29
  10000c840  bl      _objc_retainAutoreleasedReturnValue
  10000c844  mov     x20, x0
  10000c848  ldr     x0, [x28, #0xf20]                        ; class NSArray
  10000c84c  adrp    x8, #0x1003b9000
  10000c850  add     x8, x8, #0xdf0                           ; @"level"
  10000c854  stp     x8, xzr, [sp, #8]
  10000c858  adrp    x8, #0x1003b9000
  10000c85c  add     x8, x8, #0xdd0                           ; @"purchased"
  10000c860  str     x8, [sp]
  10000c864  mov     x1, x27
  10000c868  adrp    x2, #0x1003b9000
  10000c86c  add     x2, x2, #0xdb0                           ; @"name"
  10000c870  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]
  10000c874  mov     x23, x21
  10000c878  mov     x21, x19
  10000c87c  mov     x19, x28
  10000c880  mov     x28, x27
  10000c884  mov     x27, x26
  10000c888  mov     x26, x24
  10000c88c  mov     x24, x22
  10000c890  mov     x29, x29
  10000c894  bl      _objc_retainAutoreleasedReturnValue
  10000c898  mov     x22, x0
  10000c89c  ldr     x0, [sp, #0xd0]
  10000c8a0  ldr     x1, [sp, #0x90]
  10000c8a4  mov     x2, x20
  10000c8a8  mov     x3, x22
  10000c8ac  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]]
  10000c8b0  str     x0, [sp, #0xd0]
  10000c8b4  mov     x0, x22
  10000c8b8  bl      _objc_release
  10000c8bc  mov     x0, x20
  10000c8c0  bl      _objc_release
  10000c8c4  mov     x0, x25
  10000c8c8  bl      _objc_release
  10000c8cc  mov     x0, x23
  10000c8d0  bl      _objc_release
  10000c8d4  mov     x0, x21
  10000c8d8  bl      _objc_release
  10000c8dc  mov     x22, x24
  10000c8e0  mov     x0, x22
  10000c8e4  ldr     x1, [sp, #0x88]
  10000c8e8  bl      _objc_msgSend                            ; [self weapons]
  10000c8ec  mov     x24, x26
  10000c8f0  mov     x26, x27
  10000c8f4  mov     x27, x28
  10000c8f8  mov     x28, x19
  10000c8fc  adrp    x25, #0x10041d000
  10000c900  ldr     x23, [sp, #0xb8]
  10000c904  mov     x29, x29
  10000c908  bl      _objc_retainAutoreleasedReturnValue
  10000c90c  mov     x19, x0
  10000c910  ldr     x1, [sp, #0x80]
  10000c914  ldr     x2, [sp, #0xd0]
  10000c918  bl      _objc_msgSend                            ; [[self weapons] addObject:[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]]]
  10000c91c  mov     x0, x19
  10000c920  bl      _objc_release
  10000c924  ldr     x0, [sp, #0xc8]
  10000c928  mov     x1, x26
  10000c92c  adrp    x2, #0x1003b9000
  10000c930  add     x2, x2, #0xe10                           ; @"melee"
  10000c934  bl      _objc_msgSend                            ; [x0 objectForKey:@"melee"]
  10000c938  mov     x29, x29
  10000c93c  bl      _objc_retainAutoreleasedReturnValue
  10000c940  mov     x19, x0
  10000c944  ldr     x1, [sp, #0x78]
  10000c948  bl      _objc_msgSend                            ; [[x0 objectForKey:@"melee"] boolValue]
  10000c94c  mov     x20, x0
  10000c950  mov     x0, x19
  10000c954  bl      _objc_release
  10000c958  cbz     w20, loc_10000c9b0                       ; if ([[x0 objectForKey:@"melee"] boolValue] == 0)
  10000c95c  mov     x0, x22
  10000c960  ldr     x1, [sp, #0x68]
  10000c964  bl      _objc_msgSend                            ; [self weaponSlotMelee]
  10000c968  mov     x29, x29
  10000c96c  bl      _objc_retainAutoreleasedReturnValue
  10000c970  mov     x19, x0
  10000c974  bl      _objc_release
  10000c978  cbnz    x19, loc_10000ca5c                       ; if ([self weaponSlotMelee] != 0)
  10000c97c  ldr     x0, [sp, #0xd0]
  10000c980  mov     x1, x26
  10000c984  adrp    x2, #0x1003b9000
  10000c988  add     x2, x2, #0xdb0                           ; @"name"
  10000c98c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]] objectForKey:@"name"]
  10000c990  mov     x29, x29
  10000c994  bl      _objc_retainAutoreleasedReturnValue
  10000c998  mov     x19, x0
  10000c99c  mov     x0, x22
  10000c9a0  ldr     x1, [sp, #0x50]
  10000c9a4  mov     x2, x19
  10000c9a8  bl      _objc_msgSend                            ; [self setWeaponSlotMelee:[[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]] objectForKey:@"name"]]
  10000c9ac  b       loc_10000ca54
loc_10000c9b0:
  10000c9b0  mov     x0, x22
  10000c9b4  ldr     x1, [sp, #0x60]
  10000c9b8  bl      _objc_msgSend                            ; [self weaponSlot1]
  10000c9bc  mov     x29, x29
  10000c9c0  bl      _objc_retainAutoreleasedReturnValue
  10000c9c4  mov     x19, x0
  10000c9c8  bl      _objc_release
  10000c9cc  cbz     x19, loc_10000ca24                       ; if ([self weaponSlot1] == 0)
  10000c9d0  mov     x0, x22
  10000c9d4  ldr     x1, [sp, #0x58]
  10000c9d8  bl      _objc_msgSend                            ; [self weaponSlot2]
  10000c9dc  mov     x29, x29
  10000c9e0  bl      _objc_retainAutoreleasedReturnValue
  10000c9e4  mov     x19, x0
  10000c9e8  bl      _objc_release
  10000c9ec  cbnz    x19, loc_10000ca5c                       ; if ([self weaponSlot2] != 0)
  10000c9f0  ldr     x0, [sp, #0xd0]
  10000c9f4  mov     x1, x26
  10000c9f8  adrp    x2, #0x1003b9000
  10000c9fc  add     x2, x2, #0xdb0                           ; @"name"
  10000ca00  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]] objectForKey:@"name"]
  10000ca04  mov     x29, x29
  10000ca08  bl      _objc_retainAutoreleasedReturnValue
  10000ca0c  mov     x19, x0
  10000ca10  mov     x0, x22
  10000ca14  ldr     x1, [sp, #0x40]
  10000ca18  mov     x2, x19
  10000ca1c  bl      _objc_msgSend                            ; [self setWeaponSlot2:[[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]] objectForKey:@"name"]]
  10000ca20  b       loc_10000ca54
loc_10000ca24:
  10000ca24  ldr     x0, [sp, #0xd0]
  10000ca28  mov     x1, x26
  10000ca2c  adrp    x2, #0x1003b9000
  10000ca30  add     x2, x2, #0xdb0                           ; @"name"
  10000ca34  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]] objectForKey:@"name"]
  10000ca38  mov     x29, x29
  10000ca3c  bl      _objc_retainAutoreleasedReturnValue
  10000ca40  mov     x19, x0
  10000ca44  mov     x0, x22
  10000ca48  ldr     x1, [sp, #0x48]
  10000ca4c  mov     x2, x19
  10000ca50  bl      _objc_msgSend                            ; [self setWeaponSlot1:[[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:x2], [NSNumber numberWithInt:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"purchased", @"level", nil]] objectForKey:@"name"]]
loc_10000ca54:
  10000ca54  mov     x0, x19
  10000ca58  bl      _objc_release
loc_10000ca5c:
  10000ca5c  ldr     x0, [sp, #0xd0]
  10000ca60  bl      _objc_release
  10000ca64  add     x23, x23, #1
  10000ca68  cmp     x23, x24
  10000ca6c  b.lo    loc_10000c714                            ; if ((x23 + 1) <u [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] c…)
  10000ca70  add     x2, sp, #0x118
  10000ca74  sub     x3, x29, #0xd8
  10000ca78  mov     w4, #0x10
  10000ca7c  ldr     x0, [sp, #0x70]
  10000ca80  ldr     x1, [sp, #0x38]
  10000ca84  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16]
  10000ca88  mov     x24, x0
  10000ca8c  cbnz    x24, loc_10000c710                       ; if ([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] countByEnumeratingWithState:&sp[0x118] objects:&x29[-0xd8] count:16] != 0)
loc_10000ca90:
  10000ca90  ldr     x0, [sp, #0x70]
  10000ca94  bl      _objc_release
  10000ca98  stp     xzr, xzr, [sp, #0x108]
  10000ca9c  stp     xzr, xzr, [sp, #0xf8]
  10000caa0  stp     xzr, xzr, [sp, #0xe8]
  10000caa4  stp     xzr, xzr, [sp, #0xd8]
  10000caa8  adrp    x8, #0x10041d000
  10000caac  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10000cab0  ldp     x1, x26, [sp, #0x28]
  10000cab4  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10000cab8  mov     x29, x29
  10000cabc  bl      _objc_retainAutoreleasedReturnValue
  10000cac0  mov     x19, x0
  10000cac4  adrp    x8, #0x100417000
  10000cac8  nop
  10000cacc  ldr     x1, [x8, #0xe0]
  10000cad0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray]
  10000cad4  str     x22, [sp, #0xd0]
  10000cad8  mov     x29, x29
  10000cadc  bl      _objc_retainAutoreleasedReturnValue
  10000cae0  mov     x20, x0
  10000cae4  str     x20, [sp, #0x90]
  10000cae8  mov     x0, x19
  10000caec  bl      _objc_release
  10000caf0  add     x2, sp, #0xd8
  10000caf4  add     x3, sp, #0x158
  10000caf8  mov     w4, #0x10
  10000cafc  mov     x0, x20
  10000cb00  ldr     x1, [sp, #0x38]
  10000cb04  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16]
  10000cb08  mov     x19, x0
  10000cb0c  cbz     x19, loc_10000cce0                       ; if ([[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16] == 0)
  10000cb10  ldr     x8, [sp, #0xe8]
  10000cb14  adrp    x9, #0x100417000
  10000cb18  nop
  10000cb1c  ldr     x8, [x8]
  10000cb20  str     x8, [sp, #0xc8]
  10000cb24  ldr     x8, [x9, #0x40]
  10000cb28  str     x8, [sp, #0xb8]
  10000cb2c  adrp    x8, #0x100417000
  10000cb30  nop
  10000cb34  adrp    x9, #0x100417000
  10000cb38  nop
  10000cb3c  ldr     x8, [x8, #0xe8]
  10000cb40  str     x8, [sp, #0xb0]
  10000cb44  ldr     x25, [x9, #0xc0]
  10000cb48  adrp    x8, #0x100417000
  10000cb4c  nop
  10000cb50  adrp    x9, #0x100417000
  10000cb54  add     x9, x9, #0xf0                            ; &@selector(powerups)
  10000cb58  ldr     x8, [x8, #0xc8]
  10000cb5c  str     x8, [sp, #0xa8]
  10000cb60  ldr     x8, [x9]
  10000cb64  str     x8, [sp, #0xa0]
  10000cb68  adrp    x8, #0x100416000
  10000cb6c  nop
  10000cb70  ldr     x8, [x8, #0xd90]
  10000cb74  str     x8, [sp, #0x98]
  10000cb78  adrp    x27, #0x10041d000
  10000cb7c  adrp    x22, #0x1003b9000
  10000cb80  add     x22, x22, #0xdb0                         ; @"name"
loc_10000cb84:
  10000cb84  mov     x28, #0
loc_10000cb88:
  10000cb88  ldr     x8, [sp, #0xe8]
  10000cb8c  ldr     x8, [x8]
  10000cb90  ldr     x9, [sp, #0xc8]
  10000cb94  cmp     x8, x9
  10000cb98  b.eq    loc_10000cba4                            ; if (x8 == x9)
  10000cb9c  ldr     x0, [sp, #0x90]
  10000cba0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray])
loc_10000cba4:
  10000cba4  ldr     x8, [sp, #0xe0]
  10000cba8  ldr     x20, [x8, x28, lsl #3]
  10000cbac  adrp    x8, #0x10041d000
  10000cbb0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10000cbb4  ldr     x1, [sp, #0xc0]
  10000cbb8  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10000cbbc  mov     x23, x0
  10000cbc0  ldr     x24, [x27, #0xf20]                       ; class NSArray
  10000cbc4  mov     x0, x20
  10000cbc8  ldr     x1, [sp, #0xb8]
  10000cbcc  mov     x2, x22
  10000cbd0  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000cbd4  mov     x29, x29
  10000cbd8  bl      _objc_retainAutoreleasedReturnValue
  10000cbdc  mov     x21, x0
  10000cbe0  adrp    x8, #0x10041d000
  10000cbe4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10000cbe8  mov     w2, #1
  10000cbec  ldr     x1, [sp, #0xb0]
  10000cbf0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:1]
  10000cbf4  mov     x29, x29
  10000cbf8  bl      _objc_retainAutoreleasedReturnValue
  10000cbfc  mov     x20, x0
  10000cc00  stp     x20, xzr, [sp]
  10000cc04  mov     x0, x24
  10000cc08  mov     x1, x25
  10000cc0c  mov     x2, x21
  10000cc10  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithInteger:1], nil]
  10000cc14  mov     x29, x29
  10000cc18  bl      _objc_retainAutoreleasedReturnValue
  10000cc1c  mov     x24, x0
  10000cc20  ldr     x0, [x27, #0xf20]                        ; class NSArray
  10000cc24  adrp    x8, #0x1003b9000
  10000cc28  add     x8, x8, #0xdf0                           ; @"level"
  10000cc2c  stp     x8, xzr, [sp]
  10000cc30  mov     x1, x25
  10000cc34  mov     x2, x22
  10000cc38  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"name", @"level", nil]
  10000cc3c  mov     x29, x29
  10000cc40  bl      _objc_retainAutoreleasedReturnValue
  10000cc44  mov     x26, x0
  10000cc48  mov     x0, x23
  10000cc4c  ldr     x1, [sp, #0xa8]
  10000cc50  mov     x2, x24
  10000cc54  mov     x3, x26
  10000cc58  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithInteger:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"level", nil]]
  10000cc5c  mov     x23, x0
  10000cc60  mov     x0, x26
  10000cc64  bl      _objc_release
  10000cc68  mov     x0, x24
  10000cc6c  bl      _objc_release
  10000cc70  mov     x0, x20
  10000cc74  bl      _objc_release
  10000cc78  mov     x0, x21
  10000cc7c  bl      _objc_release
  10000cc80  ldr     x0, [sp, #0xd0]
  10000cc84  ldr     x1, [sp, #0xa0]
  10000cc88  bl      _objc_msgSend                            ; [self powerups]
  10000cc8c  mov     x29, x29
  10000cc90  bl      _objc_retainAutoreleasedReturnValue
  10000cc94  mov     x20, x0
  10000cc98  ldr     x1, [sp, #0x98]
  10000cc9c  mov     x2, x23
  10000cca0  bl      _objc_msgSend                            ; [[self powerups] addObject:[[NSMutableDictionary alloc] initWithObjects:[NSArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithInteger:1], nil] forKeys:[NSArray arrayWithObjects:@"name", @"level", nil]]]
  10000cca4  mov     x0, x20
  10000cca8  bl      _objc_release
  10000ccac  mov     x0, x23
  10000ccb0  bl      _objc_release
  10000ccb4  add     x28, x28, #1
  10000ccb8  cmp     x28, x19
  10000ccbc  b.lo    loc_10000cb88                            ; if ((x28 + 1) <u [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] co…)
  10000ccc0  add     x2, sp, #0xd8
  10000ccc4  add     x3, sp, #0x158
  10000ccc8  mov     w4, #0x10
  10000cccc  ldr     x0, [sp, #0x90]
  10000ccd0  ldr     x1, [sp, #0x38]
  10000ccd4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16]
  10000ccd8  mov     x19, x0
  10000ccdc  cbnz    x19, loc_10000cb84                       ; if ([[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] countByEnumeratingWithState:&sp[0xd8] objects:&sp[0x158] count:16] != 0)
loc_10000cce0:
  10000cce0  ldr     x0, [sp, #0x90]
  10000cce4  bl      _objc_release
  10000cce8  ldr     x26, [sp, #0x30]
  10000ccec  adrp    x27, #0x1003b0000
  10000ccf0  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10000ccf4  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  10000ccf8  ldr     x22, [sp, #0xd0]
loc_10000ccfc:
  10000ccfc  adrp    x8, #0x100417000
  10000cd00  nop
  10000cd04  ldr     x1, [x8, #0x118]
  10000cd08  mov     x0, x22
  10000cd0c  bl      _objc_msgSend                            ; [self saveWeaponDictionary]
  10000cd10  mov     x0, x26
  10000cd14  bl      _objc_release
  10000cd18  ldur    x8, [x29, #-0x58]
  10000cd1c  sub     x8, x27, x8
  10000cd20  cbnz    x8, loc_10000cd44                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000cd24  sub     sp, x29, #0x50
  10000cd28  ldp     x29, x30, [sp, #0x50]
  10000cd2c  ldp     x20, x19, [sp, #0x40]
  10000cd30  ldp     x22, x21, [sp, #0x30]
  10000cd34  ldp     x24, x23, [sp, #0x20]
  10000cd38  ldp     x26, x25, [sp, #0x10]
  10000cd3c  ldp     x28, x27, [sp], #0x60
  10000cd40  ret
loc_10000cd44:
  10000cd44  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10000cd48  mov     x27, x0
  10000cd4c  b       loc_10000cde4
loc_10000cd50:
  10000cd50  mov     x27, x0
  10000cd54  b       loc_10000ce78
loc_10000cd58:
  10000cd58  mov     x27, x0
  10000cd5c  b       loc_10000ce54
  10000cd60  mov     x27, x0
  10000cd64  b       loc_10000ce70
  10000cd68  mov     x27, x0
  10000cd6c  ldr     x26, [sp, #0x30]
  10000cd70  b       loc_10000cdc8
  10000cd74  mov     x27, x0
  10000cd78  ldr     x26, [sp, #0x30]
  10000cd7c  b       loc_10000cdc0
  10000cd80  mov     x27, x0
  10000cd84  ldr     x26, [sp, #0x30]
  10000cd88  b       loc_10000cdb8
  10000cd8c  mov     x27, x0
  10000cd90  ldr     x26, [sp, #0x30]
  10000cd94  b       loc_10000cdb0
  10000cd98  mov     x27, x0
  10000cd9c  mov     x0, x22
  10000cda0  bl      _objc_release
  10000cda4  ldr     x26, [sp, #0x30]
  10000cda8  mov     x19, x21
  10000cdac  mov     x21, x23
loc_10000cdb0:
  10000cdb0  mov     x0, x20
  10000cdb4  bl      _objc_release
loc_10000cdb8:
  10000cdb8  mov     x0, x25
  10000cdbc  bl      _objc_release
loc_10000cdc0:
  10000cdc0  mov     x0, x21
  10000cdc4  bl      _objc_release
loc_10000cdc8:
  10000cdc8  mov     x0, x19
  10000cdcc  bl      _objc_release
  10000cdd0  b       loc_10000ce7c
  10000cdd4  b       loc_10000cdd8
loc_10000cdd8:
  10000cdd8  mov     x27, x0
  10000cddc  mov     x0, x19
  10000cde0  bl      _objc_release
loc_10000cde4:
  10000cde4  ldr     x0, [sp, #0xd0]
  10000cde8  b       loc_10000ce74
  10000cdec  mov     x27, x0
  10000cdf0  ldr     x26, [sp, #0x30]
  10000cdf4  b       loc_10000ce2c
  10000cdf8  mov     x27, x0
  10000cdfc  ldr     x26, [sp, #0x30]
  10000ce00  b       loc_10000ce24
  10000ce04  mov     x27, x0
  10000ce08  b       loc_10000ce18
  10000ce0c  mov     x27, x0
  10000ce10  mov     x0, x26
  10000ce14  bl      _objc_release
loc_10000ce18:
  10000ce18  ldr     x26, [sp, #0x30]
  10000ce1c  mov     x0, x24
  10000ce20  bl      _objc_release
loc_10000ce24:
  10000ce24  mov     x0, x20
  10000ce28  bl      _objc_release
loc_10000ce2c:
  10000ce2c  mov     x0, x21
  10000ce30  bl      _objc_release
  10000ce34  b       loc_10000ce58
  10000ce38  mov     x27, x0
  10000ce3c  b       loc_10000ce4c
  10000ce40  mov     x27, x0
  10000ce44  mov     x0, x20
  10000ce48  bl      _objc_release
loc_10000ce4c:
  10000ce4c  mov     x0, x23
  10000ce50  bl      _objc_release
loc_10000ce54:
  10000ce54  ldr     x26, [sp, #0x30]
loc_10000ce58:
  10000ce58  ldr     x0, [sp, #0x90]
  10000ce5c  bl      _objc_release
  10000ce60  b       loc_10000ce84
  10000ce64  mov     x27, x0
  10000ce68  mov     x0, x20
  10000ce6c  bl      _objc_release
loc_10000ce70:
  10000ce70  mov     x0, x19
loc_10000ce74:
  10000ce74  bl      _objc_release
loc_10000ce78:
  10000ce78  ldr     x26, [sp, #0x30]
loc_10000ce7c:
  10000ce7c  ldr     x0, [sp, #0x70]
  10000ce80  bl      _objc_release
loc_10000ce84:
  10000ce84  mov     x0, x26
  10000ce88  bl      _objc_release
  10000ce8c  mov     x0, x27
  10000ce90  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000ce94  b       loc_10000cdd8
  10000ce98  b       loc_10000cdd8
  10000ce9c  b       loc_10000cdd8
  10000cea0  mov     x27, x0
  10000cea4  b       loc_10000ce84
  10000cea8  b       loc_10000cd50
  10000ceac  b       loc_10000cd58
  10000ceb0  mov     x27, x0
  10000ceb4  mov     x0, x24
  10000ceb8  bl      _objc_release
  10000cebc  b       loc_10000cf18
  10000cec0  mov     x27, x0
  10000cec4  mov     x0, x19
  10000cec8  bl      _objc_release
  10000cecc  b       loc_10000cf28
  10000ced0  mov     x27, x0
  10000ced4  b       loc_10000cf08
  10000ced8  b       loc_10000cefc
  10000cedc  mov     x27, x0
  10000cee0  b       loc_10000cf08
  10000cee4  b       loc_10000cefc
  10000cee8  mov     x27, x0
  10000ceec  b       loc_10000cf08
  10000cef0  b       loc_10000cefc
  10000cef4  mov     x27, x0
  10000cef8  b       loc_10000cf08
loc_10000cefc:
  10000cefc  mov     x27, x0
  10000cf00  mov     x0, x22
  10000cf04  bl      _objc_release
loc_10000cf08:
  10000cf08  mov     x0, x20
  10000cf0c  bl      _objc_release
  10000cf10  b       loc_10000ce84
  10000cf14  mov     x27, x0
loc_10000cf18:
  10000cf18  mov     x0, x23
  10000cf1c  bl      _objc_release
  10000cf20  b       loc_10000ce84
  10000cf24  mov     x27, x0
loc_10000cf28:
  10000cf28  mov     x0, x21
  10000cf2c  bl      _objc_release
  10000cf30  b       loc_10000ce84
  10000cf34  mov     x27, x0
  10000cf38  b       loc_10000cf08
  10000cf3c  b       loc_10000cf48
  10000cf40  b       loc_10000cf48
  10000cf44  b       loc_10000cd50
loc_10000cf48:
  10000cf48  mov     x27, x0
  10000cf4c  mov     x0, x19
  10000cf50  bl      _objc_release
  10000cf54  b       loc_10000ce84
  10000cf58  b       loc_10000cd58

; ======================================================================
; -[ADInventory setupWeapons]
; address 0x10000cf5c  size 1328  kind objc
; ======================================================================
  10000cf5c  stp     x28, x27, [sp, #-0x60]!
  10000cf60  stp     x26, x25, [sp, #0x10]
  10000cf64  stp     x24, x23, [sp, #0x20]
  10000cf68  stp     x22, x21, [sp, #0x30]
  10000cf6c  stp     x20, x19, [sp, #0x40]
  10000cf70  stp     x29, x30, [sp, #0x50]
  10000cf74  add     x29, sp, #0x50
  10000cf78  sub     sp, sp, #0x170
  10000cf7c  str     x0, [sp, #0x90]
  10000cf80  adrp    x8, #0x1003b0000
  10000cf84  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000cf88  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000cf8c  stur    x8, [x29, #-0x58]
  10000cf90  adrp    x8, #0x10041d000
  10000cf94  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000cf98  adrp    x8, #0x100416000
  10000cf9c  nop
  10000cfa0  ldr     x1, [x8, #0xd98]
  10000cfa4  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000cfa8  mov     x29, x29
  10000cfac  bl      _objc_retainAutoreleasedReturnValue
  10000cfb0  mov     x19, x0
  10000cfb4  adrp    x8, #0x100416000
  10000cfb8  nop
  10000cfbc  ldr     x1, [x8, #0xda0]
  10000cfc0  str     x1, [sp, #0x80]
  10000cfc4  adrp    x2, #0x1003b9000
  10000cfc8  add     x2, x2, #0xd50                           ; @"weaponDictionary"
  10000cfcc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"]
  10000cfd0  mov     x29, x29
  10000cfd4  bl      _objc_retainAutoreleasedReturnValue
  10000cfd8  mov     x23, x0
  10000cfdc  mov     x0, x19
  10000cfe0  bl      _objc_release
  10000cfe4  adrp    x8, #0x10041d000
  10000cfe8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10000cfec  adrp    x8, #0x100416000
  10000cff0  nop
  10000cff4  ldr     x1, [x8, #0xac8]
  10000cff8  str     x1, [sp, #0x88]
  10000cffc  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10000d000  adrp    x8, #0x100416000
  10000d004  nop
  10000d008  ldr     x1, [x8, #0xab8]
  10000d00c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10000d010  mov     x19, x0
  10000d014  adrp    x8, #0x100417000
  10000d018  nop
  10000d01c  ldr     x1, [x8, #0x80]
  10000d020  ldr     x0, [sp, #0x90]
  10000d024  mov     x2, x19
  10000d028  bl      _objc_msgSend                            ; [self setWeapons:[[NSMutableArray alloc] init]]
  10000d02c  mov     x0, x19
  10000d030  bl      _objc_release
  10000d034  stp     xzr, xzr, [sp, #0xd8]
  10000d038  stp     xzr, xzr, [sp, #0xc8]
  10000d03c  stp     xzr, xzr, [sp, #0xb8]
  10000d040  stp     xzr, xzr, [sp, #0xa8]
  10000d044  mov     x0, x23
  10000d048  str     x23, [sp, #0x28]
  10000d04c  bl      _objc_retain
  10000d050  str     x0, [sp, #0x38]
  10000d054  adrp    x8, #0x100416000
  10000d058  nop
  10000d05c  ldr     x1, [x8, #0xe00]
  10000d060  str     x1, [sp, #0x30]
  10000d064  add     x2, sp, #0xa8
  10000d068  sub     x3, x29, #0xd8
  10000d06c  mov     w4, #0x10
  10000d070  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  10000d074  mov     x27, x0
  10000d078  cbz     x27, loc_10000d340                       ; if ([[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] == 0)
  10000d07c  ldr     x8, [sp, #0xb8]
  10000d080  adrp    x9, #0x100417000
  10000d084  nop
  10000d088  adrp    x10, #0x100417000
  10000d08c  add     x10, x10, #0xb0                          ; &@selector(integerValue)
  10000d090  adrp    x11, #0x100417000
  10000d094  add     x11, x11, #0xb8                          ; &@selector(numberWithBool:)
  10000d098  adrp    x12, #0x100417000
  10000d09c  add     x12, x12, #0x110                         ; &@selector(intValue)
  10000d0a0  ldr     x20, [x9, #0x40]
  10000d0a4  ldr     x9, [x10]
  10000d0a8  str     x9, [sp, #0x70]
  10000d0ac  ldr     x9, [x11]
  10000d0b0  str     x9, [sp, #0x68]
  10000d0b4  ldr     x8, [x8]
  10000d0b8  str     x8, [sp, #0x78]
  10000d0bc  ldr     x8, [x12]
  10000d0c0  str     x8, [sp, #0x60]
  10000d0c4  adrp    x8, #0x100416000
  10000d0c8  nop
  10000d0cc  ldr     x8, [x8, #0xec0]
  10000d0d0  str     x8, [sp, #0x58]
  10000d0d4  adrp    x8, #0x100417000
  10000d0d8  nop
  10000d0dc  ldr     x24, [x8, #0xc0]
  10000d0e0  adrp    x8, #0x100417000
  10000d0e4  nop
  10000d0e8  ldr     x8, [x8, #0xc8]
  10000d0ec  str     x8, [sp, #0x50]
  10000d0f0  adrp    x8, #0x100417000
  10000d0f4  nop
  10000d0f8  ldr     x8, [x8, #0xd0]
  10000d0fc  str     x8, [sp, #0x48]
  10000d100  adrp    x8, #0x100416000
  10000d104  nop
  10000d108  ldr     x8, [x8, #0xd90]
  10000d10c  str     x8, [sp, #0x40]
  10000d110  adrp    x25, #0x10041d000
loc_10000d114:
  10000d114  mov     x26, #0
loc_10000d118:
  10000d118  ldr     x8, [sp, #0xb8]
  10000d11c  ldr     x8, [x8]
  10000d120  ldr     x9, [sp, #0x78]
  10000d124  cmp     x8, x9
  10000d128  b.eq    loc_10000d134                            ; if (x8 == x9)
  10000d12c  ldr     x0, [sp, #0x38]
  10000d130  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"])
loc_10000d134:
  10000d134  ldr     x8, [sp, #0xb0]
  10000d138  ldr     x19, [x8, x26, lsl #3]
  10000d13c  adrp    x8, #0x10041d000
  10000d140  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10000d144  ldr     x1, [sp, #0x88]
  10000d148  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10000d14c  mov     x23, x0
  10000d150  adrp    x8, #0x10041d000
  10000d154  ldr     x28, [x8, #0xf28]                        ; class NSMutableArray
  10000d158  mov     x0, x19
  10000d15c  mov     x1, x20
  10000d160  adrp    x2, #0x1003b9000
  10000d164  add     x2, x2, #0xdb0                           ; @"name"
  10000d168  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000d16c  mov     x29, x29
  10000d170  bl      _objc_retainAutoreleasedReturnValue
  10000d174  str     x0, [sp, #0xa0]
  10000d178  ldr     x22, [x25, #0xf68]                       ; class NSNumber
  10000d17c  mov     x0, x19
  10000d180  mov     x1, x20
  10000d184  adrp    x2, #0x1003b9000
  10000d188  add     x2, x2, #0xdd0                           ; @"purchased"
  10000d18c  bl      _objc_msgSend                            ; [x0 objectForKey:@"purchased"]
  10000d190  mov     x29, x29
  10000d194  bl      _objc_retainAutoreleasedReturnValue
  10000d198  mov     x21, x0
  10000d19c  ldr     x1, [sp, #0x70]
  10000d1a0  bl      _objc_msgSend                            ; [[x0 objectForKey:@"purchased"] integerValue]
  10000d1a4  cmp     x0, #0
  10000d1a8  cset    w2, ne
  10000d1ac  mov     x0, x22
  10000d1b0  ldr     x1, [sp, #0x68]
  10000d1b4  bl      _objc_msgSend                            ; [NSNumber numberWithBool:([[x0 objectForKey:@"purchased"] integerValue] != 0)]
  10000d1b8  str     x21, [sp, #0x98]
  10000d1bc  mov     x21, x24
  10000d1c0  mov     x29, x29
  10000d1c4  bl      _objc_retainAutoreleasedReturnValue
  10000d1c8  mov     x22, x0
  10000d1cc  ldr     x25, [x25, #0xf68]                       ; class NSNumber
  10000d1d0  mov     x0, x19
  10000d1d4  ldr     x1, [sp, #0x80]
  10000d1d8  adrp    x2, #0x1003b9000
  10000d1dc  add     x2, x2, #0xdf0                           ; @"level"
  10000d1e0  bl      _objc_msgSend                            ; [x0 valueForKey:@"level"]
  10000d1e4  mov     x24, x20
  10000d1e8  mov     x20, x27
  10000d1ec  mov     x29, x29
  10000d1f0  bl      _objc_retainAutoreleasedReturnValue
  10000d1f4  mov     x27, x0
  10000d1f8  ldr     x1, [sp, #0x60]
  10000d1fc  bl      _objc_msgSend                            ; [[x0 valueForKey:@"level"] intValue]
  10000d200  mov     x2, x0
  10000d204  mov     x0, x25
  10000d208  ldr     x1, [sp, #0x58]
  10000d20c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:[[x0 valueForKey:@"level"] intValue]]
  10000d210  mov     x29, x29
  10000d214  bl      _objc_retainAutoreleasedReturnValue
  10000d218  mov     x19, x0
  10000d21c  stp     x19, xzr, [sp, #8]
  10000d220  str     x22, [sp]
  10000d224  mov     x0, x28
  10000d228  mov     x25, x21
  10000d22c  mov     x1, x25
  10000d230  ldr     x2, [sp, #0xa0]
  10000d234  bl      _objc_msgSend                            ; [NSMutableArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:([[x0 objectForKey:@"purchased"] in…, [NSNumber numberWithInt:[[x0 valueForKey:@"level"] intValue]…, nil]
  10000d238  mov     x29, x29
  10000d23c  bl      _objc_retainAutoreleasedReturnValue
  10000d240  mov     x28, x0
  10000d244  adrp    x8, #0x10041d000
  10000d248  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10000d24c  adrp    x8, #0x1003b9000
  10000d250  add     x8, x8, #0xdf0                           ; @"level"
  10000d254  stp     x8, xzr, [sp, #8]
  10000d258  adrp    x8, #0x1003b9000
  10000d25c  add     x8, x8, #0xdd0                           ; @"purchased"
  10000d260  str     x8, [sp]
  10000d264  mov     x1, x25
  10000d268  adrp    x2, #0x1003b9000
  10000d26c  add     x2, x2, #0xdb0                           ; @"name"
  10000d270  bl      _objc_msgSend                            ; [NSMutableArray arrayWithObjects:@"name", @"purchased", @"level", nil]
  10000d274  mov     x21, x25
  10000d278  mov     x29, x29
  10000d27c  bl      _objc_retainAutoreleasedReturnValue
  10000d280  mov     x25, x0
  10000d284  mov     x0, x23
  10000d288  ldr     x1, [sp, #0x50]
  10000d28c  mov     x2, x28
  10000d290  mov     x3, x25
  10000d294  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithObjects:[NSMutableArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:([[x0 objectForKey:@"purchased"] in…, [NSNumber numberWithInt:[[x0 valueForKey:@"level"] intValue]…, nil] forKeys:[NSMutableArray arrayWithObjects:@"name", @"purchased", @"level", nil]]
  10000d298  mov     x23, x0
  10000d29c  mov     x0, x25
  10000d2a0  bl      _objc_release
  10000d2a4  mov     x0, x28
  10000d2a8  bl      _objc_release
  10000d2ac  mov     x0, x19
  10000d2b0  bl      _objc_release
  10000d2b4  mov     x0, x27
  10000d2b8  bl      _objc_release
  10000d2bc  mov     x0, x22
  10000d2c0  bl      _objc_release
  10000d2c4  ldr     x0, [sp, #0x98]
  10000d2c8  bl      _objc_release
  10000d2cc  ldr     x0, [sp, #0xa0]
  10000d2d0  bl      _objc_release
  10000d2d4  ldr     x0, [sp, #0x90]
  10000d2d8  ldr     x1, [sp, #0x48]
  10000d2dc  bl      _objc_msgSend                            ; [self weapons]
  10000d2e0  mov     x29, x29
  10000d2e4  bl      _objc_retainAutoreleasedReturnValue
  10000d2e8  mov     x19, x0
  10000d2ec  ldr     x1, [sp, #0x40]
  10000d2f0  mov     x2, x23
  10000d2f4  bl      _objc_msgSend                            ; [[self weapons] addObject:[[NSMutableDictionary alloc] initWithObjects:[NSMutableArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithBool:([[x0 objectForKey:@"purchased"] in…, [NSNumber numberWithInt:[[x0 valueForKey:@"level"] intValue]…, nil] forKeys:[NSMutableArray arrayWithObjects:@"name", @"purchased", @"level", nil]]]
  10000d2f8  mov     x0, x19
  10000d2fc  bl      _objc_release
  10000d300  mov     x0, x23
  10000d304  bl      _objc_release
  10000d308  add     x26, x26, #1
  10000d30c  mov     x27, x20
  10000d310  cmp     x26, x27
  10000d314  mov     x20, x24
  10000d318  mov     x24, x21
  10000d31c  adrp    x25, #0x10041d000
  10000d320  b.lo    loc_10000d118                            ; if ((x26 + 1) <u [[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"] countByEnumeratingWithState:&sp[0xa8] objects:&…)
  10000d324  add     x2, sp, #0xa8
  10000d328  sub     x3, x29, #0xd8
  10000d32c  mov     w4, #0x10
  10000d330  ldp     x1, x0, [sp, #0x30]
  10000d334  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  10000d338  mov     x27, x0
  10000d33c  cbnz    x27, loc_10000d114                       ; if ([[[NSUserDefaults standardUserDefaults] valueForKey:@"weaponDictionary"] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] != 0)
loc_10000d340:
  10000d340  ldr     x19, [sp, #0x38]
  10000d344  mov     x0, x19
  10000d348  bl      _objc_release
  10000d34c  mov     x0, x19
  10000d350  bl      _objc_release
  10000d354  ldur    x8, [x29, #-0x58]
  10000d358  adrp    x9, #0x1003b0000
  10000d35c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000d360  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000d364  sub     x8, x9, x8
  10000d368  cbnz    x8, loc_10000d38c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000d36c  sub     sp, x29, #0x50
  10000d370  ldp     x29, x30, [sp, #0x50]
  10000d374  ldp     x20, x19, [sp, #0x40]
  10000d378  ldp     x22, x21, [sp, #0x30]
  10000d37c  ldp     x24, x23, [sp, #0x20]
  10000d380  ldp     x26, x25, [sp, #0x10]
  10000d384  ldp     x28, x27, [sp], #0x60
  10000d388  ret
loc_10000d38c:
  10000d38c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000d390:
  10000d390  mov     x20, x0
  10000d394  b       loc_10000d448
  10000d398  mov     x20, x0
  10000d39c  ldr     x23, [sp, #0x28]
  10000d3a0  b       loc_10000d418
  10000d3a4  mov     x20, x0
  10000d3a8  ldr     x23, [sp, #0x28]
  10000d3ac  ldr     x21, [sp, #0x98]
  10000d3b0  b       loc_10000d408
  10000d3b4  mov     x20, x0
  10000d3b8  ldr     x23, [sp, #0x28]
  10000d3bc  b       loc_10000d420
  10000d3c0  mov     x20, x0
  10000d3c4  ldr     x23, [sp, #0x28]
  10000d3c8  ldr     x21, [sp, #0x98]
  10000d3cc  b       loc_10000d410
  10000d3d0  mov     x20, x0
  10000d3d4  ldr     x23, [sp, #0x28]
  10000d3d8  b       loc_10000d3fc
  10000d3dc  mov     x20, x0
  10000d3e0  b       loc_10000d3f0
  10000d3e4  mov     x20, x0
  10000d3e8  mov     x0, x25
  10000d3ec  bl      _objc_release
loc_10000d3f0:
  10000d3f0  ldr     x23, [sp, #0x28]
  10000d3f4  mov     x0, x28
  10000d3f8  bl      _objc_release
loc_10000d3fc:
  10000d3fc  ldr     x21, [sp, #0x98]
  10000d400  mov     x0, x19
  10000d404  bl      _objc_release
loc_10000d408:
  10000d408  mov     x0, x27
  10000d40c  bl      _objc_release
loc_10000d410:
  10000d410  mov     x0, x22
  10000d414  bl      _objc_release
loc_10000d418:
  10000d418  mov     x0, x21
  10000d41c  bl      _objc_release
loc_10000d420:
  10000d420  ldr     x0, [sp, #0xa0]
  10000d424  bl      _objc_release
  10000d428  b       loc_10000d44c
  10000d42c  mov     x20, x0
  10000d430  b       loc_10000d440
  10000d434  mov     x20, x0
  10000d438  mov     x0, x19
  10000d43c  bl      _objc_release
loc_10000d440:
  10000d440  mov     x0, x23
  10000d444  bl      _objc_release
loc_10000d448:
  10000d448  ldr     x23, [sp, #0x28]
loc_10000d44c:
  10000d44c  ldr     x0, [sp, #0x38]
loc_10000d450:
  10000d450  bl      _objc_release
loc_10000d454:
  10000d454  mov     x0, x23
loc_10000d458:
  10000d458  bl      _objc_release
  10000d45c  mov     x0, x20
  10000d460  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000d464  b       loc_10000d390
  10000d468  mov     x20, x0
  10000d46c  b       loc_10000d454
  10000d470  mov     x20, x0
  10000d474  mov     x0, x19
  10000d478  b       loc_10000d458
  10000d47c  mov     x20, x0
  10000d480  mov     x0, x19
  10000d484  b       loc_10000d450
  10000d488  b       loc_10000d390

; ======================================================================
; -[ADInventory setupPowerups]
; address 0x10000d48c  size 1120  kind objc
; ======================================================================
  10000d48c  stp     x28, x27, [sp, #-0x60]!
  10000d490  stp     x26, x25, [sp, #0x10]
  10000d494  stp     x24, x23, [sp, #0x20]
  10000d498  stp     x22, x21, [sp, #0x30]
  10000d49c  stp     x20, x19, [sp, #0x40]
  10000d4a0  stp     x29, x30, [sp, #0x50]
  10000d4a4  add     x29, sp, #0x50
  10000d4a8  sub     sp, sp, #0x160
  10000d4ac  str     x0, [sp, #0x88]
  10000d4b0  adrp    x8, #0x1003b0000
  10000d4b4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000d4b8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000d4bc  stur    x8, [x29, #-0x58]
  10000d4c0  adrp    x8, #0x10041d000
  10000d4c4  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000d4c8  adrp    x8, #0x100416000
  10000d4cc  nop
  10000d4d0  ldr     x1, [x8, #0xd98]
  10000d4d4  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000d4d8  mov     x29, x29
  10000d4dc  bl      _objc_retainAutoreleasedReturnValue
  10000d4e0  mov     x20, x0
  10000d4e4  adrp    x8, #0x100416000
  10000d4e8  nop
  10000d4ec  ldr     x1, [x8, #0xda0]
  10000d4f0  str     x1, [sp, #0x78]
  10000d4f4  adrp    x2, #0x1003b9000
  10000d4f8  add     x2, x2, #0xeb0                           ; @"powerupsDictionary"
  10000d4fc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"powerupsDictionary"]
  10000d500  mov     x29, x29
  10000d504  bl      _objc_retainAutoreleasedReturnValue
  10000d508  mov     x22, x0
  10000d50c  mov     x0, x20
  10000d510  bl      _objc_release
  10000d514  adrp    x8, #0x10041d000
  10000d518  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10000d51c  adrp    x8, #0x100416000
  10000d520  nop
  10000d524  ldr     x1, [x8, #0xac8]
  10000d528  str     x1, [sp, #0x80]
  10000d52c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10000d530  adrp    x8, #0x100416000
  10000d534  nop
  10000d538  ldr     x1, [x8, #0xab8]
  10000d53c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10000d540  mov     x20, x0
  10000d544  adrp    x8, #0x100417000
  10000d548  nop
  10000d54c  ldr     x1, [x8, #0x88]
  10000d550  ldr     x0, [sp, #0x88]
  10000d554  mov     x2, x20
  10000d558  bl      _objc_msgSend                            ; [self setPowerups:[[NSMutableArray alloc] init]]
  10000d55c  mov     x0, x20
  10000d560  bl      _objc_release
  10000d564  stp     xzr, xzr, [sp, #0xc8]
  10000d568  stp     xzr, xzr, [sp, #0xb8]
  10000d56c  stp     xzr, xzr, [sp, #0xa8]
  10000d570  stp     xzr, xzr, [sp, #0x98]
  10000d574  mov     x0, x22
  10000d578  str     x22, [sp, #0x20]
  10000d57c  bl      _objc_retain
  10000d580  str     x0, [sp, #0x30]
  10000d584  adrp    x8, #0x100416000
  10000d588  nop
  10000d58c  ldr     x1, [x8, #0xe00]
  10000d590  str     x1, [sp, #0x28]
  10000d594  add     x2, sp, #0x98
  10000d598  add     x3, sp, #0xd8
  10000d59c  mov     w4, #0x10
  10000d5a0  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"powerupsDictionary"] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16]
  10000d5a4  cbz     x0, loc_10000d7d4                        ; if ([[[NSUserDefaults standardUserDefaults] valueForKey:@"powerupsDictionary"] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16] == 0)
  10000d5a8  ldr     x8, [sp, #0xa8]
  10000d5ac  adrp    x9, #0x100417000
  10000d5b0  nop
  10000d5b4  adrp    x10, #0x100417000
  10000d5b8  add     x10, x10, #0x110                         ; &@selector(intValue)
  10000d5bc  ldr     x8, [x8]
  10000d5c0  str     x8, [sp, #0x70]
  10000d5c4  ldr     x8, [x9, #0x40]
  10000d5c8  str     x8, [sp, #0x68]
  10000d5cc  ldr     x8, [x10]
  10000d5d0  str     x8, [sp, #0x60]
  10000d5d4  adrp    x8, #0x100417000
  10000d5d8  nop
  10000d5dc  adrp    x9, #0x100417000
  10000d5e0  nop
  10000d5e4  ldr     x8, [x8, #0xe8]
  10000d5e8  str     x8, [sp, #0x58]
  10000d5ec  ldr     x8, [x9, #0xc0]
  10000d5f0  str     x8, [sp, #0x50]
  10000d5f4  adrp    x8, #0x100417000
  10000d5f8  nop
  10000d5fc  adrp    x9, #0x100417000
  10000d600  add     x9, x9, #0xf0                            ; &@selector(powerups)
  10000d604  ldr     x8, [x8, #0xc8]
  10000d608  str     x8, [sp, #0x48]
  10000d60c  ldr     x8, [x9]
  10000d610  str     x8, [sp, #0x40]
  10000d614  adrp    x8, #0x100416000
  10000d618  nop
  10000d61c  ldr     x8, [x8, #0xd90]
  10000d620  str     x8, [sp, #0x38]
  10000d624  adrp    x22, #0x1003b9000
  10000d628  add     x22, x22, #0xdb0                         ; @"name"
  10000d62c  adrp    x25, #0x1003b9000
  10000d630  add     x25, x25, #0xdf0                         ; @"level"
loc_10000d634:
  10000d634  str     x0, [sp, #0x90]
  10000d638  mov     x23, #0
loc_10000d63c:
  10000d63c  ldr     x8, [sp, #0xa8]
  10000d640  ldr     x8, [x8]
  10000d644  ldr     x9, [sp, #0x70]
  10000d648  cmp     x8, x9
  10000d64c  b.eq    loc_10000d658                            ; if (x8 == x9)
  10000d650  ldr     x0, [sp, #0x30]
  10000d654  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSUserDefaults standardUserDefaults] valueForKey:@"powerupsDictionary"])
loc_10000d658:
  10000d658  ldr     x8, [sp, #0xa0]
  10000d65c  ldr     x21, [x8, x23, lsl #3]
  10000d660  adrp    x8, #0x10041d000
  10000d664  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10000d668  ldr     x1, [sp, #0x80]
  10000d66c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10000d670  mov     x28, x0
  10000d674  adrp    x8, #0x10041d000
  10000d678  ldr     x20, [x8, #0xf28]                        ; class NSMutableArray
  10000d67c  mov     x0, x21
  10000d680  ldr     x1, [sp, #0x68]
  10000d684  mov     x2, x22
  10000d688  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000d68c  mov     x29, x29
  10000d690  bl      _objc_retainAutoreleasedReturnValue
  10000d694  mov     x26, x0
  10000d698  adrp    x8, #0x10041d000
  10000d69c  ldr     x24, [x8, #0xf68]                        ; class NSNumber
  10000d6a0  mov     x0, x21
  10000d6a4  ldr     x1, [sp, #0x78]
  10000d6a8  mov     x2, x25
  10000d6ac  bl      _objc_msgSend                            ; [x0 valueForKey:@"level"]
  10000d6b0  mov     x29, x29
  10000d6b4  bl      _objc_retainAutoreleasedReturnValue
  10000d6b8  mov     x27, x0
  10000d6bc  ldr     x1, [sp, #0x60]
  10000d6c0  bl      _objc_msgSend                            ; [[x0 valueForKey:@"level"] intValue]
  10000d6c4  sxtw    x2, w0
  10000d6c8  mov     x0, x24
  10000d6cc  ldr     x1, [sp, #0x58]
  10000d6d0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[x0 valueForKey:@"level"] intValue]]
  10000d6d4  mov     x29, x29
  10000d6d8  bl      _objc_retainAutoreleasedReturnValue
  10000d6dc  mov     x24, x0
  10000d6e0  stp     x24, xzr, [sp]
  10000d6e4  mov     x0, x20
  10000d6e8  ldr     x20, [sp, #0x50]
  10000d6ec  mov     x1, x20
  10000d6f0  mov     x2, x26
  10000d6f4  bl      _objc_msgSend                            ; [NSMutableArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithInteger:[[x0 valueForKey:@"level"] intVa…, nil]
  10000d6f8  mov     x29, x29
  10000d6fc  bl      _objc_retainAutoreleasedReturnValue
  10000d700  mov     x21, x0
  10000d704  adrp    x8, #0x10041d000
  10000d708  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10000d70c  stp     x25, xzr, [sp]
  10000d710  mov     x1, x20
  10000d714  mov     x2, x22
  10000d718  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"name", @"level", nil]
  10000d71c  mov     x19, x25
  10000d720  mov     x25, x22
  10000d724  mov     x29, x29
  10000d728  bl      _objc_retainAutoreleasedReturnValue
  10000d72c  mov     x22, x0
  10000d730  mov     x0, x28
  10000d734  ldr     x1, [sp, #0x48]
  10000d738  mov     x2, x21
  10000d73c  mov     x3, x22
  10000d740  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithObjects:[NSMutableArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithInteger:[[x0 valueForKey:@"level"] intVa…, nil] forKeys:[NSArray arrayWithObjects:@"name", @"level", nil]]
  10000d744  mov     x20, x0
  10000d748  mov     x0, x22
  10000d74c  bl      _objc_release
  10000d750  mov     x0, x21
  10000d754  bl      _objc_release
  10000d758  mov     x0, x24
  10000d75c  bl      _objc_release
  10000d760  mov     x0, x27
  10000d764  bl      _objc_release
  10000d768  mov     x0, x26
  10000d76c  bl      _objc_release
  10000d770  ldr     x0, [sp, #0x88]
  10000d774  ldr     x1, [sp, #0x40]
  10000d778  bl      _objc_msgSend                            ; [self powerups]
  10000d77c  mov     x29, x29
  10000d780  bl      _objc_retainAutoreleasedReturnValue
  10000d784  mov     x21, x0
  10000d788  ldr     x1, [sp, #0x38]
  10000d78c  mov     x2, x20
  10000d790  bl      _objc_msgSend                            ; [[self powerups] addObject:[[NSMutableDictionary alloc] initWithObjects:[NSMutableArray arrayWithObjects:[x0 objectForKey:@"name"], [NSNumber numberWithInteger:[[x0 valueForKey:@"level"] intVa…, nil] forKeys:[NSArray arrayWithObjects:@"name", @"level", nil]]]
  10000d794  mov     x0, x21
  10000d798  bl      _objc_release
  10000d79c  mov     x0, x20
  10000d7a0  bl      _objc_release
  10000d7a4  add     x23, x23, #1
  10000d7a8  ldr     x8, [sp, #0x90]
  10000d7ac  cmp     x23, x8
  10000d7b0  mov     x22, x25
  10000d7b4  mov     x25, x19
  10000d7b8  b.lo    loc_10000d63c                            ; if ((x23 + 1) <u [[[NSUserDefaults standardUserDefaults] valueForKey:@"powerupsDictionary"] countByEnumeratingWithState:&sp[0x98] objects…)
  10000d7bc  add     x2, sp, #0x98
  10000d7c0  add     x3, sp, #0xd8
  10000d7c4  mov     w4, #0x10
  10000d7c8  ldp     x1, x0, [sp, #0x28]
  10000d7cc  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"powerupsDictionary"] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16]
  10000d7d0  cbnz    x0, loc_10000d634                        ; if ([[[NSUserDefaults standardUserDefaults] valueForKey:@"powerupsDictionary"] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16] != 0)
loc_10000d7d4:
  10000d7d4  ldr     x19, [sp, #0x30]
  10000d7d8  mov     x0, x19
  10000d7dc  bl      _objc_release
  10000d7e0  mov     x0, x19
  10000d7e4  bl      _objc_release
  10000d7e8  ldur    x8, [x29, #-0x58]
  10000d7ec  adrp    x9, #0x1003b0000
  10000d7f0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000d7f4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000d7f8  sub     x8, x9, x8
  10000d7fc  cbnz    x8, loc_10000d820                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000d800  sub     sp, x29, #0x50
  10000d804  ldp     x29, x30, [sp, #0x50]
  10000d808  ldp     x20, x19, [sp, #0x40]
  10000d80c  ldp     x22, x21, [sp, #0x30]
  10000d810  ldp     x24, x23, [sp, #0x20]
  10000d814  ldp     x26, x25, [sp, #0x10]
  10000d818  ldp     x28, x27, [sp], #0x60
  10000d81c  ret
loc_10000d820:
  10000d820  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000d824:
  10000d824  mov     x19, x0
  10000d828  b       loc_10000d8a8
  10000d82c  mov     x19, x0
  10000d830  ldr     x22, [sp, #0x20]
  10000d834  b       loc_10000d878
  10000d838  mov     x19, x0
  10000d83c  ldr     x22, [sp, #0x20]
  10000d840  b       loc_10000d880
  10000d844  mov     x19, x0
  10000d848  ldr     x22, [sp, #0x20]
  10000d84c  b       loc_10000d870
  10000d850  mov     x19, x0
  10000d854  b       loc_10000d864
  10000d858  mov     x19, x0
  10000d85c  mov     x0, x22
  10000d860  bl      _objc_release
loc_10000d864:
  10000d864  ldr     x22, [sp, #0x20]
  10000d868  mov     x0, x21
  10000d86c  bl      _objc_release
loc_10000d870:
  10000d870  mov     x0, x24
  10000d874  bl      _objc_release
loc_10000d878:
  10000d878  mov     x0, x27
  10000d87c  bl      _objc_release
loc_10000d880:
  10000d880  mov     x0, x26
  10000d884  bl      _objc_release
  10000d888  b       loc_10000d8ac
  10000d88c  mov     x19, x0
  10000d890  b       loc_10000d8a0
  10000d894  mov     x19, x0
  10000d898  mov     x0, x21
  10000d89c  bl      _objc_release
loc_10000d8a0:
  10000d8a0  mov     x0, x20
  10000d8a4  bl      _objc_release
loc_10000d8a8:
  10000d8a8  ldr     x22, [sp, #0x20]
loc_10000d8ac:
  10000d8ac  ldr     x0, [sp, #0x30]
loc_10000d8b0:
  10000d8b0  bl      _objc_release
loc_10000d8b4:
  10000d8b4  mov     x0, x22
loc_10000d8b8:
  10000d8b8  bl      _objc_release
  10000d8bc  mov     x0, x19
  10000d8c0  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000d8c4  b       loc_10000d824
  10000d8c8  mov     x19, x0
  10000d8cc  b       loc_10000d8b4
  10000d8d0  mov     x19, x0
  10000d8d4  mov     x0, x20
  10000d8d8  b       loc_10000d8b8
  10000d8dc  mov     x19, x0
  10000d8e0  mov     x0, x20
  10000d8e4  b       loc_10000d8b0
  10000d8e8  b       loc_10000d824

; ======================================================================
; -[ADInventory setWeaponSlot1:]
; address 0x10000d8ec  size 332  kind objc
; ======================================================================
  10000d8ec  stp     x24, x23, [sp, #-0x40]!
  10000d8f0  stp     x22, x21, [sp, #0x10]
  10000d8f4  stp     x20, x19, [sp, #0x20]
  10000d8f8  stp     x29, x30, [sp, #0x30]
  10000d8fc  add     x29, sp, #0x30
  10000d900  mov     x21, x0
  10000d904  mov     x0, x2
  10000d908  bl      _objc_retain
  10000d90c  mov     x19, x0
  10000d910  adrp    x8, #0x10041f000
  10000d914  ldrsw   x23, [x8, #0x4ec]                        ; ivar offset ADInventory._weaponSlot1 (+0x20)
  10000d918  add     x0, x21, x23
  10000d91c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0)
  10000d920  mov     x20, x0
  10000d924  adrp    x8, #0x100416000
  10000d928  nop
  10000d92c  ldr     x1, [x8, #0xf58]
  10000d930  mov     x0, x19
  10000d934  mov     x2, x20
  10000d938  bl      _objc_msgSend                            ; [arg1 isEqualToString:objc_loadWeakRetained(x0)]
  10000d93c  mov     x22, x0
  10000d940  mov     x0, x20
  10000d944  bl      _objc_release
  10000d948  tbnz    w22, #0, loc_10000d9e0                   ; if (([arg1 isEqualToString:objc_loadWeakRetained(x0)] & 1))
  10000d94c  add     x0, x21, x23
  10000d950  mov     x1, x19
  10000d954  bl      _objc_storeWeak                          ; objc_storeWeak(x0, arg1)
  10000d958  adrp    x8, #0x10041d000
  10000d95c  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000d960  adrp    x8, #0x100416000
  10000d964  nop
  10000d968  ldr     x1, [x8, #0xd98]
  10000d96c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000d970  mov     x29, x29
  10000d974  bl      _objc_retainAutoreleasedReturnValue
  10000d978  mov     x20, x0
  10000d97c  adrp    x8, #0x100416000
  10000d980  nop
  10000d984  ldr     x1, [x8, #0xed0]
  10000d988  mov     x0, x21
  10000d98c  bl      _objc_msgSend                            ; [self weaponSlot1]
  10000d990  mov     x29, x29
  10000d994  bl      _objc_retainAutoreleasedReturnValue
  10000d998  mov     x21, x0
  10000d99c  adrp    x8, #0x100416000
  10000d9a0  nop
  10000d9a4  ldr     x1, [x8, #0xdc8]
  10000d9a8  adrp    x3, #0x1003b9000
  10000d9ac  add     x3, x3, #0xbb0                           ; @"weaponSlot1"
  10000d9b0  mov     x0, x20
  10000d9b4  mov     x2, x21
  10000d9b8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[self weaponSlot1] forKey:@"weaponSlot1"]
  10000d9bc  mov     x0, x21
  10000d9c0  bl      _objc_release
  10000d9c4  adrp    x8, #0x100416000
  10000d9c8  nop
  10000d9cc  ldr     x1, [x8, #0xdd8]
  10000d9d0  mov     x0, x20
  10000d9d4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10000d9d8  mov     x0, x20
  10000d9dc  bl      _objc_release
loc_10000d9e0:
  10000d9e0  mov     x0, x19
  10000d9e4  ldp     x29, x30, [sp, #0x30]
  10000d9e8  ldp     x20, x19, [sp, #0x20]
  10000d9ec  ldp     x22, x21, [sp, #0x10]
  10000d9f0  ldp     x24, x23, [sp], #0x40
  10000d9f4  b       _objc_release
  10000d9f8  mov     x21, x0
  10000d9fc  b       loc_10000da20
  10000da00  mov     x21, x0
  10000da04  b       loc_10000da20
  10000da08  mov     x21, x0
  10000da0c  b       loc_10000da28
  10000da10  mov     x1, x21
  10000da14  mov     x21, x0
  10000da18  mov     x0, x1
  10000da1c  bl      _objc_release
loc_10000da20:
  10000da20  mov     x0, x20
  10000da24  bl      _objc_release
loc_10000da28:
  10000da28  mov     x0, x19
  10000da2c  bl      _objc_release
  10000da30  mov     x0, x21
  10000da34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory setWeaponSlot2:]
; address 0x10000da38  size 332  kind objc
; ======================================================================
  10000da38  stp     x24, x23, [sp, #-0x40]!
  10000da3c  stp     x22, x21, [sp, #0x10]
  10000da40  stp     x20, x19, [sp, #0x20]
  10000da44  stp     x29, x30, [sp, #0x30]
  10000da48  add     x29, sp, #0x30
  10000da4c  mov     x21, x0
  10000da50  mov     x0, x2
  10000da54  bl      _objc_retain
  10000da58  mov     x19, x0
  10000da5c  adrp    x8, #0x10041f000
  10000da60  ldrsw   x23, [x8, #0x4f0]                        ; ivar offset ADInventory._weaponSlot2 (+0x28)
  10000da64  add     x0, x21, x23
  10000da68  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0)
  10000da6c  mov     x20, x0
  10000da70  adrp    x8, #0x100416000
  10000da74  nop
  10000da78  ldr     x1, [x8, #0xf58]
  10000da7c  mov     x0, x19
  10000da80  mov     x2, x20
  10000da84  bl      _objc_msgSend                            ; [arg1 isEqualToString:objc_loadWeakRetained(x0)]
  10000da88  mov     x22, x0
  10000da8c  mov     x0, x20
  10000da90  bl      _objc_release
  10000da94  tbnz    w22, #0, loc_10000db2c                   ; if (([arg1 isEqualToString:objc_loadWeakRetained(x0)] & 1))
  10000da98  adrp    x8, #0x10041d000
  10000da9c  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000daa0  adrp    x8, #0x100416000
  10000daa4  nop
  10000daa8  ldr     x1, [x8, #0xd98]
  10000daac  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000dab0  mov     x29, x29
  10000dab4  bl      _objc_retainAutoreleasedReturnValue
  10000dab8  mov     x20, x0
  10000dabc  add     x0, x21, x23
  10000dac0  mov     x1, x19
  10000dac4  bl      _objc_storeWeak                          ; objc_storeWeak(x0, arg1)
  10000dac8  adrp    x8, #0x100416000
  10000dacc  nop
  10000dad0  ldr     x1, [x8, #0xed8]
  10000dad4  mov     x0, x21
  10000dad8  bl      _objc_msgSend                            ; [self weaponSlot2]
  10000dadc  mov     x29, x29
  10000dae0  bl      _objc_retainAutoreleasedReturnValue
  10000dae4  mov     x21, x0
  10000dae8  adrp    x8, #0x100416000
  10000daec  nop
  10000daf0  ldr     x1, [x8, #0xdc8]
  10000daf4  adrp    x3, #0x1003b9000
  10000daf8  add     x3, x3, #0xbd0                           ; @"weaponSlot2"
  10000dafc  mov     x0, x20
  10000db00  mov     x2, x21
  10000db04  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[self weaponSlot2] forKey:@"weaponSlot2"]
  10000db08  mov     x0, x21
  10000db0c  bl      _objc_release
  10000db10  adrp    x8, #0x100416000
  10000db14  nop
  10000db18  ldr     x1, [x8, #0xdd8]
  10000db1c  mov     x0, x20
  10000db20  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10000db24  mov     x0, x20
  10000db28  bl      _objc_release
loc_10000db2c:
  10000db2c  mov     x0, x19
  10000db30  ldp     x29, x30, [sp, #0x30]
  10000db34  ldp     x20, x19, [sp, #0x20]
  10000db38  ldp     x22, x21, [sp, #0x10]
  10000db3c  ldp     x24, x23, [sp], #0x40
  10000db40  b       _objc_release
  10000db44  mov     x21, x0
  10000db48  b       loc_10000db6c
  10000db4c  mov     x21, x0
  10000db50  b       loc_10000db6c
  10000db54  mov     x21, x0
  10000db58  b       loc_10000db74
  10000db5c  mov     x1, x21
  10000db60  mov     x21, x0
  10000db64  mov     x0, x1
  10000db68  bl      _objc_release
loc_10000db6c:
  10000db6c  mov     x0, x20
  10000db70  bl      _objc_release
loc_10000db74:
  10000db74  mov     x0, x19
  10000db78  bl      _objc_release
  10000db7c  mov     x0, x21
  10000db80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory isWeaponEquipped:]
; address 0x10000db84  size 444  kind objc
; ======================================================================
  10000db84  stp     x26, x25, [sp, #-0x50]!
  10000db88  stp     x24, x23, [sp, #0x10]
  10000db8c  stp     x22, x21, [sp, #0x20]
  10000db90  stp     x20, x19, [sp, #0x30]
  10000db94  stp     x29, x30, [sp, #0x40]
  10000db98  add     x29, sp, #0x40
  10000db9c  mov     x0, x2
  10000dba0  bl      _objc_retain
  10000dba4  mov     x19, x0
  10000dba8  adrp    x25, #0x10041d000
  10000dbac  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  10000dbb0  adrp    x8, #0x100416000
  10000dbb4  nop
  10000dbb8  ldr     x20, [x8, #0xec8]
  10000dbbc  mov     x1, x20
  10000dbc0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000dbc4  mov     x29, x29
  10000dbc8  bl      _objc_retainAutoreleasedReturnValue
  10000dbcc  mov     x22, x0
  10000dbd0  adrp    x8, #0x100416000
  10000dbd4  nop
  10000dbd8  ldr     x1, [x8, #0xed0]
  10000dbdc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  10000dbe0  mov     x29, x29
  10000dbe4  bl      _objc_retainAutoreleasedReturnValue
  10000dbe8  mov     x23, x0
  10000dbec  adrp    x8, #0x100416000
  10000dbf0  nop
  10000dbf4  ldr     x21, [x8, #0xf58]
  10000dbf8  mov     x1, x21
  10000dbfc  mov     x2, x19
  10000dc00  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weaponSlot1] isEqualToString:arg1]
  10000dc04  mov     x24, x0
  10000dc08  mov     x0, x23
  10000dc0c  bl      _objc_release
  10000dc10  mov     x0, x22
  10000dc14  bl      _objc_release
  10000dc18  tbnz    w24, #0, loc_10000dc74                   ; if (([[[ADInventory sharedInventory] weaponSlot1] isEqualToString:arg1] & 1))
  10000dc1c  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  10000dc20  mov     x1, x20
  10000dc24  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000dc28  mov     x29, x29
  10000dc2c  bl      _objc_retainAutoreleasedReturnValue
  10000dc30  mov     x22, x0
  10000dc34  adrp    x8, #0x100416000
  10000dc38  nop
  10000dc3c  ldr     x1, [x8, #0xed8]
  10000dc40  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  10000dc44  mov     x29, x29
  10000dc48  bl      _objc_retainAutoreleasedReturnValue
  10000dc4c  mov     x23, x0
  10000dc50  mov     x1, x21
  10000dc54  mov     x2, x19
  10000dc58  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weaponSlot2] isEqualToString:arg1]
  10000dc5c  mov     x24, x0
  10000dc60  mov     x0, x23
  10000dc64  bl      _objc_release
  10000dc68  mov     x0, x22
  10000dc6c  bl      _objc_release
  10000dc70  tbz     w24, #0, loc_10000dc7c                   ; if (!([[[ADInventory sharedInventory] weaponSlot2] isEqualToString:arg1] & 1))
loc_10000dc74:
  10000dc74  mov     w20, #1
  10000dc78  b       loc_10000dcd0
loc_10000dc7c:
  10000dc7c  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  10000dc80  mov     x1, x20
  10000dc84  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10000dc88  mov     x29, x29
  10000dc8c  bl      _objc_retainAutoreleasedReturnValue
  10000dc90  mov     x22, x0
  10000dc94  adrp    x8, #0x100416000
  10000dc98  nop
  10000dc9c  ldr     x1, [x8, #0xee0]
  10000dca0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  10000dca4  mov     x29, x29
  10000dca8  bl      _objc_retainAutoreleasedReturnValue
  10000dcac  mov     x23, x0
  10000dcb0  mov     x1, x21
  10000dcb4  mov     x2, x19
  10000dcb8  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weaponSlotMelee] isEqualToString:arg1]
  10000dcbc  mov     x20, x0
  10000dcc0  mov     x0, x23
  10000dcc4  bl      _objc_release
  10000dcc8  mov     x0, x22
  10000dccc  bl      _objc_release
loc_10000dcd0:
  10000dcd0  mov     x0, x19
  10000dcd4  bl      _objc_release
  10000dcd8  mov     x0, x20
  10000dcdc  ldp     x29, x30, [sp, #0x40]
  10000dce0  ldp     x20, x19, [sp, #0x30]
  10000dce4  ldp     x22, x21, [sp, #0x20]
  10000dce8  ldp     x24, x23, [sp, #0x10]
  10000dcec  ldp     x26, x25, [sp], #0x50
  10000dcf0  ret
  10000dcf4  mov     x20, x0
  10000dcf8  b       loc_10000dd30
  10000dcfc  mov     x20, x0
  10000dd00  b       loc_10000dd28
  10000dd04  b       loc_10000dd1c
  10000dd08  mov     x20, x0
  10000dd0c  b       loc_10000dd28
  10000dd10  b       loc_10000dd1c
  10000dd14  mov     x20, x0
  10000dd18  b       loc_10000dd28
loc_10000dd1c:
  10000dd1c  mov     x20, x0
  10000dd20  mov     x0, x23
  10000dd24  bl      _objc_release
loc_10000dd28:
  10000dd28  mov     x0, x22
  10000dd2c  bl      _objc_release
loc_10000dd30:
  10000dd30  mov     x0, x19
  10000dd34  bl      _objc_release
  10000dd38  mov     x0, x20
  10000dd3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory setWeaponSlotMelee:]
; address 0x10000dd40  size 332  kind objc
; ======================================================================
  10000dd40  stp     x24, x23, [sp, #-0x40]!
  10000dd44  stp     x22, x21, [sp, #0x10]
  10000dd48  stp     x20, x19, [sp, #0x20]
  10000dd4c  stp     x29, x30, [sp, #0x30]
  10000dd50  add     x29, sp, #0x30
  10000dd54  mov     x21, x0
  10000dd58  mov     x0, x2
  10000dd5c  bl      _objc_retain
  10000dd60  mov     x19, x0
  10000dd64  adrp    x8, #0x10041f000
  10000dd68  ldrsw   x23, [x8, #0x4f4]                        ; ivar offset ADInventory._weaponSlotMelee (+0x30)
  10000dd6c  add     x0, x21, x23
  10000dd70  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0)
  10000dd74  mov     x20, x0
  10000dd78  adrp    x8, #0x100416000
  10000dd7c  nop
  10000dd80  ldr     x1, [x8, #0xf58]
  10000dd84  mov     x0, x19
  10000dd88  mov     x2, x20
  10000dd8c  bl      _objc_msgSend                            ; [arg1 isEqualToString:objc_loadWeakRetained(x0)]
  10000dd90  mov     x22, x0
  10000dd94  mov     x0, x20
  10000dd98  bl      _objc_release
  10000dd9c  tbnz    w22, #0, loc_10000de34                   ; if (([arg1 isEqualToString:objc_loadWeakRetained(x0)] & 1))
  10000dda0  adrp    x8, #0x10041d000
  10000dda4  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000dda8  adrp    x8, #0x100416000
  10000ddac  nop
  10000ddb0  ldr     x1, [x8, #0xd98]
  10000ddb4  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000ddb8  mov     x29, x29
  10000ddbc  bl      _objc_retainAutoreleasedReturnValue
  10000ddc0  mov     x20, x0
  10000ddc4  add     x0, x21, x23
  10000ddc8  mov     x1, x19
  10000ddcc  bl      _objc_storeWeak                          ; objc_storeWeak(x0, arg1)
  10000ddd0  adrp    x8, #0x100416000
  10000ddd4  nop
  10000ddd8  ldr     x1, [x8, #0xee0]
  10000dddc  mov     x0, x21
  10000dde0  bl      _objc_msgSend                            ; [self weaponSlotMelee]
  10000dde4  mov     x29, x29
  10000dde8  bl      _objc_retainAutoreleasedReturnValue
  10000ddec  mov     x21, x0
  10000ddf0  adrp    x8, #0x100416000
  10000ddf4  nop
  10000ddf8  ldr     x1, [x8, #0xdc8]
  10000ddfc  adrp    x3, #0x1003b9000
  10000de00  add     x3, x3, #0xe30                           ; @"weaponSlotMelee"
  10000de04  mov     x0, x20
  10000de08  mov     x2, x21
  10000de0c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[self weaponSlotMelee] forKey:@"weaponSlotMelee"]
  10000de10  mov     x0, x21
  10000de14  bl      _objc_release
  10000de18  adrp    x8, #0x100416000
  10000de1c  nop
  10000de20  ldr     x1, [x8, #0xdd8]
  10000de24  mov     x0, x20
  10000de28  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10000de2c  mov     x0, x20
  10000de30  bl      _objc_release
loc_10000de34:
  10000de34  mov     x0, x19
  10000de38  ldp     x29, x30, [sp, #0x30]
  10000de3c  ldp     x20, x19, [sp, #0x20]
  10000de40  ldp     x22, x21, [sp, #0x10]
  10000de44  ldp     x24, x23, [sp], #0x40
  10000de48  b       _objc_release
  10000de4c  mov     x21, x0
  10000de50  b       loc_10000de74
  10000de54  mov     x21, x0
  10000de58  b       loc_10000de74
  10000de5c  mov     x21, x0
  10000de60  b       loc_10000de7c
  10000de64  mov     x1, x21
  10000de68  mov     x21, x0
  10000de6c  mov     x0, x1
  10000de70  bl      _objc_release
loc_10000de74:
  10000de74  mov     x0, x20
  10000de78  bl      _objc_release
loc_10000de7c:
  10000de7c  mov     x0, x19
  10000de80  bl      _objc_release
  10000de84  mov     x0, x21
  10000de88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory setPowerUpSlot:]
; address 0x10000de8c  size 332  kind objc
; ======================================================================
  10000de8c  stp     x24, x23, [sp, #-0x40]!
  10000de90  stp     x22, x21, [sp, #0x10]
  10000de94  stp     x20, x19, [sp, #0x20]
  10000de98  stp     x29, x30, [sp, #0x30]
  10000de9c  add     x29, sp, #0x30
  10000dea0  mov     x21, x0
  10000dea4  mov     x0, x2
  10000dea8  bl      _objc_retain
  10000deac  mov     x19, x0
  10000deb0  adrp    x8, #0x10041f000
  10000deb4  ldrsw   x23, [x8, #0x4f8]                        ; ivar offset ADInventory._powerUpSlot (+0x38)
  10000deb8  add     x0, x21, x23
  10000debc  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0)
  10000dec0  mov     x20, x0
  10000dec4  adrp    x8, #0x100416000
  10000dec8  nop
  10000decc  ldr     x1, [x8, #0xf58]
  10000ded0  mov     x0, x19
  10000ded4  mov     x2, x20
  10000ded8  bl      _objc_msgSend                            ; [arg1 isEqualToString:objc_loadWeakRetained(x0)]
  10000dedc  mov     x22, x0
  10000dee0  mov     x0, x20
  10000dee4  bl      _objc_release
  10000dee8  tbnz    w22, #0, loc_10000df80                   ; if (([arg1 isEqualToString:objc_loadWeakRetained(x0)] & 1))
  10000deec  adrp    x8, #0x10041d000
  10000def0  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000def4  adrp    x8, #0x100416000
  10000def8  nop
  10000defc  ldr     x1, [x8, #0xd98]
  10000df00  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000df04  mov     x29, x29
  10000df08  bl      _objc_retainAutoreleasedReturnValue
  10000df0c  mov     x20, x0
  10000df10  add     x0, x21, x23
  10000df14  mov     x1, x19
  10000df18  bl      _objc_storeWeak                          ; objc_storeWeak(x0, arg1)
  10000df1c  adrp    x8, #0x100417000
  10000df20  nop
  10000df24  ldr     x1, [x8, #0x120]
  10000df28  mov     x0, x21
  10000df2c  bl      _objc_msgSend                            ; [self powerUpSlot]
  10000df30  mov     x29, x29
  10000df34  bl      _objc_retainAutoreleasedReturnValue
  10000df38  mov     x21, x0
  10000df3c  adrp    x8, #0x100416000
  10000df40  nop
  10000df44  ldr     x1, [x8, #0xdc8]
  10000df48  adrp    x3, #0x1003b9000
  10000df4c  add     x3, x3, #0xe50                           ; @"powerupSlot"
  10000df50  mov     x0, x20
  10000df54  mov     x2, x21
  10000df58  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[self powerUpSlot] forKey:@"powerupSlot"]
  10000df5c  mov     x0, x21
  10000df60  bl      _objc_release
  10000df64  adrp    x8, #0x100416000
  10000df68  nop
  10000df6c  ldr     x1, [x8, #0xdd8]
  10000df70  mov     x0, x20
  10000df74  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10000df78  mov     x0, x20
  10000df7c  bl      _objc_release
loc_10000df80:
  10000df80  mov     x0, x19
  10000df84  ldp     x29, x30, [sp, #0x30]
  10000df88  ldp     x20, x19, [sp, #0x20]
  10000df8c  ldp     x22, x21, [sp, #0x10]
  10000df90  ldp     x24, x23, [sp], #0x40
  10000df94  b       _objc_release
  10000df98  mov     x21, x0
  10000df9c  b       loc_10000dfc0
  10000dfa0  mov     x21, x0
  10000dfa4  b       loc_10000dfc0
  10000dfa8  mov     x21, x0
  10000dfac  b       loc_10000dfc8
  10000dfb0  mov     x1, x21
  10000dfb4  mov     x21, x0
  10000dfb8  mov     x0, x1
  10000dfbc  bl      _objc_release
loc_10000dfc0:
  10000dfc0  mov     x0, x20
  10000dfc4  bl      _objc_release
loc_10000dfc8:
  10000dfc8  mov     x0, x19
  10000dfcc  bl      _objc_release
  10000dfd0  mov     x0, x21
  10000dfd4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory setCoins:]
; address 0x10000dfd8  size 252  kind objc
; ======================================================================
  10000dfd8  stp     x24, x23, [sp, #-0x40]!
  10000dfdc  stp     x22, x21, [sp, #0x10]
  10000dfe0  stp     x20, x19, [sp, #0x20]
  10000dfe4  stp     x29, x30, [sp, #0x30]
  10000dfe8  add     x29, sp, #0x30
  10000dfec  mov     x19, x2
  10000dff0  mov     x20, x0
  10000dff4  adrp    x8, #0x10041f000
  10000dff8  ldrsw   x23, [x8, #0x4fc]                        ; ivar offset ADInventory._coins (+0x8)
  10000dffc  ldr     w8, [x20, x23]                           ; w8 = self->_coins
  10000e000  subs    w8, w8, w19
  10000e004  b.le    loc_10000e04c                            ; if (self->_coins <= arg1)
  10000e008  sxtw    x22, w8
  10000e00c  adrp    x8, #0x10041d000
  10000e010  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  10000e014  adrp    x8, #0x100416000
  10000e018  nop
  10000e01c  ldr     x1, [x8, #0xe10]
  10000e020  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  10000e024  mov     x29, x29
  10000e028  bl      _objc_retainAutoreleasedReturnValue
  10000e02c  mov     x21, x0
  10000e030  adrp    x8, #0x100417000
  10000e034  nop
  10000e038  ldr     x1, [x8, #0x128]
  10000e03c  mov     x2, x22
  10000e040  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveCoinsData:(self->_coins - arg1)]
  10000e044  mov     x0, x21
  10000e048  bl      _objc_release
loc_10000e04c:
  10000e04c  adrp    x8, #0x10041d000
  10000e050  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000e054  adrp    x8, #0x100416000
  10000e058  nop
  10000e05c  ldr     x1, [x8, #0xd98]
  10000e060  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000e064  mov     x29, x29
  10000e068  bl      _objc_retainAutoreleasedReturnValue
  10000e06c  mov     x21, x0
  10000e070  str     w19, [x20, x23]                          ; self->_coins = arg1
  10000e074  sxtw    x2, w19
  10000e078  adrp    x8, #0x100416000
  10000e07c  nop
  10000e080  ldr     x1, [x8, #0xdd0]
  10000e084  adrp    x3, #0x1003b9000
  10000e088  add     x3, x3, #0xe70                           ; @"coins"
  10000e08c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setInteger:arg1 forKey:@"coins"]
  10000e090  adrp    x8, #0x100416000
  10000e094  nop
  10000e098  ldr     x1, [x8, #0xdd8]
  10000e09c  mov     x0, x21
  10000e0a0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10000e0a4  mov     x0, x21
  10000e0a8  ldp     x29, x30, [sp, #0x30]
  10000e0ac  ldp     x20, x19, [sp, #0x20]
  10000e0b0  ldp     x22, x21, [sp, #0x10]
  10000e0b4  ldp     x24, x23, [sp], #0x40
  10000e0b8  b       _objc_release
  10000e0bc  b       loc_10000e0c0
loc_10000e0c0:
  10000e0c0  mov     x19, x0
  10000e0c4  mov     x0, x21
  10000e0c8  bl      _objc_release
  10000e0cc  mov     x0, x19
  10000e0d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory setDiamonds:]
; address 0x10000e0d4  size 252  kind objc
; ======================================================================
  10000e0d4  stp     x24, x23, [sp, #-0x40]!
  10000e0d8  stp     x22, x21, [sp, #0x10]
  10000e0dc  stp     x20, x19, [sp, #0x20]
  10000e0e0  stp     x29, x30, [sp, #0x30]
  10000e0e4  add     x29, sp, #0x30
  10000e0e8  mov     x19, x2
  10000e0ec  mov     x20, x0
  10000e0f0  adrp    x8, #0x10041f000
  10000e0f4  ldrsw   x23, [x8, #0x500]                        ; ivar offset ADInventory._diamonds (+0xc)
  10000e0f8  ldr     w8, [x20, x23]                           ; w8 = self->_diamonds
  10000e0fc  subs    w8, w8, w19
  10000e100  b.le    loc_10000e148                            ; if (self->_diamonds <= arg1)
  10000e104  sxtw    x22, w8
  10000e108  adrp    x8, #0x10041d000
  10000e10c  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  10000e110  adrp    x8, #0x100416000
  10000e114  nop
  10000e118  ldr     x1, [x8, #0xe10]
  10000e11c  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  10000e120  mov     x29, x29
  10000e124  bl      _objc_retainAutoreleasedReturnValue
  10000e128  mov     x21, x0
  10000e12c  adrp    x8, #0x100417000
  10000e130  nop
  10000e134  ldr     x1, [x8, #0x130]
  10000e138  mov     x2, x22
  10000e13c  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveDiamondsData:(self->_diamonds - arg1)]
  10000e140  mov     x0, x21
  10000e144  bl      _objc_release
loc_10000e148:
  10000e148  adrp    x8, #0x10041d000
  10000e14c  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000e150  adrp    x8, #0x100416000
  10000e154  nop
  10000e158  ldr     x1, [x8, #0xd98]
  10000e15c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000e160  mov     x29, x29
  10000e164  bl      _objc_retainAutoreleasedReturnValue
  10000e168  mov     x21, x0
  10000e16c  str     w19, [x20, x23]                          ; self->_diamonds = arg1
  10000e170  sxtw    x2, w19
  10000e174  adrp    x8, #0x100416000
  10000e178  nop
  10000e17c  ldr     x1, [x8, #0xdd0]
  10000e180  adrp    x3, #0x1003b9000
  10000e184  add     x3, x3, #0xe90                           ; @"diamonds"
  10000e188  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setInteger:arg1 forKey:@"diamonds"]
  10000e18c  adrp    x8, #0x100416000
  10000e190  nop
  10000e194  ldr     x1, [x8, #0xdd8]
  10000e198  mov     x0, x21
  10000e19c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10000e1a0  mov     x0, x21
  10000e1a4  ldp     x29, x30, [sp, #0x30]
  10000e1a8  ldp     x20, x19, [sp, #0x20]
  10000e1ac  ldp     x22, x21, [sp, #0x10]
  10000e1b0  ldp     x24, x23, [sp], #0x40
  10000e1b4  b       _objc_release
  10000e1b8  b       loc_10000e1bc
loc_10000e1bc:
  10000e1bc  mov     x19, x0
  10000e1c0  mov     x0, x21
  10000e1c4  bl      _objc_release
  10000e1c8  mov     x0, x19
  10000e1cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory levelForWeaponWithName:]
; address 0x10000e1d0  size 564  kind objc
; ======================================================================
  10000e1d0  stp     x28, x27, [sp, #-0x60]!
  10000e1d4  stp     x26, x25, [sp, #0x10]
  10000e1d8  stp     x24, x23, [sp, #0x20]
  10000e1dc  stp     x22, x21, [sp, #0x30]
  10000e1e0  stp     x20, x19, [sp, #0x40]
  10000e1e4  stp     x29, x30, [sp, #0x50]
  10000e1e8  add     x29, sp, #0x50
  10000e1ec  sub     sp, sp, #0xe0
  10000e1f0  mov     x20, x0
  10000e1f4  adrp    x24, #0x1003b0000
  10000e1f8  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000e1fc  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000e200  stur    x24, [x29, #-0x58]
  10000e204  mov     x0, x2
  10000e208  bl      _objc_retain
  10000e20c  mov     x19, x0
  10000e210  stp     xzr, xzr, [sp, #0x48]
  10000e214  stp     xzr, xzr, [sp, #0x38]
  10000e218  stp     xzr, xzr, [sp, #0x28]
  10000e21c  stp     xzr, xzr, [sp, #0x18]
  10000e220  adrp    x8, #0x100417000
  10000e224  nop
  10000e228  ldr     x1, [x8, #0xd0]
  10000e22c  mov     x0, x20
  10000e230  bl      _objc_msgSend                            ; [self weapons]
  10000e234  mov     x29, x29
  10000e238  bl      _objc_retainAutoreleasedReturnValue
  10000e23c  str     x0, [sp, #0x10]
  10000e240  adrp    x8, #0x100416000
  10000e244  nop
  10000e248  ldr     x1, [x8, #0xe00]
  10000e24c  str     x1, [sp, #8]
  10000e250  add     x2, sp, #0x18
  10000e254  add     x3, sp, #0x58
  10000e258  mov     w4, #0x10
  10000e25c  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000e260  mov     x23, x0
  10000e264  cbz     x23, loc_10000e374                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10000e268  ldr     x8, [sp, #0x28]
  10000e26c  ldr     x21, [x8]
  10000e270  adrp    x8, #0x100417000
  10000e274  nop
  10000e278  ldr     x22, [x8, #0x40]
  10000e27c  adrp    x8, #0x100416000
  10000e280  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  10000e284  ldr     x24, [x8]
  10000e288  adrp    x25, #0x1003b9000
  10000e28c  add     x25, x25, #0xdb0                         ; @"name"
loc_10000e290:
  10000e290  mov     x20, #0
loc_10000e294:
  10000e294  ldr     x8, [sp, #0x28]
  10000e298  ldr     x8, [x8]
  10000e29c  cmp     x8, x21
  10000e2a0  b.eq    loc_10000e2ac                            ; if (x8 == x21)
  10000e2a4  ldr     x0, [sp, #0x10]
  10000e2a8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self weapons])
loc_10000e2ac:
  10000e2ac  ldr     x8, [sp, #0x20]
  10000e2b0  ldr     x26, [x8, x20, lsl #3]
  10000e2b4  mov     x0, x26
  10000e2b8  mov     x1, x22
  10000e2bc  mov     x2, x25
  10000e2c0  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000e2c4  mov     x29, x29
  10000e2c8  bl      _objc_retainAutoreleasedReturnValue
  10000e2cc  mov     x27, x0
  10000e2d0  mov     x1, x24
  10000e2d4  mov     x2, x19
  10000e2d8  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg1]
  10000e2dc  mov     x28, x0
  10000e2e0  mov     x0, x27
  10000e2e4  bl      _objc_release
  10000e2e8  cbnz    w28, loc_10000e328                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg1] != 0)
  10000e2ec  add     x20, x20, #1
  10000e2f0  cmp     x20, x23
  10000e2f4  b.lo    loc_10000e294                            ; if ((x20 + 1) <u [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10000e2f8  add     x2, sp, #0x18
  10000e2fc  add     x3, sp, #0x58
  10000e300  mov     w4, #0x10
  10000e304  ldp     x1, x0, [sp, #8]
  10000e308  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000e30c  mov     x23, x0
  10000e310  cbnz    x23, loc_10000e290                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
  10000e314  mov     w21, #1
  10000e318  adrp    x24, #0x1003b0000
  10000e31c  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000e320  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000e324  b       loc_10000e378
loc_10000e328:
  10000e328  adrp    x2, #0x1003b9000
  10000e32c  add     x2, x2, #0xdf0                           ; @"level"
  10000e330  mov     x0, x26
  10000e334  mov     x1, x22
  10000e338  bl      _objc_msgSend                            ; [x0 objectForKey:@"level"]
  10000e33c  adrp    x24, #0x1003b0000
  10000e340  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000e344  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000e348  mov     x29, x29
  10000e34c  bl      _objc_retainAutoreleasedReturnValue
  10000e350  mov     x22, x0
  10000e354  adrp    x8, #0x100417000
  10000e358  nop
  10000e35c  ldr     x1, [x8, #0x110]
  10000e360  bl      _objc_msgSend                            ; [[x0 objectForKey:@"level"] intValue]
  10000e364  mov     x21, x0
  10000e368  mov     x0, x22
  10000e36c  bl      _objc_release
  10000e370  b       loc_10000e378
loc_10000e374:
  10000e374  mov     w21, #1
loc_10000e378:
  10000e378  ldr     x0, [sp, #0x10]
  10000e37c  bl      _objc_release
  10000e380  mov     x0, x19
  10000e384  bl      _objc_release
  10000e388  ldur    x8, [x29, #-0x58]
  10000e38c  sub     x8, x24, x8
  10000e390  cbnz    x8, loc_10000e3b8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000e394  mov     x0, x21
  10000e398  sub     sp, x29, #0x50
  10000e39c  ldp     x29, x30, [sp, #0x50]
  10000e3a0  ldp     x20, x19, [sp, #0x40]
  10000e3a4  ldp     x22, x21, [sp, #0x30]
  10000e3a8  ldp     x24, x23, [sp, #0x20]
  10000e3ac  ldp     x26, x25, [sp, #0x10]
  10000e3b0  ldp     x28, x27, [sp], #0x60
  10000e3b4  ret
loc_10000e3b8:
  10000e3b8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000e3bc:
  10000e3bc  mov     x21, x0
  10000e3c0  b       loc_10000e3d0
  10000e3c4  mov     x21, x0
  10000e3c8  mov     x0, x27
loc_10000e3cc:
  10000e3cc  bl      _objc_release
loc_10000e3d0:
  10000e3d0  ldr     x0, [sp, #0x10]
  10000e3d4  bl      _objc_release
loc_10000e3d8:
  10000e3d8  mov     x0, x19
  10000e3dc  bl      _objc_release
  10000e3e0  mov     x0, x21
  10000e3e4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000e3e8  b       loc_10000e3bc
  10000e3ec  mov     x21, x0
  10000e3f0  b       loc_10000e3d8
  10000e3f4  b       loc_10000e3bc
  10000e3f8  mov     x21, x0
  10000e3fc  mov     x0, x22
  10000e400  b       loc_10000e3cc

; ======================================================================
; -[ADInventory setLevel:forWeaponWithName:]
; address 0x10000e404  size 592  kind objc
; ======================================================================
  10000e404  stp     x28, x27, [sp, #-0x60]!
  10000e408  stp     x26, x25, [sp, #0x10]
  10000e40c  stp     x24, x23, [sp, #0x20]
  10000e410  stp     x22, x21, [sp, #0x30]
  10000e414  stp     x20, x19, [sp, #0x40]
  10000e418  stp     x29, x30, [sp, #0x50]
  10000e41c  add     x29, sp, #0x50
  10000e420  sub     sp, sp, #0x100
  10000e424  str     w2, [sp, #0x2c]
  10000e428  mov     x20, x0
  10000e42c  adrp    x8, #0x1003b0000
  10000e430  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000e434  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000e438  stur    x8, [x29, #-0x58]
  10000e43c  mov     x0, x3
  10000e440  bl      _objc_retain
  10000e444  mov     x19, x0
  10000e448  stp     xzr, xzr, [sp, #0x68]
  10000e44c  stp     xzr, xzr, [sp, #0x58]
  10000e450  stp     xzr, xzr, [sp, #0x48]
  10000e454  stp     xzr, xzr, [sp, #0x38]
  10000e458  adrp    x8, #0x100417000
  10000e45c  nop
  10000e460  ldr     x1, [x8, #0xd0]
  10000e464  mov     x0, x20
  10000e468  bl      _objc_msgSend                            ; [self weapons]
  10000e46c  str     x20, [sp, #8]
  10000e470  mov     x29, x29
  10000e474  bl      _objc_retainAutoreleasedReturnValue
  10000e478  str     x0, [sp, #0x30]
  10000e47c  adrp    x8, #0x100416000
  10000e480  nop
  10000e484  ldr     x1, [x8, #0xe00]
  10000e488  str     x1, [sp, #0x10]
  10000e48c  add     x2, sp, #0x38
  10000e490  add     x3, sp, #0x78
  10000e494  mov     w4, #0x10
  10000e498  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10000e49c  mov     x24, x0
  10000e4a0  cbz     x24, loc_10000e5b4                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  10000e4a4  ldr     x8, [sp, #0x48]
  10000e4a8  ldr     x27, [x8]
  10000e4ac  adrp    x8, #0x100417000
  10000e4b0  nop
  10000e4b4  ldr     x25, [x8, #0x40]
  10000e4b8  adrp    x8, #0x100416000
  10000e4bc  nop
  10000e4c0  ldr     x26, [x8, #0xf58]
  10000e4c4  adrp    x8, #0x100416000
  10000e4c8  nop
  10000e4cc  ldr     x8, [x8, #0xec0]
  10000e4d0  str     x8, [sp, #0x20]
  10000e4d4  adrp    x8, #0x100416000
  10000e4d8  nop
  10000e4dc  ldr     x8, [x8, #0xdc8]
  10000e4e0  str     x8, [sp, #0x18]
  10000e4e4  adrp    x21, #0x1003b9000
  10000e4e8  add     x21, x21, #0xdb0                         ; @"name"
loc_10000e4ec:
  10000e4ec  mov     x28, #0
loc_10000e4f0:
  10000e4f0  ldr     x8, [sp, #0x48]
  10000e4f4  ldr     x8, [x8]
  10000e4f8  cmp     x8, x27
  10000e4fc  b.eq    loc_10000e508                            ; if (x8 == x27)
  10000e500  ldr     x0, [sp, #0x30]
  10000e504  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self weapons])
loc_10000e508:
  10000e508  ldr     x8, [sp, #0x40]
  10000e50c  ldr     x23, [x8, x28, lsl #3]
  10000e510  mov     x0, x23
  10000e514  mov     x1, x25
  10000e518  mov     x2, x21
  10000e51c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000e520  mov     x29, x29
  10000e524  bl      _objc_retainAutoreleasedReturnValue
  10000e528  mov     x22, x0
  10000e52c  mov     x1, x26
  10000e530  mov     x2, x19
  10000e534  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg2]
  10000e538  mov     x20, x0
  10000e53c  mov     x0, x22
  10000e540  bl      _objc_release
  10000e544  cbz     w20, loc_10000e588                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg2] == 0)
  10000e548  adrp    x8, #0x10041d000
  10000e54c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10000e550  ldr     x1, [sp, #0x20]
  10000e554  ldr     w2, [sp, #0x2c]
  10000e558  bl      _objc_msgSend                            ; [NSNumber numberWithInt:arg1]
  10000e55c  mov     x29, x29
  10000e560  bl      _objc_retainAutoreleasedReturnValue
  10000e564  mov     x22, x0
  10000e568  mov     x0, x23
  10000e56c  ldr     x1, [sp, #0x18]
  10000e570  mov     x2, x22
  10000e574  adrp    x3, #0x1003b9000
  10000e578  add     x3, x3, #0xdf0                           ; @"level"
  10000e57c  bl      _objc_msgSend                            ; [x0 setObject:[NSNumber numberWithInt:arg1] forKey:@"level"]
  10000e580  mov     x0, x22
  10000e584  bl      _objc_release
loc_10000e588:
  10000e588  add     x28, x28, #1
  10000e58c  cmp     x28, x24
  10000e590  b.lo    loc_10000e4f0                            ; if ((x28 + 1) <u [[self weapons] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  10000e594  add     x2, sp, #0x38
  10000e598  add     x3, sp, #0x78
  10000e59c  mov     w4, #0x10
  10000e5a0  ldr     x0, [sp, #0x30]
  10000e5a4  ldr     x1, [sp, #0x10]
  10000e5a8  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10000e5ac  mov     x24, x0
  10000e5b0  cbnz    x24, loc_10000e4ec                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_10000e5b4:
  10000e5b4  ldr     x0, [sp, #0x30]
  10000e5b8  bl      _objc_release
  10000e5bc  adrp    x8, #0x100417000
  10000e5c0  nop
  10000e5c4  ldr     x1, [x8, #0x118]
  10000e5c8  ldr     x0, [sp, #8]
  10000e5cc  bl      _objc_msgSend                            ; [self saveWeaponDictionary]
  10000e5d0  mov     x0, x19
  10000e5d4  bl      _objc_release
  10000e5d8  ldur    x8, [x29, #-0x58]
  10000e5dc  adrp    x9, #0x1003b0000
  10000e5e0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000e5e4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000e5e8  sub     x8, x9, x8
  10000e5ec  cbnz    x8, loc_10000e610                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000e5f0  sub     sp, x29, #0x50
  10000e5f4  ldp     x29, x30, [sp, #0x50]
  10000e5f8  ldp     x20, x19, [sp, #0x40]
  10000e5fc  ldp     x22, x21, [sp, #0x30]
  10000e600  ldp     x24, x23, [sp, #0x20]
  10000e604  ldp     x26, x25, [sp, #0x10]
  10000e608  ldp     x28, x27, [sp], #0x60
  10000e60c  ret
loc_10000e610:
  10000e610  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000e614:
  10000e614  mov     x21, x0
  10000e618  b       loc_10000e62c
  10000e61c  b       loc_10000e620
loc_10000e620:
  10000e620  mov     x21, x0
  10000e624  mov     x0, x22
  10000e628  bl      _objc_release
loc_10000e62c:
  10000e62c  ldr     x0, [sp, #0x30]
  10000e630  bl      _objc_release
loc_10000e634:
  10000e634  mov     x0, x19
  10000e638  bl      _objc_release
  10000e63c  mov     x0, x21
  10000e640  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000e644  b       loc_10000e614
  10000e648  mov     x21, x0
  10000e64c  b       loc_10000e634
  10000e650  b       loc_10000e614

; ======================================================================
; -[ADInventory levelForPowerUpWithName:]
; address 0x10000e654  size 564  kind objc
; ======================================================================
  10000e654  stp     x28, x27, [sp, #-0x60]!
  10000e658  stp     x26, x25, [sp, #0x10]
  10000e65c  stp     x24, x23, [sp, #0x20]
  10000e660  stp     x22, x21, [sp, #0x30]
  10000e664  stp     x20, x19, [sp, #0x40]
  10000e668  stp     x29, x30, [sp, #0x50]
  10000e66c  add     x29, sp, #0x50
  10000e670  sub     sp, sp, #0xe0
  10000e674  mov     x20, x0
  10000e678  adrp    x24, #0x1003b0000
  10000e67c  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000e680  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000e684  stur    x24, [x29, #-0x58]
  10000e688  mov     x0, x2
  10000e68c  bl      _objc_retain
  10000e690  mov     x19, x0
  10000e694  stp     xzr, xzr, [sp, #0x48]
  10000e698  stp     xzr, xzr, [sp, #0x38]
  10000e69c  stp     xzr, xzr, [sp, #0x28]
  10000e6a0  stp     xzr, xzr, [sp, #0x18]
  10000e6a4  adrp    x8, #0x100417000
  10000e6a8  nop
  10000e6ac  ldr     x1, [x8, #0xf0]
  10000e6b0  mov     x0, x20
  10000e6b4  bl      _objc_msgSend                            ; [self powerups]
  10000e6b8  mov     x29, x29
  10000e6bc  bl      _objc_retainAutoreleasedReturnValue
  10000e6c0  str     x0, [sp, #0x10]
  10000e6c4  adrp    x8, #0x100416000
  10000e6c8  nop
  10000e6cc  ldr     x1, [x8, #0xe00]
  10000e6d0  str     x1, [sp, #8]
  10000e6d4  add     x2, sp, #0x18
  10000e6d8  add     x3, sp, #0x58
  10000e6dc  mov     w4, #0x10
  10000e6e0  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000e6e4  mov     x23, x0
  10000e6e8  cbz     x23, loc_10000e7f8                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10000e6ec  ldr     x8, [sp, #0x28]
  10000e6f0  ldr     x21, [x8]
  10000e6f4  adrp    x8, #0x100417000
  10000e6f8  nop
  10000e6fc  ldr     x22, [x8, #0x40]
  10000e700  adrp    x8, #0x100416000
  10000e704  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  10000e708  ldr     x24, [x8]
  10000e70c  adrp    x25, #0x1003b9000
  10000e710  add     x25, x25, #0xdb0                         ; @"name"
loc_10000e714:
  10000e714  mov     x20, #0
loc_10000e718:
  10000e718  ldr     x8, [sp, #0x28]
  10000e71c  ldr     x8, [x8]
  10000e720  cmp     x8, x21
  10000e724  b.eq    loc_10000e730                            ; if (x8 == x21)
  10000e728  ldr     x0, [sp, #0x10]
  10000e72c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self powerups])
loc_10000e730:
  10000e730  ldr     x8, [sp, #0x20]
  10000e734  ldr     x26, [x8, x20, lsl #3]
  10000e738  mov     x0, x26
  10000e73c  mov     x1, x22
  10000e740  mov     x2, x25
  10000e744  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000e748  mov     x29, x29
  10000e74c  bl      _objc_retainAutoreleasedReturnValue
  10000e750  mov     x27, x0
  10000e754  mov     x1, x24
  10000e758  mov     x2, x19
  10000e75c  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg1]
  10000e760  mov     x28, x0
  10000e764  mov     x0, x27
  10000e768  bl      _objc_release
  10000e76c  cbnz    w28, loc_10000e7ac                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg1] != 0)
  10000e770  add     x20, x20, #1
  10000e774  cmp     x20, x23
  10000e778  b.lo    loc_10000e718                            ; if ((x20 + 1) <u [[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10000e77c  add     x2, sp, #0x18
  10000e780  add     x3, sp, #0x58
  10000e784  mov     w4, #0x10
  10000e788  ldp     x1, x0, [sp, #8]
  10000e78c  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000e790  mov     x23, x0
  10000e794  cbnz    x23, loc_10000e714                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
  10000e798  mov     w21, #1
  10000e79c  adrp    x24, #0x1003b0000
  10000e7a0  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000e7a4  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000e7a8  b       loc_10000e7fc
loc_10000e7ac:
  10000e7ac  adrp    x2, #0x1003b9000
  10000e7b0  add     x2, x2, #0xdf0                           ; @"level"
  10000e7b4  mov     x0, x26
  10000e7b8  mov     x1, x22
  10000e7bc  bl      _objc_msgSend                            ; [x0 objectForKey:@"level"]
  10000e7c0  adrp    x24, #0x1003b0000
  10000e7c4  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000e7c8  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000e7cc  mov     x29, x29
  10000e7d0  bl      _objc_retainAutoreleasedReturnValue
  10000e7d4  mov     x22, x0
  10000e7d8  adrp    x8, #0x100417000
  10000e7dc  nop
  10000e7e0  ldr     x1, [x8, #0x110]
  10000e7e4  bl      _objc_msgSend                            ; [[x0 objectForKey:@"level"] intValue]
  10000e7e8  mov     x21, x0
  10000e7ec  mov     x0, x22
  10000e7f0  bl      _objc_release
  10000e7f4  b       loc_10000e7fc
loc_10000e7f8:
  10000e7f8  mov     w21, #1
loc_10000e7fc:
  10000e7fc  ldr     x0, [sp, #0x10]
  10000e800  bl      _objc_release
  10000e804  mov     x0, x19
  10000e808  bl      _objc_release
  10000e80c  ldur    x8, [x29, #-0x58]
  10000e810  sub     x8, x24, x8
  10000e814  cbnz    x8, loc_10000e83c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000e818  mov     x0, x21
  10000e81c  sub     sp, x29, #0x50
  10000e820  ldp     x29, x30, [sp, #0x50]
  10000e824  ldp     x20, x19, [sp, #0x40]
  10000e828  ldp     x22, x21, [sp, #0x30]
  10000e82c  ldp     x24, x23, [sp, #0x20]
  10000e830  ldp     x26, x25, [sp, #0x10]
  10000e834  ldp     x28, x27, [sp], #0x60
  10000e838  ret
loc_10000e83c:
  10000e83c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000e840:
  10000e840  mov     x21, x0
  10000e844  b       loc_10000e854
  10000e848  mov     x21, x0
  10000e84c  mov     x0, x27
loc_10000e850:
  10000e850  bl      _objc_release
loc_10000e854:
  10000e854  ldr     x0, [sp, #0x10]
  10000e858  bl      _objc_release
loc_10000e85c:
  10000e85c  mov     x0, x19
  10000e860  bl      _objc_release
  10000e864  mov     x0, x21
  10000e868  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000e86c  b       loc_10000e840
  10000e870  mov     x21, x0
  10000e874  b       loc_10000e85c
  10000e878  b       loc_10000e840
  10000e87c  mov     x21, x0
  10000e880  mov     x0, x22
  10000e884  b       loc_10000e850

; ======================================================================
; -[ADInventory setLevel:forPowerUpWithName:]
; address 0x10000e888  size 592  kind objc
; ======================================================================
  10000e888  stp     x28, x27, [sp, #-0x60]!
  10000e88c  stp     x26, x25, [sp, #0x10]
  10000e890  stp     x24, x23, [sp, #0x20]
  10000e894  stp     x22, x21, [sp, #0x30]
  10000e898  stp     x20, x19, [sp, #0x40]
  10000e89c  stp     x29, x30, [sp, #0x50]
  10000e8a0  add     x29, sp, #0x50
  10000e8a4  sub     sp, sp, #0x100
  10000e8a8  str     w2, [sp, #0x2c]
  10000e8ac  mov     x20, x0
  10000e8b0  adrp    x8, #0x1003b0000
  10000e8b4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000e8b8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000e8bc  stur    x8, [x29, #-0x58]
  10000e8c0  mov     x0, x3
  10000e8c4  bl      _objc_retain
  10000e8c8  mov     x19, x0
  10000e8cc  stp     xzr, xzr, [sp, #0x68]
  10000e8d0  stp     xzr, xzr, [sp, #0x58]
  10000e8d4  stp     xzr, xzr, [sp, #0x48]
  10000e8d8  stp     xzr, xzr, [sp, #0x38]
  10000e8dc  adrp    x8, #0x100417000
  10000e8e0  nop
  10000e8e4  ldr     x1, [x8, #0xf0]
  10000e8e8  mov     x0, x20
  10000e8ec  bl      _objc_msgSend                            ; [self powerups]
  10000e8f0  str     x20, [sp, #8]
  10000e8f4  mov     x29, x29
  10000e8f8  bl      _objc_retainAutoreleasedReturnValue
  10000e8fc  str     x0, [sp, #0x30]
  10000e900  adrp    x8, #0x100416000
  10000e904  nop
  10000e908  ldr     x1, [x8, #0xe00]
  10000e90c  str     x1, [sp, #0x10]
  10000e910  add     x2, sp, #0x38
  10000e914  add     x3, sp, #0x78
  10000e918  mov     w4, #0x10
  10000e91c  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10000e920  mov     x24, x0
  10000e924  cbz     x24, loc_10000ea38                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  10000e928  ldr     x8, [sp, #0x48]
  10000e92c  ldr     x27, [x8]
  10000e930  adrp    x8, #0x100417000
  10000e934  nop
  10000e938  ldr     x25, [x8, #0x40]
  10000e93c  adrp    x8, #0x100416000
  10000e940  nop
  10000e944  ldr     x26, [x8, #0xf58]
  10000e948  adrp    x8, #0x100416000
  10000e94c  nop
  10000e950  ldr     x8, [x8, #0xec0]
  10000e954  str     x8, [sp, #0x20]
  10000e958  adrp    x8, #0x100416000
  10000e95c  nop
  10000e960  ldr     x8, [x8, #0xdc8]
  10000e964  str     x8, [sp, #0x18]
  10000e968  adrp    x21, #0x1003b9000
  10000e96c  add     x21, x21, #0xdb0                         ; @"name"
loc_10000e970:
  10000e970  mov     x28, #0
loc_10000e974:
  10000e974  ldr     x8, [sp, #0x48]
  10000e978  ldr     x8, [x8]
  10000e97c  cmp     x8, x27
  10000e980  b.eq    loc_10000e98c                            ; if (x8 == x27)
  10000e984  ldr     x0, [sp, #0x30]
  10000e988  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self powerups])
loc_10000e98c:
  10000e98c  ldr     x8, [sp, #0x40]
  10000e990  ldr     x23, [x8, x28, lsl #3]
  10000e994  mov     x0, x23
  10000e998  mov     x1, x25
  10000e99c  mov     x2, x21
  10000e9a0  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000e9a4  mov     x29, x29
  10000e9a8  bl      _objc_retainAutoreleasedReturnValue
  10000e9ac  mov     x22, x0
  10000e9b0  mov     x1, x26
  10000e9b4  mov     x2, x19
  10000e9b8  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg2]
  10000e9bc  mov     x20, x0
  10000e9c0  mov     x0, x22
  10000e9c4  bl      _objc_release
  10000e9c8  cbz     w20, loc_10000ea0c                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg2] == 0)
  10000e9cc  adrp    x8, #0x10041d000
  10000e9d0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10000e9d4  ldr     x1, [sp, #0x20]
  10000e9d8  ldr     w2, [sp, #0x2c]
  10000e9dc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:arg1]
  10000e9e0  mov     x29, x29
  10000e9e4  bl      _objc_retainAutoreleasedReturnValue
  10000e9e8  mov     x22, x0
  10000e9ec  mov     x0, x23
  10000e9f0  ldr     x1, [sp, #0x18]
  10000e9f4  mov     x2, x22
  10000e9f8  adrp    x3, #0x1003b9000
  10000e9fc  add     x3, x3, #0xdf0                           ; @"level"
  10000ea00  bl      _objc_msgSend                            ; [x0 setObject:[NSNumber numberWithInt:arg1] forKey:@"level"]
  10000ea04  mov     x0, x22
  10000ea08  bl      _objc_release
loc_10000ea0c:
  10000ea0c  add     x28, x28, #1
  10000ea10  cmp     x28, x24
  10000ea14  b.lo    loc_10000e974                            ; if ((x28 + 1) <u [[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  10000ea18  add     x2, sp, #0x38
  10000ea1c  add     x3, sp, #0x78
  10000ea20  mov     w4, #0x10
  10000ea24  ldr     x0, [sp, #0x30]
  10000ea28  ldr     x1, [sp, #0x10]
  10000ea2c  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10000ea30  mov     x24, x0
  10000ea34  cbnz    x24, loc_10000e970                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_10000ea38:
  10000ea38  ldr     x0, [sp, #0x30]
  10000ea3c  bl      _objc_release
  10000ea40  adrp    x8, #0x100417000
  10000ea44  nop
  10000ea48  ldr     x1, [x8, #0x118]
  10000ea4c  ldr     x0, [sp, #8]
  10000ea50  bl      _objc_msgSend                            ; [self saveWeaponDictionary]
  10000ea54  mov     x0, x19
  10000ea58  bl      _objc_release
  10000ea5c  ldur    x8, [x29, #-0x58]
  10000ea60  adrp    x9, #0x1003b0000
  10000ea64  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000ea68  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000ea6c  sub     x8, x9, x8
  10000ea70  cbnz    x8, loc_10000ea94                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000ea74  sub     sp, x29, #0x50
  10000ea78  ldp     x29, x30, [sp, #0x50]
  10000ea7c  ldp     x20, x19, [sp, #0x40]
  10000ea80  ldp     x22, x21, [sp, #0x30]
  10000ea84  ldp     x24, x23, [sp, #0x20]
  10000ea88  ldp     x26, x25, [sp, #0x10]
  10000ea8c  ldp     x28, x27, [sp], #0x60
  10000ea90  ret
loc_10000ea94:
  10000ea94  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000ea98:
  10000ea98  mov     x21, x0
  10000ea9c  b       loc_10000eab0
  10000eaa0  b       loc_10000eaa4
loc_10000eaa4:
  10000eaa4  mov     x21, x0
  10000eaa8  mov     x0, x22
  10000eaac  bl      _objc_release
loc_10000eab0:
  10000eab0  ldr     x0, [sp, #0x30]
  10000eab4  bl      _objc_release
loc_10000eab8:
  10000eab8  mov     x0, x19
  10000eabc  bl      _objc_release
  10000eac0  mov     x0, x21
  10000eac4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000eac8  b       loc_10000ea98
  10000eacc  mov     x21, x0
  10000ead0  b       loc_10000eab8
  10000ead4  b       loc_10000ea98

; ======================================================================
; -[ADInventory quantityForPowerUpWithName:]
; address 0x10000ead8  size 564  kind objc
; ======================================================================
  10000ead8  stp     x28, x27, [sp, #-0x60]!
  10000eadc  stp     x26, x25, [sp, #0x10]
  10000eae0  stp     x24, x23, [sp, #0x20]
  10000eae4  stp     x22, x21, [sp, #0x30]
  10000eae8  stp     x20, x19, [sp, #0x40]
  10000eaec  stp     x29, x30, [sp, #0x50]
  10000eaf0  add     x29, sp, #0x50
  10000eaf4  sub     sp, sp, #0xe0
  10000eaf8  mov     x20, x0
  10000eafc  adrp    x24, #0x1003b0000
  10000eb00  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000eb04  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000eb08  stur    x24, [x29, #-0x58]
  10000eb0c  mov     x0, x2
  10000eb10  bl      _objc_retain
  10000eb14  mov     x19, x0
  10000eb18  stp     xzr, xzr, [sp, #0x48]
  10000eb1c  stp     xzr, xzr, [sp, #0x38]
  10000eb20  stp     xzr, xzr, [sp, #0x28]
  10000eb24  stp     xzr, xzr, [sp, #0x18]
  10000eb28  adrp    x8, #0x100417000
  10000eb2c  nop
  10000eb30  ldr     x1, [x8, #0xf0]
  10000eb34  mov     x0, x20
  10000eb38  bl      _objc_msgSend                            ; [self powerups]
  10000eb3c  mov     x29, x29
  10000eb40  bl      _objc_retainAutoreleasedReturnValue
  10000eb44  str     x0, [sp, #0x10]
  10000eb48  adrp    x8, #0x100416000
  10000eb4c  nop
  10000eb50  ldr     x1, [x8, #0xe00]
  10000eb54  str     x1, [sp, #8]
  10000eb58  add     x2, sp, #0x18
  10000eb5c  add     x3, sp, #0x58
  10000eb60  mov     w4, #0x10
  10000eb64  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000eb68  mov     x23, x0
  10000eb6c  cbz     x23, loc_10000ec7c                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10000eb70  ldr     x8, [sp, #0x28]
  10000eb74  ldr     x21, [x8]
  10000eb78  adrp    x8, #0x100417000
  10000eb7c  nop
  10000eb80  ldr     x22, [x8, #0x40]
  10000eb84  adrp    x8, #0x100416000
  10000eb88  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  10000eb8c  ldr     x24, [x8]
  10000eb90  adrp    x25, #0x1003b9000
  10000eb94  add     x25, x25, #0xdb0                         ; @"name"
loc_10000eb98:
  10000eb98  mov     x20, #0
loc_10000eb9c:
  10000eb9c  ldr     x8, [sp, #0x28]
  10000eba0  ldr     x8, [x8]
  10000eba4  cmp     x8, x21
  10000eba8  b.eq    loc_10000ebb4                            ; if (x8 == x21)
  10000ebac  ldr     x0, [sp, #0x10]
  10000ebb0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self powerups])
loc_10000ebb4:
  10000ebb4  ldr     x8, [sp, #0x20]
  10000ebb8  ldr     x26, [x8, x20, lsl #3]
  10000ebbc  mov     x0, x26
  10000ebc0  mov     x1, x22
  10000ebc4  mov     x2, x25
  10000ebc8  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000ebcc  mov     x29, x29
  10000ebd0  bl      _objc_retainAutoreleasedReturnValue
  10000ebd4  mov     x27, x0
  10000ebd8  mov     x1, x24
  10000ebdc  mov     x2, x19
  10000ebe0  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg1]
  10000ebe4  mov     x28, x0
  10000ebe8  mov     x0, x27
  10000ebec  bl      _objc_release
  10000ebf0  cbnz    w28, loc_10000ec30                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg1] != 0)
  10000ebf4  add     x20, x20, #1
  10000ebf8  cmp     x20, x23
  10000ebfc  b.lo    loc_10000eb9c                            ; if ((x20 + 1) <u [[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10000ec00  add     x2, sp, #0x18
  10000ec04  add     x3, sp, #0x58
  10000ec08  mov     w4, #0x10
  10000ec0c  ldp     x1, x0, [sp, #8]
  10000ec10  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000ec14  mov     x23, x0
  10000ec18  cbnz    x23, loc_10000eb98                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
  10000ec1c  mov     w21, #0
  10000ec20  adrp    x24, #0x1003b0000
  10000ec24  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000ec28  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000ec2c  b       loc_10000ec80
loc_10000ec30:
  10000ec30  adrp    x2, #0x1003b9000
  10000ec34  add     x2, x2, #0xed0                           ; @"quantity"
  10000ec38  mov     x0, x26
  10000ec3c  mov     x1, x22
  10000ec40  bl      _objc_msgSend                            ; [x0 objectForKey:@"quantity"]
  10000ec44  adrp    x24, #0x1003b0000
  10000ec48  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000ec4c  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000ec50  mov     x29, x29
  10000ec54  bl      _objc_retainAutoreleasedReturnValue
  10000ec58  mov     x22, x0
  10000ec5c  adrp    x8, #0x100417000
  10000ec60  nop
  10000ec64  ldr     x1, [x8, #0x110]
  10000ec68  bl      _objc_msgSend                            ; [[x0 objectForKey:@"quantity"] intValue]
  10000ec6c  mov     x21, x0
  10000ec70  mov     x0, x22
  10000ec74  bl      _objc_release
  10000ec78  b       loc_10000ec80
loc_10000ec7c:
  10000ec7c  mov     w21, #0
loc_10000ec80:
  10000ec80  ldr     x0, [sp, #0x10]
  10000ec84  bl      _objc_release
  10000ec88  mov     x0, x19
  10000ec8c  bl      _objc_release
  10000ec90  ldur    x8, [x29, #-0x58]
  10000ec94  sub     x8, x24, x8
  10000ec98  cbnz    x8, loc_10000ecc0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000ec9c  mov     x0, x21
  10000eca0  sub     sp, x29, #0x50
  10000eca4  ldp     x29, x30, [sp, #0x50]
  10000eca8  ldp     x20, x19, [sp, #0x40]
  10000ecac  ldp     x22, x21, [sp, #0x30]
  10000ecb0  ldp     x24, x23, [sp, #0x20]
  10000ecb4  ldp     x26, x25, [sp, #0x10]
  10000ecb8  ldp     x28, x27, [sp], #0x60
  10000ecbc  ret
loc_10000ecc0:
  10000ecc0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000ecc4:
  10000ecc4  mov     x21, x0
  10000ecc8  b       loc_10000ecd8
  10000eccc  mov     x21, x0
  10000ecd0  mov     x0, x27
loc_10000ecd4:
  10000ecd4  bl      _objc_release
loc_10000ecd8:
  10000ecd8  ldr     x0, [sp, #0x10]
  10000ecdc  bl      _objc_release
loc_10000ece0:
  10000ece0  mov     x0, x19
  10000ece4  bl      _objc_release
  10000ece8  mov     x0, x21
  10000ecec  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000ecf0  b       loc_10000ecc4
  10000ecf4  mov     x21, x0
  10000ecf8  b       loc_10000ece0
  10000ecfc  b       loc_10000ecc4
  10000ed00  mov     x21, x0
  10000ed04  mov     x0, x22
  10000ed08  b       loc_10000ecd4

; ======================================================================
; -[ADInventory setQuantity:ForPowerUpWithName:]
; address 0x10000ed0c  size 592  kind objc
; ======================================================================
  10000ed0c  stp     x28, x27, [sp, #-0x60]!
  10000ed10  stp     x26, x25, [sp, #0x10]
  10000ed14  stp     x24, x23, [sp, #0x20]
  10000ed18  stp     x22, x21, [sp, #0x30]
  10000ed1c  stp     x20, x19, [sp, #0x40]
  10000ed20  stp     x29, x30, [sp, #0x50]
  10000ed24  add     x29, sp, #0x50
  10000ed28  sub     sp, sp, #0x100
  10000ed2c  str     w2, [sp, #0x2c]
  10000ed30  mov     x20, x0
  10000ed34  adrp    x8, #0x1003b0000
  10000ed38  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000ed3c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000ed40  stur    x8, [x29, #-0x58]
  10000ed44  mov     x0, x3
  10000ed48  bl      _objc_retain
  10000ed4c  mov     x19, x0
  10000ed50  stp     xzr, xzr, [sp, #0x68]
  10000ed54  stp     xzr, xzr, [sp, #0x58]
  10000ed58  stp     xzr, xzr, [sp, #0x48]
  10000ed5c  stp     xzr, xzr, [sp, #0x38]
  10000ed60  adrp    x8, #0x100417000
  10000ed64  nop
  10000ed68  ldr     x1, [x8, #0xf0]
  10000ed6c  mov     x0, x20
  10000ed70  bl      _objc_msgSend                            ; [self powerups]
  10000ed74  str     x20, [sp, #8]
  10000ed78  mov     x29, x29
  10000ed7c  bl      _objc_retainAutoreleasedReturnValue
  10000ed80  str     x0, [sp, #0x30]
  10000ed84  adrp    x8, #0x100416000
  10000ed88  nop
  10000ed8c  ldr     x1, [x8, #0xe00]
  10000ed90  str     x1, [sp, #0x10]
  10000ed94  add     x2, sp, #0x38
  10000ed98  add     x3, sp, #0x78
  10000ed9c  mov     w4, #0x10
  10000eda0  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10000eda4  mov     x24, x0
  10000eda8  cbz     x24, loc_10000eebc                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  10000edac  ldr     x8, [sp, #0x48]
  10000edb0  ldr     x27, [x8]
  10000edb4  adrp    x8, #0x100417000
  10000edb8  nop
  10000edbc  ldr     x25, [x8, #0x40]
  10000edc0  adrp    x8, #0x100416000
  10000edc4  nop
  10000edc8  ldr     x26, [x8, #0xf58]
  10000edcc  adrp    x8, #0x100416000
  10000edd0  nop
  10000edd4  ldr     x8, [x8, #0xec0]
  10000edd8  str     x8, [sp, #0x20]
  10000eddc  adrp    x8, #0x100416000
  10000ede0  nop
  10000ede4  ldr     x8, [x8, #0xdc8]
  10000ede8  str     x8, [sp, #0x18]
  10000edec  adrp    x21, #0x1003b9000
  10000edf0  add     x21, x21, #0xdb0                         ; @"name"
loc_10000edf4:
  10000edf4  mov     x28, #0
loc_10000edf8:
  10000edf8  ldr     x8, [sp, #0x48]
  10000edfc  ldr     x8, [x8]
  10000ee00  cmp     x8, x27
  10000ee04  b.eq    loc_10000ee10                            ; if (x8 == x27)
  10000ee08  ldr     x0, [sp, #0x30]
  10000ee0c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self powerups])
loc_10000ee10:
  10000ee10  ldr     x8, [sp, #0x40]
  10000ee14  ldr     x23, [x8, x28, lsl #3]
  10000ee18  mov     x0, x23
  10000ee1c  mov     x1, x25
  10000ee20  mov     x2, x21
  10000ee24  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000ee28  mov     x29, x29
  10000ee2c  bl      _objc_retainAutoreleasedReturnValue
  10000ee30  mov     x22, x0
  10000ee34  mov     x1, x26
  10000ee38  mov     x2, x19
  10000ee3c  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg2]
  10000ee40  mov     x20, x0
  10000ee44  mov     x0, x22
  10000ee48  bl      _objc_release
  10000ee4c  cbz     w20, loc_10000ee90                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg2] == 0)
  10000ee50  adrp    x8, #0x10041d000
  10000ee54  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10000ee58  ldr     x1, [sp, #0x20]
  10000ee5c  ldr     w2, [sp, #0x2c]
  10000ee60  bl      _objc_msgSend                            ; [NSNumber numberWithInt:arg1]
  10000ee64  mov     x29, x29
  10000ee68  bl      _objc_retainAutoreleasedReturnValue
  10000ee6c  mov     x22, x0
  10000ee70  mov     x0, x23
  10000ee74  ldr     x1, [sp, #0x18]
  10000ee78  mov     x2, x22
  10000ee7c  adrp    x3, #0x1003b9000
  10000ee80  add     x3, x3, #0xed0                           ; @"quantity"
  10000ee84  bl      _objc_msgSend                            ; [x0 setObject:[NSNumber numberWithInt:arg1] forKey:@"quantity"]
  10000ee88  mov     x0, x22
  10000ee8c  bl      _objc_release
loc_10000ee90:
  10000ee90  add     x28, x28, #1
  10000ee94  cmp     x28, x24
  10000ee98  b.lo    loc_10000edf8                            ; if ((x28 + 1) <u [[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  10000ee9c  add     x2, sp, #0x38
  10000eea0  add     x3, sp, #0x78
  10000eea4  mov     w4, #0x10
  10000eea8  ldr     x0, [sp, #0x30]
  10000eeac  ldr     x1, [sp, #0x10]
  10000eeb0  bl      _objc_msgSend                            ; [[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10000eeb4  mov     x24, x0
  10000eeb8  cbnz    x24, loc_10000edf4                       ; if ([[self powerups] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_10000eebc:
  10000eebc  ldr     x0, [sp, #0x30]
  10000eec0  bl      _objc_release
  10000eec4  adrp    x8, #0x100417000
  10000eec8  nop
  10000eecc  ldr     x1, [x8, #0x118]
  10000eed0  ldr     x0, [sp, #8]
  10000eed4  bl      _objc_msgSend                            ; [self saveWeaponDictionary]
  10000eed8  mov     x0, x19
  10000eedc  bl      _objc_release
  10000eee0  ldur    x8, [x29, #-0x58]
  10000eee4  adrp    x9, #0x1003b0000
  10000eee8  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000eeec  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000eef0  sub     x8, x9, x8
  10000eef4  cbnz    x8, loc_10000ef18                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000eef8  sub     sp, x29, #0x50
  10000eefc  ldp     x29, x30, [sp, #0x50]
  10000ef00  ldp     x20, x19, [sp, #0x40]
  10000ef04  ldp     x22, x21, [sp, #0x30]
  10000ef08  ldp     x24, x23, [sp, #0x20]
  10000ef0c  ldp     x26, x25, [sp, #0x10]
  10000ef10  ldp     x28, x27, [sp], #0x60
  10000ef14  ret
loc_10000ef18:
  10000ef18  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000ef1c:
  10000ef1c  mov     x21, x0
  10000ef20  b       loc_10000ef34
  10000ef24  b       loc_10000ef28
loc_10000ef28:
  10000ef28  mov     x21, x0
  10000ef2c  mov     x0, x22
  10000ef30  bl      _objc_release
loc_10000ef34:
  10000ef34  ldr     x0, [sp, #0x30]
  10000ef38  bl      _objc_release
loc_10000ef3c:
  10000ef3c  mov     x0, x19
  10000ef40  bl      _objc_release
  10000ef44  mov     x0, x21
  10000ef48  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000ef4c  b       loc_10000ef1c
  10000ef50  mov     x21, x0
  10000ef54  b       loc_10000ef3c
  10000ef58  b       loc_10000ef1c

; ======================================================================
; -[ADInventory hasUnlockedWeaponWithName:]
; address 0x10000ef5c  size 568  kind objc
; ======================================================================
  10000ef5c  stp     x28, x27, [sp, #-0x60]!
  10000ef60  stp     x26, x25, [sp, #0x10]
  10000ef64  stp     x24, x23, [sp, #0x20]
  10000ef68  stp     x22, x21, [sp, #0x30]
  10000ef6c  stp     x20, x19, [sp, #0x40]
  10000ef70  stp     x29, x30, [sp, #0x50]
  10000ef74  add     x29, sp, #0x50
  10000ef78  sub     sp, sp, #0xe0
  10000ef7c  mov     x20, x0
  10000ef80  adrp    x24, #0x1003b0000
  10000ef84  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000ef88  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000ef8c  stur    x24, [x29, #-0x58]
  10000ef90  mov     x0, x2
  10000ef94  bl      _objc_retain
  10000ef98  mov     x19, x0
  10000ef9c  stp     xzr, xzr, [sp, #0x48]
  10000efa0  stp     xzr, xzr, [sp, #0x38]
  10000efa4  stp     xzr, xzr, [sp, #0x28]
  10000efa8  stp     xzr, xzr, [sp, #0x18]
  10000efac  adrp    x8, #0x100417000
  10000efb0  nop
  10000efb4  ldr     x1, [x8, #0xd0]
  10000efb8  mov     x0, x20
  10000efbc  bl      _objc_msgSend                            ; [self weapons]
  10000efc0  mov     x29, x29
  10000efc4  bl      _objc_retainAutoreleasedReturnValue
  10000efc8  str     x0, [sp, #0x10]
  10000efcc  adrp    x8, #0x100416000
  10000efd0  nop
  10000efd4  ldr     x1, [x8, #0xe00]
  10000efd8  str     x1, [sp, #8]
  10000efdc  add     x2, sp, #0x18
  10000efe0  add     x3, sp, #0x58
  10000efe4  mov     w4, #0x10
  10000efe8  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000efec  mov     x23, x0
  10000eff0  cbz     x23, loc_10000f104                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10000eff4  ldr     x8, [sp, #0x28]
  10000eff8  ldr     x21, [x8]
  10000effc  adrp    x8, #0x100417000
  10000f000  nop
  10000f004  ldr     x22, [x8, #0x40]
  10000f008  adrp    x8, #0x100416000
  10000f00c  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  10000f010  ldr     x24, [x8]
  10000f014  adrp    x25, #0x1003b9000
  10000f018  add     x25, x25, #0xdb0                         ; @"name"
loc_10000f01c:
  10000f01c  mov     x20, #0
loc_10000f020:
  10000f020  ldr     x8, [sp, #0x28]
  10000f024  ldr     x8, [x8]
  10000f028  cmp     x8, x21
  10000f02c  b.eq    loc_10000f038                            ; if (x8 == x21)
  10000f030  ldr     x0, [sp, #0x10]
  10000f034  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self weapons])
loc_10000f038:
  10000f038  ldr     x8, [sp, #0x20]
  10000f03c  ldr     x26, [x8, x20, lsl #3]
  10000f040  mov     x0, x26
  10000f044  mov     x1, x22
  10000f048  mov     x2, x25
  10000f04c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000f050  mov     x29, x29
  10000f054  bl      _objc_retainAutoreleasedReturnValue
  10000f058  mov     x27, x0
  10000f05c  mov     x1, x24
  10000f060  mov     x2, x19
  10000f064  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg1]
  10000f068  mov     x28, x0
  10000f06c  mov     x0, x27
  10000f070  bl      _objc_release
  10000f074  cbnz    w28, loc_10000f0b4                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg1] != 0)
  10000f078  add     x20, x20, #1
  10000f07c  cmp     x20, x23
  10000f080  b.lo    loc_10000f020                            ; if ((x20 + 1) <u [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10000f084  add     x2, sp, #0x18
  10000f088  add     x3, sp, #0x58
  10000f08c  mov     w4, #0x10
  10000f090  ldp     x1, x0, [sp, #8]
  10000f094  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000f098  mov     x23, x0
  10000f09c  cbnz    x23, loc_10000f01c                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
  10000f0a0  mov     w20, #0
  10000f0a4  adrp    x24, #0x1003b0000
  10000f0a8  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000f0ac  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000f0b0  b       loc_10000f108
loc_10000f0b4:
  10000f0b4  adrp    x2, #0x1003b9000
  10000f0b8  add     x2, x2, #0xdd0                           ; @"purchased"
  10000f0bc  mov     x0, x26
  10000f0c0  mov     x1, x22
  10000f0c4  bl      _objc_msgSend                            ; [x0 objectForKey:@"purchased"]
  10000f0c8  adrp    x24, #0x1003b0000
  10000f0cc  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10000f0d0  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10000f0d4  mov     x29, x29
  10000f0d8  bl      _objc_retainAutoreleasedReturnValue
  10000f0dc  mov     x22, x0
  10000f0e0  adrp    x8, #0x100417000
  10000f0e4  nop
  10000f0e8  ldr     x1, [x8, #0xd8]
  10000f0ec  bl      _objc_msgSend                            ; [[x0 objectForKey:@"purchased"] boolValue]
  10000f0f0  mov     x21, x0
  10000f0f4  mov     x0, x22
  10000f0f8  bl      _objc_release
  10000f0fc  mov     w20, #1
  10000f100  b       loc_10000f108
loc_10000f104:
  10000f104  mov     w20, #0
loc_10000f108:
  10000f108  ldr     x0, [sp, #0x10]
  10000f10c  bl      _objc_release
  10000f110  mov     x0, x19
  10000f114  bl      _objc_release
  10000f118  ldur    x8, [x29, #-0x58]
  10000f11c  sub     x8, x24, x8
  10000f120  cbnz    x8, loc_10000f148                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000f124  and     w0, w21, w20
  10000f128  sub     sp, x29, #0x50
  10000f12c  ldp     x29, x30, [sp, #0x50]
  10000f130  ldp     x20, x19, [sp, #0x40]
  10000f134  ldp     x22, x21, [sp, #0x30]
  10000f138  ldp     x24, x23, [sp, #0x20]
  10000f13c  ldp     x26, x25, [sp, #0x10]
  10000f140  ldp     x28, x27, [sp], #0x60
  10000f144  ret
loc_10000f148:
  10000f148  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000f14c:
  10000f14c  mov     x21, x0
  10000f150  b       loc_10000f160
  10000f154  mov     x21, x0
  10000f158  mov     x0, x27
loc_10000f15c:
  10000f15c  bl      _objc_release
loc_10000f160:
  10000f160  ldr     x0, [sp, #0x10]
  10000f164  bl      _objc_release
loc_10000f168:
  10000f168  mov     x0, x19
  10000f16c  bl      _objc_release
  10000f170  mov     x0, x21
  10000f174  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000f178  b       loc_10000f14c
  10000f17c  mov     x21, x0
  10000f180  b       loc_10000f168
  10000f184  b       loc_10000f14c
  10000f188  mov     x21, x0
  10000f18c  mov     x0, x22
  10000f190  b       loc_10000f15c

; ======================================================================
; -[ADInventory getNumberOfWeaponsUnlocked]
; address 0x10000f194  size 420  kind objc
; ======================================================================
  10000f194  stp     x28, x27, [sp, #-0x60]!
  10000f198  stp     x26, x25, [sp, #0x10]
  10000f19c  stp     x24, x23, [sp, #0x20]
  10000f1a0  stp     x22, x21, [sp, #0x30]
  10000f1a4  stp     x20, x19, [sp, #0x40]
  10000f1a8  stp     x29, x30, [sp, #0x50]
  10000f1ac  add     x29, sp, #0x50
  10000f1b0  sub     sp, sp, #0xe0
  10000f1b4  adrp    x8, #0x1003b0000
  10000f1b8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000f1bc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000f1c0  stur    x8, [x29, #-0x58]
  10000f1c4  stp     xzr, xzr, [sp, #0x48]
  10000f1c8  stp     xzr, xzr, [sp, #0x38]
  10000f1cc  stp     xzr, xzr, [sp, #0x28]
  10000f1d0  stp     xzr, xzr, [sp, #0x18]
  10000f1d4  adrp    x8, #0x100417000
  10000f1d8  nop
  10000f1dc  ldr     x1, [x8, #0xd0]
  10000f1e0  bl      _objc_msgSend                            ; [self weapons]
  10000f1e4  mov     x29, x29
  10000f1e8  bl      _objc_retainAutoreleasedReturnValue
  10000f1ec  mov     x19, x0
  10000f1f0  adrp    x8, #0x100416000
  10000f1f4  nop
  10000f1f8  ldr     x1, [x8, #0xe00]
  10000f1fc  str     x1, [sp, #0x10]
  10000f200  add     x2, sp, #0x18
  10000f204  add     x3, sp, #0x58
  10000f208  mov     w4, #0x10
  10000f20c  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000f210  mov     x23, x0
  10000f214  mov     x21, #0
  10000f218  cbz     x23, loc_10000f2c4                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10000f21c  ldr     x8, [sp, #0x28]
  10000f220  ldr     x28, [x8]
  10000f224  adrp    x8, #0x100417000
  10000f228  nop
  10000f22c  ldr     x22, [x8, #0x40]
  10000f230  adrp    x8, #0x100417000
  10000f234  add     x8, x8, #0xd8                            ; &@selector(boolValue)
  10000f238  ldr     x24, [x8]
  10000f23c  adrp    x25, #0x1003b9000
  10000f240  add     x25, x25, #0xdd0                         ; @"purchased"
loc_10000f244:
  10000f244  mov     x20, #0
loc_10000f248:
  10000f248  ldr     x8, [sp, #0x28]
  10000f24c  ldr     x8, [x8]
  10000f250  cmp     x8, x28
  10000f254  b.eq    loc_10000f260                            ; if (x8 == x28)
  10000f258  mov     x0, x19
  10000f25c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self weapons])
loc_10000f260:
  10000f260  ldr     x8, [sp, #0x20]
  10000f264  ldr     x0, [x8, x20, lsl #3]
  10000f268  mov     x1, x22
  10000f26c  mov     x2, x25
  10000f270  bl      _objc_msgSend                            ; [x0 objectForKey:@"purchased"]
  10000f274  mov     x29, x29
  10000f278  bl      _objc_retainAutoreleasedReturnValue
  10000f27c  mov     x26, x0
  10000f280  mov     x1, x24
  10000f284  bl      _objc_msgSend                            ; [[x0 objectForKey:@"purchased"] boolValue]
  10000f288  mov     x27, x0
  10000f28c  mov     x0, x26
  10000f290  bl      _objc_release
  10000f294  add     x21, x21, w27, uxtw
  10000f298  add     x20, x20, #1
  10000f29c  cmp     x20, x23
  10000f2a0  b.lo    loc_10000f248                            ; if ((x20 + 1) <u [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10000f2a4  add     x2, sp, #0x18
  10000f2a8  add     x3, sp, #0x58
  10000f2ac  mov     w4, #0x10
  10000f2b0  mov     x0, x19
  10000f2b4  ldr     x1, [sp, #0x10]
  10000f2b8  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10000f2bc  mov     x23, x0
  10000f2c0  cbnz    x23, loc_10000f244                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_10000f2c4:
  10000f2c4  mov     x0, x19
  10000f2c8  bl      _objc_release
  10000f2cc  ldur    x8, [x29, #-0x58]
  10000f2d0  adrp    x9, #0x1003b0000
  10000f2d4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000f2d8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000f2dc  sub     x8, x9, x8
  10000f2e0  cbnz    x8, loc_10000f308                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000f2e4  mov     x0, x21
  10000f2e8  sub     sp, x29, #0x50
  10000f2ec  ldp     x29, x30, [sp, #0x50]
  10000f2f0  ldp     x20, x19, [sp, #0x40]
  10000f2f4  ldp     x22, x21, [sp, #0x30]
  10000f2f8  ldp     x24, x23, [sp, #0x20]
  10000f2fc  ldp     x26, x25, [sp, #0x10]
  10000f300  ldp     x28, x27, [sp], #0x60
  10000f304  ret
loc_10000f308:
  10000f308  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000f30c:
  10000f30c  mov     x20, x0
  10000f310  b       loc_10000f320
  10000f314  mov     x20, x0
  10000f318  mov     x0, x26
  10000f31c  bl      _objc_release
loc_10000f320:
  10000f320  mov     x0, x19
  10000f324  bl      _objc_release
  10000f328  mov     x0, x20
  10000f32c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000f330  b       loc_10000f30c
  10000f334  b       loc_10000f30c

; ======================================================================
; -[ADInventory unlockWeaponWithName:]
; address 0x10000f338  size 668  kind objc
; ======================================================================
  10000f338  stp     x28, x27, [sp, #-0x60]!
  10000f33c  stp     x26, x25, [sp, #0x10]
  10000f340  stp     x24, x23, [sp, #0x20]
  10000f344  stp     x22, x21, [sp, #0x30]
  10000f348  stp     x20, x19, [sp, #0x40]
  10000f34c  stp     x29, x30, [sp, #0x50]
  10000f350  add     x29, sp, #0x50
  10000f354  sub     sp, sp, #0x110
  10000f358  mov     x20, x0
  10000f35c  adrp    x8, #0x1003b0000
  10000f360  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10000f364  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10000f368  stur    x8, [x29, #-0x58]
  10000f36c  mov     x0, x2
  10000f370  bl      _objc_retain
  10000f374  mov     x19, x0
  10000f378  stp     xzr, xzr, [sp, #0x78]
  10000f37c  stp     xzr, xzr, [sp, #0x68]
  10000f380  stp     xzr, xzr, [sp, #0x58]
  10000f384  stp     xzr, xzr, [sp, #0x48]
  10000f388  adrp    x8, #0x100417000
  10000f38c  nop
  10000f390  ldr     x1, [x8, #0xd0]
  10000f394  mov     x0, x20
  10000f398  bl      _objc_msgSend                            ; [self weapons]
  10000f39c  str     x20, [sp, #0x10]
  10000f3a0  mov     x29, x29
  10000f3a4  bl      _objc_retainAutoreleasedReturnValue
  10000f3a8  str     x0, [sp, #0x40]
  10000f3ac  adrp    x8, #0x100416000
  10000f3b0  nop
  10000f3b4  ldr     x1, [x8, #0xe00]
  10000f3b8  str     x1, [sp, #0x18]
  10000f3bc  add     x2, sp, #0x48
  10000f3c0  add     x3, sp, #0x88
  10000f3c4  mov     w4, #0x10
  10000f3c8  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  10000f3cc  mov     x23, x0
  10000f3d0  cbz     x23, loc_10000f530                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] == 0)
  10000f3d4  ldr     x8, [sp, #0x58]
  10000f3d8  ldr     x28, [x8]
  10000f3dc  adrp    x8, #0x100417000
  10000f3e0  nop
  10000f3e4  ldr     x24, [x8, #0x40]
  10000f3e8  adrp    x8, #0x100416000
  10000f3ec  nop
  10000f3f0  ldr     x25, [x8, #0xf58]
  10000f3f4  adrp    x8, #0x100417000
  10000f3f8  nop
  10000f3fc  ldr     x8, [x8, #0xb8]
  10000f400  str     x8, [sp, #0x38]
  10000f404  adrp    x8, #0x100416000
  10000f408  nop
  10000f40c  ldr     x8, [x8, #0xdc8]
  10000f410  str     x8, [sp, #0x30]
  10000f414  adrp    x8, #0x100416000
  10000f418  nop
  10000f41c  ldr     x8, [x8, #0xe10]
  10000f420  str     x8, [sp, #0x28]
  10000f424  adrp    x8, #0x100417000
  10000f428  nop
  10000f42c  ldr     x8, [x8, #0x138]
  10000f430  str     x8, [sp, #0x20]
  10000f434  adrp    x22, #0x1003b9000
  10000f438  add     x22, x22, #0xdb0                         ; @"name"
loc_10000f43c:
  10000f43c  mov     x21, #0
loc_10000f440:
  10000f440  ldr     x8, [sp, #0x58]
  10000f444  ldr     x8, [x8]
  10000f448  cmp     x8, x28
  10000f44c  b.eq    loc_10000f458                            ; if (x8 == x28)
  10000f450  ldr     x0, [sp, #0x40]
  10000f454  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self weapons])
loc_10000f458:
  10000f458  ldr     x8, [sp, #0x50]
  10000f45c  ldr     x20, [x8, x21, lsl #3]
  10000f460  mov     x0, x20
  10000f464  mov     x1, x24
  10000f468  mov     x2, x22
  10000f46c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10000f470  mov     x29, x29
  10000f474  bl      _objc_retainAutoreleasedReturnValue
  10000f478  mov     x26, x0
  10000f47c  mov     x1, x25
  10000f480  mov     x2, x19
  10000f484  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg1]
  10000f488  mov     x27, x0
  10000f48c  mov     x0, x26
  10000f490  bl      _objc_release
  10000f494  cbz     w27, loc_10000f504                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg1] == 0)
  10000f498  adrp    x8, #0x10041d000
  10000f49c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10000f4a0  mov     w2, #1
  10000f4a4  ldr     x1, [sp, #0x38]
  10000f4a8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10000f4ac  mov     x29, x29
  10000f4b0  bl      _objc_retainAutoreleasedReturnValue
  10000f4b4  mov     x26, x0
  10000f4b8  mov     x0, x20
  10000f4bc  ldr     x1, [sp, #0x30]
  10000f4c0  mov     x2, x26
  10000f4c4  adrp    x3, #0x1003b9000
  10000f4c8  add     x3, x3, #0xdd0                           ; @"purchased"
  10000f4cc  bl      _objc_msgSend                            ; [x0 setObject:[NSNumber numberWithBool:1] forKey:@"purchased"]
  10000f4d0  mov     x0, x26
  10000f4d4  bl      _objc_release
  10000f4d8  adrp    x8, #0x10041d000
  10000f4dc  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  10000f4e0  ldr     x1, [sp, #0x28]
  10000f4e4  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  10000f4e8  mov     x29, x29
  10000f4ec  bl      _objc_retainAutoreleasedReturnValue
  10000f4f0  mov     x26, x0
  10000f4f4  ldr     x1, [sp, #0x20]
  10000f4f8  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] updateNumberOfWeaponsOwned]
  10000f4fc  mov     x0, x26
  10000f500  bl      _objc_release
loc_10000f504:
  10000f504  add     x21, x21, #1
  10000f508  cmp     x21, x23
  10000f50c  b.lo    loc_10000f440                            ; if ((x21 + 1) <u [[self weapons] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16])
  10000f510  add     x2, sp, #0x48
  10000f514  add     x3, sp, #0x88
  10000f518  mov     w4, #0x10
  10000f51c  ldr     x0, [sp, #0x40]
  10000f520  ldr     x1, [sp, #0x18]
  10000f524  bl      _objc_msgSend                            ; [[self weapons] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  10000f528  mov     x23, x0
  10000f52c  cbnz    x23, loc_10000f43c                       ; if ([[self weapons] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] != 0)
loc_10000f530:
  10000f530  ldr     x0, [sp, #0x40]
  10000f534  bl      _objc_release
  10000f538  adrp    x8, #0x100417000
  10000f53c  nop
  10000f540  ldr     x1, [x8, #0x118]
  10000f544  ldr     x0, [sp, #0x10]
  10000f548  bl      _objc_msgSend                            ; [self saveWeaponDictionary]
  10000f54c  mov     x0, x19
  10000f550  bl      _objc_release
  10000f554  ldur    x8, [x29, #-0x58]
  10000f558  adrp    x9, #0x1003b0000
  10000f55c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10000f560  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10000f564  sub     x8, x9, x8
  10000f568  cbnz    x8, loc_10000f58c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10000f56c  sub     sp, x29, #0x50
  10000f570  ldp     x29, x30, [sp, #0x50]
  10000f574  ldp     x20, x19, [sp, #0x40]
  10000f578  ldp     x22, x21, [sp, #0x30]
  10000f57c  ldp     x24, x23, [sp, #0x20]
  10000f580  ldp     x26, x25, [sp, #0x10]
  10000f584  ldp     x28, x27, [sp], #0x60
  10000f588  ret
loc_10000f58c:
  10000f58c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000f590:
  10000f590  mov     x20, x0
  10000f594  b       loc_10000f5ac
  10000f598  b       loc_10000f5a0
  10000f59c  b       loc_10000f5a0
loc_10000f5a0:
  10000f5a0  mov     x20, x0
  10000f5a4  mov     x0, x26
  10000f5a8  bl      _objc_release
loc_10000f5ac:
  10000f5ac  ldr     x0, [sp, #0x40]
  10000f5b0  bl      _objc_release
loc_10000f5b4:
  10000f5b4  mov     x0, x19
  10000f5b8  bl      _objc_release
  10000f5bc  mov     x0, x20
  10000f5c0  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000f5c4  b       loc_10000f590
  10000f5c8  mov     x20, x0
  10000f5cc  b       loc_10000f5b4
  10000f5d0  b       loc_10000f590

; ======================================================================
; -[ADInventory saveWeaponDictionary]
; address 0x10000f5d4  size 276  kind objc
; ======================================================================
  10000f5d4  stp     x22, x21, [sp, #-0x30]!
  10000f5d8  stp     x20, x19, [sp, #0x10]
  10000f5dc  stp     x29, x30, [sp, #0x20]
  10000f5e0  add     x29, sp, #0x20
  10000f5e4  mov     x20, x0
  10000f5e8  adrp    x8, #0x10041d000
  10000f5ec  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10000f5f0  adrp    x8, #0x100416000
  10000f5f4  nop
  10000f5f8  ldr     x1, [x8, #0xd98]
  10000f5fc  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10000f600  mov     x29, x29
  10000f604  bl      _objc_retainAutoreleasedReturnValue
  10000f608  mov     x19, x0
  10000f60c  adrp    x8, #0x100417000
  10000f610  nop
  10000f614  ldr     x1, [x8, #0xd0]
  10000f618  mov     x0, x20
  10000f61c  bl      _objc_msgSend                            ; [self weapons]
  10000f620  mov     x29, x29
  10000f624  bl      _objc_retainAutoreleasedReturnValue
  10000f628  mov     x22, x0
  10000f62c  adrp    x8, #0x100416000
  10000f630  nop
  10000f634  ldr     x21, [x8, #0xdc8]
  10000f638  adrp    x3, #0x1003b9000
  10000f63c  add     x3, x3, #0xd50                           ; @"weaponDictionary"
  10000f640  mov     x0, x19
  10000f644  mov     x1, x21
  10000f648  mov     x2, x22
  10000f64c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[self weapons] forKey:@"weaponDictionary"]
  10000f650  mov     x0, x22
  10000f654  bl      _objc_release
  10000f658  adrp    x8, #0x100417000
  10000f65c  nop
  10000f660  ldr     x1, [x8, #0xf0]
  10000f664  mov     x0, x20
  10000f668  bl      _objc_msgSend                            ; [self powerups]
  10000f66c  mov     x29, x29
  10000f670  bl      _objc_retainAutoreleasedReturnValue
  10000f674  mov     x22, x0
  10000f678  adrp    x3, #0x1003b9000
  10000f67c  add     x3, x3, #0xeb0                           ; @"powerupsDictionary"
  10000f680  mov     x0, x19
  10000f684  mov     x1, x21
  10000f688  mov     x2, x22
  10000f68c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[self powerups] forKey:@"powerupsDictionary"]
  10000f690  mov     x0, x22
  10000f694  bl      _objc_release
  10000f698  adrp    x8, #0x100416000
  10000f69c  nop
  10000f6a0  ldr     x1, [x8, #0xdd8]
  10000f6a4  mov     x0, x19
  10000f6a8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10000f6ac  mov     x0, x19
  10000f6b0  ldp     x29, x30, [sp, #0x20]
  10000f6b4  ldp     x20, x19, [sp, #0x10]
  10000f6b8  ldp     x22, x21, [sp], #0x30
  10000f6bc  b       _objc_release
  10000f6c0  mov     x20, x0
  10000f6c4  b       loc_10000f6d8
  10000f6c8  b       loc_10000f6cc
loc_10000f6cc:
  10000f6cc  mov     x20, x0
  10000f6d0  mov     x0, x22
  10000f6d4  bl      _objc_release
loc_10000f6d8:
  10000f6d8  mov     x0, x19
  10000f6dc  bl      _objc_release
  10000f6e0  mov     x0, x20
  10000f6e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInventory coins]
; address 0x10000f6e8  size 16  kind objc
; ======================================================================
  10000f6e8  adrp    x8, #0x10041f000
  10000f6ec  ldrsw   x8, [x8, #0x4fc]                         ; ivar offset ADInventory._coins (+0x8)
  10000f6f0  ldr     w0, [x0, x8]                             ; w0 = self->_coins
  10000f6f4  ret

; ======================================================================
; -[ADInventory diamonds]
; address 0x10000f6f8  size 16  kind objc
; ======================================================================
  10000f6f8  adrp    x8, #0x10041f000
  10000f6fc  ldrsw   x8, [x8, #0x500]                         ; ivar offset ADInventory._diamonds (+0xc)
  10000f700  ldr     w0, [x0, x8]                             ; w0 = self->_diamonds
  10000f704  ret

; ======================================================================
; -[ADInventory weapons]
; address 0x10000f708  size 16  kind objc
; ======================================================================
  10000f708  adrp    x8, #0x10041f000
  10000f70c  ldrsw   x8, [x8, #0x504]                         ; ivar offset ADInventory._weapons (+0x10)
  10000f710  ldr     x0, [x0, x8]                             ; x0 = self->_weapons
  10000f714  ret

; ======================================================================
; -[ADInventory setWeapons:]
; address 0x10000f718  size 56  kind objc
; ======================================================================
  10000f718  stp     x20, x19, [sp, #-0x20]!
  10000f71c  stp     x29, x30, [sp, #0x10]
  10000f720  add     x29, sp, #0x10
  10000f724  mov     x19, x0
  10000f728  adrp    x8, #0x10041f000
  10000f72c  ldrsw   x20, [x8, #0x504]                        ; ivar offset ADInventory._weapons (+0x10)
  10000f730  mov     x0, x2
  10000f734  bl      _objc_retain
  10000f738  ldr     x8, [x19, x20]                           ; x8 = self->_weapons
  10000f73c  str     x0, [x19, x20]                           ; self->_weapons = arg1
  10000f740  mov     x0, x8
  10000f744  ldp     x29, x30, [sp, #0x10]
  10000f748  ldp     x20, x19, [sp], #0x20
  10000f74c  b       _objc_release

; ======================================================================
; -[ADInventory powerups]
; address 0x10000f750  size 16  kind objc
; ======================================================================
  10000f750  adrp    x8, #0x10041f000
  10000f754  ldrsw   x8, [x8, #0x508]                         ; ivar offset ADInventory._powerups (+0x18)
  10000f758  ldr     x0, [x0, x8]                             ; x0 = self->_powerups
  10000f75c  ret

; ======================================================================
; -[ADInventory setPowerups:]
; address 0x10000f760  size 56  kind objc
; ======================================================================
  10000f760  stp     x20, x19, [sp, #-0x20]!
  10000f764  stp     x29, x30, [sp, #0x10]
  10000f768  add     x29, sp, #0x10
  10000f76c  mov     x19, x0
  10000f770  adrp    x8, #0x10041f000
  10000f774  ldrsw   x20, [x8, #0x508]                        ; ivar offset ADInventory._powerups (+0x18)
  10000f778  mov     x0, x2
  10000f77c  bl      _objc_retain
  10000f780  ldr     x8, [x19, x20]                           ; x8 = self->_powerups
  10000f784  str     x0, [x19, x20]                           ; self->_powerups = arg1
  10000f788  mov     x0, x8
  10000f78c  ldp     x29, x30, [sp, #0x10]
  10000f790  ldp     x20, x19, [sp], #0x20
  10000f794  b       _objc_release

; ======================================================================
; -[ADInventory weaponSlot1]
; address 0x10000f798  size 32  kind objc
; ======================================================================
  10000f798  stp     x29, x30, [sp, #-0x10]!
  10000f79c  mov     x29, sp
  10000f7a0  adrp    x8, #0x10041f000
  10000f7a4  ldrsw   x8, [x8, #0x4ec]                         ; ivar offset ADInventory._weaponSlot1 (+0x20)
  10000f7a8  add     x0, x0, x8
  10000f7ac  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10000f7b0  ldp     x29, x30, [sp], #0x10
  10000f7b4  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInventory weaponSlot2]
; address 0x10000f7b8  size 32  kind objc
; ======================================================================
  10000f7b8  stp     x29, x30, [sp, #-0x10]!
  10000f7bc  mov     x29, sp
  10000f7c0  adrp    x8, #0x10041f000
  10000f7c4  ldrsw   x8, [x8, #0x4f0]                         ; ivar offset ADInventory._weaponSlot2 (+0x28)
  10000f7c8  add     x0, x0, x8
  10000f7cc  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10000f7d0  ldp     x29, x30, [sp], #0x10
  10000f7d4  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInventory weaponSlotMelee]
; address 0x10000f7d8  size 32  kind objc
; ======================================================================
  10000f7d8  stp     x29, x30, [sp, #-0x10]!
  10000f7dc  mov     x29, sp
  10000f7e0  adrp    x8, #0x10041f000
  10000f7e4  ldrsw   x8, [x8, #0x4f4]                         ; ivar offset ADInventory._weaponSlotMelee (+0x30)
  10000f7e8  add     x0, x0, x8
  10000f7ec  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10000f7f0  ldp     x29, x30, [sp], #0x10
  10000f7f4  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInventory powerUpSlot]
; address 0x10000f7f8  size 32  kind objc
; ======================================================================
  10000f7f8  stp     x29, x30, [sp, #-0x10]!
  10000f7fc  mov     x29, sp
  10000f800  adrp    x8, #0x10041f000
  10000f804  ldrsw   x8, [x8, #0x4f8]                         ; ivar offset ADInventory._powerUpSlot (+0x38)
  10000f808  add     x0, x0, x8
  10000f80c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10000f810  ldp     x29, x30, [sp], #0x10
  10000f814  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInventory .cxx_destruct]
; address 0x10000f818  size 128  kind objc
; ======================================================================
  10000f818  stp     x20, x19, [sp, #-0x20]!
  10000f81c  stp     x29, x30, [sp, #0x10]
  10000f820  add     x29, sp, #0x10
  10000f824  mov     x19, x0
  10000f828  adrp    x8, #0x10041f000
  10000f82c  ldrsw   x8, [x8, #0x4f8]                         ; ivar offset ADInventory._powerUpSlot (+0x38)
  10000f830  add     x0, x19, x8
  10000f834  bl      _objc_destroyWeak
  10000f838  adrp    x8, #0x10041f000
  10000f83c  ldrsw   x8, [x8, #0x4f4]                         ; ivar offset ADInventory._weaponSlotMelee (+0x30)
  10000f840  add     x0, x19, x8
  10000f844  bl      _objc_destroyWeak
  10000f848  adrp    x8, #0x10041f000
  10000f84c  ldrsw   x8, [x8, #0x4f0]                         ; ivar offset ADInventory._weaponSlot2 (+0x28)
  10000f850  add     x0, x19, x8
  10000f854  bl      _objc_destroyWeak
  10000f858  adrp    x8, #0x10041f000
  10000f85c  ldrsw   x8, [x8, #0x4ec]                         ; ivar offset ADInventory._weaponSlot1 (+0x20)
  10000f860  add     x0, x19, x8
  10000f864  bl      _objc_destroyWeak
  10000f868  adrp    x8, #0x10041f000
  10000f86c  ldrsw   x8, [x8, #0x508]                         ; ivar offset ADInventory._powerups (+0x18)
  10000f870  add     x0, x19, x8
  10000f874  mov     x1, #0
  10000f878  bl      _objc_storeStrong
  10000f87c  mov     x1, #0
  10000f880  adrp    x8, #0x10041f000
  10000f884  ldrsw   x8, [x8, #0x504]                         ; ivar offset ADInventory._weapons (+0x10)
  10000f888  add     x0, x19, x8
  10000f88c  ldp     x29, x30, [sp, #0x10]
  10000f890  ldp     x20, x19, [sp], #0x20
  10000f894  b       _objc_storeStrong
