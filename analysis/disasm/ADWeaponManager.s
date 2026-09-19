// unit ADWeaponManager — 42 functions
//   0x1000a6ee0     152  +[ADWeaponManager sharedWeaponManager]
//   0x1000a6f78     320  -[ADWeaponManager getAllWeaponsArray]
//   0x1000a70b8     492  -[ADWeaponManager dictionaryForWeaponWithName:]
//   0x1000a72a4     184  -[ADWeaponManager isMeleeForWeaponWithName:]
//   0x1000a735c     524  -[ADWeaponManager getAllMeleeWeapons]
//   0x1000a7568     348  -[ADWeaponManager displayNameForItemWithName:]
//   0x1000a76c4    1472  -[ADWeaponManager initWithWeaponsFromArmory]
//   0x1000a7c84     192  -[ADWeaponManager getEquippedWeaponsList]
//   0x1000a7d44     944  -[ADWeaponManager initWithWeaponList:]
//   0x1000a80f4    1496  -[ADWeaponManager initWithChallengeWeaponArray:]
//   0x1000a86cc    1388  -[ADWeaponManager initWithWeaponDictionary:]
//   0x1000a8c38     524  -[ADWeaponManager update:]
//   0x1000a8e44     680  -[ADWeaponManager numberOfWeaponsAvailableForSale]
//   0x1000a90ec    1044  -[ADWeaponManager numberOfWeaponsUpgradable]
//   0x1000a9500     320  -[ADWeaponManager getAllPowerUpsArray]
//   0x1000a9640     492  -[ADWeaponManager dictionaryForPowerupWithName:]
//   0x1000a982c      72  -[ADWeaponManager initRandomPowerUp]
//   0x1000a9874    1124  -[ADWeaponManager initPowerUp:]
//   0x1000a9cd8     160  -[ADWeaponManager usePowerUp]
//   0x1000a9d78       4  -[ADWeaponManager weaponTouchedDown]
//   0x1000a9d7c       4  -[ADWeaponManager weaponTouchedUp]
//   0x1000a9d80     132  -[ADWeaponManager weaponSingleShot]
//   0x1000a9e04     800  -[ADWeaponManager selectNextWeapon]
//   0x1000aa124      56  -[ADWeaponManager setCurrentWeapon:]
//   0x1000aa15c     272  -[ADWeaponManager shot]
//   0x1000aa26c     132  -[ADWeaponManager continuousStart]
//   0x1000aa2f0      92  -[ADWeaponManager continuousStop]
//   0x1000aa34c       4  -[ADWeaponManager weaponDidFinishReloading]
//   0x1000aa350     156  -[ADWeaponManager isWeaponReadyToShoot]
//   0x1000aa3ec    1692  -[ADWeaponManager createProjectileForCurrentWeapon]
//   0x1000aaa88      16  -[ADWeaponManager projectiles]
//   0x1000aaa98     340  -[ADWeaponManager shootWithMelee]
//   0x1000aabec     116  -[ADWeaponManager didShotWithMelee]
//   0x1000aac60      28  -[ADWeaponManager meleeWeaponName]
//   0x1000aac7c      92  -[ADWeaponManager reloadGestureDown]
//   0x1000aacd8      92  -[ADWeaponManager reloadGestureUp]
//   0x1000aad34      28  -[ADWeaponManager shutDown]
//   0x1000aad50     272  -[ADWeaponManager clean]
//   0x1000aae60      16  -[ADWeaponManager currentWeapon]
//   0x1000aae70      16  -[ADWeaponManager powerUp]
//   0x1000aae80      56  -[ADWeaponManager setPowerUp:]
//   0x1000aaeb8     164  -[ADWeaponManager .cxx_destruct]

