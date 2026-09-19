// unit ADArmoryShopViewController — 19 functions
//   0x10008ea00     612  -[ADArmoryShopViewController viewDidLoad]
//   0x10008ec64     220  -[ADArmoryShopViewController dealloc]
//   0x10008ed40     260  -[ADArmoryShopViewController loadView]
//   0x10008ee44     140  -[ADArmoryShopViewController tableView:heightForRowAtIndexPath:]
//   0x10008eed0       8  -[ADArmoryShopViewController numberOfSectionsInTableView:]
//   0x10008eed8     184  -[ADArmoryShopViewController tableView:numberOfRowsInSection:]
//   0x10008ef90    6500  -[ADArmoryShopViewController tableView:cellForRowAtIndexPath:]
//   0x1000908f4     100  -[ADArmoryShopViewController handleWeaponUpgrade:]
//   0x100090958     252  -[ADArmoryShopViewController playSound]
//   0x100090a54     476  -[ADArmoryShopViewController tableView:didSelectRowAtIndexPath:]
//   0x100090c30     820  -[ADArmoryShopViewController showAccessibleDetailViewForWeaponWithName:]
//   0x100090f64     172  -[ADArmoryShopViewController viewWillLayoutSubviews]
//   0x100091010      16  -[ADArmoryShopViewController tableView]
//   0x100091020      56  -[ADArmoryShopViewController setTableView:]
//   0x100091058      32  -[ADArmoryShopViewController armoryViewController]
//   0x100091078      20  -[ADArmoryShopViewController setArmoryViewController:]
//   0x10009108c      16  -[ADArmoryShopViewController weaponReverseLookUp]
//   0x10009109c      12  -[ADArmoryShopViewController setWeaponReverseLookUp:]
//   0x1000910a8     100  -[ADArmoryShopViewController .cxx_destruct]

