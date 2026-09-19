// unit ADArmoryItemDescriptionViewController — 19 functions
//   0x1000b0ec8     452  -[ADArmoryItemDescriptionViewController initWithWeaponDictionary:]
//   0x1000b108c    1056  -[ADArmoryItemDescriptionViewController viewDidLoad]
//   0x1000b14ac      92  -[ADArmoryItemDescriptionViewController handleBackActionFromStatusBar]
//   0x1000b1508     748  -[ADArmoryItemDescriptionViewController buyOrUpgradeButtonPressed:]
//   0x1000b17f4     100  -[ADArmoryItemDescriptionViewController backButtonPressed:]
//   0x1000b1858     492  -[ADArmoryItemDescriptionViewController dealloc]
//   0x1000b1a44      32  -[ADArmoryItemDescriptionViewController armoryViewController]
//   0x1000b1a64      20  -[ADArmoryItemDescriptionViewController setArmoryViewController:]
//   0x1000b1a78      16  -[ADArmoryItemDescriptionViewController weaponTitle]
//   0x1000b1a88      56  -[ADArmoryItemDescriptionViewController setWeaponTitle:]
//   0x1000b1ac0      16  -[ADArmoryItemDescriptionViewController weaponImage]
//   0x1000b1ad0      56  -[ADArmoryItemDescriptionViewController setWeaponImage:]
//   0x1000b1b08      16  -[ADArmoryItemDescriptionViewController buyOrUpgradeButton]
//   0x1000b1b18      56  -[ADArmoryItemDescriptionViewController setBuyOrUpgradeButton:]
//   0x1000b1b50      16  -[ADArmoryItemDescriptionViewController quantityLabel]
//   0x1000b1b60      56  -[ADArmoryItemDescriptionViewController setQuantityLabel:]
//   0x1000b1b98      16  -[ADArmoryItemDescriptionViewController buyButton]
//   0x1000b1ba8      56  -[ADArmoryItemDescriptionViewController setBuyButton:]
//   0x1000b1be0     240  -[ADArmoryItemDescriptionViewController .cxx_destruct]