; ======================================================================
; +[ADWeaponManager sharedWeaponManager]
; address 0x1000a6ee0  size 152  kind objc
; ======================================================================
  1000a6ee0  stp     x20, x19, [sp, #-0x20]!
  1000a6ee4  stp     x29, x30, [sp, #0x10]
  1000a6ee8  add     x29, sp, #0x10
  1000a6eec  bl      _objc_retain
  1000a6ef0  mov     x19, x0
  1000a6ef4  bl      _objc_sync_enter                         ; objc_sync_enter(ADWeaponManager)
  1000a6ef8  adrp    x20, #0x10042d000
  1000a6efc  ldr     x8, [x20, #0xa30]                        ; load g_10042da30
  1000a6f00  cbnz    x8, loc_1000a6f3c                        ; if (g_10042da30 != 0)
  1000a6f04  adrp    x8, #0x10041d000
  1000a6f08  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a6f0c  adrp    x8, #0x100416000
  1000a6f10  nop
  1000a6f14  ldr     x1, [x8, #0xac8]
  1000a6f18  bl      _objc_msgSend                            ; [ADWeaponManager alloc]
  1000a6f1c  adrp    x8, #0x100416000
  1000a6f20  nop
  1000a6f24  ldr     x1, [x8, #0xab8]
  1000a6f28  bl      _objc_msgSend                            ; [[ADWeaponManager alloc] init]
  1000a6f2c  ldr     x8, [x20, #0xa30]                        ; load g_10042da30
  1000a6f30  str     x0, [x20, #0xa30]                        ; store g_10042da30 = [[ADWeaponManager alloc] init]
  1000a6f34  mov     x0, x8
  1000a6f38  bl      _objc_release
loc_1000a6f3c:
  1000a6f3c  mov     x0, x19
  1000a6f40  bl      _objc_sync_exit                          ; objc_sync_exit(ADWeaponManager)
  1000a6f44  mov     x0, x19
  1000a6f48  bl      _objc_release
  1000a6f4c  ldr     x0, [x20, #0xa30]                        ; load g_10042da30
  1000a6f50  ldp     x29, x30, [sp, #0x10]
  1000a6f54  ldp     x20, x19, [sp], #0x20
  1000a6f58  b       _objc_retainAutoreleaseReturnValue
  1000a6f5c  mov     x20, x0
  1000a6f60  mov     x0, x19
  1000a6f64  bl      _objc_sync_exit                          ; objc_sync_exit()
  1000a6f68  mov     x0, x19
  1000a6f6c  bl      _objc_release
  1000a6f70  mov     x0, x20
  1000a6f74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager getAllWeaponsArray]
; address 0x1000a6f78  size 320  kind objc
; ======================================================================
  1000a6f78  stp     x24, x23, [sp, #-0x40]!
  1000a6f7c  stp     x22, x21, [sp, #0x10]
  1000a6f80  stp     x20, x19, [sp, #0x20]
  1000a6f84  stp     x29, x30, [sp, #0x30]
  1000a6f88  add     x29, sp, #0x30
  1000a6f8c  mov     x19, x0
  1000a6f90  adrp    x22, #0x100420000
  1000a6f94  ldrsw   x23, [x22, #0x100]                       ; ivar offset ADWeaponManager.allWeapons (+0x8)
  1000a6f98  ldr     x0, [x19, x23]                           ; x0 = self->allWeapons
  1000a6f9c  cbnz    x0, loc_1000a7074                        ; if (self->allWeapons != 0)
  1000a6fa0  adrp    x8, #0x10041d000
  1000a6fa4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000a6fa8  adrp    x8, #0x100416000
  1000a6fac  nop
  1000a6fb0  ldr     x1, [x8, #0xb58]
  1000a6fb4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000a6fb8  mov     x29, x29
  1000a6fbc  bl      _objc_retainAutoreleasedReturnValue
  1000a6fc0  mov     x21, x0
  1000a6fc4  adrp    x8, #0x100416000
  1000a6fc8  nop
  1000a6fcc  ldr     x1, [x8, #0xd60]
  1000a6fd0  adrp    x2, #0x1003bf000
  1000a6fd4  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000a6fd8  adrp    x3, #0x1003b9000
  1000a6fdc  add     x3, x3, #0xa70                           ; @"plist"
  1000a6fe0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]
  1000a6fe4  mov     x29, x29
  1000a6fe8  bl      _objc_retainAutoreleasedReturnValue
  1000a6fec  mov     x20, x0
  1000a6ff0  mov     x0, x21
  1000a6ff4  bl      _objc_release
  1000a6ff8  adrp    x8, #0x10041d000
  1000a6ffc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000a7000  adrp    x8, #0x100416000
  1000a7004  nop
  1000a7008  ldr     x1, [x8, #0xac8]
  1000a700c  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000a7010  adrp    x8, #0x100416000
  1000a7014  nop
  1000a7018  ldr     x1, [x8, #0xd68]
  1000a701c  mov     x2, x20
  1000a7020  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]]
  1000a7024  mov     x21, x0
  1000a7028  adrp    x8, #0x100417000
  1000a702c  nop
  1000a7030  ldr     x1, [x8, #0x40]
  1000a7034  adrp    x2, #0x1003bf000
  1000a7038  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000a703c  mov     x0, x21
  1000a7040  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"Weapons"]
  1000a7044  mov     x29, x29
  1000a7048  bl      _objc_retainAutoreleasedReturnValue
  1000a704c  ldr     x8, [x19, x23]                           ; x8 = self->allWeapons
  1000a7050  str     x0, [x19, x23]                           ; self->allWeapons = [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"Weapons"]
  1000a7054  mov     x0, x8
  1000a7058  bl      _objc_release
  1000a705c  mov     x0, x21
  1000a7060  bl      _objc_release
  1000a7064  mov     x0, x20
  1000a7068  bl      _objc_release
  1000a706c  ldrsw   x8, [x22, #0x100]                        ; ivar offset ADWeaponManager.allWeapons (+0x8)
  1000a7070  ldr     x0, [x19, x8]                            ; x0 = self->allWeapons
loc_1000a7074:
  1000a7074  ldp     x29, x30, [sp, #0x30]
  1000a7078  ldp     x20, x19, [sp, #0x20]
  1000a707c  ldp     x22, x21, [sp, #0x10]
  1000a7080  ldp     x24, x23, [sp], #0x40
  1000a7084  b       _objc_retainAutoreleaseReturnValue
  1000a7088  mov     x19, x0
  1000a708c  b       loc_1000a70a8
  1000a7090  mov     x19, x0
  1000a7094  mov     x0, x21
  1000a7098  b       loc_1000a70ac
  1000a709c  mov     x19, x0
  1000a70a0  mov     x0, x21
  1000a70a4  bl      _objc_release
loc_1000a70a8:
  1000a70a8  mov     x0, x20
loc_1000a70ac:
  1000a70ac  bl      _objc_release
  1000a70b0  mov     x0, x19
  1000a70b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager dictionaryForWeaponWithName:]
; address 0x1000a70b8  size 492  kind objc
; ======================================================================
  1000a70b8  stp     x28, x27, [sp, #-0x60]!
  1000a70bc  stp     x26, x25, [sp, #0x10]
  1000a70c0  stp     x24, x23, [sp, #0x20]
  1000a70c4  stp     x22, x21, [sp, #0x30]
  1000a70c8  stp     x20, x19, [sp, #0x40]
  1000a70cc  stp     x29, x30, [sp, #0x50]
  1000a70d0  add     x29, sp, #0x50
  1000a70d4  sub     sp, sp, #0xe0
  1000a70d8  mov     x20, x0
  1000a70dc  adrp    x22, #0x1003b0000
  1000a70e0  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a70e4  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a70e8  stur    x22, [x29, #-0x58]
  1000a70ec  mov     x0, x2
  1000a70f0  bl      _objc_retain
  1000a70f4  mov     x19, x0
  1000a70f8  stp     xzr, xzr, [sp, #0x48]
  1000a70fc  stp     xzr, xzr, [sp, #0x38]
  1000a7100  stp     xzr, xzr, [sp, #0x28]
  1000a7104  stp     xzr, xzr, [sp, #0x18]
  1000a7108  adrp    x8, #0x100417000
  1000a710c  nop
  1000a7110  ldr     x1, [x8, #0xa8]
  1000a7114  mov     x0, x20
  1000a7118  bl      _objc_msgSend                            ; [self getAllWeaponsArray]
  1000a711c  mov     x29, x29
  1000a7120  bl      _objc_retainAutoreleasedReturnValue
  1000a7124  str     x0, [sp, #0x10]
  1000a7128  adrp    x8, #0x100416000
  1000a712c  nop
  1000a7130  ldr     x1, [x8, #0xe00]
  1000a7134  str     x1, [sp, #8]
  1000a7138  add     x2, sp, #0x18
  1000a713c  add     x3, sp, #0x58
  1000a7140  mov     w4, #0x10
  1000a7144  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000a7148  mov     x23, x0
  1000a714c  cbz     x23, loc_1000a7220                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  1000a7150  ldr     x8, [sp, #0x28]
  1000a7154  ldr     x21, [x8]
  1000a7158  adrp    x8, #0x100417000
  1000a715c  nop
  1000a7160  ldr     x22, [x8, #0x40]
  1000a7164  adrp    x8, #0x100416000
  1000a7168  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  1000a716c  ldr     x24, [x8]
  1000a7170  adrp    x25, #0x1003b9000
  1000a7174  add     x25, x25, #0xdb0                         ; @"name"
loc_1000a7178:
  1000a7178  mov     x20, #0
loc_1000a717c:
  1000a717c  ldr     x8, [sp, #0x28]
  1000a7180  ldr     x8, [x8]
  1000a7184  cmp     x8, x21
  1000a7188  b.eq    loc_1000a7194                            ; if (x8 == x21)
  1000a718c  ldr     x0, [sp, #0x10]
  1000a7190  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllWeaponsArray])
loc_1000a7194:
  1000a7194  ldr     x8, [sp, #0x20]
  1000a7198  ldr     x26, [x8, x20, lsl #3]
  1000a719c  mov     x0, x26
  1000a71a0  mov     x1, x22
  1000a71a4  mov     x2, x25
  1000a71a8  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a71ac  mov     x29, x29
  1000a71b0  bl      _objc_retainAutoreleasedReturnValue
  1000a71b4  mov     x27, x0
  1000a71b8  mov     x1, x24
  1000a71bc  mov     x2, x19
  1000a71c0  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg1]
  1000a71c4  mov     x28, x0
  1000a71c8  mov     x0, x27
  1000a71cc  bl      _objc_release
  1000a71d0  cbnz    w28, loc_1000a7204                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg1] != 0)
  1000a71d4  add     x20, x20, #1
  1000a71d8  cmp     x20, x23
  1000a71dc  b.lo    loc_1000a717c                            ; if ((x20 + 1) <u [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  1000a71e0  add     x2, sp, #0x18
  1000a71e4  add     x3, sp, #0x58
  1000a71e8  mov     w4, #0x10
  1000a71ec  ldp     x1, x0, [sp, #8]
  1000a71f0  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000a71f4  mov     x23, x0
  1000a71f8  cbnz    x23, loc_1000a7178                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
  1000a71fc  mov     x21, #0
  1000a7200  b       loc_1000a7210
loc_1000a7204:
  1000a7204  mov     x0, x26
  1000a7208  bl      _objc_retain
  1000a720c  mov     x21, x0
loc_1000a7210:
  1000a7210  adrp    x22, #0x1003b0000
  1000a7214  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a7218  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a721c  b       loc_1000a7224
loc_1000a7220:
  1000a7220  mov     x21, #0
loc_1000a7224:
  1000a7224  ldr     x0, [sp, #0x10]
  1000a7228  bl      _objc_release
  1000a722c  mov     x0, x19
  1000a7230  bl      _objc_release
  1000a7234  ldur    x8, [x29, #-0x58]
  1000a7238  sub     x8, x22, x8
  1000a723c  cbnz    x8, loc_1000a7264                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a7240  mov     x0, x21
  1000a7244  sub     sp, x29, #0x50
  1000a7248  ldp     x29, x30, [sp, #0x50]
  1000a724c  ldp     x20, x19, [sp, #0x40]
  1000a7250  ldp     x22, x21, [sp, #0x30]
  1000a7254  ldp     x24, x23, [sp, #0x20]
  1000a7258  ldp     x26, x25, [sp, #0x10]
  1000a725c  ldp     x28, x27, [sp], #0x60
  1000a7260  b       _objc_autoreleaseReturnValue
loc_1000a7264:
  1000a7264  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a7268:
  1000a7268  mov     x21, x0
  1000a726c  b       loc_1000a727c
  1000a7270  mov     x21, x0
  1000a7274  mov     x0, x27
  1000a7278  bl      _objc_release
loc_1000a727c:
  1000a727c  ldr     x0, [sp, #0x10]
  1000a7280  bl      _objc_release
loc_1000a7284:
  1000a7284  mov     x0, x19
  1000a7288  bl      _objc_release
  1000a728c  mov     x0, x21
  1000a7290  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a7294  mov     x21, x0
  1000a7298  b       loc_1000a7284
  1000a729c  b       loc_1000a7268
  1000a72a0  b       loc_1000a7268

; ======================================================================
; -[ADWeaponManager isMeleeForWeaponWithName:]
; address 0x1000a72a4  size 184  kind objc
; ======================================================================
  1000a72a4  stp     x22, x21, [sp, #-0x30]!
  1000a72a8  stp     x20, x19, [sp, #0x10]
  1000a72ac  stp     x29, x30, [sp, #0x20]
  1000a72b0  add     x29, sp, #0x20
  1000a72b4  adrp    x8, #0x100417000
  1000a72b8  nop
  1000a72bc  ldr     x1, [x8, #0xa48]
  1000a72c0  bl      _objc_msgSend                            ; [self dictionaryForWeaponWithName:arg1]
  1000a72c4  mov     x29, x29
  1000a72c8  bl      _objc_retainAutoreleasedReturnValue
  1000a72cc  mov     x19, x0
  1000a72d0  adrp    x8, #0x100417000
  1000a72d4  nop
  1000a72d8  ldr     x1, [x8, #0x40]
  1000a72dc  adrp    x2, #0x1003b9000
  1000a72e0  add     x2, x2, #0xe10                           ; @"melee"
  1000a72e4  bl      _objc_msgSend                            ; [[self dictionaryForWeaponWithName:arg1] objectForKey:@"melee"]
  1000a72e8  mov     x29, x29
  1000a72ec  bl      _objc_retainAutoreleasedReturnValue
  1000a72f0  mov     x20, x0
  1000a72f4  adrp    x8, #0x100417000
  1000a72f8  nop
  1000a72fc  ldr     x1, [x8, #0xd8]
  1000a7300  bl      _objc_msgSend                            ; [[[self dictionaryForWeaponWithName:arg1] objectForKey:@"melee"] boolValue]
  1000a7304  mov     x21, x0
  1000a7308  mov     x0, x20
  1000a730c  bl      _objc_release
  1000a7310  mov     x0, x19
  1000a7314  bl      _objc_release
  1000a7318  mov     x0, x21
  1000a731c  ldp     x29, x30, [sp, #0x20]
  1000a7320  ldp     x20, x19, [sp, #0x10]
  1000a7324  ldp     x22, x21, [sp], #0x30
  1000a7328  ret
  1000a732c  mov     x20, x0
  1000a7330  b       loc_1000a7354
  1000a7334  mov     x20, x0
  1000a7338  b       loc_1000a734c
  1000a733c  mov     x1, x20
  1000a7340  mov     x20, x0
  1000a7344  mov     x0, x1
  1000a7348  bl      _objc_release
loc_1000a734c:
  1000a734c  mov     x0, x19
  1000a7350  bl      _objc_release
loc_1000a7354:
  1000a7354  mov     x0, x20
  1000a7358  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager getAllMeleeWeapons]
; address 0x1000a735c  size 524  kind objc
; ======================================================================
  1000a735c  stp     x28, x27, [sp, #-0x60]!
  1000a7360  stp     x26, x25, [sp, #0x10]
  1000a7364  stp     x24, x23, [sp, #0x20]
  1000a7368  stp     x22, x21, [sp, #0x30]
  1000a736c  stp     x20, x19, [sp, #0x40]
  1000a7370  stp     x29, x30, [sp, #0x50]
  1000a7374  add     x29, sp, #0x50
  1000a7378  sub     sp, sp, #0xf0
  1000a737c  mov     x20, x0
  1000a7380  adrp    x8, #0x1003b0000
  1000a7384  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a7388  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a738c  stur    x8, [x29, #-0x58]
  1000a7390  adrp    x8, #0x10041d000
  1000a7394  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000a7398  adrp    x8, #0x100416000
  1000a739c  nop
  1000a73a0  ldr     x1, [x8, #0xac8]
  1000a73a4  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a73a8  adrp    x8, #0x100416000
  1000a73ac  nop
  1000a73b0  ldr     x1, [x8, #0xab8]
  1000a73b4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a73b8  str     x0, [sp, #0x18]
  1000a73bc  stp     xzr, xzr, [sp, #0x58]
  1000a73c0  stp     xzr, xzr, [sp, #0x48]
  1000a73c4  stp     xzr, xzr, [sp, #0x38]
  1000a73c8  stp     xzr, xzr, [sp, #0x28]
  1000a73cc  adrp    x8, #0x100417000
  1000a73d0  nop
  1000a73d4  ldr     x1, [x8, #0xa8]
  1000a73d8  mov     x0, x20
  1000a73dc  bl      _objc_msgSend                            ; [self getAllWeaponsArray]
  1000a73e0  mov     x29, x29
  1000a73e4  bl      _objc_retainAutoreleasedReturnValue
  1000a73e8  str     x0, [sp, #0x20]
  1000a73ec  adrp    x8, #0x100416000
  1000a73f0  nop
  1000a73f4  ldr     x1, [x8, #0xe00]
  1000a73f8  str     x1, [sp, #8]
  1000a73fc  add     x2, sp, #0x28
  1000a7400  add     x3, sp, #0x68
  1000a7404  mov     w4, #0x10
  1000a7408  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000a740c  mov     x23, x0
  1000a7410  cbz     x23, loc_1000a74e4                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  1000a7414  ldr     x8, [sp, #0x38]
  1000a7418  ldr     x21, [x8]
  1000a741c  adrp    x8, #0x100417000
  1000a7420  nop
  1000a7424  ldr     x24, [x8, #0x40]
  1000a7428  adrp    x8, #0x100418000
  1000a742c  nop
  1000a7430  ldr     x25, [x8, #0x6f8]
  1000a7434  adrp    x8, #0x100416000
  1000a7438  nop
  1000a743c  ldr     x8, [x8, #0xd90]
  1000a7440  str     x8, [sp, #0x10]
  1000a7444  adrp    x27, #0x1003b9000
  1000a7448  add     x27, x27, #0xdb0                         ; @"name"
loc_1000a744c:
  1000a744c  mov     x26, #0
loc_1000a7450:
  1000a7450  ldr     x8, [sp, #0x38]
  1000a7454  ldr     x8, [x8]
  1000a7458  cmp     x8, x21
  1000a745c  b.eq    loc_1000a7468                            ; if (x8 == x21)
  1000a7460  ldr     x0, [sp, #0x20]
  1000a7464  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllWeaponsArray])
loc_1000a7468:
  1000a7468  ldr     x8, [sp, #0x30]
  1000a746c  ldr     x28, [x8, x26, lsl #3]
  1000a7470  mov     x0, x28
  1000a7474  mov     x1, x24
  1000a7478  mov     x2, x27
  1000a747c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a7480  mov     x29, x29
  1000a7484  bl      _objc_retainAutoreleasedReturnValue
  1000a7488  mov     x22, x0
  1000a748c  mov     x0, x20
  1000a7490  mov     x1, x25
  1000a7494  mov     x2, x22
  1000a7498  bl      _objc_msgSend                            ; [self isMeleeForWeaponWithName:[x0 objectForKey:@"name"]]
  1000a749c  mov     x19, x0
  1000a74a0  mov     x0, x22
  1000a74a4  bl      _objc_release
  1000a74a8  cbz     w19, loc_1000a74b8                       ; if ([self isMeleeForWeaponWithName:[x0 objectForKey:@"name"]] == 0)
  1000a74ac  ldp     x1, x0, [sp, #0x10]
  1000a74b0  mov     x2, x28
  1000a74b4  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
loc_1000a74b8:
  1000a74b8  add     x26, x26, #1
  1000a74bc  cmp     x26, x23
  1000a74c0  b.lo    loc_1000a7450                            ; if ((x26 + 1) <u [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  1000a74c4  add     x2, sp, #0x28
  1000a74c8  add     x3, sp, #0x68
  1000a74cc  mov     w4, #0x10
  1000a74d0  ldr     x0, [sp, #0x20]
  1000a74d4  ldr     x1, [sp, #8]
  1000a74d8  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000a74dc  mov     x23, x0
  1000a74e0  cbnz    x23, loc_1000a744c                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_1000a74e4:
  1000a74e4  ldr     x0, [sp, #0x20]
  1000a74e8  bl      _objc_release
  1000a74ec  ldur    x8, [x29, #-0x58]
  1000a74f0  adrp    x9, #0x1003b0000
  1000a74f4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a74f8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a74fc  sub     x8, x9, x8
  1000a7500  cbnz    x8, loc_1000a7528                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a7504  ldr     x0, [sp, #0x18]
  1000a7508  sub     sp, x29, #0x50
  1000a750c  ldp     x29, x30, [sp, #0x50]
  1000a7510  ldp     x20, x19, [sp, #0x40]
  1000a7514  ldp     x22, x21, [sp, #0x30]
  1000a7518  ldp     x24, x23, [sp, #0x20]
  1000a751c  ldp     x26, x25, [sp, #0x10]
  1000a7520  ldp     x28, x27, [sp], #0x60
  1000a7524  b       _objc_autoreleaseReturnValue
loc_1000a7528:
  1000a7528  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a752c:
  1000a752c  mov     x20, x0
  1000a7530  b       loc_1000a7540
  1000a7534  mov     x20, x0
  1000a7538  mov     x0, x22
  1000a753c  bl      _objc_release
loc_1000a7540:
  1000a7540  ldr     x0, [sp, #0x20]
  1000a7544  bl      _objc_release
loc_1000a7548:
  1000a7548  ldr     x0, [sp, #0x18]
  1000a754c  bl      _objc_release
  1000a7550  mov     x0, x20
  1000a7554  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a7558  b       loc_1000a752c
  1000a755c  mov     x20, x0
  1000a7560  b       loc_1000a7548
  1000a7564  b       loc_1000a752c

; ======================================================================
; -[ADWeaponManager displayNameForItemWithName:]
; address 0x1000a7568  size 348  kind objc
; ======================================================================
  1000a7568  stp     x22, x21, [sp, #-0x30]!
  1000a756c  stp     x20, x19, [sp, #0x10]
  1000a7570  stp     x29, x30, [sp, #0x20]
  1000a7574  add     x29, sp, #0x20
  1000a7578  mov     x20, x0
  1000a757c  mov     x0, x2
  1000a7580  bl      _objc_retain
  1000a7584  mov     x19, x0
  1000a7588  adrp    x8, #0x100417000
  1000a758c  nop
  1000a7590  ldr     x21, [x8, #0xa48]
  1000a7594  mov     x0, x20
  1000a7598  mov     x1, x21
  1000a759c  mov     x2, x19
  1000a75a0  bl      _objc_msgSend                            ; [self dictionaryForWeaponWithName:arg1]
  1000a75a4  mov     x29, x29
  1000a75a8  bl      _objc_retainAutoreleasedReturnValue
  1000a75ac  mov     x22, x0
  1000a75b0  bl      _objc_release
  1000a75b4  cbz     x22, loc_1000a75f4                       ; if ([self dictionaryForWeaponWithName:arg1] == 0)
  1000a75b8  mov     x0, x20
  1000a75bc  mov     x1, x21
  1000a75c0  mov     x2, x19
  1000a75c4  bl      _objc_msgSend                            ; [self dictionaryForWeaponWithName:arg1]
  1000a75c8  mov     x29, x29
  1000a75cc  bl      _objc_retainAutoreleasedReturnValue
  1000a75d0  mov     x20, x0
  1000a75d4  adrp    x8, #0x100417000
  1000a75d8  nop
  1000a75dc  ldr     x1, [x8, #0x40]
  1000a75e0  adrp    x2, #0x1003ba000
  1000a75e4  add     x2, x2, #0x2b0                           ; @"displayName"
  1000a75e8  bl      _objc_msgSend                            ; [[self dictionaryForWeaponWithName:arg1] objectForKey:@"displayName"]
  1000a75ec  mov     x29, x29
  1000a75f0  b       loc_1000a765c
loc_1000a75f4:
  1000a75f4  adrp    x8, #0x100418000
  1000a75f8  nop
  1000a75fc  ldr     x21, [x8, #0x4a0]
  1000a7600  mov     x0, x20
  1000a7604  mov     x1, x21
  1000a7608  mov     x2, x19
  1000a760c  bl      _objc_msgSend                            ; [self dictionaryForPowerupWithName:arg1]
  1000a7610  mov     x29, x29
  1000a7614  bl      _objc_retainAutoreleasedReturnValue
  1000a7618  mov     x22, x0
  1000a761c  bl      _objc_release
  1000a7620  cbz     x22, loc_1000a7688                       ; if ([self dictionaryForPowerupWithName:arg1] == 0)
  1000a7624  mov     x0, x20
  1000a7628  mov     x1, x21
  1000a762c  mov     x2, x19
  1000a7630  bl      _objc_msgSend                            ; [self dictionaryForPowerupWithName:arg1]
  1000a7634  mov     x29, x29
  1000a7638  bl      _objc_retainAutoreleasedReturnValue
  1000a763c  mov     x20, x0
  1000a7640  adrp    x8, #0x100417000
  1000a7644  nop
  1000a7648  ldr     x1, [x8, #0x40]
  1000a764c  adrp    x2, #0x1003ba000
  1000a7650  add     x2, x2, #0x2b0                           ; @"displayName"
  1000a7654  bl      _objc_msgSend                            ; [[self dictionaryForPowerupWithName:arg1] objectForKey:@"displayName"]
  1000a7658  mov     x29, x29
loc_1000a765c:
  1000a765c  bl      _objc_retainAutoreleasedReturnValue
  1000a7660  mov     x21, x0
  1000a7664  mov     x0, x20
  1000a7668  bl      _objc_release
loc_1000a766c:
  1000a766c  mov     x0, x19
  1000a7670  bl      _objc_release
  1000a7674  mov     x0, x21
  1000a7678  ldp     x29, x30, [sp, #0x20]
  1000a767c  ldp     x20, x19, [sp, #0x10]
  1000a7680  ldp     x22, x21, [sp], #0x30
  1000a7684  b       _objc_autoreleaseReturnValue
loc_1000a7688:
  1000a7688  adrp    x21, #0x1003b9000
  1000a768c  add     x21, x21, #0x870                         ; @""
  1000a7690  mov     x0, x21
  1000a7694  bl      _objc_retain
  1000a7698  b       loc_1000a766c
  1000a769c  mov     x21, x0
  1000a76a0  b       loc_1000a76b4
  1000a76a4  b       loc_1000a76a8
loc_1000a76a8:
  1000a76a8  mov     x21, x0
  1000a76ac  mov     x0, x20
  1000a76b0  bl      _objc_release
loc_1000a76b4:
  1000a76b4  mov     x0, x19
  1000a76b8  bl      _objc_release
  1000a76bc  mov     x0, x21
  1000a76c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager initWithWeaponsFromArmory]
; address 0x1000a76c4  size 1472  kind objc
; ======================================================================
  1000a76c4  stp     x28, x27, [sp, #-0x60]!
  1000a76c8  stp     x26, x25, [sp, #0x10]
  1000a76cc  stp     x24, x23, [sp, #0x20]
  1000a76d0  stp     x22, x21, [sp, #0x30]
  1000a76d4  stp     x20, x19, [sp, #0x40]
  1000a76d8  stp     x29, x30, [sp, #0x50]
  1000a76dc  add     x29, sp, #0x50
  1000a76e0  sub     sp, sp, #0x30
  1000a76e4  str     x0, [sp, #0x20]
  1000a76e8  adrp    x8, #0x10041e000
  1000a76ec  ldr     x8, [x8, #0xf00]
  1000a76f0  str     x8, [sp, #0x28]
  1000a76f4  adrp    x8, #0x100416000
  1000a76f8  nop
  1000a76fc  ldr     x21, [x8, #0xab8]
  1000a7700  mov     x20, #0
  1000a7704  add     x0, sp, #0x20
  1000a7708  mov     x1, x21
  1000a770c  bl      _objc_msgSendSuper2                      ; [super init]
  1000a7710  mov     x19, x0
  1000a7714  cbz     x19, loc_1000a7b50                       ; if (self == 0)
  1000a7718  mov     x20, x19
  1000a771c  adrp    x23, #0x10041d000
  1000a7720  ldr     x0, [x23, #0xf28]                        ; class NSMutableArray
  1000a7724  adrp    x8, #0x100416000
  1000a7728  nop
  1000a772c  ldr     x22, [x8, #0xac8]
  1000a7730  mov     x1, x22
  1000a7734  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a7738  mov     x20, x19
  1000a773c  mov     x1, x21
  1000a7740  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a7744  mov     x20, x19
  1000a7748  adrp    x8, #0x100420000
  1000a774c  ldrsw   x9, [x8, #0x104]                         ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000a7750  str     x9, [sp, #0x18]
  1000a7754  ldr     x8, [x19, x9]                            ; x8 = self->weaponsArray
  1000a7758  str     x0, [x19, x9]                            ; self->weaponsArray = [[NSMutableArray alloc] init]
  1000a775c  mov     x0, x8
  1000a7760  bl      _objc_release
  1000a7764  ldr     x0, [x23, #0xf28]                        ; class NSMutableArray
  1000a7768  mov     x1, x22
  1000a776c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a7770  mov     x20, x19
  1000a7774  mov     x1, x21
  1000a7778  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a777c  mov     x20, x19
  1000a7780  adrp    x8, #0x100420000
  1000a7784  ldrsw   x9, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000a7788  ldr     x8, [x19, x9]                            ; x8 = self->projectileArray
  1000a778c  str     x0, [x19, x9]                            ; self->projectileArray = [[NSMutableArray alloc] init]
  1000a7790  mov     x0, x8
  1000a7794  bl      _objc_release
  1000a7798  adrp    x23, #0x10041e000
  1000a779c  ldr     x0, [x23, #0x3c8]                        ; class ADWeapon
  1000a77a0  mov     x1, x22
  1000a77a4  bl      _objc_msgSend                            ; [ADWeapon alloc]
  1000a77a8  mov     x26, x0
  1000a77ac  mov     x20, x19
  1000a77b0  adrp    x8, #0x10041d000
  1000a77b4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a77b8  adrp    x8, #0x100416000
  1000a77bc  nop
  1000a77c0  ldr     x1, [x8, #0xec8]
  1000a77c4  str     x1, [sp, #0x10]
  1000a77c8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a77cc  mov     x29, x29
  1000a77d0  bl      _objc_retainAutoreleasedReturnValue
  1000a77d4  mov     x21, x0
  1000a77d8  adrp    x8, #0x100416000
  1000a77dc  nop
  1000a77e0  ldr     x1, [x8, #0xed0]
  1000a77e4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot1]
  1000a77e8  mov     x29, x29
  1000a77ec  bl      _objc_retainAutoreleasedReturnValue
  1000a77f0  mov     x27, x0
  1000a77f4  adrp    x8, #0x100417000
  1000a77f8  nop
  1000a77fc  ldr     x24, [x8, #0xa48]
  1000a7800  mov     x0, x19
  1000a7804  mov     x1, x24
  1000a7808  mov     x2, x27
  1000a780c  bl      _objc_msgSend                            ; [self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot1]]
  1000a7810  mov     x29, x29
  1000a7814  bl      _objc_retainAutoreleasedReturnValue
  1000a7818  mov     x20, x0
  1000a781c  adrp    x8, #0x100416000
  1000a7820  nop
  1000a7824  ldr     x25, [x8, #0xd80]
  1000a7828  mov     x0, x26
  1000a782c  mov     x1, x25
  1000a7830  mov     x2, x20
  1000a7834  bl      _objc_msgSend                            ; [[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot1]]]
  1000a7838  mov     x28, x0
  1000a783c  mov     x0, x20
  1000a7840  bl      _objc_release
  1000a7844  mov     x0, x27
  1000a7848  bl      _objc_release
  1000a784c  mov     x0, x21
  1000a7850  bl      _objc_release
  1000a7854  adrp    x8, #0x100418000
  1000a7858  nop
  1000a785c  ldr     x26, [x8, #0xff0]
  1000a7860  mov     x0, x28
  1000a7864  mov     x1, x26
  1000a7868  mov     x2, x19
  1000a786c  bl      _objc_msgSend                            ; [[[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot1]]] setWeaponManager:self]
  1000a7870  ldr     x8, [sp, #0x18]
  1000a7874  ldr     x0, [x19, x8]                            ; x0 = self->weaponsArray
  1000a7878  adrp    x8, #0x100416000
  1000a787c  nop
  1000a7880  ldr     x27, [x8, #0xd90]
  1000a7884  mov     x1, x27
  1000a7888  mov     x2, x28
  1000a788c  bl      _objc_msgSend                            ; [self->weaponsArray addObject:[[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot1]]]]
  1000a7890  ldr     x0, [x23, #0x3c8]                        ; class ADWeapon
  1000a7894  mov     x1, x22
  1000a7898  bl      _objc_msgSend                            ; [ADWeapon alloc]
  1000a789c  mov     x21, x0
  1000a78a0  adrp    x8, #0x10041d000
  1000a78a4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a78a8  ldr     x1, [sp, #0x10]
  1000a78ac  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a78b0  str     x28, [sp, #8]
  1000a78b4  mov     x29, x29
  1000a78b8  bl      _objc_retainAutoreleasedReturnValue
  1000a78bc  mov     x28, x0
  1000a78c0  adrp    x8, #0x100416000
  1000a78c4  nop
  1000a78c8  ldr     x1, [x8, #0xed8]
  1000a78cc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlot2]
  1000a78d0  mov     x29, x29
  1000a78d4  bl      _objc_retainAutoreleasedReturnValue
  1000a78d8  mov     x20, x0
  1000a78dc  mov     x0, x19
  1000a78e0  mov     x1, x24
  1000a78e4  mov     x2, x20
  1000a78e8  bl      _objc_msgSend                            ; [self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot2]]
  1000a78ec  mov     x29, x29
  1000a78f0  bl      _objc_retainAutoreleasedReturnValue
  1000a78f4  mov     x23, x0
  1000a78f8  mov     x0, x21
  1000a78fc  mov     x1, x25
  1000a7900  mov     x2, x23
  1000a7904  bl      _objc_msgSend                            ; [[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot2]]]
  1000a7908  mov     x21, x0
  1000a790c  mov     x0, x23
  1000a7910  bl      _objc_release
  1000a7914  mov     x0, x20
  1000a7918  bl      _objc_release
  1000a791c  mov     x0, x28
  1000a7920  bl      _objc_release
  1000a7924  mov     x0, x21
  1000a7928  mov     x1, x26
  1000a792c  mov     x2, x19
  1000a7930  bl      _objc_msgSend                            ; [[[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot2]]] setWeaponManager:self]
  1000a7934  ldr     x8, [sp, #0x18]
  1000a7938  ldr     x0, [x19, x8]                            ; x0 = self->weaponsArray
  1000a793c  mov     x1, x27
  1000a7940  mov     x2, x21
  1000a7944  bl      _objc_msgSend                            ; [self->weaponsArray addObject:[[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot2]]]]
  1000a7948  adrp    x8, #0x10041e000
  1000a794c  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  1000a7950  mov     x1, x22
  1000a7954  bl      _objc_msgSend                            ; [ADMeleeWeapon alloc]
  1000a7958  mov     x22, x0
  1000a795c  adrp    x8, #0x10041d000
  1000a7960  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a7964  ldr     x1, [sp, #0x10]
  1000a7968  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a796c  mov     x29, x29
  1000a7970  bl      _objc_retainAutoreleasedReturnValue
  1000a7974  mov     x27, x0
  1000a7978  adrp    x8, #0x100416000
  1000a797c  nop
  1000a7980  ldr     x1, [x8, #0xee0]
  1000a7984  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weaponSlotMelee]
  1000a7988  mov     x29, x29
  1000a798c  bl      _objc_retainAutoreleasedReturnValue
  1000a7990  mov     x20, x0
  1000a7994  mov     x0, x19
  1000a7998  mov     x1, x24
  1000a799c  mov     x2, x20
  1000a79a0  bl      _objc_msgSend                            ; [self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlotMelee]]
  1000a79a4  mov     x29, x29
  1000a79a8  bl      _objc_retainAutoreleasedReturnValue
  1000a79ac  mov     x23, x0
  1000a79b0  mov     x0, x22
  1000a79b4  mov     x1, x25
  1000a79b8  mov     x2, x23
  1000a79bc  bl      _objc_msgSend                            ; [[ADMeleeWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlotMelee]]]
  1000a79c0  mov     x22, x0
  1000a79c4  mov     x0, x23
  1000a79c8  bl      _objc_release
  1000a79cc  mov     x0, x20
  1000a79d0  bl      _objc_release
  1000a79d4  mov     x0, x27
  1000a79d8  bl      _objc_release
  1000a79dc  mov     x0, x22
  1000a79e0  mov     x1, x26
  1000a79e4  mov     x2, x19
  1000a79e8  bl      _objc_msgSend                            ; [[[ADMeleeWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlotMelee]]] setWeaponManager:self]
  1000a79ec  adrp    x8, #0x100420000
  1000a79f0  ldrsw   x27, [x8, #0x10c]                        ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000a79f4  mov     x0, x22
  1000a79f8  bl      _objc_retain
  1000a79fc  mov     x23, x0
  1000a7a00  ldr     x0, [x19, x27]                           ; x0 = self->meleeWeapon
  1000a7a04  str     x23, [x19, x27]                          ; self->meleeWeapon = [[ADMeleeWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlotMelee]]]
  1000a7a08  bl      _objc_release
  1000a7a0c  ldr     x8, [sp, #0x18]
  1000a7a10  ldr     x0, [x19, x8]                            ; x0 = self->weaponsArray
  1000a7a14  adrp    x8, #0x100416000
  1000a7a18  nop
  1000a7a1c  ldr     x1, [x8, #0xc30]
  1000a7a20  mov     x2, #0
  1000a7a24  bl      _objc_msgSend                            ; [self->weaponsArray objectAtIndex:0]
  1000a7a28  mov     x29, x29
  1000a7a2c  bl      _objc_retainAutoreleasedReturnValue
  1000a7a30  mov     x20, x0
  1000a7a34  adrp    x8, #0x10041a000
  1000a7a38  nop
  1000a7a3c  ldr     x1, [x8, #0x430]
  1000a7a40  mov     x0, x19
  1000a7a44  mov     x2, x20
  1000a7a48  bl      _objc_msgSend                            ; [self setCurrentWeapon:[self->weaponsArray objectAtIndex:0]]
  1000a7a4c  mov     x0, x20
  1000a7a50  bl      _objc_release
  1000a7a54  adrp    x28, #0x10041e000
  1000a7a58  ldr     x0, [x28, #8]                            ; class ADTracker
  1000a7a5c  adrp    x8, #0x100416000
  1000a7a60  nop
  1000a7a64  ldr     x25, [x8, #0xac0]
  1000a7a68  mov     x1, x25
  1000a7a6c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a7a70  mov     x29, x29
  1000a7a74  bl      _objc_retainAutoreleasedReturnValue
  1000a7a78  mov     x24, x0
  1000a7a7c  adrp    x8, #0x100417000
  1000a7a80  nop
  1000a7a84  ldr     x1, [x8, #0xc50]
  1000a7a88  mov     x0, x19
  1000a7a8c  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a7a90  mov     x29, x29
  1000a7a94  bl      _objc_retainAutoreleasedReturnValue
  1000a7a98  mov     x26, x0
  1000a7a9c  adrp    x8, #0x100417000
  1000a7aa0  nop
  1000a7aa4  ldr     x1, [x8, #0x450]
  1000a7aa8  bl      _objc_msgSend                            ; [[self currentWeapon] name]
  1000a7aac  mov     x29, x29
  1000a7ab0  bl      _objc_retainAutoreleasedReturnValue
  1000a7ab4  mov     x20, x0
  1000a7ab8  adrp    x8, #0x100417000
  1000a7abc  nop
  1000a7ac0  ldr     x1, [x8, #0x9b8]
  1000a7ac4  mov     x4, #0
  1000a7ac8  mov     x5, #0
  1000a7acc  adrp    x3, #0x1003bb000
  1000a7ad0  add     x3, x3, #0x850                           ; @"Weapon name"
  1000a7ad4  mov     x0, x24
  1000a7ad8  mov     x2, x20
  1000a7adc  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:[[self currentWeapon] name] ForDimension:@"Weapon name" AndValue:0 ForMetric:0]
  1000a7ae0  mov     x0, x20
  1000a7ae4  bl      _objc_release
  1000a7ae8  mov     x0, x26
  1000a7aec  bl      _objc_release
  1000a7af0  mov     x0, x24
  1000a7af4  bl      _objc_release
  1000a7af8  ldr     x0, [x28, #8]                            ; class ADTracker
  1000a7afc  mov     x1, x25
  1000a7b00  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a7b04  mov     x29, x29
  1000a7b08  bl      _objc_retainAutoreleasedReturnValue
  1000a7b0c  mov     x20, x0
  1000a7b10  ldr     x4, [x19, x27]                           ; x4 = self->meleeWeapon
  1000a7b14  adrp    x8, #0x10041a000
  1000a7b18  nop
  1000a7b1c  ldr     x1, [x8, #0x438]
  1000a7b20  ldr     x24, [sp, #8]
  1000a7b24  mov     x2, x24
  1000a7b28  mov     x3, x21
  1000a7b2c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] sendLoadOutEventWithWeapon1:[[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot1]]] Weapon2:[[ADWeapon alloc] initWithDictionary:[self dictionaryForWeaponWithName:[[ADInventory sharedInventory] weaponSlot2]]] Melee:self->meleeWeapon]
  1000a7b30  mov     x0, x20
  1000a7b34  bl      _objc_release
  1000a7b38  mov     x0, x23
  1000a7b3c  bl      _objc_release
  1000a7b40  mov     x0, x21
  1000a7b44  bl      _objc_release
  1000a7b48  mov     x0, x24
  1000a7b4c  bl      _objc_release
loc_1000a7b50:
  1000a7b50  mov     x0, x19
  1000a7b54  sub     sp, x29, #0x50
  1000a7b58  ldp     x29, x30, [sp, #0x50]
  1000a7b5c  ldp     x20, x19, [sp, #0x40]
  1000a7b60  ldp     x22, x21, [sp, #0x30]
  1000a7b64  ldp     x24, x23, [sp, #0x20]
  1000a7b68  ldp     x26, x25, [sp, #0x10]
  1000a7b6c  ldp     x28, x27, [sp], #0x60
  1000a7b70  ret
  1000a7b74  mov     x25, x0
  1000a7b78  b       loc_1000a7c74
  1000a7b7c  str     x28, [sp, #8]
  1000a7b80  mov     x25, x0
  1000a7b84  b       loc_1000a7c68
  1000a7b88  mov     x25, x0
  1000a7b8c  b       loc_1000a7c60
  1000a7b90  mov     x25, x0
  1000a7b94  b       loc_1000a7c58
  1000a7b98  mov     x25, x0
  1000a7b9c  b       loc_1000a7bbc
  1000a7ba0  mov     x25, x0
  1000a7ba4  b       loc_1000a7bb4
  1000a7ba8  mov     x25, x0
  1000a7bac  mov     x0, x20
  1000a7bb0  bl      _objc_release
loc_1000a7bb4:
  1000a7bb4  mov     x0, x27
  1000a7bb8  bl      _objc_release
loc_1000a7bbc:
  1000a7bbc  mov     x0, x21
  1000a7bc0  b       loc_1000a7c6c
  1000a7bc4  mov     x25, x0
  1000a7bc8  b       loc_1000a7be8
  1000a7bcc  mov     x25, x0
  1000a7bd0  b       loc_1000a7be0
  1000a7bd4  mov     x25, x0
  1000a7bd8  mov     x0, x23
  1000a7bdc  bl      _objc_release
loc_1000a7be0:
  1000a7be0  mov     x0, x20
  1000a7be4  bl      _objc_release
loc_1000a7be8:
  1000a7be8  mov     x0, x28
  1000a7bec  b       loc_1000a7c64
  1000a7bf0  mov     x25, x0
  1000a7bf4  b       loc_1000a7c14
  1000a7bf8  mov     x25, x0
  1000a7bfc  b       loc_1000a7c0c
  1000a7c00  mov     x25, x0
  1000a7c04  mov     x0, x23
  1000a7c08  bl      _objc_release
loc_1000a7c0c:
  1000a7c0c  mov     x0, x20
  1000a7c10  bl      _objc_release
loc_1000a7c14:
  1000a7c14  mov     x0, x27
  1000a7c18  b       loc_1000a7c5c
  1000a7c1c  b       loc_1000a7c4c
  1000a7c20  mov     x25, x0
  1000a7c24  b       loc_1000a7c44
  1000a7c28  mov     x25, x0
  1000a7c2c  b       loc_1000a7c3c
  1000a7c30  mov     x25, x0
  1000a7c34  mov     x0, x20
  1000a7c38  bl      _objc_release
loc_1000a7c3c:
  1000a7c3c  mov     x0, x26
  1000a7c40  bl      _objc_release
loc_1000a7c44:
  1000a7c44  mov     x0, x24
  1000a7c48  b       loc_1000a7c54
loc_1000a7c4c:
  1000a7c4c  mov     x25, x0
  1000a7c50  mov     x0, x20
loc_1000a7c54:
  1000a7c54  bl      _objc_release
loc_1000a7c58:
  1000a7c58  mov     x0, x22
loc_1000a7c5c:
  1000a7c5c  bl      _objc_release
loc_1000a7c60:
  1000a7c60  mov     x0, x21
loc_1000a7c64:
  1000a7c64  bl      _objc_release
loc_1000a7c68:
  1000a7c68  ldr     x0, [sp, #8]
loc_1000a7c6c:
  1000a7c6c  bl      _objc_release
  1000a7c70  mov     x20, x19
loc_1000a7c74:
  1000a7c74  mov     x0, x20
  1000a7c78  bl      _objc_release
  1000a7c7c  mov     x0, x25
  1000a7c80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager getEquippedWeaponsList]
; address 0x1000a7c84  size 192  kind objc
; ======================================================================
  1000a7c84  stp     x22, x21, [sp, #-0x30]!
  1000a7c88  stp     x20, x19, [sp, #0x10]
  1000a7c8c  stp     x29, x30, [sp, #0x20]
  1000a7c90  add     x29, sp, #0x20
  1000a7c94  mov     x22, x0
  1000a7c98  adrp    x8, #0x10041d000
  1000a7c9c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000a7ca0  adrp    x8, #0x100416000
  1000a7ca4  nop
  1000a7ca8  ldr     x20, [x8, #0xac8]
  1000a7cac  mov     x1, x20
  1000a7cb0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a7cb4  adrp    x8, #0x100420000
  1000a7cb8  ldrsw   x8, [x8, #0x104]                         ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000a7cbc  ldr     x2, [x22, x8]                            ; x2 = self->weaponsArray
  1000a7cc0  adrp    x8, #0x100418000
  1000a7cc4  nop
  1000a7cc8  ldr     x21, [x8, #0xbb0]
  1000a7ccc  mov     x1, x21
  1000a7cd0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithArray:self->weaponsArray]
  1000a7cd4  mov     x19, x0
  1000a7cd8  adrp    x8, #0x100420000
  1000a7cdc  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000a7ce0  ldr     x2, [x22, x8]                            ; x2 = self->meleeWeapon
  1000a7ce4  adrp    x8, #0x100416000
  1000a7ce8  nop
  1000a7cec  ldr     x1, [x8, #0xd90]
  1000a7cf0  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] initWithArray:self->weaponsArray] addObject:self->meleeWeapon]
  1000a7cf4  adrp    x8, #0x10041d000
  1000a7cf8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000a7cfc  mov     x1, x20
  1000a7d00  bl      _objc_msgSend                            ; [NSArray alloc]
  1000a7d04  mov     x1, x21
  1000a7d08  mov     x2, x19
  1000a7d0c  bl      _objc_msgSend                            ; [[NSArray alloc] initWithArray:[[NSMutableArray alloc] initWithArray:self->weaponsArray]]
  1000a7d10  mov     x20, x0
  1000a7d14  mov     x0, x19
  1000a7d18  bl      _objc_release
  1000a7d1c  mov     x0, x20
  1000a7d20  ldp     x29, x30, [sp, #0x20]
  1000a7d24  ldp     x20, x19, [sp, #0x10]
  1000a7d28  ldp     x22, x21, [sp], #0x30
  1000a7d2c  b       _objc_autoreleaseReturnValue
  1000a7d30  mov     x20, x0
  1000a7d34  mov     x0, x19
  1000a7d38  bl      _objc_release
  1000a7d3c  mov     x0, x20
  1000a7d40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager initWithWeaponList:]
; address 0x1000a7d44  size 944  kind objc
; ======================================================================
  1000a7d44  stp     x28, x27, [sp, #-0x60]!
  1000a7d48  stp     x26, x25, [sp, #0x10]
  1000a7d4c  stp     x24, x23, [sp, #0x20]
  1000a7d50  stp     x22, x21, [sp, #0x30]
  1000a7d54  stp     x20, x19, [sp, #0x40]
  1000a7d58  stp     x29, x30, [sp, #0x50]
  1000a7d5c  add     x29, sp, #0x50
  1000a7d60  sub     sp, sp, #0x120
  1000a7d64  adrp    x22, #0x1003b0000
  1000a7d68  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a7d6c  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a7d70  stur    x22, [x29, #-0x58]
  1000a7d74  str     x0, [sp, #0x88]
  1000a7d78  adrp    x8, #0x10041e000
  1000a7d7c  ldr     x8, [x8, #0xf00]
  1000a7d80  str     x8, [sp, #0x90]
  1000a7d84  adrp    x8, #0x100416000
  1000a7d88  nop
  1000a7d8c  ldr     x20, [x8, #0xab8]
  1000a7d90  mov     x21, #0
  1000a7d94  add     x0, sp, #0x88
  1000a7d98  mov     x1, x20
  1000a7d9c  bl      _objc_msgSendSuper2                      ; [super init]
  1000a7da0  mov     x19, x0
  1000a7da4  cbz     x19, loc_1000a8054                       ; if (self == 0)
  1000a7da8  mov     x21, x19
  1000a7dac  adrp    x8, #0x100417000
  1000a7db0  nop
  1000a7db4  ldr     x1, [x8, #0xa8]
  1000a7db8  mov     x0, x19
  1000a7dbc  bl      _objc_msgSend                            ; [self getAllWeaponsArray]
  1000a7dc0  mov     x29, x29
  1000a7dc4  bl      _objc_retainAutoreleasedReturnValue
  1000a7dc8  mov     x23, x0
  1000a7dcc  adrp    x21, #0x10041d000
  1000a7dd0  ldr     x0, [x21, #0xf28]                        ; class NSMutableArray
  1000a7dd4  adrp    x8, #0x100416000
  1000a7dd8  nop
  1000a7ddc  ldr     x1, [x8, #0xac8]
  1000a7de0  str     x1, [sp, #0x40]
  1000a7de4  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a7de8  mov     x1, x20
  1000a7dec  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a7df0  adrp    x8, #0x100420000
  1000a7df4  ldrsw   x9, [x8, #0x104]                         ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000a7df8  str     x9, [sp, #0x20]
  1000a7dfc  ldr     x8, [x19, x9]                            ; x8 = self->weaponsArray
  1000a7e00  str     x0, [x19, x9]                            ; self->weaponsArray = [[NSMutableArray alloc] init]
  1000a7e04  mov     x0, x8
  1000a7e08  bl      _objc_release
  1000a7e0c  ldr     x0, [x21, #0xf28]                        ; class NSMutableArray
  1000a7e10  ldr     x1, [sp, #0x40]
  1000a7e14  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a7e18  mov     x1, x20
  1000a7e1c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a7e20  adrp    x8, #0x100420000
  1000a7e24  ldrsw   x9, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000a7e28  ldr     x8, [x19, x9]                            ; x8 = self->projectileArray
  1000a7e2c  str     x0, [x19, x9]                            ; self->projectileArray = [[NSMutableArray alloc] init]
  1000a7e30  mov     x0, x8
  1000a7e34  bl      _objc_release
  1000a7e38  stp     xzr, xzr, [sp, #0x78]
  1000a7e3c  stp     xzr, xzr, [sp, #0x68]
  1000a7e40  stp     xzr, xzr, [sp, #0x58]
  1000a7e44  stp     xzr, xzr, [sp, #0x48]
  1000a7e48  mov     x0, x23
  1000a7e4c  str     x23, [sp, #8]
  1000a7e50  bl      _objc_retain
  1000a7e54  str     x0, [sp, #0x28]
  1000a7e58  adrp    x8, #0x100416000
  1000a7e5c  nop
  1000a7e60  ldr     x1, [x8, #0xe00]
  1000a7e64  str     x1, [sp, #0x10]
  1000a7e68  add     x2, sp, #0x48
  1000a7e6c  add     x3, sp, #0x98
  1000a7e70  mov     w4, #0x10
  1000a7e74  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16]
  1000a7e78  mov     x24, x0
  1000a7e7c  cbz     x24, loc_1000a7fec                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16] == 0)
  1000a7e80  ldr     x8, [sp, #0x58]
  1000a7e84  ldr     x8, [x8]
  1000a7e88  str     x8, [sp, #0x38]
  1000a7e8c  adrp    x8, #0x100417000
  1000a7e90  nop
  1000a7e94  ldr     x8, [x8, #0x40]
  1000a7e98  str     x8, [sp, #0x30]
  1000a7e9c  adrp    x8, #0x100417000
  1000a7ea0  nop
  1000a7ea4  ldr     x26, [x8, #0xd8]
  1000a7ea8  adrp    x8, #0x100416000
  1000a7eac  nop
  1000a7eb0  ldr     x27, [x8, #0xd80]
  1000a7eb4  adrp    x8, #0x100420000
  1000a7eb8  ldrsw   x22, [x8, #0x10c]                        ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000a7ebc  adrp    x8, #0x100418000
  1000a7ec0  nop
  1000a7ec4  adrp    x9, #0x100416000
  1000a7ec8  add     x9, x9, #0xd90                           ; &@selector(addObject:)
  1000a7ecc  ldr     x28, [x8, #0xff0]
  1000a7ed0  ldr     x8, [x9]
  1000a7ed4  str     x8, [sp, #0x18]
loc_1000a7ed8:
  1000a7ed8  mov     x25, #0
loc_1000a7edc:
  1000a7edc  ldr     x8, [sp, #0x58]
  1000a7ee0  ldr     x8, [x8]
  1000a7ee4  ldr     x9, [sp, #0x38]
  1000a7ee8  cmp     x8, x9
  1000a7eec  b.eq    loc_1000a7ef8                            ; if (x8 == x9)
  1000a7ef0  ldr     x0, [sp, #0x28]
  1000a7ef4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllWeaponsArray])
loc_1000a7ef8:
  1000a7ef8  ldr     x8, [sp, #0x50]
  1000a7efc  ldr     x21, [x8, x25, lsl #3]
  1000a7f00  mov     x0, x21
  1000a7f04  ldr     x1, [sp, #0x30]
  1000a7f08  adrp    x2, #0x1003b9000
  1000a7f0c  add     x2, x2, #0xe10                           ; @"melee"
  1000a7f10  bl      _objc_msgSend                            ; [x0 objectForKey:@"melee"]
  1000a7f14  mov     x29, x29
  1000a7f18  bl      _objc_retainAutoreleasedReturnValue
  1000a7f1c  mov     x20, x0
  1000a7f20  mov     x1, x26
  1000a7f24  bl      _objc_msgSend                            ; [[x0 objectForKey:@"melee"] boolValue]
  1000a7f28  mov     x23, x0
  1000a7f2c  mov     x0, x20
  1000a7f30  bl      _objc_release
  1000a7f34  tbz     w23, #0, loc_1000a7f78                   ; if (!([[x0 objectForKey:@"melee"] boolValue] & 1))
  1000a7f38  adrp    x8, #0x10041e000
  1000a7f3c  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  1000a7f40  ldr     x1, [sp, #0x40]
  1000a7f44  bl      _objc_msgSend                            ; [ADMeleeWeapon alloc]
  1000a7f48  mov     x1, x27
  1000a7f4c  mov     x2, x21
  1000a7f50  bl      _objc_msgSend                            ; [[ADMeleeWeapon alloc] initWithDictionary:x2]
  1000a7f54  ldr     x8, [x19, x22]                           ; x8 = self->meleeWeapon
  1000a7f58  str     x0, [x19, x22]                           ; self->meleeWeapon = [[ADMeleeWeapon alloc] initWithDictionary:x2]
  1000a7f5c  mov     x0, x8
  1000a7f60  bl      _objc_release
  1000a7f64  ldr     x0, [x19, x22]                           ; x0 = self->meleeWeapon
  1000a7f68  mov     x1, x28
  1000a7f6c  mov     x2, x19
  1000a7f70  bl      _objc_msgSend                            ; [self->meleeWeapon setWeaponManager:self]
  1000a7f74  b       loc_1000a7fc0
loc_1000a7f78:
  1000a7f78  adrp    x8, #0x10041e000
  1000a7f7c  ldr     x0, [x8, #0x3c8]                         ; class ADWeapon
  1000a7f80  ldr     x1, [sp, #0x40]
  1000a7f84  bl      _objc_msgSend                            ; [ADWeapon alloc]
  1000a7f88  mov     x1, x27
  1000a7f8c  mov     x2, x21
  1000a7f90  bl      _objc_msgSend                            ; [[ADWeapon alloc] initWithDictionary:x2]
  1000a7f94  mov     x21, x0
  1000a7f98  mov     x0, x21
  1000a7f9c  mov     x1, x28
  1000a7fa0  mov     x2, x19
  1000a7fa4  bl      _objc_msgSend                            ; [[[ADWeapon alloc] initWithDictionary:x2] setWeaponManager:self]
  1000a7fa8  ldp     x1, x8, [sp, #0x18]
  1000a7fac  ldr     x0, [x19, x8]                            ; x0 = self->weaponsArray
  1000a7fb0  mov     x2, x21
  1000a7fb4  bl      _objc_msgSend                            ; [self->weaponsArray addObject:[[ADWeapon alloc] initWithDictionary:x2]]
  1000a7fb8  mov     x0, x21
  1000a7fbc  bl      _objc_release
loc_1000a7fc0:
  1000a7fc0  add     x25, x25, #1
  1000a7fc4  cmp     x25, x24
  1000a7fc8  b.lo    loc_1000a7edc                            ; if ((x25 + 1) <u [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16])
  1000a7fcc  add     x2, sp, #0x48
  1000a7fd0  add     x3, sp, #0x98
  1000a7fd4  mov     w4, #0x10
  1000a7fd8  ldr     x0, [sp, #0x28]
  1000a7fdc  ldr     x1, [sp, #0x10]
  1000a7fe0  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16]
  1000a7fe4  mov     x24, x0
  1000a7fe8  cbnz    x24, loc_1000a7ed8                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16] != 0)
loc_1000a7fec:
  1000a7fec  ldr     x0, [sp, #0x28]
  1000a7ff0  bl      _objc_release
  1000a7ff4  ldr     x8, [sp, #0x20]
  1000a7ff8  ldr     x0, [x19, x8]                            ; x0 = self->weaponsArray
  1000a7ffc  adrp    x8, #0x100416000
  1000a8000  nop
  1000a8004  ldr     x1, [x8, #0xc30]
  1000a8008  mov     x2, #0
  1000a800c  ldr     x23, [sp, #8]
  1000a8010  bl      _objc_msgSend                            ; [self->weaponsArray objectAtIndex:0]
  1000a8014  adrp    x22, #0x1003b0000
  1000a8018  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a801c  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a8020  mov     x29, x29
  1000a8024  bl      _objc_retainAutoreleasedReturnValue
  1000a8028  mov     x20, x0
  1000a802c  adrp    x8, #0x10041a000
  1000a8030  nop
  1000a8034  ldr     x1, [x8, #0x430]
  1000a8038  mov     x0, x19
  1000a803c  mov     x2, x20
  1000a8040  bl      _objc_msgSend                            ; [self setCurrentWeapon:[self->weaponsArray objectAtIndex:0]]
  1000a8044  mov     x0, x20
  1000a8048  bl      _objc_release
  1000a804c  ldr     x0, [sp, #0x28]
  1000a8050  bl      _objc_release
loc_1000a8054:
  1000a8054  ldur    x8, [x29, #-0x58]
  1000a8058  sub     x8, x22, x8
  1000a805c  cbnz    x8, loc_1000a8084                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a8060  mov     x0, x19
  1000a8064  sub     sp, x29, #0x50
  1000a8068  ldp     x29, x30, [sp, #0x50]
  1000a806c  ldp     x20, x19, [sp, #0x40]
  1000a8070  ldp     x22, x21, [sp, #0x30]
  1000a8074  ldp     x24, x23, [sp, #0x20]
  1000a8078  ldp     x26, x25, [sp, #0x10]
  1000a807c  ldp     x28, x27, [sp], #0x60
  1000a8080  ret
loc_1000a8084:
  1000a8084  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a8088:
  1000a8088  mov     x22, x0
  1000a808c  b       loc_1000a80a8
  1000a8090  mov     x22, x0
  1000a8094  mov     x0, x20
  1000a8098  b       loc_1000a80a4
  1000a809c  mov     x22, x0
  1000a80a0  mov     x0, x21
loc_1000a80a4:
  1000a80a4  bl      _objc_release
loc_1000a80a8:
  1000a80a8  ldr     x23, [sp, #8]
  1000a80ac  ldr     x0, [sp, #0x28]
loc_1000a80b0:
  1000a80b0  bl      _objc_release
loc_1000a80b4:
  1000a80b4  mov     x0, x23
  1000a80b8  bl      _objc_release
loc_1000a80bc:
  1000a80bc  mov     x0, x19
  1000a80c0  bl      _objc_release
  1000a80c4  mov     x0, x22
  1000a80c8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a80cc  b       loc_1000a8088
  1000a80d0  mov     x22, x0
  1000a80d4  b       loc_1000a80b4
  1000a80d8  mov     x22, x0
  1000a80dc  mov     x19, x21
  1000a80e0  b       loc_1000a80bc
  1000a80e4  b       loc_1000a8088
  1000a80e8  mov     x22, x0
  1000a80ec  mov     x0, x20
  1000a80f0  b       loc_1000a80b0

; ======================================================================
; -[ADWeaponManager initWithChallengeWeaponArray:]
; address 0x1000a80f4  size 1496  kind objc
; ======================================================================
  1000a80f4  stp     x28, x27, [sp, #-0x60]!
  1000a80f8  stp     x26, x25, [sp, #0x10]
  1000a80fc  stp     x24, x23, [sp, #0x20]
  1000a8100  stp     x22, x21, [sp, #0x30]
  1000a8104  stp     x20, x19, [sp, #0x40]
  1000a8108  stp     x29, x30, [sp, #0x50]
  1000a810c  add     x29, sp, #0x50
  1000a8110  sub     sp, sp, #0x240
  1000a8114  mov     x19, x0
  1000a8118  adrp    x21, #0x1003b0000
  1000a811c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000a8120  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000a8124  stur    x21, [x29, #-0x58]
  1000a8128  mov     x0, x2
  1000a812c  bl      _objc_retain
  1000a8130  mov     x22, x0
  1000a8134  str     x19, [sp, #0x128]
  1000a8138  adrp    x8, #0x10041e000
  1000a813c  ldr     x8, [x8, #0xf00]
  1000a8140  str     x8, [sp, #0x130]
  1000a8144  adrp    x8, #0x100416000
  1000a8148  nop
  1000a814c  ldr     x19, [x8, #0xab8]
  1000a8150  mov     x20, #0
  1000a8154  add     x0, sp, #0x128
  1000a8158  mov     x1, x19
  1000a815c  bl      _objc_msgSendSuper2                      ; [super init]
  1000a8160  str     x0, [sp, #0x90]
  1000a8164  cbz     x0, loc_1000a85d8                        ; if (self == 0)
  1000a8168  ldr     x0, [sp, #0x90]
  1000a816c  mov     x20, x0
  1000a8170  adrp    x8, #0x100417000
  1000a8174  nop
  1000a8178  ldr     x1, [x8, #0xa8]
  1000a817c  bl      _objc_msgSend                            ; [self getAllWeaponsArray]
  1000a8180  mov     x29, x29
  1000a8184  bl      _objc_retainAutoreleasedReturnValue
  1000a8188  str     x0, [sp, #0x28]
  1000a818c  adrp    x20, #0x10041d000
  1000a8190  ldr     x0, [x20, #0xf28]                        ; class NSMutableArray
  1000a8194  adrp    x8, #0x100416000
  1000a8198  nop
  1000a819c  ldr     x1, [x8, #0xac8]
  1000a81a0  str     x1, [sp, #0x88]
  1000a81a4  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a81a8  mov     x1, x19
  1000a81ac  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a81b0  adrp    x8, #0x100420000
  1000a81b4  ldrsw   x10, [x8, #0x104]                        ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000a81b8  str     x10, [sp, #0x68]
  1000a81bc  ldr     x9, [sp, #0x90]
  1000a81c0  ldr     x8, [x9, x10]                            ; x8 = self->weaponsArray
  1000a81c4  str     x0, [x9, x10]                            ; self->weaponsArray = [[NSMutableArray alloc] init]
  1000a81c8  mov     x0, x8
  1000a81cc  bl      _objc_release
  1000a81d0  ldr     x0, [x20, #0xf28]                        ; class NSMutableArray
  1000a81d4  ldr     x1, [sp, #0x88]
  1000a81d8  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a81dc  mov     x1, x19
  1000a81e0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a81e4  adrp    x8, #0x100420000
  1000a81e8  ldrsw   x9, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000a81ec  ldr     x10, [sp, #0x90]
  1000a81f0  ldr     x8, [x10, x9]                            ; x8 = self->projectileArray
  1000a81f4  str     x0, [x10, x9]                            ; self->projectileArray = [[NSMutableArray alloc] init]
  1000a81f8  mov     x0, x8
  1000a81fc  bl      _objc_release
  1000a8200  stp     xzr, xzr, [sp, #0x118]
  1000a8204  stp     xzr, xzr, [sp, #0x108]
  1000a8208  stp     xzr, xzr, [sp, #0xf8]
  1000a820c  stp     xzr, xzr, [sp, #0xe8]
  1000a8210  mov     x0, x22
  1000a8214  str     x22, [sp, #0x10]
  1000a8218  bl      _objc_retain
  1000a821c  str     x0, [sp, #0x18]
  1000a8220  adrp    x8, #0x100416000
  1000a8224  nop
  1000a8228  ldr     x1, [x8, #0xe00]
  1000a822c  str     x1, [sp, #0x40]
  1000a8230  add     x2, sp, #0xe8
  1000a8234  sub     x3, x29, #0xd8
  1000a8238  mov     w4, #0x10
  1000a823c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xe8] objects:&x29[-0xd8] count:16]
  1000a8240  cbz     x0, loc_1000a856c                        ; if ([arg1 countByEnumeratingWithState:&sp[0xe8] objects:&x29[-0xd8] count:16] == 0)
  1000a8244  adrp    x8, #0x100417000
  1000a8248  nop
  1000a824c  adrp    x9, #0x100416000
  1000a8250  nop
  1000a8254  adrp    x10, #0x100417000
  1000a8258  add     x10, x10, #0xd8                          ; &@selector(boolValue)
  1000a825c  ldr     x11, [sp, #0xf8]
  1000a8260  adrp    x12, #0x100416000
  1000a8264  add     x12, x12, #0xd80                         ; &@selector(initWithDictionary:)
  1000a8268  ldr     x26, [x8, #0x40]
  1000a826c  ldr     x8, [x9, #0xf58]
  1000a8270  str     x8, [sp, #0xa0]
  1000a8274  ldr     x8, [x11]
  1000a8278  str     x8, [sp, #0x20]
  1000a827c  ldr     x8, [x10]
  1000a8280  str     x8, [sp, #0x80]
  1000a8284  ldr     x8, [x12]
  1000a8288  str     x8, [sp, #0x78]
  1000a828c  adrp    x8, #0x100420000
  1000a8290  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000a8294  str     x8, [sp, #0x60]
  1000a8298  adrp    x8, #0x100418000
  1000a829c  nop
  1000a82a0  ldr     x8, [x8, #0xff0]
  1000a82a4  str     x8, [sp, #0x70]
  1000a82a8  adrp    x8, #0x100416000
  1000a82ac  nop
  1000a82b0  ldr     x8, [x8, #0xd90]
  1000a82b4  str     x8, [sp, #0x58]
  1000a82b8  adrp    x8, #0x100417000
  1000a82bc  nop
  1000a82c0  adrp    x9, #0x100417000
  1000a82c4  add     x9, x9, #0x4e8                           ; &@selector(setBulletsTotal:)
  1000a82c8  adrp    x24, #0x1003b9000
  1000a82cc  add     x24, x24, #0xdb0                         ; @"name"
  1000a82d0  ldr     x8, [x8, #0xb0]
  1000a82d4  str     x8, [sp, #0x50]
  1000a82d8  ldr     x8, [x9]
  1000a82dc  str     x8, [sp, #0x48]
loc_1000a82e0:
  1000a82e0  str     x0, [sp, #0x30]
  1000a82e4  mov     x19, #0
loc_1000a82e8:
  1000a82e8  ldr     x8, [sp, #0xf8]
  1000a82ec  ldr     x8, [x8]
  1000a82f0  ldr     x9, [sp, #0x20]
  1000a82f4  cmp     x8, x9
  1000a82f8  b.eq    loc_1000a8304                            ; if (x8 == x9)
  1000a82fc  ldr     x0, [sp, #0x18]
  1000a8300  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_1000a8304:
  1000a8304  ldr     x8, [sp, #0xf0]
  1000a8308  ldr     x21, [x8, x19, lsl #3]
  1000a830c  str     x19, [sp, #0x38]
  1000a8310  stp     xzr, xzr, [sp, #0xd8]
  1000a8314  stp     xzr, xzr, [sp, #0xc8]
  1000a8318  stp     xzr, xzr, [sp, #0xb8]
  1000a831c  stp     xzr, xzr, [sp, #0xa8]
  1000a8320  ldr     x0, [sp, #0x28]
  1000a8324  bl      _objc_retain
  1000a8328  str     x0, [sp, #0x98]
  1000a832c  add     x2, sp, #0xa8
  1000a8330  add     x3, sp, #0x138
  1000a8334  mov     w4, #0x10
  1000a8338  ldr     x1, [sp, #0x40]
  1000a833c  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x138] count:16]
  1000a8340  mov     x23, x0
  1000a8344  cbz     x23, loc_1000a8538                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x138] count:16] == 0)
  1000a8348  ldr     x8, [sp, #0xb8]
  1000a834c  ldr     x20, [x8]
loc_1000a8350:
  1000a8350  mov     x27, #0
loc_1000a8354:
  1000a8354  ldr     x8, [sp, #0xb8]
  1000a8358  ldr     x8, [x8]
  1000a835c  cmp     x8, x20
  1000a8360  b.eq    loc_1000a836c                            ; if (x8 == x20)
  1000a8364  ldr     x0, [sp, #0x98]
  1000a8368  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllWeaponsArray])
loc_1000a836c:
  1000a836c  ldr     x8, [sp, #0xb0]
  1000a8370  ldr     x28, [x8, x27, lsl #3]
  1000a8374  mov     x0, x28
  1000a8378  mov     x1, x26
  1000a837c  mov     x2, x24
  1000a8380  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a8384  mov     x29, x29
  1000a8388  bl      _objc_retainAutoreleasedReturnValue
  1000a838c  mov     x19, x0
  1000a8390  mov     x0, x21
  1000a8394  mov     x1, x26
  1000a8398  mov     x2, x24
  1000a839c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a83a0  mov     x29, x29
  1000a83a4  bl      _objc_retainAutoreleasedReturnValue
  1000a83a8  mov     x22, x0
  1000a83ac  mov     x0, x19
  1000a83b0  ldr     x1, [sp, #0xa0]
  1000a83b4  mov     x2, x22
  1000a83b8  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:[x0 objectForKey:@"name"]]
  1000a83bc  mov     x25, x0
  1000a83c0  mov     x0, x22
  1000a83c4  bl      _objc_release
  1000a83c8  mov     x0, x19
  1000a83cc  bl      _objc_release
  1000a83d0  cbz     w25, loc_1000a850c                       ; if ([[x0 objectForKey:@"name"] isEqualToString:[x0 objectForKey:@"name"]] == 0)
  1000a83d4  mov     x0, x28
  1000a83d8  mov     x1, x26
  1000a83dc  adrp    x2, #0x1003b9000
  1000a83e0  add     x2, x2, #0xe10                           ; @"melee"
  1000a83e4  bl      _objc_msgSend                            ; [x0 objectForKey:@"melee"]
  1000a83e8  mov     x29, x29
  1000a83ec  bl      _objc_retainAutoreleasedReturnValue
  1000a83f0  mov     x19, x0
  1000a83f4  ldr     x1, [sp, #0x80]
  1000a83f8  bl      _objc_msgSend                            ; [[x0 objectForKey:@"melee"] boolValue]
  1000a83fc  mov     x22, x0
  1000a8400  mov     x0, x19
  1000a8404  bl      _objc_release
  1000a8408  tbz     w22, #0, loc_1000a8454                   ; if (!([[x0 objectForKey:@"melee"] boolValue] & 1))
  1000a840c  adrp    x8, #0x10041e000
  1000a8410  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  1000a8414  ldr     x1, [sp, #0x88]
  1000a8418  bl      _objc_msgSend                            ; [ADMeleeWeapon alloc]
  1000a841c  ldr     x1, [sp, #0x78]
  1000a8420  mov     x2, x28
  1000a8424  bl      _objc_msgSend                            ; [[ADMeleeWeapon alloc] initWithDictionary:x2]
  1000a8428  ldr     x19, [sp, #0x90]
  1000a842c  ldr     x22, [sp, #0x60]
  1000a8430  ldr     x8, [x19, x22]                           ; x8 = self->meleeWeapon
  1000a8434  str     x0, [x19, x22]                           ; self->meleeWeapon = [[ADMeleeWeapon alloc] initWithDictionary:x2]
  1000a8438  mov     x0, x8
  1000a843c  bl      _objc_release
  1000a8440  ldr     x0, [x19, x22]                           ; x0 = self->meleeWeapon
  1000a8444  ldr     x1, [sp, #0x70]
  1000a8448  mov     x2, x19
  1000a844c  bl      _objc_msgSend                            ; [self->meleeWeapon setWeaponManager:self]
  1000a8450  b       loc_1000a850c
loc_1000a8454:
  1000a8454  adrp    x8, #0x10041e000
  1000a8458  ldr     x0, [x8, #0x3c8]                         ; class ADWeapon
  1000a845c  ldr     x1, [sp, #0x88]
  1000a8460  bl      _objc_msgSend                            ; [ADWeapon alloc]
  1000a8464  ldr     x1, [sp, #0x78]
  1000a8468  mov     x2, x28
  1000a846c  bl      _objc_msgSend                            ; [[ADWeapon alloc] initWithDictionary:x2]
  1000a8470  mov     x28, x0
  1000a8474  mov     x0, x21
  1000a8478  mov     x1, x26
  1000a847c  adrp    x2, #0x1003bc000
  1000a8480  add     x2, x2, #0x9d0                           ; @"ammo"
  1000a8484  ldr     x22, [sp, #0x90]
  1000a8488  bl      _objc_msgSend                            ; [x0 objectForKey:@"ammo"]
  1000a848c  mov     x29, x29
  1000a8490  bl      _objc_retainAutoreleasedReturnValue
  1000a8494  mov     x19, x0
  1000a8498  bl      _objc_release
  1000a849c  cbz     x19, loc_1000a84e0                       ; if ([x0 objectForKey:@"ammo"] == 0)
  1000a84a0  mov     x0, x21
  1000a84a4  mov     x1, x26
  1000a84a8  adrp    x2, #0x1003bc000
  1000a84ac  add     x2, x2, #0x9d0                           ; @"ammo"
  1000a84b0  bl      _objc_msgSend                            ; [x0 objectForKey:@"ammo"]
  1000a84b4  mov     x29, x29
  1000a84b8  bl      _objc_retainAutoreleasedReturnValue
  1000a84bc  mov     x19, x0
  1000a84c0  ldr     x1, [sp, #0x50]
  1000a84c4  bl      _objc_msgSend                            ; [[x0 objectForKey:@"ammo"] integerValue]
  1000a84c8  mov     x2, x0
  1000a84cc  mov     x0, x28
  1000a84d0  ldr     x1, [sp, #0x48]
  1000a84d4  bl      _objc_msgSend                            ; [[[ADWeapon alloc] initWithDictionary:x2] setBulletsTotal:[[x0 objectForKey:@"ammo"] integerValue]]
  1000a84d8  mov     x0, x19
  1000a84dc  bl      _objc_release
loc_1000a84e0:
  1000a84e0  mov     x0, x28
  1000a84e4  ldr     x1, [sp, #0x70]
  1000a84e8  mov     x2, x22
  1000a84ec  bl      _objc_msgSend                            ; [[[ADWeapon alloc] initWithDictionary:x2] setWeaponManager:self]
  1000a84f0  ldr     x8, [sp, #0x68]
  1000a84f4  ldr     x0, [x22, x8]                            ; x0 = self->weaponsArray
  1000a84f8  ldr     x1, [sp, #0x58]
  1000a84fc  mov     x2, x28
  1000a8500  bl      _objc_msgSend                            ; [self->weaponsArray addObject:[[ADWeapon alloc] initWithDictionary:x2]]
  1000a8504  mov     x0, x28
  1000a8508  bl      _objc_release
loc_1000a850c:
  1000a850c  add     x27, x27, #1
  1000a8510  cmp     x27, x23
  1000a8514  b.lo    loc_1000a8354                            ; if ((x27 + 1) <u [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x138] count:16])
  1000a8518  add     x2, sp, #0xa8
  1000a851c  add     x3, sp, #0x138
  1000a8520  mov     w4, #0x10
  1000a8524  ldr     x0, [sp, #0x98]
  1000a8528  ldr     x1, [sp, #0x40]
  1000a852c  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x138] count:16]
  1000a8530  mov     x23, x0
  1000a8534  cbnz    x23, loc_1000a8350                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0xa8] objects:&sp[0x138] count:16] != 0)
loc_1000a8538:
  1000a8538  ldr     x0, [sp, #0x98]
  1000a853c  bl      _objc_release
  1000a8540  ldp     x8, x19, [sp, #0x30]
  1000a8544  add     x19, x19, #1
  1000a8548  cmp     x19, x8
  1000a854c  b.lo    loc_1000a82e8                            ; if ((x19 + 1) <u [arg1 countByEnumeratingWithState:&sp[0xe8] objects:&x29[-0xd8] count:16])
  1000a8550  add     x2, sp, #0xe8
  1000a8554  sub     x3, x29, #0xd8
  1000a8558  mov     w4, #0x10
  1000a855c  ldr     x0, [sp, #0x18]
  1000a8560  ldr     x1, [sp, #0x40]
  1000a8564  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xe8] objects:&x29[-0xd8] count:16]
  1000a8568  cbnz    x0, loc_1000a82e0                        ; if ([arg1 countByEnumeratingWithState:&sp[0xe8] objects:&x29[-0xd8] count:16] != 0)
loc_1000a856c:
  1000a856c  ldr     x0, [sp, #0x18]
  1000a8570  bl      _objc_release
  1000a8574  ldr     x8, [sp, #0x90]
  1000a8578  ldr     x9, [sp, #0x68]
  1000a857c  ldr     x0, [x8, x9]                             ; x0 = self->weaponsArray
  1000a8580  adrp    x8, #0x100416000
  1000a8584  nop
  1000a8588  ldr     x1, [x8, #0xc30]
  1000a858c  mov     x2, #0
  1000a8590  ldr     x22, [sp, #0x10]
  1000a8594  bl      _objc_msgSend                            ; [self->weaponsArray objectAtIndex:0]
  1000a8598  adrp    x21, #0x1003b0000
  1000a859c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000a85a0  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000a85a4  mov     x29, x29
  1000a85a8  bl      _objc_retainAutoreleasedReturnValue
  1000a85ac  mov     x19, x0
  1000a85b0  adrp    x8, #0x10041a000
  1000a85b4  nop
  1000a85b8  ldr     x1, [x8, #0x430]
  1000a85bc  ldr     x0, [sp, #0x90]
  1000a85c0  mov     x2, x19
  1000a85c4  bl      _objc_msgSend                            ; [self setCurrentWeapon:[self->weaponsArray objectAtIndex:0]]
  1000a85c8  mov     x0, x19
  1000a85cc  bl      _objc_release
  1000a85d0  ldr     x0, [sp, #0x28]
  1000a85d4  bl      _objc_release
loc_1000a85d8:
  1000a85d8  mov     x0, x22
  1000a85dc  bl      _objc_release
  1000a85e0  ldur    x8, [x29, #-0x58]
  1000a85e4  sub     x8, x21, x8
  1000a85e8  cbnz    x8, loc_1000a8610                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a85ec  ldr     x0, [sp, #0x90]
  1000a85f0  sub     sp, x29, #0x50
  1000a85f4  ldp     x29, x30, [sp, #0x50]
  1000a85f8  ldp     x20, x19, [sp, #0x40]
  1000a85fc  ldp     x22, x21, [sp, #0x30]
  1000a8600  ldp     x24, x23, [sp, #0x20]
  1000a8604  ldp     x26, x25, [sp, #0x10]
  1000a8608  ldp     x28, x27, [sp], #0x60
  1000a860c  ret
loc_1000a8610:
  1000a8610  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a8614:
  1000a8614  mov     x21, x0
  1000a8618  b       loc_1000a865c
  1000a861c  mov     x21, x0
  1000a8620  b       loc_1000a8640
  1000a8624  mov     x21, x0
  1000a8628  mov     x0, x22
  1000a862c  bl      _objc_release
  1000a8630  b       loc_1000a8640
  1000a8634  mov     x21, x0
  1000a8638  b       loc_1000a8654
  1000a863c  mov     x21, x0
loc_1000a8640:
  1000a8640  mov     x0, x19
  1000a8644  b       loc_1000a8658
  1000a8648  mov     x21, x0
  1000a864c  mov     x0, x19
  1000a8650  bl      _objc_release
loc_1000a8654:
  1000a8654  mov     x0, x28
loc_1000a8658:
  1000a8658  bl      _objc_release
loc_1000a865c:
  1000a865c  ldr     x22, [sp, #0x10]
  1000a8660  ldr     x0, [sp, #0x98]
  1000a8664  bl      _objc_release
loc_1000a8668:
  1000a8668  ldr     x0, [sp, #0x18]
loc_1000a866c:
  1000a866c  bl      _objc_release
loc_1000a8670:
  1000a8670  ldr     x0, [sp, #0x28]
  1000a8674  bl      _objc_release
loc_1000a8678:
  1000a8678  mov     x0, x22
  1000a867c  bl      _objc_release
  1000a8680  ldr     x0, [sp, #0x90]
  1000a8684  bl      _objc_release
  1000a8688  mov     x0, x21
  1000a868c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a8690  b       loc_1000a8614
  1000a8694  b       loc_1000a8614
loc_1000a8698:
  1000a8698  mov     x21, x0
  1000a869c  ldr     x22, [sp, #0x10]
  1000a86a0  b       loc_1000a8668
  1000a86a4  mov     x21, x0
  1000a86a8  b       loc_1000a8670
  1000a86ac  b       loc_1000a8698
  1000a86b0  mov     x21, x0
  1000a86b4  str     x20, [sp, #0x90]
  1000a86b8  b       loc_1000a8678
  1000a86bc  b       loc_1000a8698
  1000a86c0  mov     x21, x0
  1000a86c4  mov     x0, x19
  1000a86c8  b       loc_1000a866c

; ======================================================================
; -[ADWeaponManager initWithWeaponDictionary:]
; address 0x1000a86cc  size 1388  kind objc
; ======================================================================
  1000a86cc  stp     x28, x27, [sp, #-0x60]!
  1000a86d0  stp     x26, x25, [sp, #0x10]
  1000a86d4  stp     x24, x23, [sp, #0x20]
  1000a86d8  stp     x22, x21, [sp, #0x30]
  1000a86dc  stp     x20, x19, [sp, #0x40]
  1000a86e0  stp     x29, x30, [sp, #0x50]
  1000a86e4  add     x29, sp, #0x50
  1000a86e8  sub     sp, sp, #0x220
  1000a86ec  mov     x19, x0
  1000a86f0  adrp    x22, #0x1003b0000
  1000a86f4  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a86f8  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a86fc  stur    x22, [x29, #-0x58]
  1000a8700  mov     x0, x2
  1000a8704  bl      _objc_retain
  1000a8708  mov     x21, x0
  1000a870c  str     x19, [sp, #0x108]
  1000a8710  adrp    x8, #0x10041e000
  1000a8714  ldr     x8, [x8, #0xf00]
  1000a8718  str     x8, [sp, #0x110]
  1000a871c  adrp    x8, #0x100416000
  1000a8720  nop
  1000a8724  ldr     x19, [x8, #0xab8]
  1000a8728  mov     x20, #0
  1000a872c  add     x0, sp, #0x108
  1000a8730  mov     x1, x19
  1000a8734  bl      _objc_msgSendSuper2                      ; [super init]
  1000a8738  mov     x25, x0
  1000a873c  cbz     x25, loc_1000a8b2c                       ; if (self == 0)
  1000a8740  mov     x20, x25
  1000a8744  adrp    x8, #0x100417000
  1000a8748  nop
  1000a874c  ldr     x1, [x8, #0xa8]
  1000a8750  mov     x0, x25
  1000a8754  bl      _objc_msgSend                            ; [self getAllWeaponsArray]
  1000a8758  mov     x29, x29
  1000a875c  bl      _objc_retainAutoreleasedReturnValue
  1000a8760  str     x0, [sp, #0x20]
  1000a8764  adrp    x20, #0x10041d000
  1000a8768  ldr     x0, [x20, #0xf28]                        ; class NSMutableArray
  1000a876c  adrp    x8, #0x100416000
  1000a8770  nop
  1000a8774  ldr     x1, [x8, #0xac8]
  1000a8778  str     x1, [sp, #0x68]
  1000a877c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a8780  mov     x1, x19
  1000a8784  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a8788  adrp    x8, #0x100420000
  1000a878c  ldrsw   x9, [x8, #0x104]                         ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000a8790  str     x9, [sp, #0x60]
  1000a8794  ldr     x8, [x25, x9]                            ; x8 = self->weaponsArray
  1000a8798  str     x0, [x25, x9]                            ; self->weaponsArray = [[NSMutableArray alloc] init]
  1000a879c  mov     x0, x8
  1000a87a0  bl      _objc_release
  1000a87a4  ldr     x0, [x20, #0xf28]                        ; class NSMutableArray
  1000a87a8  ldr     x1, [sp, #0x68]
  1000a87ac  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000a87b0  mov     x1, x19
  1000a87b4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000a87b8  adrp    x8, #0x100420000
  1000a87bc  ldrsw   x9, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000a87c0  ldr     x8, [x25, x9]                            ; x8 = self->projectileArray
  1000a87c4  str     x0, [x25, x9]                            ; self->projectileArray = [[NSMutableArray alloc] init]
  1000a87c8  mov     x0, x8
  1000a87cc  bl      _objc_release
  1000a87d0  stp     xzr, xzr, [sp, #0xf8]
  1000a87d4  stp     xzr, xzr, [sp, #0xe8]
  1000a87d8  stp     xzr, xzr, [sp, #0xd8]
  1000a87dc  stp     xzr, xzr, [sp, #0xc8]
  1000a87e0  mov     x0, x21
  1000a87e4  str     x21, [sp, #8]
  1000a87e8  bl      _objc_retain
  1000a87ec  str     x0, [sp, #0x10]
  1000a87f0  adrp    x8, #0x100416000
  1000a87f4  nop
  1000a87f8  ldr     x1, [x8, #0xe00]
  1000a87fc  str     x1, [sp, #0x38]
  1000a8800  add     x2, sp, #0xc8
  1000a8804  sub     x3, x29, #0xd8
  1000a8808  mov     w4, #0x10
  1000a880c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16]
  1000a8810  cbz     x0, loc_1000a8ac4                        ; if ([arg1 countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16] == 0)
  1000a8814  ldr     x8, [sp, #0xd8]
  1000a8818  adrp    x9, #0x100417000
  1000a881c  add     x9, x9, #0x40                            ; &@selector(objectForKey:)
  1000a8820  ldr     x8, [x8]
  1000a8824  str     x8, [sp, #0x18]
  1000a8828  ldr     x26, [x9]
  1000a882c  adrp    x8, #0x100416000
  1000a8830  nop
  1000a8834  ldr     x8, [x8, #0xf58]
  1000a8838  str     x8, [sp, #0x80]
  1000a883c  adrp    x8, #0x100416000
  1000a8840  nop
  1000a8844  ldr     x8, [x8, #0xd80]
  1000a8848  str     x8, [sp, #0x58]
  1000a884c  adrp    x8, #0x100418000
  1000a8850  nop
  1000a8854  ldr     x8, [x8, #0xff0]
  1000a8858  str     x8, [sp, #0x50]
  1000a885c  adrp    x8, #0x100417000
  1000a8860  nop
  1000a8864  ldr     x8, [x8, #0x110]
  1000a8868  str     x8, [sp, #0x78]
  1000a886c  adrp    x8, #0x100416000
  1000a8870  nop
  1000a8874  ldr     x8, [x8, #0xd90]
  1000a8878  str     x8, [sp, #0x48]
  1000a887c  adrp    x8, #0x100417000
  1000a8880  nop
  1000a8884  ldr     x8, [x8, #0x4e8]
  1000a8888  str     x8, [sp, #0x40]
loc_1000a888c:
  1000a888c  str     x0, [sp, #0x28]
  1000a8890  mov     x19, #0
loc_1000a8894:
  1000a8894  ldr     x8, [sp, #0xd8]
  1000a8898  ldr     x8, [x8]
  1000a889c  ldr     x9, [sp, #0x18]
  1000a88a0  cmp     x8, x9
  1000a88a4  b.eq    loc_1000a88b0                            ; if (x8 == x9)
  1000a88a8  ldr     x0, [sp, #0x10]
  1000a88ac  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_1000a88b0:
  1000a88b0  mov     x24, x25
  1000a88b4  ldr     x8, [sp, #0xd0]
  1000a88b8  ldr     x23, [x8, x19, lsl #3]
  1000a88bc  str     x19, [sp, #0x30]
  1000a88c0  stp     xzr, xzr, [sp, #0xb8]
  1000a88c4  stp     xzr, xzr, [sp, #0xa8]
  1000a88c8  stp     xzr, xzr, [sp, #0x98]
  1000a88cc  stp     xzr, xzr, [sp, #0x88]
  1000a88d0  ldr     x0, [sp, #0x20]
  1000a88d4  bl      _objc_retain
  1000a88d8  str     x0, [sp, #0x70]
  1000a88dc  add     x2, sp, #0x88
  1000a88e0  add     x3, sp, #0x118
  1000a88e4  mov     w4, #0x10
  1000a88e8  ldr     x1, [sp, #0x38]
  1000a88ec  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x118] count:16]
  1000a88f0  mov     x28, x0
  1000a88f4  cbz     x28, loc_1000a8a8c                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x118] count:16] == 0)
  1000a88f8  ldr     x8, [sp, #0x98]
  1000a88fc  ldr     x22, [x8]
loc_1000a8900:
  1000a8900  mov     x27, #0
loc_1000a8904:
  1000a8904  ldr     x8, [sp, #0x98]
  1000a8908  ldr     x8, [x8]
  1000a890c  cmp     x8, x22
  1000a8910  b.eq    loc_1000a891c                            ; if (x8 == x22)
  1000a8914  ldr     x0, [sp, #0x70]
  1000a8918  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllWeaponsArray])
loc_1000a891c:
  1000a891c  ldr     x8, [sp, #0x90]
  1000a8920  ldr     x19, [x8, x27, lsl #3]
  1000a8924  mov     x0, x19
  1000a8928  mov     x1, x26
  1000a892c  adrp    x2, #0x1003b9000
  1000a8930  add     x2, x2, #0xdb0                           ; @"name"
  1000a8934  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a8938  mov     x29, x29
  1000a893c  bl      _objc_retainAutoreleasedReturnValue
  1000a8940  mov     x25, x0
  1000a8944  mov     x0, x23
  1000a8948  mov     x1, x26
  1000a894c  adrp    x2, #0x1003b9000
  1000a8950  add     x2, x2, #0xdb0                           ; @"name"
  1000a8954  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a8958  mov     x29, x29
  1000a895c  bl      _objc_retainAutoreleasedReturnValue
  1000a8960  mov     x20, x0
  1000a8964  mov     x0, x25
  1000a8968  ldr     x1, [sp, #0x80]
  1000a896c  mov     x2, x20
  1000a8970  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:[x0 objectForKey:@"name"]]
  1000a8974  mov     x21, x0
  1000a8978  mov     x0, x20
  1000a897c  bl      _objc_release
  1000a8980  mov     x0, x25
  1000a8984  bl      _objc_release
  1000a8988  cbz     w21, loc_1000a8a60                       ; if ([[x0 objectForKey:@"name"] isEqualToString:[x0 objectForKey:@"name"]] == 0)
  1000a898c  adrp    x8, #0x10041e000
  1000a8990  ldr     x0, [x8, #0x3c8]                         ; class ADWeapon
  1000a8994  ldr     x1, [sp, #0x68]
  1000a8998  bl      _objc_msgSend                            ; [ADWeapon alloc]
  1000a899c  ldr     x1, [sp, #0x58]
  1000a89a0  mov     x2, x19
  1000a89a4  bl      _objc_msgSend                            ; [[ADWeapon alloc] initWithDictionary:x2]
  1000a89a8  mov     x19, x0
  1000a89ac  mov     x0, x19
  1000a89b0  ldr     x1, [sp, #0x50]
  1000a89b4  mov     x25, x24
  1000a89b8  mov     x2, x25
  1000a89bc  bl      _objc_msgSend                            ; [[[ADWeapon alloc] initWithDictionary:x2] setWeaponManager:self]
  1000a89c0  mov     x0, x23
  1000a89c4  mov     x1, x26
  1000a89c8  adrp    x2, #0x1003bc000
  1000a89cc  add     x2, x2, #0x9d0                           ; @"ammo"
  1000a89d0  bl      _objc_msgSend                            ; [x0 objectForKey:@"ammo"]
  1000a89d4  mov     x29, x29
  1000a89d8  bl      _objc_retainAutoreleasedReturnValue
  1000a89dc  mov     x20, x0
  1000a89e0  ldr     x1, [sp, #0x78]
  1000a89e4  bl      _objc_msgSend                            ; [[x0 objectForKey:@"ammo"] intValue]
  1000a89e8  mov     x21, x0
  1000a89ec  mov     x0, x20
  1000a89f0  bl      _objc_release
  1000a89f4  cbz     w21, loc_1000a8a40                       ; if ([[x0 objectForKey:@"ammo"] intValue] == 0)
  1000a89f8  mov     x0, x23
  1000a89fc  mov     x1, x26
  1000a8a00  adrp    x2, #0x1003bc000
  1000a8a04  add     x2, x2, #0x9d0                           ; @"ammo"
  1000a8a08  bl      _objc_msgSend                            ; [x0 objectForKey:@"ammo"]
  1000a8a0c  mov     x20, x25
  1000a8a10  mov     x29, x29
  1000a8a14  bl      _objc_retainAutoreleasedReturnValue
  1000a8a18  mov     x25, x0
  1000a8a1c  ldr     x1, [sp, #0x78]
  1000a8a20  bl      _objc_msgSend                            ; [[x0 objectForKey:@"ammo"] intValue]
  1000a8a24  mov     x2, x0
  1000a8a28  mov     x0, x19
  1000a8a2c  ldr     x1, [sp, #0x40]
  1000a8a30  bl      _objc_msgSend                            ; [[[ADWeapon alloc] initWithDictionary:x2] setBulletsTotal:[[x0 objectForKey:@"ammo"] intValue]]
  1000a8a34  mov     x0, x25
  1000a8a38  bl      _objc_release
  1000a8a3c  mov     x25, x20
loc_1000a8a40:
  1000a8a40  ldr     x8, [sp, #0x60]
  1000a8a44  ldr     x0, [x25, x8]                            ; x0 = self->weaponsArray
  1000a8a48  ldr     x1, [sp, #0x48]
  1000a8a4c  mov     x2, x19
  1000a8a50  bl      _objc_msgSend                            ; [self->weaponsArray addObject:[[ADWeapon alloc] initWithDictionary:x2]]
  1000a8a54  mov     x24, x25
  1000a8a58  mov     x0, x19
  1000a8a5c  bl      _objc_release
loc_1000a8a60:
  1000a8a60  add     x27, x27, #1
  1000a8a64  cmp     x27, x28
  1000a8a68  b.lo    loc_1000a8904                            ; if ((x27 + 1) <u [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x118] count:16])
  1000a8a6c  add     x2, sp, #0x88
  1000a8a70  add     x3, sp, #0x118
  1000a8a74  mov     w4, #0x10
  1000a8a78  ldr     x0, [sp, #0x70]
  1000a8a7c  ldr     x1, [sp, #0x38]
  1000a8a80  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x118] count:16]
  1000a8a84  mov     x28, x0
  1000a8a88  cbnz    x28, loc_1000a8900                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x118] count:16] != 0)
loc_1000a8a8c:
  1000a8a8c  ldr     x0, [sp, #0x70]
  1000a8a90  bl      _objc_release
  1000a8a94  ldp     x8, x19, [sp, #0x28]
  1000a8a98  add     x19, x19, #1
  1000a8a9c  cmp     x19, x8
  1000a8aa0  mov     x25, x24
  1000a8aa4  b.lo    loc_1000a8894                            ; if ((x19 + 1) <u [arg1 countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16])
  1000a8aa8  add     x2, sp, #0xc8
  1000a8aac  sub     x3, x29, #0xd8
  1000a8ab0  mov     w4, #0x10
  1000a8ab4  ldr     x0, [sp, #0x10]
  1000a8ab8  ldr     x1, [sp, #0x38]
  1000a8abc  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16]
  1000a8ac0  cbnz    x0, loc_1000a888c                        ; if ([arg1 countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16] != 0)
loc_1000a8ac4:
  1000a8ac4  ldr     x0, [sp, #0x10]
  1000a8ac8  bl      _objc_release
  1000a8acc  ldr     x8, [sp, #0x60]
  1000a8ad0  ldr     x0, [x25, x8]                            ; x0 = self->weaponsArray
  1000a8ad4  adrp    x8, #0x100416000
  1000a8ad8  nop
  1000a8adc  ldr     x1, [x8, #0xc30]
  1000a8ae0  mov     x2, #0
  1000a8ae4  ldr     x21, [sp, #8]
  1000a8ae8  bl      _objc_msgSend                            ; [self->weaponsArray objectAtIndex:0]
  1000a8aec  adrp    x22, #0x1003b0000
  1000a8af0  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a8af4  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a8af8  mov     x29, x29
  1000a8afc  bl      _objc_retainAutoreleasedReturnValue
  1000a8b00  mov     x19, x0
  1000a8b04  adrp    x8, #0x10041a000
  1000a8b08  nop
  1000a8b0c  ldr     x1, [x8, #0x430]
  1000a8b10  mov     x0, x25
  1000a8b14  mov     x2, x19
  1000a8b18  bl      _objc_msgSend                            ; [self setCurrentWeapon:[self->weaponsArray objectAtIndex:0]]
  1000a8b1c  mov     x0, x19
  1000a8b20  bl      _objc_release
  1000a8b24  ldr     x0, [sp, #0x20]
  1000a8b28  bl      _objc_release
loc_1000a8b2c:
  1000a8b2c  mov     x0, x21
  1000a8b30  bl      _objc_release
  1000a8b34  ldur    x8, [x29, #-0x58]
  1000a8b38  sub     x8, x22, x8
  1000a8b3c  cbnz    x8, loc_1000a8b64                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a8b40  mov     x0, x25
  1000a8b44  sub     sp, x29, #0x50
  1000a8b48  ldp     x29, x30, [sp, #0x50]
  1000a8b4c  ldp     x20, x19, [sp, #0x40]
  1000a8b50  ldp     x22, x21, [sp, #0x30]
  1000a8b54  ldp     x24, x23, [sp, #0x20]
  1000a8b58  ldp     x26, x25, [sp, #0x10]
  1000a8b5c  ldp     x28, x27, [sp], #0x60
  1000a8b60  ret
loc_1000a8b64:
  1000a8b64  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a8b68:
  1000a8b68  mov     x22, x0
  1000a8b6c  b       loc_1000a8b94
  1000a8b70  mov     x22, x0
  1000a8b74  b       loc_1000a8bc0
  1000a8b78  mov     x22, x0
  1000a8b7c  b       loc_1000a8b8c
  1000a8b80  mov     x22, x0
  1000a8b84  mov     x0, x20
  1000a8b88  bl      _objc_release
loc_1000a8b8c:
  1000a8b8c  mov     x0, x25
  1000a8b90  bl      _objc_release
loc_1000a8b94:
  1000a8b94  ldr     x21, [sp, #8]
  1000a8b98  mov     x25, x24
  1000a8b9c  b       loc_1000a8bcc
  1000a8ba0  mov     x22, x0
  1000a8ba4  mov     x0, x25
  1000a8ba8  bl      _objc_release
  1000a8bac  mov     x25, x20
  1000a8bb0  b       loc_1000a8bc0
  1000a8bb4  mov     x22, x0
  1000a8bb8  mov     x0, x20
  1000a8bbc  bl      _objc_release
loc_1000a8bc0:
  1000a8bc0  mov     x0, x19
  1000a8bc4  bl      _objc_release
  1000a8bc8  ldr     x21, [sp, #8]
loc_1000a8bcc:
  1000a8bcc  ldr     x0, [sp, #0x70]
  1000a8bd0  bl      _objc_release
loc_1000a8bd4:
  1000a8bd4  ldr     x0, [sp, #0x10]
loc_1000a8bd8:
  1000a8bd8  bl      _objc_release
loc_1000a8bdc:
  1000a8bdc  ldr     x0, [sp, #0x20]
  1000a8be0  bl      _objc_release
loc_1000a8be4:
  1000a8be4  mov     x0, x21
  1000a8be8  bl      _objc_release
  1000a8bec  mov     x0, x25
  1000a8bf0  bl      _objc_release
  1000a8bf4  mov     x0, x22
  1000a8bf8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a8bfc  b       loc_1000a8b68
  1000a8c00  b       loc_1000a8b68
loc_1000a8c04:
  1000a8c04  mov     x22, x0
  1000a8c08  ldr     x21, [sp, #8]
  1000a8c0c  b       loc_1000a8bd4
  1000a8c10  mov     x22, x0
  1000a8c14  b       loc_1000a8bdc
  1000a8c18  b       loc_1000a8c04
  1000a8c1c  mov     x22, x0
  1000a8c20  mov     x25, x20
  1000a8c24  b       loc_1000a8be4
  1000a8c28  b       loc_1000a8c04
  1000a8c2c  mov     x22, x0
  1000a8c30  mov     x0, x19
  1000a8c34  b       loc_1000a8bd8

; ======================================================================
; -[ADWeaponManager update:]
; address 0x1000a8c38  size 524  kind objc
; ======================================================================
  1000a8c38  stp     d9, d8, [sp, #-0x70]!
  1000a8c3c  stp     x28, x27, [sp, #0x10]
  1000a8c40  stp     x26, x25, [sp, #0x20]
  1000a8c44  stp     x24, x23, [sp, #0x30]
  1000a8c48  stp     x22, x21, [sp, #0x40]
  1000a8c4c  stp     x20, x19, [sp, #0x50]
  1000a8c50  stp     x29, x30, [sp, #0x60]
  1000a8c54  add     x29, sp, #0x60
  1000a8c58  sub     sp, sp, #0xd0
  1000a8c5c  mov     v8.16b, v0.16b
  1000a8c60  mov     x19, x0
  1000a8c64  adrp    x24, #0x1003b0000
  1000a8c68  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000a8c6c  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000a8c70  stur    x24, [x29, #-0x68]
  1000a8c74  adrp    x8, #0x100417000
  1000a8c78  nop
  1000a8c7c  ldr     x1, [x8, #0xc50]
  1000a8c80  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a8c84  mov     x29, x29
  1000a8c88  bl      _objc_retainAutoreleasedReturnValue
  1000a8c8c  mov     x21, x0
  1000a8c90  adrp    x8, #0x100419000
  1000a8c94  nop
  1000a8c98  ldr     x20, [x8, #0x68]
  1000a8c9c  mov     x1, x20
  1000a8ca0  mov     v0.16b, v8.16b
  1000a8ca4  bl      _objc_msgSend                            ; [[self currentWeapon] update:arg1]
  1000a8ca8  mov     x0, x21
  1000a8cac  bl      _objc_release
  1000a8cb0  stp     xzr, xzr, [sp, #0x38]
  1000a8cb4  stp     xzr, xzr, [sp, #0x28]
  1000a8cb8  stp     xzr, xzr, [sp, #0x18]
  1000a8cbc  stp     xzr, xzr, [sp, #8]
  1000a8cc0  adrp    x8, #0x100420000
  1000a8cc4  ldrsw   x8, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000a8cc8  ldr     x0, [x19, x8]                            ; x0 = self->projectileArray
  1000a8ccc  bl      _objc_retain
  1000a8cd0  mov     x21, x0
  1000a8cd4  adrp    x8, #0x100416000
  1000a8cd8  nop
  1000a8cdc  ldr     x22, [x8, #0xe00]
  1000a8ce0  add     x2, sp, #8
  1000a8ce4  add     x3, sp, #0x48
  1000a8ce8  mov     w4, #0x10
  1000a8cec  mov     x1, x22
  1000a8cf0  bl      _objc_msgSend                            ; [self->projectileArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a8cf4  mov     x23, x0
  1000a8cf8  cbz     x23, loc_1000a8d60                       ; if ([self->projectileArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000a8cfc  ldr     x8, [sp, #0x18]
  1000a8d00  ldr     x25, [x8]
loc_1000a8d04:
  1000a8d04  mov     x26, #0
loc_1000a8d08:
  1000a8d08  ldr     x8, [sp, #0x18]
  1000a8d0c  ldr     x8, [x8]
  1000a8d10  cmp     x8, x25
  1000a8d14  b.eq    loc_1000a8d20                            ; if (x8 == x25)
  1000a8d18  mov     x0, x21
  1000a8d1c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->projectileArray)
loc_1000a8d20:
  1000a8d20  ldr     x8, [sp, #0x10]
  1000a8d24  ldr     x0, [x8, x26, lsl #3]
  1000a8d28  mov     x1, x20
  1000a8d2c  mov     v0.16b, v8.16b
  1000a8d30  bl      _objc_msgSend                            ; [x0 update:arg1]
  1000a8d34  add     x26, x26, #1
  1000a8d38  cmp     x26, x23
  1000a8d3c  b.lo    loc_1000a8d08                            ; if ((x26 + 1) <u [self->projectileArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000a8d40  add     x2, sp, #8
  1000a8d44  add     x3, sp, #0x48
  1000a8d48  mov     w4, #0x10
  1000a8d4c  mov     x0, x21
  1000a8d50  mov     x1, x22
  1000a8d54  bl      _objc_msgSend                            ; [self->projectileArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a8d58  mov     x23, x0
  1000a8d5c  cbnz    x23, loc_1000a8d04                       ; if ([self->projectileArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000a8d60:
  1000a8d60  mov     x0, x21
  1000a8d64  bl      _objc_release
  1000a8d68  adrp    x8, #0x10041d000
  1000a8d6c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a8d70  adrp    x8, #0x100417000
  1000a8d74  nop
  1000a8d78  ldr     x1, [x8, #0xa0]
  1000a8d7c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000a8d80  mov     x29, x29
  1000a8d84  bl      _objc_retainAutoreleasedReturnValue
  1000a8d88  mov     x21, x0
  1000a8d8c  adrp    x8, #0x10041a000
  1000a8d90  nop
  1000a8d94  ldr     x1, [x8, #0x440]
  1000a8d98  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] powerUp]
  1000a8d9c  mov     x29, x29
  1000a8da0  bl      _objc_retainAutoreleasedReturnValue
  1000a8da4  mov     x22, x0
  1000a8da8  mov     x1, x20
  1000a8dac  mov     v0.16b, v8.16b
  1000a8db0  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] powerUp] update:arg1]
  1000a8db4  mov     x0, x22
  1000a8db8  bl      _objc_release
  1000a8dbc  mov     x0, x21
  1000a8dc0  bl      _objc_release
  1000a8dc4  adrp    x8, #0x100420000
  1000a8dc8  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000a8dcc  ldr     x0, [x19, x8]                            ; x0 = self->meleeWeapon
  1000a8dd0  mov     x1, x20
  1000a8dd4  mov     v0.16b, v8.16b
  1000a8dd8  bl      _objc_msgSend                            ; [self->meleeWeapon update:arg1]
  1000a8ddc  ldur    x8, [x29, #-0x68]
  1000a8de0  sub     x8, x24, x8
  1000a8de4  cbnz    x8, loc_1000a8e0c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a8de8  sub     sp, x29, #0x60
  1000a8dec  ldp     x29, x30, [sp, #0x60]
  1000a8df0  ldp     x20, x19, [sp, #0x50]
  1000a8df4  ldp     x22, x21, [sp, #0x40]
  1000a8df8  ldp     x24, x23, [sp, #0x30]
  1000a8dfc  ldp     x26, x25, [sp, #0x20]
  1000a8e00  ldp     x28, x27, [sp, #0x10]
  1000a8e04  ldp     d9, d8, [sp], #0x70
  1000a8e08  ret
loc_1000a8e0c:
  1000a8e0c  bl      ___stack_chk_fail                        ; stack_chk_fail([self->meleeWeapon update:arg1])
loc_1000a8e10:
  1000a8e10  mov     x19, x0
loc_1000a8e14:
  1000a8e14  mov     x0, x21
  1000a8e18  bl      _objc_release
  1000a8e1c  mov     x0, x19
  1000a8e20  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a8e24  b       loc_1000a8e10
  1000a8e28  b       loc_1000a8e10
  1000a8e2c  b       loc_1000a8e10
  1000a8e30  b       loc_1000a8e10
  1000a8e34  mov     x19, x0
  1000a8e38  mov     x0, x22
  1000a8e3c  bl      _objc_release
  1000a8e40  b       loc_1000a8e14

; ======================================================================
; -[ADWeaponManager numberOfWeaponsAvailableForSale]
; address 0x1000a8e44  size 680  kind objc
; ======================================================================
  1000a8e44  stp     x28, x27, [sp, #-0x60]!
  1000a8e48  stp     x26, x25, [sp, #0x10]
  1000a8e4c  stp     x24, x23, [sp, #0x20]
  1000a8e50  stp     x22, x21, [sp, #0x30]
  1000a8e54  stp     x20, x19, [sp, #0x40]
  1000a8e58  stp     x29, x30, [sp, #0x50]
  1000a8e5c  add     x29, sp, #0x50
  1000a8e60  sub     sp, sp, #0x100
  1000a8e64  adrp    x8, #0x1003b0000
  1000a8e68  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a8e6c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a8e70  stur    x8, [x29, #-0x58]
  1000a8e74  stp     xzr, xzr, [sp, #0x68]
  1000a8e78  stp     xzr, xzr, [sp, #0x58]
  1000a8e7c  stp     xzr, xzr, [sp, #0x48]
  1000a8e80  stp     xzr, xzr, [sp, #0x38]
  1000a8e84  adrp    x8, #0x100417000
  1000a8e88  nop
  1000a8e8c  ldr     x1, [x8, #0xa8]
  1000a8e90  bl      _objc_msgSend                            ; [self getAllWeaponsArray]
  1000a8e94  mov     x29, x29
  1000a8e98  bl      _objc_retainAutoreleasedReturnValue
  1000a8e9c  str     x0, [sp, #0x18]
  1000a8ea0  adrp    x8, #0x100416000
  1000a8ea4  nop
  1000a8ea8  ldr     x1, [x8, #0xe00]
  1000a8eac  str     x1, [sp, #8]
  1000a8eb0  add     x2, sp, #0x38
  1000a8eb4  add     x3, sp, #0x78
  1000a8eb8  mov     w4, #0x10
  1000a8ebc  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000a8ec0  mov     x23, x0
  1000a8ec4  mov     w21, #0
  1000a8ec8  cbz     x23, loc_1000a9048                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  1000a8ecc  ldr     x8, [sp, #0x48]
  1000a8ed0  ldr     x8, [x8]
  1000a8ed4  str     x8, [sp, #0x30]
  1000a8ed8  adrp    x8, #0x100417000
  1000a8edc  nop
  1000a8ee0  ldr     x22, [x8, #0x40]
  1000a8ee4  adrp    x8, #0x100417000
  1000a8ee8  nop
  1000a8eec  ldr     x8, [x8, #0x110]
  1000a8ef0  str     x8, [sp, #0x28]
  1000a8ef4  adrp    x8, #0x100416000
  1000a8ef8  nop
  1000a8efc  ldr     x25, [x8, #0xec8]
  1000a8f00  adrp    x8, #0x100417000
  1000a8f04  nop
  1000a8f08  ldr     x8, [x8, #0x958]
  1000a8f0c  str     x8, [sp, #0x20]
  1000a8f10  adrp    x8, #0x100417000
  1000a8f14  nop
  1000a8f18  ldr     x8, [x8, #0x1d8]
  1000a8f1c  str     x8, [sp, #0x10]
loc_1000a8f20:
  1000a8f20  mov     x24, #0
loc_1000a8f24:
  1000a8f24  ldr     x8, [sp, #0x48]
  1000a8f28  ldr     x8, [x8]
  1000a8f2c  ldr     x9, [sp, #0x30]
  1000a8f30  cmp     x8, x9
  1000a8f34  b.eq    loc_1000a8f40                            ; if (x8 == x9)
  1000a8f38  ldr     x0, [sp, #0x18]
  1000a8f3c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllWeaponsArray])
loc_1000a8f40:
  1000a8f40  ldr     x8, [sp, #0x40]
  1000a8f44  ldr     x27, [x8, x24, lsl #3]
  1000a8f48  mov     x0, x27
  1000a8f4c  mov     x1, x22
  1000a8f50  adrp    x2, #0x1003b9000
  1000a8f54  add     x2, x2, #0xd70                           ; @"price"
  1000a8f58  bl      _objc_msgSend                            ; [x0 objectForKey:@"price"]
  1000a8f5c  mov     x29, x29
  1000a8f60  bl      _objc_retainAutoreleasedReturnValue
  1000a8f64  mov     x20, x0
  1000a8f68  ldr     x1, [sp, #0x28]
  1000a8f6c  bl      _objc_msgSend                            ; [[x0 objectForKey:@"price"] intValue]
  1000a8f70  mov     x28, x0
  1000a8f74  adrp    x8, #0x10041d000
  1000a8f78  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a8f7c  mov     x1, x25
  1000a8f80  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a8f84  mov     x29, x29
  1000a8f88  bl      _objc_retainAutoreleasedReturnValue
  1000a8f8c  mov     x19, x0
  1000a8f90  ldr     x1, [sp, #0x20]
  1000a8f94  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000a8f98  cmp     w28, w0
  1000a8f9c  b.ge    loc_1000a9004                            ; if ([[x0 objectForKey:@"price"] intValue] >= [[ADInventory sharedInventory] coins])
  1000a8fa0  adrp    x8, #0x10041d000
  1000a8fa4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a8fa8  mov     x1, x25
  1000a8fac  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a8fb0  mov     x29, x29
  1000a8fb4  bl      _objc_retainAutoreleasedReturnValue
  1000a8fb8  mov     x28, x0
  1000a8fbc  mov     x0, x27
  1000a8fc0  mov     x1, x22
  1000a8fc4  adrp    x2, #0x1003b9000
  1000a8fc8  add     x2, x2, #0xdb0                           ; @"name"
  1000a8fcc  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a8fd0  mov     x29, x29
  1000a8fd4  bl      _objc_retainAutoreleasedReturnValue
  1000a8fd8  mov     x27, x0
  1000a8fdc  mov     x0, x28
  1000a8fe0  ldr     x1, [sp, #0x10]
  1000a8fe4  mov     x2, x27
  1000a8fe8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  1000a8fec  eor     w26, w0, #1
  1000a8ff0  mov     x0, x27
  1000a8ff4  bl      _objc_release
  1000a8ff8  mov     x0, x28
  1000a8ffc  bl      _objc_release
  1000a9000  b       loc_1000a9008
loc_1000a9004:
  1000a9004  mov     w26, #0
loc_1000a9008:
  1000a9008  mov     x0, x19
  1000a900c  bl      _objc_release
  1000a9010  mov     x0, x20
  1000a9014  bl      _objc_release
  1000a9018  add     w21, w26, w21
  1000a901c  add     x24, x24, #1
  1000a9020  cmp     x24, x23
  1000a9024  b.lo    loc_1000a8f24                            ; if ((x24 + 1) <u [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  1000a9028  add     x2, sp, #0x38
  1000a902c  add     x3, sp, #0x78
  1000a9030  mov     w4, #0x10
  1000a9034  ldr     x0, [sp, #0x18]
  1000a9038  ldr     x1, [sp, #8]
  1000a903c  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000a9040  mov     x23, x0
  1000a9044  cbnz    x23, loc_1000a8f20                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_1000a9048:
  1000a9048  ldr     x0, [sp, #0x18]
  1000a904c  bl      _objc_release
  1000a9050  ldur    x8, [x29, #-0x58]
  1000a9054  adrp    x9, #0x1003b0000
  1000a9058  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a905c  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a9060  sub     x8, x9, x8
  1000a9064  cbnz    x8, loc_1000a908c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a9068  mov     x0, x21
  1000a906c  sub     sp, x29, #0x50
  1000a9070  ldp     x29, x30, [sp, #0x50]
  1000a9074  ldp     x20, x19, [sp, #0x40]
  1000a9078  ldp     x22, x21, [sp, #0x30]
  1000a907c  ldp     x24, x23, [sp, #0x20]
  1000a9080  ldp     x26, x25, [sp, #0x10]
  1000a9084  ldp     x28, x27, [sp], #0x60
  1000a9088  ret
loc_1000a908c:
  1000a908c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000a9090  mov     x21, x0
  1000a9094  b       loc_1000a90cc
loc_1000a9098:
  1000a9098  mov     x21, x0
  1000a909c  b       loc_1000a90d4
  1000a90a0  mov     x21, x0
  1000a90a4  b       loc_1000a90c4
  1000a90a8  mov     x21, x0
  1000a90ac  b       loc_1000a90bc
  1000a90b0  mov     x21, x0
  1000a90b4  mov     x0, x27
  1000a90b8  bl      _objc_release
loc_1000a90bc:
  1000a90bc  mov     x0, x28
  1000a90c0  bl      _objc_release
loc_1000a90c4:
  1000a90c4  mov     x0, x19
  1000a90c8  bl      _objc_release
loc_1000a90cc:
  1000a90cc  mov     x0, x20
  1000a90d0  bl      _objc_release
loc_1000a90d4:
  1000a90d4  ldr     x0, [sp, #0x18]
  1000a90d8  bl      _objc_release
  1000a90dc  mov     x0, x21
  1000a90e0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a90e4  b       loc_1000a9098
  1000a90e8  b       loc_1000a9098

; ======================================================================
; -[ADWeaponManager numberOfWeaponsUpgradable]
; address 0x1000a90ec  size 1044  kind objc
; ======================================================================
  1000a90ec  stp     x28, x27, [sp, #-0x60]!
  1000a90f0  stp     x26, x25, [sp, #0x10]
  1000a90f4  stp     x24, x23, [sp, #0x20]
  1000a90f8  stp     x22, x21, [sp, #0x30]
  1000a90fc  stp     x20, x19, [sp, #0x40]
  1000a9100  stp     x29, x30, [sp, #0x50]
  1000a9104  add     x29, sp, #0x50
  1000a9108  sub     sp, sp, #0x120
  1000a910c  adrp    x8, #0x1003b0000
  1000a9110  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a9114  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a9118  stur    x8, [x29, #-0x58]
  1000a911c  stp     xzr, xzr, [sp, #0x88]
  1000a9120  stp     xzr, xzr, [sp, #0x78]
  1000a9124  stp     xzr, xzr, [sp, #0x68]
  1000a9128  stp     xzr, xzr, [sp, #0x58]
  1000a912c  adrp    x8, #0x100417000
  1000a9130  nop
  1000a9134  ldr     x1, [x8, #0xa8]
  1000a9138  bl      _objc_msgSend                            ; [self getAllWeaponsArray]
  1000a913c  mov     x29, x29
  1000a9140  bl      _objc_retainAutoreleasedReturnValue
  1000a9144  str     x0, [sp, #0x38]
  1000a9148  adrp    x8, #0x100416000
  1000a914c  nop
  1000a9150  ldr     x1, [x8, #0xe00]
  1000a9154  str     x1, [sp, #0x10]
  1000a9158  add     x2, sp, #0x58
  1000a915c  add     x3, sp, #0x98
  1000a9160  mov     w4, #0x10
  1000a9164  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000a9168  mov     x22, x0
  1000a916c  mov     w27, #0
  1000a9170  cbz     x22, loc_1000a9438                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  1000a9174  ldr     x8, [sp, #0x68]
  1000a9178  adrp    x9, #0x100416000
  1000a917c  add     x9, x9, #0xec8                           ; &@selector(sharedInventory)
  1000a9180  adrp    x10, #0x100417000
  1000a9184  add     x10, x10, #0x40                          ; &@selector(objectForKey:)
  1000a9188  ldr     x23, [x9]
  1000a918c  ldr     x24, [x8]
  1000a9190  ldr     x28, [x10]
  1000a9194  str     x28, [sp, #0x18]
  1000a9198  adrp    x8, #0x100417000
  1000a919c  nop
  1000a91a0  ldr     x8, [x8, #0x1d8]
  1000a91a4  str     x8, [sp, #0x50]
  1000a91a8  adrp    x8, #0x100417000
  1000a91ac  nop
  1000a91b0  ldr     x8, [x8, #0x458]
  1000a91b4  str     x8, [sp, #0x30]
  1000a91b8  adrp    x8, #0x100416000
  1000a91bc  nop
  1000a91c0  ldr     x8, [x8, #0xee8]
  1000a91c4  str     x8, [sp, #0x48]
  1000a91c8  adrp    x8, #0x100417000
  1000a91cc  nop
  1000a91d0  ldr     x8, [x8, #0x110]
  1000a91d4  str     x8, [sp, #0x28]
  1000a91d8  adrp    x8, #0x100417000
  1000a91dc  nop
  1000a91e0  ldr     x8, [x8, #0x958]
  1000a91e4  str     x8, [sp, #0x20]
loc_1000a91e8:
  1000a91e8  mov     x25, #0
loc_1000a91ec:
  1000a91ec  ldr     x8, [sp, #0x68]
  1000a91f0  ldr     x8, [x8]
  1000a91f4  cmp     x8, x24
  1000a91f8  b.eq    loc_1000a9204                            ; if (x8 == x24)
  1000a91fc  ldr     x0, [sp, #0x38]
  1000a9200  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllWeaponsArray])
loc_1000a9204:
  1000a9204  ldr     x8, [sp, #0x60]
  1000a9208  ldr     x19, [x8, x25, lsl #3]
  1000a920c  adrp    x8, #0x10041d000
  1000a9210  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a9214  mov     x1, x23
  1000a9218  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a921c  mov     x29, x29
  1000a9220  bl      _objc_retainAutoreleasedReturnValue
  1000a9224  mov     x20, x0
  1000a9228  mov     x0, x19
  1000a922c  mov     x1, x28
  1000a9230  adrp    x2, #0x1003b9000
  1000a9234  add     x2, x2, #0xdb0                           ; @"name"
  1000a9238  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a923c  mov     x29, x29
  1000a9240  bl      _objc_retainAutoreleasedReturnValue
  1000a9244  mov     x26, x0
  1000a9248  mov     x0, x20
  1000a924c  ldr     x1, [sp, #0x50]
  1000a9250  mov     x2, x26
  1000a9254  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  1000a9258  mov     x21, x0
  1000a925c  mov     x0, x26
  1000a9260  bl      _objc_release
  1000a9264  mov     x0, x20
  1000a9268  bl      _objc_release
  1000a926c  cbz     w21, loc_1000a940c                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] == 0)
  1000a9270  adrp    x8, #0x10041d000
  1000a9274  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a9278  mov     x1, x23
  1000a927c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a9280  mov     x29, x29
  1000a9284  bl      _objc_retainAutoreleasedReturnValue
  1000a9288  mov     x20, x0
  1000a928c  mov     x0, x19
  1000a9290  mov     x1, x28
  1000a9294  adrp    x2, #0x1003b9000
  1000a9298  add     x2, x2, #0xdb0                           ; @"name"
  1000a929c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a92a0  mov     x29, x29
  1000a92a4  bl      _objc_retainAutoreleasedReturnValue
  1000a92a8  mov     x26, x0
  1000a92ac  mov     x0, x20
  1000a92b0  ldr     x1, [sp, #0x30]
  1000a92b4  mov     x2, x26
  1000a92b8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]]
  1000a92bc  mov     x21, x0
  1000a92c0  mov     x0, x26
  1000a92c4  bl      _objc_release
  1000a92c8  mov     x0, x20
  1000a92cc  bl      _objc_release
  1000a92d0  adrp    x8, #0x10041d000
  1000a92d4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000a92d8  add     w26, w21, #1
  1000a92dc  str     x26, [sp]
  1000a92e0  ldr     x1, [sp, #0x48]
  1000a92e4  adrp    x2, #0x1003ba000
  1000a92e8  add     x2, x2, #0x450                           ; @"level_%i"
  1000a92ec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]…]
  1000a92f0  mov     x29, x29
  1000a92f4  bl      _objc_retainAutoreleasedReturnValue
  1000a92f8  mov     x20, x0
  1000a92fc  mov     x0, x19
  1000a9300  mov     x1, x28
  1000a9304  mov     x2, x20
  1000a9308  bl      _objc_msgSend                            ; [x0 objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]…]]
  1000a930c  mov     x29, x29
  1000a9310  bl      _objc_retainAutoreleasedReturnValue
  1000a9314  mov     x21, x0
  1000a9318  bl      _objc_release
  1000a931c  mov     x0, x20
  1000a9320  bl      _objc_release
  1000a9324  cbz     x21, loc_1000a940c                       ; if ([x0 objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]…]] == 0)
  1000a9328  adrp    x8, #0x10041d000
  1000a932c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000a9330  str     x26, [sp]
  1000a9334  ldr     x1, [sp, #0x48]
  1000a9338  adrp    x2, #0x1003ba000
  1000a933c  add     x2, x2, #0x450                           ; @"level_%i"
  1000a9340  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]…]
  1000a9344  mov     x29, x29
  1000a9348  bl      _objc_retainAutoreleasedReturnValue
  1000a934c  mov     x20, x0
  1000a9350  mov     x0, x19
  1000a9354  mov     x1, x28
  1000a9358  mov     x2, x20
  1000a935c  bl      _objc_msgSend                            ; [x0 objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]…]]
  1000a9360  mov     x29, x29
  1000a9364  bl      _objc_retainAutoreleasedReturnValue
  1000a9368  mov     x26, x0
  1000a936c  mov     x1, x28
  1000a9370  adrp    x2, #0x1003c0000
  1000a9374  add     x2, x2, #0xc90                           ; @"cost"
  1000a9378  bl      _objc_msgSend                            ; [[x0 objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]…]] objectForKey:@"cost"]
  1000a937c  mov     x29, x29
  1000a9380  bl      _objc_retainAutoreleasedReturnValue
  1000a9384  mov     x21, x0
  1000a9388  ldr     x1, [sp, #0x28]
  1000a938c  bl      _objc_msgSend                            ; [[[x0 objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 objectForKey:@"name"]…]] objectForKey:@"cost"] intValue]
  1000a9390  mov     x19, x0
  1000a9394  adrp    x8, #0x10041d000
  1000a9398  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a939c  mov     x1, x23
  1000a93a0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a93a4  str     x20, [sp, #0x40]
  1000a93a8  mov     x20, x24
  1000a93ac  mov     x24, x23
  1000a93b0  mov     x23, x22
  1000a93b4  mov     x22, x27
  1000a93b8  mov     x29, x29
  1000a93bc  bl      _objc_retainAutoreleasedReturnValue
  1000a93c0  mov     x27, x0
  1000a93c4  ldr     x1, [sp, #0x20]
  1000a93c8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000a93cc  mov     x28, x0
  1000a93d0  mov     x0, x27
  1000a93d4  bl      _objc_release
  1000a93d8  mov     x0, x21
  1000a93dc  bl      _objc_release
  1000a93e0  mov     x0, x26
  1000a93e4  bl      _objc_release
  1000a93e8  ldr     x0, [sp, #0x40]
  1000a93ec  bl      _objc_release
  1000a93f0  cmp     w19, w28
  1000a93f4  mov     x27, x22
  1000a93f8  cinc    w27, w27, lt                             ; t1 = ([[[x0 objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForWeaponWithName:[x0 ob… < [[ADInventory sharedInventory] coins] ? w27 + 1 : w27)
  1000a93fc  mov     x22, x23
  1000a9400  mov     x23, x24
  1000a9404  mov     x24, x20
  1000a9408  ldr     x28, [sp, #0x18]
loc_1000a940c:
  1000a940c  add     x25, x25, #1
  1000a9410  cmp     x25, x22
  1000a9414  b.lo    loc_1000a91ec                            ; if ((x25 + 1) <u [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16])
  1000a9418  add     x2, sp, #0x58
  1000a941c  add     x3, sp, #0x98
  1000a9420  mov     w4, #0x10
  1000a9424  ldr     x0, [sp, #0x38]
  1000a9428  ldr     x1, [sp, #0x10]
  1000a942c  bl      _objc_msgSend                            ; [[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000a9430  mov     x22, x0
  1000a9434  cbnz    x22, loc_1000a91e8                       ; if ([[self getAllWeaponsArray] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
loc_1000a9438:
  1000a9438  ldr     x0, [sp, #0x38]
  1000a943c  bl      _objc_release
  1000a9440  ldur    x8, [x29, #-0x58]
  1000a9444  adrp    x9, #0x1003b0000
  1000a9448  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a944c  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a9450  sub     x8, x9, x8
  1000a9454  cbnz    x8, loc_1000a947c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a9458  mov     x0, x27
  1000a945c  sub     sp, x29, #0x50
  1000a9460  ldp     x29, x30, [sp, #0x50]
  1000a9464  ldp     x20, x19, [sp, #0x40]
  1000a9468  ldp     x22, x21, [sp, #0x30]
  1000a946c  ldp     x24, x23, [sp, #0x20]
  1000a9470  ldp     x26, x25, [sp, #0x10]
  1000a9474  ldp     x28, x27, [sp], #0x60
  1000a9478  ret
loc_1000a947c:
  1000a947c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a9480:
  1000a9480  mov     x19, x0
  1000a9484  b       loc_1000a94e8
  1000a9488  mov     x19, x0
  1000a948c  b       loc_1000a94e0
  1000a9490  b       loc_1000a94b8
  1000a9494  mov     x19, x0
  1000a9498  b       loc_1000a94d0
  1000a949c  mov     x19, x0
  1000a94a0  b       loc_1000a94e0
  1000a94a4  b       loc_1000a94b8
  1000a94a8  mov     x19, x0
  1000a94ac  b       loc_1000a94e0
  1000a94b0  mov     x19, x0
  1000a94b4  b       loc_1000a94e0
loc_1000a94b8:
  1000a94b8  mov     x19, x0
  1000a94bc  b       loc_1000a94d8
  1000a94c0  mov     x19, x0
  1000a94c4  mov     x0, x27
  1000a94c8  bl      _objc_release
  1000a94cc  ldr     x20, [sp, #0x40]
loc_1000a94d0:
  1000a94d0  mov     x0, x21
  1000a94d4  bl      _objc_release
loc_1000a94d8:
  1000a94d8  mov     x0, x26
  1000a94dc  bl      _objc_release
loc_1000a94e0:
  1000a94e0  mov     x0, x20
  1000a94e4  bl      _objc_release
loc_1000a94e8:
  1000a94e8  ldr     x0, [sp, #0x38]
  1000a94ec  bl      _objc_release
  1000a94f0  mov     x0, x19
  1000a94f4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a94f8  b       loc_1000a9480
  1000a94fc  b       loc_1000a9480

; ======================================================================
; -[ADWeaponManager getAllPowerUpsArray]
; address 0x1000a9500  size 320  kind objc
; ======================================================================
  1000a9500  stp     x24, x23, [sp, #-0x40]!
  1000a9504  stp     x22, x21, [sp, #0x10]
  1000a9508  stp     x20, x19, [sp, #0x20]
  1000a950c  stp     x29, x30, [sp, #0x30]
  1000a9510  add     x29, sp, #0x30
  1000a9514  mov     x19, x0
  1000a9518  adrp    x22, #0x100420000
  1000a951c  ldrsw   x23, [x22, #0x110]                       ; ivar offset ADWeaponManager.allPowerUps (+0x10)
  1000a9520  ldr     x0, [x19, x23]                           ; x0 = self->allPowerUps
  1000a9524  cbnz    x0, loc_1000a95fc                        ; if (self->allPowerUps != 0)
  1000a9528  adrp    x8, #0x10041d000
  1000a952c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000a9530  adrp    x8, #0x100416000
  1000a9534  nop
  1000a9538  ldr     x1, [x8, #0xb58]
  1000a953c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000a9540  mov     x29, x29
  1000a9544  bl      _objc_retainAutoreleasedReturnValue
  1000a9548  mov     x21, x0
  1000a954c  adrp    x8, #0x100416000
  1000a9550  nop
  1000a9554  ldr     x1, [x8, #0xd60]
  1000a9558  adrp    x2, #0x1003bf000
  1000a955c  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000a9560  adrp    x3, #0x1003b9000
  1000a9564  add     x3, x3, #0xa70                           ; @"plist"
  1000a9568  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]
  1000a956c  mov     x29, x29
  1000a9570  bl      _objc_retainAutoreleasedReturnValue
  1000a9574  mov     x20, x0
  1000a9578  mov     x0, x21
  1000a957c  bl      _objc_release
  1000a9580  adrp    x8, #0x10041d000
  1000a9584  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000a9588  adrp    x8, #0x100416000
  1000a958c  nop
  1000a9590  ldr     x1, [x8, #0xac8]
  1000a9594  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000a9598  adrp    x8, #0x100416000
  1000a959c  nop
  1000a95a0  ldr     x1, [x8, #0xd68]
  1000a95a4  mov     x2, x20
  1000a95a8  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]]
  1000a95ac  mov     x21, x0
  1000a95b0  adrp    x8, #0x100417000
  1000a95b4  nop
  1000a95b8  ldr     x1, [x8, #0x40]
  1000a95bc  adrp    x2, #0x1003c0000
  1000a95c0  add     x2, x2, #0xcb0                           ; @"PowerUps"
  1000a95c4  mov     x0, x21
  1000a95c8  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"]
  1000a95cc  mov     x29, x29
  1000a95d0  bl      _objc_retainAutoreleasedReturnValue
  1000a95d4  ldr     x8, [x19, x23]                           ; x8 = self->allPowerUps
  1000a95d8  str     x0, [x19, x23]                           ; self->allPowerUps = [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"]
  1000a95dc  mov     x0, x8
  1000a95e0  bl      _objc_release
  1000a95e4  mov     x0, x21
  1000a95e8  bl      _objc_release
  1000a95ec  mov     x0, x20
  1000a95f0  bl      _objc_release
  1000a95f4  ldrsw   x8, [x22, #0x110]                        ; ivar offset ADWeaponManager.allPowerUps (+0x10)
  1000a95f8  ldr     x0, [x19, x8]                            ; x0 = self->allPowerUps
loc_1000a95fc:
  1000a95fc  ldp     x29, x30, [sp, #0x30]
  1000a9600  ldp     x20, x19, [sp, #0x20]
  1000a9604  ldp     x22, x21, [sp, #0x10]
  1000a9608  ldp     x24, x23, [sp], #0x40
  1000a960c  b       _objc_retainAutoreleaseReturnValue
  1000a9610  mov     x19, x0
  1000a9614  b       loc_1000a9630
  1000a9618  mov     x19, x0
  1000a961c  mov     x0, x21
  1000a9620  b       loc_1000a9634
  1000a9624  mov     x19, x0
  1000a9628  mov     x0, x21
  1000a962c  bl      _objc_release
loc_1000a9630:
  1000a9630  mov     x0, x20
loc_1000a9634:
  1000a9634  bl      _objc_release
  1000a9638  mov     x0, x19
  1000a963c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager dictionaryForPowerupWithName:]
; address 0x1000a9640  size 492  kind objc
; ======================================================================
  1000a9640  stp     x28, x27, [sp, #-0x60]!
  1000a9644  stp     x26, x25, [sp, #0x10]
  1000a9648  stp     x24, x23, [sp, #0x20]
  1000a964c  stp     x22, x21, [sp, #0x30]
  1000a9650  stp     x20, x19, [sp, #0x40]
  1000a9654  stp     x29, x30, [sp, #0x50]
  1000a9658  add     x29, sp, #0x50
  1000a965c  sub     sp, sp, #0xe0
  1000a9660  mov     x20, x0
  1000a9664  adrp    x22, #0x1003b0000
  1000a9668  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a966c  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a9670  stur    x22, [x29, #-0x58]
  1000a9674  mov     x0, x2
  1000a9678  bl      _objc_retain
  1000a967c  mov     x19, x0
  1000a9680  stp     xzr, xzr, [sp, #0x48]
  1000a9684  stp     xzr, xzr, [sp, #0x38]
  1000a9688  stp     xzr, xzr, [sp, #0x28]
  1000a968c  stp     xzr, xzr, [sp, #0x18]
  1000a9690  adrp    x8, #0x100417000
  1000a9694  nop
  1000a9698  ldr     x1, [x8, #0xe0]
  1000a969c  mov     x0, x20
  1000a96a0  bl      _objc_msgSend                            ; [self getAllPowerUpsArray]
  1000a96a4  mov     x29, x29
  1000a96a8  bl      _objc_retainAutoreleasedReturnValue
  1000a96ac  str     x0, [sp, #0x10]
  1000a96b0  adrp    x8, #0x100416000
  1000a96b4  nop
  1000a96b8  ldr     x1, [x8, #0xe00]
  1000a96bc  str     x1, [sp, #8]
  1000a96c0  add     x2, sp, #0x18
  1000a96c4  add     x3, sp, #0x58
  1000a96c8  mov     w4, #0x10
  1000a96cc  bl      _objc_msgSend                            ; [[self getAllPowerUpsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000a96d0  mov     x23, x0
  1000a96d4  cbz     x23, loc_1000a97a8                       ; if ([[self getAllPowerUpsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  1000a96d8  ldr     x8, [sp, #0x28]
  1000a96dc  ldr     x21, [x8]
  1000a96e0  adrp    x8, #0x100417000
  1000a96e4  nop
  1000a96e8  ldr     x22, [x8, #0x40]
  1000a96ec  adrp    x8, #0x100416000
  1000a96f0  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  1000a96f4  ldr     x24, [x8]
  1000a96f8  adrp    x25, #0x1003b9000
  1000a96fc  add     x25, x25, #0xdb0                         ; @"name"
loc_1000a9700:
  1000a9700  mov     x20, #0
loc_1000a9704:
  1000a9704  ldr     x8, [sp, #0x28]
  1000a9708  ldr     x8, [x8]
  1000a970c  cmp     x8, x21
  1000a9710  b.eq    loc_1000a971c                            ; if (x8 == x21)
  1000a9714  ldr     x0, [sp, #0x10]
  1000a9718  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getAllPowerUpsArray])
loc_1000a971c:
  1000a971c  ldr     x8, [sp, #0x20]
  1000a9720  ldr     x26, [x8, x20, lsl #3]
  1000a9724  mov     x0, x26
  1000a9728  mov     x1, x22
  1000a972c  mov     x2, x25
  1000a9730  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000a9734  mov     x29, x29
  1000a9738  bl      _objc_retainAutoreleasedReturnValue
  1000a973c  mov     x27, x0
  1000a9740  mov     x1, x24
  1000a9744  mov     x2, x19
  1000a9748  bl      _objc_msgSend                            ; [[x0 objectForKey:@"name"] isEqualToString:arg1]
  1000a974c  mov     x28, x0
  1000a9750  mov     x0, x27
  1000a9754  bl      _objc_release
  1000a9758  cbnz    w28, loc_1000a978c                       ; if ([[x0 objectForKey:@"name"] isEqualToString:arg1] != 0)
  1000a975c  add     x20, x20, #1
  1000a9760  cmp     x20, x23
  1000a9764  b.lo    loc_1000a9704                            ; if ((x20 + 1) <u [[self getAllPowerUpsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  1000a9768  add     x2, sp, #0x18
  1000a976c  add     x3, sp, #0x58
  1000a9770  mov     w4, #0x10
  1000a9774  ldp     x1, x0, [sp, #8]
  1000a9778  bl      _objc_msgSend                            ; [[self getAllPowerUpsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000a977c  mov     x23, x0
  1000a9780  cbnz    x23, loc_1000a9700                       ; if ([[self getAllPowerUpsArray] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
  1000a9784  mov     x21, #0
  1000a9788  b       loc_1000a9798
loc_1000a978c:
  1000a978c  mov     x0, x26
  1000a9790  bl      _objc_retain
  1000a9794  mov     x21, x0
loc_1000a9798:
  1000a9798  adrp    x22, #0x1003b0000
  1000a979c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000a97a0  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000a97a4  b       loc_1000a97ac
loc_1000a97a8:
  1000a97a8  mov     x21, #0
loc_1000a97ac:
  1000a97ac  ldr     x0, [sp, #0x10]
  1000a97b0  bl      _objc_release
  1000a97b4  mov     x0, x19
  1000a97b8  bl      _objc_release
  1000a97bc  ldur    x8, [x29, #-0x58]
  1000a97c0  sub     x8, x22, x8
  1000a97c4  cbnz    x8, loc_1000a97ec                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a97c8  mov     x0, x21
  1000a97cc  sub     sp, x29, #0x50
  1000a97d0  ldp     x29, x30, [sp, #0x50]
  1000a97d4  ldp     x20, x19, [sp, #0x40]
  1000a97d8  ldp     x22, x21, [sp, #0x30]
  1000a97dc  ldp     x24, x23, [sp, #0x20]
  1000a97e0  ldp     x26, x25, [sp, #0x10]
  1000a97e4  ldp     x28, x27, [sp], #0x60
  1000a97e8  b       _objc_autoreleaseReturnValue
loc_1000a97ec:
  1000a97ec  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a97f0:
  1000a97f0  mov     x21, x0
  1000a97f4  b       loc_1000a9804
  1000a97f8  mov     x21, x0
  1000a97fc  mov     x0, x27
  1000a9800  bl      _objc_release
loc_1000a9804:
  1000a9804  ldr     x0, [sp, #0x10]
  1000a9808  bl      _objc_release
loc_1000a980c:
  1000a980c  mov     x0, x19
  1000a9810  bl      _objc_release
  1000a9814  mov     x0, x21
  1000a9818  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a981c  mov     x21, x0
  1000a9820  b       loc_1000a980c
  1000a9824  b       loc_1000a97f0
  1000a9828  b       loc_1000a97f0

; ======================================================================
; -[ADWeaponManager initRandomPowerUp]
; address 0x1000a982c  size 72  kind objc
; ======================================================================
  1000a982c  stp     x20, x19, [sp, #-0x20]!
  1000a9830  stp     x29, x30, [sp, #0x10]
  1000a9834  add     x29, sp, #0x10
  1000a9838  mov     x19, x0
  1000a983c  bl      _rand                                    ; rand()
  1000a9840  add     w8, w0, #3
  1000a9844  cmp     w0, #0
  1000a9848  csel    w8, w8, w0, lt
  1000a984c  and     w8, w8, #0xfffffffc
  1000a9850  sub     w8, w0, w8
  1000a9854  add     w2, w8, #1
  1000a9858  adrp    x8, #0x100419000
  1000a985c  nop
  1000a9860  ldr     x1, [x8, #0x568]
  1000a9864  mov     x0, x19
  1000a9868  ldp     x29, x30, [sp, #0x10]
  1000a986c  ldp     x20, x19, [sp], #0x20
  1000a9870  b       _objc_msgSend                            ; [self initPowerUp:((rand() - ((rand() < 0 ? (rand() + 3) : rand()) & 0xfffffffc)) + 1)]

; ======================================================================
; -[ADWeaponManager initPowerUp:]
; address 0x1000a9874  size 1124  kind objc
; ======================================================================
  1000a9874  stp     x22, x21, [sp, #-0x30]!
  1000a9878  stp     x20, x19, [sp, #0x10]
  1000a987c  stp     x29, x30, [sp, #0x20]
  1000a9880  add     x29, sp, #0x20
  1000a9884  sub     sp, sp, #0x10
  1000a9888  sub     w8, w2, #1
  1000a988c  cmp     w8, #3
  1000a9890  b.hi    loc_1000a9be8                            ; if ((arg1 - 1) >u 3)
  1000a9894  adr     x9, #0x1000a9cc8                         ; 0x1000a9cc8
  1000a9898  nop
  1000a989c  ldrsw   x8, [x9, x8, lsl #2]
  1000a98a0  add     x8, x8, x9
  1000a98a4  br      x8                                       ; switch ((arg1 - 1)) { case 0: goto loc_1000a98a8; case 1: goto loc_1000a9978; case 2: goto loc_1000a9a48; case 3: goto loc_1000a9b18 }
loc_1000a98a8:  ; case 0
  1000a98a8  adrp    x8, #0x10041d000
  1000a98ac  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a98b0  adrp    x8, #0x100417000
  1000a98b4  nop
  1000a98b8  ldr     x1, [x8, #0xa0]
  1000a98bc  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000a98c0  mov     x29, x29
  1000a98c4  bl      _objc_retainAutoreleasedReturnValue
  1000a98c8  mov     x19, x0
  1000a98cc  adrp    x8, #0x10041e000
  1000a98d0  ldr     x0, [x8, #0x3d0]                         ; class ADMinigunPowerUp
  1000a98d4  adrp    x8, #0x100416000
  1000a98d8  nop
  1000a98dc  ldr     x1, [x8, #0xac8]
  1000a98e0  bl      _objc_msgSend                            ; [ADMinigunPowerUp alloc]
  1000a98e4  adrp    x8, #0x10041a000
  1000a98e8  nop
  1000a98ec  ldr     x1, [x8, #0x448]
  1000a98f0  mov     w2, #1
  1000a98f4  bl      _objc_msgSend                            ; [[ADMinigunPowerUp alloc] initWithType:1]
  1000a98f8  mov     x20, x0
  1000a98fc  adrp    x8, #0x10041a000
  1000a9900  nop
  1000a9904  ldr     x1, [x8, #0x450]
  1000a9908  mov     x0, x19
  1000a990c  mov     x2, x20
  1000a9910  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] setPowerUp:[[ADMinigunPowerUp alloc] initWithType:1]]
  1000a9914  mov     x0, x20
  1000a9918  bl      _objc_release
  1000a991c  mov     x0, x19
  1000a9920  bl      _objc_release
  1000a9924  adrp    x8, #0x10041e000
  1000a9928  ldr     x0, [x8, #8]                             ; class ADTracker
  1000a992c  adrp    x8, #0x100416000
  1000a9930  nop
  1000a9934  ldr     x1, [x8, #0xac0]
  1000a9938  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a993c  mov     x29, x29
  1000a9940  bl      _objc_retainAutoreleasedReturnValue
  1000a9944  mov     x19, x0
  1000a9948  adrp    x8, #0x100417000
  1000a994c  nop
  1000a9950  ldr     x1, [x8, #0x9b8]
  1000a9954  mov     x4, #0
  1000a9958  mov     x5, #0
  1000a995c  adrp    x2, #0x1003c0000
  1000a9960  add     x2, x2, #0xcd0                           ; @"minigun"
  1000a9964  adrp    x3, #0x1003ba000
  1000a9968  add     x3, x3, #0xd70                           ; @"PowerUp name"
  1000a996c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:@"minigun" ForDimension:@"PowerUp name" AndValue:0 ForMetric:0]
  1000a9970  b       loc_1000a9be0
  1000a9974  b       loc_1000a9cb0
loc_1000a9978:  ; case 1
  1000a9978  adrp    x8, #0x10041d000
  1000a997c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a9980  adrp    x8, #0x100417000
  1000a9984  nop
  1000a9988  ldr     x1, [x8, #0xa0]
  1000a998c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000a9990  mov     x29, x29
  1000a9994  bl      _objc_retainAutoreleasedReturnValue
  1000a9998  mov     x19, x0
  1000a999c  adrp    x8, #0x10041e000
  1000a99a0  ldr     x0, [x8, #0x3d8]                         ; class ADFireworksPowerUp
  1000a99a4  adrp    x8, #0x100416000
  1000a99a8  nop
  1000a99ac  ldr     x1, [x8, #0xac8]
  1000a99b0  bl      _objc_msgSend                            ; [ADFireworksPowerUp alloc]
  1000a99b4  adrp    x8, #0x10041a000
  1000a99b8  nop
  1000a99bc  ldr     x1, [x8, #0x448]
  1000a99c0  mov     w2, #2
  1000a99c4  bl      _objc_msgSend                            ; [[ADFireworksPowerUp alloc] initWithType:2]
  1000a99c8  mov     x20, x0
  1000a99cc  adrp    x8, #0x10041a000
  1000a99d0  nop
  1000a99d4  ldr     x1, [x8, #0x450]
  1000a99d8  mov     x0, x19
  1000a99dc  mov     x2, x20
  1000a99e0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] setPowerUp:[[ADFireworksPowerUp alloc] initWithType:2]]
  1000a99e4  mov     x0, x20
  1000a99e8  bl      _objc_release
  1000a99ec  mov     x0, x19
  1000a99f0  bl      _objc_release
  1000a99f4  adrp    x8, #0x10041e000
  1000a99f8  ldr     x0, [x8, #8]                             ; class ADTracker
  1000a99fc  adrp    x8, #0x100416000
  1000a9a00  nop
  1000a9a04  ldr     x1, [x8, #0xac0]
  1000a9a08  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a9a0c  mov     x29, x29
  1000a9a10  bl      _objc_retainAutoreleasedReturnValue
  1000a9a14  mov     x19, x0
  1000a9a18  adrp    x8, #0x100417000
  1000a9a1c  nop
  1000a9a20  ldr     x1, [x8, #0x9b8]
  1000a9a24  mov     x4, #0
  1000a9a28  mov     x5, #0
  1000a9a2c  adrp    x2, #0x1003bf000
  1000a9a30  add     x2, x2, #0xe10                           ; @"fireworks"
  1000a9a34  adrp    x3, #0x1003ba000
  1000a9a38  add     x3, x3, #0xd70                           ; @"PowerUp name"
  1000a9a3c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:@"fireworks" ForDimension:@"PowerUp name" AndValue:0 ForMetric:0]
  1000a9a40  b       loc_1000a9be0
  1000a9a44  b       loc_1000a9cb0
loc_1000a9a48:  ; case 2
  1000a9a48  adrp    x8, #0x10041d000
  1000a9a4c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a9a50  adrp    x8, #0x100417000
  1000a9a54  nop
  1000a9a58  ldr     x1, [x8, #0xa0]
  1000a9a5c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000a9a60  mov     x29, x29
  1000a9a64  bl      _objc_retainAutoreleasedReturnValue
  1000a9a68  mov     x19, x0
  1000a9a6c  adrp    x8, #0x10041e000
  1000a9a70  ldr     x0, [x8, #0x3e0]                         ; class ADTornadoPowerUp
  1000a9a74  adrp    x8, #0x100416000
  1000a9a78  nop
  1000a9a7c  ldr     x1, [x8, #0xac8]
  1000a9a80  bl      _objc_msgSend                            ; [ADTornadoPowerUp alloc]
  1000a9a84  adrp    x8, #0x10041a000
  1000a9a88  nop
  1000a9a8c  ldr     x1, [x8, #0x448]
  1000a9a90  mov     w2, #3
  1000a9a94  bl      _objc_msgSend                            ; [[ADTornadoPowerUp alloc] initWithType:3]
  1000a9a98  mov     x20, x0
  1000a9a9c  adrp    x8, #0x10041a000
  1000a9aa0  nop
  1000a9aa4  ldr     x1, [x8, #0x450]
  1000a9aa8  mov     x0, x19
  1000a9aac  mov     x2, x20
  1000a9ab0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] setPowerUp:[[ADTornadoPowerUp alloc] initWithType:3]]
  1000a9ab4  mov     x0, x20
  1000a9ab8  bl      _objc_release
  1000a9abc  mov     x0, x19
  1000a9ac0  bl      _objc_release
  1000a9ac4  adrp    x8, #0x10041e000
  1000a9ac8  ldr     x0, [x8, #8]                             ; class ADTracker
  1000a9acc  adrp    x8, #0x100416000
  1000a9ad0  nop
  1000a9ad4  ldr     x1, [x8, #0xac0]
  1000a9ad8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a9adc  mov     x29, x29
  1000a9ae0  bl      _objc_retainAutoreleasedReturnValue
  1000a9ae4  mov     x19, x0
  1000a9ae8  adrp    x8, #0x100417000
  1000a9aec  nop
  1000a9af0  ldr     x1, [x8, #0x9b8]
  1000a9af4  mov     x4, #0
  1000a9af8  mov     x5, #0
  1000a9afc  adrp    x2, #0x1003c0000
  1000a9b00  add     x2, x2, #0x150                           ; @"tornado"
  1000a9b04  adrp    x3, #0x1003ba000
  1000a9b08  add     x3, x3, #0xd70                           ; @"PowerUp name"
  1000a9b0c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:@"tornado" ForDimension:@"PowerUp name" AndValue:0 ForMetric:0]
  1000a9b10  b       loc_1000a9be0
  1000a9b14  b       loc_1000a9cb0
loc_1000a9b18:  ; case 3
  1000a9b18  adrp    x8, #0x10041d000
  1000a9b1c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a9b20  adrp    x8, #0x100417000
  1000a9b24  nop
  1000a9b28  ldr     x1, [x8, #0xa0]
  1000a9b2c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000a9b30  mov     x29, x29
  1000a9b34  bl      _objc_retainAutoreleasedReturnValue
  1000a9b38  mov     x19, x0
  1000a9b3c  adrp    x8, #0x10041e000
  1000a9b40  ldr     x0, [x8, #0x3e8]                         ; class ADTeslaPowerUp
  1000a9b44  adrp    x8, #0x100416000
  1000a9b48  nop
  1000a9b4c  ldr     x1, [x8, #0xac8]
  1000a9b50  bl      _objc_msgSend                            ; [ADTeslaPowerUp alloc]
  1000a9b54  adrp    x8, #0x10041a000
  1000a9b58  nop
  1000a9b5c  ldr     x1, [x8, #0x448]
  1000a9b60  mov     w2, #4
  1000a9b64  bl      _objc_msgSend                            ; [[ADTeslaPowerUp alloc] initWithType:4]
  1000a9b68  mov     x20, x0
  1000a9b6c  adrp    x8, #0x10041a000
  1000a9b70  nop
  1000a9b74  ldr     x1, [x8, #0x450]
  1000a9b78  mov     x0, x19
  1000a9b7c  mov     x2, x20
  1000a9b80  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] setPowerUp:[[ADTeslaPowerUp alloc] initWithType:4]]
  1000a9b84  mov     x0, x20
  1000a9b88  bl      _objc_release
  1000a9b8c  mov     x0, x19
  1000a9b90  bl      _objc_release
  1000a9b94  adrp    x8, #0x10041e000
  1000a9b98  ldr     x0, [x8, #8]                             ; class ADTracker
  1000a9b9c  adrp    x8, #0x100416000
  1000a9ba0  nop
  1000a9ba4  ldr     x1, [x8, #0xac0]
  1000a9ba8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a9bac  mov     x29, x29
  1000a9bb0  bl      _objc_retainAutoreleasedReturnValue
  1000a9bb4  mov     x19, x0
  1000a9bb8  adrp    x8, #0x100417000
  1000a9bbc  nop
  1000a9bc0  ldr     x1, [x8, #0x9b8]
  1000a9bc4  mov     x4, #0
  1000a9bc8  mov     x5, #0
  1000a9bcc  adrp    x2, #0x1003c0000
  1000a9bd0  add     x2, x2, #0xcf0                           ; @"tesla"
  1000a9bd4  adrp    x3, #0x1003ba000
  1000a9bd8  add     x3, x3, #0xd70                           ; @"PowerUp name"
  1000a9bdc  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:@"tesla" ForDimension:@"PowerUp name" AndValue:0 ForMetric:0]
loc_1000a9be0:
  1000a9be0  mov     x0, x19
  1000a9be4  bl      _objc_release
loc_1000a9be8:
  1000a9be8  adrp    x8, #0x10041d000
  1000a9bec  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a9bf0  adrp    x8, #0x100417000
  1000a9bf4  nop
  1000a9bf8  ldr     x1, [x8, #0xa0]
  1000a9bfc  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000a9c00  mov     x29, x29
  1000a9c04  bl      _objc_retainAutoreleasedReturnValue
  1000a9c08  mov     x19, x0
  1000a9c0c  adrp    x8, #0x10041a000
  1000a9c10  nop
  1000a9c14  ldr     x1, [x8, #0x440]
  1000a9c18  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] powerUp]
  1000a9c1c  mov     x29, x29
  1000a9c20  bl      _objc_retainAutoreleasedReturnValue
  1000a9c24  mov     x20, x0
  1000a9c28  adrp    x8, #0x10041a000
  1000a9c2c  nop
  1000a9c30  ldr     x1, [x8, #0x458]
  1000a9c34  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] powerUp] preload]
  1000a9c38  mov     x0, x20
  1000a9c3c  bl      _objc_release
  1000a9c40  mov     x0, x19
  1000a9c44  sub     sp, x29, #0x20
  1000a9c48  ldp     x29, x30, [sp, #0x20]
  1000a9c4c  ldp     x20, x19, [sp, #0x10]
  1000a9c50  ldp     x22, x21, [sp], #0x30
  1000a9c54  b       _objc_release
  1000a9c58  mov     x21, x0
  1000a9c5c  b       loc_1000a9c6c
  1000a9c60  mov     x21, x0
  1000a9c64  mov     x0, x20
  1000a9c68  bl      _objc_release
loc_1000a9c6c:
  1000a9c6c  mov     x0, x19
  1000a9c70  b       loc_1000a9cbc
  1000a9c74  b       loc_1000a9c80
  1000a9c78  b       loc_1000a9c80
  1000a9c7c  b       loc_1000a9c80
loc_1000a9c80:
  1000a9c80  str     x19, [sp, #8]
  1000a9c84  mov     x21, x0
  1000a9c88  b       loc_1000a9ca8
  1000a9c8c  b       loc_1000a9c98
  1000a9c90  b       loc_1000a9c98
  1000a9c94  b       loc_1000a9c98
loc_1000a9c98:
  1000a9c98  str     x19, [sp, #8]
  1000a9c9c  mov     x21, x0
  1000a9ca0  mov     x0, x20
  1000a9ca4  bl      _objc_release
loc_1000a9ca8:
  1000a9ca8  ldr     x0, [sp, #8]
  1000a9cac  b       loc_1000a9cbc
loc_1000a9cb0:
  1000a9cb0  mov     x1, x19
  1000a9cb4  mov     x21, x0
  1000a9cb8  mov     x0, x1
loc_1000a9cbc:
  1000a9cbc  bl      _objc_release
  1000a9cc0  mov     x0, x21
  1000a9cc4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a9cc8  .word   jump table of 1000a98a4, case 0 -> loc_1000a98a8
  1000a9ccc  .word   jump table of 1000a98a4, case 1 -> loc_1000a9978
  1000a9cd0  .word   jump table of 1000a98a4, case 2 -> loc_1000a9a48
  1000a9cd4  .word   jump table of 1000a98a4, case 3 -> loc_1000a9b18

; ======================================================================
; -[ADWeaponManager usePowerUp]
; address 0x1000a9cd8  size 160  kind objc
; ======================================================================
  1000a9cd8  stp     x22, x21, [sp, #-0x30]!
  1000a9cdc  stp     x20, x19, [sp, #0x10]
  1000a9ce0  stp     x29, x30, [sp, #0x20]
  1000a9ce4  add     x29, sp, #0x20
  1000a9ce8  adrp    x8, #0x10041d000
  1000a9cec  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000a9cf0  adrp    x8, #0x100417000
  1000a9cf4  nop
  1000a9cf8  ldr     x1, [x8, #0xa0]
  1000a9cfc  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000a9d00  mov     x29, x29
  1000a9d04  bl      _objc_retainAutoreleasedReturnValue
  1000a9d08  mov     x19, x0
  1000a9d0c  adrp    x8, #0x10041a000
  1000a9d10  nop
  1000a9d14  ldr     x1, [x8, #0x440]
  1000a9d18  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] powerUp]
  1000a9d1c  mov     x29, x29
  1000a9d20  bl      _objc_retainAutoreleasedReturnValue
  1000a9d24  mov     x20, x0
  1000a9d28  adrp    x8, #0x100417000
  1000a9d2c  nop
  1000a9d30  ldr     x1, [x8, #0x508]
  1000a9d34  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] powerUp] activate]
  1000a9d38  mov     x0, x20
  1000a9d3c  bl      _objc_release
  1000a9d40  mov     x0, x19
  1000a9d44  ldp     x29, x30, [sp, #0x20]
  1000a9d48  ldp     x20, x19, [sp, #0x10]
  1000a9d4c  ldp     x22, x21, [sp], #0x30
  1000a9d50  b       _objc_release
  1000a9d54  mov     x21, x0
  1000a9d58  b       loc_1000a9d68
  1000a9d5c  mov     x21, x0
  1000a9d60  mov     x0, x20
  1000a9d64  bl      _objc_release
loc_1000a9d68:
  1000a9d68  mov     x0, x19
  1000a9d6c  bl      _objc_release
  1000a9d70  mov     x0, x21
  1000a9d74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager weaponTouchedDown]
; address 0x1000a9d78  size 4  kind objc
; ======================================================================
  1000a9d78  ret

; ======================================================================
; -[ADWeaponManager weaponTouchedUp]
; address 0x1000a9d7c  size 4  kind objc
; ======================================================================
  1000a9d7c  ret

; ======================================================================
; -[ADWeaponManager weaponSingleShot]
; address 0x1000a9d80  size 132  kind objc
; ======================================================================
  1000a9d80  stp     x20, x19, [sp, #-0x20]!
  1000a9d84  stp     x29, x30, [sp, #0x10]
  1000a9d88  add     x29, sp, #0x10
  1000a9d8c  mov     x19, x0
  1000a9d90  adrp    x8, #0x10041a000
  1000a9d94  nop
  1000a9d98  ldr     x1, [x8, #0x460]
  1000a9d9c  bl      _objc_msgSend                            ; [self isWeaponReadyToShoot]
  1000a9da0  cbz     w0, loc_1000a9de4                        ; if ([self isWeaponReadyToShoot] == 0)
  1000a9da4  adrp    x8, #0x100417000
  1000a9da8  nop
  1000a9dac  ldr     x1, [x8, #0xc50]
  1000a9db0  mov     x0, x19
  1000a9db4  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a9db8  mov     x29, x29
  1000a9dbc  bl      _objc_retainAutoreleasedReturnValue
  1000a9dc0  mov     x19, x0
  1000a9dc4  adrp    x8, #0x100417000
  1000a9dc8  nop
  1000a9dcc  ldr     x1, [x8, #0x5b8]
  1000a9dd0  bl      _objc_msgSend                            ; [[self currentWeapon] singleShot]
  1000a9dd4  mov     x0, x19
  1000a9dd8  ldp     x29, x30, [sp, #0x10]
  1000a9ddc  ldp     x20, x19, [sp], #0x20
  1000a9de0  b       _objc_release
loc_1000a9de4:
  1000a9de4  ldp     x29, x30, [sp, #0x10]
  1000a9de8  ldp     x20, x19, [sp], #0x20
  1000a9dec  ret
  1000a9df0  mov     x20, x0
  1000a9df4  mov     x0, x19
  1000a9df8  bl      _objc_release
  1000a9dfc  mov     x0, x20
  1000a9e00  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager selectNextWeapon]
; address 0x1000a9e04  size 800  kind objc
; ======================================================================
  1000a9e04  stp     x26, x25, [sp, #-0x50]!
  1000a9e08  stp     x24, x23, [sp, #0x10]
  1000a9e0c  stp     x22, x21, [sp, #0x20]
  1000a9e10  stp     x20, x19, [sp, #0x30]
  1000a9e14  stp     x29, x30, [sp, #0x40]
  1000a9e18  add     x29, sp, #0x40
  1000a9e1c  mov     x19, x0
  1000a9e20  adrp    x8, #0x100417000
  1000a9e24  nop
  1000a9e28  ldr     x20, [x8, #0xc50]
  1000a9e2c  mov     x1, x20
  1000a9e30  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a9e34  mov     x29, x29
  1000a9e38  bl      _objc_retainAutoreleasedReturnValue
  1000a9e3c  mov     x21, x0
  1000a9e40  adrp    x8, #0x100416000
  1000a9e44  nop
  1000a9e48  ldr     x22, [x8, #0xc60]
  1000a9e4c  mov     x1, x22
  1000a9e50  bl      _objc_msgSend                            ; [[self currentWeapon] state]
  1000a9e54  cmp     w0, #6
  1000a9e58  b.ne    loc_1000a9e68                            ; if ([[self currentWeapon] state] != 6)
  1000a9e5c  mov     x0, x21
  1000a9e60  bl      _objc_release
  1000a9e64  b       loc_1000a9ea4
loc_1000a9e68:
  1000a9e68  mov     x0, x19
  1000a9e6c  mov     x1, x20
  1000a9e70  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a9e74  mov     x29, x29
  1000a9e78  bl      _objc_retainAutoreleasedReturnValue
  1000a9e7c  mov     x23, x0
  1000a9e80  mov     x1, x22
  1000a9e84  bl      _objc_msgSend                            ; [[self currentWeapon] state]
  1000a9e88  mov     x22, x0
  1000a9e8c  mov     x0, x23
  1000a9e90  bl      _objc_release
  1000a9e94  mov     x0, x21
  1000a9e98  bl      _objc_release
  1000a9e9c  cmp     w22, #8
  1000a9ea0  b.ne    loc_1000a9ed4                            ; if ([[self currentWeapon] state] != 8)
loc_1000a9ea4:
  1000a9ea4  mov     x0, x19
  1000a9ea8  mov     x1, x20
  1000a9eac  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a9eb0  mov     x29, x29
  1000a9eb4  bl      _objc_retainAutoreleasedReturnValue
  1000a9eb8  mov     x21, x0
  1000a9ebc  adrp    x8, #0x10041a000
  1000a9ec0  nop
  1000a9ec4  ldr     x1, [x8, #0x468]
  1000a9ec8  bl      _objc_msgSend                            ; [[self currentWeapon] interruptReload]
  1000a9ecc  mov     x0, x21
  1000a9ed0  bl      _objc_release
loc_1000a9ed4:
  1000a9ed4  adrp    x8, #0x100420000
  1000a9ed8  ldrsw   x25, [x8, #0x114]                        ; ivar offset ADWeaponManager.currentWeaponIndex (+0x30)
  1000a9edc  ldr     w8, [x19, x25]                           ; w8 = self->currentWeaponIndex
  1000a9ee0  add     w8, w8, #1
  1000a9ee4  sxtw    x21, w8
  1000a9ee8  str     w8, [x19, x25]                           ; self->currentWeaponIndex = (self->currentWeaponIndex + 1)
  1000a9eec  adrp    x8, #0x100420000
  1000a9ef0  ldrsw   x26, [x8, #0x104]                        ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000a9ef4  ldr     x0, [x19, x26]                           ; x0 = self->weaponsArray
  1000a9ef8  adrp    x8, #0x100416000
  1000a9efc  nop
  1000a9f00  ldr     x1, [x8, #0xe30]
  1000a9f04  bl      _objc_msgSend                            ; [self->weaponsArray count]
  1000a9f08  cmp     x21, x0
  1000a9f0c  b.lo    loc_1000a9f14                            ; if ((self->currentWeaponIndex + 1) <u [self->weaponsArray count])
  1000a9f10  str     wzr, [x19, x25]                          ; self->currentWeaponIndex = 0
loc_1000a9f14:
  1000a9f14  mov     x0, x19
  1000a9f18  mov     x1, x20
  1000a9f1c  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a9f20  mov     x29, x29
  1000a9f24  bl      _objc_retainAutoreleasedReturnValue
  1000a9f28  mov     x23, x0
  1000a9f2c  adrp    x8, #0x100417000
  1000a9f30  nop
  1000a9f34  ldr     x22, [x8, #0x450]
  1000a9f38  mov     x1, x22
  1000a9f3c  bl      _objc_msgSend                            ; [[self currentWeapon] name]
  1000a9f40  mov     x29, x29
  1000a9f44  bl      _objc_retainAutoreleasedReturnValue
  1000a9f48  mov     x21, x0
  1000a9f4c  mov     x0, x23
  1000a9f50  bl      _objc_release
  1000a9f54  mov     x0, x19
  1000a9f58  mov     x1, x20
  1000a9f5c  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a9f60  mov     x29, x29
  1000a9f64  bl      _objc_retainAutoreleasedReturnValue
  1000a9f68  mov     x24, x0
  1000a9f6c  adrp    x8, #0x100417000
  1000a9f70  nop
  1000a9f74  ldr     x1, [x8, #0x5c8]
  1000a9f78  bl      _objc_msgSend                            ; [[self currentWeapon] bulletsInClip]
  1000a9f7c  mov     x23, x0
  1000a9f80  mov     x0, x24
  1000a9f84  bl      _objc_release
  1000a9f88  ldr     x0, [x19, x26]                           ; x0 = self->weaponsArray
  1000a9f8c  ldrsw   x2, [x19, x25]                           ; x2 = self->currentWeaponIndex
  1000a9f90  adrp    x8, #0x100416000
  1000a9f94  nop
  1000a9f98  ldr     x1, [x8, #0xc30]
  1000a9f9c  bl      _objc_msgSend                            ; [self->weaponsArray objectAtIndex:self->currentWeaponIndex]
  1000a9fa0  mov     x29, x29
  1000a9fa4  bl      _objc_retainAutoreleasedReturnValue
  1000a9fa8  mov     x24, x0
  1000a9fac  adrp    x8, #0x10041a000
  1000a9fb0  nop
  1000a9fb4  ldr     x1, [x8, #0x430]
  1000a9fb8  mov     x0, x19
  1000a9fbc  mov     x2, x24
  1000a9fc0  bl      _objc_msgSend                            ; [self setCurrentWeapon:[self->weaponsArray objectAtIndex:self->currentWeaponIndex]]
  1000a9fc4  mov     x0, x24
  1000a9fc8  bl      _objc_release
  1000a9fcc  adrp    x8, #0x10041e000
  1000a9fd0  ldr     x0, [x8, #8]                             ; class ADTracker
  1000a9fd4  adrp    x8, #0x100416000
  1000a9fd8  nop
  1000a9fdc  ldr     x1, [x8, #0xac0]
  1000a9fe0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a9fe4  mov     x29, x29
  1000a9fe8  bl      _objc_retainAutoreleasedReturnValue
  1000a9fec  mov     x24, x0
  1000a9ff0  mov     x0, x19
  1000a9ff4  mov     x1, x20
  1000a9ff8  bl      _objc_msgSend                            ; [self currentWeapon]
  1000a9ffc  mov     x29, x29
  1000aa000  bl      _objc_retainAutoreleasedReturnValue
  1000aa004  mov     x25, x0
  1000aa008  mov     x1, x22
  1000aa00c  bl      _objc_msgSend                            ; [[self currentWeapon] name]
  1000aa010  sxtw    x23, w23
  1000aa014  mov     x29, x29
  1000aa018  bl      _objc_retainAutoreleasedReturnValue
  1000aa01c  mov     x22, x0
  1000aa020  adrp    x8, #0x10041a000
  1000aa024  nop
  1000aa028  ldr     x1, [x8, #0x470]
  1000aa02c  mov     x0, x24
  1000aa030  mov     x2, x21
  1000aa034  mov     x3, x22
  1000aa038  mov     x4, x23
  1000aa03c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] switchFromWeapon:[[self currentWeapon] name] ToNewWeapon:[[self currentWeapon] name] WithBulletsRemaining:[[self currentWeapon] bulletsInClip]]
  1000aa040  mov     x0, x22
  1000aa044  bl      _objc_release
  1000aa048  mov     x0, x25
  1000aa04c  bl      _objc_release
  1000aa050  mov     x0, x24
  1000aa054  bl      _objc_release
  1000aa058  mov     x0, x19
  1000aa05c  mov     x1, x20
  1000aa060  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa064  mov     x29, x29
  1000aa068  bl      _objc_retainAutoreleasedReturnValue
  1000aa06c  mov     x20, x0
  1000aa070  adrp    x8, #0x10041a000
  1000aa074  nop
  1000aa078  ldr     x1, [x8, #0x478]
  1000aa07c  bl      _objc_msgSend                            ; [[self currentWeapon] deploy]
  1000aa080  mov     x0, x20
  1000aa084  bl      _objc_release
  1000aa088  mov     x0, x21
  1000aa08c  ldp     x29, x30, [sp, #0x40]
  1000aa090  ldp     x20, x19, [sp, #0x30]
  1000aa094  ldp     x22, x21, [sp, #0x20]
  1000aa098  ldp     x24, x23, [sp, #0x10]
  1000aa09c  ldp     x26, x25, [sp], #0x50
  1000aa0a0  b       _objc_release
  1000aa0a4  mov     x19, x0
  1000aa0a8  b       loc_1000aa114
  1000aa0ac  mov     x19, x0
  1000aa0b0  b       loc_1000aa114
  1000aa0b4  mov     x19, x0
  1000aa0b8  mov     x0, x23
  1000aa0bc  b       loc_1000aa118
  1000aa0c0  b       loc_1000aa0c8
  1000aa0c4  b       loc_1000aa0c8
loc_1000aa0c8:
  1000aa0c8  mov     x19, x0
  1000aa0cc  b       loc_1000aa0ec
  1000aa0d0  mov     x19, x0
  1000aa0d4  b       loc_1000aa0e4
  1000aa0d8  mov     x19, x0
  1000aa0dc  mov     x0, x22
  1000aa0e0  bl      _objc_release
loc_1000aa0e4:
  1000aa0e4  mov     x0, x25
  1000aa0e8  bl      _objc_release
loc_1000aa0ec:
  1000aa0ec  mov     x0, x24
  1000aa0f0  b       loc_1000aa110
  1000aa0f4  mov     x19, x0
  1000aa0f8  mov     x0, x20
  1000aa0fc  b       loc_1000aa110
  1000aa100  mov     x19, x0
  1000aa104  b       loc_1000aa114
  1000aa108  mov     x19, x0
  1000aa10c  mov     x0, x23
loc_1000aa110:
  1000aa110  bl      _objc_release
loc_1000aa114:
  1000aa114  mov     x0, x21
loc_1000aa118:
  1000aa118  bl      _objc_release
  1000aa11c  mov     x0, x19
  1000aa120  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager setCurrentWeapon:]
; address 0x1000aa124  size 56  kind objc
; ======================================================================
  1000aa124  stp     x20, x19, [sp, #-0x20]!
  1000aa128  stp     x29, x30, [sp, #0x10]
  1000aa12c  add     x29, sp, #0x10
  1000aa130  mov     x19, x0
  1000aa134  mov     x0, x2
  1000aa138  bl      _objc_retain
  1000aa13c  adrp    x8, #0x100420000
  1000aa140  ldrsw   x9, [x8, #0x118]                         ; ivar offset ADWeaponManager._currentWeapon (+0x38)
  1000aa144  ldr     x8, [x19, x9]                            ; x8 = self->_currentWeapon
  1000aa148  str     x0, [x19, x9]                            ; self->_currentWeapon = arg1
  1000aa14c  mov     x0, x8
  1000aa150  ldp     x29, x30, [sp, #0x10]
  1000aa154  ldp     x20, x19, [sp], #0x20
  1000aa158  b       _objc_release

; ======================================================================
; -[ADWeaponManager shot]
; address 0x1000aa15c  size 272  kind objc
; ======================================================================
  1000aa15c  stp     x22, x21, [sp, #-0x30]!
  1000aa160  stp     x20, x19, [sp, #0x10]
  1000aa164  stp     x29, x30, [sp, #0x20]
  1000aa168  add     x29, sp, #0x20
  1000aa16c  mov     x19, x0
  1000aa170  adrp    x8, #0x100417000
  1000aa174  nop
  1000aa178  ldr     x21, [x8, #0xc50]
  1000aa17c  mov     x1, x21
  1000aa180  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa184  mov     x29, x29
  1000aa188  bl      _objc_retainAutoreleasedReturnValue
  1000aa18c  mov     x20, x0
  1000aa190  adrp    x8, #0x10041a000
  1000aa194  nop
  1000aa198  ldr     x1, [x8, #0x480]
  1000aa19c  bl      _objc_msgSend                            ; [[self currentWeapon] explosive]
  1000aa1a0  mov     x22, x0
  1000aa1a4  mov     x0, x20
  1000aa1a8  bl      _objc_release
  1000aa1ac  cbz     w22, loc_1000aa1d0                       ; if ([[self currentWeapon] explosive] == 0)
  1000aa1b0  adrp    x8, #0x10041a000
  1000aa1b4  nop
  1000aa1b8  ldr     x1, [x8, #0x488]
  1000aa1bc  mov     x0, x19
  1000aa1c0  ldp     x29, x30, [sp, #0x20]
  1000aa1c4  ldp     x20, x19, [sp, #0x10]
  1000aa1c8  ldp     x22, x21, [sp], #0x30
  1000aa1cc  b       _objc_msgSend                            ; [self createProjectileForCurrentWeapon]
loc_1000aa1d0:
  1000aa1d0  adrp    x8, #0x10041e000
  1000aa1d4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000aa1d8  adrp    x8, #0x100417000
  1000aa1dc  nop
  1000aa1e0  ldr     x1, [x8, #0xaa8]
  1000aa1e4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000aa1e8  mov     x29, x29
  1000aa1ec  bl      _objc_retainAutoreleasedReturnValue
  1000aa1f0  mov     x20, x0
  1000aa1f4  mov     x0, x19
  1000aa1f8  mov     x1, x21
  1000aa1fc  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa200  mov     x29, x29
  1000aa204  bl      _objc_retainAutoreleasedReturnValue
  1000aa208  mov     x21, x0
  1000aa20c  adrp    x8, #0x10041a000
  1000aa210  nop
  1000aa214  ldr     x1, [x8, #0x490]
  1000aa218  mov     x0, x20
  1000aa21c  mov     x2, x21
  1000aa220  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] shotWithWeapon:[self currentWeapon]]
  1000aa224  mov     x0, x21
  1000aa228  bl      _objc_release
  1000aa22c  mov     x0, x20
  1000aa230  ldp     x29, x30, [sp, #0x20]
  1000aa234  ldp     x20, x19, [sp, #0x10]
  1000aa238  ldp     x22, x21, [sp], #0x30
  1000aa23c  b       _objc_release
  1000aa240  mov     x19, x0
  1000aa244  b       loc_1000aa25c
  1000aa248  mov     x19, x0
  1000aa24c  b       loc_1000aa25c
  1000aa250  mov     x19, x0
  1000aa254  mov     x0, x21
  1000aa258  bl      _objc_release
loc_1000aa25c:
  1000aa25c  mov     x0, x20
  1000aa260  bl      _objc_release
  1000aa264  mov     x0, x19
  1000aa268  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager continuousStart]
; address 0x1000aa26c  size 132  kind objc
; ======================================================================
  1000aa26c  stp     x20, x19, [sp, #-0x20]!
  1000aa270  stp     x29, x30, [sp, #0x10]
  1000aa274  add     x29, sp, #0x10
  1000aa278  mov     x19, x0
  1000aa27c  adrp    x8, #0x10041a000
  1000aa280  nop
  1000aa284  ldr     x1, [x8, #0x460]
  1000aa288  bl      _objc_msgSend                            ; [self isWeaponReadyToShoot]
  1000aa28c  cbz     w0, loc_1000aa2d0                        ; if ([self isWeaponReadyToShoot] == 0)
  1000aa290  adrp    x8, #0x100417000
  1000aa294  nop
  1000aa298  ldr     x1, [x8, #0xc50]
  1000aa29c  mov     x0, x19
  1000aa2a0  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa2a4  mov     x29, x29
  1000aa2a8  bl      _objc_retainAutoreleasedReturnValue
  1000aa2ac  mov     x19, x0
  1000aa2b0  adrp    x8, #0x100417000
  1000aa2b4  nop
  1000aa2b8  ldr     x1, [x8, #0xc48]
  1000aa2bc  bl      _objc_msgSend                            ; [[self currentWeapon] continuousStart]
  1000aa2c0  mov     x0, x19
  1000aa2c4  ldp     x29, x30, [sp, #0x10]
  1000aa2c8  ldp     x20, x19, [sp], #0x20
  1000aa2cc  b       _objc_release
loc_1000aa2d0:
  1000aa2d0  ldp     x29, x30, [sp, #0x10]
  1000aa2d4  ldp     x20, x19, [sp], #0x20
  1000aa2d8  ret
  1000aa2dc  mov     x20, x0
  1000aa2e0  mov     x0, x19
  1000aa2e4  bl      _objc_release
  1000aa2e8  mov     x0, x20
  1000aa2ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager continuousStop]
; address 0x1000aa2f0  size 92  kind objc
; ======================================================================
  1000aa2f0  stp     x20, x19, [sp, #-0x20]!
  1000aa2f4  stp     x29, x30, [sp, #0x10]
  1000aa2f8  add     x29, sp, #0x10
  1000aa2fc  adrp    x8, #0x100417000
  1000aa300  nop
  1000aa304  ldr     x1, [x8, #0xc50]
  1000aa308  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa30c  mov     x29, x29
  1000aa310  bl      _objc_retainAutoreleasedReturnValue
  1000aa314  mov     x19, x0
  1000aa318  adrp    x8, #0x100417000
  1000aa31c  nop
  1000aa320  ldr     x1, [x8, #0xc70]
  1000aa324  bl      _objc_msgSend                            ; [[self currentWeapon] continuousStop]
  1000aa328  mov     x0, x19
  1000aa32c  ldp     x29, x30, [sp, #0x10]
  1000aa330  ldp     x20, x19, [sp], #0x20
  1000aa334  b       _objc_release
  1000aa338  mov     x20, x0
  1000aa33c  mov     x0, x19
  1000aa340  bl      _objc_release
  1000aa344  mov     x0, x20
  1000aa348  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager weaponDidFinishReloading]
; address 0x1000aa34c  size 4  kind objc
; ======================================================================
  1000aa34c  ret

; ======================================================================
; -[ADWeaponManager isWeaponReadyToShoot]
; address 0x1000aa350  size 156  kind objc
; ======================================================================
  1000aa350  stp     x20, x19, [sp, #-0x20]!
  1000aa354  stp     x29, x30, [sp, #0x10]
  1000aa358  add     x29, sp, #0x10
  1000aa35c  mov     x19, x0
  1000aa360  adrp    x8, #0x100420000
  1000aa364  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000aa368  ldr     x0, [x19, x8]                            ; x0 = self->meleeWeapon
  1000aa36c  adrp    x8, #0x100416000
  1000aa370  nop
  1000aa374  ldr     x1, [x8, #0xc60]
  1000aa378  bl      _objc_msgSend                            ; [self->meleeWeapon state]
  1000aa37c  cmp     w0, #2
  1000aa380  b.ne    loc_1000aa38c                            ; if ([self->meleeWeapon state] != 2)
  1000aa384  mov     w20, #0
  1000aa388  b       loc_1000aa3c8
loc_1000aa38c:
  1000aa38c  adrp    x8, #0x100417000
  1000aa390  nop
  1000aa394  ldr     x1, [x8, #0xc50]
  1000aa398  mov     x0, x19
  1000aa39c  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa3a0  mov     x29, x29
  1000aa3a4  bl      _objc_retainAutoreleasedReturnValue
  1000aa3a8  mov     x19, x0
  1000aa3ac  adrp    x8, #0x100417000
  1000aa3b0  nop
  1000aa3b4  ldr     x1, [x8, #0x5a0]
  1000aa3b8  bl      _objc_msgSend                            ; [[self currentWeapon] readyToShoot]
  1000aa3bc  mov     x20, x0
  1000aa3c0  mov     x0, x19
  1000aa3c4  bl      _objc_release
loc_1000aa3c8:
  1000aa3c8  mov     x0, x20
  1000aa3cc  ldp     x29, x30, [sp, #0x10]
  1000aa3d0  ldp     x20, x19, [sp], #0x20
  1000aa3d4  ret
  1000aa3d8  mov     x20, x0
  1000aa3dc  mov     x0, x19
  1000aa3e0  bl      _objc_release
  1000aa3e4  mov     x0, x20
  1000aa3e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager createProjectileForCurrentWeapon]
; address 0x1000aa3ec  size 1692  kind objc
; ======================================================================
  1000aa3ec  stp     d13, d12, [sp, #-0x90]!
  1000aa3f0  stp     d11, d10, [sp, #0x10]
  1000aa3f4  stp     d9, d8, [sp, #0x20]
  1000aa3f8  stp     x28, x27, [sp, #0x30]
  1000aa3fc  stp     x26, x25, [sp, #0x40]
  1000aa400  stp     x24, x23, [sp, #0x50]
  1000aa404  stp     x22, x21, [sp, #0x60]
  1000aa408  stp     x20, x19, [sp, #0x70]
  1000aa40c  stp     x29, x30, [sp, #0x80]
  1000aa410  add     x29, sp, #0x80
  1000aa414  mov     x20, x0
  1000aa418  adrp    x8, #0x10041e000
  1000aa41c  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000aa420  adrp    x8, #0x100417000
  1000aa424  nop
  1000aa428  ldr     x1, [x8, #0xaa8]
  1000aa42c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000aa430  mov     x29, x29
  1000aa434  bl      _objc_retainAutoreleasedReturnValue
  1000aa438  mov     x22, x0
  1000aa43c  adrp    x8, #0x100417000
  1000aa440  nop
  1000aa444  ldr     x21, [x8, #0xc50]
  1000aa448  mov     x0, x20
  1000aa44c  mov     x1, x21
  1000aa450  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa454  mov     x29, x29
  1000aa458  bl      _objc_retainAutoreleasedReturnValue
  1000aa45c  mov     x23, x0
  1000aa460  adrp    x8, #0x10041a000
  1000aa464  nop
  1000aa468  ldr     x1, [x8, #0x498]
  1000aa46c  mov     x0, x22
  1000aa470  mov     x2, x23
  1000aa474  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]]
  1000aa478  mov     x29, x29
  1000aa47c  bl      _objc_retainAutoreleasedReturnValue
  1000aa480  mov     x19, x0
  1000aa484  mov     x0, x23
  1000aa488  bl      _objc_release
  1000aa48c  mov     x0, x22
  1000aa490  bl      _objc_release
  1000aa494  adrp    x25, #0x10041d000
  1000aa498  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000aa49c  adrp    x8, #0x100417000
  1000aa4a0  nop
  1000aa4a4  ldr     x23, [x8, #0x4f0]
  1000aa4a8  mov     x1, x23
  1000aa4ac  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000aa4b0  mov     x29, x29
  1000aa4b4  bl      _objc_retainAutoreleasedReturnValue
  1000aa4b8  mov     x22, x0
  1000aa4bc  adrp    x8, #0x100419000
  1000aa4c0  nop
  1000aa4c4  ldr     x24, [x8, #0x98]
  1000aa4c8  mov     x1, x24
  1000aa4cc  bl      _objc_msgSend                            ; [[S3DEngine engine] headOrientation]
  1000aa4d0  fcvt    d0, s0
  1000aa4d4  bl      _cos                                     ; cos([[S3DEngine engine] headOrientation])
  1000aa4d8  mov     v8.16b, v0.16b
  1000aa4dc  ldr     x0, [x25, #0xff8]                        ; class S3DEngine
  1000aa4e0  mov     x1, x23
  1000aa4e4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000aa4e8  mov     x29, x29
  1000aa4ec  bl      _objc_retainAutoreleasedReturnValue
  1000aa4f0  mov     x23, x0
  1000aa4f4  mov     x1, x24
  1000aa4f8  bl      _objc_msgSend                            ; [[S3DEngine engine] headOrientation]
  1000aa4fc  fcvt    d0, s0
  1000aa500  bl      _sin                                     ; sin([[S3DEngine engine] headOrientation])
  1000aa504  mov     v9.16b, v0.16b
  1000aa508  mov     x0, x23
  1000aa50c  bl      _objc_release
  1000aa510  mov     x0, x22
  1000aa514  bl      _objc_release
  1000aa518  mov     x23, #0
  1000aa51c  mov     x0, x20
  1000aa520  mov     x1, x21
  1000aa524  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa528  mov     x29, x29
  1000aa52c  bl      _objc_retainAutoreleasedReturnValue
  1000aa530  mov     x23, x0
  1000aa534  adrp    x8, #0x10041a000
  1000aa538  nop
  1000aa53c  ldr     x22, [x8, #0x4a0]
  1000aa540  mov     x1, x22
  1000aa544  bl      _objc_msgSend                            ; [[self currentWeapon] timeBeforeExplode]
  1000aa548  mov     v10.16b, v0.16b
  1000aa54c  mov     x0, x23
  1000aa550  bl      _objc_release
  1000aa554  cbz     x19, loc_1000aa770                       ; if ([[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] == 0)
  1000aa558  adrp    x8, #0x100417000
  1000aa55c  nop
  1000aa560  ldr     x24, [x8, #0x30]
  1000aa564  mov     x23, #0
  1000aa568  mov     x0, x19
  1000aa56c  mov     x1, x24
  1000aa570  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] squaredDistance]
  1000aa574  mov     x23, #0
  1000aa578  mov     x0, x19
  1000aa57c  mov     x1, x24
  1000aa580  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] squaredDistance]
  1000aa584  mov     v11.16b, v0.16b
  1000aa588  adrp    x8, #0x100419000
  1000aa58c  nop
  1000aa590  ldr     x25, [x8, #0x388]
  1000aa594  mov     x23, #0
  1000aa598  mov     x0, x19
  1000aa59c  mov     x1, x25
  1000aa5a0  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] nextShotWillBeCritical]
  1000aa5a4  fsqrt   s13, s11                                 ; t1 = sqrt([[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] squaredDistance])
  1000aa5a8  tbnz    w0, #0, loc_1000aa5cc                    ; if (([[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] nextShotWillBeCritical] & 1))
  1000aa5ac  adrp    x8, #0x100417000
  1000aa5b0  nop
  1000aa5b4  ldr     x1, [x8, #0x18]
  1000aa5b8  mov     x23, #0
  1000aa5bc  mov     x0, x19
  1000aa5c0  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] speed]
  1000aa5c4  fmul    s0, s10, s0                              ; t2 = ([[self currentWeapon] timeBeforeExplode] * [[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] speed])
  1000aa5c8  fsub    s13, s13, s0
loc_1000aa5cc:
  1000aa5cc  adrp    x8, #0x100417000
  1000aa5d0  nop
  1000aa5d4  ldr     x1, [x8, #0x18]
  1000aa5d8  mov     x23, #0
  1000aa5dc  mov     x0, x19
  1000aa5e0  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] speed]
  1000aa5e4  mov     v11.16b, v0.16b
  1000aa5e8  mov     x23, #0
  1000aa5ec  mov     x0, x20
  1000aa5f0  mov     x1, x21
  1000aa5f4  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa5f8  mov     x29, x29
  1000aa5fc  bl      _objc_retainAutoreleasedReturnValue
  1000aa600  mov     x23, x0
  1000aa604  adrp    x8, #0x10041a000
  1000aa608  nop
  1000aa60c  ldr     x24, [x8, #0x4a8]
  1000aa610  mov     x1, x24
  1000aa614  bl      _objc_msgSend                            ; [[self currentWeapon] projectileSpeed]
  1000aa618  mov     v12.16b, v0.16b
  1000aa61c  mov     x0, x23
  1000aa620  bl      _objc_release
  1000aa624  mov     x23, #0
  1000aa628  mov     x0, x20
  1000aa62c  mov     x1, x21
  1000aa630  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa634  mov     x29, x29
  1000aa638  bl      _objc_retainAutoreleasedReturnValue
  1000aa63c  mov     x23, x0
  1000aa640  mov     x1, x24
  1000aa644  bl      _objc_msgSend                            ; [[self currentWeapon] projectileSpeed]
  1000aa648  mov     v10.16b, v0.16b
  1000aa64c  mov     x0, x23
  1000aa650  bl      _objc_release
  1000aa654  mov     x23, #0
  1000aa658  mov     x0, x19
  1000aa65c  mov     x1, x25
  1000aa660  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] nextShotWillBeCritical]
  1000aa664  fadd    s0, s11, s12                             ; t3 = ([[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] speed] + [[self currentWeapon] projectileSpeed])
  1000aa668  fdiv    s13, s13, s0
  1000aa66c  mov     v11.16b, v13.16b
  1000aa670  tbnz    w0, #0, loc_1000aa6a4                    ; if (([[[ADBrickManager sharedBrickManager] targetEnemiForExplosiveWeapon:[self currentWeapon]] nextShotWillBeCritical] & 1))
  1000aa674  mov     x23, #0
  1000aa678  mov     x0, x20
  1000aa67c  mov     x1, x21
  1000aa680  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa684  mov     x29, x29
  1000aa688  bl      _objc_retainAutoreleasedReturnValue
  1000aa68c  mov     x23, x0
  1000aa690  mov     x1, x22
  1000aa694  bl      _objc_msgSend                            ; [[self currentWeapon] timeBeforeExplode]
  1000aa698  fadd    s11, s13, s0
  1000aa69c  mov     x0, x23
  1000aa6a0  bl      _objc_release
loc_1000aa6a4:
  1000aa6a4  adrp    x8, #0x10041e000
  1000aa6a8  ldr     x0, [x8, #0x3f0]                         ; class ADProjectile
  1000aa6ac  adrp    x8, #0x100416000
  1000aa6b0  nop
  1000aa6b4  ldr     x1, [x8, #0xac8]
  1000aa6b8  mov     x23, #0
  1000aa6bc  bl      _objc_msgSend                            ; [ADProjectile alloc]
  1000aa6c0  mov     x25, x0
  1000aa6c4  mov     x23, #0
  1000aa6c8  mov     x0, x20
  1000aa6cc  mov     x1, x21
  1000aa6d0  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa6d4  mov     x29, x29
  1000aa6d8  bl      _objc_retainAutoreleasedReturnValue
  1000aa6dc  mov     x22, x0
  1000aa6e0  mov     x1, x24
  1000aa6e4  bl      _objc_msgSend                            ; [[self currentWeapon] projectileSpeed]
  1000aa6e8  mov     v12.16b, v0.16b
  1000aa6ec  mov     x0, x20
  1000aa6f0  mov     x1, x21
  1000aa6f4  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa6f8  mov     x29, x29
  1000aa6fc  bl      _objc_retainAutoreleasedReturnValue
  1000aa700  mov     x24, x0
  1000aa704  adrp    x8, #0x100417000
  1000aa708  nop
  1000aa70c  ldr     x1, [x8, #0x450]
  1000aa710  bl      _objc_msgSend                            ; [[self currentWeapon] name]
  1000aa714  fmul    s0, s13, s10
  1000aa718  fmul    s10, s0, s0                              ; t4 = (((s13 / t3) * [[self currentWeapon] projectileSpeed]) * ((s13 / t3) * [[self currentWeapon] projectileSpeed]))
  1000aa71c  mov     x29, x29
  1000aa720  bl      _objc_retainAutoreleasedReturnValue
  1000aa724  mov     x26, x0
  1000aa728  adrp    x8, #0x10041a000
  1000aa72c  nop
  1000aa730  ldr     x1, [x8, #0x4b0]
  1000aa734  mov     x0, x25
  1000aa738  mov     v0.16b, v12.16b
  1000aa73c  mov     v1.16b, v10.16b
  1000aa740  mov     v2.16b, v11.16b
  1000aa744  mov     x2, x26
  1000aa748  mov     v3.16b, v8.16b
  1000aa74c  mov     v4.16b, v9.16b
  1000aa750  bl      _objc_msgSend                            ; [[ADProjectile alloc] initWithSpeed:[[self currentWeapon] projectileSpeed] squaredDistanceToCover:t4 timeToLive:d2 soundsPrefix:[[self currentWeapon] name] orientation:{cos([[S3DEngine engine] headOrientation]), sin([[S3DEngine engine] headOrientation])}]
  1000aa754  mov     x23, x0
  1000aa758  mov     x0, x26
  1000aa75c  bl      _objc_release
  1000aa760  mov     x0, x24
  1000aa764  bl      _objc_release
  1000aa768  mov     x0, x22
  1000aa76c  b       loc_1000aa8d0
loc_1000aa770:
  1000aa770  adrp    x8, #0x10041e000
  1000aa774  ldr     x0, [x8, #0x3f0]                         ; class ADProjectile
  1000aa778  adrp    x8, #0x100416000
  1000aa77c  nop
  1000aa780  ldr     x1, [x8, #0xac8]
  1000aa784  mov     x23, #0
  1000aa788  bl      _objc_msgSend                            ; [ADProjectile alloc]
  1000aa78c  mov     x26, x0
  1000aa790  mov     x23, #0
  1000aa794  mov     x0, x20
  1000aa798  mov     x1, x21
  1000aa79c  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa7a0  mov     x29, x29
  1000aa7a4  bl      _objc_retainAutoreleasedReturnValue
  1000aa7a8  mov     x24, x0
  1000aa7ac  adrp    x8, #0x10041a000
  1000aa7b0  nop
  1000aa7b4  ldr     x1, [x8, #0x4a8]
  1000aa7b8  bl      _objc_msgSend                            ; [[self currentWeapon] projectileSpeed]
  1000aa7bc  mov     v10.16b, v0.16b
  1000aa7c0  mov     x0, x20
  1000aa7c4  mov     x1, x21
  1000aa7c8  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa7cc  mov     x29, x29
  1000aa7d0  bl      _objc_retainAutoreleasedReturnValue
  1000aa7d4  mov     x25, x0
  1000aa7d8  adrp    x8, #0x100419000
  1000aa7dc  nop
  1000aa7e0  ldr     x23, [x8, #0x380]
  1000aa7e4  mov     x1, x23
  1000aa7e8  bl      _objc_msgSend                            ; [[self currentWeapon] range]
  1000aa7ec  mov     v11.16b, v0.16b
  1000aa7f0  mov     x0, x20
  1000aa7f4  mov     x1, x21
  1000aa7f8  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa7fc  mov     x29, x29
  1000aa800  bl      _objc_retainAutoreleasedReturnValue
  1000aa804  mov     x27, x0
  1000aa808  mov     x1, x23
  1000aa80c  bl      _objc_msgSend                            ; [[self currentWeapon] range]
  1000aa810  mov     v12.16b, v0.16b
  1000aa814  mov     x0, x20
  1000aa818  mov     x1, x21
  1000aa81c  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa820  mov     x23, x26
  1000aa824  mov     x29, x29
  1000aa828  bl      _objc_retainAutoreleasedReturnValue
  1000aa82c  mov     x28, x0
  1000aa830  mov     x1, x22
  1000aa834  bl      _objc_msgSend                            ; [[self currentWeapon] timeBeforeExplode]
  1000aa838  mov     v13.16b, v0.16b
  1000aa83c  mov     x0, x20
  1000aa840  mov     x1, x21
  1000aa844  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa848  mov     x29, x29
  1000aa84c  bl      _objc_retainAutoreleasedReturnValue
  1000aa850  mov     x22, x0
  1000aa854  adrp    x8, #0x100417000
  1000aa858  nop
  1000aa85c  ldr     x1, [x8, #0x450]
  1000aa860  bl      _objc_msgSend                            ; [[self currentWeapon] name]
  1000aa864  fmul    s11, s11, s12
  1000aa868  mov     x29, x29
  1000aa86c  bl      _objc_retainAutoreleasedReturnValue
  1000aa870  mov     x26, x0
  1000aa874  adrp    x8, #0x10041a000
  1000aa878  nop
  1000aa87c  ldr     x1, [x8, #0x4b0]
  1000aa880  mov     x0, x23
  1000aa884  mov     v0.16b, v10.16b
  1000aa888  mov     v1.16b, v11.16b
  1000aa88c  mov     v2.16b, v13.16b
  1000aa890  mov     x2, x26
  1000aa894  mov     v3.16b, v8.16b
  1000aa898  mov     v4.16b, v9.16b
  1000aa89c  bl      _objc_msgSend                            ; [[ADProjectile alloc] initWithSpeed:[[self currentWeapon] projectileSpeed] squaredDistanceToCover:([[self currentWeapon] range] * [[self currentWeapon] range]) timeToLive:[[self currentWeapon] timeBeforeExplode] soundsPrefix:[[self currentWeapon] name] orientation:{cos([[S3DEngine engine] headOrientation]), sin([[S3DEngine engine] headOrientation])}]
  1000aa8a0  mov     x23, x0
  1000aa8a4  mov     x0, x26
  1000aa8a8  bl      _objc_release
  1000aa8ac  mov     x0, x22
  1000aa8b0  bl      _objc_release
  1000aa8b4  mov     x0, x28
  1000aa8b8  bl      _objc_release
  1000aa8bc  mov     x0, x27
  1000aa8c0  bl      _objc_release
  1000aa8c4  mov     x0, x25
  1000aa8c8  bl      _objc_release
  1000aa8cc  mov     x0, x24
loc_1000aa8d0:
  1000aa8d0  bl      _objc_release
  1000aa8d4  mov     x0, x20
  1000aa8d8  mov     x1, x21
  1000aa8dc  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aa8e0  mov     x29, x29
  1000aa8e4  bl      _objc_retainAutoreleasedReturnValue
  1000aa8e8  mov     x21, x0
  1000aa8ec  adrp    x8, #0x100418000
  1000aa8f0  nop
  1000aa8f4  ldr     x1, [x8, #0x8e8]
  1000aa8f8  mov     x0, x23
  1000aa8fc  mov     x2, x21
  1000aa900  bl      _objc_msgSend                            ; [x0 setWeapon:[self currentWeapon]]
  1000aa904  mov     x0, x21
  1000aa908  bl      _objc_release
  1000aa90c  adrp    x8, #0x100420000
  1000aa910  ldrsw   x21, [x8, #0x108]                        ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000aa914  ldr     x0, [x20, x21]                           ; x0 = self->projectileArray
  1000aa918  adrp    x8, #0x100416000
  1000aa91c  nop
  1000aa920  ldr     x1, [x8, #0xd90]
  1000aa924  mov     x2, x23
  1000aa928  bl      _objc_msgSend                            ; [self->projectileArray addObject:x2]
  1000aa92c  ldr     x0, [x20, x21]                           ; x0 = self->projectileArray
  1000aa930  adrp    x8, #0x100416000
  1000aa934  nop
  1000aa938  ldr     x1, [x8, #0xe30]
  1000aa93c  bl      _objc_msgSend                            ; [self->projectileArray count]
  1000aa940  mov     x2, x0
  1000aa944  adrp    x8, #0x100417000
  1000aa948  nop
  1000aa94c  ldr     x1, [x8, #0x670]
  1000aa950  mov     x0, x23
  1000aa954  bl      _objc_msgSend                            ; [x0 setTag:[self->projectileArray count]]
  1000aa958  mov     x0, x23
  1000aa95c  bl      _objc_release
  1000aa960  mov     x0, x19
  1000aa964  ldp     x29, x30, [sp, #0x80]
  1000aa968  ldp     x20, x19, [sp, #0x70]
  1000aa96c  ldp     x22, x21, [sp, #0x60]
  1000aa970  ldp     x24, x23, [sp, #0x50]
  1000aa974  ldp     x26, x25, [sp, #0x40]
  1000aa978  ldp     x28, x27, [sp, #0x30]
  1000aa97c  ldp     d9, d8, [sp, #0x20]
  1000aa980  ldp     d11, d10, [sp, #0x10]
  1000aa984  ldp     d13, d12, [sp], #0x90
  1000aa988  b       _objc_release
loc_1000aa98c:
  1000aa98c  mov     x20, x0
loc_1000aa990:
  1000aa990  mov     x0, x23
  1000aa994  b       loc_1000aaa70
  1000aa998  mov     x20, x0
  1000aa99c  b       loc_1000aaa30
  1000aa9a0  mov     x20, x0
  1000aa9a4  b       loc_1000aaa30
  1000aa9a8  mov     x20, x0
  1000aa9ac  b       loc_1000aa9bc
  1000aa9b0  mov     x20, x0
  1000aa9b4  mov     x0, x23
  1000aa9b8  bl      _objc_release
loc_1000aa9bc:
  1000aa9bc  mov     x0, x22
  1000aa9c0  b       loc_1000aaa78
  1000aa9c4  mov     x20, x0
  1000aa9c8  b       loc_1000aaa74
  1000aa9cc  mov     x20, x0
  1000aa9d0  mov     x0, x23
  1000aa9d4  b       loc_1000aaa2c
  1000aa9d8  b       loc_1000aa98c
  1000aa9dc  mov     x20, x0
  1000aa9e0  mov     x0, x21
  1000aa9e4  bl      _objc_release
  1000aa9e8  b       loc_1000aa990
  1000aa9ec  mov     x20, x0
  1000aa9f0  b       loc_1000aaa6c
  1000aa9f4  mov     x20, x0
  1000aa9f8  b       loc_1000aaa64
  1000aa9fc  mov     x20, x0
  1000aaa00  b       loc_1000aaa5c
  1000aaa04  mov     x20, x0
  1000aaa08  b       loc_1000aaa54
  1000aaa0c  b       loc_1000aa98c
  1000aaa10  b       loc_1000aa98c
  1000aaa14  mov     x20, x0
  1000aaa18  b       loc_1000aaa28
  1000aaa1c  mov     x20, x0
  1000aaa20  mov     x0, x26
  1000aaa24  bl      _objc_release
loc_1000aaa28:
  1000aaa28  mov     x0, x24
loc_1000aaa2c:
  1000aaa2c  bl      _objc_release
loc_1000aaa30:
  1000aaa30  mov     x0, x22
  1000aaa34  b       loc_1000aaa70
  1000aaa38  mov     x20, x0
  1000aaa3c  b       loc_1000aaa4c
  1000aaa40  mov     x20, x0
  1000aaa44  mov     x0, x26
  1000aaa48  bl      _objc_release
loc_1000aaa4c:
  1000aaa4c  mov     x0, x22
  1000aaa50  bl      _objc_release
loc_1000aaa54:
  1000aaa54  mov     x0, x28
  1000aaa58  bl      _objc_release
loc_1000aaa5c:
  1000aaa5c  mov     x0, x27
  1000aaa60  bl      _objc_release
loc_1000aaa64:
  1000aaa64  mov     x0, x25
  1000aaa68  bl      _objc_release
loc_1000aaa6c:
  1000aaa6c  mov     x0, x24
loc_1000aaa70:
  1000aaa70  bl      _objc_release
loc_1000aaa74:
  1000aaa74  mov     x0, x19
loc_1000aaa78:
  1000aaa78  bl      _objc_release
  1000aaa7c  mov     x0, x20
  1000aaa80  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000aaa84  b       loc_1000aa98c

; ======================================================================
; -[ADWeaponManager projectiles]
; address 0x1000aaa88  size 16  kind objc
; ======================================================================
  1000aaa88  adrp    x8, #0x100420000
  1000aaa8c  ldrsw   x8, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000aaa90  ldr     x0, [x0, x8]                             ; x0 = self->projectileArray
  1000aaa94  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[ADWeaponManager shootWithMelee]
; address 0x1000aaa98  size 340  kind objc
; ======================================================================
  1000aaa98  stp     x24, x23, [sp, #-0x40]!
  1000aaa9c  stp     x22, x21, [sp, #0x10]
  1000aaaa0  stp     x20, x19, [sp, #0x20]
  1000aaaa4  stp     x29, x30, [sp, #0x30]
  1000aaaa8  add     x29, sp, #0x30
  1000aaaac  mov     x19, x0
  1000aaab0  adrp    x8, #0x100417000
  1000aaab4  nop
  1000aaab8  ldr     x20, [x8, #0xc50]
  1000aaabc  mov     x1, x20
  1000aaac0  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aaac4  mov     x29, x29
  1000aaac8  bl      _objc_retainAutoreleasedReturnValue
  1000aaacc  mov     x21, x0
  1000aaad0  adrp    x8, #0x100416000
  1000aaad4  nop
  1000aaad8  ldr     x22, [x8, #0xc60]
  1000aaadc  mov     x1, x22
  1000aaae0  bl      _objc_msgSend                            ; [[self currentWeapon] state]
  1000aaae4  cmp     w0, #6
  1000aaae8  b.ne    loc_1000aaaf8                            ; if ([[self currentWeapon] state] != 6)
  1000aaaec  mov     x0, x21
  1000aaaf0  bl      _objc_release
  1000aaaf4  b       loc_1000aab34
loc_1000aaaf8:
  1000aaaf8  mov     x0, x19
  1000aaafc  mov     x1, x20
  1000aab00  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aab04  mov     x29, x29
  1000aab08  bl      _objc_retainAutoreleasedReturnValue
  1000aab0c  mov     x23, x0
  1000aab10  mov     x1, x22
  1000aab14  bl      _objc_msgSend                            ; [[self currentWeapon] state]
  1000aab18  mov     x22, x0
  1000aab1c  mov     x0, x23
  1000aab20  bl      _objc_release
  1000aab24  mov     x0, x21
  1000aab28  bl      _objc_release
  1000aab2c  cmp     w22, #8
  1000aab30  b.ne    loc_1000aab64                            ; if ([[self currentWeapon] state] != 8)
loc_1000aab34:
  1000aab34  mov     x0, x19
  1000aab38  mov     x1, x20
  1000aab3c  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aab40  mov     x29, x29
  1000aab44  bl      _objc_retainAutoreleasedReturnValue
  1000aab48  mov     x20, x0
  1000aab4c  adrp    x8, #0x10041a000
  1000aab50  nop
  1000aab54  ldr     x1, [x8, #0x468]
  1000aab58  bl      _objc_msgSend                            ; [[self currentWeapon] interruptReload]
  1000aab5c  mov     x0, x20
  1000aab60  bl      _objc_release
loc_1000aab64:
  1000aab64  adrp    x8, #0x10041a000
  1000aab68  nop
  1000aab6c  ldr     x1, [x8, #0x460]
  1000aab70  mov     x0, x19
  1000aab74  bl      _objc_msgSend                            ; [self isWeaponReadyToShoot]
  1000aab78  cbz     w0, loc_1000aaba8                        ; if ([self isWeaponReadyToShoot] == 0)
  1000aab7c  adrp    x8, #0x100420000
  1000aab80  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000aab84  ldr     x0, [x19, x8]                            ; x0 = self->meleeWeapon
  1000aab88  adrp    x8, #0x100417000
  1000aab8c  nop
  1000aab90  ldr     x1, [x8, #0x5b8]
  1000aab94  ldp     x29, x30, [sp, #0x30]
  1000aab98  ldp     x20, x19, [sp, #0x20]
  1000aab9c  ldp     x22, x21, [sp, #0x10]
  1000aaba0  ldp     x24, x23, [sp], #0x40
  1000aaba4  b       _objc_msgSend                            ; [self->meleeWeapon singleShot]
loc_1000aaba8:
  1000aaba8  ldp     x29, x30, [sp, #0x30]
  1000aabac  ldp     x20, x19, [sp, #0x20]
  1000aabb0  ldp     x22, x21, [sp, #0x10]
  1000aabb4  ldp     x24, x23, [sp], #0x40
  1000aabb8  ret
  1000aabbc  mov     x19, x0
  1000aabc0  b       loc_1000aabdc
  1000aabc4  mov     x19, x0
  1000aabc8  mov     x0, x20
  1000aabcc  b       loc_1000aabe0
  1000aabd0  mov     x19, x0
  1000aabd4  mov     x0, x23
  1000aabd8  bl      _objc_release
loc_1000aabdc:
  1000aabdc  mov     x0, x21
loc_1000aabe0:
  1000aabe0  bl      _objc_release
  1000aabe4  mov     x0, x19
  1000aabe8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager didShotWithMelee]
; address 0x1000aabec  size 116  kind objc
; ======================================================================
  1000aabec  stp     x20, x19, [sp, #-0x20]!
  1000aabf0  stp     x29, x30, [sp, #0x10]
  1000aabf4  add     x29, sp, #0x10
  1000aabf8  mov     x20, x0
  1000aabfc  adrp    x8, #0x10041e000
  1000aac00  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000aac04  adrp    x8, #0x100417000
  1000aac08  nop
  1000aac0c  ldr     x1, [x8, #0xaa8]
  1000aac10  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000aac14  mov     x29, x29
  1000aac18  bl      _objc_retainAutoreleasedReturnValue
  1000aac1c  mov     x19, x0
  1000aac20  adrp    x8, #0x100420000
  1000aac24  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000aac28  ldr     x2, [x20, x8]                            ; x2 = self->meleeWeapon
  1000aac2c  adrp    x8, #0x10041a000
  1000aac30  nop
  1000aac34  ldr     x1, [x8, #0x490]
  1000aac38  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] shotWithWeapon:self->meleeWeapon]
  1000aac3c  mov     x0, x19
  1000aac40  ldp     x29, x30, [sp, #0x10]
  1000aac44  ldp     x20, x19, [sp], #0x20
  1000aac48  b       _objc_release
  1000aac4c  mov     x20, x0
  1000aac50  mov     x0, x19
  1000aac54  bl      _objc_release
  1000aac58  mov     x0, x20
  1000aac5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager meleeWeaponName]
; address 0x1000aac60  size 28  kind objc
; ======================================================================
  1000aac60  adrp    x8, #0x100420000
  1000aac64  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000aac68  ldr     x0, [x0, x8]                             ; x0 = self->meleeWeapon
  1000aac6c  adrp    x8, #0x100417000
  1000aac70  nop
  1000aac74  ldr     x1, [x8, #0x450]
  1000aac78  b       _objc_msgSend                            ; [self->meleeWeapon name]

; ======================================================================
; -[ADWeaponManager reloadGestureDown]
; address 0x1000aac7c  size 92  kind objc
; ======================================================================
  1000aac7c  stp     x20, x19, [sp, #-0x20]!
  1000aac80  stp     x29, x30, [sp, #0x10]
  1000aac84  add     x29, sp, #0x10
  1000aac88  adrp    x8, #0x100417000
  1000aac8c  nop
  1000aac90  ldr     x1, [x8, #0xc50]
  1000aac94  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aac98  mov     x29, x29
  1000aac9c  bl      _objc_retainAutoreleasedReturnValue
  1000aaca0  mov     x19, x0
  1000aaca4  adrp    x8, #0x10041a000
  1000aaca8  nop
  1000aacac  ldr     x1, [x8, #0x4b8]
  1000aacb0  bl      _objc_msgSend                            ; [[self currentWeapon] reload]
  1000aacb4  mov     x0, x19
  1000aacb8  ldp     x29, x30, [sp, #0x10]
  1000aacbc  ldp     x20, x19, [sp], #0x20
  1000aacc0  b       _objc_release
  1000aacc4  mov     x20, x0
  1000aacc8  mov     x0, x19
  1000aaccc  bl      _objc_release
  1000aacd0  mov     x0, x20
  1000aacd4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager reloadGestureUp]
; address 0x1000aacd8  size 92  kind objc
; ======================================================================
  1000aacd8  stp     x20, x19, [sp, #-0x20]!
  1000aacdc  stp     x29, x30, [sp, #0x10]
  1000aace0  add     x29, sp, #0x10
  1000aace4  adrp    x8, #0x100417000
  1000aace8  nop
  1000aacec  ldr     x1, [x8, #0xc50]
  1000aacf0  bl      _objc_msgSend                            ; [self currentWeapon]
  1000aacf4  mov     x29, x29
  1000aacf8  bl      _objc_retainAutoreleasedReturnValue
  1000aacfc  mov     x19, x0
  1000aad00  adrp    x8, #0x10041a000
  1000aad04  nop
  1000aad08  ldr     x1, [x8, #0x4b8]
  1000aad0c  bl      _objc_msgSend                            ; [[self currentWeapon] reload]
  1000aad10  mov     x0, x19
  1000aad14  ldp     x29, x30, [sp, #0x10]
  1000aad18  ldp     x20, x19, [sp], #0x20
  1000aad1c  b       _objc_release
  1000aad20  mov     x20, x0
  1000aad24  mov     x0, x19
  1000aad28  bl      _objc_release
  1000aad2c  mov     x0, x20
  1000aad30  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager shutDown]
; address 0x1000aad34  size 28  kind objc
; ======================================================================
  1000aad34  adrp    x8, #0x100420000
  1000aad38  ldrsw   x8, [x8, #0x104]                         ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000aad3c  ldr     x0, [x0, x8]                             ; x0 = self->weaponsArray
  1000aad40  adrp    x8, #0x100417000
  1000aad44  nop
  1000aad48  ldr     x1, [x8, #0x1b8]
  1000aad4c  b       _objc_msgSend                            ; [self->weaponsArray removeAllObjects]

; ======================================================================
; -[ADWeaponManager clean]
; address 0x1000aad50  size 272  kind objc
; ======================================================================
  1000aad50  stp     x22, x21, [sp, #-0x30]!
  1000aad54  stp     x20, x19, [sp, #0x10]
  1000aad58  stp     x29, x30, [sp, #0x20]
  1000aad5c  add     x29, sp, #0x20
  1000aad60  mov     x19, x0
  1000aad64  adrp    x8, #0x10041a000
  1000aad68  nop
  1000aad6c  ldr     x1, [x8, #0x430]
  1000aad70  mov     x2, #0
  1000aad74  bl      _objc_msgSend                            ; [self setCurrentWeapon:0]
  1000aad78  adrp    x8, #0x100417000
  1000aad7c  nop
  1000aad80  ldr     x1, [x8, #0xc70]
  1000aad84  mov     x0, x19
  1000aad88  bl      _objc_msgSend                            ; [self continuousStop]
  1000aad8c  adrp    x8, #0x100420000
  1000aad90  ldrsw   x22, [x8, #0x104]                        ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000aad94  ldr     x0, [x19, x22]                           ; x0 = self->weaponsArray
  1000aad98  adrp    x8, #0x100419000
  1000aad9c  nop
  1000aada0  ldr     x21, [x8, #0x158]
  1000aada4  adrp    x8, #0x100416000
  1000aada8  nop
  1000aadac  ldr     x1, [x8, #0xe48]
  1000aadb0  mov     x2, x21
  1000aadb4  bl      _objc_msgSend                            ; [self->weaponsArray makeObjectsPerformSelector:@selector(clean)]
  1000aadb8  adrp    x8, #0x100420000
  1000aadbc  ldrsw   x8, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000aadc0  ldr     x0, [x19, x8]                            ; x0 = self->projectileArray
  1000aadc4  adrp    x8, #0x100417000
  1000aadc8  nop
  1000aadcc  ldr     x20, [x8, #0x1b8]
  1000aadd0  mov     x1, x20
  1000aadd4  bl      _objc_msgSend                            ; [self->projectileArray removeAllObjects]
  1000aadd8  ldr     x0, [x19, x22]                           ; x0 = self->weaponsArray
  1000aaddc  mov     x1, x20
  1000aade0  bl      _objc_msgSend                            ; [self->weaponsArray removeAllObjects]
  1000aade4  adrp    x8, #0x10041a000
  1000aade8  nop
  1000aadec  ldr     x1, [x8, #0x440]
  1000aadf0  mov     x0, x19
  1000aadf4  bl      _objc_msgSend                            ; [self powerUp]
  1000aadf8  mov     x29, x29
  1000aadfc  bl      _objc_retainAutoreleasedReturnValue
  1000aae00  mov     x20, x0
  1000aae04  mov     x1, x21
  1000aae08  bl      _objc_msgSend                            ; [[self powerUp] clean]
  1000aae0c  mov     x0, x20
  1000aae10  bl      _objc_release
  1000aae14  adrp    x8, #0x10041a000
  1000aae18  nop
  1000aae1c  ldr     x1, [x8, #0x450]
  1000aae20  mov     x2, #0
  1000aae24  mov     x0, x19
  1000aae28  bl      _objc_msgSend                            ; [self setPowerUp:0]
  1000aae2c  adrp    x8, #0x100420000
  1000aae30  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000aae34  ldr     x0, [x19, x8]                            ; x0 = self->meleeWeapon
  1000aae38  str     xzr, [x19, x8]                           ; self->meleeWeapon = 0
  1000aae3c  ldp     x29, x30, [sp, #0x20]
  1000aae40  ldp     x20, x19, [sp, #0x10]
  1000aae44  ldp     x22, x21, [sp], #0x30
  1000aae48  b       _objc_release
  1000aae4c  mov     x19, x0
  1000aae50  mov     x0, x20
  1000aae54  bl      _objc_release
  1000aae58  mov     x0, x19
  1000aae5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponManager currentWeapon]
; address 0x1000aae60  size 16  kind objc
; ======================================================================
  1000aae60  adrp    x8, #0x100420000
  1000aae64  ldrsw   x8, [x8, #0x118]                         ; ivar offset ADWeaponManager._currentWeapon (+0x38)
  1000aae68  ldr     x0, [x0, x8]                             ; x0 = self->_currentWeapon
  1000aae6c  ret

; ======================================================================
; -[ADWeaponManager powerUp]
; address 0x1000aae70  size 16  kind objc
; ======================================================================
  1000aae70  adrp    x8, #0x100420000
  1000aae74  ldrsw   x8, [x8, #0x11c]                         ; ivar offset ADWeaponManager._powerUp (+0x40)
  1000aae78  ldr     x0, [x0, x8]                             ; x0 = self->_powerUp
  1000aae7c  ret

; ======================================================================
; -[ADWeaponManager setPowerUp:]
; address 0x1000aae80  size 56  kind objc
; ======================================================================
  1000aae80  stp     x20, x19, [sp, #-0x20]!
  1000aae84  stp     x29, x30, [sp, #0x10]
  1000aae88  add     x29, sp, #0x10
  1000aae8c  mov     x19, x0
  1000aae90  adrp    x8, #0x100420000
  1000aae94  ldrsw   x20, [x8, #0x11c]                        ; ivar offset ADWeaponManager._powerUp (+0x40)
  1000aae98  mov     x0, x2
  1000aae9c  bl      _objc_retain
  1000aaea0  ldr     x8, [x19, x20]                           ; x8 = self->_powerUp
  1000aaea4  str     x0, [x19, x20]                           ; self->_powerUp = arg1
  1000aaea8  mov     x0, x8
  1000aaeac  ldp     x29, x30, [sp, #0x10]
  1000aaeb0  ldp     x20, x19, [sp], #0x20
  1000aaeb4  b       _objc_release

; ======================================================================
; -[ADWeaponManager .cxx_destruct]
; address 0x1000aaeb8  size 164  kind objc
; ======================================================================
  1000aaeb8  stp     x20, x19, [sp, #-0x20]!
  1000aaebc  stp     x29, x30, [sp, #0x10]
  1000aaec0  add     x29, sp, #0x10
  1000aaec4  mov     x19, x0
  1000aaec8  adrp    x8, #0x100420000
  1000aaecc  ldrsw   x8, [x8, #0x11c]                         ; ivar offset ADWeaponManager._powerUp (+0x40)
  1000aaed0  add     x0, x19, x8
  1000aaed4  mov     x1, #0
  1000aaed8  bl      _objc_storeStrong
  1000aaedc  adrp    x8, #0x100420000
  1000aaee0  ldrsw   x8, [x8, #0x118]                         ; ivar offset ADWeaponManager._currentWeapon (+0x38)
  1000aaee4  add     x0, x19, x8
  1000aaee8  mov     x1, #0
  1000aaeec  bl      _objc_storeStrong
  1000aaef0  adrp    x8, #0x100420000
  1000aaef4  ldrsw   x8, [x8, #0x10c]                         ; ivar offset ADWeaponManager.meleeWeapon (+0x28)
  1000aaef8  add     x0, x19, x8
  1000aaefc  mov     x1, #0
  1000aaf00  bl      _objc_storeStrong
  1000aaf04  adrp    x8, #0x100420000
  1000aaf08  ldrsw   x8, [x8, #0x108]                         ; ivar offset ADWeaponManager.projectileArray (+0x20)
  1000aaf0c  add     x0, x19, x8
  1000aaf10  mov     x1, #0
  1000aaf14  bl      _objc_storeStrong
  1000aaf18  adrp    x8, #0x100420000
  1000aaf1c  ldrsw   x8, [x8, #0x104]                         ; ivar offset ADWeaponManager.weaponsArray (+0x18)
  1000aaf20  add     x0, x19, x8
  1000aaf24  mov     x1, #0
  1000aaf28  bl      _objc_storeStrong
  1000aaf2c  adrp    x8, #0x100420000
  1000aaf30  ldrsw   x8, [x8, #0x110]                         ; ivar offset ADWeaponManager.allPowerUps (+0x10)
  1000aaf34  add     x0, x19, x8
  1000aaf38  mov     x1, #0
  1000aaf3c  bl      _objc_storeStrong
  1000aaf40  mov     x1, #0
  1000aaf44  adrp    x8, #0x100420000
  1000aaf48  ldrsw   x8, [x8, #0x100]                         ; ivar offset ADWeaponManager.allWeapons (+0x8)
  1000aaf4c  add     x0, x19, x8
  1000aaf50  ldp     x29, x30, [sp, #0x10]
  1000aaf54  ldp     x20, x19, [sp], #0x20
  1000aaf58  b       _objc_storeStrong
