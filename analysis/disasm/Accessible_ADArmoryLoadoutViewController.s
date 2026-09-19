// unit Accessible_ADArmoryLoadoutViewController — 16 functions
//   0x100049410     348  -[Accessible_ADArmoryLoadoutViewController viewDidLoad]
//   0x10004956c     140  -[Accessible_ADArmoryLoadoutViewController tableView:heightForRowAtIndexPath:]
//   0x1000495f8     140  -[Accessible_ADArmoryLoadoutViewController tableView:heightForHeaderInSection:]
//   0x100049684     480  -[Accessible_ADArmoryLoadoutViewController tableView:numberOfRowsInSection:]
//   0x100049864     544  -[Accessible_ADArmoryLoadoutViewController tableView:viewForHeaderInSection:]
//   0x100049a84       8  -[Accessible_ADArmoryLoadoutViewController numberOfSectionsInTableView:]
//   0x100049a8c     400  -[Accessible_ADArmoryLoadoutViewController weaponName:]
//   0x100049c1c     764  -[Accessible_ADArmoryLoadoutViewController weaponStatus:]
//   0x100049f18     844  -[Accessible_ADArmoryLoadoutViewController tableView:cellForRowAtIndexPath:]
//   0x10004a264    1156  -[Accessible_ADArmoryLoadoutViewController tableView:didSelectRowAtIndexPath:]
//   0x10004a6e8      92  -[Accessible_ADArmoryLoadoutViewController viewWillLayoutSubviews]
//   0x10004a744      16  -[Accessible_ADArmoryLoadoutViewController tableView]
//   0x10004a754      56  -[Accessible_ADArmoryLoadoutViewController setTableView:]
//   0x10004a78c      32  -[Accessible_ADArmoryLoadoutViewController armoryViewController]
//   0x10004a7ac      20  -[Accessible_ADArmoryLoadoutViewController setArmoryViewController:]
//   0x10004a7c0      80  -[Accessible_ADArmoryLoadoutViewController .cxx_destruct]

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController viewDidLoad]
; address 0x100049410  size 348  kind objc
; ======================================================================
  100049410  stp     x22, x21, [sp, #-0x30]!
  100049414  stp     x20, x19, [sp, #0x10]
  100049418  stp     x29, x30, [sp, #0x20]
  10004941c  add     x29, sp, #0x20
  100049420  sub     sp, sp, #0x10
  100049424  mov     x19, x0
  100049428  str     x19, [sp]
  10004942c  adrp    x8, #0x10041e000
  100049430  ldr     x8, [x8, #0xd20]
  100049434  str     x8, [sp, #8]
  100049438  adrp    x8, #0x100416000
  10004943c  nop
  100049440  ldr     x1, [x8, #0xb48]
  100049444  mov     x0, sp
  100049448  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10004944c  adrp    x8, #0x100417000
  100049450  nop
  100049454  ldr     x20, [x8, #0x2d0]
  100049458  mov     x0, x19
  10004945c  mov     x1, x20
  100049460  bl      _objc_msgSend                            ; [self tableView]
  100049464  mov     x29, x29
  100049468  bl      _objc_retainAutoreleasedReturnValue
  10004946c  mov     x21, x0
  100049470  adrp    x8, #0x100418000
  100049474  nop
  100049478  ldr     x1, [x8, #0x5d0]
  10004947c  mov     x2, x19
  100049480  bl      _objc_msgSend                            ; [[self tableView] setDataSource:self]
  100049484  mov     x0, x21
  100049488  bl      _objc_release
  10004948c  mov     x0, x19
  100049490  mov     x1, x20
  100049494  bl      _objc_msgSend                            ; [self tableView]
  100049498  mov     x29, x29
  10004949c  bl      _objc_retainAutoreleasedReturnValue
  1000494a0  mov     x21, x0
  1000494a4  adrp    x8, #0x100417000
  1000494a8  nop
  1000494ac  ldr     x1, [x8, #0x7d8]
  1000494b0  mov     x2, x19
  1000494b4  bl      _objc_msgSend                            ; [[self tableView] setDelegate:self]
  1000494b8  mov     x0, x21
  1000494bc  bl      _objc_release
  1000494c0  mov     x0, x19
  1000494c4  mov     x1, x20
  1000494c8  bl      _objc_msgSend                            ; [self tableView]
  1000494cc  mov     x29, x29
  1000494d0  bl      _objc_retainAutoreleasedReturnValue
  1000494d4  mov     x19, x0
  1000494d8  adrp    x8, #0x10041d000
  1000494dc  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000494e0  adrp    x8, #0x100417000
  1000494e4  nop
  1000494e8  ldr     x1, [x8, #0x180]
  1000494ec  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000494f0  mov     x29, x29
  1000494f4  bl      _objc_retainAutoreleasedReturnValue
  1000494f8  mov     x21, x0
  1000494fc  adrp    x8, #0x100417000
  100049500  nop
  100049504  ldr     x1, [x8, #0x188]
  100049508  mov     x0, x19
  10004950c  mov     x2, x21
  100049510  bl      _objc_msgSend                            ; [[self tableView] setBackgroundColor:[UIColor blackColor]]
  100049514  mov     x0, x21
  100049518  bl      _objc_release
  10004951c  mov     x0, x19
  100049520  bl      _objc_release
  100049524  sub     sp, x29, #0x20
  100049528  ldp     x29, x30, [sp, #0x20]
  10004952c  ldp     x20, x19, [sp, #0x10]
  100049530  ldp     x22, x21, [sp], #0x30
  100049534  ret
  100049538  b       loc_10004953c
loc_10004953c:
  10004953c  mov     x20, x0
  100049540  mov     x0, x21
  100049544  b       loc_100049560
  100049548  mov     x20, x0
  10004954c  b       loc_10004955c
  100049550  mov     x20, x0
  100049554  mov     x0, x21
  100049558  bl      _objc_release
loc_10004955c:
  10004955c  mov     x0, x19
loc_100049560:
  100049560  bl      _objc_release
  100049564  mov     x0, x20
  100049568  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController tableView:heightForRowAtIndexPath:]
; address 0x10004956c  size 140  kind objc
; ======================================================================
  10004956c  stp     x20, x19, [sp, #-0x20]!
  100049570  stp     x29, x30, [sp, #0x10]
  100049574  add     x29, sp, #0x10
  100049578  adrp    x8, #0x10041d000
  10004957c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100049580  adrp    x8, #0x100416000
  100049584  nop
  100049588  ldr     x1, [x8, #0xc00]
  10004958c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100049590  mov     x29, x29
  100049594  bl      _objc_retainAutoreleasedReturnValue
  100049598  mov     x19, x0
  10004959c  adrp    x8, #0x100416000
  1000495a0  nop
  1000495a4  ldr     x1, [x8, #0xd18]
  1000495a8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000495ac  mov     x20, x0
  1000495b0  mov     x0, x19
  1000495b4  bl      _objc_release
  1000495b8  cmp     w20, #0
  1000495bc  adrp    x8, #0x100181000
  1000495c0  ldr     d0, [x8, #0xb80]                         ; d0 = 80.0
  1000495c4  nop
  1000495c8  ldr     d1, [x8, #0x9d0]                         ; d1 = 50.0
  1000495cc  fcsel   d0, d1, d0, ne
  1000495d0  ldp     x29, x30, [sp, #0x10]
  1000495d4  ldp     x20, x19, [sp], #0x20
  1000495d8  ret
  1000495dc  mov     x20, x0
  1000495e0  b       loc_1000495f0
  1000495e4  mov     x20, x0
  1000495e8  mov     x0, x19
  1000495ec  bl      _objc_release
loc_1000495f0:
  1000495f0  mov     x0, x20
  1000495f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController tableView:heightForHeaderInSection:]
; address 0x1000495f8  size 140  kind objc
; ======================================================================
  1000495f8  stp     x20, x19, [sp, #-0x20]!
  1000495fc  stp     x29, x30, [sp, #0x10]
  100049600  add     x29, sp, #0x10
  100049604  adrp    x8, #0x10041d000
  100049608  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004960c  adrp    x8, #0x100416000
  100049610  nop
  100049614  ldr     x1, [x8, #0xc00]
  100049618  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004961c  mov     x29, x29
  100049620  bl      _objc_retainAutoreleasedReturnValue
  100049624  mov     x19, x0
  100049628  adrp    x8, #0x100416000
  10004962c  nop
  100049630  ldr     x1, [x8, #0xd18]
  100049634  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100049638  mov     x20, x0
  10004963c  mov     x0, x19
  100049640  bl      _objc_release
  100049644  cmp     w20, #0
  100049648  adrp    x8, #0x100181000
  10004964c  ldr     d0, [x8, #0xb88]                         ; d0 = 140.0
  100049650  nop
  100049654  ldr     d1, [x8, #0xa08]                         ; d1 = 60.0
  100049658  fcsel   d0, d1, d0, ne
  10004965c  ldp     x29, x30, [sp, #0x10]
  100049660  ldp     x20, x19, [sp], #0x20
  100049664  ret
  100049668  mov     x20, x0
  10004966c  b       loc_10004967c
  100049670  mov     x20, x0
  100049674  mov     x0, x19
  100049678  bl      _objc_release
loc_10004967c:
  10004967c  mov     x0, x20
  100049680  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController tableView:numberOfRowsInSection:]
; address 0x100049684  size 480  kind objc
; ======================================================================
  100049684  stp     x26, x25, [sp, #-0x50]!
  100049688  stp     x24, x23, [sp, #0x10]
  10004968c  stp     x22, x21, [sp, #0x20]
  100049690  stp     x20, x19, [sp, #0x30]
  100049694  stp     x29, x30, [sp, #0x40]
  100049698  add     x29, sp, #0x40
  10004969c  mov     x20, x3
  1000496a0  mov     x0, x2
  1000496a4  bl      _objc_retain
  1000496a8  mov     x19, x0
  1000496ac  cmp     x20, #1
  1000496b0  b.ne    loc_100049714                            ; if (arg2 != 1)
  1000496b4  adrp    x8, #0x10041d000
  1000496b8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000496bc  adrp    x8, #0x100417000
  1000496c0  nop
  1000496c4  ldr     x1, [x8, #0xa0]
  1000496c8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000496cc  mov     x29, x29
  1000496d0  bl      _objc_retainAutoreleasedReturnValue
  1000496d4  mov     x20, x0
  1000496d8  adrp    x8, #0x100418000
  1000496dc  nop
  1000496e0  ldr     x1, [x8, #0xad0]
  1000496e4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons]
  1000496e8  mov     x29, x29
  1000496ec  bl      _objc_retainAutoreleasedReturnValue
  1000496f0  mov     x21, x0
  1000496f4  adrp    x8, #0x100416000
  1000496f8  nop
  1000496fc  ldr     x1, [x8, #0xe30]
  100049700  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons] count]
  100049704  mov     x22, x0
  100049708  b       loc_1000497c4
  10004970c  mov     x22, x0
  100049710  b       loc_100049844
loc_100049714:
  100049714  cbnz    x20, loc_1000497d8                       ; if (arg2 != 0)
  100049718  adrp    x25, #0x10041d000
  10004971c  ldr     x0, [x25, #0xf88]                        ; class ADWeaponManager
  100049720  adrp    x8, #0x100417000
  100049724  nop
  100049728  ldr     x22, [x8, #0xa0]
  10004972c  mov     x1, x22
  100049730  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049734  mov     x29, x29
  100049738  bl      _objc_retainAutoreleasedReturnValue
  10004973c  mov     x20, x0
  100049740  adrp    x8, #0x100417000
  100049744  nop
  100049748  ldr     x1, [x8, #0xa8]
  10004974c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100049750  mov     x29, x29
  100049754  bl      _objc_retainAutoreleasedReturnValue
  100049758  mov     x21, x0
  10004975c  adrp    x8, #0x100416000
  100049760  nop
  100049764  ldr     x23, [x8, #0xe30]
  100049768  mov     x1, x23
  10004976c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]
  100049770  mov     x24, x0
  100049774  ldr     x0, [x25, #0xf88]                        ; class ADWeaponManager
  100049778  mov     x1, x22
  10004977c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049780  mov     x29, x29
  100049784  bl      _objc_retainAutoreleasedReturnValue
  100049788  mov     x25, x0
  10004978c  adrp    x8, #0x100418000
  100049790  nop
  100049794  ldr     x1, [x8, #0xad0]
  100049798  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons]
  10004979c  mov     x29, x29
  1000497a0  bl      _objc_retainAutoreleasedReturnValue
  1000497a4  mov     x26, x0
  1000497a8  mov     x1, x23
  1000497ac  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons] count]
  1000497b0  sub     x22, x24, x0                             ; t1 = ([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count] - [[[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons] count])
  1000497b4  mov     x0, x26
  1000497b8  bl      _objc_release
  1000497bc  mov     x0, x25
  1000497c0  bl      _objc_release
loc_1000497c4:
  1000497c4  mov     x0, x21
  1000497c8  bl      _objc_release
  1000497cc  mov     x0, x20
  1000497d0  bl      _objc_release
  1000497d4  b       loc_1000497dc
loc_1000497d8:
  1000497d8  mov     x22, #0
loc_1000497dc:
  1000497dc  mov     x0, x19
  1000497e0  bl      _objc_release
  1000497e4  mov     x0, x22
  1000497e8  ldp     x29, x30, [sp, #0x40]
  1000497ec  ldp     x20, x19, [sp, #0x30]
  1000497f0  ldp     x22, x21, [sp, #0x20]
  1000497f4  ldp     x24, x23, [sp, #0x10]
  1000497f8  ldp     x26, x25, [sp], #0x50
  1000497fc  ret
  100049800  mov     x22, x0
  100049804  b       loc_100049854
  100049808  mov     x22, x0
  10004980c  b       loc_10004984c
  100049810  mov     x22, x0
  100049814  b       loc_100049844
  100049818  mov     x22, x0
  10004981c  b       loc_10004984c
  100049820  mov     x23, x25
  100049824  mov     x22, x0
  100049828  b       loc_10004983c
  10004982c  mov     x23, x25
  100049830  mov     x22, x0
  100049834  mov     x0, x26
  100049838  bl      _objc_release
loc_10004983c:
  10004983c  mov     x0, x23
  100049840  bl      _objc_release
loc_100049844:
  100049844  mov     x0, x21
  100049848  bl      _objc_release
loc_10004984c:
  10004984c  mov     x0, x20
  100049850  bl      _objc_release
loc_100049854:
  100049854  mov     x0, x19
  100049858  bl      _objc_release
  10004985c  mov     x0, x22
  100049860  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController tableView:viewForHeaderInSection:]
; address 0x100049864  size 544  kind objc
; ======================================================================
  100049864  stp     x22, x21, [sp, #-0x30]!
  100049868  stp     x20, x19, [sp, #0x10]
  10004986c  stp     x29, x30, [sp, #0x20]
  100049870  add     x29, sp, #0x20
  100049874  mov     x20, x3
  100049878  adrp    x8, #0x10041e000
  10004987c  ldr     x0, [x8, #0x168]                         ; class ADAccessibilityTableHeaderLabel
  100049880  adrp    x8, #0x100416000
  100049884  nop
  100049888  ldr     x1, [x8, #0xac8]
  10004988c  bl      _objc_msgSend                            ; [ADAccessibilityTableHeaderLabel alloc]
  100049890  adrp    x8, #0x1003b0000
  100049894  ldr     x8, [x8, #0x10]                          ; _CGRectZero
  100049898  ldp     d0, d1, [x8]
  10004989c  ldp     d2, d3, [x8, #0x10]
  1000498a0  adrp    x8, #0x100417000
  1000498a4  nop
  1000498a8  ldr     x1, [x8, #0x178]
  1000498ac  bl      _objc_msgSend                            ; [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  1000498b0  mov     x19, x0
  1000498b4  cbnz    x20, loc_1000498d8                       ; if (arg2 != 0)
  1000498b8  adrp    x8, #0x100416000
  1000498bc  nop
  1000498c0  ldr     x1, [x8, #0xb68]
  1000498c4  adrp    x2, #0x1003bd000
  1000498c8  add     x2, x2, #0x150                           ; @"Range weapons"
  1000498cc  mov     x0, x19
  1000498d0  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Range weapons"]
  1000498d4  b       loc_1000498fc
loc_1000498d8:
  1000498d8  cmp     x20, #1
  1000498dc  b.ne    loc_1000498fc                            ; if (arg2 != 1)
  1000498e0  adrp    x8, #0x100416000
  1000498e4  nop
  1000498e8  ldr     x1, [x8, #0xb68]
  1000498ec  adrp    x2, #0x1003bd000
  1000498f0  add     x2, x2, #0x170                           ; @"Melee weapons"
  1000498f4  mov     x0, x19
  1000498f8  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Melee weapons"]
loc_1000498fc:
  1000498fc  adrp    x8, #0x10041d000
  100049900  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100049904  adrp    x8, #0x100416000
  100049908  nop
  10004990c  ldr     x1, [x8, #0xc00]
  100049910  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100049914  mov     x29, x29
  100049918  bl      _objc_retainAutoreleasedReturnValue
  10004991c  mov     x21, x0
  100049920  adrp    x8, #0x100416000
  100049924  nop
  100049928  ldr     x1, [x8, #0xd18]
  10004992c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100049930  mov     x22, x0
  100049934  mov     x0, x21
  100049938  bl      _objc_release
  10004993c  adrp    x8, #0x10041d000
  100049940  ldr     x0, [x8, #0xf08]                         ; class UIFont
  100049944  cmp     w22, #0
  100049948  adrp    x8, #0x100181000
  10004994c  ldr     d0, [x8, #0xb90]                         ; d0 = 35.0
  100049950  fmov    d1, #25.00000000
  100049954  fcsel   d0, d1, d0, ne
  100049958  adrp    x8, #0x100416000
  10004995c  nop
  100049960  ldr     x1, [x8, #0xd20]
  100049964  adrp    x2, #0x1003bc000
  100049968  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  10004996c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]
  100049970  mov     x29, x29
  100049974  bl      _objc_retainAutoreleasedReturnValue
  100049978  mov     x21, x0
  10004997c  adrp    x8, #0x100416000
  100049980  nop
  100049984  ldr     x1, [x8, #0xd28]
  100049988  mov     x0, x19
  10004998c  mov     x2, x21
  100049990  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]]
  100049994  mov     x0, x21
  100049998  bl      _objc_release
  10004999c  adrp    x22, #0x10041d000
  1000499a0  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  1000499a4  adrp    x8, #0x100417000
  1000499a8  nop
  1000499ac  ldr     x1, [x8, #0x180]
  1000499b0  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000499b4  mov     x29, x29
  1000499b8  bl      _objc_retainAutoreleasedReturnValue
  1000499bc  mov     x21, x0
  1000499c0  adrp    x8, #0x100417000
  1000499c4  nop
  1000499c8  ldr     x1, [x8, #0x330]
  1000499cc  mov     x0, x19
  1000499d0  mov     x2, x21
  1000499d4  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setTextColor:[UIColor blackColor]]
  1000499d8  mov     x0, x21
  1000499dc  bl      _objc_release
  1000499e0  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  1000499e4  adrp    x8, #0x100417000
  1000499e8  nop
  1000499ec  ldr     x1, [x8, #0x328]
  1000499f0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000499f4  mov     x29, x29
  1000499f8  bl      _objc_retainAutoreleasedReturnValue
  1000499fc  mov     x21, x0
  100049a00  adrp    x8, #0x100417000
  100049a04  nop
  100049a08  ldr     x1, [x8, #0x188]
  100049a0c  mov     x0, x19
  100049a10  mov     x2, x21
  100049a14  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setBackgroundColor:[UIColor whiteColor]]
  100049a18  mov     x0, x21
  100049a1c  bl      _objc_release
  100049a20  cbnz    x20, loc_100049a38                       ; if (arg2 != 0)
  100049a24  adrp    x8, #0x1003b0000
  100049a28  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  100049a2c  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityScreenChangedNotification[+0x0]
  100049a30  mov     x1, x19
  100049a34  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}])
loc_100049a38:
  100049a38  mov     x0, x19
  100049a3c  ldp     x29, x30, [sp, #0x20]
  100049a40  ldp     x20, x19, [sp, #0x10]
  100049a44  ldp     x22, x21, [sp], #0x30
  100049a48  b       _objc_autoreleaseReturnValue
  100049a4c  mov     x20, x0
  100049a50  b       loc_100049a74
  100049a54  mov     x20, x0
  100049a58  b       loc_100049a7c
  100049a5c  b       loc_100049a68
  100049a60  b       loc_100049a68
  100049a64  b       loc_100049a68
loc_100049a68:
  100049a68  mov     x20, x0
  100049a6c  mov     x0, x21
  100049a70  bl      _objc_release
loc_100049a74:
  100049a74  mov     x0, x19
  100049a78  bl      _objc_release
loc_100049a7c:
  100049a7c  mov     x0, x20
  100049a80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController numberOfSectionsInTableView:]
; address 0x100049a84  size 8  kind objc
; ======================================================================
  100049a84  mov     w0, #2
  100049a88  ret

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController weaponName:]
; address 0x100049a8c  size 400  kind objc
; ======================================================================
  100049a8c  stp     x26, x25, [sp, #-0x50]!
  100049a90  stp     x24, x23, [sp, #0x10]
  100049a94  stp     x22, x21, [sp, #0x20]
  100049a98  stp     x20, x19, [sp, #0x30]
  100049a9c  stp     x29, x30, [sp, #0x40]
  100049aa0  add     x29, sp, #0x40
  100049aa4  mov     x20, x2
  100049aa8  tbnz    x20, 0x3f, loc_100049bac                 ; if (arg1 < 0)
  100049aac  adrp    x25, #0x10041d000
  100049ab0  ldr     x0, [x25, #0xf88]                        ; class ADWeaponManager
  100049ab4  adrp    x8, #0x100417000
  100049ab8  nop
  100049abc  ldr     x19, [x8, #0xa0]
  100049ac0  mov     x1, x19
  100049ac4  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049ac8  mov     x29, x29
  100049acc  bl      _objc_retainAutoreleasedReturnValue
  100049ad0  mov     x22, x0
  100049ad4  adrp    x8, #0x100417000
  100049ad8  nop
  100049adc  ldr     x21, [x8, #0xa8]
  100049ae0  mov     x1, x21
  100049ae4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100049ae8  mov     x29, x29
  100049aec  bl      _objc_retainAutoreleasedReturnValue
  100049af0  mov     x23, x0
  100049af4  adrp    x8, #0x100416000
  100049af8  nop
  100049afc  ldr     x1, [x8, #0xe30]
  100049b00  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]
  100049b04  mov     x24, x0
  100049b08  mov     x0, x23
  100049b0c  bl      _objc_release
  100049b10  mov     x0, x22
  100049b14  bl      _objc_release
  100049b18  cmp     x24, x20
  100049b1c  b.ls    loc_100049bac                            ; if ([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count] <=u arg1)
  100049b20  ldr     x0, [x25, #0xf88]                        ; class ADWeaponManager
  100049b24  mov     x1, x19
  100049b28  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049b2c  mov     x29, x29
  100049b30  bl      _objc_retainAutoreleasedReturnValue
  100049b34  mov     x19, x0
  100049b38  mov     x1, x21
  100049b3c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100049b40  mov     x29, x29
  100049b44  bl      _objc_retainAutoreleasedReturnValue
  100049b48  mov     x21, x0
  100049b4c  adrp    x8, #0x100416000
  100049b50  nop
  100049b54  ldr     x1, [x8, #0xc30]
  100049b58  mov     x2, x20
  100049b5c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1]
  100049b60  mov     x29, x29
  100049b64  bl      _objc_retainAutoreleasedReturnValue
  100049b68  mov     x22, x0
  100049b6c  adrp    x8, #0x100417000
  100049b70  nop
  100049b74  ldr     x1, [x8, #0x40]
  100049b78  adrp    x2, #0x1003ba000
  100049b7c  add     x2, x2, #0x2b0                           ; @"displayName"
  100049b80  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"displayName"]
  100049b84  mov     x29, x29
  100049b88  bl      _objc_retainAutoreleasedReturnValue
  100049b8c  mov     x20, x0
  100049b90  mov     x0, x22
  100049b94  bl      _objc_release
  100049b98  mov     x0, x21
  100049b9c  bl      _objc_release
  100049ba0  mov     x0, x19
  100049ba4  bl      _objc_release
  100049ba8  b       loc_100049bb0
loc_100049bac:
  100049bac  mov     x20, #0
loc_100049bb0:
  100049bb0  mov     x0, x20
  100049bb4  ldp     x29, x30, [sp, #0x40]
  100049bb8  ldp     x20, x19, [sp, #0x30]
  100049bbc  ldp     x22, x21, [sp, #0x20]
  100049bc0  ldp     x24, x23, [sp, #0x10]
  100049bc4  ldp     x26, x25, [sp], #0x50
  100049bc8  b       _objc_autoreleaseReturnValue
  100049bcc  mov     x20, x0
  100049bd0  b       loc_100049be0
  100049bd4  mov     x20, x0
  100049bd8  mov     x0, x23
  100049bdc  bl      _objc_release
loc_100049be0:
  100049be0  mov     x0, x22
  100049be4  b       loc_100049c10
  100049be8  mov     x20, x0
  100049bec  b       loc_100049c0c
  100049bf0  mov     x20, x0
  100049bf4  b       loc_100049c04
  100049bf8  mov     x20, x0
  100049bfc  mov     x0, x22
  100049c00  bl      _objc_release
loc_100049c04:
  100049c04  mov     x0, x21
  100049c08  bl      _objc_release
loc_100049c0c:
  100049c0c  mov     x0, x19
loc_100049c10:
  100049c10  bl      _objc_release
  100049c14  mov     x0, x20
  100049c18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController weaponStatus:]
; address 0x100049c1c  size 764  kind objc
; ======================================================================
  100049c1c  stp     x28, x27, [sp, #-0x60]!
  100049c20  stp     x26, x25, [sp, #0x10]
  100049c24  stp     x24, x23, [sp, #0x20]
  100049c28  stp     x22, x21, [sp, #0x30]
  100049c2c  stp     x20, x19, [sp, #0x40]
  100049c30  stp     x29, x30, [sp, #0x50]
  100049c34  add     x29, sp, #0x50
  100049c38  sub     sp, sp, #0x10
  100049c3c  mov     x20, x2
  100049c40  adrp    x19, #0x10041d000
  100049c44  ldr     x0, [x19, #0xf88]                        ; class ADWeaponManager
  100049c48  adrp    x8, #0x100417000
  100049c4c  nop
  100049c50  ldr     x21, [x8, #0xa0]
  100049c54  mov     x1, x21
  100049c58  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049c5c  mov     x29, x29
  100049c60  bl      _objc_retainAutoreleasedReturnValue
  100049c64  mov     x25, x0
  100049c68  adrp    x8, #0x100417000
  100049c6c  nop
  100049c70  ldr     x22, [x8, #0xa8]
  100049c74  mov     x1, x22
  100049c78  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100049c7c  mov     x29, x29
  100049c80  bl      _objc_retainAutoreleasedReturnValue
  100049c84  mov     x26, x0
  100049c88  adrp    x8, #0x100416000
  100049c8c  nop
  100049c90  ldr     x23, [x8, #0xc30]
  100049c94  mov     x1, x23
  100049c98  mov     x2, x20
  100049c9c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1]
  100049ca0  mov     x29, x29
  100049ca4  bl      _objc_retainAutoreleasedReturnValue
  100049ca8  mov     x27, x0
  100049cac  adrp    x8, #0x100417000
  100049cb0  nop
  100049cb4  ldr     x24, [x8, #0x40]
  100049cb8  adrp    x2, #0x1003b9000
  100049cbc  add     x2, x2, #0xdb0                           ; @"name"
  100049cc0  mov     x1, x24
  100049cc4  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"name"]
  100049cc8  mov     x29, x29
  100049ccc  bl      _objc_retainAutoreleasedReturnValue
  100049cd0  str     x0, [sp, #8]
  100049cd4  mov     x0, x27
  100049cd8  bl      _objc_release
  100049cdc  mov     x0, x26
  100049ce0  bl      _objc_release
  100049ce4  mov     x0, x25
  100049ce8  bl      _objc_release
  100049cec  adrp    x28, #0x10041d000
  100049cf0  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  100049cf4  adrp    x8, #0x100416000
  100049cf8  nop
  100049cfc  ldr     x25, [x8, #0xec8]
  100049d00  mov     x1, x25
  100049d04  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100049d08  mov     x29, x29
  100049d0c  bl      _objc_retainAutoreleasedReturnValue
  100049d10  mov     x26, x0
  100049d14  adrp    x8, #0x100417000
  100049d18  nop
  100049d1c  ldr     x1, [x8, #0x1d8]
  100049d20  ldr     x2, [sp, #8]
  100049d24  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"name"]]
  100049d28  mov     x27, x0
  100049d2c  mov     x0, x26
  100049d30  bl      _objc_release
  100049d34  cbz     w27, loc_100049d88                       ; if ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"name"]] == 0)
  100049d38  ldr     x0, [x28, #0xf70]                        ; class ADInventory
  100049d3c  mov     x1, x25
  100049d40  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100049d44  mov     x29, x29
  100049d48  bl      _objc_retainAutoreleasedReturnValue
  100049d4c  mov     x21, x0
  100049d50  adrp    x8, #0x100418000
  100049d54  nop
  100049d58  ldr     x1, [x8, #0xad8]
  100049d5c  ldr     x2, [sp, #8]
  100049d60  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] isWeaponEquipped:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"name"]]
  100049d64  mov     x20, x0
  100049d68  mov     x0, x21
  100049d6c  bl      _objc_release
  100049d70  cbz     w20, loc_100049e50                       ; if ([[ADInventory sharedInventory] isWeaponEquipped:[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"name"]] == 0)
  100049d74  adrp    x20, #0x1003bd000
  100049d78  add     x20, x20, #0x190                         ; @"equipped"
  100049d7c  mov     x0, x20
  100049d80  bl      _objc_retain
  100049d84  b       loc_100049e54
loc_100049d88:
  100049d88  adrp    x8, #0x10041d000
  100049d8c  ldr     x25, [x8, #0xf78]                        ; class NSString
  100049d90  ldr     x0, [x19, #0xf88]                        ; class ADWeaponManager
  100049d94  mov     x1, x21
  100049d98  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049d9c  mov     x29, x29
  100049da0  bl      _objc_retainAutoreleasedReturnValue
  100049da4  mov     x21, x0
  100049da8  mov     x1, x22
  100049dac  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100049db0  mov     x29, x29
  100049db4  bl      _objc_retainAutoreleasedReturnValue
  100049db8  mov     x22, x0
  100049dbc  mov     x1, x23
  100049dc0  mov     x2, x20
  100049dc4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1]
  100049dc8  mov     x29, x29
  100049dcc  bl      _objc_retainAutoreleasedReturnValue
  100049dd0  mov     x23, x0
  100049dd4  adrp    x2, #0x1003b9000
  100049dd8  add     x2, x2, #0xd70                           ; @"price"
  100049ddc  mov     x1, x24
  100049de0  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"price"]
  100049de4  mov     x29, x29
  100049de8  bl      _objc_retainAutoreleasedReturnValue
  100049dec  mov     x24, x0
  100049df0  adrp    x8, #0x100417000
  100049df4  nop
  100049df8  ldr     x1, [x8, #0x110]
  100049dfc  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1] objectForKey:@"price"] intValue]
  100049e00  adrp    x8, #0x100416000
  100049e04  nop
  100049e08  ldr     x1, [x8, #0xee8]
  100049e0c  str     x0, [sp]
  100049e10  adrp    x2, #0x1003bd000
  100049e14  add     x2, x2, #0x1b0                           ; @"Locked, costs : %i coins"
  100049e18  mov     x0, x25
  100049e1c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Locked, costs : %i coins", [[[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:arg1…]
  100049e20  mov     x29, x29
  100049e24  bl      _objc_retainAutoreleasedReturnValue
  100049e28  mov     x20, x0
  100049e2c  mov     x0, x24
  100049e30  bl      _objc_release
  100049e34  mov     x0, x23
  100049e38  bl      _objc_release
  100049e3c  mov     x0, x22
  100049e40  bl      _objc_release
  100049e44  mov     x0, x21
  100049e48  bl      _objc_release
  100049e4c  b       loc_100049e54
loc_100049e50:
  100049e50  mov     x20, #0
loc_100049e54:
  100049e54  ldr     x0, [sp, #8]
  100049e58  bl      _objc_release
  100049e5c  mov     x0, x20
  100049e60  sub     sp, x29, #0x50
  100049e64  ldp     x29, x30, [sp, #0x50]
  100049e68  ldp     x20, x19, [sp, #0x40]
  100049e6c  ldp     x22, x21, [sp, #0x30]
  100049e70  ldp     x24, x23, [sp, #0x20]
  100049e74  ldp     x26, x25, [sp, #0x10]
  100049e78  ldp     x28, x27, [sp], #0x60
  100049e7c  b       _objc_autoreleaseReturnValue
  100049e80  mov     x20, x0
  100049e84  b       loc_100049f08
  100049e88  mov     x20, x0
  100049e8c  b       loc_100049eac
  100049e90  mov     x20, x0
  100049e94  b       loc_100049ea4
  100049e98  mov     x20, x0
  100049e9c  mov     x0, x27
  100049ea0  bl      _objc_release
loc_100049ea4:
  100049ea4  mov     x0, x26
  100049ea8  bl      _objc_release
loc_100049eac:
  100049eac  mov     x0, x25
  100049eb0  b       loc_100049f0c
  100049eb4  mov     x20, x0
  100049eb8  mov     x0, x26
  100049ebc  bl      _objc_release
  100049ec0  b       loc_100049f08
  100049ec4  mov     x20, x0
  100049ec8  mov     x0, x24
  100049ecc  bl      _objc_release
  100049ed0  b       loc_100049ef0
  100049ed4  mov     x20, x0
  100049ed8  b       loc_100049f00
  100049edc  mov     x20, x0
  100049ee0  b       loc_100049f00
  100049ee4  mov     x20, x0
  100049ee8  b       loc_100049ef8
  100049eec  mov     x20, x0
loc_100049ef0:
  100049ef0  mov     x0, x23
  100049ef4  bl      _objc_release
loc_100049ef8:
  100049ef8  mov     x0, x22
  100049efc  bl      _objc_release
loc_100049f00:
  100049f00  mov     x0, x21
  100049f04  bl      _objc_release
loc_100049f08:
  100049f08  ldr     x0, [sp, #8]
loc_100049f0c:
  100049f0c  bl      _objc_release
  100049f10  mov     x0, x20
  100049f14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController tableView:cellForRowAtIndexPath:]
; address 0x100049f18  size 844  kind objc
; ======================================================================
  100049f18  stp     x28, x27, [sp, #-0x60]!
  100049f1c  stp     x26, x25, [sp, #0x10]
  100049f20  stp     x24, x23, [sp, #0x20]
  100049f24  stp     x22, x21, [sp, #0x30]
  100049f28  stp     x20, x19, [sp, #0x40]
  100049f2c  stp     x29, x30, [sp, #0x50]
  100049f30  add     x29, sp, #0x50
  100049f34  sub     sp, sp, #0x10
  100049f38  mov     x20, x3
  100049f3c  mov     x21, x0
  100049f40  mov     x0, x2
  100049f44  bl      _objc_retain
  100049f48  mov     x19, x0
  100049f4c  mov     x0, x20
  100049f50  bl      _objc_retain
  100049f54  mov     x20, x0
  100049f58  adrp    x8, #0x100417000
  100049f5c  nop
  100049f60  ldr     x1, [x8, #0x350]
  100049f64  bl      _objc_msgSend                            ; [arg2 row]
  100049f68  mov     x23, x0
  100049f6c  adrp    x8, #0x100417000
  100049f70  nop
  100049f74  ldr     x1, [x8, #0x348]
  100049f78  mov     x0, x20
  100049f7c  bl      _objc_msgSend                            ; [arg2 section]
  100049f80  cmp     x0, #1
  100049f84  b.ne    loc_10004a048                            ; if ([arg2 section] != 1)
  100049f88  adrp    x28, #0x10041d000
  100049f8c  ldr     x0, [x28, #0xf88]                        ; class ADWeaponManager
  100049f90  adrp    x8, #0x100417000
  100049f94  nop
  100049f98  ldr     x25, [x8, #0xa0]
  100049f9c  mov     x1, x25
  100049fa0  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049fa4  mov     x29, x29
  100049fa8  bl      _objc_retainAutoreleasedReturnValue
  100049fac  mov     x22, x0
  100049fb0  adrp    x8, #0x100417000
  100049fb4  nop
  100049fb8  ldr     x1, [x8, #0xa8]
  100049fbc  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  100049fc0  mov     x29, x29
  100049fc4  bl      _objc_retainAutoreleasedReturnValue
  100049fc8  mov     x24, x0
  100049fcc  adrp    x8, #0x100416000
  100049fd0  nop
  100049fd4  ldr     x27, [x8, #0xe30]
  100049fd8  mov     x1, x27
  100049fdc  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]
  100049fe0  mov     x26, x0
  100049fe4  ldr     x0, [x28, #0xf88]                        ; class ADWeaponManager
  100049fe8  mov     x1, x25
  100049fec  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100049ff0  mov     x29, x29
  100049ff4  bl      _objc_retainAutoreleasedReturnValue
  100049ff8  mov     x25, x0
  100049ffc  adrp    x8, #0x100418000
  10004a000  nop
  10004a004  ldr     x1, [x8, #0xad0]
  10004a008  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons]
  10004a00c  mov     x29, x29
  10004a010  bl      _objc_retainAutoreleasedReturnValue
  10004a014  mov     x28, x0
  10004a018  mov     x1, x27
  10004a01c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons] count]
  10004a020  add     x8, x26, w23, sxtw
  10004a024  sub     x23, x8, x0                              ; t1 = (([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count] + [arg2 row]) - [[[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons] count])
  10004a028  mov     x0, x28
  10004a02c  bl      _objc_release
  10004a030  mov     x0, x25
  10004a034  bl      _objc_release
  10004a038  mov     x0, x24
  10004a03c  bl      _objc_release
  10004a040  mov     x0, x22
  10004a044  bl      _objc_release
loc_10004a048:
  10004a048  adrp    x8, #0x100417000
  10004a04c  nop
  10004a050  ldr     x1, [x8, #0x390]
  10004a054  adrp    x2, #0x1003bd000
  10004a058  add     x2, x2, #0x1d0                           ; @"AccessibleAllLevelsCell"
  10004a05c  mov     x0, x19
  10004a060  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"AccessibleAllLevelsCell"]
  10004a064  mov     x29, x29
  10004a068  bl      _objc_retainAutoreleasedReturnValue
  10004a06c  mov     x22, x0
  10004a070  cbnz    x22, loc_10004a0ac                       ; if ([arg1 dequeueReusableCellWithIdentifier:@"AccessibleAllLevelsCell"] != 0)
  10004a074  adrp    x8, #0x10041e000
  10004a078  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10004a07c  adrp    x8, #0x100416000
  10004a080  nop
  10004a084  ldr     x1, [x8, #0xac8]
  10004a088  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10004a08c  adrp    x8, #0x100417000
  10004a090  nop
  10004a094  ldr     x1, [x8, #0x3c0]
  10004a098  mov     x2, #0
  10004a09c  adrp    x3, #0x1003bd000
  10004a0a0  add     x3, x3, #0x1d0                           ; @"AccessibleAllLevelsCell"
  10004a0a4  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:0 reuseIdentifier:@"AccessibleAllLevelsCell"]
  10004a0a8  mov     x22, x0
loc_10004a0ac:
  10004a0ac  sxtw    x24, w23
  10004a0b0  adrp    x8, #0x100418000
  10004a0b4  nop
  10004a0b8  ldr     x1, [x8, #0xae0]
  10004a0bc  mov     x0, x21
  10004a0c0  mov     x2, x24
  10004a0c4  bl      _objc_msgSend                            ; [self weaponName:x2]
  10004a0c8  mov     x29, x29
  10004a0cc  bl      _objc_retainAutoreleasedReturnValue
  10004a0d0  mov     x23, x0
  10004a0d4  adrp    x8, #0x100418000
  10004a0d8  nop
  10004a0dc  ldr     x1, [x8, #0xae8]
  10004a0e0  mov     x0, x21
  10004a0e4  mov     x2, x24
  10004a0e8  bl      _objc_msgSend                            ; [self weaponStatus:x2]
  10004a0ec  mov     x29, x29
  10004a0f0  bl      _objc_retainAutoreleasedReturnValue
  10004a0f4  mov     x21, x0
  10004a0f8  cbz     x21, loc_10004a130                       ; if ([self weaponStatus:x2] == 0)
  10004a0fc  adrp    x8, #0x10041d000
  10004a100  ldr     x0, [x8, #0xf78]                         ; class NSString
  10004a104  adrp    x8, #0x100416000
  10004a108  nop
  10004a10c  ldr     x1, [x8, #0xee8]
  10004a110  mov     x24, #0
  10004a114  stp     x23, x21, [sp]
  10004a118  adrp    x2, #0x1003bd000
  10004a11c  add     x2, x2, #0x1f0                           ; @"%@ : %@"
  10004a120  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ : %@", [self weaponName:x2], [self weaponStatus:x2]]
  10004a124  mov     x29, x29
  10004a128  bl      _objc_retainAutoreleasedReturnValue
  10004a12c  b       loc_10004a138
loc_10004a130:
  10004a130  mov     x0, x23
  10004a134  bl      _objc_retain
loc_10004a138:
  10004a138  mov     x24, x0
  10004a13c  adrp    x8, #0x100417000
  10004a140  nop
  10004a144  ldr     x1, [x8, #0x320]
  10004a148  mov     x0, x22
  10004a14c  bl      _objc_msgSend                            ; [x0 textLabel]
  10004a150  mov     x29, x29
  10004a154  bl      _objc_retainAutoreleasedReturnValue
  10004a158  mov     x26, x0
  10004a15c  adrp    x8, #0x100416000
  10004a160  nop
  10004a164  ldr     x1, [x8, #0xb68]
  10004a168  mov     x2, x24
  10004a16c  bl      _objc_msgSend                            ; [[x0 textLabel] setText:x2]
  10004a170  mov     x0, x26
  10004a174  bl      _objc_release
  10004a178  mov     x0, x24
  10004a17c  bl      _objc_release
  10004a180  mov     x0, x21
  10004a184  bl      _objc_release
  10004a188  mov     x0, x23
  10004a18c  bl      _objc_release
  10004a190  mov     x0, x20
  10004a194  bl      _objc_release
  10004a198  mov     x0, x19
  10004a19c  bl      _objc_release
  10004a1a0  mov     x0, x22
  10004a1a4  sub     sp, x29, #0x50
  10004a1a8  ldp     x29, x30, [sp, #0x50]
  10004a1ac  ldp     x20, x19, [sp, #0x40]
  10004a1b0  ldp     x22, x21, [sp, #0x30]
  10004a1b4  ldp     x24, x23, [sp, #0x20]
  10004a1b8  ldp     x26, x25, [sp, #0x10]
  10004a1bc  ldp     x28, x27, [sp], #0x60
  10004a1c0  b       _objc_autoreleaseReturnValue
  10004a1c4  mov     x25, x0
  10004a1c8  b       loc_10004a24c
  10004a1cc  mov     x25, x0
  10004a1d0  b       loc_10004a244
  10004a1d4  mov     x25, x0
  10004a1d8  b       loc_10004a1f8
  10004a1dc  mov     x25, x0
  10004a1e0  b       loc_10004a23c
  10004a1e4  mov     x25, x0
  10004a1e8  b       loc_10004a208
  10004a1ec  mov     x25, x0
  10004a1f0  mov     x0, x26
  10004a1f4  bl      _objc_release
loc_10004a1f8:
  10004a1f8  mov     x0, x24
  10004a1fc  bl      _objc_release
  10004a200  mov     x0, x21
  10004a204  bl      _objc_release
loc_10004a208:
  10004a208  mov     x0, x23
  10004a20c  b       loc_10004a240
  10004a210  mov     x25, x0
  10004a214  b       loc_10004a244
  10004a218  mov     x21, x25
  10004a21c  mov     x25, x0
  10004a220  b       loc_10004a234
  10004a224  mov     x21, x25
  10004a228  mov     x25, x0
  10004a22c  mov     x0, x28
  10004a230  bl      _objc_release
loc_10004a234:
  10004a234  mov     x0, x21
  10004a238  bl      _objc_release
loc_10004a23c:
  10004a23c  mov     x0, x24
loc_10004a240:
  10004a240  bl      _objc_release
loc_10004a244:
  10004a244  mov     x0, x22
  10004a248  bl      _objc_release
loc_10004a24c:
  10004a24c  mov     x0, x20
  10004a250  bl      _objc_release
  10004a254  mov     x0, x19
  10004a258  bl      _objc_release
  10004a25c  mov     x0, x25
  10004a260  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController tableView:didSelectRowAtIndexPath:]
; address 0x10004a264  size 1156  kind objc
; ======================================================================
  10004a264  stp     x28, x27, [sp, #-0x60]!
  10004a268  stp     x26, x25, [sp, #0x10]
  10004a26c  stp     x24, x23, [sp, #0x20]
  10004a270  stp     x22, x21, [sp, #0x30]
  10004a274  stp     x20, x19, [sp, #0x40]
  10004a278  stp     x29, x30, [sp, #0x50]
  10004a27c  add     x29, sp, #0x50
  10004a280  mov     x20, x0
  10004a284  mov     x0, x3
  10004a288  bl      _objc_retain
  10004a28c  mov     x19, x0
  10004a290  adrp    x8, #0x100417000
  10004a294  nop
  10004a298  ldr     x1, [x8, #0x350]
  10004a29c  bl      _objc_msgSend                            ; [arg2 row]
  10004a2a0  mov     x22, x0
  10004a2a4  adrp    x8, #0x100417000
  10004a2a8  nop
  10004a2ac  ldr     x1, [x8, #0x348]
  10004a2b0  mov     x0, x19
  10004a2b4  bl      _objc_msgSend                            ; [arg2 section]
  10004a2b8  cmp     x0, #1
  10004a2bc  b.ne    loc_10004a380                            ; if ([arg2 section] != 1)
  10004a2c0  adrp    x27, #0x10041d000
  10004a2c4  ldr     x0, [x27, #0xf88]                        ; class ADWeaponManager
  10004a2c8  adrp    x8, #0x100417000
  10004a2cc  nop
  10004a2d0  ldr     x24, [x8, #0xa0]
  10004a2d4  mov     x1, x24
  10004a2d8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10004a2dc  mov     x29, x29
  10004a2e0  bl      _objc_retainAutoreleasedReturnValue
  10004a2e4  mov     x21, x0
  10004a2e8  adrp    x8, #0x100417000
  10004a2ec  nop
  10004a2f0  ldr     x1, [x8, #0xa8]
  10004a2f4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10004a2f8  mov     x29, x29
  10004a2fc  bl      _objc_retainAutoreleasedReturnValue
  10004a300  mov     x23, x0
  10004a304  adrp    x8, #0x100416000
  10004a308  nop
  10004a30c  ldr     x26, [x8, #0xe30]
  10004a310  mov     x1, x26
  10004a314  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count]
  10004a318  mov     x25, x0
  10004a31c  ldr     x0, [x27, #0xf88]                        ; class ADWeaponManager
  10004a320  mov     x1, x24
  10004a324  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10004a328  mov     x29, x29
  10004a32c  bl      _objc_retainAutoreleasedReturnValue
  10004a330  mov     x24, x0
  10004a334  adrp    x8, #0x100418000
  10004a338  nop
  10004a33c  ldr     x1, [x8, #0xad0]
  10004a340  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons]
  10004a344  mov     x29, x29
  10004a348  bl      _objc_retainAutoreleasedReturnValue
  10004a34c  mov     x27, x0
  10004a350  mov     x1, x26
  10004a354  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons] count]
  10004a358  add     x8, x25, w22, sxtw
  10004a35c  sub     x22, x8, x0                              ; t1 = (([[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] count] + [arg2 row]) - [[[ADWeaponManager sharedWeaponManager] getAllMeleeWeapons] count])
  10004a360  mov     x0, x27
  10004a364  bl      _objc_release
  10004a368  mov     x0, x24
  10004a36c  bl      _objc_release
  10004a370  mov     x0, x23
  10004a374  bl      _objc_release
  10004a378  mov     x0, x21
  10004a37c  bl      _objc_release
loc_10004a380:
  10004a380  adrp    x8, #0x100417000
  10004a384  nop
  10004a388  ldr     x21, [x8, #0x2d0]
  10004a38c  mov     x0, x20
  10004a390  mov     x1, x21
  10004a394  bl      _objc_msgSend                            ; [self tableView]
  10004a398  mov     x29, x29
  10004a39c  bl      _objc_retainAutoreleasedReturnValue
  10004a3a0  mov     x23, x0
  10004a3a4  adrp    x8, #0x100418000
  10004a3a8  nop
  10004a3ac  ldr     x1, [x8, #0xaf0]
  10004a3b0  mov     w2, #1
  10004a3b4  bl      _objc_msgSend                            ; [[self tableView] setAccessibilityElementsHidden:1]
  10004a3b8  mov     x0, x23
  10004a3bc  bl      _objc_release
  10004a3c0  adrp    x8, #0x10041e000
  10004a3c4  ldr     x0, [x8, #0x1b8]                         ; class Accessible_ADWeaponDescriptionViewController
  10004a3c8  adrp    x8, #0x100416000
  10004a3cc  nop
  10004a3d0  ldr     x1, [x8, #0xac8]
  10004a3d4  bl      _objc_msgSend                            ; [Accessible_ADWeaponDescriptionViewController alloc]
  10004a3d8  mov     x24, x0
  10004a3dc  adrp    x8, #0x10041d000
  10004a3e0  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10004a3e4  adrp    x8, #0x100417000
  10004a3e8  nop
  10004a3ec  ldr     x1, [x8, #0xa0]
  10004a3f0  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10004a3f4  mov     x29, x29
  10004a3f8  bl      _objc_retainAutoreleasedReturnValue
  10004a3fc  mov     x23, x0
  10004a400  adrp    x8, #0x100417000
  10004a404  nop
  10004a408  ldr     x1, [x8, #0xa8]
  10004a40c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllWeaponsArray]
  10004a410  mov     x29, x29
  10004a414  bl      _objc_retainAutoreleasedReturnValue
  10004a418  mov     x25, x0
  10004a41c  sxtw    x2, w22
  10004a420  adrp    x8, #0x100416000
  10004a424  nop
  10004a428  ldr     x1, [x8, #0xc30]
  10004a42c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:x2]
  10004a430  mov     x29, x29
  10004a434  bl      _objc_retainAutoreleasedReturnValue
  10004a438  mov     x22, x0
  10004a43c  adrp    x8, #0x100418000
  10004a440  nop
  10004a444  ldr     x1, [x8, #0x4a8]
  10004a448  mov     x0, x24
  10004a44c  mov     x2, x22
  10004a450  bl      _objc_msgSend                            ; [[Accessible_ADWeaponDescriptionViewController alloc] initWithWeaponDictionary:[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:x2]]
  10004a454  adrp    x8, #0x10041f000
  10004a458  ldrsw   x26, [x8, #0x9d4]                        ; ivar offset Accessible_ADArmoryLoadoutViewController.detailView (+0x140)
  10004a45c  ldr     x8, [x20, x26]                           ; x8 = self->detailView
  10004a460  str     x0, [x20, x26]                           ; self->detailView = [[Accessible_ADWeaponDescriptionViewController alloc] initWithWeaponDictionary:[[[ADWeaponManager sharedWeaponManager] getAllWeaponsArray] objectAtIndex:x2]]
  10004a464  mov     x0, x8
  10004a468  bl      _objc_release
  10004a46c  mov     x0, x22
  10004a470  bl      _objc_release
  10004a474  mov     x0, x25
  10004a478  bl      _objc_release
  10004a47c  mov     x0, x23
  10004a480  bl      _objc_release
  10004a484  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10004a488  adrp    x8, #0x100418000
  10004a48c  nop
  10004a490  ldr     x1, [x8, #0xaf8]
  10004a494  mov     w2, #0
  10004a498  bl      _objc_msgSend                            ; [self->detailView setHideButtons:0]
  10004a49c  ldr     x22, [x20, x26]                          ; x22 = self->detailView
  10004a4a0  adrp    x8, #0x100416000
  10004a4a4  nop
  10004a4a8  ldr     x1, [x8, #0xfa0]
  10004a4ac  mov     x0, x20
  10004a4b0  bl      _objc_msgSend                            ; [self armoryViewController]
  10004a4b4  mov     x29, x29
  10004a4b8  bl      _objc_retainAutoreleasedReturnValue
  10004a4bc  mov     x23, x0
  10004a4c0  adrp    x8, #0x100418000
  10004a4c4  nop
  10004a4c8  ldr     x1, [x8, #0x4b0]
  10004a4cc  mov     x0, x22
  10004a4d0  mov     x2, x23
  10004a4d4  bl      _objc_msgSend                            ; [self->detailView setArmoryViewController:[self armoryViewController]]
  10004a4d8  mov     x0, x23
  10004a4dc  bl      _objc_release
  10004a4e0  ldr     x22, [x20, x26]                          ; x22 = self->detailView
  10004a4e4  mov     x0, x20
  10004a4e8  mov     x1, x21
  10004a4ec  bl      _objc_msgSend                            ; [self tableView]
  10004a4f0  mov     x29, x29
  10004a4f4  bl      _objc_retainAutoreleasedReturnValue
  10004a4f8  mov     x23, x0
  10004a4fc  adrp    x8, #0x100418000
  10004a500  nop
  10004a504  ldr     x1, [x8, #0xb00]
  10004a508  mov     x0, x22
  10004a50c  mov     x2, x23
  10004a510  bl      _objc_msgSend                            ; [self->detailView setParentTableView:[self tableView]]
  10004a514  mov     x0, x23
  10004a518  bl      _objc_release
  10004a51c  adrp    x8, #0x100416000
  10004a520  nop
  10004a524  ldr     x22, [x8, #0xf18]
  10004a528  mov     x0, x20
  10004a52c  mov     x1, x22
  10004a530  bl      _objc_msgSend                            ; [self view]
  10004a534  mov     x29, x29
  10004a538  bl      _objc_retainAutoreleasedReturnValue
  10004a53c  mov     x23, x0
  10004a540  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10004a544  mov     x1, x22
  10004a548  bl      _objc_msgSend                            ; [self->detailView view]
  10004a54c  mov     x29, x29
  10004a550  bl      _objc_retainAutoreleasedReturnValue
  10004a554  mov     x24, x0
  10004a558  adrp    x8, #0x100416000
  10004a55c  nop
  10004a560  ldr     x1, [x8, #0xf20]
  10004a564  mov     x0, x23
  10004a568  mov     x2, x24
  10004a56c  bl      _objc_msgSend                            ; [[self view] addSubview:[self->detailView view]]
  10004a570  mov     x0, x24
  10004a574  bl      _objc_release
  10004a578  mov     x0, x23
  10004a57c  bl      _objc_release
  10004a580  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10004a584  mov     x1, x22
  10004a588  bl      _objc_msgSend                            ; [self->detailView view]
  10004a58c  mov     x29, x29
  10004a590  bl      _objc_retainAutoreleasedReturnValue
  10004a594  mov     x23, x0
  10004a598  mov     x0, x20
  10004a59c  mov     x1, x21
  10004a5a0  bl      _objc_msgSend                            ; [self tableView]
  10004a5a4  mov     x29, x29
  10004a5a8  bl      _objc_retainAutoreleasedReturnValue
  10004a5ac  mov     x21, x0
  10004a5b0  adrp    x8, #0x100417000
  10004a5b4  nop
  10004a5b8  ldr     x1, [x8, #0x688]
  10004a5bc  bl      _objc_msgSend                            ; [[self tableView] center]
  10004a5c0  adrp    x8, #0x100417000
  10004a5c4  nop
  10004a5c8  ldr     x1, [x8, #0x1f8]
  10004a5cc  mov     x0, x23
  10004a5d0  bl      _objc_msgSend                            ; [[self->detailView view] setCenter:{[[self tableView] center].0, [[self tableView] center].1}]
  10004a5d4  mov     x0, x21
  10004a5d8  bl      _objc_release
  10004a5dc  mov     x0, x23
  10004a5e0  bl      _objc_release
  10004a5e4  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10004a5e8  mov     x1, x22
  10004a5ec  bl      _objc_msgSend                            ; [self->detailView view]
  10004a5f0  mov     x29, x29
  10004a5f4  bl      _objc_retainAutoreleasedReturnValue
  10004a5f8  mov     x21, x0
  10004a5fc  adrp    x8, #0x100418000
  10004a600  nop
  10004a604  ldr     x1, [x8, #0x618]
  10004a608  mov     w2, #1
  10004a60c  bl      _objc_msgSend                            ; [[self->detailView view] setAccessibilityViewIsModal:1]
  10004a610  mov     x0, x21
  10004a614  bl      _objc_release
  10004a618  mov     x0, x19
  10004a61c  ldp     x29, x30, [sp, #0x50]
  10004a620  ldp     x20, x19, [sp, #0x40]
  10004a624  ldp     x22, x21, [sp, #0x30]
  10004a628  ldp     x24, x23, [sp, #0x20]
  10004a62c  ldp     x26, x25, [sp, #0x10]
  10004a630  ldp     x28, x27, [sp], #0x60
  10004a634  b       _objc_release
  10004a638  mov     x20, x0
  10004a63c  b       loc_10004a6d8
  10004a640  mov     x20, x0
  10004a644  mov     x0, x21
  10004a648  b       loc_10004a68c
  10004a64c  mov     x20, x0
  10004a650  b       loc_10004a6c8
  10004a654  b       loc_10004a694
  10004a658  b       loc_10004a694
  10004a65c  mov     x20, x0
  10004a660  b       loc_10004a670
  10004a664  mov     x20, x0
  10004a668  mov     x0, x22
  10004a66c  bl      _objc_release
loc_10004a670:
  10004a670  mov     x0, x25
  10004a674  b       loc_10004a68c
  10004a678  b       loc_10004a694
  10004a67c  b       loc_10004a694
  10004a680  b       loc_10004a694
  10004a684  mov     x20, x0
  10004a688  mov     x0, x24
loc_10004a68c:
  10004a68c  bl      _objc_release
  10004a690  b       loc_10004a698
loc_10004a694:
  10004a694  mov     x20, x0
loc_10004a698:
  10004a698  mov     x0, x23
  10004a69c  b       loc_10004a6d4
  10004a6a0  b       loc_10004a6a4
loc_10004a6a4:
  10004a6a4  mov     x20, x0
  10004a6a8  b       loc_10004a6d0
  10004a6ac  mov     x20, x0
  10004a6b0  b       loc_10004a6c0
  10004a6b4  mov     x20, x0
  10004a6b8  mov     x0, x27
  10004a6bc  bl      _objc_release
loc_10004a6c0:
  10004a6c0  mov     x0, x24
  10004a6c4  bl      _objc_release
loc_10004a6c8:
  10004a6c8  mov     x0, x23
  10004a6cc  bl      _objc_release
loc_10004a6d0:
  10004a6d0  mov     x0, x21
loc_10004a6d4:
  10004a6d4  bl      _objc_release
loc_10004a6d8:
  10004a6d8  mov     x0, x19
  10004a6dc  bl      _objc_release
  10004a6e0  mov     x0, x20
  10004a6e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController viewWillLayoutSubviews]
; address 0x10004a6e8  size 92  kind objc
; ======================================================================
  10004a6e8  stp     x20, x19, [sp, #-0x20]!
  10004a6ec  stp     x29, x30, [sp, #0x10]
  10004a6f0  add     x29, sp, #0x10
  10004a6f4  adrp    x8, #0x100417000
  10004a6f8  nop
  10004a6fc  ldr     x1, [x8, #0x2d0]
  10004a700  bl      _objc_msgSend                            ; [self tableView]
  10004a704  mov     x29, x29
  10004a708  bl      _objc_retainAutoreleasedReturnValue
  10004a70c  mov     x19, x0
  10004a710  adrp    x8, #0x100417000
  10004a714  nop
  10004a718  ldr     x1, [x8, #0xb18]
  10004a71c  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  10004a720  mov     x0, x19
  10004a724  ldp     x29, x30, [sp, #0x10]
  10004a728  ldp     x20, x19, [sp], #0x20
  10004a72c  b       _objc_release
  10004a730  mov     x20, x0
  10004a734  mov     x0, x19
  10004a738  bl      _objc_release
  10004a73c  mov     x0, x20
  10004a740  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController tableView]
; address 0x10004a744  size 16  kind objc
; ======================================================================
  10004a744  adrp    x8, #0x10041f000
  10004a748  ldrsw   x8, [x8, #0x9d8]                         ; ivar offset Accessible_ADArmoryLoadoutViewController._tableView (+0x148)
  10004a74c  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  10004a750  ret

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController setTableView:]
; address 0x10004a754  size 56  kind objc
; ======================================================================
  10004a754  stp     x20, x19, [sp, #-0x20]!
  10004a758  stp     x29, x30, [sp, #0x10]
  10004a75c  add     x29, sp, #0x10
  10004a760  mov     x19, x0
  10004a764  adrp    x8, #0x10041f000
  10004a768  ldrsw   x20, [x8, #0x9d8]                        ; ivar offset Accessible_ADArmoryLoadoutViewController._tableView (+0x148)
  10004a76c  mov     x0, x2
  10004a770  bl      _objc_retain
  10004a774  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  10004a778  str     x0, [x19, x20]                           ; self->_tableView = arg1
  10004a77c  mov     x0, x8
  10004a780  ldp     x29, x30, [sp, #0x10]
  10004a784  ldp     x20, x19, [sp], #0x20
  10004a788  b       _objc_release

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController armoryViewController]
; address 0x10004a78c  size 32  kind objc
; ======================================================================
  10004a78c  stp     x29, x30, [sp, #-0x10]!
  10004a790  mov     x29, sp
  10004a794  adrp    x8, #0x10041f000
  10004a798  ldrsw   x8, [x8, #0x9dc]                         ; ivar offset Accessible_ADArmoryLoadoutViewController._armoryViewController (+0x150)
  10004a79c  add     x0, x0, x8
  10004a7a0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004a7a4  ldp     x29, x30, [sp], #0x10
  10004a7a8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController setArmoryViewController:]
; address 0x10004a7ac  size 20  kind objc
; ======================================================================
  10004a7ac  adrp    x8, #0x10041f000
  10004a7b0  ldrsw   x8, [x8, #0x9dc]                         ; ivar offset Accessible_ADArmoryLoadoutViewController._armoryViewController (+0x150)
  10004a7b4  add     x0, x0, x8
  10004a7b8  mov     x1, x2
  10004a7bc  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[Accessible_ADArmoryLoadoutViewController .cxx_destruct]
; address 0x10004a7c0  size 80  kind objc
; ======================================================================
  10004a7c0  stp     x20, x19, [sp, #-0x20]!
  10004a7c4  stp     x29, x30, [sp, #0x10]
  10004a7c8  add     x29, sp, #0x10
  10004a7cc  mov     x19, x0
  10004a7d0  adrp    x8, #0x10041f000
  10004a7d4  ldrsw   x8, [x8, #0x9dc]                         ; ivar offset Accessible_ADArmoryLoadoutViewController._armoryViewController (+0x150)
  10004a7d8  add     x0, x19, x8
  10004a7dc  bl      _objc_destroyWeak
  10004a7e0  adrp    x8, #0x10041f000
  10004a7e4  ldrsw   x8, [x8, #0x9d8]                         ; ivar offset Accessible_ADArmoryLoadoutViewController._tableView (+0x148)
  10004a7e8  add     x0, x19, x8
  10004a7ec  mov     x1, #0
  10004a7f0  bl      _objc_storeStrong
  10004a7f4  mov     x1, #0
  10004a7f8  adrp    x8, #0x10041f000
  10004a7fc  ldrsw   x8, [x8, #0x9d4]                         ; ivar offset Accessible_ADArmoryLoadoutViewController.detailView (+0x140)
  10004a800  add     x0, x19, x8
  10004a804  ldp     x29, x30, [sp, #0x10]
  10004a808  ldp     x20, x19, [sp], #0x20
  10004a80c  b       _objc_storeStrong