; ======================================================================
; -[ADArmoryItemDescriptionViewController initWithWeaponDictionary:]
; address 0x1000b0ec8  size 452  kind objc
; ======================================================================
  1000b0ec8  stp     x24, x23, [sp, #-0x40]!
  1000b0ecc  stp     x22, x21, [sp, #0x10]
  1000b0ed0  stp     x20, x19, [sp, #0x20]
  1000b0ed4  stp     x29, x30, [sp, #0x30]
  1000b0ed8  add     x29, sp, #0x30
  1000b0edc  sub     sp, sp, #0x10
  1000b0ee0  mov     x20, x0
  1000b0ee4  mov     x0, x2
  1000b0ee8  bl      _objc_retain
  1000b0eec  mov     x19, x0
  1000b0ef0  str     x20, [sp]
  1000b0ef4  adrp    x8, #0x10041e000
  1000b0ef8  ldr     x8, [x8, #0xf38]
  1000b0efc  str     x8, [sp, #8]
  1000b0f00  adrp    x8, #0x100416000
  1000b0f04  nop
  1000b0f08  ldr     x1, [x8, #0xb40]
  1000b0f0c  mov     x21, #0
  1000b0f10  mov     x0, sp
  1000b0f14  mov     x2, #0
  1000b0f18  mov     x3, #0
  1000b0f1c  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000b0f20  mov     x20, x0
  1000b0f24  cbz     x20, loc_1000b1028                       ; if (self == 0)
  1000b0f28  mov     x21, x20
  1000b0f2c  adrp    x8, #0x100420000
  1000b0f30  ldrsw   x22, [x8, #0x190]                        ; ivar offset ADArmoryItemDescriptionViewController.weaponInventoryDict (+0x140)
  1000b0f34  mov     x0, x19
  1000b0f38  bl      _objc_retain
  1000b0f3c  mov     x23, x0
  1000b0f40  ldr     x0, [x20, x22]                           ; x0 = self->weaponInventoryDict
  1000b0f44  str     x23, [x20, x22]                          ; self->weaponInventoryDict = arg1
  1000b0f48  bl      _objc_release
  1000b0f4c  adrp    x8, #0x10041d000
  1000b0f50  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000b0f54  adrp    x8, #0x100417000
  1000b0f58  nop
  1000b0f5c  ldr     x1, [x8, #0xa0]
  1000b0f60  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000b0f64  mov     x29, x29
  1000b0f68  bl      _objc_retainAutoreleasedReturnValue
  1000b0f6c  mov     x22, x0
  1000b0f70  adrp    x8, #0x100417000
  1000b0f74  nop
  1000b0f78  ldr     x1, [x8, #0x40]
  1000b0f7c  adrp    x2, #0x1003b9000
  1000b0f80  add     x2, x2, #0xdb0                           ; @"name"
  1000b0f84  mov     x0, x23
  1000b0f88  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  1000b0f8c  mov     x29, x29
  1000b0f90  bl      _objc_retainAutoreleasedReturnValue
  1000b0f94  mov     x23, x0
  1000b0f98  adrp    x8, #0x100417000
  1000b0f9c  nop
  1000b0fa0  ldr     x1, [x8, #0xa48]
  1000b0fa4  mov     x0, x22
  1000b0fa8  mov     x2, x23
  1000b0fac  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[arg1 objectForKey:@"name"]]
  1000b0fb0  mov     x21, x20
  1000b0fb4  mov     x29, x29
  1000b0fb8  bl      _objc_retainAutoreleasedReturnValue
  1000b0fbc  adrp    x8, #0x100420000
  1000b0fc0  ldrsw   x9, [x8, #0x194]                         ; ivar offset ADArmoryItemDescriptionViewController.weaponStatsDict (+0x148)
  1000b0fc4  ldr     x8, [x20, x9]                            ; x8 = self->weaponStatsDict
  1000b0fc8  str     x0, [x20, x9]                            ; self->weaponStatsDict = [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:[arg1 objectForKey:@"name"]]
  1000b0fcc  mov     x0, x8
  1000b0fd0  bl      _objc_release
  1000b0fd4  mov     x0, x23
  1000b0fd8  bl      _objc_release
  1000b0fdc  mov     x0, x22
  1000b0fe0  bl      _objc_release
  1000b0fe4  adrp    x8, #0x10041d000
  1000b0fe8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000b0fec  adrp    x8, #0x100416000
  1000b0ff0  nop
  1000b0ff4  ldr     x1, [x8, #0xac8]
  1000b0ff8  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000b0ffc  mov     x21, x20
  1000b1000  adrp    x8, #0x100416000
  1000b1004  nop
  1000b1008  ldr     x1, [x8, #0xab8]
  1000b100c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000b1010  adrp    x8, #0x100420000
  1000b1014  ldrsw   x9, [x8, #0x198]                         ; ivar offset ADArmoryItemDescriptionViewController.statBars (+0x150)
  1000b1018  ldr     x8, [x20, x9]                            ; x8 = self->statBars
  1000b101c  str     x0, [x20, x9]                            ; self->statBars = [[NSMutableArray alloc] init]
  1000b1020  mov     x0, x8
  1000b1024  bl      _objc_release
loc_1000b1028:
  1000b1028  mov     x0, x19
  1000b102c  bl      _objc_release
  1000b1030  mov     x0, x20
  1000b1034  sub     sp, x29, #0x30
  1000b1038  ldp     x29, x30, [sp, #0x30]
  1000b103c  ldp     x20, x19, [sp, #0x20]
  1000b1040  ldp     x22, x21, [sp, #0x10]
  1000b1044  ldp     x24, x23, [sp], #0x40
  1000b1048  ret
  1000b104c  mov     x24, x0
  1000b1050  b       loc_1000b1074
  1000b1054  mov     x24, x0
  1000b1058  b       loc_1000b1068
  1000b105c  mov     x24, x0
  1000b1060  mov     x0, x23
  1000b1064  bl      _objc_release
loc_1000b1068:
  1000b1068  mov     x0, x22
  1000b106c  bl      _objc_release
  1000b1070  mov     x21, x20
loc_1000b1074:
  1000b1074  mov     x0, x19
  1000b1078  bl      _objc_release
  1000b107c  mov     x0, x21
  1000b1080  bl      _objc_release
  1000b1084  mov     x0, x24
  1000b1088  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryItemDescriptionViewController viewDidLoad]
; address 0x1000b108c  size 1056  kind objc
; ======================================================================
  1000b108c  stp     x28, x27, [sp, #-0x60]!
  1000b1090  stp     x26, x25, [sp, #0x10]
  1000b1094  stp     x24, x23, [sp, #0x20]
  1000b1098  stp     x22, x21, [sp, #0x30]
  1000b109c  stp     x20, x19, [sp, #0x40]
  1000b10a0  stp     x29, x30, [sp, #0x50]
  1000b10a4  add     x29, sp, #0x50
  1000b10a8  sub     sp, sp, #0x20
  1000b10ac  mov     x19, x0
  1000b10b0  str     x19, [sp, #0x10]
  1000b10b4  adrp    x8, #0x10041e000
  1000b10b8  ldr     x8, [x8, #0xf38]
  1000b10bc  str     x8, [sp, #0x18]
  1000b10c0  adrp    x8, #0x100416000
  1000b10c4  nop
  1000b10c8  ldr     x1, [x8, #0xb48]
  1000b10cc  add     x0, sp, #0x10
  1000b10d0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000b10d4  adrp    x8, #0x10041a000
  1000b10d8  nop
  1000b10dc  ldr     x23, [x8, #0x48]
  1000b10e0  mov     x0, x19
  1000b10e4  mov     x1, x23
  1000b10e8  bl      _objc_msgSend                            ; [self weaponTitle]
  1000b10ec  mov     x29, x29
  1000b10f0  bl      _objc_retainAutoreleasedReturnValue
  1000b10f4  mov     x22, x0
  1000b10f8  adrp    x8, #0x10041d000
  1000b10fc  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000b1100  adrp    x8, #0x100417000
  1000b1104  nop
  1000b1108  ldr     x1, [x8, #0xa0]
  1000b110c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000b1110  mov     x29, x29
  1000b1114  bl      _objc_retainAutoreleasedReturnValue
  1000b1118  mov     x24, x0
  1000b111c  adrp    x8, #0x100420000
  1000b1120  ldrsw   x27, [x8, #0x190]                        ; ivar offset ADArmoryItemDescriptionViewController.weaponInventoryDict (+0x140)
  1000b1124  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  1000b1128  adrp    x8, #0x100417000
  1000b112c  nop
  1000b1130  ldr     x20, [x8, #0x40]
  1000b1134  adrp    x2, #0x1003b9000
  1000b1138  add     x2, x2, #0xdb0                           ; @"name"
  1000b113c  mov     x1, x20
  1000b1140  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000b1144  mov     x29, x29
  1000b1148  bl      _objc_retainAutoreleasedReturnValue
  1000b114c  mov     x25, x0
  1000b1150  adrp    x8, #0x100417000
  1000b1154  nop
  1000b1158  ldr     x1, [x8, #0x1f0]
  1000b115c  mov     x0, x24
  1000b1160  mov     x2, x25
  1000b1164  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000b1168  mov     x29, x29
  1000b116c  bl      _objc_retainAutoreleasedReturnValue
  1000b1170  mov     x26, x0
  1000b1174  adrp    x8, #0x100416000
  1000b1178  nop
  1000b117c  ldr     x21, [x8, #0xb68]
  1000b1180  mov     x0, x22
  1000b1184  mov     x1, x21
  1000b1188  mov     x2, x26
  1000b118c  bl      _objc_msgSend                            ; [[self weaponTitle] setText:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[self->weaponInventoryDict objectForKey:@"name"]]]
  1000b1190  mov     x0, x26
  1000b1194  bl      _objc_release
  1000b1198  mov     x0, x25
  1000b119c  bl      _objc_release
  1000b11a0  mov     x0, x24
  1000b11a4  bl      _objc_release
  1000b11a8  mov     x0, x22
  1000b11ac  bl      _objc_release
  1000b11b0  mov     x0, x19
  1000b11b4  mov     x1, x23
  1000b11b8  bl      _objc_msgSend                            ; [self weaponTitle]
  1000b11bc  mov     x29, x29
  1000b11c0  bl      _objc_retainAutoreleasedReturnValue
  1000b11c4  mov     x22, x0
  1000b11c8  adrp    x8, #0x100416000
  1000b11cc  nop
  1000b11d0  ldr     x1, [x8, #0xb88]
  1000b11d4  bl      _objc_msgSend                            ; [[self weaponTitle] setupAsTitle]
  1000b11d8  mov     x0, x22
  1000b11dc  bl      _objc_release
  1000b11e0  adrp    x8, #0x10041d000
  1000b11e4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000b11e8  adrp    x8, #0x100416000
  1000b11ec  nop
  1000b11f0  ldr     x1, [x8, #0xec8]
  1000b11f4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000b11f8  mov     x29, x29
  1000b11fc  bl      _objc_retainAutoreleasedReturnValue
  1000b1200  mov     x22, x0
  1000b1204  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  1000b1208  adrp    x2, #0x1003b9000
  1000b120c  add     x2, x2, #0xdb0                           ; @"name"
  1000b1210  mov     x1, x20
  1000b1214  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000b1218  mov     x29, x29
  1000b121c  bl      _objc_retainAutoreleasedReturnValue
  1000b1220  mov     x23, x0
  1000b1224  adrp    x8, #0x100418000
  1000b1228  nop
  1000b122c  ldr     x1, [x8, #0x8a0]
  1000b1230  mov     x0, x22
  1000b1234  mov     x2, x23
  1000b1238  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] quantityForPowerUpWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000b123c  mov     x24, x0
  1000b1240  mov     x0, x23
  1000b1244  bl      _objc_release
  1000b1248  mov     x0, x22
  1000b124c  bl      _objc_release
  1000b1250  adrp    x8, #0x100418000
  1000b1254  nop
  1000b1258  ldr     x1, [x8, #0x8a8]
  1000b125c  mov     x0, x19
  1000b1260  bl      _objc_msgSend                            ; [self quantityLabel]
  1000b1264  mov     x29, x29
  1000b1268  bl      _objc_retainAutoreleasedReturnValue
  1000b126c  mov     x23, x0
  1000b1270  adrp    x25, #0x10041d000
  1000b1274  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000b1278  adrp    x8, #0x100416000
  1000b127c  nop
  1000b1280  ldr     x22, [x8, #0xee8]
  1000b1284  str     x24, [sp]
  1000b1288  adrp    x2, #0x1003bc000
  1000b128c  add     x2, x2, #0xd70                           ; @"x %i"
  1000b1290  mov     x1, x22
  1000b1294  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"x %i", [[ADInventory sharedInventory] quantityForPowerUpWithName:[self->weaponInventory…]
  1000b1298  mov     x29, x29
  1000b129c  bl      _objc_retainAutoreleasedReturnValue
  1000b12a0  mov     x24, x0
  1000b12a4  mov     x0, x23
  1000b12a8  mov     x1, x21
  1000b12ac  mov     x2, x24
  1000b12b0  bl      _objc_msgSend                            ; [[self quantityLabel] setText:[NSString stringWithFormat:@"x %i", [[ADInventory sharedInventory] quantityForPowerUpWithName:[self->weaponInventory…]]
  1000b12b4  mov     x0, x24
  1000b12b8  bl      _objc_release
  1000b12bc  mov     x0, x23
  1000b12c0  bl      _objc_release
  1000b12c4  adrp    x8, #0x100418000
  1000b12c8  nop
  1000b12cc  ldr     x1, [x8, #0x898]
  1000b12d0  mov     x0, x19
  1000b12d4  bl      _objc_msgSend                            ; [self weaponImage]
  1000b12d8  mov     x29, x29
  1000b12dc  bl      _objc_retainAutoreleasedReturnValue
  1000b12e0  mov     x21, x0
  1000b12e4  adrp    x8, #0x10041d000
  1000b12e8  ldr     x23, [x8, #0xf10]                        ; class UIImage
  1000b12ec  ldr     x24, [x25, #0xf78]                       ; class NSString
  1000b12f0  ldr     x0, [x19, x27]                           ; x0 = self->weaponInventoryDict
  1000b12f4  adrp    x2, #0x1003b9000
  1000b12f8  add     x2, x2, #0xdb0                           ; @"name"
  1000b12fc  mov     x1, x20
  1000b1300  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000b1304  mov     x29, x29
  1000b1308  bl      _objc_retainAutoreleasedReturnValue
  1000b130c  mov     x20, x0
  1000b1310  str     x20, [sp]
  1000b1314  adrp    x2, #0x1003c1000
  1000b1318  add     x2, x2, #0x1d0                           ; @"%@_armory"
  1000b131c  mov     x0, x24
  1000b1320  mov     x1, x22
  1000b1324  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_armory", [self->weaponInventoryDict objectForKey:@"name"]]
  1000b1328  mov     x29, x29
  1000b132c  bl      _objc_retainAutoreleasedReturnValue
  1000b1330  mov     x22, x0
  1000b1334  adrp    x8, #0x100416000
  1000b1338  nop
  1000b133c  ldr     x1, [x8, #0xd40]
  1000b1340  mov     x0, x23
  1000b1344  mov     x2, x22
  1000b1348  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_armory", [self->weaponInventoryDict objectForKey:@"name"]]]
  1000b134c  mov     x29, x29
  1000b1350  bl      _objc_retainAutoreleasedReturnValue
  1000b1354  mov     x23, x0
  1000b1358  adrp    x8, #0x100416000
  1000b135c  nop
  1000b1360  ldr     x1, [x8, #0xef0]
  1000b1364  mov     x0, x21
  1000b1368  mov     x2, x23
  1000b136c  bl      _objc_msgSend                            ; [[self weaponImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_armory", [self->weaponInventoryDict objectForKey:@"name"]]]]
  1000b1370  mov     x0, x23
  1000b1374  bl      _objc_release
  1000b1378  mov     x0, x22
  1000b137c  bl      _objc_release
  1000b1380  mov     x0, x20
  1000b1384  bl      _objc_release
  1000b1388  mov     x0, x21
  1000b138c  bl      _objc_release
  1000b1390  adrp    x8, #0x100419000
  1000b1394  nop
  1000b1398  ldr     x1, [x8, #0x728]
  1000b139c  mov     x0, x19
  1000b13a0  bl      _objc_msgSend                            ; [self buyOrUpgradeButton]
  1000b13a4  mov     x29, x29
  1000b13a8  bl      _objc_retainAutoreleasedReturnValue
  1000b13ac  mov     x20, x0
  1000b13b0  adrp    x8, #0x100418000
  1000b13b4  nop
  1000b13b8  ldr     x1, [x8, #0xc58]
  1000b13bc  bl      _objc_msgSend                            ; [[self buyOrUpgradeButton] centerButtonTextWithCoinsImage]
  1000b13c0  mov     x0, x20
  1000b13c4  bl      _objc_release
  1000b13c8  sub     sp, x29, #0x50
  1000b13cc  ldp     x29, x30, [sp, #0x50]
  1000b13d0  ldp     x20, x19, [sp, #0x40]
  1000b13d4  ldp     x22, x21, [sp, #0x30]
  1000b13d8  ldp     x24, x23, [sp, #0x20]
  1000b13dc  ldp     x26, x25, [sp, #0x10]
  1000b13e0  ldp     x28, x27, [sp], #0x60
  1000b13e4  ret
  1000b13e8  mov     x19, x0
  1000b13ec  b       loc_1000b1438
  1000b13f0  mov     x19, x0
  1000b13f4  b       loc_1000b1414
  1000b13f8  mov     x19, x0
  1000b13fc  b       loc_1000b140c
  1000b1400  mov     x19, x0
  1000b1404  mov     x0, x26
  1000b1408  bl      _objc_release
loc_1000b140c:
  1000b140c  mov     x0, x25
  1000b1410  bl      _objc_release
loc_1000b1414:
  1000b1414  mov     x0, x24
  1000b1418  b       loc_1000b1434
  1000b141c  mov     x19, x0
  1000b1420  b       loc_1000b1438
  1000b1424  mov     x19, x0
  1000b1428  b       loc_1000b1438
  1000b142c  mov     x19, x0
  1000b1430  mov     x0, x23
loc_1000b1434:
  1000b1434  bl      _objc_release
loc_1000b1438:
  1000b1438  mov     x0, x22
  1000b143c  b       loc_1000b14a0
  1000b1440  mov     x19, x0
  1000b1444  b       loc_1000b1454
  1000b1448  mov     x19, x0
  1000b144c  mov     x0, x24
  1000b1450  bl      _objc_release
loc_1000b1454:
  1000b1454  mov     x0, x23
  1000b1458  b       loc_1000b14a0
  1000b145c  mov     x19, x0
  1000b1460  b       loc_1000b1490
  1000b1464  mov     x19, x0
  1000b1468  b       loc_1000b1488
  1000b146c  mov     x19, x0
  1000b1470  b       loc_1000b1480
  1000b1474  mov     x19, x0
  1000b1478  mov     x0, x23
  1000b147c  bl      _objc_release
loc_1000b1480:
  1000b1480  mov     x0, x22
  1000b1484  bl      _objc_release
loc_1000b1488:
  1000b1488  mov     x0, x20
  1000b148c  bl      _objc_release
loc_1000b1490:
  1000b1490  mov     x0, x21
  1000b1494  b       loc_1000b14a0
  1000b1498  mov     x19, x0
  1000b149c  mov     x0, x20
loc_1000b14a0:
  1000b14a0  bl      _objc_release
  1000b14a4  mov     x0, x19
  1000b14a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryItemDescriptionViewController handleBackActionFromStatusBar]
; address 0x1000b14ac  size 92  kind objc
; ======================================================================
  1000b14ac  stp     x20, x19, [sp, #-0x20]!
  1000b14b0  stp     x29, x30, [sp, #0x10]
  1000b14b4  add     x29, sp, #0x10
  1000b14b8  adrp    x8, #0x100416000
  1000b14bc  nop
  1000b14c0  ldr     x1, [x8, #0xfa0]
  1000b14c4  bl      _objc_msgSend                            ; [self armoryViewController]
  1000b14c8  mov     x29, x29
  1000b14cc  bl      _objc_retainAutoreleasedReturnValue
  1000b14d0  mov     x19, x0
  1000b14d4  adrp    x8, #0x100418000
  1000b14d8  nop
  1000b14dc  ldr     x1, [x8, #0x538]
  1000b14e0  bl      _objc_msgSend                            ; [[self armoryViewController] sendDetailViewToBack]
  1000b14e4  mov     x0, x19
  1000b14e8  ldp     x29, x30, [sp, #0x10]
  1000b14ec  ldp     x20, x19, [sp], #0x20
  1000b14f0  b       _objc_release
  1000b14f4  mov     x20, x0
  1000b14f8  mov     x0, x19
  1000b14fc  bl      _objc_release
  1000b1500  mov     x0, x20
  1000b1504  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryItemDescriptionViewController buyOrUpgradeButtonPressed:]
; address 0x1000b1508  size 748  kind objc
; ======================================================================
  1000b1508  stp     x26, x25, [sp, #-0x50]!
  1000b150c  stp     x24, x23, [sp, #0x10]
  1000b1510  stp     x22, x21, [sp, #0x20]
  1000b1514  stp     x20, x19, [sp, #0x30]
  1000b1518  stp     x29, x30, [sp, #0x40]
  1000b151c  add     x29, sp, #0x40
  1000b1520  sub     sp, sp, #0x10
  1000b1524  mov     x20, x0
  1000b1528  adrp    x25, #0x10041d000
  1000b152c  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  1000b1530  adrp    x8, #0x100416000
  1000b1534  nop
  1000b1538  ldr     x19, [x8, #0xec8]
  1000b153c  mov     x1, x19
  1000b1540  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000b1544  mov     x29, x29
  1000b1548  bl      _objc_retainAutoreleasedReturnValue
  1000b154c  mov     x22, x0
  1000b1550  adrp    x8, #0x100420000
  1000b1554  ldrsw   x26, [x8, #0x190]                        ; ivar offset ADArmoryItemDescriptionViewController.weaponInventoryDict (+0x140)
  1000b1558  ldr     x0, [x20, x26]                           ; x0 = self->weaponInventoryDict
  1000b155c  adrp    x8, #0x100417000
  1000b1560  nop
  1000b1564  ldr     x21, [x8, #0x40]
  1000b1568  adrp    x2, #0x1003b9000
  1000b156c  add     x2, x2, #0xdb0                           ; @"name"
  1000b1570  mov     x1, x21
  1000b1574  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000b1578  mov     x29, x29
  1000b157c  bl      _objc_retainAutoreleasedReturnValue
  1000b1580  mov     x24, x0
  1000b1584  adrp    x8, #0x100418000
  1000b1588  nop
  1000b158c  ldr     x1, [x8, #0x8a0]
  1000b1590  mov     x0, x22
  1000b1594  mov     x2, x24
  1000b1598  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] quantityForPowerUpWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000b159c  mov     x23, x0
  1000b15a0  mov     x0, x24
  1000b15a4  bl      _objc_release
  1000b15a8  mov     x0, x22
  1000b15ac  bl      _objc_release
  1000b15b0  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  1000b15b4  mov     x1, x19
  1000b15b8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000b15bc  mov     x29, x29
  1000b15c0  bl      _objc_retainAutoreleasedReturnValue
  1000b15c4  mov     x22, x0
  1000b15c8  ldr     x0, [x20, x26]                           ; x0 = self->weaponInventoryDict
  1000b15cc  adrp    x2, #0x1003b9000
  1000b15d0  add     x2, x2, #0xdb0                           ; @"name"
  1000b15d4  mov     x1, x21
  1000b15d8  bl      _objc_msgSend                            ; [self->weaponInventoryDict objectForKey:@"name"]
  1000b15dc  add     w21, w23, #1
  1000b15e0  mov     x29, x29
  1000b15e4  bl      _objc_retainAutoreleasedReturnValue
  1000b15e8  mov     x23, x0
  1000b15ec  adrp    x8, #0x10041a000
  1000b15f0  nop
  1000b15f4  ldr     x1, [x8, #0x680]
  1000b15f8  mov     x0, x22
  1000b15fc  mov     x2, x21
  1000b1600  mov     x3, x23
  1000b1604  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setQuantity:([[ADInventory sharedInventory] quantityForPowerUpWithName:[self->weaponInventoryDict objectForKey:@"name"]] + 1) ForPowerUpWithName:[self->weaponInventoryDict objectForKey:@"name"]]
  1000b1608  mov     x0, x23
  1000b160c  bl      _objc_release
  1000b1610  mov     x0, x22
  1000b1614  bl      _objc_release
  1000b1618  adrp    x8, #0x100418000
  1000b161c  nop
  1000b1620  ldr     x1, [x8, #0x8a8]
  1000b1624  mov     x0, x20
  1000b1628  bl      _objc_msgSend                            ; [self quantityLabel]
  1000b162c  mov     x29, x29
  1000b1630  bl      _objc_retainAutoreleasedReturnValue
  1000b1634  mov     x20, x0
  1000b1638  adrp    x8, #0x10041d000
  1000b163c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000b1640  adrp    x8, #0x100416000
  1000b1644  nop
  1000b1648  ldr     x1, [x8, #0xee8]
  1000b164c  str     x21, [sp]
  1000b1650  adrp    x2, #0x1003bc000
  1000b1654  add     x2, x2, #0xd70                           ; @"x %i"
  1000b1658  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"x %i", ([[ADInventory sharedInventory] quantityForPowerUpWithName:[self->weaponInventor…]
  1000b165c  mov     x29, x29
  1000b1660  bl      _objc_retainAutoreleasedReturnValue
  1000b1664  mov     x21, x0
  1000b1668  adrp    x8, #0x100416000
  1000b166c  nop
  1000b1670  ldr     x1, [x8, #0xb68]
  1000b1674  mov     x0, x20
  1000b1678  mov     x2, x21
  1000b167c  bl      _objc_msgSend                            ; [[self quantityLabel] setText:[NSString stringWithFormat:@"x %i", ([[ADInventory sharedInventory] quantityForPowerUpWithName:[self->weaponInventor…]]
  1000b1680  mov     x0, x21
  1000b1684  bl      _objc_release
  1000b1688  mov     x0, x20
  1000b168c  bl      _objc_release
  1000b1690  adrp    x8, #0x10041d000
  1000b1694  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000b1698  adrp    x8, #0x100416000
  1000b169c  nop
  1000b16a0  ldr     x1, [x8, #0xb28]
  1000b16a4  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000b16a8  mov     x29, x29
  1000b16ac  bl      _objc_retainAutoreleasedReturnValue
  1000b16b0  mov     x20, x0
  1000b16b4  adrp    x8, #0x100416000
  1000b16b8  nop
  1000b16bc  ldr     x1, [x8, #0xc18]
  1000b16c0  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000b16c4  mov     x29, x29
  1000b16c8  bl      _objc_retainAutoreleasedReturnValue
  1000b16cc  mov     x21, x0
  1000b16d0  adrp    x8, #0x100417000
  1000b16d4  nop
  1000b16d8  ldr     x1, [x8, #0xb08]
  1000b16dc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  1000b16e0  mov     x29, x29
  1000b16e4  bl      _objc_retainAutoreleasedReturnValue
  1000b16e8  mov     x22, x0
  1000b16ec  adrp    x8, #0x100418000
  1000b16f0  nop
  1000b16f4  ldr     x1, [x8, #0x6b8]
  1000b16f8  mov     w2, #-1
  1000b16fc  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateDiamonds:0xffffffff]
  1000b1700  mov     x0, x22
  1000b1704  bl      _objc_release
  1000b1708  mov     x0, x21
  1000b170c  bl      _objc_release
  1000b1710  mov     x0, x20
  1000b1714  bl      _objc_release
  1000b1718  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  1000b171c  mov     x1, x19
  1000b1720  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000b1724  mov     x29, x29
  1000b1728  bl      _objc_retainAutoreleasedReturnValue
  1000b172c  mov     x20, x0
  1000b1730  adrp    x8, #0x100417000
  1000b1734  nop
  1000b1738  ldr     x1, [x8, #0x960]
  1000b173c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  1000b1740  sub     w2, w0, #1
  1000b1744  adrp    x8, #0x100417000
  1000b1748  nop
  1000b174c  ldr     x1, [x8, #0x98]
  1000b1750  mov     x0, x20
  1000b1754  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] - 1)]
  1000b1758  mov     x0, x20
  1000b175c  sub     sp, x29, #0x40
  1000b1760  ldp     x29, x30, [sp, #0x40]
  1000b1764  ldp     x20, x19, [sp, #0x30]
  1000b1768  ldp     x22, x21, [sp, #0x20]
  1000b176c  ldp     x24, x23, [sp, #0x10]
  1000b1770  ldp     x26, x25, [sp], #0x50
  1000b1774  b       _objc_release
  1000b1778  mov     x19, x0
  1000b177c  b       loc_1000b17ec
  1000b1780  b       loc_1000b17c0
  1000b1784  mov     x19, x0
  1000b1788  b       loc_1000b17ac
  1000b178c  mov     x19, x0
  1000b1790  mov     x0, x24
  1000b1794  b       loc_1000b17a8
  1000b1798  mov     x19, x0
  1000b179c  b       loc_1000b17ac
  1000b17a0  mov     x19, x0
  1000b17a4  mov     x0, x23
loc_1000b17a8:
  1000b17a8  bl      _objc_release
loc_1000b17ac:
  1000b17ac  mov     x0, x22
  1000b17b0  b       loc_1000b17e8
  1000b17b4  b       loc_1000b17c0
  1000b17b8  mov     x19, x0
  1000b17bc  b       loc_1000b17dc
loc_1000b17c0:
  1000b17c0  mov     x19, x0
  1000b17c4  b       loc_1000b17e4
  1000b17c8  mov     x19, x0
  1000b17cc  b       loc_1000b17dc
  1000b17d0  mov     x19, x0
  1000b17d4  mov     x0, x22
  1000b17d8  bl      _objc_release
loc_1000b17dc:
  1000b17dc  mov     x0, x21
  1000b17e0  bl      _objc_release
loc_1000b17e4:
  1000b17e4  mov     x0, x20
loc_1000b17e8:
  1000b17e8  bl      _objc_release
loc_1000b17ec:
  1000b17ec  mov     x0, x19
  1000b17f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryItemDescriptionViewController backButtonPressed:]
; address 0x1000b17f4  size 100  kind objc
; ======================================================================
  1000b17f4  stp     x20, x19, [sp, #-0x20]!
  1000b17f8  stp     x29, x30, [sp, #0x10]
  1000b17fc  add     x29, sp, #0x10
  1000b1800  adrp    x8, #0x100416000
  1000b1804  nop
  1000b1808  ldr     x1, [x8, #0xfa0]
  1000b180c  bl      _objc_msgSend                            ; [self armoryViewController]
  1000b1810  mov     x29, x29
  1000b1814  bl      _objc_retainAutoreleasedReturnValue
  1000b1818  mov     x19, x0
  1000b181c  adrp    x8, #0x100418000
  1000b1820  nop
  1000b1824  ldr     x1, [x8, #0x538]
  1000b1828  bl      _objc_msgSend                            ; [[self armoryViewController] sendDetailViewToBack]
  1000b182c  mov     x0, x19
  1000b1830  ldp     x29, x30, [sp, #0x10]
  1000b1834  ldp     x20, x19, [sp], #0x20
  1000b1838  b       _objc_release
  1000b183c  mov     x20, x0
  1000b1840  b       loc_1000b1850
  1000b1844  mov     x20, x0
  1000b1848  mov     x0, x19
  1000b184c  bl      _objc_release
loc_1000b1850:
  1000b1850  mov     x0, x20
  1000b1854  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryItemDescriptionViewController dealloc]
; address 0x1000b1858  size 492  kind objc
; ======================================================================
  1000b1858  stp     x28, x27, [sp, #-0x60]!
  1000b185c  stp     x26, x25, [sp, #0x10]
  1000b1860  stp     x24, x23, [sp, #0x20]
  1000b1864  stp     x22, x21, [sp, #0x30]
  1000b1868  stp     x20, x19, [sp, #0x40]
  1000b186c  stp     x29, x30, [sp, #0x50]
  1000b1870  add     x29, sp, #0x50
  1000b1874  sub     sp, sp, #0xf0
  1000b1878  mov     x19, x0
  1000b187c  adrp    x8, #0x1003b0000
  1000b1880  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000b1884  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000b1888  stur    x8, [x29, #-0x58]
  1000b188c  stp     xzr, xzr, [sp, #0x58]
  1000b1890  stp     xzr, xzr, [sp, #0x48]
  1000b1894  stp     xzr, xzr, [sp, #0x38]
  1000b1898  stp     xzr, xzr, [sp, #0x28]
  1000b189c  adrp    x8, #0x100420000
  1000b18a0  ldrsw   x27, [x8, #0x198]                        ; ivar offset ADArmoryItemDescriptionViewController.statBars (+0x150)
  1000b18a4  ldr     x0, [x19, x27]                           ; x0 = self->statBars
  1000b18a8  bl      _objc_retain
  1000b18ac  mov     x20, x0
  1000b18b0  adrp    x8, #0x100416000
  1000b18b4  nop
  1000b18b8  ldr     x21, [x8, #0xe00]
  1000b18bc  add     x2, sp, #0x28
  1000b18c0  add     x3, sp, #0x68
  1000b18c4  mov     w4, #0x10
  1000b18c8  mov     x1, x21
  1000b18cc  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000b18d0  mov     x22, x0
  1000b18d4  cbz     x22, loc_1000b196c                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  1000b18d8  ldr     x8, [sp, #0x38]
  1000b18dc  ldr     x28, [x8]
  1000b18e0  adrp    x8, #0x100416000
  1000b18e4  nop
  1000b18e8  ldr     x23, [x8, #0xf18]
  1000b18ec  adrp    x8, #0x100417000
  1000b18f0  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  1000b18f4  ldr     x24, [x8]
loc_1000b18f8:
  1000b18f8  mov     x26, #0
loc_1000b18fc:
  1000b18fc  ldr     x8, [sp, #0x38]
  1000b1900  ldr     x8, [x8]
  1000b1904  cmp     x8, x28
  1000b1908  b.eq    loc_1000b1914                            ; if (x8 == x28)
  1000b190c  mov     x0, x20
  1000b1910  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->statBars)
loc_1000b1914:
  1000b1914  ldr     x8, [sp, #0x30]
  1000b1918  ldr     x0, [x8, x26, lsl #3]
  1000b191c  mov     x1, x23
  1000b1920  bl      _objc_msgSend                            ; [x0 view]
  1000b1924  mov     x29, x29
  1000b1928  bl      _objc_retainAutoreleasedReturnValue
  1000b192c  mov     x25, x0
  1000b1930  mov     x1, x24
  1000b1934  bl      _objc_msgSend                            ; [[x0 view] removeFromSuperview]
  1000b1938  mov     x0, x25
  1000b193c  bl      _objc_release
  1000b1940  add     x26, x26, #1
  1000b1944  cmp     x26, x22
  1000b1948  b.lo    loc_1000b18fc                            ; if ((x26 + 1) <u [self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  1000b194c  add     x2, sp, #0x28
  1000b1950  add     x3, sp, #0x68
  1000b1954  mov     w4, #0x10
  1000b1958  mov     x0, x20
  1000b195c  mov     x1, x21
  1000b1960  bl      _objc_msgSend                            ; [self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000b1964  mov     x22, x0
  1000b1968  cbnz    x22, loc_1000b18f8                       ; if ([self->statBars countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_1000b196c:
  1000b196c  mov     x0, x20
  1000b1970  bl      _objc_release
  1000b1974  ldr     x0, [x19, x27]                           ; x0 = self->statBars
  1000b1978  adrp    x8, #0x100417000
  1000b197c  nop
  1000b1980  ldr     x1, [x8, #0x1b8]
  1000b1984  bl      _objc_msgSend                            ; [self->statBars removeAllObjects]
  1000b1988  str     x19, [sp, #0x18]
  1000b198c  adrp    x8, #0x10041e000
  1000b1990  ldr     x8, [x8, #0xf38]
  1000b1994  str     x8, [sp, #0x20]
  1000b1998  adrp    x8, #0x100416000
  1000b199c  nop
  1000b19a0  ldr     x1, [x8, #0xfc8]
  1000b19a4  add     x0, sp, #0x18
  1000b19a8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b19ac  ldur    x8, [x29, #-0x58]
  1000b19b0  adrp    x9, #0x1003b0000
  1000b19b4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000b19b8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000b19bc  sub     x8, x9, x8
  1000b19c0  cbnz    x8, loc_1000b19e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000b19c4  sub     sp, x29, #0x50
  1000b19c8  ldp     x29, x30, [sp, #0x50]
  1000b19cc  ldp     x20, x19, [sp, #0x40]
  1000b19d0  ldp     x22, x21, [sp, #0x30]
  1000b19d4  ldp     x24, x23, [sp, #0x20]
  1000b19d8  ldp     x26, x25, [sp, #0x10]
  1000b19dc  ldp     x28, x27, [sp], #0x60
  1000b19e0  ret
loc_1000b19e4:
  1000b19e4  bl      ___stack_chk_fail                        ; stack_chk_fail([super dealloc])
loc_1000b19e8:
  1000b19e8  mov     x21, x0
  1000b19ec  b       loc_1000b19fc
  1000b19f0  mov     x21, x0
  1000b19f4  mov     x0, x25
  1000b19f8  bl      _objc_release
loc_1000b19fc:
  1000b19fc  mov     x0, x20
  1000b1a00  bl      _objc_release
loc_1000b1a04:
  1000b1a04  str     x19, [sp, #8]
  1000b1a08  adrp    x8, #0x10041e000
  1000b1a0c  ldr     x8, [x8, #0xf38]
  1000b1a10  str     x8, [sp, #0x10]
  1000b1a14  adrp    x8, #0x100416000
  1000b1a18  nop
  1000b1a1c  ldr     x1, [x8, #0xfc8]
  1000b1a20  add     x0, sp, #8
  1000b1a24  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000b1a28  mov     x0, x21
  1000b1a2c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b1a30  bl      sub_10000b760
  1000b1a34  b       loc_1000b19e8
  1000b1a38  b       loc_1000b19e8
  1000b1a3c  mov     x21, x0
  1000b1a40  b       loc_1000b1a04

; ======================================================================
; -[ADArmoryItemDescriptionViewController armoryViewController]
; address 0x1000b1a44  size 32  kind objc
; ======================================================================
  1000b1a44  stp     x29, x30, [sp, #-0x10]!
  1000b1a48  mov     x29, sp
  1000b1a4c  adrp    x8, #0x100420000
  1000b1a50  ldrsw   x8, [x8, #0x19c]                         ; ivar offset ADArmoryItemDescriptionViewController._armoryViewController (+0x170)
  1000b1a54  add     x0, x0, x8
  1000b1a58  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000b1a5c  ldp     x29, x30, [sp], #0x10
  1000b1a60  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADArmoryItemDescriptionViewController setArmoryViewController:]
; address 0x1000b1a64  size 20  kind objc
; ======================================================================
  1000b1a64  adrp    x8, #0x100420000
  1000b1a68  ldrsw   x8, [x8, #0x19c]                         ; ivar offset ADArmoryItemDescriptionViewController._armoryViewController (+0x170)
  1000b1a6c  add     x0, x0, x8
  1000b1a70  mov     x1, x2
  1000b1a74  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADArmoryItemDescriptionViewController weaponTitle]
; address 0x1000b1a78  size 16  kind objc
; ======================================================================
  1000b1a78  adrp    x8, #0x100420000
  1000b1a7c  ldrsw   x8, [x8, #0x1a0]                         ; ivar offset ADArmoryItemDescriptionViewController._weaponTitle (+0x178)
  1000b1a80  ldr     x0, [x0, x8]                             ; x0 = self->_weaponTitle
  1000b1a84  ret

; ======================================================================
; -[ADArmoryItemDescriptionViewController setWeaponTitle:]
; address 0x1000b1a88  size 56  kind objc
; ======================================================================
  1000b1a88  stp     x20, x19, [sp, #-0x20]!
  1000b1a8c  stp     x29, x30, [sp, #0x10]
  1000b1a90  add     x29, sp, #0x10
  1000b1a94  mov     x19, x0
  1000b1a98  adrp    x8, #0x100420000
  1000b1a9c  ldrsw   x20, [x8, #0x1a0]                        ; ivar offset ADArmoryItemDescriptionViewController._weaponTitle (+0x178)
  1000b1aa0  mov     x0, x2
  1000b1aa4  bl      _objc_retain
  1000b1aa8  ldr     x8, [x19, x20]                           ; x8 = self->_weaponTitle
  1000b1aac  str     x0, [x19, x20]                           ; self->_weaponTitle = arg1
  1000b1ab0  mov     x0, x8
  1000b1ab4  ldp     x29, x30, [sp, #0x10]
  1000b1ab8  ldp     x20, x19, [sp], #0x20
  1000b1abc  b       _objc_release

; ======================================================================
; -[ADArmoryItemDescriptionViewController weaponImage]
; address 0x1000b1ac0  size 16  kind objc
; ======================================================================
  1000b1ac0  adrp    x8, #0x100420000
  1000b1ac4  ldrsw   x8, [x8, #0x1a4]                         ; ivar offset ADArmoryItemDescriptionViewController._weaponImage (+0x180)
  1000b1ac8  ldr     x0, [x0, x8]                             ; x0 = self->_weaponImage
  1000b1acc  ret

; ======================================================================
; -[ADArmoryItemDescriptionViewController setWeaponImage:]
; address 0x1000b1ad0  size 56  kind objc
; ======================================================================
  1000b1ad0  stp     x20, x19, [sp, #-0x20]!
  1000b1ad4  stp     x29, x30, [sp, #0x10]
  1000b1ad8  add     x29, sp, #0x10
  1000b1adc  mov     x19, x0
  1000b1ae0  adrp    x8, #0x100420000
  1000b1ae4  ldrsw   x20, [x8, #0x1a4]                        ; ivar offset ADArmoryItemDescriptionViewController._weaponImage (+0x180)
  1000b1ae8  mov     x0, x2
  1000b1aec  bl      _objc_retain
  1000b1af0  ldr     x8, [x19, x20]                           ; x8 = self->_weaponImage
  1000b1af4  str     x0, [x19, x20]                           ; self->_weaponImage = arg1
  1000b1af8  mov     x0, x8
  1000b1afc  ldp     x29, x30, [sp, #0x10]
  1000b1b00  ldp     x20, x19, [sp], #0x20
  1000b1b04  b       _objc_release

; ======================================================================
; -[ADArmoryItemDescriptionViewController buyOrUpgradeButton]
; address 0x1000b1b08  size 16  kind objc
; ======================================================================
  1000b1b08  adrp    x8, #0x100420000
  1000b1b0c  ldrsw   x8, [x8, #0x1a8]                         ; ivar offset ADArmoryItemDescriptionViewController._buyOrUpgradeButton (+0x188)
  1000b1b10  ldr     x0, [x0, x8]                             ; x0 = self->_buyOrUpgradeButton
  1000b1b14  ret

; ======================================================================
; -[ADArmoryItemDescriptionViewController setBuyOrUpgradeButton:]
; address 0x1000b1b18  size 56  kind objc
; ======================================================================
  1000b1b18  stp     x20, x19, [sp, #-0x20]!
  1000b1b1c  stp     x29, x30, [sp, #0x10]
  1000b1b20  add     x29, sp, #0x10
  1000b1b24  mov     x19, x0
  1000b1b28  adrp    x8, #0x100420000
  1000b1b2c  ldrsw   x20, [x8, #0x1a8]                        ; ivar offset ADArmoryItemDescriptionViewController._buyOrUpgradeButton (+0x188)
  1000b1b30  mov     x0, x2
  1000b1b34  bl      _objc_retain
  1000b1b38  ldr     x8, [x19, x20]                           ; x8 = self->_buyOrUpgradeButton
  1000b1b3c  str     x0, [x19, x20]                           ; self->_buyOrUpgradeButton = arg1
  1000b1b40  mov     x0, x8
  1000b1b44  ldp     x29, x30, [sp, #0x10]
  1000b1b48  ldp     x20, x19, [sp], #0x20
  1000b1b4c  b       _objc_release

; ======================================================================
; -[ADArmoryItemDescriptionViewController quantityLabel]
; address 0x1000b1b50  size 16  kind objc
; ======================================================================
  1000b1b50  adrp    x8, #0x100420000
  1000b1b54  ldrsw   x8, [x8, #0x1ac]                         ; ivar offset ADArmoryItemDescriptionViewController._quantityLabel (+0x190)
  1000b1b58  ldr     x0, [x0, x8]                             ; x0 = self->_quantityLabel
  1000b1b5c  ret

; ======================================================================
; -[ADArmoryItemDescriptionViewController setQuantityLabel:]
; address 0x1000b1b60  size 56  kind objc
; ======================================================================
  1000b1b60  stp     x20, x19, [sp, #-0x20]!
  1000b1b64  stp     x29, x30, [sp, #0x10]
  1000b1b68  add     x29, sp, #0x10
  1000b1b6c  mov     x19, x0
  1000b1b70  adrp    x8, #0x100420000
  1000b1b74  ldrsw   x20, [x8, #0x1ac]                        ; ivar offset ADArmoryItemDescriptionViewController._quantityLabel (+0x190)
  1000b1b78  mov     x0, x2
  1000b1b7c  bl      _objc_retain
  1000b1b80  ldr     x8, [x19, x20]                           ; x8 = self->_quantityLabel
  1000b1b84  str     x0, [x19, x20]                           ; self->_quantityLabel = arg1
  1000b1b88  mov     x0, x8
  1000b1b8c  ldp     x29, x30, [sp, #0x10]
  1000b1b90  ldp     x20, x19, [sp], #0x20
  1000b1b94  b       _objc_release

; ======================================================================
; -[ADArmoryItemDescriptionViewController buyButton]
; address 0x1000b1b98  size 16  kind objc
; ======================================================================
  1000b1b98  adrp    x8, #0x100420000
  1000b1b9c  ldrsw   x8, [x8, #0x1b0]                         ; ivar offset ADArmoryItemDescriptionViewController._buyButton (+0x198)
  1000b1ba0  ldr     x0, [x0, x8]                             ; x0 = self->_buyButton
  1000b1ba4  ret

; ======================================================================
; -[ADArmoryItemDescriptionViewController setBuyButton:]
; address 0x1000b1ba8  size 56  kind objc
; ======================================================================
  1000b1ba8  stp     x20, x19, [sp, #-0x20]!
  1000b1bac  stp     x29, x30, [sp, #0x10]
  1000b1bb0  add     x29, sp, #0x10
  1000b1bb4  mov     x19, x0
  1000b1bb8  adrp    x8, #0x100420000
  1000b1bbc  ldrsw   x20, [x8, #0x1b0]                        ; ivar offset ADArmoryItemDescriptionViewController._buyButton (+0x198)
  1000b1bc0  mov     x0, x2
  1000b1bc4  bl      _objc_retain
  1000b1bc8  ldr     x8, [x19, x20]                           ; x8 = self->_buyButton
  1000b1bcc  str     x0, [x19, x20]                           ; self->_buyButton = arg1
  1000b1bd0  mov     x0, x8
  1000b1bd4  ldp     x29, x30, [sp, #0x10]
  1000b1bd8  ldp     x20, x19, [sp], #0x20
  1000b1bdc  b       _objc_release

; ======================================================================
; -[ADArmoryItemDescriptionViewController .cxx_destruct]
; address 0x1000b1be0  size 240  kind objc
; ======================================================================
  1000b1be0  stp     x20, x19, [sp, #-0x20]!
  1000b1be4  stp     x29, x30, [sp, #0x10]
  1000b1be8  add     x29, sp, #0x10
  1000b1bec  mov     x19, x0
  1000b1bf0  adrp    x8, #0x100420000
  1000b1bf4  ldrsw   x8, [x8, #0x1b0]                         ; ivar offset ADArmoryItemDescriptionViewController._buyButton (+0x198)
  1000b1bf8  add     x0, x19, x8
  1000b1bfc  mov     x1, #0
  1000b1c00  bl      _objc_storeStrong
  1000b1c04  adrp    x8, #0x100420000
  1000b1c08  ldrsw   x8, [x8, #0x1ac]                         ; ivar offset ADArmoryItemDescriptionViewController._quantityLabel (+0x190)
  1000b1c0c  add     x0, x19, x8
  1000b1c10  mov     x1, #0
  1000b1c14  bl      _objc_storeStrong
  1000b1c18  adrp    x8, #0x100420000
  1000b1c1c  ldrsw   x8, [x8, #0x1a8]                         ; ivar offset ADArmoryItemDescriptionViewController._buyOrUpgradeButton (+0x188)
  1000b1c20  add     x0, x19, x8
  1000b1c24  mov     x1, #0
  1000b1c28  bl      _objc_storeStrong
  1000b1c2c  adrp    x8, #0x100420000
  1000b1c30  ldrsw   x8, [x8, #0x1a4]                         ; ivar offset ADArmoryItemDescriptionViewController._weaponImage (+0x180)
  1000b1c34  add     x0, x19, x8
  1000b1c38  mov     x1, #0
  1000b1c3c  bl      _objc_storeStrong
  1000b1c40  adrp    x8, #0x100420000
  1000b1c44  ldrsw   x8, [x8, #0x1a0]                         ; ivar offset ADArmoryItemDescriptionViewController._weaponTitle (+0x178)
  1000b1c48  add     x0, x19, x8
  1000b1c4c  mov     x1, #0
  1000b1c50  bl      _objc_storeStrong
  1000b1c54  adrp    x8, #0x100420000
  1000b1c58  ldrsw   x8, [x8, #0x19c]                         ; ivar offset ADArmoryItemDescriptionViewController._armoryViewController (+0x170)
  1000b1c5c  add     x0, x19, x8
  1000b1c60  bl      _objc_destroyWeak
  1000b1c64  adrp    x8, #0x100420000
  1000b1c68  ldrsw   x8, [x8, #0x1b4]                         ; ivar offset ADArmoryItemDescriptionViewController.nextLevelDict (+0x160)
  1000b1c6c  add     x0, x19, x8
  1000b1c70  mov     x1, #0
  1000b1c74  bl      _objc_storeStrong
  1000b1c78  adrp    x8, #0x100420000
  1000b1c7c  ldrsw   x8, [x8, #0x1b8]                         ; ivar offset ADArmoryItemDescriptionViewController.currentLevelDict (+0x158)
  1000b1c80  add     x0, x19, x8
  1000b1c84  mov     x1, #0
  1000b1c88  bl      _objc_storeStrong
  1000b1c8c  adrp    x8, #0x100420000
  1000b1c90  ldrsw   x8, [x8, #0x198]                         ; ivar offset ADArmoryItemDescriptionViewController.statBars (+0x150)
  1000b1c94  add     x0, x19, x8
  1000b1c98  mov     x1, #0
  1000b1c9c  bl      _objc_storeStrong
  1000b1ca0  adrp    x8, #0x100420000
  1000b1ca4  ldrsw   x8, [x8, #0x194]                         ; ivar offset ADArmoryItemDescriptionViewController.weaponStatsDict (+0x148)
  1000b1ca8  add     x0, x19, x8
  1000b1cac  mov     x1, #0
  1000b1cb0  bl      _objc_storeStrong
  1000b1cb4  mov     x1, #0
  1000b1cb8  adrp    x8, #0x100420000
  1000b1cbc  ldrsw   x8, [x8, #0x190]                         ; ivar offset ADArmoryItemDescriptionViewController.weaponInventoryDict (+0x140)
  1000b1cc0  add     x0, x19, x8
  1000b1cc4  ldp     x29, x30, [sp, #0x10]
  1000b1cc8  ldp     x20, x19, [sp], #0x20
  1000b1ccc  b       _objc_storeStrong