; ======================================================================
; -[ADArmoryShopViewController viewDidLoad]
; address 0x10008ea00  size 612  kind objc
; ======================================================================
  10008ea00  stp     x22, x21, [sp, #-0x30]!
  10008ea04  stp     x20, x19, [sp, #0x10]
  10008ea08  stp     x29, x30, [sp, #0x20]
  10008ea0c  add     x29, sp, #0x20
  10008ea10  sub     sp, sp, #0x10
  10008ea14  mov     x19, x0
  10008ea18  str     x19, [sp]
  10008ea1c  adrp    x8, #0x10041e000
  10008ea20  ldr     x8, [x8, #0xe80]
  10008ea24  str     x8, [sp, #8]
  10008ea28  adrp    x8, #0x100416000
  10008ea2c  nop
  10008ea30  ldr     x1, [x8, #0xb48]
  10008ea34  mov     x0, sp
  10008ea38  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10008ea3c  adrp    x8, #0x100417000
  10008ea40  nop
  10008ea44  ldr     x20, [x8, #0x2d0]
  10008ea48  mov     x0, x19
  10008ea4c  mov     x1, x20
  10008ea50  bl      _objc_msgSend                            ; [self tableView]
  10008ea54  mov     x29, x29
  10008ea58  bl      _objc_retainAutoreleasedReturnValue
  10008ea5c  mov     x21, x0
  10008ea60  adrp    x8, #0x100418000
  10008ea64  nop
  10008ea68  ldr     x1, [x8, #0x5d0]
  10008ea6c  mov     x2, x19
  10008ea70  bl      _objc_msgSend                            ; [[self tableView] setDataSource:self]
  10008ea74  mov     x0, x21
  10008ea78  bl      _objc_release
  10008ea7c  mov     x0, x19
  10008ea80  mov     x1, x20
  10008ea84  bl      _objc_msgSend                            ; [self tableView]
  10008ea88  mov     x29, x29
  10008ea8c  bl      _objc_retainAutoreleasedReturnValue
  10008ea90  mov     x21, x0
  10008ea94  adrp    x8, #0x100417000
  10008ea98  nop
  10008ea9c  ldr     x1, [x8, #0x7d8]
  10008eaa0  mov     x2, x19
  10008eaa4  bl      _objc_msgSend                            ; [[self tableView] setDelegate:self]
  10008eaa8  mov     x0, x21
  10008eaac  bl      _objc_release
  10008eab0  adrp    x8, #0x10041d000
  10008eab4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008eab8  adrp    x8, #0x100416000
  10008eabc  nop
  10008eac0  ldr     x1, [x8, #0xc00]
  10008eac4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008eac8  mov     x29, x29
  10008eacc  bl      _objc_retainAutoreleasedReturnValue
  10008ead0  mov     x22, x0
  10008ead4  adrp    x8, #0x100416000
  10008ead8  nop
  10008eadc  ldr     x1, [x8, #0xd18]
  10008eae0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10008eae4  mov     x21, x0
  10008eae8  mov     x0, x22
  10008eaec  bl      _objc_release
  10008eaf0  mov     x0, x19
  10008eaf4  mov     x1, x20
  10008eaf8  bl      _objc_msgSend                            ; [self tableView]
  10008eafc  mov     x29, x29
  10008eb00  bl      _objc_retainAutoreleasedReturnValue
  10008eb04  mov     x20, x0
  10008eb08  adrp    x8, #0x10041e000
  10008eb0c  ldr     x0, [x8, #0xb0]                          ; class UINib
  10008eb10  adrp    x8, #0x100417000
  10008eb14  add     x8, x8, #0xb38                           ; &@selector(nibWithNibName:bundle:)
  10008eb18  ldr     x1, [x8]
  10008eb1c  cbz     w21, loc_10008eb64                       ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  10008eb20  mov     x3, #0
  10008eb24  adrp    x2, #0x1003bb000
  10008eb28  add     x2, x2, #0x250                           ; @"ADCustomTableViewCellWithSubtitles"
  10008eb2c  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles" bundle:0]
  10008eb30  mov     x29, x29
  10008eb34  bl      _objc_retainAutoreleasedReturnValue
  10008eb38  mov     x21, x0
  10008eb3c  adrp    x8, #0x100417000
  10008eb40  nop
  10008eb44  ldr     x1, [x8, #0xb40]
  10008eb48  adrp    x3, #0x1003bf000
  10008eb4c  add     x3, x3, #0xd50                           ; @"ArmoryShopCell"
  10008eb50  mov     x0, x20
  10008eb54  mov     x2, x21
  10008eb58  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles" bundle:0] forCellReuseIdentifier:@"ArmoryShopCell"]
  10008eb5c  b       loc_10008eba0
  10008eb60  b       loc_10008ec48
loc_10008eb64:
  10008eb64  mov     x3, #0
  10008eb68  adrp    x2, #0x1003bb000
  10008eb6c  add     x2, x2, #0x290                           ; @"ADCustomTableViewCellWithSubtitles_iPad"
  10008eb70  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles_iPad" bundle:0]
  10008eb74  mov     x29, x29
  10008eb78  bl      _objc_retainAutoreleasedReturnValue
  10008eb7c  mov     x21, x0
  10008eb80  adrp    x8, #0x100417000
  10008eb84  nop
  10008eb88  ldr     x1, [x8, #0xb40]
  10008eb8c  adrp    x3, #0x1003bf000
  10008eb90  add     x3, x3, #0xd50                           ; @"ArmoryShopCell"
  10008eb94  mov     x0, x20
  10008eb98  mov     x2, x21
  10008eb9c  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles_iPad" bundle:0] forCellReuseIdentifier:@"ArmoryShopCell"]
loc_10008eba0:
  10008eba0  mov     x0, x21
  10008eba4  bl      _objc_release
  10008eba8  mov     x0, x20
  10008ebac  bl      _objc_release
  10008ebb0  adrp    x8, #0x10041d000
  10008ebb4  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10008ebb8  adrp    x8, #0x100416000
  10008ebbc  nop
  10008ebc0  ldr     x1, [x8, #0xe88]
  10008ebc4  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10008ebc8  mov     x29, x29
  10008ebcc  bl      _objc_retainAutoreleasedReturnValue
  10008ebd0  mov     x20, x0
  10008ebd4  adrp    x8, #0x100419000
  10008ebd8  nop
  10008ebdc  ldr     x3, [x8, #0xfa8]
  10008ebe0  adrp    x8, #0x100416000
  10008ebe4  nop
  10008ebe8  ldr     x1, [x8, #0xe98]
  10008ebec  mov     x5, #0
  10008ebf0  adrp    x4, #0x1003b9000
  10008ebf4  add     x4, x4, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  10008ebf8  mov     x2, x19
  10008ebfc  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleWeaponUpgrade:) name:@"WEAPON_UPGRADE_EVENT" object:0]
  10008ec00  mov     x0, x20
  10008ec04  bl      _objc_release
  10008ec08  sub     sp, x29, #0x20
  10008ec0c  ldp     x29, x30, [sp, #0x20]
  10008ec10  ldp     x20, x19, [sp, #0x10]
  10008ec14  ldp     x22, x21, [sp], #0x30
  10008ec18  ret
  10008ec1c  b       loc_10008ec20
loc_10008ec20:
  10008ec20  mov     x19, x0
  10008ec24  mov     x0, x21
  10008ec28  b       loc_10008ec58
  10008ec2c  mov     x19, x0
  10008ec30  mov     x0, x22
  10008ec34  b       loc_10008ec58
  10008ec38  b       loc_10008ec40
  10008ec3c  b       loc_10008ec40
loc_10008ec40:
  10008ec40  mov     x19, x0
  10008ec44  b       loc_10008ec54
loc_10008ec48:
  10008ec48  mov     x19, x0
  10008ec4c  mov     x0, x21
  10008ec50  bl      _objc_release
loc_10008ec54:
  10008ec54  mov     x0, x20
loc_10008ec58:
  10008ec58  bl      _objc_release
  10008ec5c  mov     x0, x19
  10008ec60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController dealloc]
; address 0x10008ec64  size 220  kind objc
; ======================================================================
  10008ec64  stp     x20, x19, [sp, #-0x20]!
  10008ec68  stp     x29, x30, [sp, #0x10]
  10008ec6c  add     x29, sp, #0x10
  10008ec70  sub     sp, sp, #0x20
  10008ec74  mov     x19, x0
  10008ec78  adrp    x8, #0x10041d000
  10008ec7c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10008ec80  adrp    x8, #0x100416000
  10008ec84  nop
  10008ec88  ldr     x1, [x8, #0xe88]
  10008ec8c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10008ec90  mov     x29, x29
  10008ec94  bl      _objc_retainAutoreleasedReturnValue
  10008ec98  mov     x20, x0
  10008ec9c  adrp    x8, #0x100416000
  10008eca0  nop
  10008eca4  ldr     x1, [x8, #0xfc0]
  10008eca8  mov     x4, #0
  10008ecac  adrp    x3, #0x1003b9000
  10008ecb0  add     x3, x3, #0xb10                           ; @"WEAPON_UPGRADE_EVENT"
  10008ecb4  mov     x2, x19
  10008ecb8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self name:@"WEAPON_UPGRADE_EVENT" object:0]
  10008ecbc  mov     x0, x20
  10008ecc0  bl      _objc_release
  10008ecc4  str     x19, [sp, #0x10]
  10008ecc8  adrp    x8, #0x10041e000
  10008eccc  ldr     x8, [x8, #0xe80]
  10008ecd0  str     x8, [sp, #0x18]
  10008ecd4  adrp    x8, #0x100416000
  10008ecd8  nop
  10008ecdc  ldr     x1, [x8, #0xfc8]
  10008ece0  add     x0, sp, #0x10
  10008ece4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10008ece8  sub     sp, x29, #0x10
  10008ecec  ldp     x29, x30, [sp, #0x10]
  10008ecf0  ldp     x20, x19, [sp], #0x20
  10008ecf4  ret
  10008ecf8  mov     x20, x0
  10008ecfc  b       loc_10008ed10
  10008ed00  mov     x1, x20
  10008ed04  mov     x20, x0
  10008ed08  mov     x0, x1
  10008ed0c  bl      _objc_release
loc_10008ed10:
  10008ed10  str     x19, [sp]
  10008ed14  adrp    x8, #0x10041e000
  10008ed18  ldr     x8, [x8, #0xe80]
  10008ed1c  str     x8, [sp, #8]
  10008ed20  adrp    x8, #0x100416000
  10008ed24  nop
  10008ed28  ldr     x1, [x8, #0xfc8]
  10008ed2c  mov     x0, sp
  10008ed30  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10008ed34  mov     x0, x20
  10008ed38  bl      __Unwind_Resume                          ; Unwind_Resume()
  10008ed3c  bl      sub_10000b760

; ======================================================================
; -[ADArmoryShopViewController loadView]
; address 0x10008ed40  size 260  kind objc
; ======================================================================
  10008ed40  stp     x22, x21, [sp, #-0x30]!
  10008ed44  stp     x20, x19, [sp, #0x10]
  10008ed48  stp     x29, x30, [sp, #0x20]
  10008ed4c  add     x29, sp, #0x20
  10008ed50  sub     sp, sp, #0x20
  10008ed54  mov     x19, x0
  10008ed58  adrp    x22, #0x1003b0000
  10008ed5c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10008ed60  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  10008ed64  str     x22, [sp, #0x18]
  10008ed68  adrp    x8, #0x1003bb000
  10008ed6c  add     x8, x8, #0x2b0                           ; @"tableView"
  10008ed70  str     x8, [sp, #8]
  10008ed74  adrp    x8, #0x10041d000
  10008ed78  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10008ed7c  adrp    x8, #0x100416000
  10008ed80  nop
  10008ed84  ldr     x1, [x8, #0xec0]
  10008ed88  mov     w2, #1
  10008ed8c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10008ed90  mov     x29, x29
  10008ed94  bl      _objc_retainAutoreleasedReturnValue
  10008ed98  mov     x20, x0
  10008ed9c  str     x20, [sp, #0x10]
  10008eda0  adrp    x8, #0x10041d000
  10008eda4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10008eda8  adrp    x8, #0x100416000
  10008edac  nop
  10008edb0  ldr     x1, [x8, #0xcd0]
  10008edb4  add     x2, sp, #0x10
  10008edb8  add     x3, sp, #8
  10008edbc  mov     w4, #1
  10008edc0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  10008edc4  mov     x29, x29
  10008edc8  bl      _objc_retainAutoreleasedReturnValue
  10008edcc  mov     x21, x0
  10008edd0  mov     x0, x20
  10008edd4  bl      _objc_release
  10008edd8  adrp    x8, #0x100416000
  10008eddc  nop
  10008ede0  ldr     x1, [x8, #0xbf0]
  10008ede4  adrp    x2, #0x1003bf000
  10008ede8  add     x2, x2, #0x230                           ; @"ADArmoryShopViewController"
  10008edec  mov     x0, x19
  10008edf0  mov     x3, x21
  10008edf4  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADArmoryShopViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  10008edf8  mov     x0, x21
  10008edfc  bl      _objc_release
  10008ee00  ldr     x8, [sp, #0x18]
  10008ee04  sub     x8, x22, x8
  10008ee08  cbnz    x8, loc_10008ee20                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008ee0c  sub     sp, x29, #0x20
  10008ee10  ldp     x29, x30, [sp, #0x20]
  10008ee14  ldp     x20, x19, [sp, #0x10]
  10008ee18  ldp     x22, x21, [sp], #0x30
  10008ee1c  ret
loc_10008ee20:
  10008ee20  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008ee24  mov     x19, x0
  10008ee28  mov     x0, x20
  10008ee2c  b       loc_10008ee38
  10008ee30  mov     x19, x0
  10008ee34  mov     x0, x21
loc_10008ee38:
  10008ee38  bl      _objc_release
  10008ee3c  mov     x0, x19
  10008ee40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController tableView:heightForRowAtIndexPath:]
; address 0x10008ee44  size 140  kind objc
; ======================================================================
  10008ee44  stp     x20, x19, [sp, #-0x20]!
  10008ee48  stp     x29, x30, [sp, #0x10]
  10008ee4c  add     x29, sp, #0x10
  10008ee50  adrp    x8, #0x10041d000
  10008ee54  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008ee58  adrp    x8, #0x100416000
  10008ee5c  nop
  10008ee60  ldr     x1, [x8, #0xc00]
  10008ee64  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008ee68  mov     x29, x29
  10008ee6c  bl      _objc_retainAutoreleasedReturnValue
  10008ee70  mov     x19, x0
  10008ee74  adrp    x8, #0x100416000
  10008ee78  nop
  10008ee7c  ldr     x1, [x8, #0xd18]
  10008ee80  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10008ee84  mov     x20, x0
  10008ee88  mov     x0, x19
  10008ee8c  bl      _objc_release
  10008ee90  cmp     w20, #0
  10008ee94  nop
  10008ee98  ldr     d0, #0x100181aa8                         ; d0 = 176.0
  10008ee9c  nop
  10008eea0  ldr     d1, #0x100181ab0                         ; d1 = 120.0
  10008eea4  fcsel   d0, d1, d0, ne
  10008eea8  ldp     x29, x30, [sp, #0x10]
  10008eeac  ldp     x20, x19, [sp], #0x20
  10008eeb0  ret
  10008eeb4  mov     x20, x0
  10008eeb8  b       loc_10008eec8
  10008eebc  mov     x20, x0
  10008eec0  mov     x0, x19
  10008eec4  bl      _objc_release
loc_10008eec8:
  10008eec8  mov     x0, x20
  10008eecc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController numberOfSectionsInTableView:]
; address 0x10008eed0  size 8  kind objc
; ======================================================================
  10008eed0  mov     w0, #1
  10008eed4  ret

; ======================================================================
; -[ADArmoryShopViewController tableView:numberOfRowsInSection:]
; address 0x10008eed8  size 184  kind objc
; ======================================================================
  10008eed8  stp     x22, x21, [sp, #-0x30]!
  10008eedc  stp     x20, x19, [sp, #0x10]
  10008eee0  stp     x29, x30, [sp, #0x20]
  10008eee4  add     x29, sp, #0x20
  10008eee8  adrp    x8, #0x10041d000
  10008eeec  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008eef0  adrp    x8, #0x100417000
  10008eef4  nop
  10008eef8  ldr     x1, [x8, #0xa0]
  10008eefc  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008ef00  mov     x29, x29
  10008ef04  bl      _objc_retainAutoreleasedReturnValue
  10008ef08  mov     x19, x0
  10008ef0c  adrp    x8, #0x100417000
  10008ef10  nop
  10008ef14  ldr     x1, [x8, #0xa8]
  10008ef18  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008ef1c  mov     x29, x29
  10008ef20  bl      _objc_retainAutoreleasedReturnValue
  10008ef24  mov     x20, x0
  10008ef28  adrp    x8, #0x100416000
  10008ef2c  nop
  10008ef30  ldr     x1, [x8, #0xe30]
  10008ef34  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]
  10008ef38  mov     x21, x0
  10008ef3c  mov     x0, x20
  10008ef40  bl      _objc_release
  10008ef44  mov     x0, x19
  10008ef48  bl      _objc_release
  10008ef4c  mov     x0, x21
  10008ef50  ldp     x29, x30, [sp, #0x20]
  10008ef54  ldp     x20, x19, [sp, #0x10]
  10008ef58  ldp     x22, x21, [sp], #0x30
  10008ef5c  ret
  10008ef60  mov     x20, x0
  10008ef64  b       loc_10008ef88
  10008ef68  mov     x20, x0
  10008ef6c  b       loc_10008ef80
  10008ef70  mov     x1, x20
  10008ef74  mov     x20, x0
  10008ef78  mov     x0, x1
  10008ef7c  bl      _objc_release
loc_10008ef80:
  10008ef80  mov     x0, x19
  10008ef84  bl      _objc_release
loc_10008ef88:
  10008ef88  mov     x0, x20
  10008ef8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController tableView:cellForRowAtIndexPath:]
; address 0x10008ef90  size 6500  kind objc
; ======================================================================
  10008ef90  stp     x28, x27, [sp, #-0x60]!
  10008ef94  stp     x26, x25, [sp, #0x10]
  10008ef98  stp     x24, x23, [sp, #0x20]
  10008ef9c  stp     x22, x21, [sp, #0x30]
  10008efa0  stp     x20, x19, [sp, #0x40]
  10008efa4  stp     x29, x30, [sp, #0x50]
  10008efa8  add     x29, sp, #0x50
  10008efac  sub     sp, sp, #0x80
  10008efb0  mov     x21, x3
  10008efb4  mov     x22, x2
  10008efb8  mov     x19, x0
  10008efbc  mov     x0, x22
  10008efc0  bl      _objc_retain
  10008efc4  mov     x20, x0
  10008efc8  mov     x0, x21
  10008efcc  bl      _objc_retain
  10008efd0  mov     x27, x0
  10008efd4  adrp    x8, #0x100417000
  10008efd8  nop
  10008efdc  ldr     x1, [x8, #0x390]
  10008efe0  adrp    x2, #0x1003bf000
  10008efe4  add     x2, x2, #0xd50                           ; @"ArmoryShopCell"
  10008efe8  mov     x0, x22
  10008efec  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"]
  10008eff0  mov     x21, x0
  10008eff4  mov     x0, x20
  10008eff8  bl      _objc_release
  10008effc  mov     x0, x21
  10008f000  bl      _objc_retainAutoreleasedReturnValue
  10008f004  mov     x20, x0
  10008f008  adrp    x8, #0x10041d000
  10008f00c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008f010  adrp    x8, #0x100417000
  10008f014  nop
  10008f018  ldr     x21, [x8, #0xa0]
  10008f01c  mov     x1, x21
  10008f020  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008f024  mov     x29, x29
  10008f028  bl      _objc_retainAutoreleasedReturnValue
  10008f02c  mov     x23, x0
  10008f030  adrp    x8, #0x100417000
  10008f034  nop
  10008f038  ldr     x24, [x8, #0xa8]
  10008f03c  mov     x1, x24
  10008f040  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008f044  mov     x29, x29
  10008f048  bl      _objc_retainAutoreleasedReturnValue
  10008f04c  mov     x25, x0
  10008f050  adrp    x8, #0x100417000
  10008f054  nop
  10008f058  ldr     x1, [x8, #0x350]
  10008f05c  stur    x1, [x29, #-0x58]
  10008f060  mov     x0, x27
  10008f064  bl      _objc_msgSend                            ; [arg2 row]
  10008f068  mov     x2, x0
  10008f06c  adrp    x8, #0x100416000
  10008f070  nop
  10008f074  ldr     x1, [x8, #0xc30]
  10008f078  stur    x1, [x29, #-0x60]
  10008f07c  mov     x0, x25
  10008f080  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008f084  mov     x29, x29
  10008f088  bl      _objc_retainAutoreleasedReturnValue
  10008f08c  mov     x26, x0
  10008f090  adrp    x8, #0x100417000
  10008f094  nop
  10008f098  ldr     x1, [x8, #0x40]
  10008f09c  str     x1, [sp, #0x68]
  10008f0a0  adrp    x2, #0x1003b9000
  10008f0a4  add     x2, x2, #0xdb0                           ; @"name"
  10008f0a8  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10008f0ac  mov     x29, x29
  10008f0b0  bl      _objc_retainAutoreleasedReturnValue
  10008f0b4  str     x0, [sp, #0x60]
  10008f0b8  mov     x0, x26
  10008f0bc  bl      _objc_release
  10008f0c0  mov     x0, x25
  10008f0c4  bl      _objc_release
  10008f0c8  mov     x0, x23
  10008f0cc  bl      _objc_release
  10008f0d0  adrp    x8, #0x100419000
  10008f0d4  nop
  10008f0d8  ldr     x1, [x8, #0xfb0]
  10008f0dc  mov     x0, x19
  10008f0e0  bl      _objc_msgSend                            ; [self weaponReverseLookUp]
  10008f0e4  mov     x29, x29
  10008f0e8  bl      _objc_retainAutoreleasedReturnValue
  10008f0ec  mov     x19, x0
  10008f0f0  adrp    x8, #0x100416000
  10008f0f4  nop
  10008f0f8  ldr     x1, [x8, #0xd90]
  10008f0fc  ldr     x2, [sp, #0x60]
  10008f100  bl      _objc_msgSend                            ; [[self weaponReverseLookUp] addObject:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10008f104  mov     x0, x19
  10008f108  bl      _objc_release
  10008f10c  adrp    x8, #0x10041d000
  10008f110  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008f114  adrp    x8, #0x100417000
  10008f118  nop
  10008f11c  ldr     x1, [x8, #0x340]
  10008f120  str     x1, [sp, #0x40]
  10008f124  bl      _objc_msgSend                            ; [UIColor clearColor]
  10008f128  mov     x29, x29
  10008f12c  bl      _objc_retainAutoreleasedReturnValue
  10008f130  mov     x19, x0
  10008f134  adrp    x8, #0x100417000
  10008f138  nop
  10008f13c  ldr     x1, [x8, #0x188]
  10008f140  str     x1, [sp, #0x50]
  10008f144  mov     x0, x20
  10008f148  mov     x2, x19
  10008f14c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] setBackgroundColor:[UIColor clearColor]]
  10008f150  mov     x0, x19
  10008f154  bl      _objc_release
  10008f158  adrp    x8, #0x100417000
  10008f15c  nop
  10008f160  ldr     x1, [x8, #0x3b0]
  10008f164  str     x1, [sp, #0x38]
  10008f168  mov     x2, #0
  10008f16c  mov     x0, x20
  10008f170  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] setSelectionStyle:0]
  10008f174  adrp    x8, #0x100416000
  10008f178  nop
  10008f17c  ldr     x1, [x8, #0xb80]
  10008f180  str     x1, [sp, #0x48]
  10008f184  mov     x0, x20
  10008f188  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel]
  10008f18c  mov     x29, x29
  10008f190  bl      _objc_retainAutoreleasedReturnValue
  10008f194  mov     x19, x0
  10008f198  adrp    x8, #0x10041d000
  10008f19c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008f1a0  mov     x1, x21
  10008f1a4  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008f1a8  mov     x29, x29
  10008f1ac  bl      _objc_retainAutoreleasedReturnValue
  10008f1b0  mov     x23, x0
  10008f1b4  mov     x1, x24
  10008f1b8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008f1bc  mov     x29, x29
  10008f1c0  bl      _objc_retainAutoreleasedReturnValue
  10008f1c4  mov     x25, x0
  10008f1c8  mov     x0, x27
  10008f1cc  ldur    x1, [x29, #-0x58]
  10008f1d0  bl      _objc_msgSend                            ; [arg2 row]
  10008f1d4  mov     x2, x0
  10008f1d8  mov     x0, x25
  10008f1dc  ldur    x1, [x29, #-0x60]
  10008f1e0  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008f1e4  mov     x29, x29
  10008f1e8  bl      _objc_retainAutoreleasedReturnValue
  10008f1ec  mov     x26, x0
  10008f1f0  adrp    x2, #0x1003ba000
  10008f1f4  add     x2, x2, #0x2b0                           ; @"displayName"
  10008f1f8  ldr     x1, [sp, #0x68]
  10008f1fc  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"displayName"]
  10008f200  mov     x29, x29
  10008f204  bl      _objc_retainAutoreleasedReturnValue
  10008f208  mov     x22, x0
  10008f20c  adrp    x8, #0x100416000
  10008f210  nop
  10008f214  ldr     x28, [x8, #0xb68]
  10008f218  mov     x0, x19
  10008f21c  mov     x1, x28
  10008f220  mov     x2, x22
  10008f224  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel] setText:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"displayName"]]
  10008f228  mov     x0, x22
  10008f22c  bl      _objc_release
  10008f230  mov     x0, x26
  10008f234  bl      _objc_release
  10008f238  mov     x0, x25
  10008f23c  bl      _objc_release
  10008f240  mov     x0, x23
  10008f244  bl      _objc_release
  10008f248  mov     x0, x19
  10008f24c  bl      _objc_release
  10008f250  adrp    x8, #0x100417000
  10008f254  nop
  10008f258  ldr     x1, [x8, #0xb80]
  10008f25c  str     x1, [sp, #0x20]
  10008f260  mov     x0, x20
  10008f264  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] detailLabel]
  10008f268  mov     x29, x29
  10008f26c  bl      _objc_retainAutoreleasedReturnValue
  10008f270  mov     x19, x0
  10008f274  adrp    x8, #0x10041d000
  10008f278  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008f27c  mov     x1, x21
  10008f280  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008f284  mov     x29, x29
  10008f288  bl      _objc_retainAutoreleasedReturnValue
  10008f28c  mov     x23, x0
  10008f290  mov     x1, x24
  10008f294  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008f298  mov     x29, x29
  10008f29c  bl      _objc_retainAutoreleasedReturnValue
  10008f2a0  mov     x25, x0
  10008f2a4  mov     x0, x27
  10008f2a8  ldur    x1, [x29, #-0x58]
  10008f2ac  bl      _objc_msgSend                            ; [arg2 row]
  10008f2b0  mov     x2, x0
  10008f2b4  mov     x0, x25
  10008f2b8  ldur    x1, [x29, #-0x60]
  10008f2bc  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008f2c0  mov     x29, x29
  10008f2c4  bl      _objc_retainAutoreleasedReturnValue
  10008f2c8  mov     x26, x0
  10008f2cc  adrp    x2, #0x1003bc000
  10008f2d0  add     x2, x2, #0xdf0                           ; @"description"
  10008f2d4  ldr     x1, [sp, #0x68]
  10008f2d8  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"description"]
  10008f2dc  mov     x29, x29
  10008f2e0  bl      _objc_retainAutoreleasedReturnValue
  10008f2e4  mov     x22, x0
  10008f2e8  mov     x0, x19
  10008f2ec  mov     x1, x28
  10008f2f0  mov     x2, x22
  10008f2f4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] detailLabel] setText:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"description"]]
  10008f2f8  mov     x0, x22
  10008f2fc  bl      _objc_release
  10008f300  mov     x0, x26
  10008f304  bl      _objc_release
  10008f308  mov     x0, x25
  10008f30c  bl      _objc_release
  10008f310  mov     x0, x23
  10008f314  bl      _objc_release
  10008f318  mov     x0, x19
  10008f31c  bl      _objc_release
  10008f320  adrp    x8, #0x100416000
  10008f324  nop
  10008f328  ldr     x1, [x8, #0xcf8]
  10008f32c  str     x1, [sp, #0x18]
  10008f330  mov     x0, x20
  10008f334  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] image]
  10008f338  mov     x29, x29
  10008f33c  bl      _objc_retainAutoreleasedReturnValue
  10008f340  mov     x23, x0
  10008f344  adrp    x8, #0x10041d000
  10008f348  ldr     x19, [x8, #0xf10]                        ; class UIImage
  10008f34c  nop
  10008f350  ldr     x0, [x8, #0xf78]                         ; class NSString
  10008f354  adrp    x8, #0x100416000
  10008f358  nop
  10008f35c  ldr     x22, [x8, #0xee8]
  10008f360  ldr     x8, [sp, #0x60]
  10008f364  str     x8, [sp]
  10008f368  adrp    x2, #0x1003b9000
  10008f36c  add     x2, x2, #0xc10                           ; @"%@_icon"
  10008f370  mov     x1, x22
  10008f374  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…]
  10008f378  str     x22, [sp, #0x30]
  10008f37c  mov     x29, x29
  10008f380  bl      _objc_retainAutoreleasedReturnValue
  10008f384  mov     x25, x0
  10008f388  adrp    x8, #0x100416000
  10008f38c  nop
  10008f390  ldr     x26, [x8, #0xd40]
  10008f394  mov     x0, x19
  10008f398  mov     x1, x26
  10008f39c  mov     x2, x25
  10008f3a0  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…]]
  10008f3a4  mov     x29, x29
  10008f3a8  bl      _objc_retainAutoreleasedReturnValue
  10008f3ac  mov     x22, x0
  10008f3b0  adrp    x8, #0x100416000
  10008f3b4  nop
  10008f3b8  ldr     x19, [x8, #0xef0]
  10008f3bc  mov     x0, x23
  10008f3c0  mov     x1, x19
  10008f3c4  mov     x2, x22
  10008f3c8  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] image] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…]]]
  10008f3cc  mov     x0, x22
  10008f3d0  bl      _objc_release
  10008f3d4  mov     x0, x25
  10008f3d8  bl      _objc_release
  10008f3dc  mov     x0, x23
  10008f3e0  bl      _objc_release
  10008f3e4  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10008f3e8  adrp    x8, #0x100417000
  10008f3ec  add     x8, x8, #0xb70                           ; &@selector(buyUpgradeButton)
  10008f3f0  ldr     x23, [x8]
  10008f3f4  tbz     w0, #0, loc_10008f760                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  10008f3f8  mov     x0, x20
  10008f3fc  mov     x1, x23
  10008f400  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008f404  mov     x29, x29
  10008f408  bl      _objc_retainAutoreleasedReturnValue
  10008f40c  mov     x19, x0
  10008f410  adrp    x8, #0x100417000
  10008f414  nop
  10008f418  ldr     x1, [x8, #0x878]
  10008f41c  mov     w2, #0
  10008f420  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setEnabled:0]
  10008f424  mov     x0, x19
  10008f428  bl      _objc_release
  10008f42c  mov     x0, x20
  10008f430  mov     x1, x23
  10008f434  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008f438  mov     x29, x29
  10008f43c  bl      _objc_retainAutoreleasedReturnValue
  10008f440  mov     x19, x0
  10008f444  adrp    x8, #0x100416000
  10008f448  nop
  10008f44c  ldr     x1, [x8, #0xba8]
  10008f450  mov     w2, #1
  10008f454  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setHidden:1]
  10008f458  mov     x0, x19
  10008f45c  bl      _objc_release
  10008f460  mov     x0, x20
  10008f464  ldr     x1, [sp, #0x48]
  10008f468  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel]
  10008f46c  mov     x29, x29
  10008f470  bl      _objc_retainAutoreleasedReturnValue
  10008f474  mov     x19, x0
  10008f478  adrp    x8, #0x10041d000
  10008f47c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008f480  mov     x1, x21
  10008f484  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008f488  mov     x29, x29
  10008f48c  bl      _objc_retainAutoreleasedReturnValue
  10008f490  mov     x23, x0
  10008f494  mov     x1, x24
  10008f498  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008f49c  mov     x29, x29
  10008f4a0  bl      _objc_retainAutoreleasedReturnValue
  10008f4a4  mov     x25, x0
  10008f4a8  mov     x0, x27
  10008f4ac  ldur    x1, [x29, #-0x58]
  10008f4b0  bl      _objc_msgSend                            ; [arg2 row]
  10008f4b4  mov     x2, x0
  10008f4b8  mov     x0, x25
  10008f4bc  ldur    x1, [x29, #-0x60]
  10008f4c0  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008f4c4  str     x20, [sp, #0x28]
  10008f4c8  mov     x29, x29
  10008f4cc  bl      _objc_retainAutoreleasedReturnValue
  10008f4d0  mov     x26, x0
  10008f4d4  adrp    x2, #0x1003ba000
  10008f4d8  add     x2, x2, #0x2b0                           ; @"displayName"
  10008f4dc  ldr     x1, [sp, #0x68]
  10008f4e0  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"displayName"]
  10008f4e4  mov     x29, x29
  10008f4e8  bl      _objc_retainAutoreleasedReturnValue
  10008f4ec  mov     x8, x0
  10008f4f0  str     x8, [sp, #0x20]
  10008f4f4  mov     x0, x19
  10008f4f8  mov     x1, x28
  10008f4fc  mov     x2, x8
  10008f500  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel] setText:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"displayName"]]
  10008f504  mov     x0, x26
  10008f508  bl      _objc_release
  10008f50c  mov     x0, x25
  10008f510  bl      _objc_release
  10008f514  mov     x0, x23
  10008f518  bl      _objc_release
  10008f51c  mov     x0, x19
  10008f520  bl      _objc_release
  10008f524  adrp    x20, #0x10041d000
  10008f528  ldr     x0, [x20, #0xf70]                        ; class ADInventory
  10008f52c  adrp    x8, #0x100416000
  10008f530  nop
  10008f534  ldr     x26, [x8, #0xec8]
  10008f538  mov     x1, x26
  10008f53c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10008f540  mov     x29, x29
  10008f544  bl      _objc_retainAutoreleasedReturnValue
  10008f548  mov     x19, x0
  10008f54c  adrp    x8, #0x10041d000
  10008f550  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008f554  mov     x1, x21
  10008f558  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008f55c  str     x21, [sp, #0x18]
  10008f560  mov     x29, x29
  10008f564  bl      _objc_retainAutoreleasedReturnValue
  10008f568  mov     x23, x0
  10008f56c  mov     x1, x24
  10008f570  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008f574  mov     x21, x24
  10008f578  mov     x29, x29
  10008f57c  bl      _objc_retainAutoreleasedReturnValue
  10008f580  mov     x25, x0
  10008f584  mov     x0, x27
  10008f588  str     x27, [sp, #0x58]
  10008f58c  ldur    x1, [x29, #-0x58]
  10008f590  bl      _objc_msgSend                            ; [arg2 row]
  10008f594  mov     x2, x0
  10008f598  mov     x0, x25
  10008f59c  ldur    x1, [x29, #-0x60]
  10008f5a0  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008f5a4  mov     x24, x20
  10008f5a8  mov     x20, x28
  10008f5ac  mov     x29, x29
  10008f5b0  bl      _objc_retainAutoreleasedReturnValue
  10008f5b4  mov     x27, x0
  10008f5b8  adrp    x2, #0x1003b9000
  10008f5bc  add     x2, x2, #0xdb0                           ; @"name"
  10008f5c0  ldr     x1, [sp, #0x68]
  10008f5c4  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10008f5c8  mov     x29, x29
  10008f5cc  bl      _objc_retainAutoreleasedReturnValue
  10008f5d0  mov     x22, x0
  10008f5d4  adrp    x8, #0x100417000
  10008f5d8  nop
  10008f5dc  ldr     x1, [x8, #0x1d8]
  10008f5e0  mov     x0, x19
  10008f5e4  mov     x2, x22
  10008f5e8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10008f5ec  mov     x28, x0
  10008f5f0  mov     x0, x22
  10008f5f4  bl      _objc_release
  10008f5f8  mov     x0, x27
  10008f5fc  bl      _objc_release
  10008f600  mov     x0, x25
  10008f604  bl      _objc_release
  10008f608  mov     x0, x23
  10008f60c  bl      _objc_release
  10008f610  mov     x0, x19
  10008f614  bl      _objc_release
  10008f618  cbz     w28, loc_10008fd94                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]] == 0)
  10008f61c  ldr     x0, [x24, #0xf70]                        ; class ADInventory
  10008f620  mov     x1, x26
  10008f624  ldr     x27, [sp, #0x58]
  10008f628  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10008f62c  mov     x26, x20
  10008f630  mov     x20, x21
  10008f634  ldr     x21, [sp, #0x18]
  10008f638  mov     x29, x29
  10008f63c  bl      _objc_retainAutoreleasedReturnValue
  10008f640  mov     x19, x0
  10008f644  adrp    x8, #0x10041d000
  10008f648  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008f64c  mov     x1, x21
  10008f650  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008f654  mov     x29, x29
  10008f658  bl      _objc_retainAutoreleasedReturnValue
  10008f65c  mov     x21, x0
  10008f660  mov     x1, x20
  10008f664  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008f668  mov     x29, x29
  10008f66c  bl      _objc_retainAutoreleasedReturnValue
  10008f670  mov     x23, x0
  10008f674  mov     x0, x27
  10008f678  ldur    x1, [x29, #-0x58]
  10008f67c  ldr     x20, [sp, #0x28]
  10008f680  bl      _objc_msgSend                            ; [arg2 row]
  10008f684  mov     x2, x0
  10008f688  mov     x0, x23
  10008f68c  ldur    x1, [x29, #-0x60]
  10008f690  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008f694  mov     x29, x29
  10008f698  bl      _objc_retainAutoreleasedReturnValue
  10008f69c  mov     x24, x0
  10008f6a0  adrp    x2, #0x1003b9000
  10008f6a4  add     x2, x2, #0xdb0                           ; @"name"
  10008f6a8  ldr     x1, [sp, #0x68]
  10008f6ac  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10008f6b0  mov     x29, x29
  10008f6b4  bl      _objc_retainAutoreleasedReturnValue
  10008f6b8  mov     x25, x0
  10008f6bc  adrp    x8, #0x100417000
  10008f6c0  nop
  10008f6c4  ldr     x1, [x8, #0x458]
  10008f6c8  mov     x0, x19
  10008f6cc  mov     x2, x25
  10008f6d0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10008f6d4  mov     x22, x0
  10008f6d8  mov     x0, x25
  10008f6dc  bl      _objc_release
  10008f6e0  mov     x0, x24
  10008f6e4  bl      _objc_release
  10008f6e8  mov     x0, x23
  10008f6ec  bl      _objc_release
  10008f6f0  mov     x0, x21
  10008f6f4  bl      _objc_release
  10008f6f8  mov     x0, x19
  10008f6fc  bl      _objc_release
  10008f700  mov     x0, x20
  10008f704  ldr     x1, [sp, #0x48]
  10008f708  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel]
  10008f70c  mov     x29, x29
  10008f710  bl      _objc_retainAutoreleasedReturnValue
  10008f714  mov     x19, x0
  10008f718  adrp    x8, #0x10041d000
  10008f71c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10008f720  str     x22, [sp, #8]
  10008f724  ldr     x22, [sp, #0x20]
  10008f728  str     x22, [sp]
  10008f72c  adrp    x2, #0x1003bf000
  10008f730  add     x2, x2, #0xdb0                           ; @"%@ : owned : level %i"
  10008f734  ldr     x1, [sp, #0x30]
  10008f738  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ : owned : level %i", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…, [[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager shared…]
  10008f73c  mov     x29, x29
  10008f740  bl      _objc_retainAutoreleasedReturnValue
  10008f744  mov     x21, x0
  10008f748  mov     x0, x19
  10008f74c  mov     x1, x26
  10008f750  mov     x2, x21
  10008f754  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel] setText:[NSString stringWithFormat:@"%@ : owned : level %i", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…, [[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager shared…]]
  10008f758  b       loc_1000903c4
  10008f75c  b       loc_1000908b8
loc_10008f760:
  10008f760  mov     x0, x20
  10008f764  mov     x1, x23
  10008f768  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008f76c  mov     x29, x29
  10008f770  bl      _objc_retainAutoreleasedReturnValue
  10008f774  mov     x22, x0
  10008f778  adrp    x8, #0x100419000
  10008f77c  nop
  10008f780  ldr     x1, [x8, #0x7e0]
  10008f784  adrp    x2, #0x1003b9000
  10008f788  add     x2, x2, #0xf10                           ; @"Monstro"
  10008f78c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setFontName:@"Monstro"]
  10008f790  mov     x0, x22
  10008f794  bl      _objc_release
  10008f798  mov     x0, x20
  10008f79c  mov     x1, x23
  10008f7a0  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008f7a4  mov     x29, x29
  10008f7a8  bl      _objc_retainAutoreleasedReturnValue
  10008f7ac  mov     x25, x0
  10008f7b0  adrp    x8, #0x10041d000
  10008f7b4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10008f7b8  adrp    x8, #0x100416000
  10008f7bc  nop
  10008f7c0  ldr     x1, [x8, #0xec0]
  10008f7c4  mov     w2, #0x32
  10008f7c8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:50]
  10008f7cc  mov     x29, x29
  10008f7d0  bl      _objc_retainAutoreleasedReturnValue
  10008f7d4  mov     x22, x0
  10008f7d8  adrp    x8, #0x100419000
  10008f7dc  nop
  10008f7e0  ldr     x1, [x8, #0x7e8]
  10008f7e4  mov     x0, x25
  10008f7e8  mov     x2, x22
  10008f7ec  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setFontSize:[NSNumber numberWithInt:50]]
  10008f7f0  mov     x0, x22
  10008f7f4  bl      _objc_release
  10008f7f8  mov     x0, x25
  10008f7fc  bl      _objc_release
  10008f800  mov     x0, x20
  10008f804  mov     x1, x23
  10008f808  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008f80c  mov     x29, x29
  10008f810  bl      _objc_retainAutoreleasedReturnValue
  10008f814  mov     x25, x0
  10008f818  adrp    x8, #0x10041d000
  10008f81c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008f820  adrp    x8, #0x100418000
  10008f824  nop
  10008f828  ldr     x1, [x8, #0x5e8]
  10008f82c  nop
  10008f830  ldr     d0, #0x100181b68                         ; d0 = 0.046875
  10008f834  nop
  10008f838  ldr     d2, #0x100181b70                         ; d2 = 0.3828125
  10008f83c  fmov    d1, #0.18750000
  10008f840  fmov    d3, #1.00000000
  10008f844  bl      _objc_msgSend                            ; [UIColor colorWithRed:0.046875 green:0.1875 blue:0.382812 alpha:1]
  10008f848  mov     x29, x29
  10008f84c  bl      _objc_retainAutoreleasedReturnValue
  10008f850  mov     x22, x0
  10008f854  mov     x0, x25
  10008f858  ldr     x1, [sp, #0x50]
  10008f85c  mov     x2, x22
  10008f860  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setBackgroundColor:[UIColor colorWithRed:0.046875 green:0.1875 blue:0.382812 alpha:1]]
  10008f864  mov     x0, x22
  10008f868  bl      _objc_release
  10008f86c  mov     x0, x25
  10008f870  bl      _objc_release
  10008f874  mov     x0, x20
  10008f878  mov     x1, x23
  10008f87c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008f880  str     x27, [sp, #0x58]
  10008f884  mov     x29, x29
  10008f888  bl      _objc_retainAutoreleasedReturnValue
  10008f88c  mov     x25, x0
  10008f890  adrp    x8, #0x10041d000
  10008f894  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10008f898  adrp    x8, #0x100417000
  10008f89c  nop
  10008f8a0  ldr     x1, [x8, #0x328]
  10008f8a4  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10008f8a8  mov     x29, x29
  10008f8ac  bl      _objc_retainAutoreleasedReturnValue
  10008f8b0  mov     x27, x0
  10008f8b4  adrp    x8, #0x100418000
  10008f8b8  nop
  10008f8bc  ldr     x1, [x8, #0x5f0]
  10008f8c0  mov     x3, #0
  10008f8c4  mov     x0, x25
  10008f8c8  mov     x2, x27
  10008f8cc  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setTitleColor:[UIColor whiteColor] forState:0]
  10008f8d0  mov     x0, x27
  10008f8d4  bl      _objc_release
  10008f8d8  mov     x0, x25
  10008f8dc  bl      _objc_release
  10008f8e0  adrp    x28, #0x10041d000
  10008f8e4  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  10008f8e8  adrp    x8, #0x100416000
  10008f8ec  nop
  10008f8f0  ldr     x25, [x8, #0xec8]
  10008f8f4  mov     x1, x25
  10008f8f8  ldr     x27, [sp, #0x58]
  10008f8fc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10008f900  mov     x29, x29
  10008f904  bl      _objc_retainAutoreleasedReturnValue
  10008f908  mov     x27, x0
  10008f90c  adrp    x8, #0x100417000
  10008f910  nop
  10008f914  ldr     x1, [x8, #0x1d8]
  10008f918  ldr     x2, [sp, #0x60]
  10008f91c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10008f920  mov     x22, x0
  10008f924  mov     x0, x27
  10008f928  bl      _objc_release
  10008f92c  cbz     w22, loc_10008fae0                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]] == 0)
  10008f930  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  10008f934  mov     x1, x25
  10008f938  ldr     x27, [sp, #0x58]
  10008f93c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10008f940  mov     x29, x29
  10008f944  bl      _objc_retainAutoreleasedReturnValue
  10008f948  mov     x25, x0
  10008f94c  adrp    x8, #0x10041d000
  10008f950  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008f954  mov     x1, x21
  10008f958  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008f95c  mov     x29, x29
  10008f960  bl      _objc_retainAutoreleasedReturnValue
  10008f964  mov     x21, x0
  10008f968  mov     x1, x24
  10008f96c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008f970  mov     x29, x29
  10008f974  bl      _objc_retainAutoreleasedReturnValue
  10008f978  mov     x24, x0
  10008f97c  mov     x0, x27
  10008f980  ldur    x1, [x29, #-0x58]
  10008f984  bl      _objc_msgSend                            ; [arg2 row]
  10008f988  mov     x2, x0
  10008f98c  mov     x0, x24
  10008f990  ldur    x1, [x29, #-0x60]
  10008f994  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008f998  mov     x29, x29
  10008f99c  bl      _objc_retainAutoreleasedReturnValue
  10008f9a0  mov     x27, x0
  10008f9a4  adrp    x2, #0x1003b9000
  10008f9a8  add     x2, x2, #0xdb0                           ; @"name"
  10008f9ac  ldr     x1, [sp, #0x68]
  10008f9b0  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10008f9b4  mov     x29, x29
  10008f9b8  bl      _objc_retainAutoreleasedReturnValue
  10008f9bc  mov     x28, x0
  10008f9c0  adrp    x8, #0x100417000
  10008f9c4  nop
  10008f9c8  ldr     x1, [x8, #0x458]
  10008f9cc  mov     x0, x25
  10008f9d0  mov     x2, x28
  10008f9d4  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10008f9d8  mov     x22, x0
  10008f9dc  mov     x0, x28
  10008f9e0  bl      _objc_release
  10008f9e4  mov     x0, x27
  10008f9e8  bl      _objc_release
  10008f9ec  mov     x0, x24
  10008f9f0  bl      _objc_release
  10008f9f4  mov     x0, x21
  10008f9f8  bl      _objc_release
  10008f9fc  mov     x0, x25
  10008fa00  bl      _objc_release
  10008fa04  adrp    x8, #0x100418000
  10008fa08  nop
  10008fa0c  ldr     x1, [x8, #0x5f8]
  10008fa10  mov     x0, x20
  10008fa14  ldr     x27, [sp, #0x58]
  10008fa18  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] statusLevel]
  10008fa1c  mov     x29, x29
  10008fa20  bl      _objc_retainAutoreleasedReturnValue
  10008fa24  mov     x21, x0
  10008fa28  adrp    x8, #0x10041d000
  10008fa2c  ldr     x25, [x8, #0xf10]                        ; class UIImage
  10008fa30  nop
  10008fa34  ldr     x0, [x8, #0xf78]                         ; class NSString
  10008fa38  str     x22, [sp]
  10008fa3c  adrp    x2, #0x1003bc000
  10008fa40  add     x2, x2, #0x7d0                           ; @"badge_level%d.png"
  10008fa44  ldr     x1, [sp, #0x30]
  10008fa48  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"badge_level%d.png", [[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager shared…]
  10008fa4c  mov     x29, x29
  10008fa50  bl      _objc_retainAutoreleasedReturnValue
  10008fa54  mov     x24, x0
  10008fa58  mov     x0, x25
  10008fa5c  mov     x1, x26
  10008fa60  mov     x2, x24
  10008fa64  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"badge_level%d.png", [[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager shared…]]
  10008fa68  mov     x29, x29
  10008fa6c  bl      _objc_retainAutoreleasedReturnValue
  10008fa70  mov     x25, x0
  10008fa74  mov     x0, x21
  10008fa78  mov     x1, x19
  10008fa7c  mov     x2, x25
  10008fa80  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] statusLevel] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"badge_level%d.png", [[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager shared…]]]
  10008fa84  mov     x0, x25
  10008fa88  bl      _objc_release
  10008fa8c  mov     x0, x24
  10008fa90  bl      _objc_release
  10008fa94  mov     x0, x21
  10008fa98  bl      _objc_release
  10008fa9c  cmp     w22, #4
  10008faa0  b.lt    loc_10008ff48                            ; if ([[ADInventory sharedInventory] levelForWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objec… < 4)
  10008faa4  mov     x0, x20
  10008faa8  mov     x1, x23
  10008faac  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008fab0  mov     x29, x29
  10008fab4  bl      _objc_retainAutoreleasedReturnValue
  10008fab8  mov     x19, x0
  10008fabc  adrp    x8, #0x100417000
  10008fac0  nop
  10008fac4  ldr     x1, [x8, #0x920]
  10008fac8  mov     x3, #0
  10008facc  adrp    x2, #0x1003bf000
  10008fad0  add     x2, x2, #0xd70                           ; @"View"
  10008fad4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setTitle:@"View" forState:0]
  10008fad8  b       loc_10008ff7c
  10008fadc  b       loc_100090878
loc_10008fae0:
  10008fae0  adrp    x8, #0x100418000
  10008fae4  nop
  10008fae8  ldr     x1, [x8, #0x5f8]
  10008faec  mov     x0, x20
  10008faf0  ldr     x27, [sp, #0x58]
  10008faf4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] statusLevel]
  10008faf8  mov     x29, x29
  10008fafc  bl      _objc_retainAutoreleasedReturnValue
  10008fb00  mov     x22, x0
  10008fb04  mov     x2, #0
  10008fb08  mov     x1, x19
  10008fb0c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] statusLevel] setImage:0]
  10008fb10  mov     x0, x22
  10008fb14  bl      _objc_release
  10008fb18  adrp    x8, #0x10041d000
  10008fb1c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008fb20  mov     x1, x21
  10008fb24  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008fb28  mov     x29, x29
  10008fb2c  bl      _objc_retainAutoreleasedReturnValue
  10008fb30  mov     x19, x0
  10008fb34  mov     x1, x24
  10008fb38  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008fb3c  mov     x29, x29
  10008fb40  bl      _objc_retainAutoreleasedReturnValue
  10008fb44  mov     x25, x0
  10008fb48  mov     x0, x27
  10008fb4c  ldur    x1, [x29, #-0x58]
  10008fb50  bl      _objc_msgSend                            ; [arg2 row]
  10008fb54  mov     x2, x0
  10008fb58  mov     x0, x25
  10008fb5c  ldur    x1, [x29, #-0x60]
  10008fb60  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008fb64  mov     x29, x29
  10008fb68  bl      _objc_retainAutoreleasedReturnValue
  10008fb6c  mov     x26, x0
  10008fb70  adrp    x2, #0x1003b9000
  10008fb74  add     x2, x2, #0xd70                           ; @"price"
  10008fb78  ldr     x1, [sp, #0x68]
  10008fb7c  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"]
  10008fb80  mov     x29, x29
  10008fb84  bl      _objc_retainAutoreleasedReturnValue
  10008fb88  mov     x22, x0
  10008fb8c  bl      _objc_release
  10008fb90  mov     x0, x26
  10008fb94  bl      _objc_release
  10008fb98  mov     x0, x25
  10008fb9c  bl      _objc_release
  10008fba0  mov     x0, x19
  10008fba4  bl      _objc_release
  10008fba8  adrp    x8, #0x10041d000
  10008fbac  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008fbb0  cbz     x22, loc_1000900e8                       ; if ([[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"] == 0)
  10008fbb4  mov     x1, x21
  10008fbb8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008fbbc  mov     x29, x29
  10008fbc0  bl      _objc_retainAutoreleasedReturnValue
  10008fbc4  mov     x19, x0
  10008fbc8  mov     x1, x24
  10008fbcc  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008fbd0  mov     x29, x29
  10008fbd4  bl      _objc_retainAutoreleasedReturnValue
  10008fbd8  mov     x24, x0
  10008fbdc  mov     x0, x27
  10008fbe0  ldur    x1, [x29, #-0x58]
  10008fbe4  bl      _objc_msgSend                            ; [arg2 row]
  10008fbe8  mov     x2, x0
  10008fbec  mov     x0, x24
  10008fbf0  ldur    x1, [x29, #-0x60]
  10008fbf4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008fbf8  mov     x29, x29
  10008fbfc  bl      _objc_retainAutoreleasedReturnValue
  10008fc00  mov     x25, x0
  10008fc04  adrp    x2, #0x1003b9000
  10008fc08  add     x2, x2, #0xd70                           ; @"price"
  10008fc0c  ldr     x1, [sp, #0x68]
  10008fc10  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"]
  10008fc14  mov     x29, x29
  10008fc18  bl      _objc_retainAutoreleasedReturnValue
  10008fc1c  mov     x22, x0
  10008fc20  adrp    x8, #0x100417000
  10008fc24  nop
  10008fc28  ldr     x1, [x8, #0x110]
  10008fc2c  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"] intValue]
  10008fc30  mov     x21, x0
  10008fc34  mov     x0, x22
  10008fc38  bl      _objc_release
  10008fc3c  mov     x0, x25
  10008fc40  bl      _objc_release
  10008fc44  mov     x0, x24
  10008fc48  bl      _objc_release
  10008fc4c  mov     x0, x19
  10008fc50  bl      _objc_release
  10008fc54  mov     x0, x20
  10008fc58  mov     x1, x23
  10008fc5c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008fc60  mov     x29, x29
  10008fc64  bl      _objc_retainAutoreleasedReturnValue
  10008fc68  mov     x19, x0
  10008fc6c  adrp    x8, #0x100417000
  10008fc70  nop
  10008fc74  ldr     x1, [x8, #0x90]
  10008fc78  mov     x2, x21
  10008fc7c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setCoins:[[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"] intValue]]
  10008fc80  mov     x0, x19
  10008fc84  bl      _objc_release
  10008fc88  mov     x0, x20
  10008fc8c  mov     x1, x23
  10008fc90  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008fc94  mov     x29, x29
  10008fc98  bl      _objc_retainAutoreleasedReturnValue
  10008fc9c  mov     x19, x0
  10008fca0  adrp    x8, #0x100417000
  10008fca4  nop
  10008fca8  ldr     x1, [x8, #0x878]
  10008fcac  mov     w2, #0
  10008fcb0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setEnabled:0]
  10008fcb4  mov     x0, x19
  10008fcb8  bl      _objc_release
  10008fcbc  mov     x0, x20
  10008fcc0  mov     x1, x23
  10008fcc4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008fcc8  mov     x29, x29
  10008fccc  bl      _objc_retainAutoreleasedReturnValue
  10008fcd0  mov     x19, x0
  10008fcd4  adrp    x8, #0x10041d000
  10008fcd8  ldr     x0, [x8, #0xf78]                         ; class NSString
  10008fcdc  str     x21, [sp]
  10008fce0  adrp    x2, #0x1003ba000
  10008fce4  add     x2, x2, #0xc50                           ; @"%i"
  10008fce8  ldr     x1, [sp, #0x30]
  10008fcec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…]
  10008fcf0  mov     x29, x29
  10008fcf4  bl      _objc_retainAutoreleasedReturnValue
  10008fcf8  mov     x21, x0
  10008fcfc  adrp    x8, #0x100417000
  10008fd00  nop
  10008fd04  ldr     x1, [x8, #0x920]
  10008fd08  mov     x3, #0
  10008fd0c  mov     x0, x19
  10008fd10  mov     x2, x21
  10008fd14  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setTitle:[NSString stringWithFormat:@"%i", [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…] forState:0]
  10008fd18  mov     x0, x21
  10008fd1c  bl      _objc_release
  10008fd20  mov     x0, x19
  10008fd24  bl      _objc_release
  10008fd28  mov     x0, x20
  10008fd2c  mov     x1, x23
  10008fd30  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008fd34  mov     x29, x29
  10008fd38  bl      _objc_retainAutoreleasedReturnValue
  10008fd3c  mov     x19, x0
  10008fd40  adrp    x8, #0x100418000
  10008fd44  nop
  10008fd48  ldr     x1, [x8, #0xc58]
  10008fd4c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] centerButtonTextWithCoinsImage]
  10008fd50  mov     x0, x19
  10008fd54  bl      _objc_release
  10008fd58  adrp    x8, #0x100419000
  10008fd5c  nop
  10008fd60  ldr     x1, [x8, #0xfb8]
  10008fd64  mov     x0, x20
  10008fd68  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] lockIcon]
  10008fd6c  mov     x29, x29
  10008fd70  bl      _objc_retainAutoreleasedReturnValue
  10008fd74  mov     x19, x0
  10008fd78  adrp    x8, #0x100416000
  10008fd7c  nop
  10008fd80  ldr     x1, [x8, #0xba8]
  10008fd84  mov     w2, #0
  10008fd88  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] lockIcon] setHidden:0]
  10008fd8c  b       loc_1000902c0
  10008fd90  b       loc_100090878
loc_10008fd94:
  10008fd94  adrp    x8, #0x10041d000
  10008fd98  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008fd9c  ldr     x19, [sp, #0x18]
  10008fda0  mov     x1, x19
  10008fda4  ldr     x27, [sp, #0x58]
  10008fda8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008fdac  mov     x26, x20
  10008fdb0  mov     x20, x21
  10008fdb4  mov     x21, x19
  10008fdb8  mov     x29, x29
  10008fdbc  bl      _objc_retainAutoreleasedReturnValue
  10008fdc0  mov     x19, x0
  10008fdc4  mov     x1, x20
  10008fdc8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008fdcc  mov     x29, x29
  10008fdd0  bl      _objc_retainAutoreleasedReturnValue
  10008fdd4  mov     x23, x0
  10008fdd8  mov     x0, x27
  10008fddc  ldur    x1, [x29, #-0x58]
  10008fde0  bl      _objc_msgSend                            ; [arg2 row]
  10008fde4  mov     x2, x0
  10008fde8  mov     x0, x23
  10008fdec  ldur    x1, [x29, #-0x60]
  10008fdf0  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008fdf4  mov     x29, x29
  10008fdf8  bl      _objc_retainAutoreleasedReturnValue
  10008fdfc  mov     x25, x0
  10008fe00  adrp    x2, #0x1003b9000
  10008fe04  add     x2, x2, #0xd70                           ; @"price"
  10008fe08  ldr     x1, [sp, #0x68]
  10008fe0c  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"]
  10008fe10  mov     x29, x29
  10008fe14  bl      _objc_retainAutoreleasedReturnValue
  10008fe18  mov     x22, x0
  10008fe1c  bl      _objc_release
  10008fe20  mov     x0, x25
  10008fe24  bl      _objc_release
  10008fe28  mov     x0, x23
  10008fe2c  bl      _objc_release
  10008fe30  mov     x0, x19
  10008fe34  bl      _objc_release
  10008fe38  adrp    x8, #0x10041d000
  10008fe3c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10008fe40  cbz     x22, loc_1000902c8                       ; if ([[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"] == 0)
  10008fe44  mov     x1, x21
  10008fe48  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10008fe4c  mov     x29, x29
  10008fe50  bl      _objc_retainAutoreleasedReturnValue
  10008fe54  mov     x19, x0
  10008fe58  mov     x1, x20
  10008fe5c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10008fe60  mov     x29, x29
  10008fe64  bl      _objc_retainAutoreleasedReturnValue
  10008fe68  mov     x21, x0
  10008fe6c  mov     x0, x27
  10008fe70  ldur    x1, [x29, #-0x58]
  10008fe74  bl      _objc_msgSend                            ; [arg2 row]
  10008fe78  mov     x2, x0
  10008fe7c  mov     x0, x21
  10008fe80  ldur    x1, [x29, #-0x60]
  10008fe84  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10008fe88  mov     x29, x29
  10008fe8c  bl      _objc_retainAutoreleasedReturnValue
  10008fe90  mov     x23, x0
  10008fe94  adrp    x2, #0x1003b9000
  10008fe98  add     x2, x2, #0xd70                           ; @"price"
  10008fe9c  ldr     x1, [sp, #0x68]
  10008fea0  ldr     x20, [sp, #0x28]
  10008fea4  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"]
  10008fea8  mov     x29, x29
  10008feac  bl      _objc_retainAutoreleasedReturnValue
  10008feb0  mov     x24, x0
  10008feb4  adrp    x8, #0x100417000
  10008feb8  nop
  10008febc  ldr     x1, [x8, #0x110]
  10008fec0  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"price"] intValue]
  10008fec4  mov     x22, x0
  10008fec8  mov     x0, x24
  10008fecc  bl      _objc_release
  10008fed0  mov     x0, x23
  10008fed4  bl      _objc_release
  10008fed8  mov     x0, x21
  10008fedc  bl      _objc_release
  10008fee0  mov     x0, x19
  10008fee4  bl      _objc_release
  10008fee8  mov     x0, x20
  10008feec  ldr     x1, [sp, #0x48]
  10008fef0  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel]
  10008fef4  mov     x29, x29
  10008fef8  bl      _objc_retainAutoreleasedReturnValue
  10008fefc  mov     x19, x0
  10008ff00  adrp    x8, #0x10041d000
  10008ff04  ldr     x0, [x8, #0xf78]                         ; class NSString
  10008ff08  str     x22, [sp, #8]
  10008ff0c  ldr     x22, [sp, #0x20]
  10008ff10  str     x22, [sp]
  10008ff14  adrp    x2, #0x1003bf000
  10008ff18  add     x2, x2, #0xdd0                           ; @"%@ : buy for %i coins"
  10008ff1c  ldr     x1, [sp, #0x30]
  10008ff20  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ : buy for %i coins", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…, [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…]
  10008ff24  mov     x29, x29
  10008ff28  bl      _objc_retainAutoreleasedReturnValue
  10008ff2c  mov     x21, x0
  10008ff30  mov     x0, x19
  10008ff34  mov     x1, x26
  10008ff38  mov     x2, x21
  10008ff3c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel] setText:[NSString stringWithFormat:@"%@ : buy for %i coins", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…, [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…]]
  10008ff40  b       loc_1000903c4
  10008ff44  b       loc_1000908b8
loc_10008ff48:
  10008ff48  mov     x0, x20
  10008ff4c  mov     x1, x23
  10008ff50  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008ff54  mov     x29, x29
  10008ff58  bl      _objc_retainAutoreleasedReturnValue
  10008ff5c  mov     x19, x0
  10008ff60  adrp    x8, #0x100417000
  10008ff64  nop
  10008ff68  ldr     x1, [x8, #0x920]
  10008ff6c  mov     x3, #0
  10008ff70  adrp    x2, #0x1003bf000
  10008ff74  add     x2, x2, #0xd90                           ; @"Upgrade"
  10008ff78  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setTitle:@"Upgrade" forState:0]
loc_10008ff7c:
  10008ff7c  mov     x0, x19
  10008ff80  bl      _objc_release
  10008ff84  adrp    x8, #0x100419000
  10008ff88  nop
  10008ff8c  ldr     x1, [x8, #0xfb8]
  10008ff90  mov     x0, x20
  10008ff94  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] lockIcon]
  10008ff98  mov     x29, x29
  10008ff9c  bl      _objc_retainAutoreleasedReturnValue
  10008ffa0  mov     x19, x0
  10008ffa4  adrp    x8, #0x100416000
  10008ffa8  nop
  10008ffac  ldr     x1, [x8, #0xba8]
  10008ffb0  mov     w2, #1
  10008ffb4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] lockIcon] setHidden:1]
  10008ffb8  mov     x0, x19
  10008ffbc  bl      _objc_release
  10008ffc0  mov     x0, x20
  10008ffc4  mov     x1, x23
  10008ffc8  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  10008ffcc  mov     x29, x29
  10008ffd0  bl      _objc_retainAutoreleasedReturnValue
  10008ffd4  mov     x19, x0
  10008ffd8  adrp    x8, #0x100417000
  10008ffdc  nop
  10008ffe0  ldr     x1, [x8, #0x878]
  10008ffe4  mov     w2, #1
  10008ffe8  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setEnabled:1]
  10008ffec  mov     x0, x19
  10008fff0  bl      _objc_release
  10008fff4  mov     x0, x20
  10008fff8  mov     x1, x23
  10008fffc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  100090000  mov     x29, x29
  100090004  bl      _objc_retainAutoreleasedReturnValue
  100090008  mov     x19, x0
  10009000c  adrp    x8, #0x100418000
  100090010  nop
  100090014  ldr     x1, [x8, #0xc50]
  100090018  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] centerButtonWithoutImage]
  10009001c  mov     x0, x19
  100090020  bl      _objc_release
  100090024  mov     x0, x20
  100090028  mov     x1, x23
  10009002c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  100090030  mov     x29, x29
  100090034  bl      _objc_retainAutoreleasedReturnValue
  100090038  mov     x19, x0
  10009003c  adrp    x8, #0x100417000
  100090040  nop
  100090044  ldr     x1, [x8, #0xf20]
  100090048  mov     w2, #1
  10009004c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setOpaque:1]
  100090050  mov     x0, x19
  100090054  bl      _objc_release
  100090058  mov     x0, x20
  10009005c  ldr     x1, [sp, #0x48]
  100090060  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel]
  100090064  mov     x29, x29
  100090068  bl      _objc_retainAutoreleasedReturnValue
  10009006c  mov     x21, x0
  100090070  adrp    x8, #0x100417000
  100090074  nop
  100090078  ldr     x19, [x8, #0x828]
  10009007c  fmov    d0, #1.00000000
  100090080  mov     x1, x19
  100090084  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel] setAlpha:1]
  100090088  mov     x0, x21
  10009008c  bl      _objc_release
  100090090  mov     x0, x20
  100090094  ldr     x1, [sp, #0x20]
  100090098  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] detailLabel]
  10009009c  mov     x29, x29
  1000900a0  bl      _objc_retainAutoreleasedReturnValue
  1000900a4  mov     x21, x0
  1000900a8  fmov    d0, #1.00000000
  1000900ac  mov     x1, x19
  1000900b0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] detailLabel] setAlpha:1]
  1000900b4  mov     x0, x21
  1000900b8  bl      _objc_release
  1000900bc  mov     x0, x20
  1000900c0  ldr     x1, [sp, #0x18]
  1000900c4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] image]
  1000900c8  mov     x29, x29
  1000900cc  bl      _objc_retainAutoreleasedReturnValue
  1000900d0  mov     x21, x0
  1000900d4  fmov    d0, #1.00000000
  1000900d8  mov     x1, x19
  1000900dc  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] image] setAlpha:1]
  1000900e0  mov     x0, x21
  1000900e4  b       loc_1000903dc
loc_1000900e8:
  1000900e8  mov     x1, x21
  1000900ec  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000900f0  mov     x29, x29
  1000900f4  bl      _objc_retainAutoreleasedReturnValue
  1000900f8  mov     x19, x0
  1000900fc  mov     x1, x24
  100090100  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100090104  mov     x29, x29
  100090108  bl      _objc_retainAutoreleasedReturnValue
  10009010c  mov     x24, x0
  100090110  mov     x0, x27
  100090114  ldur    x1, [x29, #-0x58]
  100090118  bl      _objc_msgSend                            ; [arg2 row]
  10009011c  mov     x2, x0
  100090120  mov     x0, x24
  100090124  ldur    x1, [x29, #-0x60]
  100090128  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10009012c  mov     x29, x29
  100090130  bl      _objc_retainAutoreleasedReturnValue
  100090134  mov     x25, x0
  100090138  adrp    x2, #0x1003b9000
  10009013c  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  100090140  ldr     x1, [sp, #0x68]
  100090144  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"priceInDiamonds"]
  100090148  mov     x29, x29
  10009014c  bl      _objc_retainAutoreleasedReturnValue
  100090150  mov     x22, x0
  100090154  adrp    x8, #0x100417000
  100090158  nop
  10009015c  ldr     x1, [x8, #0x110]
  100090160  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"priceInDiamonds"] intValue]
  100090164  mov     x21, x0
  100090168  mov     x0, x22
  10009016c  bl      _objc_release
  100090170  mov     x0, x25
  100090174  bl      _objc_release
  100090178  mov     x0, x24
  10009017c  bl      _objc_release
  100090180  mov     x0, x19
  100090184  bl      _objc_release
  100090188  mov     x0, x20
  10009018c  mov     x1, x23
  100090190  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  100090194  mov     x29, x29
  100090198  bl      _objc_retainAutoreleasedReturnValue
  10009019c  mov     x19, x0
  1000901a0  adrp    x8, #0x100417000
  1000901a4  nop
  1000901a8  ldr     x1, [x8, #0x98]
  1000901ac  mov     x2, x21
  1000901b0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setDiamonds:[[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"priceInDiamonds"] intValue]]
  1000901b4  mov     x0, x19
  1000901b8  bl      _objc_release
  1000901bc  mov     x0, x20
  1000901c0  mov     x1, x23
  1000901c4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  1000901c8  mov     x29, x29
  1000901cc  bl      _objc_retainAutoreleasedReturnValue
  1000901d0  mov     x19, x0
  1000901d4  adrp    x8, #0x100417000
  1000901d8  nop
  1000901dc  ldr     x1, [x8, #0x878]
  1000901e0  mov     w2, #0
  1000901e4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setEnabled:0]
  1000901e8  mov     x0, x19
  1000901ec  bl      _objc_release
  1000901f0  mov     x0, x20
  1000901f4  mov     x1, x23
  1000901f8  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  1000901fc  mov     x29, x29
  100090200  bl      _objc_retainAutoreleasedReturnValue
  100090204  mov     x19, x0
  100090208  adrp    x8, #0x10041d000
  10009020c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100090210  str     x21, [sp]
  100090214  adrp    x2, #0x1003ba000
  100090218  add     x2, x2, #0xc50                           ; @"%i"
  10009021c  ldr     x1, [sp, #0x30]
  100090220  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…]
  100090224  mov     x29, x29
  100090228  bl      _objc_retainAutoreleasedReturnValue
  10009022c  mov     x21, x0
  100090230  adrp    x8, #0x100417000
  100090234  nop
  100090238  ldr     x1, [x8, #0x920]
  10009023c  mov     x3, #0
  100090240  mov     x0, x19
  100090244  mov     x2, x21
  100090248  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] setTitle:[NSString stringWithFormat:@"%i", [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…] forState:0]
  10009024c  mov     x0, x21
  100090250  bl      _objc_release
  100090254  mov     x0, x19
  100090258  bl      _objc_release
  10009025c  mov     x0, x20
  100090260  mov     x1, x23
  100090264  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton]
  100090268  mov     x29, x29
  10009026c  bl      _objc_retainAutoreleasedReturnValue
  100090270  mov     x19, x0
  100090274  adrp    x8, #0x100417000
  100090278  nop
  10009027c  ldr     x1, [x8, #0xa90]
  100090280  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] buyUpgradeButton] centerButtonTextWithDiamondsImage]
  100090284  mov     x0, x19
  100090288  bl      _objc_release
  10009028c  adrp    x8, #0x100419000
  100090290  nop
  100090294  ldr     x1, [x8, #0xfb8]
  100090298  mov     x0, x20
  10009029c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] lockIcon]
  1000902a0  mov     x29, x29
  1000902a4  bl      _objc_retainAutoreleasedReturnValue
  1000902a8  mov     x19, x0
  1000902ac  adrp    x8, #0x100416000
  1000902b0  nop
  1000902b4  ldr     x1, [x8, #0xba8]
  1000902b8  mov     w2, #0
  1000902bc  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] lockIcon] setHidden:0]
loc_1000902c0:
  1000902c0  mov     x0, x19
  1000902c4  b       loc_1000903dc
loc_1000902c8:
  1000902c8  mov     x1, x21
  1000902cc  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000902d0  mov     x29, x29
  1000902d4  bl      _objc_retainAutoreleasedReturnValue
  1000902d8  mov     x19, x0
  1000902dc  mov     x1, x20
  1000902e0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  1000902e4  mov     x29, x29
  1000902e8  bl      _objc_retainAutoreleasedReturnValue
  1000902ec  mov     x21, x0
  1000902f0  mov     x0, x27
  1000902f4  ldur    x1, [x29, #-0x58]
  1000902f8  bl      _objc_msgSend                            ; [arg2 row]
  1000902fc  mov     x2, x0
  100090300  mov     x0, x21
  100090304  ldur    x1, [x29, #-0x60]
  100090308  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  10009030c  mov     x29, x29
  100090310  bl      _objc_retainAutoreleasedReturnValue
  100090314  mov     x23, x0
  100090318  adrp    x2, #0x1003b9000
  10009031c  add     x2, x2, #0xd90                           ; @"priceInDiamonds"
  100090320  ldr     x1, [sp, #0x68]
  100090324  ldr     x20, [sp, #0x28]
  100090328  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"priceInDiamonds"]
  10009032c  mov     x29, x29
  100090330  bl      _objc_retainAutoreleasedReturnValue
  100090334  mov     x24, x0
  100090338  adrp    x8, #0x100417000
  10009033c  nop
  100090340  ldr     x1, [x8, #0x110]
  100090344  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"priceInDiamonds"] intValue]
  100090348  mov     x22, x0
  10009034c  mov     x0, x24
  100090350  bl      _objc_release
  100090354  mov     x0, x23
  100090358  bl      _objc_release
  10009035c  mov     x0, x21
  100090360  bl      _objc_release
  100090364  mov     x0, x19
  100090368  bl      _objc_release
  10009036c  mov     x0, x20
  100090370  ldr     x1, [sp, #0x48]
  100090374  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel]
  100090378  mov     x29, x29
  10009037c  bl      _objc_retainAutoreleasedReturnValue
  100090380  mov     x19, x0
  100090384  adrp    x8, #0x10041d000
  100090388  ldr     x0, [x8, #0xf78]                         ; class NSString
  10009038c  str     x22, [sp, #8]
  100090390  ldr     x22, [sp, #0x20]
  100090394  str     x22, [sp]
  100090398  adrp    x2, #0x1003bf000
  10009039c  add     x2, x2, #0xdf0                           ; @"%@ : buy for %i diamonds"
  1000903a0  ldr     x1, [sp, #0x30]
  1000903a4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ : buy for %i diamonds", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…, [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…]
  1000903a8  mov     x29, x29
  1000903ac  bl      _objc_retainAutoreleasedReturnValue
  1000903b0  mov     x21, x0
  1000903b4  mov     x0, x19
  1000903b8  mov     x1, x26
  1000903bc  mov     x2, x21
  1000903c0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] titleLabel] setText:[NSString stringWithFormat:@"%@ : buy for %i diamonds", [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2…, [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg…]]
loc_1000903c4:
  1000903c4  mov     x0, x21
  1000903c8  bl      _objc_release
  1000903cc  mov     x0, x19
  1000903d0  bl      _objc_release
  1000903d4  ldr     x20, [sp, #0x28]
  1000903d8  mov     x0, x22
loc_1000903dc:
  1000903dc  bl      _objc_release
  1000903e0  ldr     x1, [sp, #0x38]
  1000903e4  mov     x2, #0
  1000903e8  mov     x0, x20
  1000903ec  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] setSelectionStyle:0]
  1000903f0  adrp    x8, #0x10041d000
  1000903f4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000903f8  ldr     x1, [sp, #0x40]
  1000903fc  bl      _objc_msgSend                            ; [UIColor clearColor]
  100090400  mov     x29, x29
  100090404  bl      _objc_retainAutoreleasedReturnValue
  100090408  mov     x19, x0
  10009040c  mov     x0, x20
  100090410  ldr     x1, [sp, #0x50]
  100090414  mov     x2, x19
  100090418  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] setBackgroundColor:[UIColor clearColor]]
  10009041c  mov     x0, x19
  100090420  bl      _objc_release
  100090424  adrp    x8, #0x100417000
  100090428  nop
  10009042c  ldr     x1, [x8, #0xf20]
  100090430  mov     w2, #1
  100090434  mov     x0, x20
  100090438  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"ArmoryShopCell"] setOpaque:1]
  10009043c  ldr     x0, [sp, #0x60]
  100090440  bl      _objc_release
  100090444  mov     x0, x27
  100090448  bl      _objc_release
  10009044c  mov     x0, x20
  100090450  sub     sp, x29, #0x50
  100090454  ldp     x29, x30, [sp, #0x50]
  100090458  ldp     x20, x19, [sp, #0x40]
  10009045c  ldp     x22, x21, [sp, #0x30]
  100090460  ldp     x24, x23, [sp, #0x20]
  100090464  ldp     x26, x25, [sp, #0x10]
  100090468  ldp     x28, x27, [sp], #0x60
  10009046c  b       _objc_autoreleaseReturnValue
  100090470  str     x20, [sp, #0x28]
  100090474  str     x27, [sp, #0x58]
  100090478  stur    x0, [x29, #-0x58]
  10009047c  b       loc_1000908d4
  100090480  str     x20, [sp, #0x28]
  100090484  str     x27, [sp, #0x58]
  100090488  stur    x0, [x29, #-0x58]
  10009048c  b       loc_1000904e8
  100090490  b       loc_100090578
  100090494  b       loc_100090578
  100090498  str     x27, [sp, #0x58]
  10009049c  stur    x0, [x29, #-0x58]
  1000904a0  b       loc_1000908cc
  1000904a4  str     x27, [sp, #0x58]
  1000904a8  stur    x0, [x29, #-0x58]
  1000904ac  mov     x0, x20
  1000904b0  b       loc_1000908e0
  1000904b4  str     x20, [sp, #0x28]
  1000904b8  str     x27, [sp, #0x58]
  1000904bc  stur    x0, [x29, #-0x58]
  1000904c0  b       loc_1000908dc
  1000904c4  str     x20, [sp, #0x28]
  1000904c8  str     x27, [sp, #0x58]
  1000904cc  stur    x0, [x29, #-0x58]
  1000904d0  b       loc_1000904f0
  1000904d4  str     x20, [sp, #0x28]
  1000904d8  str     x27, [sp, #0x58]
  1000904dc  stur    x0, [x29, #-0x58]
  1000904e0  mov     x0, x26
  1000904e4  bl      _objc_release
loc_1000904e8:
  1000904e8  mov     x0, x25
  1000904ec  bl      _objc_release
loc_1000904f0:
  1000904f0  mov     x0, x23
  1000904f4  b       loc_1000908d8
  1000904f8  b       loc_10009059c
  1000904fc  b       loc_10009059c
  100090500  b       loc_10009059c
  100090504  b       loc_1000905a8
  100090508  b       loc_100090518
  10009050c  b       loc_100090520
  100090510  b       loc_10009059c
  100090514  b       loc_1000905a8
loc_100090518:
  100090518  str     x20, [sp, #0x28]
  10009051c  b       loc_1000905b8
loc_100090520:
  100090520  str     x20, [sp, #0x28]
  100090524  str     x27, [sp, #0x58]
  100090528  stur    x0, [x29, #-0x58]
  10009052c  mov     x0, x22
  100090530  b       loc_1000905d0
  100090534  str     x20, [sp, #0x28]
  100090538  str     x27, [sp, #0x58]
  10009053c  stur    x0, [x29, #-0x58]
  100090540  b       loc_100090570
  100090544  str     x20, [sp, #0x28]
  100090548  str     x27, [sp, #0x58]
  10009054c  stur    x0, [x29, #-0x58]
  100090550  b       loc_100090568
  100090554  str     x20, [sp, #0x28]
  100090558  str     x27, [sp, #0x58]
  10009055c  stur    x0, [x29, #-0x58]
  100090560  mov     x0, x22
  100090564  bl      _objc_release
loc_100090568:
  100090568  mov     x0, x25
  10009056c  bl      _objc_release
loc_100090570:
  100090570  mov     x0, x23
  100090574  b       loc_1000908d0
loc_100090578:
  100090578  str     x20, [sp, #0x28]
  10009057c  str     x27, [sp, #0x58]
  100090580  stur    x0, [x29, #-0x58]
  100090584  b       loc_1000905dc
  100090588  stur    x0, [x29, #-0x58]
  10009058c  b       loc_100090798
  100090590  b       loc_10009059c
  100090594  b       loc_10009059c
  100090598  b       loc_10009059c
loc_10009059c:
  10009059c  str     x20, [sp, #0x28]
  1000905a0  str     x27, [sp, #0x58]
  1000905a4  b       loc_10009087c
loc_1000905a8:
  1000905a8  str     x20, [sp, #0x28]
  1000905ac  str     x27, [sp, #0x58]
  1000905b0  stur    x0, [x29, #-0x58]
  1000905b4  b       loc_1000905e4
loc_1000905b8:
  1000905b8  str     x27, [sp, #0x58]
  1000905bc  stur    x0, [x29, #-0x58]
  1000905c0  b       loc_1000905d4
  1000905c4  str     x27, [sp, #0x58]
  1000905c8  stur    x0, [x29, #-0x58]
  1000905cc  ldr     x0, [sp, #0x20]
loc_1000905d0:
  1000905d0  bl      _objc_release
loc_1000905d4:
  1000905d4  mov     x0, x26
  1000905d8  bl      _objc_release
loc_1000905dc:
  1000905dc  mov     x0, x25
  1000905e0  bl      _objc_release
loc_1000905e4:
  1000905e4  mov     x0, x23
  1000905e8  bl      _objc_release
  1000905ec  b       loc_100090880
  1000905f0  str     x27, [sp, #0x58]
  1000905f4  stur    x0, [x29, #-0x58]
  1000905f8  b       loc_1000908c4
  1000905fc  str     x27, [sp, #0x58]
  100090600  stur    x0, [x29, #-0x58]
  100090604  b       loc_1000907a0
  100090608  stur    x0, [x29, #-0x58]
  10009060c  b       loc_10009061c
  100090610  stur    x0, [x29, #-0x58]
  100090614  mov     x0, x22
  100090618  bl      _objc_release
loc_10009061c:
  10009061c  mov     x0, x27
  100090620  bl      _objc_release
  100090624  b       loc_100090798
  100090628  stur    x0, [x29, #-0x58]
  10009062c  b       loc_1000908a4
  100090630  str     x20, [sp, #0x28]
  100090634  str     x27, [sp, #0x58]
  100090638  b       loc_100090760
  10009063c  b       loc_100090644
  100090640  b       loc_100090654
loc_100090644:
  100090644  str     x20, [sp, #0x28]
  100090648  str     x27, [sp, #0x58]
  10009064c  stur    x0, [x29, #-0x58]
  100090650  b       loc_100090728
loc_100090654:
  100090654  str     x20, [sp, #0x28]
  100090658  str     x27, [sp, #0x58]
  10009065c  stur    x0, [x29, #-0x58]
  100090660  mov     x0, x22
  100090664  b       loc_100090724
  100090668  b       loc_1000906dc
  10009066c  str     x20, [sp, #0x28]
  100090670  stur    x0, [x29, #-0x58]
  100090674  mov     x0, x27
  100090678  b       loc_100090724
  10009067c  str     x20, [sp, #0x28]
  100090680  stur    x0, [x29, #-0x58]
  100090684  mov     x0, x27
  100090688  b       loc_1000908d0
  10009068c  str     x20, [sp, #0x28]
  100090690  stur    x0, [x29, #-0x58]
  100090694  b       loc_100090718
  100090698  str     x20, [sp, #0x28]
  10009069c  stur    x0, [x29, #-0x58]
  1000906a0  b       loc_100090780
  1000906a4  stur    x0, [x29, #-0x58]
  1000906a8  b       loc_1000907a0
  1000906ac  b       loc_1000907d0
  1000906b0  b       loc_1000908b8
  1000906b4  stur    x0, [x29, #-0x58]
  1000906b8  b       loc_1000908c4
  1000906bc  b       loc_1000908b8
  1000906c0  b       loc_100090898
  1000906c4  stur    x0, [x29, #-0x58]
  1000906c8  mov     x0, x25
  1000906cc  bl      _objc_release
  1000906d0  b       loc_10009089c
  1000906d4  stur    x0, [x29, #-0x58]
  1000906d8  b       loc_1000908c4
loc_1000906dc:
  1000906dc  str     x20, [sp, #0x28]
  1000906e0  stur    x0, [x29, #-0x58]
  1000906e4  b       loc_100090728
  1000906e8  str     x20, [sp, #0x28]
  1000906ec  stur    x0, [x29, #-0x58]
  1000906f0  b       loc_100090720
  1000906f4  str     x20, [sp, #0x28]
  1000906f8  stur    x0, [x29, #-0x58]
  1000906fc  b       loc_100090710
  100090700  str     x20, [sp, #0x28]
  100090704  stur    x0, [x29, #-0x58]
  100090708  mov     x0, x28
  10009070c  bl      _objc_release
loc_100090710:
  100090710  mov     x0, x27
  100090714  bl      _objc_release
loc_100090718:
  100090718  mov     x0, x24
  10009071c  bl      _objc_release
loc_100090720:
  100090720  mov     x0, x21
loc_100090724:
  100090724  bl      _objc_release
loc_100090728:
  100090728  mov     x0, x25
  10009072c  b       loc_1000908d0
  100090730  b       loc_1000907c0
  100090734  str     x20, [sp, #0x28]
  100090738  stur    x0, [x29, #-0x58]
  10009073c  b       loc_100090750
  100090740  str     x20, [sp, #0x28]
  100090744  stur    x0, [x29, #-0x58]
  100090748  mov     x0, x25
  10009074c  bl      _objc_release
loc_100090750:
  100090750  mov     x0, x24
  100090754  bl      _objc_release
  100090758  b       loc_1000907c8
  10009075c  str     x20, [sp, #0x28]
loc_100090760:
  100090760  stur    x0, [x29, #-0x58]
  100090764  mov     x0, x22
  100090768  b       loc_1000908d0
  10009076c  b       loc_100090878
  100090770  str     x20, [sp, #0x28]
  100090774  stur    x0, [x29, #-0x58]
  100090778  mov     x0, x26
  10009077c  bl      _objc_release
loc_100090780:
  100090780  mov     x0, x25
  100090784  bl      _objc_release
  100090788  b       loc_100090880
  10009078c  stur    x0, [x29, #-0x58]
  100090790  b       loc_1000908c4
  100090794  stur    x0, [x29, #-0x58]
loc_100090798:
  100090798  mov     x0, x25
  10009079c  bl      _objc_release
loc_1000907a0:
  1000907a0  mov     x0, x23
  1000907a4  b       loc_1000908c0
  1000907a8  b       loc_100090878
  1000907ac  b       loc_100090878
  1000907b0  b       loc_100090878
  1000907b4  b       loc_100090878
  1000907b8  b       loc_1000907c0
  1000907bc  b       loc_1000907c0
loc_1000907c0:
  1000907c0  str     x20, [sp, #0x28]
  1000907c4  stur    x0, [x29, #-0x58]
loc_1000907c8:
  1000907c8  mov     x0, x21
  1000907cc  b       loc_1000908d0
loc_1000907d0:
  1000907d0  str     x20, [sp, #0x28]
  1000907d4  stur    x0, [x29, #-0x58]
  1000907d8  b       loc_100090848
  1000907dc  b       loc_1000908b8
  1000907e0  b       loc_100090878
  1000907e4  b       loc_100090824
  1000907e8  b       loc_100090830
  1000907ec  b       loc_100090878
  1000907f0  b       loc_100090878
  1000907f4  b       loc_100090878
  1000907f8  b       loc_100090860
  1000907fc  b       loc_100090878
  100090800  stur    x0, [x29, #-0x58]
  100090804  b       loc_1000908c4
  100090808  stur    x0, [x29, #-0x58]
  10009080c  b       loc_1000908a4
  100090810  b       loc_100090898
  100090814  stur    x0, [x29, #-0x58]
  100090818  b       loc_1000908c4
  10009081c  b       loc_100090878
  100090820  b       loc_100090878
loc_100090824:
  100090824  str     x20, [sp, #0x28]
  100090828  stur    x0, [x29, #-0x58]
  10009082c  b       loc_100090840
loc_100090830:
  100090830  str     x20, [sp, #0x28]
  100090834  stur    x0, [x29, #-0x58]
  100090838  mov     x0, x22
  10009083c  bl      _objc_release
loc_100090840:
  100090840  mov     x0, x25
  100090844  bl      _objc_release
loc_100090848:
  100090848  mov     x0, x24
  10009084c  bl      _objc_release
  100090850  b       loc_100090880
  100090854  b       loc_100090878
  100090858  b       loc_100090878
  10009085c  b       loc_100090878
loc_100090860:
  100090860  str     x20, [sp, #0x28]
  100090864  stur    x0, [x29, #-0x58]
  100090868  mov     x0, x21
  10009086c  bl      _objc_release
  100090870  b       loc_100090880
  100090874  b       loc_100090878
loc_100090878:
  100090878  str     x20, [sp, #0x28]
loc_10009087c:
  10009087c  stur    x0, [x29, #-0x58]
loc_100090880:
  100090880  mov     x0, x19
  100090884  b       loc_1000908d0
  100090888  stur    x0, [x29, #-0x58]
  10009088c  b       loc_1000908c4
  100090890  stur    x0, [x29, #-0x58]
  100090894  b       loc_1000908a4
loc_100090898:
  100090898  stur    x0, [x29, #-0x58]
loc_10009089c:
  10009089c  mov     x0, x24
  1000908a0  bl      _objc_release
loc_1000908a4:
  1000908a4  mov     x0, x23
  1000908a8  bl      _objc_release
  1000908ac  b       loc_1000908bc
  1000908b0  stur    x0, [x29, #-0x58]
  1000908b4  b       loc_1000908c4
loc_1000908b8:
  1000908b8  stur    x0, [x29, #-0x58]
loc_1000908bc:
  1000908bc  mov     x0, x21
loc_1000908c0:
  1000908c0  bl      _objc_release
loc_1000908c4:
  1000908c4  mov     x0, x19
  1000908c8  bl      _objc_release
loc_1000908cc:
  1000908cc  ldr     x0, [sp, #0x20]
loc_1000908d0:
  1000908d0  bl      _objc_release
loc_1000908d4:
  1000908d4  ldr     x0, [sp, #0x60]
loc_1000908d8:
  1000908d8  bl      _objc_release
loc_1000908dc:
  1000908dc  ldr     x0, [sp, #0x28]
loc_1000908e0:
  1000908e0  bl      _objc_release
  1000908e4  ldr     x0, [sp, #0x58]
  1000908e8  bl      _objc_release
  1000908ec  ldur    x0, [x29, #-0x58]
  1000908f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController handleWeaponUpgrade:]
; address 0x1000908f4  size 100  kind objc
; ======================================================================
  1000908f4  stp     x20, x19, [sp, #-0x20]!
  1000908f8  stp     x29, x30, [sp, #0x10]
  1000908fc  add     x29, sp, #0x10
  100090900  adrp    x8, #0x100417000
  100090904  nop
  100090908  ldr     x1, [x8, #0x2d0]
  10009090c  bl      _objc_msgSend                            ; [self tableView]
  100090910  mov     x29, x29
  100090914  bl      _objc_retainAutoreleasedReturnValue
  100090918  mov     x19, x0
  10009091c  adrp    x8, #0x100417000
  100090920  nop
  100090924  ldr     x1, [x8, #0xb18]
  100090928  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  10009092c  mov     x0, x19
  100090930  ldp     x29, x30, [sp, #0x10]
  100090934  ldp     x20, x19, [sp], #0x20
  100090938  b       _objc_release
  10009093c  mov     x20, x0
  100090940  b       loc_100090950
  100090944  mov     x20, x0
  100090948  mov     x0, x19
  10009094c  bl      _objc_release
loc_100090950:
  100090950  mov     x0, x20
  100090954  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController playSound]
; address 0x100090958  size 252  kind objc
; ======================================================================
  100090958  stp     x22, x21, [sp, #-0x30]!
  10009095c  stp     x20, x19, [sp, #0x10]
  100090960  stp     x29, x30, [sp, #0x20]
  100090964  add     x29, sp, #0x20
  100090968  adrp    x8, #0x10041d000
  10009096c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100090970  adrp    x8, #0x100417000
  100090974  nop
  100090978  ldr     x1, [x8, #0x4f0]
  10009097c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100090980  mov     x29, x29
  100090984  bl      _objc_retainAutoreleasedReturnValue
  100090988  mov     x19, x0
  10009098c  adrp    x8, #0x100417000
  100090990  nop
  100090994  ldr     x1, [x8, #0x4f8]
  100090998  adrp    x2, #0x1003ba000
  10009099c  add     x2, x2, #0xcb0                           ; @"buttons"
  1000909a0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  1000909a4  mov     x29, x29
  1000909a8  bl      _objc_retainAutoreleasedReturnValue
  1000909ac  mov     x21, x0
  1000909b0  adrp    x8, #0x100417000
  1000909b4  nop
  1000909b8  ldr     x1, [x8, #0x990]
  1000909bc  adrp    x2, #0x1003ba000
  1000909c0  add     x2, x2, #0xcd0                           ; @"click_button"
  1000909c4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  1000909c8  mov     x29, x29
  1000909cc  bl      _objc_retainAutoreleasedReturnValue
  1000909d0  mov     x20, x0
  1000909d4  mov     x0, x21
  1000909d8  bl      _objc_release
  1000909dc  mov     x0, x19
  1000909e0  bl      _objc_release
  1000909e4  adrp    x8, #0x100416000
  1000909e8  nop
  1000909ec  ldr     x1, [x8, #0xcb0]
  1000909f0  fmov    s0, #3.00000000
  1000909f4  mov     x0, x20
  1000909f8  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  1000909fc  adrp    x8, #0x100417000
  100090a00  nop
  100090a04  ldr     x1, [x8, #0x600]
  100090a08  mov     x0, x20
  100090a0c  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  100090a10  mov     x0, x20
  100090a14  ldp     x29, x30, [sp, #0x20]
  100090a18  ldp     x20, x19, [sp, #0x10]
  100090a1c  ldp     x22, x21, [sp], #0x30
  100090a20  b       _objc_release
  100090a24  mov     x22, x0
  100090a28  mov     x0, x20
  100090a2c  b       loc_100090a48
  100090a30  mov     x22, x0
  100090a34  b       loc_100090a44
  100090a38  mov     x22, x0
  100090a3c  mov     x0, x21
  100090a40  bl      _objc_release
loc_100090a44:
  100090a44  mov     x0, x19
loc_100090a48:
  100090a48  bl      _objc_release
  100090a4c  mov     x0, x22
  100090a50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController tableView:didSelectRowAtIndexPath:]
; address 0x100090a54  size 476  kind objc
; ======================================================================
  100090a54  stp     x24, x23, [sp, #-0x40]!
  100090a58  stp     x22, x21, [sp, #0x10]
  100090a5c  stp     x20, x19, [sp, #0x20]
  100090a60  stp     x29, x30, [sp, #0x30]
  100090a64  add     x29, sp, #0x30
  100090a68  mov     x21, x0
  100090a6c  mov     x0, x3
  100090a70  bl      _objc_retain
  100090a74  mov     x19, x0
  100090a78  adrp    x8, #0x100418000
  100090a7c  nop
  100090a80  ldr     x1, [x8, #0x600]
  100090a84  mov     x0, x21
  100090a88  bl      _objc_msgSend                            ; [self playSound]
  100090a8c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100090a90  tbz     w0, #0, loc_100090b64                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  100090a94  adrp    x8, #0x10041d000
  100090a98  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100090a9c  adrp    x8, #0x100417000
  100090aa0  nop
  100090aa4  ldr     x1, [x8, #0xa0]
  100090aa8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100090aac  mov     x29, x29
  100090ab0  bl      _objc_retainAutoreleasedReturnValue
  100090ab4  mov     x20, x0
  100090ab8  adrp    x8, #0x100417000
  100090abc  nop
  100090ac0  ldr     x1, [x8, #0xa8]
  100090ac4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100090ac8  mov     x29, x29
  100090acc  bl      _objc_retainAutoreleasedReturnValue
  100090ad0  mov     x22, x0
  100090ad4  adrp    x8, #0x100417000
  100090ad8  nop
  100090adc  ldr     x1, [x8, #0x350]
  100090ae0  mov     x0, x19
  100090ae4  bl      _objc_msgSend                            ; [arg2 row]
  100090ae8  mov     x2, x0
  100090aec  adrp    x8, #0x100416000
  100090af0  nop
  100090af4  ldr     x1, [x8, #0xc30]
  100090af8  mov     x0, x22
  100090afc  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]]
  100090b00  mov     x29, x29
  100090b04  bl      _objc_retainAutoreleasedReturnValue
  100090b08  mov     x23, x0
  100090b0c  adrp    x8, #0x100417000
  100090b10  nop
  100090b14  ldr     x1, [x8, #0x40]
  100090b18  adrp    x2, #0x1003b9000
  100090b1c  add     x2, x2, #0xdb0                           ; @"name"
  100090b20  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  100090b24  mov     x29, x29
  100090b28  bl      _objc_retainAutoreleasedReturnValue
  100090b2c  mov     x24, x0
  100090b30  adrp    x8, #0x100419000
  100090b34  nop
  100090b38  ldr     x1, [x8, #0x898]
  100090b3c  mov     x0, x21
  100090b40  mov     x2, x24
  100090b44  bl      _objc_msgSend                            ; [self showAccessibleDetailViewForWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  100090b48  mov     x0, x24
  100090b4c  bl      _objc_release
  100090b50  mov     x0, x23
  100090b54  bl      _objc_release
  100090b58  mov     x0, x22
  100090b5c  bl      _objc_release
  100090b60  b       loc_100090bb4
loc_100090b64:
  100090b64  adrp    x8, #0x100416000
  100090b68  nop
  100090b6c  ldr     x1, [x8, #0xfa0]
  100090b70  mov     x0, x21
  100090b74  bl      _objc_msgSend                            ; [self armoryViewController]
  100090b78  mov     x29, x29
  100090b7c  bl      _objc_retainAutoreleasedReturnValue
  100090b80  mov     x20, x0
  100090b84  adrp    x8, #0x100417000
  100090b88  nop
  100090b8c  ldr     x1, [x8, #0x350]
  100090b90  mov     x0, x19
  100090b94  bl      _objc_msgSend                            ; [arg2 row]
  100090b98  mov     x2, x0
  100090b9c  adrp    x8, #0x100416000
  100090ba0  nop
  100090ba4  ldr     x1, [x8, #0xfa8]
  100090ba8  mov     w3, #0
  100090bac  mov     x0, x20
  100090bb0  bl      _objc_msgSend                            ; [[self armoryViewController] openDescriptionForItemAtIndex:[arg2 row] withButton:0]
loc_100090bb4:
  100090bb4  mov     x0, x20
  100090bb8  bl      _objc_release
  100090bbc  mov     x0, x19
  100090bc0  ldp     x29, x30, [sp, #0x30]
  100090bc4  ldp     x20, x19, [sp, #0x20]
  100090bc8  ldp     x22, x21, [sp, #0x10]
  100090bcc  ldp     x24, x23, [sp], #0x40
  100090bd0  b       _objc_release
  100090bd4  mov     x21, x0
  100090bd8  b       loc_100090c20
  100090bdc  mov     x21, x0
  100090be0  b       loc_100090c10
  100090be4  mov     x21, x0
  100090be8  b       loc_100090c18
  100090bec  mov     x21, x0
  100090bf0  b       loc_100090c18
  100090bf4  mov     x21, x0
  100090bf8  b       loc_100090c08
  100090bfc  mov     x21, x0
  100090c00  mov     x0, x24
  100090c04  bl      _objc_release
loc_100090c08:
  100090c08  mov     x0, x23
  100090c0c  bl      _objc_release
loc_100090c10:
  100090c10  mov     x0, x22
  100090c14  bl      _objc_release
loc_100090c18:
  100090c18  mov     x0, x20
  100090c1c  bl      _objc_release
loc_100090c20:
  100090c20  mov     x0, x19
  100090c24  bl      _objc_release
  100090c28  mov     x0, x21
  100090c2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController showAccessibleDetailViewForWeaponWithName:]
; address 0x100090c30  size 820  kind objc
; ======================================================================
  100090c30  stp     x26, x25, [sp, #-0x50]!
  100090c34  stp     x24, x23, [sp, #0x10]
  100090c38  stp     x22, x21, [sp, #0x20]
  100090c3c  stp     x20, x19, [sp, #0x30]
  100090c40  stp     x29, x30, [sp, #0x40]
  100090c44  add     x29, sp, #0x40
  100090c48  mov     x20, x0
  100090c4c  mov     x0, x2
  100090c50  bl      _objc_retain
  100090c54  mov     x19, x0
  100090c58  adrp    x8, #0x100417000
  100090c5c  nop
  100090c60  ldr     x21, [x8, #0x2d0]
  100090c64  mov     x0, x20
  100090c68  mov     x1, x21
  100090c6c  bl      _objc_msgSend                            ; [self tableView]
  100090c70  mov     x29, x29
  100090c74  bl      _objc_retainAutoreleasedReturnValue
  100090c78  mov     x22, x0
  100090c7c  adrp    x8, #0x100418000
  100090c80  nop
  100090c84  ldr     x1, [x8, #0xaf0]
  100090c88  mov     w2, #1
  100090c8c  bl      _objc_msgSend                            ; [[self tableView] setAccessibilityElementsHidden:1]
  100090c90  mov     x0, x22
  100090c94  bl      _objc_release
  100090c98  adrp    x8, #0x10041e000
  100090c9c  ldr     x0, [x8, #0x1b8]                         ; class Accessible_ADWeaponDescriptionViewController
  100090ca0  adrp    x8, #0x100416000
  100090ca4  nop
  100090ca8  ldr     x1, [x8, #0xac8]
  100090cac  bl      _objc_msgSend                            ; [Accessible_ADWeaponDescriptionViewController alloc]
  100090cb0  mov     x23, x0
  100090cb4  adrp    x8, #0x10041d000
  100090cb8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100090cbc  adrp    x8, #0x100417000
  100090cc0  nop
  100090cc4  ldr     x1, [x8, #0xa0]
  100090cc8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100090ccc  mov     x29, x29
  100090cd0  bl      _objc_retainAutoreleasedReturnValue
  100090cd4  mov     x22, x0
  100090cd8  adrp    x8, #0x100417000
  100090cdc  nop
  100090ce0  ldr     x1, [x8, #0xa48]
  100090ce4  mov     x2, x19
  100090ce8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:arg1]
  100090cec  mov     x29, x29
  100090cf0  bl      _objc_retainAutoreleasedReturnValue
  100090cf4  mov     x24, x0
  100090cf8  adrp    x8, #0x100418000
  100090cfc  nop
  100090d00  ldr     x1, [x8, #0x4a8]
  100090d04  mov     x0, x23
  100090d08  mov     x2, x24
  100090d0c  bl      _objc_msgSend                            ; [[Accessible_ADWeaponDescriptionViewController alloc] initWithWeaponDictionary:[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:arg1]]
  100090d10  adrp    x8, #0x10041f000
  100090d14  ldrsw   x25, [x8, #0xf54]                        ; ivar offset ADArmoryShopViewController.detailView (+0x140)
  100090d18  ldr     x8, [x20, x25]                           ; x8 = self->detailView
  100090d1c  str     x0, [x20, x25]                           ; self->detailView = [[Accessible_ADWeaponDescriptionViewController alloc] initWithWeaponDictionary:[[ADWeaponManager sharedWeaponManager] dictionaryForWeaponWithName:arg1]]
  100090d20  mov     x0, x8
  100090d24  bl      _objc_release
  100090d28  mov     x0, x24
  100090d2c  bl      _objc_release
  100090d30  mov     x0, x22
  100090d34  bl      _objc_release
  100090d38  ldr     x0, [x20, x25]                           ; x0 = self->detailView
  100090d3c  adrp    x8, #0x100418000
  100090d40  nop
  100090d44  ldr     x1, [x8, #0xaf8]
  100090d48  mov     w2, #1
  100090d4c  bl      _objc_msgSend                            ; [self->detailView setHideButtons:1]
  100090d50  ldr     x22, [x20, x25]                          ; x22 = self->detailView
  100090d54  adrp    x8, #0x100416000
  100090d58  nop
  100090d5c  ldr     x1, [x8, #0xfa0]
  100090d60  mov     x0, x20
  100090d64  bl      _objc_msgSend                            ; [self armoryViewController]
  100090d68  mov     x29, x29
  100090d6c  bl      _objc_retainAutoreleasedReturnValue
  100090d70  mov     x23, x0
  100090d74  adrp    x8, #0x100418000
  100090d78  nop
  100090d7c  ldr     x1, [x8, #0x4b0]
  100090d80  mov     x0, x22
  100090d84  mov     x2, x23
  100090d88  bl      _objc_msgSend                            ; [self->detailView setArmoryViewController:[self armoryViewController]]
  100090d8c  mov     x0, x23
  100090d90  bl      _objc_release
  100090d94  ldr     x22, [x20, x25]                          ; x22 = self->detailView
  100090d98  mov     x0, x20
  100090d9c  mov     x1, x21
  100090da0  bl      _objc_msgSend                            ; [self tableView]
  100090da4  mov     x29, x29
  100090da8  bl      _objc_retainAutoreleasedReturnValue
  100090dac  mov     x23, x0
  100090db0  adrp    x8, #0x100418000
  100090db4  nop
  100090db8  ldr     x1, [x8, #0xb00]
  100090dbc  mov     x0, x22
  100090dc0  mov     x2, x23
  100090dc4  bl      _objc_msgSend                            ; [self->detailView setParentTableView:[self tableView]]
  100090dc8  mov     x0, x23
  100090dcc  bl      _objc_release
  100090dd0  adrp    x8, #0x100416000
  100090dd4  nop
  100090dd8  ldr     x22, [x8, #0xf18]
  100090ddc  mov     x0, x20
  100090de0  mov     x1, x22
  100090de4  bl      _objc_msgSend                            ; [self view]
  100090de8  mov     x29, x29
  100090dec  bl      _objc_retainAutoreleasedReturnValue
  100090df0  mov     x23, x0
  100090df4  ldr     x0, [x20, x25]                           ; x0 = self->detailView
  100090df8  mov     x1, x22
  100090dfc  bl      _objc_msgSend                            ; [self->detailView view]
  100090e00  mov     x29, x29
  100090e04  bl      _objc_retainAutoreleasedReturnValue
  100090e08  mov     x24, x0
  100090e0c  adrp    x8, #0x100416000
  100090e10  nop
  100090e14  ldr     x1, [x8, #0xf20]
  100090e18  mov     x0, x23
  100090e1c  mov     x2, x24
  100090e20  bl      _objc_msgSend                            ; [[self view] addSubview:[self->detailView view]]
  100090e24  mov     x0, x24
  100090e28  bl      _objc_release
  100090e2c  mov     x0, x23
  100090e30  bl      _objc_release
  100090e34  ldr     x0, [x20, x25]                           ; x0 = self->detailView
  100090e38  mov     x1, x22
  100090e3c  bl      _objc_msgSend                            ; [self->detailView view]
  100090e40  mov     x29, x29
  100090e44  bl      _objc_retainAutoreleasedReturnValue
  100090e48  mov     x23, x0
  100090e4c  mov     x0, x20
  100090e50  mov     x1, x21
  100090e54  bl      _objc_msgSend                            ; [self tableView]
  100090e58  mov     x29, x29
  100090e5c  bl      _objc_retainAutoreleasedReturnValue
  100090e60  mov     x21, x0
  100090e64  adrp    x8, #0x100417000
  100090e68  nop
  100090e6c  ldr     x1, [x8, #0x688]
  100090e70  bl      _objc_msgSend                            ; [[self tableView] center]
  100090e74  adrp    x8, #0x100417000
  100090e78  nop
  100090e7c  ldr     x1, [x8, #0x1f8]
  100090e80  mov     x0, x23
  100090e84  bl      _objc_msgSend                            ; [[self->detailView view] setCenter:{[[self tableView] center].0, [[self tableView] center].1}]
  100090e88  mov     x0, x21
  100090e8c  bl      _objc_release
  100090e90  mov     x0, x23
  100090e94  bl      _objc_release
  100090e98  ldr     x0, [x20, x25]                           ; x0 = self->detailView
  100090e9c  mov     x1, x22
  100090ea0  bl      _objc_msgSend                            ; [self->detailView view]
  100090ea4  mov     x29, x29
  100090ea8  bl      _objc_retainAutoreleasedReturnValue
  100090eac  mov     x21, x0
  100090eb0  adrp    x8, #0x100418000
  100090eb4  nop
  100090eb8  ldr     x1, [x8, #0x618]
  100090ebc  mov     w2, #1
  100090ec0  bl      _objc_msgSend                            ; [[self->detailView view] setAccessibilityViewIsModal:1]
  100090ec4  mov     x0, x21
  100090ec8  bl      _objc_release
  100090ecc  mov     x0, x19
  100090ed0  ldp     x29, x30, [sp, #0x40]
  100090ed4  ldp     x20, x19, [sp, #0x30]
  100090ed8  ldp     x22, x21, [sp, #0x20]
  100090edc  ldp     x24, x23, [sp, #0x10]
  100090ee0  ldp     x26, x25, [sp], #0x50
  100090ee4  b       _objc_release
  100090ee8  mov     x20, x0
  100090eec  b       loc_100090f48
  100090ef0  mov     x20, x0
  100090ef4  mov     x0, x21
  100090ef8  b       loc_100090f34
  100090efc  mov     x20, x0
  100090f00  b       loc_100090f18
  100090f04  mov     x20, x0
  100090f08  b       loc_100090f18
  100090f0c  mov     x20, x0
  100090f10  mov     x0, x24
  100090f14  bl      _objc_release
loc_100090f18:
  100090f18  mov     x0, x22
  100090f1c  b       loc_100090f44
  100090f20  b       loc_100090f3c
  100090f24  b       loc_100090f3c
  100090f28  b       loc_100090f3c
  100090f2c  mov     x20, x0
  100090f30  mov     x0, x24
loc_100090f34:
  100090f34  bl      _objc_release
  100090f38  b       loc_100090f40
loc_100090f3c:
  100090f3c  mov     x20, x0
loc_100090f40:
  100090f40  mov     x0, x23
loc_100090f44:
  100090f44  bl      _objc_release
loc_100090f48:
  100090f48  mov     x0, x19
  100090f4c  bl      _objc_release
  100090f50  mov     x0, x20
  100090f54  bl      __Unwind_Resume                          ; Unwind_Resume()
  100090f58  mov     x20, x0
  100090f5c  mov     x0, x21
  100090f60  b       loc_100090f44

; ======================================================================
; -[ADArmoryShopViewController viewWillLayoutSubviews]
; address 0x100090f64  size 172  kind objc
; ======================================================================
  100090f64  stp     x22, x21, [sp, #-0x30]!
  100090f68  stp     x20, x19, [sp, #0x10]
  100090f6c  stp     x29, x30, [sp, #0x20]
  100090f70  add     x29, sp, #0x20
  100090f74  mov     x19, x0
  100090f78  adrp    x8, #0x100417000
  100090f7c  nop
  100090f80  ldr     x20, [x8, #0x2d0]
  100090f84  mov     x1, x20
  100090f88  bl      _objc_msgSend                            ; [self tableView]
  100090f8c  mov     x29, x29
  100090f90  bl      _objc_retainAutoreleasedReturnValue
  100090f94  mov     x21, x0
  100090f98  adrp    x8, #0x100417000
  100090f9c  nop
  100090fa0  ldr     x1, [x8, #0xb18]
  100090fa4  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  100090fa8  mov     x0, x21
  100090fac  bl      _objc_release
  100090fb0  mov     x0, x19
  100090fb4  mov     x1, x20
  100090fb8  bl      _objc_msgSend                            ; [self tableView]
  100090fbc  mov     x29, x29
  100090fc0  bl      _objc_retainAutoreleasedReturnValue
  100090fc4  mov     x19, x0
  100090fc8  adrp    x8, #0x100417000
  100090fcc  nop
  100090fd0  ldr     x1, [x8, #0x828]
  100090fd4  fmov    d0, #1.00000000
  100090fd8  bl      _objc_msgSend                            ; [[self tableView] setAlpha:1]
  100090fdc  mov     x0, x19
  100090fe0  ldp     x29, x30, [sp, #0x20]
  100090fe4  ldp     x20, x19, [sp, #0x10]
  100090fe8  ldp     x22, x21, [sp], #0x30
  100090fec  b       _objc_release
  100090ff0  mov     x20, x0
  100090ff4  mov     x0, x21
  100090ff8  b       loc_100091004
  100090ffc  mov     x20, x0
  100091000  mov     x0, x19
loc_100091004:
  100091004  bl      _objc_release
  100091008  mov     x0, x20
  10009100c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryShopViewController tableView]
; address 0x100091010  size 16  kind objc
; ======================================================================
  100091010  adrp    x8, #0x10041f000
  100091014  ldrsw   x8, [x8, #0xf58]                         ; ivar offset ADArmoryShopViewController._tableView (+0x148)
  100091018  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  10009101c  ret

; ======================================================================
; -[ADArmoryShopViewController setTableView:]
; address 0x100091020  size 56  kind objc
; ======================================================================
  100091020  stp     x20, x19, [sp, #-0x20]!
  100091024  stp     x29, x30, [sp, #0x10]
  100091028  add     x29, sp, #0x10
  10009102c  mov     x19, x0
  100091030  adrp    x8, #0x10041f000
  100091034  ldrsw   x20, [x8, #0xf58]                        ; ivar offset ADArmoryShopViewController._tableView (+0x148)
  100091038  mov     x0, x2
  10009103c  bl      _objc_retain
  100091040  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  100091044  str     x0, [x19, x20]                           ; self->_tableView = arg1
  100091048  mov     x0, x8
  10009104c  ldp     x29, x30, [sp, #0x10]
  100091050  ldp     x20, x19, [sp], #0x20
  100091054  b       _objc_release

; ======================================================================
; -[ADArmoryShopViewController armoryViewController]
; address 0x100091058  size 32  kind objc
; ======================================================================
  100091058  stp     x29, x30, [sp, #-0x10]!
  10009105c  mov     x29, sp
  100091060  adrp    x8, #0x10041f000
  100091064  ldrsw   x8, [x8, #0xf5c]                         ; ivar offset ADArmoryShopViewController._armoryViewController (+0x150)
  100091068  add     x0, x0, x8
  10009106c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100091070  ldp     x29, x30, [sp], #0x10
  100091074  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADArmoryShopViewController setArmoryViewController:]
; address 0x100091078  size 20  kind objc
; ======================================================================
  100091078  adrp    x8, #0x10041f000
  10009107c  ldrsw   x8, [x8, #0xf5c]                         ; ivar offset ADArmoryShopViewController._armoryViewController (+0x150)
  100091080  add     x0, x0, x8
  100091084  mov     x1, x2
  100091088  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADArmoryShopViewController weaponReverseLookUp]
; address 0x10009108c  size 16  kind objc
; ======================================================================
  10009108c  adrp    x8, #0x10041f000
  100091090  ldrsw   x2, [x8, #0xf60]                         ; ivar offset ADArmoryShopViewController._weaponReverseLookUp (+0x158)
  100091094  mov     w3, #1
  100091098  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADArmoryShopViewController setWeaponReverseLookUp:]
; address 0x10009109c  size 12  kind objc
; ======================================================================
  10009109c  adrp    x8, #0x10041f000
  1000910a0  ldrsw   x3, [x8, #0xf60]                         ; ivar offset ADArmoryShopViewController._weaponReverseLookUp (+0x158)
  1000910a4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADArmoryShopViewController .cxx_destruct]
; address 0x1000910a8  size 100  kind objc
; ======================================================================
  1000910a8  stp     x20, x19, [sp, #-0x20]!
  1000910ac  stp     x29, x30, [sp, #0x10]
  1000910b0  add     x29, sp, #0x10
  1000910b4  mov     x19, x0
  1000910b8  adrp    x8, #0x10041f000
  1000910bc  ldrsw   x8, [x8, #0xf60]                         ; ivar offset ADArmoryShopViewController._weaponReverseLookUp (+0x158)
  1000910c0  add     x0, x19, x8
  1000910c4  mov     x1, #0
  1000910c8  bl      _objc_storeStrong
  1000910cc  adrp    x8, #0x10041f000
  1000910d0  ldrsw   x8, [x8, #0xf5c]                         ; ivar offset ADArmoryShopViewController._armoryViewController (+0x150)
  1000910d4  add     x0, x19, x8
  1000910d8  bl      _objc_destroyWeak
  1000910dc  adrp    x8, #0x10041f000
  1000910e0  ldrsw   x8, [x8, #0xf58]                         ; ivar offset ADArmoryShopViewController._tableView (+0x148)
  1000910e4  add     x0, x19, x8
  1000910e8  mov     x1, #0
  1000910ec  bl      _objc_storeStrong
  1000910f0  mov     x1, #0
  1000910f4  adrp    x8, #0x10041f000
  1000910f8  ldrsw   x8, [x8, #0xf54]                         ; ivar offset ADArmoryShopViewController.detailView (+0x140)
  1000910fc  add     x0, x19, x8
  100091100  ldp     x29, x30, [sp, #0x10]
  100091104  ldp     x20, x19, [sp], #0x20
  100091108  b       _objc_storeStrong
