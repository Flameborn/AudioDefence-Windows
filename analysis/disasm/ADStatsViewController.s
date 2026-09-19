// unit ADStatsViewController — 60 functions
//   0x1000cc5a0     748  -[ADStatsViewController initWithNibName:bundle:]
//   0x1000cc88c    2404  -[ADStatsViewController viewDidLoad]
//   0x1000cd1f0     260  -[ADStatsViewController loadView]
//   0x1000cd2f4      16  -[ADStatsViewController viewWillDisappear:]
//   0x1000cd304     260  -[ADStatsViewController handleAppEnteringBackground:]
//   0x1000cd408      68  -[ADStatsViewController handleAppEnteringForeground:]
//   0x1000cd44c     300  -[ADStatsViewController loadData]
//   0x1000cd578     536  -[ADStatsViewController loadData]_block_invoke
//   0x1000cd790       8  sub_1000cd790
//   0x1000cd798       8  sub_1000cd798
//   0x1000cd7a0    2792  -[ADStatsViewController loadEnemies]
//   0x1000ce288    3140  -[ADStatsViewController loadWeapons]
//   0x1000ceecc    1580  -[ADStatsViewController createSectionsForWeapons]
//   0x1000cf4f8     356  -[ADStatsViewController createSectionsForWeapons]_block_invoke
//   0x1000cf65c      16  -[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke
//   0x1000cf66c       8  -[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke_2
//   0x1000cf674     232  -[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke_3
//   0x1000cf75c      52  sub_1000cf75c
//   0x1000cf790      44  sub_1000cf790
//   0x1000cf7bc       8  sub_1000cf7bc
//   0x1000cf7c4       8  sub_1000cf7c4
//   0x1000cf7cc    1168  -[ADStatsViewController createSectionsForEnemies]
//   0x1000cfc5c     768  -[ADStatsViewController createGlobalSection]
//   0x1000cff5c     768  -[ADStatsViewController createEndlessModeSection]
//   0x1000d025c      60  -[ADStatsViewController didReceiveMemoryWarning]
//   0x1000d0298     104  -[ADStatsViewController backButtonPressed]
//   0x1000d0300       4  -[ADStatsViewController backButtonPressed]_block_invoke
//   0x1000d0304    1084  -[ADStatsViewController configureGlobalCell:ForRow:]
//   0x1000d0740     972  -[ADStatsViewController configureEndlessModeCell:ForRow:]
//   0x1000d0b0c     232  -[ADStatsViewController formattedScoreFromInt:]
//   0x1000d0bf4    1020  -[ADStatsViewController configureEnemyCell:ForRow:]
//   0x1000d0ff0    1164  -[ADStatsViewController configureWeaponCell:ForRow:]
//   0x1000d147c    4488  -[ADStatsViewController tableView:cellForRowAtIndexPath:]
//   0x1000d2604     152  -[ADStatsViewController tableView:willDisplayCell:forRowAtIndexPath:]
//   0x1000d269c       8  -[ADStatsViewController numberOfSectionsInTableView:]
//   0x1000d26a4     360  -[ADStatsViewController tableView:numberOfRowsInSection:]
//   0x1000d280c     292  -[ADStatsViewController tableView:heightForHeaderInSection:]
//   0x1000d2930     760  -[ADStatsViewController tableView:heightForRowAtIndexPath:]
//   0x1000d2c28     440  -[ADStatsViewController tableView:viewForHeaderInSection:]
//   0x1000d2de0      32  -[ADStatsViewController tableView]
//   0x1000d2e00      20  -[ADStatsViewController setTableView:]
//   0x1000d2e14      16  -[ADStatsViewController globalData]
//   0x1000d2e24      12  -[ADStatsViewController setGlobalData:]
//   0x1000d2e30      16  -[ADStatsViewController endlessModeData]
//   0x1000d2e40      12  -[ADStatsViewController setEndlessModeData:]
//   0x1000d2e4c      16  -[ADStatsViewController weaponsData]
//   0x1000d2e5c      12  -[ADStatsViewController setWeaponsData:]
//   0x1000d2e68      16  -[ADStatsViewController enemiesData]
//   0x1000d2e78      12  -[ADStatsViewController setEnemiesData:]
//   0x1000d2e84      16  -[ADStatsViewController endlessModeStatsOrdering]
//   0x1000d2e94      12  -[ADStatsViewController setEndlessModeStatsOrdering:]
//   0x1000d2ea0      16  -[ADStatsViewController globalStatsOrdering]
//   0x1000d2eb0      12  -[ADStatsViewController setGlobalStatsOrdering:]
//   0x1000d2ebc      16  -[ADStatsViewController enemyCells]
//   0x1000d2ecc      12  -[ADStatsViewController setEnemyCells:]
//   0x1000d2ed8      16  -[ADStatsViewController weaponCells]
//   0x1000d2ee8      12  -[ADStatsViewController setWeaponCells:]
//   0x1000d2ef4      20  -[ADStatsViewController dataLoaded]
//   0x1000d2f08      16  -[ADStatsViewController setDataLoaded:]
//   0x1000d2f18     200  -[ADStatsViewController .cxx_destruct]

; ======================================================================
; -[ADStatsViewController initWithNibName:bundle:]
; address 0x1000cc5a0  size 748  kind objc
; ======================================================================
  1000cc5a0  stp     x26, x25, [sp, #-0x50]!
  1000cc5a4  stp     x24, x23, [sp, #0x10]
  1000cc5a8  stp     x22, x21, [sp, #0x20]
  1000cc5ac  stp     x20, x19, [sp, #0x30]
  1000cc5b0  stp     x29, x30, [sp, #0x40]
  1000cc5b4  add     x29, sp, #0x40
  1000cc5b8  sub     sp, sp, #0xa0
  1000cc5bc  mov     x20, x3
  1000cc5c0  mov     x21, x0
  1000cc5c4  adrp    x24, #0x1003b0000
  1000cc5c8  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000cc5cc  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000cc5d0  stur    x24, [x29, #-0x48]
  1000cc5d4  mov     x0, x2
  1000cc5d8  bl      _objc_retain
  1000cc5dc  mov     x19, x0
  1000cc5e0  mov     x0, x20
  1000cc5e4  bl      _objc_retain
  1000cc5e8  mov     x20, x0
  1000cc5ec  str     x21, [sp, #8]
  1000cc5f0  adrp    x8, #0x10041e000
  1000cc5f4  ldr     x8, [x8, #0xfc8]
  1000cc5f8  str     x8, [sp, #0x10]
  1000cc5fc  adrp    x8, #0x100416000
  1000cc600  nop
  1000cc604  ldr     x1, [x8, #0xb40]
  1000cc608  mov     x22, #0
  1000cc60c  add     x0, sp, #8
  1000cc610  mov     x2, x19
  1000cc614  mov     x3, x20
  1000cc618  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000cc61c  mov     x21, x0
  1000cc620  cbz     x21, loc_1000cc800                       ; if (self == 0)
  1000cc624  adrp    x8, #0x1003bf000
  1000cc628  add     x8, x8, #0xb50                           ; @"Deaths"
  1000cc62c  adrp    x9, #0x1003b9000
  1000cc630  add     x9, x9, #0x950                           ; @"Kills"
  1000cc634  adrp    x10, #0x1003bf000
  1000cc638  add     x10, x10, #0xa70                         ; @"Total play time in Endless Mode"
  1000cc63c  stp     x8, x9, [sp, #0x38]
  1000cc640  adrp    x8, #0x1003bf000
  1000cc644  add     x8, x8, #0xa50                           ; @"Total play time in Challenge Mode"
  1000cc648  adrp    x11, #0x1003bf000
  1000cc64c  add     x11, x11, #0xbb0                         ; @"Challenge stars unlocked"
  1000cc650  adrp    x9, #0x1003bf000
  1000cc654  add     x9, x9, #0xb10                           ; @"Total number of missions completed"
  1000cc658  stp     x10, x8, [sp, #0x48]
  1000cc65c  stp     x11, x9, [sp, #0x58]
  1000cc660  adrp    x8, #0x1003bf000
  1000cc664  add     x8, x8, #0xb30                           ; @"Total number of missions skipped"
  1000cc668  str     x8, [sp, #0x68]
  1000cc66c  adrp    x8, #0x1003c2000
  1000cc670  add     x8, x8, #0x3b0                           ; @"Money earned"
  1000cc674  str     x8, [sp, #0x70]
  1000cc678  adrp    x8, #0x1003c2000
  1000cc67c  add     x8, x8, #0x3d0                           ; @"Diamonds collected"
  1000cc680  str     x8, [sp, #0x78]
  1000cc684  adrp    x8, #0x1003bf000
  1000cc688  add     x8, x8, #0x9b0                           ; @"Weapons obtained"
  1000cc68c  str     x8, [sp, #0x80]
  1000cc690  adrp    x8, #0x1003ba000
  1000cc694  add     x8, x8, #0x310                           ; @"Shots fired"
  1000cc698  str     x8, [sp, #0x88]
  1000cc69c  adrp    x8, #0x1003bf000
  1000cc6a0  add     x8, x8, #0xaf0                           ; @"Melee swings"
  1000cc6a4  str     x8, [sp, #0x90]
  1000cc6a8  mov     x22, x21
  1000cc6ac  adrp    x25, #0x10041d000
  1000cc6b0  ldr     x0, [x25, #0xf20]                        ; class NSArray
  1000cc6b4  adrp    x8, #0x100417000
  1000cc6b8  nop
  1000cc6bc  ldr     x23, [x8, #0x3c8]
  1000cc6c0  add     x2, sp, #0x38
  1000cc6c4  mov     w3, #0xc
  1000cc6c8  mov     x1, x23
  1000cc6cc  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x38] count:12]
  1000cc6d0  mov     x2, x0
  1000cc6d4  adrp    x8, #0x10041a000
  1000cc6d8  nop
  1000cc6dc  ldr     x1, [x8, #0xcb8]
  1000cc6e0  mov     x0, x21
  1000cc6e4  bl      _objc_msgSend                            ; [self setGlobalStatsOrdering:[NSArray arrayWithObjects:&sp[0x38] count:12]]
  1000cc6e8  adrp    x8, #0x1003bf000
  1000cc6ec  add     x8, x8, #0xa90                           ; @"Longest Endless Mode"
  1000cc6f0  mov     x22, x21
  1000cc6f4  str     x8, [sp, #0x18]
  1000cc6f8  adrp    x8, #0x1003bf000
  1000cc6fc  add     x8, x8, #0xa10                           ; @"Total kills"
  1000cc700  adrp    x9, #0x1003c2000
  1000cc704  add     x9, x9, #0x3f0                           ; @"Best score"
  1000cc708  stp     x8, x9, [sp, #0x20]
  1000cc70c  adrp    x8, #0x1003bf000
  1000cc710  add     x8, x8, #0xa30                           ; @"Best number of kills"
  1000cc714  str     x8, [sp, #0x30]
  1000cc718  ldr     x0, [x25, #0xf20]                        ; class NSArray
  1000cc71c  add     x2, sp, #0x18
  1000cc720  mov     w3, #4
  1000cc724  mov     x1, x23
  1000cc728  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x18] count:4]
  1000cc72c  mov     x2, x0
  1000cc730  adrp    x8, #0x10041a000
  1000cc734  nop
  1000cc738  ldr     x1, [x8, #0xcc0]
  1000cc73c  mov     x0, x21
  1000cc740  bl      _objc_msgSend                            ; [self setEndlessModeStatsOrdering:[NSArray arrayWithObjects:&sp[0x18] count:4]]
  1000cc744  mov     x22, x21
  1000cc748  adrp    x8, #0x10041d000
  1000cc74c  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000cc750  adrp    x8, #0x100416000
  1000cc754  nop
  1000cc758  ldr     x1, [x8, #0xe10]
  1000cc75c  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000cc760  mov     x29, x29
  1000cc764  bl      _objc_retainAutoreleasedReturnValue
  1000cc768  mov     x23, x0
  1000cc76c  adrp    x8, #0x10041a000
  1000cc770  nop
  1000cc774  ldr     x1, [x8, #0xcc8]
  1000cc778  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] computeChallengesWonAndSave]
  1000cc77c  mov     x22, x21
  1000cc780  mov     x0, x23
  1000cc784  bl      _objc_release
  1000cc788  adrp    x8, #0x10041a000
  1000cc78c  nop
  1000cc790  ldr     x1, [x8, #0xcd0]
  1000cc794  mov     x0, x21
  1000cc798  bl      _objc_msgSend                            ; [self createSectionsForWeapons]
  1000cc79c  mov     x22, x21
  1000cc7a0  adrp    x8, #0x10041a000
  1000cc7a4  nop
  1000cc7a8  ldr     x1, [x8, #0xcd8]
  1000cc7ac  mov     x0, x21
  1000cc7b0  bl      _objc_msgSend                            ; [self createGlobalSection]
  1000cc7b4  mov     x22, x21
  1000cc7b8  adrp    x8, #0x10041a000
  1000cc7bc  nop
  1000cc7c0  ldr     x1, [x8, #0xce0]
  1000cc7c4  mov     x0, x21
  1000cc7c8  bl      _objc_msgSend                            ; [self createEndlessModeSection]
  1000cc7cc  mov     x22, x21
  1000cc7d0  adrp    x8, #0x10041a000
  1000cc7d4  nop
  1000cc7d8  ldr     x1, [x8, #0xce8]
  1000cc7dc  mov     x0, x21
  1000cc7e0  bl      _objc_msgSend                            ; [self createSectionsForEnemies]
  1000cc7e4  mov     x22, x21
  1000cc7e8  adrp    x8, #0x10041a000
  1000cc7ec  nop
  1000cc7f0  ldr     x1, [x8, #0xcf0]
  1000cc7f4  mov     w2, #0
  1000cc7f8  mov     x0, x21
  1000cc7fc  bl      _objc_msgSend                            ; [self setDataLoaded:0]
loc_1000cc800:
  1000cc800  mov     x0, x20
  1000cc804  bl      _objc_release
  1000cc808  mov     x0, x19
  1000cc80c  bl      _objc_release
  1000cc810  ldur    x8, [x29, #-0x48]
  1000cc814  sub     x8, x24, x8
  1000cc818  cbnz    x8, loc_1000cc83c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000cc81c  mov     x0, x21
  1000cc820  sub     sp, x29, #0x40
  1000cc824  ldp     x29, x30, [sp, #0x40]
  1000cc828  ldp     x20, x19, [sp, #0x30]
  1000cc82c  ldp     x22, x21, [sp, #0x20]
  1000cc830  ldp     x24, x23, [sp, #0x10]
  1000cc834  ldp     x26, x25, [sp], #0x50
  1000cc838  ret
loc_1000cc83c:
  1000cc83c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000cc840  mov     x23, x0
  1000cc844  b       loc_1000cc86c
  1000cc848  b       loc_1000cc84c
loc_1000cc84c:
  1000cc84c  mov     x23, x0
  1000cc850  mov     x22, x21
  1000cc854  b       loc_1000cc86c
  1000cc858  mov     x1, x23
  1000cc85c  mov     x23, x0
  1000cc860  mov     x0, x1
  1000cc864  bl      _objc_release
  1000cc868  mov     x22, x21
loc_1000cc86c:
  1000cc86c  mov     x0, x20
  1000cc870  bl      _objc_release
  1000cc874  mov     x0, x19
  1000cc878  bl      _objc_release
  1000cc87c  mov     x0, x22
  1000cc880  bl      _objc_release
  1000cc884  mov     x0, x23
  1000cc888  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController viewDidLoad]
; address 0x1000cc88c  size 2404  kind objc
; ======================================================================
  1000cc88c  stp     d9, d8, [sp, #-0x70]!
  1000cc890  stp     x28, x27, [sp, #0x10]
  1000cc894  stp     x26, x25, [sp, #0x20]
  1000cc898  stp     x24, x23, [sp, #0x30]
  1000cc89c  stp     x22, x21, [sp, #0x40]
  1000cc8a0  stp     x20, x19, [sp, #0x50]
  1000cc8a4  stp     x29, x30, [sp, #0x60]
  1000cc8a8  add     x29, sp, #0x60
  1000cc8ac  sub     sp, sp, #0x20
  1000cc8b0  mov     x19, x0
  1000cc8b4  str     x19, [sp, #0x10]
  1000cc8b8  adrp    x8, #0x10041e000
  1000cc8bc  ldr     x8, [x8, #0xfc8]
  1000cc8c0  str     x8, [sp, #0x18]
  1000cc8c4  adrp    x8, #0x100416000
  1000cc8c8  nop
  1000cc8cc  ldr     x1, [x8, #0xb48]
  1000cc8d0  add     x0, sp, #0x10
  1000cc8d4  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000cc8d8  adrp    x8, #0x100417000
  1000cc8dc  nop
  1000cc8e0  ldr     x20, [x8, #0x2a8]
  1000cc8e4  mov     x0, x19
  1000cc8e8  mov     x1, x20
  1000cc8ec  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000cc8f0  mov     x29, x29
  1000cc8f4  bl      _objc_retainAutoreleasedReturnValue
  1000cc8f8  mov     x21, x0
  1000cc8fc  adrp    x8, #0x100417000
  1000cc900  nop
  1000cc904  ldr     x1, [x8, #0x2b0]
  1000cc908  mov     w2, #0
  1000cc90c  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  1000cc910  mov     x0, x21
  1000cc914  bl      _objc_release
  1000cc918  mov     x0, x19
  1000cc91c  mov     x1, x20
  1000cc920  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000cc924  mov     x29, x29
  1000cc928  bl      _objc_retainAutoreleasedReturnValue
  1000cc92c  mov     x21, x0
  1000cc930  adrp    x8, #0x100417000
  1000cc934  nop
  1000cc938  ldr     x1, [x8, #0x2b8]
  1000cc93c  mov     w2, #0
  1000cc940  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000cc944  mov     x0, x21
  1000cc948  bl      _objc_release
  1000cc94c  mov     x0, x19
  1000cc950  mov     x1, x20
  1000cc954  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000cc958  mov     x29, x29
  1000cc95c  bl      _objc_retainAutoreleasedReturnValue
  1000cc960  mov     x21, x0
  1000cc964  adrp    x8, #0x100417000
  1000cc968  nop
  1000cc96c  ldr     x1, [x8, #0x2c0]
  1000cc970  mov     w2, #0
  1000cc974  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  1000cc978  mov     x0, x21
  1000cc97c  bl      _objc_release
  1000cc980  mov     x0, x19
  1000cc984  mov     x1, x20
  1000cc988  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000cc98c  mov     x29, x29
  1000cc990  bl      _objc_retainAutoreleasedReturnValue
  1000cc994  mov     x20, x0
  1000cc998  adrp    x8, #0x100417000
  1000cc99c  nop
  1000cc9a0  ldr     x1, [x8, #0x2c8]
  1000cc9a4  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000cc9a8  mov     x29, x29
  1000cc9ac  bl      _objc_retainAutoreleasedReturnValue
  1000cc9b0  mov     x21, x0
  1000cc9b4  adrp    x8, #0x100416000
  1000cc9b8  nop
  1000cc9bc  ldr     x1, [x8, #0xb68]
  1000cc9c0  adrp    x2, #0x1003ba000
  1000cc9c4  add     x2, x2, #0xb0                            ; @"STATISTICS"
  1000cc9c8  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"STATISTICS"]
  1000cc9cc  mov     x0, x21
  1000cc9d0  bl      _objc_release
  1000cc9d4  mov     x0, x20
  1000cc9d8  bl      _objc_release
  1000cc9dc  adrp    x8, #0x100417000
  1000cc9e0  nop
  1000cc9e4  ldr     x20, [x8, #0x2d0]
  1000cc9e8  mov     x0, x19
  1000cc9ec  mov     x1, x20
  1000cc9f0  bl      _objc_msgSend                            ; [self tableView]
  1000cc9f4  mov     x29, x29
  1000cc9f8  bl      _objc_retainAutoreleasedReturnValue
  1000cc9fc  mov     x21, x0
  1000cca00  adrp    x8, #0x10041d000
  1000cca04  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000cca08  adrp    x8, #0x100417000
  1000cca0c  nop
  1000cca10  ldr     x1, [x8, #0x340]
  1000cca14  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000cca18  mov     x29, x29
  1000cca1c  bl      _objc_retainAutoreleasedReturnValue
  1000cca20  mov     x22, x0
  1000cca24  adrp    x8, #0x100417000
  1000cca28  nop
  1000cca2c  ldr     x1, [x8, #0x188]
  1000cca30  mov     x0, x21
  1000cca34  mov     x2, x22
  1000cca38  bl      _objc_msgSend                            ; [[self tableView] setBackgroundColor:[UIColor clearColor]]
  1000cca3c  mov     x0, x22
  1000cca40  bl      _objc_release
  1000cca44  mov     x0, x21
  1000cca48  bl      _objc_release
  1000cca4c  adrp    x26, #0x10041e000
  1000cca50  ldr     x0, [x26, #0x50]                         ; class UIDevice
  1000cca54  adrp    x8, #0x100417000
  1000cca58  nop
  1000cca5c  ldr     x23, [x8, #0x788]
  1000cca60  mov     x1, x23
  1000cca64  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000cca68  mov     x29, x29
  1000cca6c  bl      _objc_retainAutoreleasedReturnValue
  1000cca70  mov     x21, x0
  1000cca74  adrp    x8, #0x100418000
  1000cca78  nop
  1000cca7c  ldr     x24, [x8, #0x9e8]
  1000cca80  mov     x1, x24
  1000cca84  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000cca88  mov     x29, x29
  1000cca8c  bl      _objc_retainAutoreleasedReturnValue
  1000cca90  mov     x22, x0
  1000cca94  adrp    x8, #0x100416000
  1000cca98  nop
  1000cca9c  ldr     x25, [x8, #0xf58]
  1000ccaa0  adrp    x2, #0x1003bd000
  1000ccaa4  add     x2, x2, #0x30                            ; @"iPhone"
  1000ccaa8  mov     x1, x25
  1000ccaac  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000ccab0  cbz     w0, loc_1000ccb4c                        ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] == 0)
  1000ccab4  adrp    x27, #0x10041e000
  1000ccab8  ldr     x0, [x27, #0x28]                         ; class UIScreen
  1000ccabc  adrp    x8, #0x100417000
  1000ccac0  nop
  1000ccac4  ldr     x28, [x8, #0x6e8]
  1000ccac8  mov     x1, x28
  1000ccacc  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ccad0  mov     x29, x29
  1000ccad4  bl      _objc_retainAutoreleasedReturnValue
  1000ccad8  str     x0, [sp, #8]
  1000ccadc  adrp    x8, #0x100418000
  1000ccae0  nop
  1000ccae4  ldr     x26, [x8, #0x9f0]
  1000ccae8  adrp    x8, #0x100417000
  1000ccaec  nop
  1000ccaf0  ldr     x1, [x8, #0xe90]
  1000ccaf4  mov     x2, x26
  1000ccaf8  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  1000ccafc  mov     x8, x0
  1000ccb00  ldr     x0, [x27, #0x28]                         ; class UIScreen
  1000ccb04  cbz     w8, loc_1000ccb60                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  1000ccb08  mov     x1, x28
  1000ccb0c  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ccb10  mov     x29, x29
  1000ccb14  bl      _objc_retainAutoreleasedReturnValue
  1000ccb18  str     x0, [sp]
  1000ccb1c  mov     x1, x26
  1000ccb20  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000ccb24  nop
  1000ccb28  ldr     d0, #0x100181bd0                         ; d0 = -1704.0
  1000ccb2c  fadd    d0, d3, d0
  1000ccb30  fabs    d0, d0
  1000ccb34  adrp    x8, #0x100181000
  1000ccb38  ldr     d8, [x8, #0xbc8]                         ; d8 = 2.22044605e-16
  1000ccb3c  fcmp    d0, d8
  1000ccb40  b.pl    loc_1000ccbb4                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  1000ccb44  mov     w27, #0
  1000ccb48  b       loc_1000ccbf4
loc_1000ccb4c:
  1000ccb4c  mov     x0, x22
  1000ccb50  bl      _objc_release
  1000ccb54  mov     x0, x21
  1000ccb58  bl      _objc_release
  1000ccb5c  b       loc_1000ccd5c
loc_1000ccb60:
  1000ccb60  mov     x1, x28
  1000ccb64  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ccb68  mov     x29, x29
  1000ccb6c  bl      _objc_retainAutoreleasedReturnValue
  1000ccb70  mov     x26, x0
  1000ccb74  adrp    x8, #0x100417000
  1000ccb78  nop
  1000ccb7c  ldr     x1, [x8, #0x748]
  1000ccb80  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  1000ccb84  nop
  1000ccb88  ldr     d0, #0x100181bc0                         ; d0 = -568.0
  1000ccb8c  fadd    d0, d3, d0
  1000ccb90  fabs    d0, d0
  1000ccb94  nop
  1000ccb98  ldr     d1, #0x100181bc8                         ; d1 = 2.22044605e-16
  1000ccb9c  fcmp    d0, d1
  1000ccba0  cset    w27, pl
  1000ccba4  mov     x0, x26
  1000ccba8  bl      _objc_release
  1000ccbac  adrp    x26, #0x10041e000
  1000ccbb0  b       loc_1000ccc00
loc_1000ccbb4:
  1000ccbb4  ldr     x0, [x27, #0x28]                         ; class UIScreen
  1000ccbb8  mov     x1, x28
  1000ccbbc  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ccbc0  mov     x29, x29
  1000ccbc4  bl      _objc_retainAutoreleasedReturnValue
  1000ccbc8  mov     x28, x0
  1000ccbcc  mov     x1, x26
  1000ccbd0  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000ccbd4  nop
  1000ccbd8  ldr     d0, #0x100181bd8                         ; d0 = -1136.0
  1000ccbdc  fadd    d0, d3, d0
  1000ccbe0  fabs    d0, d0
  1000ccbe4  fcmp    d0, d8
  1000ccbe8  cset    w27, pl
  1000ccbec  mov     x0, x28
  1000ccbf0  bl      _objc_release
loc_1000ccbf4:
  1000ccbf4  adrp    x26, #0x10041e000
  1000ccbf8  ldr     x0, [sp]
  1000ccbfc  bl      _objc_release
loc_1000ccc00:
  1000ccc00  ldr     x0, [sp, #8]
  1000ccc04  bl      _objc_release
  1000ccc08  mov     x0, x22
  1000ccc0c  bl      _objc_release
  1000ccc10  mov     x0, x21
  1000ccc14  bl      _objc_release
  1000ccc18  cbz     w27, loc_1000ccd5c                       ; if (w27 == 0)
  1000ccc1c  mov     x0, x19
  1000ccc20  mov     x1, x20
  1000ccc24  bl      _objc_msgSend                            ; [self tableView]
  1000ccc28  mov     x29, x29
  1000ccc2c  bl      _objc_retainAutoreleasedReturnValue
  1000ccc30  mov     x23, x0
  1000ccc34  adrp    x25, #0x10041e000
  1000ccc38  ldr     x0, [x25, #0xb0]                         ; class UINib
  1000ccc3c  adrp    x8, #0x100417000
  1000ccc40  nop
  1000ccc44  ldr     x21, [x8, #0xb38]
  1000ccc48  mov     x3, #0
  1000ccc4c  adrp    x2, #0x1003c2000
  1000ccc50  add     x2, x2, #0x410                           ; @"ADStatsCell_iPhone4STableViewCell"
  1000ccc54  mov     x1, x21
  1000ccc58  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADStatsCell_iPhone4STableViewCell" bundle:0]
  1000ccc5c  mov     x29, x29
  1000ccc60  bl      _objc_retainAutoreleasedReturnValue
  1000ccc64  mov     x24, x0
  1000ccc68  adrp    x8, #0x100417000
  1000ccc6c  nop
  1000ccc70  ldr     x22, [x8, #0xb40]
  1000ccc74  adrp    x3, #0x1003c2000
  1000ccc78  add     x3, x3, #0x350                           ; @"standardCellID"
  1000ccc7c  mov     x0, x23
  1000ccc80  mov     x1, x22
  1000ccc84  mov     x2, x24
  1000ccc88  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADStatsCell_iPhone4STableViewCell" bundle:0] forCellReuseIdentifier:@"standardCellID"]
  1000ccc8c  mov     x0, x24
  1000ccc90  bl      _objc_release
  1000ccc94  mov     x0, x23
  1000ccc98  bl      _objc_release
  1000ccc9c  mov     x0, x19
  1000ccca0  mov     x1, x20
  1000ccca4  bl      _objc_msgSend                            ; [self tableView]
  1000ccca8  mov     x29, x29
  1000cccac  bl      _objc_retainAutoreleasedReturnValue
  1000cccb0  mov     x23, x0
  1000cccb4  ldr     x0, [x25, #0xb0]                         ; class UINib
  1000cccb8  mov     x3, #0
  1000cccbc  adrp    x2, #0x1003c2000
  1000cccc0  add     x2, x2, #0x430                           ; @"ADStatsMultiCell_iPhone4STableViewCell"
  1000cccc4  mov     x1, x21
  1000cccc8  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADStatsMultiCell_iPhone4STableViewCell" bundle:0]
  1000ccccc  mov     x29, x29
  1000cccd0  bl      _objc_retainAutoreleasedReturnValue
  1000cccd4  mov     x24, x0
  1000cccd8  adrp    x3, #0x1003c2000
  1000cccdc  add     x3, x3, #0x390                           ; @"weaponCellID"
  1000ccce0  mov     x0, x23
  1000ccce4  mov     x1, x22
  1000ccce8  mov     x2, x24
  1000cccec  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADStatsMultiCell_iPhone4STableViewCell" bundle:0] forCellReuseIdentifier:@"weaponCellID"]
  1000cccf0  mov     x0, x24
  1000cccf4  bl      _objc_release
  1000cccf8  mov     x0, x23
  1000cccfc  bl      _objc_release
  1000ccd00  mov     x0, x19
  1000ccd04  mov     x1, x20
  1000ccd08  bl      _objc_msgSend                            ; [self tableView]
  1000ccd0c  mov     x29, x29
  1000ccd10  bl      _objc_retainAutoreleasedReturnValue
  1000ccd14  mov     x23, x0
  1000ccd18  ldr     x0, [x25, #0xb0]                         ; class UINib
  1000ccd1c  mov     x3, #0
  1000ccd20  adrp    x2, #0x1003c2000
  1000ccd24  add     x2, x2, #0x430                           ; @"ADStatsMultiCell_iPhone4STableViewCell"
  1000ccd28  mov     x1, x21
  1000ccd2c  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADStatsMultiCell_iPhone4STableViewCell" bundle:0]
  1000ccd30  mov     x29, x29
  1000ccd34  bl      _objc_retainAutoreleasedReturnValue
  1000ccd38  mov     x21, x0
  1000ccd3c  adrp    x3, #0x1003c2000
  1000ccd40  add     x3, x3, #0x370                           ; @"enemyCellID"
  1000ccd44  mov     x0, x23
  1000ccd48  mov     x1, x22
  1000ccd4c  mov     x2, x21
  1000ccd50  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADStatsMultiCell_iPhone4STableViewCell" bundle:0] forCellReuseIdentifier:@"enemyCellID"]
  1000ccd54  b       loc_1000ccee8
  1000ccd58  b       loc_1000cd16c
loc_1000ccd5c:
  1000ccd5c  ldr     x0, [x26, #0x50]                         ; class UIDevice
  1000ccd60  mov     x1, x23
  1000ccd64  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000ccd68  mov     x29, x29
  1000ccd6c  bl      _objc_retainAutoreleasedReturnValue
  1000ccd70  mov     x21, x0
  1000ccd74  mov     x1, x24
  1000ccd78  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000ccd7c  mov     x29, x29
  1000ccd80  bl      _objc_retainAutoreleasedReturnValue
  1000ccd84  mov     x23, x0
  1000ccd88  adrp    x2, #0x1003bd000
  1000ccd8c  add     x2, x2, #0x50                            ; @"iPod touch"
  1000ccd90  mov     x1, x25
  1000ccd94  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000ccd98  mov     x22, x0
  1000ccd9c  mov     x0, x23
  1000ccda0  bl      _objc_release
  1000ccda4  mov     x0, x21
  1000ccda8  bl      _objc_release
  1000ccdac  mov     x0, x19
  1000ccdb0  mov     x1, x20
  1000ccdb4  bl      _objc_msgSend                            ; [self tableView]
  1000ccdb8  mov     x29, x29
  1000ccdbc  bl      _objc_retainAutoreleasedReturnValue
  1000ccdc0  mov     x23, x0
  1000ccdc4  cbz     w22, loc_1000ccef4                       ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] == 0)
  1000ccdc8  adrp    x25, #0x10041e000
  1000ccdcc  ldr     x0, [x25, #0xb0]                         ; class UINib
  1000ccdd0  adrp    x8, #0x100417000
  1000ccdd4  nop
  1000ccdd8  ldr     x21, [x8, #0xb38]
  1000ccddc  mov     x3, #0
  1000ccde0  adrp    x2, #0x1003c2000
  1000ccde4  add     x2, x2, #0x450                           ; @"ADStatsCell_iPodTouch"
  1000ccde8  mov     x1, x21
  1000ccdec  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADStatsCell_iPodTouch" bundle:0]
  1000ccdf0  mov     x29, x29
  1000ccdf4  bl      _objc_retainAutoreleasedReturnValue
  1000ccdf8  mov     x24, x0
  1000ccdfc  adrp    x8, #0x100417000
  1000cce00  nop
  1000cce04  ldr     x22, [x8, #0xb40]
  1000cce08  adrp    x3, #0x1003c2000
  1000cce0c  add     x3, x3, #0x350                           ; @"standardCellID"
  1000cce10  mov     x0, x23
  1000cce14  mov     x1, x22
  1000cce18  mov     x2, x24
  1000cce1c  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADStatsCell_iPodTouch" bundle:0] forCellReuseIdentifier:@"standardCellID"]
  1000cce20  mov     x0, x24
  1000cce24  bl      _objc_release
  1000cce28  mov     x0, x23
  1000cce2c  bl      _objc_release
  1000cce30  mov     x0, x19
  1000cce34  mov     x1, x20
  1000cce38  bl      _objc_msgSend                            ; [self tableView]
  1000cce3c  mov     x29, x29
  1000cce40  bl      _objc_retainAutoreleasedReturnValue
  1000cce44  mov     x23, x0
  1000cce48  ldr     x0, [x25, #0xb0]                         ; class UINib
  1000cce4c  mov     x3, #0
  1000cce50  adrp    x2, #0x1003c2000
  1000cce54  add     x2, x2, #0x470                           ; @"ADMultiCell_iPodTouch"
  1000cce58  mov     x1, x21
  1000cce5c  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADMultiCell_iPodTouch" bundle:0]
  1000cce60  mov     x29, x29
  1000cce64  bl      _objc_retainAutoreleasedReturnValue
  1000cce68  mov     x24, x0
  1000cce6c  adrp    x3, #0x1003c2000
  1000cce70  add     x3, x3, #0x390                           ; @"weaponCellID"
  1000cce74  mov     x0, x23
  1000cce78  mov     x1, x22
  1000cce7c  mov     x2, x24
  1000cce80  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADMultiCell_iPodTouch" bundle:0] forCellReuseIdentifier:@"weaponCellID"]
  1000cce84  mov     x0, x24
  1000cce88  bl      _objc_release
  1000cce8c  mov     x0, x23
  1000cce90  bl      _objc_release
  1000cce94  mov     x0, x19
  1000cce98  mov     x1, x20
  1000cce9c  bl      _objc_msgSend                            ; [self tableView]
  1000ccea0  mov     x29, x29
  1000ccea4  bl      _objc_retainAutoreleasedReturnValue
  1000ccea8  mov     x23, x0
  1000cceac  ldr     x0, [x25, #0xb0]                         ; class UINib
  1000cceb0  mov     x3, #0
  1000cceb4  adrp    x2, #0x1003c2000
  1000cceb8  add     x2, x2, #0x470                           ; @"ADMultiCell_iPodTouch"
  1000ccebc  mov     x1, x21
  1000ccec0  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADMultiCell_iPodTouch" bundle:0]
  1000ccec4  mov     x29, x29
  1000ccec8  bl      _objc_retainAutoreleasedReturnValue
  1000ccecc  mov     x21, x0
  1000cced0  adrp    x3, #0x1003c2000
  1000cced4  add     x3, x3, #0x370                           ; @"enemyCellID"
  1000cced8  mov     x0, x23
  1000ccedc  mov     x1, x22
  1000ccee0  mov     x2, x21
  1000ccee4  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADMultiCell_iPodTouch" bundle:0] forCellReuseIdentifier:@"enemyCellID"]
loc_1000ccee8:
  1000ccee8  mov     x0, x21
  1000cceec  bl      _objc_release
  1000ccef0  b       loc_1000ccf2c
loc_1000ccef4:
  1000ccef4  adrp    x8, #0x10041d000
  1000ccef8  ldr     x0, [x8, #0xfd0]                         ; class ADStatsCell
  1000ccefc  adrp    x8, #0x100417000
  1000ccf00  nop
  1000ccf04  ldr     x1, [x8, #0x2e0]
  1000ccf08  bl      _objc_msgSend                            ; [ADStatsCell class]
  1000ccf0c  mov     x2, x0
  1000ccf10  adrp    x8, #0x100417000
  1000ccf14  nop
  1000ccf18  ldr     x1, [x8, #0x2e8]
  1000ccf1c  adrp    x3, #0x1003c2000
  1000ccf20  add     x3, x3, #0x350                           ; @"standardCellID"
  1000ccf24  mov     x0, x23
  1000ccf28  bl      _objc_msgSend                            ; [[self tableView] registerClass:[ADStatsCell class] forCellReuseIdentifier:@"standardCellID"]
loc_1000ccf2c:
  1000ccf2c  mov     x0, x23
  1000ccf30  bl      _objc_release
  1000ccf34  mov     x0, x19
  1000ccf38  mov     x1, x20
  1000ccf3c  bl      _objc_msgSend                            ; [self tableView]
  1000ccf40  mov     x29, x29
  1000ccf44  bl      _objc_retainAutoreleasedReturnValue
  1000ccf48  mov     x20, x0
  1000ccf4c  adrp    x8, #0x10041d000
  1000ccf50  ldr     x0, [x8, #0xfd8]                         ; class ADStatsHeader
  1000ccf54  adrp    x8, #0x100417000
  1000ccf58  nop
  1000ccf5c  ldr     x1, [x8, #0x2e0]
  1000ccf60  bl      _objc_msgSend                            ; [ADStatsHeader class]
  1000ccf64  mov     x2, x0
  1000ccf68  adrp    x8, #0x100417000
  1000ccf6c  nop
  1000ccf70  ldr     x1, [x8, #0x2f0]
  1000ccf74  adrp    x3, #0x1003ba000
  1000ccf78  add     x3, x3, #0x30                            ; @"headerID"
  1000ccf7c  mov     x0, x20
  1000ccf80  bl      _objc_msgSend                            ; [[self tableView] registerClass:[ADStatsHeader class] forHeaderFooterViewReuseIdentifier:@"headerID"]
  1000ccf84  mov     x0, x20
  1000ccf88  bl      _objc_release
  1000ccf8c  adrp    x8, #0x10041a000
  1000ccf90  nop
  1000ccf94  ldr     x1, [x8, #0x618]
  1000ccf98  mov     x0, x19
  1000ccf9c  bl      _objc_msgSend                            ; [self registerForAppNotifications]
  1000ccfa0  adrp    x8, #0x10041a000
  1000ccfa4  nop
  1000ccfa8  ldr     x1, [x8, #0xcf8]
  1000ccfac  mov     x0, x19
  1000ccfb0  bl      _objc_msgSend                            ; [self loadData]
  1000ccfb4  adrp    x8, #0x10041d000
  1000ccfb8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000ccfbc  adrp    x8, #0x100416000
  1000ccfc0  nop
  1000ccfc4  ldr     x1, [x8, #0xac0]
  1000ccfc8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000ccfcc  mov     x29, x29
  1000ccfd0  bl      _objc_retainAutoreleasedReturnValue
  1000ccfd4  mov     x21, x0
  1000ccfd8  adrp    x8, #0x100417000
  1000ccfdc  nop
  1000ccfe0  ldr     x1, [x8, #0x2f8]
  1000ccfe4  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000ccfe8  mov     x29, x29
  1000ccfec  bl      _objc_retainAutoreleasedReturnValue
  1000ccff0  mov     x20, x0
  1000ccff4  mov     x0, x21
  1000ccff8  bl      _objc_release
  1000ccffc  adrp    x8, #0x1003b8000
  1000cd000  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  1000cd004  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  1000cd008  adrp    x8, #0x100417000
  1000cd00c  nop
  1000cd010  ldr     x1, [x8, #0x300]
  1000cd014  adrp    x3, #0x1003c2000
  1000cd018  add     x3, x3, #0x490                           ; @"Game total stats screen"
  1000cd01c  mov     x0, x20
  1000cd020  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:@"Game total stats screen"]
  1000cd024  adrp    x8, #0x10041d000
  1000cd028  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000cd02c  adrp    x8, #0x100417000
  1000cd030  nop
  1000cd034  ldr     x1, [x8, #0x308]
  1000cd038  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createAppView]
  1000cd03c  mov     x29, x29
  1000cd040  bl      _objc_retainAutoreleasedReturnValue
  1000cd044  mov     x21, x0
  1000cd048  adrp    x8, #0x100417000
  1000cd04c  nop
  1000cd050  ldr     x1, [x8, #0x310]
  1000cd054  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createAppView] build]
  1000cd058  mov     x29, x29
  1000cd05c  bl      _objc_retainAutoreleasedReturnValue
  1000cd060  mov     x22, x0
  1000cd064  adrp    x8, #0x100417000
  1000cd068  nop
  1000cd06c  ldr     x1, [x8, #0x318]
  1000cd070  mov     x0, x20
  1000cd074  mov     x2, x22
  1000cd078  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createAppView] build]]
  1000cd07c  mov     x0, x22
  1000cd080  bl      _objc_release
  1000cd084  mov     x0, x21
  1000cd088  bl      _objc_release
  1000cd08c  mov     x0, x20
  1000cd090  bl      _objc_release
  1000cd094  sub     sp, x29, #0x60
  1000cd098  ldp     x29, x30, [sp, #0x60]
  1000cd09c  ldp     x20, x19, [sp, #0x50]
  1000cd0a0  ldp     x22, x21, [sp, #0x40]
  1000cd0a4  ldp     x24, x23, [sp, #0x30]
  1000cd0a8  ldp     x26, x25, [sp, #0x20]
  1000cd0ac  ldp     x28, x27, [sp, #0x10]
  1000cd0b0  ldp     d9, d8, [sp], #0x70
  1000cd0b4  ret
  1000cd0b8  mov     x19, x0
  1000cd0bc  b       loc_1000cd118
  1000cd0c0  mov     x19, x0
  1000cd0c4  b       loc_1000cd118
  1000cd0c8  b       loc_1000cd0ec
  1000cd0cc  b       loc_1000cd128
  1000cd0d0  b       loc_1000cd128
  1000cd0d4  b       loc_1000cd128
  1000cd0d8  mov     x19, x0
  1000cd0dc  b       loc_1000cd118
  1000cd0e0  mov     x19, x0
  1000cd0e4  b       loc_1000cd110
  1000cd0e8  b       loc_1000cd128
loc_1000cd0ec:
  1000cd0ec  mov     x19, x0
  1000cd0f0  b       loc_1000cd1d8
  1000cd0f4  b       loc_1000cd128
  1000cd0f8  b       loc_1000cd128
  1000cd0fc  mov     x19, x0
  1000cd100  b       loc_1000cd110
  1000cd104  mov     x19, x0
  1000cd108  mov     x0, x22
  1000cd10c  bl      _objc_release
loc_1000cd110:
  1000cd110  mov     x0, x21
  1000cd114  bl      _objc_release
loc_1000cd118:
  1000cd118  mov     x0, x20
  1000cd11c  b       loc_1000cd1e4
  1000cd120  mov     x19, x0
  1000cd124  b       loc_1000cd1d0
loc_1000cd128:
  1000cd128  mov     x19, x0
  1000cd12c  b       loc_1000cd1e0
  1000cd130  mov     x19, x0
  1000cd134  mov     x0, x23
  1000cd138  b       loc_1000cd1dc
  1000cd13c  mov     x19, x0
  1000cd140  b       loc_1000cd1ac
  1000cd144  mov     x19, x0
  1000cd148  b       loc_1000cd1c8
  1000cd14c  mov     x19, x0
  1000cd150  b       loc_1000cd1ac
  1000cd154  b       loc_1000cd1a0
  1000cd158  mov     x19, x0
  1000cd15c  b       loc_1000cd1ac
  1000cd160  b       loc_1000cd1a0
  1000cd164  mov     x19, x0
  1000cd168  b       loc_1000cd1ac
loc_1000cd16c:
  1000cd16c  mov     x19, x0
  1000cd170  mov     x0, x21
  1000cd174  b       loc_1000cd1a8
  1000cd178  mov     x19, x0
  1000cd17c  b       loc_1000cd1d0
  1000cd180  mov     x19, x0
  1000cd184  mov     x0, x26
  1000cd188  b       loc_1000cd1cc
  1000cd18c  mov     x19, x0
  1000cd190  b       loc_1000cd1ac
  1000cd194  b       loc_1000cd1a0
  1000cd198  mov     x19, x0
  1000cd19c  b       loc_1000cd1ac
loc_1000cd1a0:
  1000cd1a0  mov     x19, x0
  1000cd1a4  mov     x0, x24
loc_1000cd1a8:
  1000cd1a8  bl      _objc_release
loc_1000cd1ac:
  1000cd1ac  mov     x0, x23
  1000cd1b0  b       loc_1000cd1e4
  1000cd1b4  mov     x19, x0
  1000cd1b8  b       loc_1000cd1ac
  1000cd1bc  mov     x19, x0
  1000cd1c0  mov     x0, x28
  1000cd1c4  bl      _objc_release
loc_1000cd1c8:
  1000cd1c8  ldr     x0, [sp]
loc_1000cd1cc:
  1000cd1cc  bl      _objc_release
loc_1000cd1d0:
  1000cd1d0  ldr     x0, [sp, #8]
  1000cd1d4  bl      _objc_release
loc_1000cd1d8:
  1000cd1d8  mov     x0, x22
loc_1000cd1dc:
  1000cd1dc  bl      _objc_release
loc_1000cd1e0:
  1000cd1e0  mov     x0, x21
loc_1000cd1e4:
  1000cd1e4  bl      _objc_release
  1000cd1e8  mov     x0, x19
  1000cd1ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController loadView]
; address 0x1000cd1f0  size 260  kind objc
; ======================================================================
  1000cd1f0  stp     x22, x21, [sp, #-0x30]!
  1000cd1f4  stp     x20, x19, [sp, #0x10]
  1000cd1f8  stp     x29, x30, [sp, #0x20]
  1000cd1fc  add     x29, sp, #0x20
  1000cd200  sub     sp, sp, #0x20
  1000cd204  mov     x19, x0
  1000cd208  adrp    x22, #0x1003b0000
  1000cd20c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000cd210  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000cd214  str     x22, [sp, #0x18]
  1000cd218  adrp    x8, #0x1003bb000
  1000cd21c  add     x8, x8, #0x2b0                           ; @"tableView"
  1000cd220  str     x8, [sp, #8]
  1000cd224  adrp    x8, #0x10041d000
  1000cd228  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000cd22c  adrp    x8, #0x100416000
  1000cd230  nop
  1000cd234  ldr     x1, [x8, #0xec0]
  1000cd238  mov     w2, #1
  1000cd23c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000cd240  mov     x29, x29
  1000cd244  bl      _objc_retainAutoreleasedReturnValue
  1000cd248  mov     x20, x0
  1000cd24c  str     x20, [sp, #0x10]
  1000cd250  adrp    x8, #0x10041d000
  1000cd254  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000cd258  adrp    x8, #0x100416000
  1000cd25c  nop
  1000cd260  ldr     x1, [x8, #0xcd0]
  1000cd264  add     x2, sp, #0x10
  1000cd268  add     x3, sp, #8
  1000cd26c  mov     w4, #1
  1000cd270  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  1000cd274  mov     x29, x29
  1000cd278  bl      _objc_retainAutoreleasedReturnValue
  1000cd27c  mov     x21, x0
  1000cd280  mov     x0, x20
  1000cd284  bl      _objc_release
  1000cd288  adrp    x8, #0x100416000
  1000cd28c  nop
  1000cd290  ldr     x1, [x8, #0xbf0]
  1000cd294  adrp    x2, #0x1003c2000
  1000cd298  add     x2, x2, #0x2d0                           ; @"ADStatsViewController"
  1000cd29c  mov     x0, x19
  1000cd2a0  mov     x3, x21
  1000cd2a4  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADStatsViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  1000cd2a8  mov     x0, x21
  1000cd2ac  bl      _objc_release
  1000cd2b0  ldr     x8, [sp, #0x18]
  1000cd2b4  sub     x8, x22, x8
  1000cd2b8  cbnz    x8, loc_1000cd2d0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000cd2bc  sub     sp, x29, #0x20
  1000cd2c0  ldp     x29, x30, [sp, #0x20]
  1000cd2c4  ldp     x20, x19, [sp, #0x10]
  1000cd2c8  ldp     x22, x21, [sp], #0x30
  1000cd2cc  ret
loc_1000cd2d0:
  1000cd2d0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000cd2d4  mov     x19, x0
  1000cd2d8  mov     x0, x20
  1000cd2dc  b       loc_1000cd2e8
  1000cd2e0  mov     x19, x0
  1000cd2e4  mov     x0, x21
loc_1000cd2e8:
  1000cd2e8  bl      _objc_release
  1000cd2ec  mov     x0, x19
  1000cd2f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController viewWillDisappear:]
; address 0x1000cd2f4  size 16  kind objc
; ======================================================================
  1000cd2f4  adrp    x8, #0x10041a000
  1000cd2f8  nop
  1000cd2fc  ldr     x1, [x8, #0x640]
  1000cd300  b       _objc_msgSend                            ; [self deRegisterForAppNotifications]

; ======================================================================
; -[ADStatsViewController handleAppEnteringBackground:]
; address 0x1000cd304  size 260  kind objc
; ======================================================================
  1000cd304  stp     x24, x23, [sp, #-0x40]!
  1000cd308  stp     x22, x21, [sp, #0x10]
  1000cd30c  stp     x20, x19, [sp, #0x20]
  1000cd310  stp     x29, x30, [sp, #0x30]
  1000cd314  add     x29, sp, #0x30
  1000cd318  mov     x19, x0
  1000cd31c  adrp    x23, #0x10041e000
  1000cd320  ldr     x22, [x23, #0xf8]                        ; class MBProgressHUD
  1000cd324  adrp    x8, #0x100416000
  1000cd328  nop
  1000cd32c  ldr     x20, [x8, #0xf18]
  1000cd330  mov     x1, x20
  1000cd334  bl      _objc_msgSend                            ; [self view]
  1000cd338  mov     x29, x29
  1000cd33c  bl      _objc_retainAutoreleasedReturnValue
  1000cd340  mov     x21, x0
  1000cd344  adrp    x8, #0x100418000
  1000cd348  nop
  1000cd34c  ldr     x1, [x8, #0x28]
  1000cd350  mov     x0, x22
  1000cd354  mov     x2, x21
  1000cd358  bl      _objc_msgSend                            ; [MBProgressHUD HUDForView:[self view]]
  1000cd35c  mov     x29, x29
  1000cd360  bl      _objc_retainAutoreleasedReturnValue
  1000cd364  mov     x22, x0
  1000cd368  bl      _objc_release
  1000cd36c  mov     x0, x21
  1000cd370  bl      _objc_release
  1000cd374  cbz     x22, loc_1000cd3c8                       ; if ([MBProgressHUD HUDForView:[self view]] == 0)
  1000cd378  ldr     x21, [x23, #0xf8]                        ; class MBProgressHUD
  1000cd37c  mov     x0, x19
  1000cd380  mov     x1, x20
  1000cd384  bl      _objc_msgSend                            ; [self view]
  1000cd388  mov     x29, x29
  1000cd38c  bl      _objc_retainAutoreleasedReturnValue
  1000cd390  mov     x20, x0
  1000cd394  adrp    x8, #0x100419000
  1000cd398  nop
  1000cd39c  ldr     x1, [x8, #0xa50]
  1000cd3a0  mov     w3, #0
  1000cd3a4  mov     x0, x21
  1000cd3a8  mov     x2, x20
  1000cd3ac  bl      _objc_msgSend                            ; [MBProgressHUD hideHUDForView:[self view] animated:0]
  1000cd3b0  mov     x0, x20
  1000cd3b4  ldp     x29, x30, [sp, #0x30]
  1000cd3b8  ldp     x20, x19, [sp, #0x20]
  1000cd3bc  ldp     x22, x21, [sp, #0x10]
  1000cd3c0  ldp     x24, x23, [sp], #0x40
  1000cd3c4  b       _objc_release
loc_1000cd3c8:
  1000cd3c8  ldp     x29, x30, [sp, #0x30]
  1000cd3cc  ldp     x20, x19, [sp, #0x20]
  1000cd3d0  ldp     x22, x21, [sp, #0x10]
  1000cd3d4  ldp     x24, x23, [sp], #0x40
  1000cd3d8  ret
  1000cd3dc  mov     x19, x0
  1000cd3e0  b       loc_1000cd400
  1000cd3e4  mov     x19, x0
  1000cd3e8  mov     x0, x21
  1000cd3ec  bl      _objc_release
  1000cd3f0  b       loc_1000cd400
  1000cd3f4  mov     x19, x0
  1000cd3f8  mov     x0, x20
  1000cd3fc  bl      _objc_release
loc_1000cd400:
  1000cd400  mov     x0, x19
  1000cd404  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController handleAppEnteringForeground:]
; address 0x1000cd408  size 68  kind objc
; ======================================================================
  1000cd408  stp     x20, x19, [sp, #-0x20]!
  1000cd40c  stp     x29, x30, [sp, #0x10]
  1000cd410  add     x29, sp, #0x10
  1000cd414  mov     x19, x0
  1000cd418  adrp    x8, #0x10041a000
  1000cd41c  nop
  1000cd420  ldr     x1, [x8, #0xd00]
  1000cd424  bl      _objc_msgSend                            ; [self dataLoaded]
  1000cd428  tbnz    w0, #0, loc_1000cd440                    ; if (([self dataLoaded] & 1))
  1000cd42c  adrp    x8, #0x10041a000
  1000cd430  nop
  1000cd434  ldr     x1, [x8, #0xcf8]
  1000cd438  mov     x0, x19
  1000cd43c  bl      _objc_msgSend                            ; [self loadData]
loc_1000cd440:
  1000cd440  ldp     x29, x30, [sp, #0x10]
  1000cd444  ldp     x20, x19, [sp], #0x20
  1000cd448  ret

; ======================================================================
; -[ADStatsViewController loadData]
; address 0x1000cd44c  size 300  kind objc
; ======================================================================
  1000cd44c  stp     x22, x21, [sp, #-0x30]!
  1000cd450  stp     x20, x19, [sp, #0x10]
  1000cd454  stp     x29, x30, [sp, #0x20]
  1000cd458  add     x29, sp, #0x20
  1000cd45c  sub     sp, sp, #0x30
  1000cd460  mov     x19, x0
  1000cd464  adrp    x8, #0x10041e000
  1000cd468  ldr     x20, [x8, #0xf8]                         ; class MBProgressHUD
  1000cd46c  adrp    x8, #0x100416000
  1000cd470  nop
  1000cd474  ldr     x1, [x8, #0xf18]
  1000cd478  bl      _objc_msgSend                            ; [self view]
  1000cd47c  mov     x29, x29
  1000cd480  bl      _objc_retainAutoreleasedReturnValue
  1000cd484  mov     x21, x0
  1000cd488  adrp    x8, #0x100419000
  1000cd48c  nop
  1000cd490  ldr     x1, [x8, #0xa30]
  1000cd494  mov     w3, #1
  1000cd498  mov     x0, x20
  1000cd49c  mov     x2, x21
  1000cd4a0  bl      _objc_msgSend                            ; [MBProgressHUD showHUDAddedTo:[self view] animated:1]
  1000cd4a4  mov     x29, x29
  1000cd4a8  bl      _objc_retainAutoreleasedReturnValue
  1000cd4ac  mov     x20, x0
  1000cd4b0  mov     x0, x21
  1000cd4b4  bl      _objc_release
  1000cd4b8  adrp    x8, #0x100418000
  1000cd4bc  nop
  1000cd4c0  ldr     x1, [x8, #0x68]
  1000cd4c4  adrp    x2, #0x1003bf000
  1000cd4c8  add     x2, x2, #0x450                           ; @"Loading"
  1000cd4cc  mov     x0, x20
  1000cd4d0  bl      _objc_msgSend                            ; [[MBProgressHUD showHUDAddedTo:[self view] animated:1] setLabelText:@"Loading"]
  1000cd4d4  mov     w1, #0x980000
  1000cd4d8  movk    w1, #0x9680
  1000cd4dc  mov     x0, #0
  1000cd4e0  bl      _dispatch_time                           ; dispatch_time(0, 0x989680)
  1000cd4e4  mov     x21, x0
  1000cd4e8  adrp    x8, #0x1003b0000
  1000cd4ec  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000cd4f0  mov     w9, #-0x3e000000
  1000cd4f4  str     x8, [sp, #8]
  1000cd4f8  stp     w9, wzr, [sp, #0x10]
  1000cd4fc  adr     x8, #0x1000cd578                         ; &-[ADStatsViewController loadData]_block_invoke
  1000cd500  nop
  1000cd504  str     x8, [sp, #0x18]
  1000cd508  adrp    x8, #0x1003b2000
  1000cd50c  add     x8, x8, #0x8c0                           ; &d_1003b28c0
  1000cd510  str     x8, [sp, #0x20]
  1000cd514  mov     x0, x19
  1000cd518  bl      _objc_retain
  1000cd51c  str     x0, [sp, #0x28]
  1000cd520  adrp    x1, #0x1003b0000
  1000cd524  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000cd528  add     x2, sp, #8
  1000cd52c  mov     x0, x21
  1000cd530  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x989680), __dispatch_main_q, ^{-[ADStatsViewController loadData]_block_invoke captures +0x20=self})
  1000cd534  ldr     x0, [sp, #0x28]
  1000cd538  bl      _objc_release
  1000cd53c  mov     x0, x20
  1000cd540  bl      _objc_release
  1000cd544  sub     sp, x29, #0x20
  1000cd548  ldp     x29, x30, [sp, #0x20]
  1000cd54c  ldp     x20, x19, [sp, #0x10]
  1000cd550  ldp     x22, x21, [sp], #0x30
  1000cd554  ret
  1000cd558  mov     x19, x0
  1000cd55c  mov     x0, x21
  1000cd560  b       loc_1000cd56c
  1000cd564  mov     x19, x0
  1000cd568  mov     x0, x20
loc_1000cd56c:
  1000cd56c  bl      _objc_release
  1000cd570  mov     x0, x19
  1000cd574  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController loadData]_block_invoke
; address 0x1000cd578  size 536  kind block
; ======================================================================
  1000cd578  stp     x26, x25, [sp, #-0x50]!
  1000cd57c  stp     x24, x23, [sp, #0x10]
  1000cd580  stp     x22, x21, [sp, #0x20]
  1000cd584  stp     x20, x19, [sp, #0x30]
  1000cd588  stp     x29, x30, [sp, #0x40]
  1000cd58c  add     x29, sp, #0x40
  1000cd590  mov     x19, x0
  1000cd594  ldr     x24, [x19, #0x20]                        ; x24 = captured self
  1000cd598  adrp    x26, #0x10041d000
  1000cd59c  ldr     x0, [x26, #0xf28]                        ; class NSMutableArray
  1000cd5a0  adrp    x8, #0x100416000
  1000cd5a4  nop
  1000cd5a8  ldr     x20, [x8, #0xac8]
  1000cd5ac  mov     x1, x20
  1000cd5b0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000cd5b4  mov     x25, x0
  1000cd5b8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000cd5bc  adrp    x8, #0x10041a000
  1000cd5c0  nop
  1000cd5c4  ldr     x1, [x8, #0xd08]
  1000cd5c8  bl      _objc_msgSend                            ; [self enemiesData]
  1000cd5cc  mov     x29, x29
  1000cd5d0  bl      _objc_retainAutoreleasedReturnValue
  1000cd5d4  mov     x23, x0
  1000cd5d8  adrp    x8, #0x100416000
  1000cd5dc  nop
  1000cd5e0  ldr     x21, [x8, #0xe30]
  1000cd5e4  mov     x1, x21
  1000cd5e8  bl      _objc_msgSend                            ; [[self enemiesData] count]
  1000cd5ec  mov     x2, x0
  1000cd5f0  adrp    x8, #0x100417000
  1000cd5f4  nop
  1000cd5f8  ldr     x22, [x8, #0x288]
  1000cd5fc  mov     x0, x25
  1000cd600  mov     x1, x22
  1000cd604  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[[self enemiesData] count]]
  1000cd608  mov     x25, x0
  1000cd60c  adrp    x8, #0x10041a000
  1000cd610  nop
  1000cd614  ldr     x1, [x8, #0xd10]
  1000cd618  mov     x0, x24
  1000cd61c  mov     x2, x25
  1000cd620  bl      _objc_msgSend                            ; [self setEnemyCells:[[NSMutableArray alloc] initWithCapacity:[[self enemiesData] count]]]
  1000cd624  mov     x0, x25
  1000cd628  bl      _objc_release
  1000cd62c  mov     x0, x23
  1000cd630  bl      _objc_release
  1000cd634  ldr     x23, [x19, #0x20]                        ; x23 = captured self
  1000cd638  ldr     x0, [x26, #0xf28]                        ; class NSMutableArray
  1000cd63c  mov     x1, x20
  1000cd640  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000cd644  mov     x24, x0
  1000cd648  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000cd64c  adrp    x8, #0x10041a000
  1000cd650  nop
  1000cd654  ldr     x1, [x8, #0x898]
  1000cd658  bl      _objc_msgSend                            ; [self weaponsData]
  1000cd65c  mov     x29, x29
  1000cd660  bl      _objc_retainAutoreleasedReturnValue
  1000cd664  mov     x20, x0
  1000cd668  mov     x1, x21
  1000cd66c  bl      _objc_msgSend                            ; [[self weaponsData] count]
  1000cd670  mov     x2, x0
  1000cd674  mov     x0, x24
  1000cd678  mov     x1, x22
  1000cd67c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[[self weaponsData] count]]
  1000cd680  mov     x21, x0
  1000cd684  adrp    x8, #0x100417000
  1000cd688  nop
  1000cd68c  ldr     x1, [x8, #0x290]
  1000cd690  mov     x0, x23
  1000cd694  mov     x2, x21
  1000cd698  bl      _objc_msgSend                            ; [self setWeaponCells:[[NSMutableArray alloc] initWithCapacity:[[self weaponsData] count]]]
  1000cd69c  mov     x0, x21
  1000cd6a0  bl      _objc_release
  1000cd6a4  mov     x0, x20
  1000cd6a8  bl      _objc_release
  1000cd6ac  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000cd6b0  adrp    x8, #0x10041a000
  1000cd6b4  nop
  1000cd6b8  ldr     x1, [x8, #0xd18]
  1000cd6bc  bl      _objc_msgSend                            ; [self loadEnemies]
  1000cd6c0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000cd6c4  adrp    x8, #0x100419000
  1000cd6c8  nop
  1000cd6cc  ldr     x1, [x8, #0x8d0]
  1000cd6d0  bl      _objc_msgSend                            ; [self loadWeapons]
  1000cd6d4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000cd6d8  adrp    x8, #0x10041a000
  1000cd6dc  nop
  1000cd6e0  ldr     x1, [x8, #0xcf0]
  1000cd6e4  mov     w2, #1
  1000cd6e8  bl      _objc_msgSend                            ; [self setDataLoaded:1]
  1000cd6ec  adrp    x8, #0x10041e000
  1000cd6f0  ldr     x21, [x8, #0xf8]                         ; class MBProgressHUD
  1000cd6f4  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000cd6f8  adrp    x8, #0x100416000
  1000cd6fc  nop
  1000cd700  ldr     x1, [x8, #0xf18]
  1000cd704  bl      _objc_msgSend                            ; [self view]
  1000cd708  mov     x29, x29
  1000cd70c  bl      _objc_retainAutoreleasedReturnValue
  1000cd710  mov     x20, x0
  1000cd714  adrp    x8, #0x100419000
  1000cd718  nop
  1000cd71c  ldr     x1, [x8, #0xa50]
  1000cd720  mov     w3, #1
  1000cd724  mov     x0, x21
  1000cd728  mov     x2, x20
  1000cd72c  bl      _objc_msgSend                            ; [MBProgressHUD hideHUDForView:[self view] animated:1]
  1000cd730  mov     x0, x20
  1000cd734  ldp     x29, x30, [sp, #0x40]
  1000cd738  ldp     x20, x19, [sp, #0x30]
  1000cd73c  ldp     x22, x21, [sp, #0x20]
  1000cd740  ldp     x24, x23, [sp, #0x10]
  1000cd744  ldp     x26, x25, [sp], #0x50
  1000cd748  b       _objc_release
  1000cd74c  mov     x19, x0
  1000cd750  b       loc_1000cd764
  1000cd754  b       loc_1000cd77c
  1000cd758  mov     x19, x0
  1000cd75c  mov     x0, x25
  1000cd760  bl      _objc_release
loc_1000cd764:
  1000cd764  mov     x0, x23
  1000cd768  b       loc_1000cd784
  1000cd76c  mov     x19, x0
  1000cd770  mov     x0, x21
  1000cd774  bl      _objc_release
  1000cd778  b       loc_1000cd780
loc_1000cd77c:
  1000cd77c  mov     x19, x0
loc_1000cd780:
  1000cd780  mov     x0, x20
loc_1000cd784:
  1000cd784  bl      _objc_release
  1000cd788  mov     x0, x19
  1000cd78c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000cd790
; address 0x1000cd790  size 8  kind sub
; ======================================================================
  1000cd790  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000cd794  b       _objc_retain

; ======================================================================
; sub_1000cd798
; address 0x1000cd798  size 8  kind sub
; ======================================================================
  1000cd798  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000cd79c  b       _objc_release

; ======================================================================
; -[ADStatsViewController loadEnemies]
; address 0x1000cd7a0  size 2792  kind objc
; ======================================================================
  1000cd7a0  stp     d11, d10, [sp, #-0x80]!
  1000cd7a4  stp     d9, d8, [sp, #0x10]
  1000cd7a8  stp     x28, x27, [sp, #0x20]
  1000cd7ac  stp     x26, x25, [sp, #0x30]
  1000cd7b0  stp     x24, x23, [sp, #0x40]
  1000cd7b4  stp     x22, x21, [sp, #0x50]
  1000cd7b8  stp     x20, x19, [sp, #0x60]
  1000cd7bc  stp     x29, x30, [sp, #0x70]
  1000cd7c0  add     x29, sp, #0x70
  1000cd7c4  sub     sp, sp, #0x100
  1000cd7c8  mov     x19, x0
  1000cd7cc  str     x19, [sp, #0x40]
  1000cd7d0  mov     x20, #0
  1000cd7d4  adrp    x8, #0x10041a000
  1000cd7d8  nop
  1000cd7dc  adrp    x9, #0x100416000
  1000cd7e0  nop
  1000cd7e4  adrp    x10, #0x100417000
  1000cd7e8  add     x10, x10, #0x788                         ; &@selector(currentDevice)
  1000cd7ec  adrp    x25, #0x1003b0000
  1000cd7f0  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000cd7f4  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000cd7f8  adrp    x11, #0x100418000
  1000cd7fc  add     x11, x11, #0x9e8                         ; &@selector(model)
  1000cd800  nop
  1000cd804  ldr     d8, #0x100181bd0                         ; d8 = -1704.0
  1000cd808  nop
  1000cd80c  ldr     d9, #0x100181bc8                         ; d9 = 2.22044605e-16
  1000cd810  nop
  1000cd814  ldr     d10, #0x100181bd8                        ; d10 = -1136.0
  1000cd818  nop
  1000cd81c  ldr     d11, #0x100181bc0                        ; d11 = -568.0
  1000cd820  adrp    x12, #0x100416000
  1000cd824  add     x12, x12, #0xf58                         ; &@selector(isEqualToString:)
  1000cd828  adrp    x13, #0x100417000
  1000cd82c  add     x13, x13, #0x6e8                         ; &@selector(mainScreen)
  1000cd830  adrp    x14, #0x100418000
  1000cd834  add     x14, x14, #0x9f0                         ; &@selector(nativeBounds)
  1000cd838  adrp    x15, #0x100417000
  1000cd83c  add     x15, x15, #0xe90                         ; &@selector(respondsToSelector:)
  1000cd840  adrp    x16, #0x100417000
  1000cd844  add     x16, x16, #0x748                         ; &@selector(bounds)
  1000cd848  adrp    x17, #0x100417000
  1000cd84c  add     x17, x17, #0x2d0                         ; &@selector(tableView)
  1000cd850  adrp    x0, #0x100417000
  1000cd854  add     x0, x0, #0x390                           ; &@selector(dequeueReusableCellWithIdentifier:)
  1000cd858  adrp    x1, #0x100416000
  1000cd85c  add     x1, x1, #0xc30                           ; &@selector(objectAtIndex:)
  1000cd860  adrp    x2, #0x100417000
  1000cd864  add     x2, x2, #0x40                            ; &@selector(objectForKey:)
  1000cd868  adrp    x3, #0x100417000
  1000cd86c  add     x3, x3, #0x2e0                           ; &@selector(class)
  1000cd870  adrp    x4, #0x100417000
  1000cd874  add     x4, x4, #0x3b8                           ; &@selector(isKindOfClass:)
  1000cd878  adrp    x5, #0x10041a000
  1000cd87c  add     x5, x5, #0xd28                           ; &@selector(setIsEnemyCell:)
  1000cd880  adrp    x6, #0x100417000
  1000cd884  add     x6, x6, #0x3c8                           ; &@selector(arrayWithObjects:count:)
  1000cd888  adrp    x7, #0x10041a000
  1000cd88c  add     x7, x7, #0xd30                           ; &@selector(populateWithSubtitleString:Values:)
  1000cd890  adrp    x21, #0x10041a000
  1000cd894  add     x21, x21, #0xd20                         ; &@selector(stringValue)
  1000cd898  adrp    x22, #0x100417000
  1000cd89c  add     x22, x22, #0x998                         ; &@selector(setUserInteractionEnabled:)
  1000cd8a0  adrp    x23, #0x10041a000
  1000cd8a4  add     x23, x23, #0xd40                         ; &@selector(enemyCells)
  1000cd8a8  adrp    x24, #0x100416000
  1000cd8ac  add     x24, x24, #0xd90                         ; &@selector(addObject:)
  1000cd8b0  adrp    x26, #0x100416000
  1000cd8b4  add     x26, x26, #0xac8                         ; &@selector(alloc)
  1000cd8b8  adrp    x27, #0x100417000
  1000cd8bc  nop
  1000cd8c0  adrp    x28, #0x10041a000
  1000cd8c4  nop
  1000cd8c8  stur    x25, [x29, #-0x78]
  1000cd8cc  ldr     x8, [x8, #0xd08]
  1000cd8d0  ldr     x9, [x9, #0xe30]
  1000cd8d4  str     x9, [sp, #0xa0]
  1000cd8d8  ldr     x25, [x10]
  1000cd8dc  ldr     x9, [x11]
  1000cd8e0  stur    x9, [x29, #-0xa8]
  1000cd8e4  ldr     x9, [x12]
  1000cd8e8  stur    x9, [x29, #-0xb0]
  1000cd8ec  ldr     x9, [x13]
  1000cd8f0  str     x9, [sp, #0xa8]
  1000cd8f4  ldr     x9, [x14]
  1000cd8f8  str     x9, [sp, #0x80]
  1000cd8fc  ldr     x9, [x15]
  1000cd900  str     x9, [sp, #0x38]
  1000cd904  ldr     x9, [x16]
  1000cd908  str     x9, [sp, #0x18]
  1000cd90c  ldr     x9, [x17]
  1000cd910  str     x9, [sp, #0x78]
  1000cd914  ldr     x9, [x0]
  1000cd918  str     x9, [sp, #0x70]
  1000cd91c  ldr     x9, [x1]
  1000cd920  str     x9, [sp, #0x68]
  1000cd924  ldr     x9, [x2]
  1000cd928  stur    x9, [x29, #-0xa0]
  1000cd92c  ldr     x9, [x3]
  1000cd930  str     x9, [sp, #0xb8]
  1000cd934  ldr     x9, [x4]
  1000cd938  str     x9, [sp, #0xb0]
  1000cd93c  ldr     x9, [x5]
  1000cd940  str     x9, [sp, #0x58]
  1000cd944  ldr     x9, [x6]
  1000cd948  str     x9, [sp, #0x50]
  1000cd94c  ldr     x9, [x7]
  1000cd950  str     x9, [sp, #0x48]
  1000cd954  ldr     x9, [x21]
  1000cd958  str     x9, [sp, #0x60]
  1000cd95c  ldr     x9, [x22]
  1000cd960  str     x9, [sp, #0x98]
  1000cd964  ldr     x9, [x23]
  1000cd968  str     x9, [sp, #0x90]
  1000cd96c  ldr     x9, [x24]
  1000cd970  str     x9, [sp, #0x88]
  1000cd974  ldr     x9, [x26]
  1000cd978  str     x9, [sp, #0x30]
  1000cd97c  ldr     x9, [x27, #0x3c0]
  1000cd980  str     x9, [sp, #0x28]
  1000cd984  mov     x27, x20
  1000cd988  ldr     x9, [x28, #0xd38]
  1000cd98c  str     x9, [sp, #0x20]
  1000cd990  mov     x28, x8
  1000cd994  b       loc_1000cd9ac
loc_1000cd998:
  1000cd998  mov     x0, x21
  1000cd99c  bl      _objc_release
  1000cd9a0  mov     x0, x22
  1000cd9a4  bl      _objc_release
  1000cd9a8  add     x27, x27, #1
loc_1000cd9ac:
  1000cd9ac  mov     x0, x19
  1000cd9b0  mov     x1, x28
  1000cd9b4  bl      _objc_msgSend                            ; [self enemiesData]
  1000cd9b8  mov     x29, x29
  1000cd9bc  bl      _objc_retainAutoreleasedReturnValue
  1000cd9c0  mov     x21, x0
  1000cd9c4  ldr     x1, [sp, #0xa0]
  1000cd9c8  bl      _objc_msgSend                            ; [[self enemiesData] count]
  1000cd9cc  mov     x22, x0
  1000cd9d0  mov     x0, x21
  1000cd9d4  bl      _objc_release
  1000cd9d8  cmp     x27, x22
  1000cd9dc  b.hs    loc_1000ce0c4                            ; if (x27 >=u [[self enemiesData] count])
  1000cd9e0  adrp    x8, #0x10041e000
  1000cd9e4  ldr     x0, [x8, #0x50]                          ; class UIDevice
  1000cd9e8  mov     x22, #0
  1000cd9ec  mov     x1, x25
  1000cd9f0  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000cd9f4  mov     x29, x29
  1000cd9f8  bl      _objc_retainAutoreleasedReturnValue
  1000cd9fc  mov     x22, x0
  1000cda00  ldur    x1, [x29, #-0xa8]
  1000cda04  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000cda08  mov     x29, x29
  1000cda0c  bl      _objc_retainAutoreleasedReturnValue
  1000cda10  mov     x24, x0
  1000cda14  ldur    x1, [x29, #-0xb0]
  1000cda18  adrp    x2, #0x1003bd000
  1000cda1c  add     x2, x2, #0x30                            ; @"iPhone"
  1000cda20  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000cda24  cbz     w0, loc_1000cda98                        ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] == 0)
  1000cda28  adrp    x8, #0x10041e000
  1000cda2c  ldr     x0, [x8, #0x28]                          ; class UIScreen
  1000cda30  ldr     x1, [sp, #0xa8]
  1000cda34  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000cda38  mov     x20, x27
  1000cda3c  mov     x29, x29
  1000cda40  bl      _objc_retainAutoreleasedReturnValue
  1000cda44  mov     x27, x0
  1000cda48  ldr     x1, [sp, #0x38]
  1000cda4c  ldr     x2, [sp, #0x80]
  1000cda50  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  1000cda54  mov     x8, x0
  1000cda58  adrp    x9, #0x10041e000
  1000cda5c  ldr     x0, [x9, #0x28]                          ; class UIScreen
  1000cda60  cbz     w8, loc_1000cdaac                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  1000cda64  ldr     x1, [sp, #0xa8]
  1000cda68  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000cda6c  mov     x29, x29
  1000cda70  bl      _objc_retainAutoreleasedReturnValue
  1000cda74  mov     x23, x0
  1000cda78  ldr     x1, [sp, #0x80]
  1000cda7c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000cda80  fadd    d0, d3, d8
  1000cda84  fabs    d0, d0
  1000cda88  fcmp    d0, d9
  1000cda8c  b.pl    loc_1000cdae0                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  1000cda90  mov     w26, #0
  1000cda94  b       loc_1000cdb1c
loc_1000cda98:
  1000cda98  mov     x0, x24
  1000cda9c  bl      _objc_release
  1000cdaa0  mov     x0, x22
  1000cdaa4  bl      _objc_release
  1000cdaa8  b       loc_1000cdc58
loc_1000cdaac:
  1000cdaac  ldr     x1, [sp, #0xa8]
  1000cdab0  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000cdab4  mov     x29, x29
  1000cdab8  bl      _objc_retainAutoreleasedReturnValue
  1000cdabc  mov     x21, x0
  1000cdac0  ldr     x1, [sp, #0x18]
  1000cdac4  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  1000cdac8  fadd    d0, d3, d11
  1000cdacc  fabs    d0, d0
  1000cdad0  fcmp    d0, d9
  1000cdad4  cset    w26, pl
  1000cdad8  mov     x0, x21
  1000cdadc  b       loc_1000cdb20
loc_1000cdae0:
  1000cdae0  adrp    x8, #0x10041e000
  1000cdae4  ldr     x0, [x8, #0x28]                          ; class UIScreen
  1000cdae8  ldr     x1, [sp, #0xa8]
  1000cdaec  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000cdaf0  mov     x29, x29
  1000cdaf4  bl      _objc_retainAutoreleasedReturnValue
  1000cdaf8  mov     x21, x0
  1000cdafc  ldr     x1, [sp, #0x80]
  1000cdb00  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000cdb04  fadd    d0, d3, d10
  1000cdb08  fabs    d0, d0
  1000cdb0c  fcmp    d0, d9
  1000cdb10  cset    w26, pl
  1000cdb14  mov     x0, x21
  1000cdb18  bl      _objc_release
loc_1000cdb1c:
  1000cdb1c  mov     x0, x23
loc_1000cdb20:
  1000cdb20  bl      _objc_release
  1000cdb24  mov     x0, x27
  1000cdb28  bl      _objc_release
  1000cdb2c  mov     x0, x24
  1000cdb30  bl      _objc_release
  1000cdb34  mov     x0, x22
  1000cdb38  bl      _objc_release
  1000cdb3c  mov     x27, x20
  1000cdb40  cbz     w26, loc_1000cdc58                       ; if (w26 == 0)
  1000cdb44  mov     x22, #0
  1000cdb48  mov     x0, x19
  1000cdb4c  ldr     x1, [sp, #0x78]
  1000cdb50  bl      _objc_msgSend                            ; [self tableView]
  1000cdb54  mov     x29, x29
  1000cdb58  bl      _objc_retainAutoreleasedReturnValue
  1000cdb5c  mov     x23, x0
  1000cdb60  ldr     x1, [sp, #0x70]
  1000cdb64  adrp    x2, #0x1003c2000
  1000cdb68  add     x2, x2, #0x370                           ; @"enemyCellID"
  1000cdb6c  bl      _objc_msgSend                            ; [[self tableView] dequeueReusableCellWithIdentifier:@"enemyCellID"]
  1000cdb70  mov     x29, x29
  1000cdb74  bl      _objc_retainAutoreleasedReturnValue
  1000cdb78  mov     x22, x0
  1000cdb7c  mov     x0, x23
  1000cdb80  bl      _objc_release
  1000cdb84  mov     x0, x19
  1000cdb88  mov     x1, x28
  1000cdb8c  bl      _objc_msgSend                            ; [self enemiesData]
  1000cdb90  mov     x19, x25
  1000cdb94  mov     x29, x29
  1000cdb98  bl      _objc_retainAutoreleasedReturnValue
  1000cdb9c  mov     x23, x0
  1000cdba0  ldr     x1, [sp, #0x68]
  1000cdba4  mov     x2, x27
  1000cdba8  bl      _objc_msgSend                            ; [[self enemiesData] objectAtIndex:x2]
  1000cdbac  mov     x25, x28
  1000cdbb0  mov     x29, x29
  1000cdbb4  bl      _objc_retainAutoreleasedReturnValue
  1000cdbb8  mov     x24, x0
  1000cdbbc  mov     x0, x23
  1000cdbc0  bl      _objc_release
  1000cdbc4  mov     x0, x24
  1000cdbc8  ldur    x20, [x29, #-0xa0]
  1000cdbcc  mov     x1, x20
  1000cdbd0  adrp    x2, #0x1003b9000
  1000cdbd4  add     x2, x2, #0xdb0                           ; @"name"
  1000cdbd8  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"name"]
  1000cdbdc  adrp    x21, #0x1003ba000
  1000cdbe0  add     x21, x21, #0x230                         ; @"kills"
  1000cdbe4  mov     x29, x29
  1000cdbe8  bl      _objc_retainAutoreleasedReturnValue
  1000cdbec  mov     x28, x0
  1000cdbf0  mov     x0, x24
  1000cdbf4  mov     x1, x20
  1000cdbf8  mov     x2, x21
  1000cdbfc  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"]
  1000cdc00  mov     x29, x29
  1000cdc04  bl      _objc_retainAutoreleasedReturnValue
  1000cdc08  mov     x23, x0
  1000cdc0c  adrp    x8, #0x10041d000
  1000cdc10  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000cdc14  ldr     x1, [sp, #0xb8]
  1000cdc18  bl      _objc_msgSend                            ; [NSString class]
  1000cdc1c  mov     x2, x0
  1000cdc20  mov     x0, x23
  1000cdc24  ldr     x1, [sp, #0xb0]
  1000cdc28  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]]
  1000cdc2c  cbz     w0, loc_1000cdf34                        ; if ([[[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]] == 0)
  1000cdc30  mov     x0, x24
  1000cdc34  ldur    x1, [x29, #-0xa0]
  1000cdc38  mov     x2, x21
  1000cdc3c  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"]
  1000cdc40  mov     x29, x29
  1000cdc44  bl      _objc_retainAutoreleasedReturnValue
  1000cdc48  mov     x20, x0
  1000cdc4c  adrp    x21, #0x1003c2000
  1000cdc50  add     x21, x21, #0x4b0                         ; @"casualty"
  1000cdc54  b       loc_1000cdf74
loc_1000cdc58:
  1000cdc58  adrp    x8, #0x10041e000
  1000cdc5c  ldr     x0, [x8, #0x50]                          ; class UIDevice
  1000cdc60  mov     x22, #0
  1000cdc64  mov     x1, x25
  1000cdc68  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000cdc6c  mov     x29, x29
  1000cdc70  bl      _objc_retainAutoreleasedReturnValue
  1000cdc74  mov     x22, x0
  1000cdc78  ldur    x1, [x29, #-0xa8]
  1000cdc7c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000cdc80  mov     x29, x29
  1000cdc84  bl      _objc_retainAutoreleasedReturnValue
  1000cdc88  mov     x21, x0
  1000cdc8c  ldur    x1, [x29, #-0xb0]
  1000cdc90  adrp    x2, #0x1003bd000
  1000cdc94  add     x2, x2, #0x50                            ; @"iPod touch"
  1000cdc98  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000cdc9c  mov     x23, x0
  1000cdca0  mov     x0, x21
  1000cdca4  bl      _objc_release
  1000cdca8  mov     x0, x22
  1000cdcac  bl      _objc_release
  1000cdcb0  cbz     w23, loc_1000cddc0                       ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] == 0)
  1000cdcb4  mov     x22, #0
  1000cdcb8  mov     x0, x19
  1000cdcbc  ldr     x1, [sp, #0x78]
  1000cdcc0  bl      _objc_msgSend                            ; [self tableView]
  1000cdcc4  mov     x29, x29
  1000cdcc8  bl      _objc_retainAutoreleasedReturnValue
  1000cdccc  mov     x23, x0
  1000cdcd0  ldr     x1, [sp, #0x70]
  1000cdcd4  adrp    x2, #0x1003c2000
  1000cdcd8  add     x2, x2, #0x370                           ; @"enemyCellID"
  1000cdcdc  bl      _objc_msgSend                            ; [[self tableView] dequeueReusableCellWithIdentifier:@"enemyCellID"]
  1000cdce0  mov     x29, x29
  1000cdce4  bl      _objc_retainAutoreleasedReturnValue
  1000cdce8  mov     x22, x0
  1000cdcec  mov     x0, x23
  1000cdcf0  bl      _objc_release
  1000cdcf4  mov     x0, x19
  1000cdcf8  mov     x1, x28
  1000cdcfc  bl      _objc_msgSend                            ; [self enemiesData]
  1000cdd00  mov     x19, x25
  1000cdd04  mov     x29, x29
  1000cdd08  bl      _objc_retainAutoreleasedReturnValue
  1000cdd0c  mov     x23, x0
  1000cdd10  ldr     x1, [sp, #0x68]
  1000cdd14  mov     x2, x27
  1000cdd18  bl      _objc_msgSend                            ; [[self enemiesData] objectAtIndex:x2]
  1000cdd1c  mov     x25, x28
  1000cdd20  mov     x29, x29
  1000cdd24  bl      _objc_retainAutoreleasedReturnValue
  1000cdd28  mov     x24, x0
  1000cdd2c  mov     x0, x23
  1000cdd30  bl      _objc_release
  1000cdd34  mov     x0, x24
  1000cdd38  ldur    x20, [x29, #-0xa0]
  1000cdd3c  mov     x1, x20
  1000cdd40  adrp    x2, #0x1003b9000
  1000cdd44  add     x2, x2, #0xdb0                           ; @"name"
  1000cdd48  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"name"]
  1000cdd4c  adrp    x21, #0x1003ba000
  1000cdd50  add     x21, x21, #0x230                         ; @"kills"
  1000cdd54  mov     x29, x29
  1000cdd58  bl      _objc_retainAutoreleasedReturnValue
  1000cdd5c  mov     x28, x0
  1000cdd60  mov     x0, x24
  1000cdd64  mov     x1, x20
  1000cdd68  mov     x2, x21
  1000cdd6c  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"]
  1000cdd70  mov     x29, x29
  1000cdd74  bl      _objc_retainAutoreleasedReturnValue
  1000cdd78  mov     x23, x0
  1000cdd7c  adrp    x8, #0x10041d000
  1000cdd80  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000cdd84  ldr     x1, [sp, #0xb8]
  1000cdd88  bl      _objc_msgSend                            ; [NSString class]
  1000cdd8c  mov     x2, x0
  1000cdd90  mov     x0, x23
  1000cdd94  ldr     x1, [sp, #0xb0]
  1000cdd98  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]]
  1000cdd9c  cbz     w0, loc_1000cde08                        ; if ([[[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]] == 0)
  1000cdda0  mov     x0, x24
  1000cdda4  ldur    x1, [x29, #-0xa0]
  1000cdda8  mov     x2, x21
  1000cddac  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"]
  1000cddb0  mov     x29, x29
  1000cddb4  bl      _objc_retainAutoreleasedReturnValue
  1000cddb8  mov     x20, x0
  1000cddbc  b       loc_1000cde40
loc_1000cddc0:
  1000cddc0  adrp    x8, #0x10041d000
  1000cddc4  ldr     x0, [x8, #0xff0]                         ; class ADStatsMultiCell
  1000cddc8  mov     x22, #0
  1000cddcc  ldr     x1, [sp, #0x30]
  1000cddd0  bl      _objc_msgSend                            ; [ADStatsMultiCell alloc]
  1000cddd4  mov     x22, #0
  1000cddd8  mov     x2, #0
  1000cdddc  ldr     x1, [sp, #0x28]
  1000cdde0  adrp    x3, #0x1003c2000
  1000cdde4  add     x3, x3, #0x370                           ; @"enemyCellID"
  1000cdde8  bl      _objc_msgSend                            ; [[ADStatsMultiCell alloc] initWithStyle:0 reuseIdentifier:@"enemyCellID"]
  1000cddec  mov     x2, x0
  1000cddf0  mov     x22, x2
  1000cddf4  mov     x0, x19
  1000cddf8  ldr     x1, [sp, #0x20]
  1000cddfc  mov     x3, x27
  1000cde00  bl      _objc_msgSend                            ; [self configureEnemyCell:[[ADStatsMultiCell alloc] initWithStyle:0 reuseIdentifier:@"enemyCellID"] ForRow:x3]
  1000cde04  b       loc_1000ce088
loc_1000cde08:
  1000cde08  mov     x0, x24
  1000cde0c  ldur    x1, [x29, #-0xa0]
  1000cde10  mov     x2, x21
  1000cde14  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"]
  1000cde18  mov     x29, x29
  1000cde1c  bl      _objc_retainAutoreleasedReturnValue
  1000cde20  mov     x21, x0
  1000cde24  ldr     x1, [sp, #0x60]
  1000cde28  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"] stringValue]
  1000cde2c  mov     x29, x29
  1000cde30  bl      _objc_retainAutoreleasedReturnValue
  1000cde34  mov     x20, x0
  1000cde38  mov     x0, x21
  1000cde3c  bl      _objc_release
loc_1000cde40:
  1000cde40  mov     x0, x23
  1000cde44  bl      _objc_release
  1000cde48  mov     x0, x24
  1000cde4c  ldur    x1, [x29, #-0xa0]
  1000cde50  adrp    x21, #0x1003c2000
  1000cde54  add     x21, x21, #0x4b0                         ; @"casualty"
  1000cde58  mov     x2, x21
  1000cde5c  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"]
  1000cde60  mov     x29, x29
  1000cde64  bl      _objc_retainAutoreleasedReturnValue
  1000cde68  mov     x23, x0
  1000cde6c  adrp    x8, #0x10041d000
  1000cde70  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000cde74  ldr     x1, [sp, #0xb8]
  1000cde78  bl      _objc_msgSend                            ; [NSString class]
  1000cde7c  mov     x2, x0
  1000cde80  mov     x0, x23
  1000cde84  ldr     x1, [sp, #0xb0]
  1000cde88  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"] isKindOfClass:[NSString class]]
  1000cde8c  cbz     w0, loc_1000cdeb0                        ; if ([[[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"] isKindOfClass:[NSString class]] == 0)
  1000cde90  mov     x0, x24
  1000cde94  ldur    x1, [x29, #-0xa0]
  1000cde98  mov     x2, x21
  1000cde9c  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"]
  1000cdea0  mov     x29, x29
  1000cdea4  bl      _objc_retainAutoreleasedReturnValue
  1000cdea8  mov     x26, x0
  1000cdeac  b       loc_1000cdee8
loc_1000cdeb0:
  1000cdeb0  mov     x0, x24
  1000cdeb4  ldur    x1, [x29, #-0xa0]
  1000cdeb8  mov     x2, x21
  1000cdebc  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"]
  1000cdec0  mov     x29, x29
  1000cdec4  bl      _objc_retainAutoreleasedReturnValue
  1000cdec8  mov     x21, x0
  1000cdecc  ldr     x1, [sp, #0x60]
  1000cded0  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"] stringValue]
  1000cded4  mov     x29, x29
  1000cded8  bl      _objc_retainAutoreleasedReturnValue
  1000cdedc  mov     x26, x0
  1000cdee0  mov     x0, x21
  1000cdee4  bl      _objc_release
loc_1000cdee8:
  1000cdee8  mov     x0, x23
  1000cdeec  bl      _objc_release
  1000cdef0  mov     w2, #1
  1000cdef4  mov     x0, x22
  1000cdef8  ldr     x1, [sp, #0x58]
  1000cdefc  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"enemyCellID"] setIsEnemyCell:1]
  1000cdf00  stp     x20, x26, [x29, #-0x98]
  1000cdf04  adrp    x8, #0x10041d000
  1000cdf08  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000cdf0c  sub     x2, x29, #0x98
  1000cdf10  mov     w3, #2
  1000cdf14  ldr     x1, [sp, #0x50]
  1000cdf18  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x98] count:2]
  1000cdf1c  mov     x3, x0
  1000cdf20  mov     x0, x22
  1000cdf24  ldr     x1, [sp, #0x48]
  1000cdf28  mov     x2, x28
  1000cdf2c  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"enemyCellID"] populateWithSubtitleString:[[[self enemiesData] objectAtIndex:x2] objectForKey:@"name"] Values:[NSArray arrayWithObjects:&x29[-0x98] count:2]]
  1000cdf30  b       loc_1000ce05c
loc_1000cdf34:
  1000cdf34  mov     x0, x24
  1000cdf38  ldur    x1, [x29, #-0xa0]
  1000cdf3c  mov     x2, x21
  1000cdf40  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"]
  1000cdf44  mov     x29, x29
  1000cdf48  bl      _objc_retainAutoreleasedReturnValue
  1000cdf4c  mov     x26, x0
  1000cdf50  ldr     x1, [sp, #0x60]
  1000cdf54  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"kills"] stringValue]
  1000cdf58  adrp    x21, #0x1003c2000
  1000cdf5c  add     x21, x21, #0x4b0                         ; @"casualty"
  1000cdf60  mov     x29, x29
  1000cdf64  bl      _objc_retainAutoreleasedReturnValue
  1000cdf68  mov     x20, x0
  1000cdf6c  mov     x0, x26
  1000cdf70  bl      _objc_release
loc_1000cdf74:
  1000cdf74  mov     x0, x23
  1000cdf78  bl      _objc_release
  1000cdf7c  mov     x0, x24
  1000cdf80  ldur    x1, [x29, #-0xa0]
  1000cdf84  mov     x2, x21
  1000cdf88  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"]
  1000cdf8c  mov     x29, x29
  1000cdf90  bl      _objc_retainAutoreleasedReturnValue
  1000cdf94  mov     x23, x0
  1000cdf98  adrp    x8, #0x10041d000
  1000cdf9c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000cdfa0  ldr     x1, [sp, #0xb8]
  1000cdfa4  bl      _objc_msgSend                            ; [NSString class]
  1000cdfa8  mov     x2, x0
  1000cdfac  mov     x0, x23
  1000cdfb0  ldr     x1, [sp, #0xb0]
  1000cdfb4  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"] isKindOfClass:[NSString class]]
  1000cdfb8  cbz     w0, loc_1000cdfdc                        ; if ([[[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"] isKindOfClass:[NSString class]] == 0)
  1000cdfbc  mov     x0, x24
  1000cdfc0  ldur    x1, [x29, #-0xa0]
  1000cdfc4  mov     x2, x21
  1000cdfc8  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"]
  1000cdfcc  mov     x29, x29
  1000cdfd0  bl      _objc_retainAutoreleasedReturnValue
  1000cdfd4  mov     x26, x0
  1000cdfd8  b       loc_1000ce014
loc_1000cdfdc:
  1000cdfdc  mov     x0, x24
  1000cdfe0  ldur    x1, [x29, #-0xa0]
  1000cdfe4  mov     x2, x21
  1000cdfe8  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"]
  1000cdfec  mov     x29, x29
  1000cdff0  bl      _objc_retainAutoreleasedReturnValue
  1000cdff4  mov     x21, x0
  1000cdff8  ldr     x1, [sp, #0x60]
  1000cdffc  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:x2] objectForKey:@"casualty"] stringValue]
  1000ce000  mov     x29, x29
  1000ce004  bl      _objc_retainAutoreleasedReturnValue
  1000ce008  mov     x26, x0
  1000ce00c  mov     x0, x21
  1000ce010  bl      _objc_release
loc_1000ce014:
  1000ce014  mov     x0, x23
  1000ce018  bl      _objc_release
  1000ce01c  mov     w2, #1
  1000ce020  mov     x0, x22
  1000ce024  ldr     x1, [sp, #0x58]
  1000ce028  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"enemyCellID"] setIsEnemyCell:1]
  1000ce02c  stp     x20, x26, [x29, #-0x88]
  1000ce030  adrp    x8, #0x10041d000
  1000ce034  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000ce038  sub     x2, x29, #0x88
  1000ce03c  mov     w3, #2
  1000ce040  ldr     x1, [sp, #0x50]
  1000ce044  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x88] count:2]
  1000ce048  mov     x3, x0
  1000ce04c  mov     x0, x22
  1000ce050  ldr     x1, [sp, #0x48]
  1000ce054  mov     x2, x28
  1000ce058  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"enemyCellID"] populateWithSubtitleString:[[[self enemiesData] objectAtIndex:x2] objectForKey:@"name"] Values:[NSArray arrayWithObjects:&x29[-0x88] count:2]]
loc_1000ce05c:
  1000ce05c  mov     x0, x26
  1000ce060  bl      _objc_release
  1000ce064  mov     x0, x20
  1000ce068  bl      _objc_release
  1000ce06c  mov     x0, x28
  1000ce070  bl      _objc_release
  1000ce074  mov     x0, x24
  1000ce078  bl      _objc_release
  1000ce07c  mov     x28, x25
  1000ce080  mov     x25, x19
  1000ce084  ldr     x19, [sp, #0x40]
loc_1000ce088:
  1000ce088  mov     w2, #0
  1000ce08c  mov     x0, x22
  1000ce090  ldr     x1, [sp, #0x98]
  1000ce094  bl      _objc_msgSend                            ; [x0 setUserInteractionEnabled:0]
  1000ce098  mov     x0, x19
  1000ce09c  ldr     x1, [sp, #0x90]
  1000ce0a0  bl      _objc_msgSend                            ; [self enemyCells]
  1000ce0a4  mov     x29, x29
  1000ce0a8  bl      _objc_retainAutoreleasedReturnValue
  1000ce0ac  mov     x21, x0
  1000ce0b0  ldr     x1, [sp, #0x88]
  1000ce0b4  mov     x2, x22
  1000ce0b8  bl      _objc_msgSend                            ; [[self enemyCells] addObject:x2]
  1000ce0bc  b       loc_1000cd998
  1000ce0c0  b       loc_1000ce14c
loc_1000ce0c4:
  1000ce0c4  ldur    x8, [x29, #-0x78]
  1000ce0c8  adrp    x9, #0x1003b0000
  1000ce0cc  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000ce0d0  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000ce0d4  sub     x8, x9, x8
  1000ce0d8  cbnz    x8, loc_1000ce104                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ce0dc  sub     sp, x29, #0x70
  1000ce0e0  ldp     x29, x30, [sp, #0x70]
  1000ce0e4  ldp     x20, x19, [sp, #0x60]
  1000ce0e8  ldp     x22, x21, [sp, #0x50]
  1000ce0ec  ldp     x24, x23, [sp, #0x40]
  1000ce0f0  ldp     x26, x25, [sp, #0x30]
  1000ce0f4  ldp     x28, x27, [sp, #0x20]
  1000ce0f8  ldp     d9, d8, [sp, #0x10]
  1000ce0fc  ldp     d11, d10, [sp], #0x80
  1000ce100  ret
loc_1000ce104:
  1000ce104  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000ce108  mov     x19, x0
  1000ce10c  b       loc_1000ce278
  1000ce110  mov     x19, x0
  1000ce114  b       loc_1000ce270
  1000ce118  mov     x19, x0
  1000ce11c  mov     x0, x21
  1000ce120  b       loc_1000ce27c
  1000ce124  mov     x19, x0
  1000ce128  b       loc_1000ce278
  1000ce12c  mov     x19, x0
  1000ce130  b       loc_1000ce23c
  1000ce134  mov     x19, x0
  1000ce138  b       loc_1000ce258
  1000ce13c  mov     x19, x0
  1000ce140  b       loc_1000ce220
  1000ce144  mov     x19, x0
  1000ce148  b       loc_1000ce278
loc_1000ce14c:
  1000ce14c  mov     x19, x0
  1000ce150  mov     x0, x21
  1000ce154  b       loc_1000ce274
  1000ce158  b       loc_1000ce1e0
  1000ce15c  mov     x19, x0
  1000ce160  b       loc_1000ce23c
  1000ce164  mov     x19, x0
  1000ce168  b       loc_1000ce258
  1000ce16c  b       loc_1000ce1e0
  1000ce170  mov     x19, x0
  1000ce174  b       loc_1000ce218
  1000ce178  b       loc_1000ce1b0
  1000ce17c  b       loc_1000ce1bc
  1000ce180  mov     x19, x0
  1000ce184  b       loc_1000ce270
  1000ce188  mov     x19, x0
  1000ce18c  b       loc_1000ce268
  1000ce190  mov     x19, x0
  1000ce194  b       loc_1000ce260
  1000ce198  b       loc_1000ce1e0
  1000ce19c  mov     x19, x0
  1000ce1a0  b       loc_1000ce220
  1000ce1a4  mov     x19, x0
  1000ce1a8  mov     x0, x21
  1000ce1ac  b       loc_1000ce21c
loc_1000ce1b0:
  1000ce1b0  mov     x19, x0
  1000ce1b4  mov     x0, x23
  1000ce1b8  b       loc_1000ce27c
loc_1000ce1bc:
  1000ce1bc  mov     x19, x0
  1000ce1c0  mov     x0, x23
  1000ce1c4  b       loc_1000ce274
  1000ce1c8  mov     x19, x0
  1000ce1cc  b       loc_1000ce270
  1000ce1d0  mov     x19, x0
  1000ce1d4  b       loc_1000ce268
  1000ce1d8  mov     x19, x0
  1000ce1dc  b       loc_1000ce260
loc_1000ce1e0:
  1000ce1e0  mov     x19, x0
  1000ce1e4  mov     x0, x26
  1000ce1e8  b       loc_1000ce25c
  1000ce1ec  mov     x19, x0
  1000ce1f0  b       loc_1000ce23c
  1000ce1f4  mov     x19, x0
  1000ce1f8  mov     x0, x21
  1000ce1fc  b       loc_1000ce238
  1000ce200  mov     x19, x0
  1000ce204  b       loc_1000ce258
  1000ce208  b       loc_1000ce24c
  1000ce20c  mov     x19, x0
  1000ce210  mov     x0, x21
  1000ce214  bl      _objc_release
loc_1000ce218:
  1000ce218  mov     x0, x23
loc_1000ce21c:
  1000ce21c  bl      _objc_release
loc_1000ce220:
  1000ce220  mov     x0, x27
  1000ce224  b       loc_1000ce26c
  1000ce228  mov     x19, x0
  1000ce22c  b       loc_1000ce23c
  1000ce230  mov     x19, x0
  1000ce234  mov     x0, x26
loc_1000ce238:
  1000ce238  bl      _objc_release
loc_1000ce23c:
  1000ce23c  mov     x0, x23
  1000ce240  b       loc_1000ce264
  1000ce244  mov     x19, x0
  1000ce248  b       loc_1000ce258
loc_1000ce24c:
  1000ce24c  mov     x19, x0
  1000ce250  mov     x0, x21
  1000ce254  bl      _objc_release
loc_1000ce258:
  1000ce258  mov     x0, x23
loc_1000ce25c:
  1000ce25c  bl      _objc_release
loc_1000ce260:
  1000ce260  mov     x0, x20
loc_1000ce264:
  1000ce264  bl      _objc_release
loc_1000ce268:
  1000ce268  mov     x0, x28
loc_1000ce26c:
  1000ce26c  bl      _objc_release
loc_1000ce270:
  1000ce270  mov     x0, x24
loc_1000ce274:
  1000ce274  bl      _objc_release
loc_1000ce278:
  1000ce278  mov     x0, x22
loc_1000ce27c:
  1000ce27c  bl      _objc_release
  1000ce280  mov     x0, x19
  1000ce284  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController loadWeapons]
; address 0x1000ce288  size 3140  kind objc
; ======================================================================
  1000ce288  stp     d11, d10, [sp, #-0x80]!
  1000ce28c  stp     d9, d8, [sp, #0x10]
  1000ce290  stp     x28, x27, [sp, #0x20]
  1000ce294  stp     x26, x25, [sp, #0x30]
  1000ce298  stp     x24, x23, [sp, #0x40]
  1000ce29c  stp     x22, x21, [sp, #0x50]
  1000ce2a0  stp     x20, x19, [sp, #0x60]
  1000ce2a4  stp     x29, x30, [sp, #0x70]
  1000ce2a8  add     x29, sp, #0x70
  1000ce2ac  sub     sp, sp, #0x120
  1000ce2b0  mov     x19, x0
  1000ce2b4  mov     x20, #0
  1000ce2b8  adrp    x24, #0x100416000
  1000ce2bc  nop
  1000ce2c0  adrp    x10, #0x100417000
  1000ce2c4  nop
  1000ce2c8  adrp    x11, #0x100418000
  1000ce2cc  add     x11, x11, #0x9e8                         ; &@selector(model)
  1000ce2d0  adrp    x12, #0x100416000
  1000ce2d4  add     x12, x12, #0xf58                         ; &@selector(isEqualToString:)
  1000ce2d8  adrp    x9, #0x1003b0000
  1000ce2dc  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000ce2e0  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000ce2e4  adrp    x13, #0x100417000
  1000ce2e8  add     x13, x13, #0x6e8                         ; &@selector(mainScreen)
  1000ce2ec  nop
  1000ce2f0  ldr     d8, #0x100181bd0                         ; d8 = -1704.0
  1000ce2f4  nop
  1000ce2f8  ldr     d9, #0x100181bc8                         ; d9 = 2.22044605e-16
  1000ce2fc  nop
  1000ce300  ldr     d10, #0x100181bd8                        ; d10 = -1136.0
  1000ce304  nop
  1000ce308  ldr     d11, #0x100181bc0                        ; d11 = -568.0
  1000ce30c  adrp    x14, #0x100418000
  1000ce310  add     x14, x14, #0x9f0                         ; &@selector(nativeBounds)
  1000ce314  adrp    x15, #0x100417000
  1000ce318  add     x15, x15, #0xe90                         ; &@selector(respondsToSelector:)
  1000ce31c  adrp    x16, #0x100417000
  1000ce320  add     x16, x16, #0x748                         ; &@selector(bounds)
  1000ce324  adrp    x17, #0x100417000
  1000ce328  add     x17, x17, #0x2d0                         ; &@selector(tableView)
  1000ce32c  adrp    x0, #0x100417000
  1000ce330  add     x0, x0, #0x390                           ; &@selector(dequeueReusableCellWithIdentifier:)
  1000ce334  adrp    x1, #0x100416000
  1000ce338  add     x1, x1, #0xc30                           ; &@selector(objectAtIndex:)
  1000ce33c  adrp    x2, #0x100417000
  1000ce340  add     x2, x2, #0x40                            ; &@selector(objectForKey:)
  1000ce344  adrp    x3, #0x100417000
  1000ce348  add     x3, x3, #0x2e0                           ; &@selector(class)
  1000ce34c  adrp    x4, #0x100417000
  1000ce350  add     x4, x4, #0x3b8                           ; &@selector(isKindOfClass:)
  1000ce354  adrp    x5, #0x100419000
  1000ce358  add     x5, x5, #0x188                           ; &@selector(componentsSeparatedByString:)
  1000ce35c  adrp    x6, #0x100416000
  1000ce360  add     x6, x6, #0xee8                           ; &@selector(stringWithFormat:)
  1000ce364  adrp    x7, #0x10041a000
  1000ce368  add     x7, x7, #0xd28                           ; &@selector(setIsEnemyCell:)
  1000ce36c  adrp    x21, #0x100417000
  1000ce370  add     x21, x21, #0x3c8                         ; &@selector(arrayWithObjects:count:)
  1000ce374  adrp    x22, #0x10041a000
  1000ce378  add     x22, x22, #0xd30                         ; &@selector(populateWithSubtitleString:Values:)
  1000ce37c  adrp    x23, #0x10041a000
  1000ce380  add     x23, x23, #0xd20                         ; &@selector(stringValue)
  1000ce384  adrp    x25, #0x100417000
  1000ce388  add     x25, x25, #0x998                         ; &@selector(setUserInteractionEnabled:)
  1000ce38c  adrp    x26, #0x100417000
  1000ce390  add     x26, x26, #0x2a0                         ; &@selector(weaponCells)
  1000ce394  adrp    x27, #0x100416000
  1000ce398  add     x27, x27, #0xd90                         ; &@selector(addObject:)
  1000ce39c  adrp    x28, #0x100416000
  1000ce3a0  nop
  1000ce3a4  adrp    x30, #0x100417000
  1000ce3a8  add     x30, x30, #0x3c0                         ; &@selector(initWithStyle:reuseIdentifier:)
  1000ce3ac  adrp    x8, #0x10041a000
  1000ce3b0  nop
  1000ce3b4  stur    x9, [x29, #-0x78]
  1000ce3b8  adrp    x9, #0x10041a000
  1000ce3bc  nop
  1000ce3c0  ldr     x9, [x9, #0x898]
  1000ce3c4  ldr     x24, [x24, #0xe30]
  1000ce3c8  str     x24, [sp, #0xb0]
  1000ce3cc  ldr     x24, [x10, #0x788]
  1000ce3d0  ldr     x10, [x11]
  1000ce3d4  stur    x10, [x29, #-0xa8]
  1000ce3d8  ldr     x10, [x12]
  1000ce3dc  stur    x10, [x29, #-0xb0]
  1000ce3e0  ldr     x10, [x13]
  1000ce3e4  str     x10, [sp, #0xc0]
  1000ce3e8  ldr     x10, [x14]
  1000ce3ec  str     x10, [sp, #0x90]
  1000ce3f0  ldr     x10, [x15]
  1000ce3f4  str     x10, [sp, #0x48]
  1000ce3f8  ldr     x10, [x16]
  1000ce3fc  str     x10, [sp, #0x28]
  1000ce400  ldr     x10, [x17]
  1000ce404  str     x10, [sp, #0x88]
  1000ce408  ldr     x10, [x0]
  1000ce40c  str     x10, [sp, #0x80]
  1000ce410  ldr     x10, [x1]
  1000ce414  stur    x10, [x29, #-0xc0]
  1000ce418  ldr     x10, [x2]
  1000ce41c  stur    x10, [x29, #-0xa0]
  1000ce420  ldr     x10, [x3]
  1000ce424  stur    x10, [x29, #-0xb8]
  1000ce428  ldr     x10, [x4]
  1000ce42c  str     x10, [sp, #0xc8]
  1000ce430  ldr     x10, [x5]
  1000ce434  str     x10, [sp, #0x70]
  1000ce438  ldr     x10, [x6]
  1000ce43c  str     x10, [sp, #0x68]
  1000ce440  ldr     x10, [x7]
  1000ce444  str     x10, [sp, #0x60]
  1000ce448  ldr     x10, [x21]
  1000ce44c  str     x10, [sp, #0x58]
  1000ce450  ldr     x10, [x22]
  1000ce454  str     x10, [sp, #0x50]
  1000ce458  ldr     x10, [x23]
  1000ce45c  str     x10, [sp, #0x78]
  1000ce460  ldr     x10, [x25]
  1000ce464  str     x10, [sp, #0xa8]
  1000ce468  ldr     x10, [x26]
  1000ce46c  str     x10, [sp, #0xa0]
  1000ce470  ldr     x10, [x27]
  1000ce474  str     x10, [sp, #0x98]
  1000ce478  ldr     x10, [x28, #0xac8]
  1000ce47c  str     x10, [sp, #0x40]
  1000ce480  mov     x28, x9
  1000ce484  ldr     x9, [x30]
  1000ce488  str     x9, [sp, #0x38]
  1000ce48c  ldr     x8, [x8, #0xd48]
  1000ce490  str     x8, [sp, #0x30]
  1000ce494  b       loc_1000ce4ac
loc_1000ce498:
  1000ce498  mov     x0, x21
  1000ce49c  bl      _objc_release
  1000ce4a0  mov     x0, x25
  1000ce4a4  bl      _objc_release
  1000ce4a8  add     x20, x20, #1
loc_1000ce4ac:
  1000ce4ac  mov     x0, x19
  1000ce4b0  mov     x1, x28
  1000ce4b4  bl      _objc_msgSend                            ; [self weaponsData]
  1000ce4b8  mov     x29, x29
  1000ce4bc  bl      _objc_retainAutoreleasedReturnValue
  1000ce4c0  mov     x21, x0
  1000ce4c4  ldr     x1, [sp, #0xb0]
  1000ce4c8  bl      _objc_msgSend                            ; [[self weaponsData] count]
  1000ce4cc  mov     x22, x0
  1000ce4d0  mov     x0, x21
  1000ce4d4  bl      _objc_release
  1000ce4d8  cmp     x20, x22
  1000ce4dc  b.hs    loc_1000cecc8                            ; if (x20 >=u [[self weaponsData] count])
  1000ce4e0  adrp    x8, #0x10041e000
  1000ce4e4  ldr     x0, [x8, #0x50]                          ; class UIDevice
  1000ce4e8  mov     x25, #0
  1000ce4ec  mov     x1, x24
  1000ce4f0  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000ce4f4  mov     x29, x29
  1000ce4f8  bl      _objc_retainAutoreleasedReturnValue
  1000ce4fc  mov     x22, x0
  1000ce500  ldur    x1, [x29, #-0xa8]
  1000ce504  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000ce508  mov     x29, x29
  1000ce50c  bl      _objc_retainAutoreleasedReturnValue
  1000ce510  mov     x23, x0
  1000ce514  ldur    x1, [x29, #-0xb0]
  1000ce518  adrp    x2, #0x1003bd000
  1000ce51c  add     x2, x2, #0x30                            ; @"iPhone"
  1000ce520  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000ce524  cbz     w0, loc_1000ce594                        ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] == 0)
  1000ce528  adrp    x8, #0x10041e000
  1000ce52c  ldr     x0, [x8, #0x28]                          ; class UIScreen
  1000ce530  ldr     x1, [sp, #0xc0]
  1000ce534  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ce538  mov     x29, x29
  1000ce53c  bl      _objc_retainAutoreleasedReturnValue
  1000ce540  mov     x25, x0
  1000ce544  ldr     x1, [sp, #0x48]
  1000ce548  ldr     x2, [sp, #0x90]
  1000ce54c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  1000ce550  mov     x8, x0
  1000ce554  adrp    x9, #0x10041e000
  1000ce558  ldr     x0, [x9, #0x28]                          ; class UIScreen
  1000ce55c  cbz     w8, loc_1000ce5a8                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  1000ce560  ldr     x1, [sp, #0xc0]
  1000ce564  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ce568  mov     x29, x29
  1000ce56c  bl      _objc_retainAutoreleasedReturnValue
  1000ce570  mov     x26, x0
  1000ce574  ldr     x1, [sp, #0x90]
  1000ce578  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000ce57c  fadd    d0, d3, d8
  1000ce580  fabs    d0, d0
  1000ce584  fcmp    d0, d9
  1000ce588  b.pl    loc_1000ce5dc                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  1000ce58c  mov     w27, #0
  1000ce590  b       loc_1000ce618
loc_1000ce594:
  1000ce594  mov     x0, x23
  1000ce598  bl      _objc_release
  1000ce59c  mov     x0, x22
  1000ce5a0  bl      _objc_release
  1000ce5a4  b       loc_1000ce74c
loc_1000ce5a8:
  1000ce5a8  ldr     x1, [sp, #0xc0]
  1000ce5ac  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ce5b0  mov     x29, x29
  1000ce5b4  bl      _objc_retainAutoreleasedReturnValue
  1000ce5b8  mov     x21, x0
  1000ce5bc  ldr     x1, [sp, #0x28]
  1000ce5c0  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  1000ce5c4  fadd    d0, d3, d11
  1000ce5c8  fabs    d0, d0
  1000ce5cc  fcmp    d0, d9
  1000ce5d0  cset    w27, pl
  1000ce5d4  mov     x0, x21
  1000ce5d8  b       loc_1000ce61c
loc_1000ce5dc:
  1000ce5dc  adrp    x8, #0x10041e000
  1000ce5e0  ldr     x0, [x8, #0x28]                          ; class UIScreen
  1000ce5e4  ldr     x1, [sp, #0xc0]
  1000ce5e8  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000ce5ec  mov     x29, x29
  1000ce5f0  bl      _objc_retainAutoreleasedReturnValue
  1000ce5f4  mov     x21, x0
  1000ce5f8  ldr     x1, [sp, #0x90]
  1000ce5fc  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000ce600  fadd    d0, d3, d10
  1000ce604  fabs    d0, d0
  1000ce608  fcmp    d0, d9
  1000ce60c  cset    w27, pl
  1000ce610  mov     x0, x21
  1000ce614  bl      _objc_release
loc_1000ce618:
  1000ce618  mov     x0, x26
loc_1000ce61c:
  1000ce61c  bl      _objc_release
  1000ce620  mov     x0, x25
  1000ce624  bl      _objc_release
  1000ce628  mov     x0, x23
  1000ce62c  bl      _objc_release
  1000ce630  mov     x0, x22
  1000ce634  bl      _objc_release
  1000ce638  cbz     w27, loc_1000ce74c                       ; if (w27 == 0)
  1000ce63c  mov     x25, #0
  1000ce640  mov     x0, x19
  1000ce644  ldr     x1, [sp, #0x88]
  1000ce648  bl      _objc_msgSend                            ; [self tableView]
  1000ce64c  mov     x29, x29
  1000ce650  bl      _objc_retainAutoreleasedReturnValue
  1000ce654  mov     x21, x0
  1000ce658  ldr     x1, [sp, #0x80]
  1000ce65c  adrp    x2, #0x1003c2000
  1000ce660  add     x2, x2, #0x390                           ; @"weaponCellID"
  1000ce664  bl      _objc_msgSend                            ; [[self tableView] dequeueReusableCellWithIdentifier:@"weaponCellID"]
  1000ce668  mov     x29, x29
  1000ce66c  bl      _objc_retainAutoreleasedReturnValue
  1000ce670  mov     x25, x0
  1000ce674  mov     x0, x21
  1000ce678  bl      _objc_release
  1000ce67c  mov     x0, x19
  1000ce680  mov     x1, x28
  1000ce684  bl      _objc_msgSend                            ; [self weaponsData]
  1000ce688  mov     x29, x29
  1000ce68c  bl      _objc_retainAutoreleasedReturnValue
  1000ce690  mov     x21, x0
  1000ce694  ldur    x1, [x29, #-0xc0]
  1000ce698  mov     x2, x20
  1000ce69c  bl      _objc_msgSend                            ; [[self weaponsData] objectAtIndex:x2]
  1000ce6a0  mov     x29, x29
  1000ce6a4  bl      _objc_retainAutoreleasedReturnValue
  1000ce6a8  mov     x26, x0
  1000ce6ac  mov     x0, x21
  1000ce6b0  bl      _objc_release
  1000ce6b4  mov     x0, x26
  1000ce6b8  ldur    x21, [x29, #-0xa0]
  1000ce6bc  mov     x1, x21
  1000ce6c0  adrp    x2, #0x1003b9000
  1000ce6c4  add     x2, x2, #0xdb0                           ; @"name"
  1000ce6c8  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"name"]
  1000ce6cc  mov     x29, x29
  1000ce6d0  bl      _objc_retainAutoreleasedReturnValue
  1000ce6d4  mov     x22, x0
  1000ce6d8  mov     x0, x26
  1000ce6dc  mov     x1, x21
  1000ce6e0  adrp    x21, #0x1003ba000
  1000ce6e4  add     x21, x21, #0x230                         ; @"kills"
  1000ce6e8  mov     x2, x21
  1000ce6ec  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"]
  1000ce6f0  mov     x29, x29
  1000ce6f4  bl      _objc_retainAutoreleasedReturnValue
  1000ce6f8  mov     x27, x0
  1000ce6fc  adrp    x8, #0x10041d000
  1000ce700  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000ce704  ldur    x1, [x29, #-0xb8]
  1000ce708  bl      _objc_msgSend                            ; [NSString class]
  1000ce70c  mov     x2, x0
  1000ce710  mov     x0, x27
  1000ce714  ldr     x1, [sp, #0xc8]
  1000ce718  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]]
  1000ce71c  cbz     w0, loc_1000ceaa8                        ; if ([[[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]] == 0)
  1000ce720  mov     x0, x26
  1000ce724  ldur    x1, [x29, #-0xa0]
  1000ce728  mov     x2, x21
  1000ce72c  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"]
  1000ce730  mov     x23, x20
  1000ce734  mov     x20, x19
  1000ce738  mov     x19, x24
  1000ce73c  mov     x29, x29
  1000ce740  bl      _objc_retainAutoreleasedReturnValue
  1000ce744  str     x0, [sp, #0xb8]
  1000ce748  b       loc_1000ceaec
loc_1000ce74c:
  1000ce74c  adrp    x8, #0x10041e000
  1000ce750  ldr     x0, [x8, #0x50]                          ; class UIDevice
  1000ce754  mov     x25, #0
  1000ce758  mov     x1, x24
  1000ce75c  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000ce760  mov     x29, x29
  1000ce764  bl      _objc_retainAutoreleasedReturnValue
  1000ce768  mov     x21, x0
  1000ce76c  ldur    x1, [x29, #-0xa8]
  1000ce770  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000ce774  mov     x29, x29
  1000ce778  bl      _objc_retainAutoreleasedReturnValue
  1000ce77c  mov     x22, x0
  1000ce780  ldur    x1, [x29, #-0xb0]
  1000ce784  adrp    x2, #0x1003bd000
  1000ce788  add     x2, x2, #0x50                            ; @"iPod touch"
  1000ce78c  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000ce790  mov     x23, x0
  1000ce794  mov     x0, x22
  1000ce798  bl      _objc_release
  1000ce79c  mov     x0, x21
  1000ce7a0  bl      _objc_release
  1000ce7a4  cbz     w23, loc_1000ce8b8                       ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] == 0)
  1000ce7a8  mov     x25, #0
  1000ce7ac  mov     x0, x19
  1000ce7b0  ldr     x1, [sp, #0x88]
  1000ce7b4  bl      _objc_msgSend                            ; [self tableView]
  1000ce7b8  mov     x29, x29
  1000ce7bc  bl      _objc_retainAutoreleasedReturnValue
  1000ce7c0  mov     x21, x0
  1000ce7c4  ldr     x1, [sp, #0x80]
  1000ce7c8  adrp    x2, #0x1003c2000
  1000ce7cc  add     x2, x2, #0x390                           ; @"weaponCellID"
  1000ce7d0  bl      _objc_msgSend                            ; [[self tableView] dequeueReusableCellWithIdentifier:@"weaponCellID"]
  1000ce7d4  mov     x29, x29
  1000ce7d8  bl      _objc_retainAutoreleasedReturnValue
  1000ce7dc  mov     x25, x0
  1000ce7e0  mov     x0, x21
  1000ce7e4  bl      _objc_release
  1000ce7e8  mov     x0, x19
  1000ce7ec  mov     x1, x28
  1000ce7f0  bl      _objc_msgSend                            ; [self weaponsData]
  1000ce7f4  mov     x29, x29
  1000ce7f8  bl      _objc_retainAutoreleasedReturnValue
  1000ce7fc  mov     x21, x0
  1000ce800  ldur    x1, [x29, #-0xc0]
  1000ce804  mov     x2, x20
  1000ce808  bl      _objc_msgSend                            ; [[self weaponsData] objectAtIndex:x2]
  1000ce80c  mov     x29, x29
  1000ce810  bl      _objc_retainAutoreleasedReturnValue
  1000ce814  mov     x26, x0
  1000ce818  mov     x0, x21
  1000ce81c  bl      _objc_release
  1000ce820  mov     x0, x26
  1000ce824  ldur    x21, [x29, #-0xa0]
  1000ce828  mov     x1, x21
  1000ce82c  adrp    x2, #0x1003b9000
  1000ce830  add     x2, x2, #0xdb0                           ; @"name"
  1000ce834  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"name"]
  1000ce838  mov     x29, x29
  1000ce83c  bl      _objc_retainAutoreleasedReturnValue
  1000ce840  mov     x22, x0
  1000ce844  mov     x0, x26
  1000ce848  mov     x1, x21
  1000ce84c  adrp    x21, #0x1003ba000
  1000ce850  add     x21, x21, #0x230                         ; @"kills"
  1000ce854  mov     x2, x21
  1000ce858  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"]
  1000ce85c  mov     x29, x29
  1000ce860  bl      _objc_retainAutoreleasedReturnValue
  1000ce864  mov     x27, x0
  1000ce868  adrp    x8, #0x10041d000
  1000ce86c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000ce870  ldur    x1, [x29, #-0xb8]
  1000ce874  bl      _objc_msgSend                            ; [NSString class]
  1000ce878  mov     x2, x0
  1000ce87c  mov     x0, x27
  1000ce880  ldr     x1, [sp, #0xc8]
  1000ce884  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]]
  1000ce888  cbz     w0, loc_1000ce900                        ; if ([[[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"] isKindOfClass:[NSString class]] == 0)
  1000ce88c  mov     x0, x26
  1000ce890  ldur    x1, [x29, #-0xa0]
  1000ce894  mov     x2, x21
  1000ce898  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"]
  1000ce89c  mov     x23, x20
  1000ce8a0  mov     x20, x19
  1000ce8a4  mov     x19, x24
  1000ce8a8  mov     x29, x29
  1000ce8ac  bl      _objc_retainAutoreleasedReturnValue
  1000ce8b0  str     x0, [sp, #0xb8]
  1000ce8b4  b       loc_1000ce944
loc_1000ce8b8:
  1000ce8b8  adrp    x8, #0x10041d000
  1000ce8bc  ldr     x0, [x8, #0xff0]                         ; class ADStatsMultiCell
  1000ce8c0  mov     x25, #0
  1000ce8c4  ldr     x1, [sp, #0x40]
  1000ce8c8  bl      _objc_msgSend                            ; [ADStatsMultiCell alloc]
  1000ce8cc  mov     x25, #0
  1000ce8d0  mov     x2, #0
  1000ce8d4  ldr     x1, [sp, #0x38]
  1000ce8d8  adrp    x3, #0x1003c2000
  1000ce8dc  add     x3, x3, #0x390                           ; @"weaponCellID"
  1000ce8e0  bl      _objc_msgSend                            ; [[ADStatsMultiCell alloc] initWithStyle:0 reuseIdentifier:@"weaponCellID"]
  1000ce8e4  mov     x2, x0
  1000ce8e8  mov     x25, x2
  1000ce8ec  mov     x0, x19
  1000ce8f0  ldr     x1, [sp, #0x30]
  1000ce8f4  mov     x3, x20
  1000ce8f8  bl      _objc_msgSend                            ; [self configureWeaponCell:[[ADStatsMultiCell alloc] initWithStyle:0 reuseIdentifier:@"weaponCellID"] ForRow:x3]
  1000ce8fc  b       loc_1000cec8c
loc_1000ce900:
  1000ce900  mov     x23, x20
  1000ce904  mov     x20, x19
  1000ce908  mov     x19, x24
  1000ce90c  mov     x0, x26
  1000ce910  ldur    x1, [x29, #-0xa0]
  1000ce914  mov     x2, x21
  1000ce918  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"]
  1000ce91c  mov     x29, x29
  1000ce920  bl      _objc_retainAutoreleasedReturnValue
  1000ce924  mov     x21, x0
  1000ce928  ldr     x1, [sp, #0x78]
  1000ce92c  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"] stringValue]
  1000ce930  mov     x29, x29
  1000ce934  bl      _objc_retainAutoreleasedReturnValue
  1000ce938  str     x0, [sp, #0xb8]
  1000ce93c  mov     x0, x21
  1000ce940  bl      _objc_release
loc_1000ce944:
  1000ce944  mov     x24, x28
  1000ce948  mov     x0, x27
  1000ce94c  bl      _objc_release
  1000ce950  mov     x0, x26
  1000ce954  ldur    x1, [x29, #-0xa0]
  1000ce958  adrp    x21, #0x1003bb000
  1000ce95c  add     x21, x21, #0xdb0                         ; @"accuracy"
  1000ce960  mov     x2, x21
  1000ce964  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"]
  1000ce968  mov     x29, x29
  1000ce96c  bl      _objc_retainAutoreleasedReturnValue
  1000ce970  mov     x28, x0
  1000ce974  adrp    x8, #0x10041d000
  1000ce978  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000ce97c  ldur    x1, [x29, #-0xb8]
  1000ce980  bl      _objc_msgSend                            ; [NSString class]
  1000ce984  mov     x2, x0
  1000ce988  mov     x0, x28
  1000ce98c  ldr     x1, [sp, #0xc8]
  1000ce990  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"] isKindOfClass:[NSString class]]
  1000ce994  cbz     w0, loc_1000ce9b8                        ; if ([[[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"] isKindOfClass:[NSString class]] == 0)
  1000ce998  mov     x0, x26
  1000ce99c  ldur    x1, [x29, #-0xa0]
  1000ce9a0  mov     x2, x21
  1000ce9a4  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"]
  1000ce9a8  mov     x29, x29
  1000ce9ac  bl      _objc_retainAutoreleasedReturnValue
  1000ce9b0  mov     x27, x0
  1000ce9b4  b       loc_1000ce9f0
loc_1000ce9b8:
  1000ce9b8  mov     x0, x26
  1000ce9bc  ldur    x1, [x29, #-0xa0]
  1000ce9c0  mov     x2, x21
  1000ce9c4  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"]
  1000ce9c8  mov     x29, x29
  1000ce9cc  bl      _objc_retainAutoreleasedReturnValue
  1000ce9d0  mov     x21, x0
  1000ce9d4  ldr     x1, [sp, #0x78]
  1000ce9d8  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"] stringValue]
  1000ce9dc  mov     x29, x29
  1000ce9e0  bl      _objc_retainAutoreleasedReturnValue
  1000ce9e4  mov     x27, x0
  1000ce9e8  mov     x0, x21
  1000ce9ec  bl      _objc_release
loc_1000ce9f0:
  1000ce9f0  mov     x0, x28
  1000ce9f4  bl      _objc_release
  1000ce9f8  mov     x0, x27
  1000ce9fc  ldr     x1, [sp, #0x70]
  1000cea00  adrp    x2, #0x1003be000
  1000cea04  add     x2, x2, #0x9f0                           ; @"."
  1000cea08  bl      _objc_msgSend                            ; [x0 componentsSeparatedByString:@"."]
  1000cea0c  mov     x29, x29
  1000cea10  bl      _objc_retainAutoreleasedReturnValue
  1000cea14  mov     x21, x0
  1000cea18  mov     x2, #0
  1000cea1c  ldur    x1, [x29, #-0xc0]
  1000cea20  bl      _objc_msgSend                            ; [[x0 componentsSeparatedByString:@"."] objectAtIndex:0]
  1000cea24  mov     x29, x29
  1000cea28  bl      _objc_retainAutoreleasedReturnValue
  1000cea2c  mov     x28, x0
  1000cea30  mov     x0, x21
  1000cea34  bl      _objc_release
  1000cea38  adrp    x8, #0x10041d000
  1000cea3c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000cea40  str     x28, [sp]
  1000cea44  ldr     x1, [sp, #0x68]
  1000cea48  adrp    x2, #0x1003c2000
  1000cea4c  add     x2, x2, #0x4d0                           ; @"%@%%"
  1000cea50  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%%", [[x0 componentsSeparatedByString:@"."] objectAtIndex:0]]
  1000cea54  mov     x29, x29
  1000cea58  bl      _objc_retainAutoreleasedReturnValue
  1000cea5c  mov     x21, x0
  1000cea60  mov     w2, #0
  1000cea64  mov     x0, x25
  1000cea68  ldr     x1, [sp, #0x60]
  1000cea6c  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"weaponCellID"] setIsEnemyCell:0]
  1000cea70  ldr     x8, [sp, #0xb8]
  1000cea74  stp     x8, x21, [x29, #-0x98]
  1000cea78  adrp    x8, #0x10041d000
  1000cea7c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000cea80  sub     x2, x29, #0x98
  1000cea84  mov     w3, #2
  1000cea88  ldr     x1, [sp, #0x58]
  1000cea8c  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x98] count:2]
  1000cea90  mov     x3, x0
  1000cea94  mov     x0, x25
  1000cea98  ldr     x1, [sp, #0x50]
  1000cea9c  mov     x2, x22
  1000ceaa0  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"weaponCellID"] populateWithSubtitleString:[[[self weaponsData] objectAtIndex:x2] objectForKey:@"name"] Values:[NSArray arrayWithObjects:&x29[-0x98] count:2]]
  1000ceaa4  b       loc_1000cec4c
loc_1000ceaa8:
  1000ceaa8  mov     x23, x20
  1000ceaac  mov     x20, x19
  1000ceab0  mov     x19, x24
  1000ceab4  mov     x0, x26
  1000ceab8  ldur    x1, [x29, #-0xa0]
  1000ceabc  mov     x2, x21
  1000ceac0  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"]
  1000ceac4  mov     x29, x29
  1000ceac8  bl      _objc_retainAutoreleasedReturnValue
  1000ceacc  mov     x21, x0
  1000cead0  ldr     x1, [sp, #0x78]
  1000cead4  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"kills"] stringValue]
  1000cead8  mov     x29, x29
  1000ceadc  bl      _objc_retainAutoreleasedReturnValue
  1000ceae0  str     x0, [sp, #0xb8]
  1000ceae4  mov     x0, x21
  1000ceae8  bl      _objc_release
loc_1000ceaec:
  1000ceaec  mov     x24, x28
  1000ceaf0  mov     x0, x27
  1000ceaf4  bl      _objc_release
  1000ceaf8  mov     x0, x26
  1000ceafc  ldur    x1, [x29, #-0xa0]
  1000ceb00  adrp    x21, #0x1003bb000
  1000ceb04  add     x21, x21, #0xdb0                         ; @"accuracy"
  1000ceb08  mov     x2, x21
  1000ceb0c  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"]
  1000ceb10  mov     x29, x29
  1000ceb14  bl      _objc_retainAutoreleasedReturnValue
  1000ceb18  mov     x28, x0
  1000ceb1c  adrp    x8, #0x10041d000
  1000ceb20  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000ceb24  ldur    x1, [x29, #-0xb8]
  1000ceb28  bl      _objc_msgSend                            ; [NSString class]
  1000ceb2c  mov     x2, x0
  1000ceb30  mov     x0, x28
  1000ceb34  ldr     x1, [sp, #0xc8]
  1000ceb38  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"] isKindOfClass:[NSString class]]
  1000ceb3c  cbz     w0, loc_1000ceb60                        ; if ([[[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"] isKindOfClass:[NSString class]] == 0)
  1000ceb40  mov     x0, x26
  1000ceb44  ldur    x1, [x29, #-0xa0]
  1000ceb48  mov     x2, x21
  1000ceb4c  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"]
  1000ceb50  mov     x29, x29
  1000ceb54  bl      _objc_retainAutoreleasedReturnValue
  1000ceb58  mov     x27, x0
  1000ceb5c  b       loc_1000ceb98
loc_1000ceb60:
  1000ceb60  mov     x0, x26
  1000ceb64  ldur    x1, [x29, #-0xa0]
  1000ceb68  mov     x2, x21
  1000ceb6c  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"]
  1000ceb70  mov     x29, x29
  1000ceb74  bl      _objc_retainAutoreleasedReturnValue
  1000ceb78  mov     x21, x0
  1000ceb7c  ldr     x1, [sp, #0x78]
  1000ceb80  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:x2] objectForKey:@"accuracy"] stringValue]
  1000ceb84  mov     x29, x29
  1000ceb88  bl      _objc_retainAutoreleasedReturnValue
  1000ceb8c  mov     x27, x0
  1000ceb90  mov     x0, x21
  1000ceb94  bl      _objc_release
loc_1000ceb98:
  1000ceb98  mov     x0, x28
  1000ceb9c  bl      _objc_release
  1000ceba0  mov     x0, x27
  1000ceba4  ldr     x1, [sp, #0x70]
  1000ceba8  adrp    x2, #0x1003be000
  1000cebac  add     x2, x2, #0x9f0                           ; @"."
  1000cebb0  bl      _objc_msgSend                            ; [x0 componentsSeparatedByString:@"."]
  1000cebb4  mov     x29, x29
  1000cebb8  bl      _objc_retainAutoreleasedReturnValue
  1000cebbc  mov     x21, x0
  1000cebc0  mov     x2, #0
  1000cebc4  ldur    x1, [x29, #-0xc0]
  1000cebc8  bl      _objc_msgSend                            ; [[x0 componentsSeparatedByString:@"."] objectAtIndex:0]
  1000cebcc  mov     x29, x29
  1000cebd0  bl      _objc_retainAutoreleasedReturnValue
  1000cebd4  mov     x28, x0
  1000cebd8  mov     x0, x21
  1000cebdc  bl      _objc_release
  1000cebe0  adrp    x8, #0x10041d000
  1000cebe4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000cebe8  str     x28, [sp]
  1000cebec  ldr     x1, [sp, #0x68]
  1000cebf0  adrp    x2, #0x1003c2000
  1000cebf4  add     x2, x2, #0x4d0                           ; @"%@%%"
  1000cebf8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%%", [[x0 componentsSeparatedByString:@"."] objectAtIndex:0]]
  1000cebfc  mov     x29, x29
  1000cec00  bl      _objc_retainAutoreleasedReturnValue
  1000cec04  mov     x21, x0
  1000cec08  mov     w2, #0
  1000cec0c  mov     x0, x25
  1000cec10  ldr     x1, [sp, #0x60]
  1000cec14  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"weaponCellID"] setIsEnemyCell:0]
  1000cec18  ldr     x8, [sp, #0xb8]
  1000cec1c  stp     x8, x21, [x29, #-0x88]
  1000cec20  adrp    x8, #0x10041d000
  1000cec24  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000cec28  sub     x2, x29, #0x88
  1000cec2c  mov     w3, #2
  1000cec30  ldr     x1, [sp, #0x58]
  1000cec34  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x88] count:2]
  1000cec38  mov     x3, x0
  1000cec3c  mov     x0, x25
  1000cec40  ldr     x1, [sp, #0x50]
  1000cec44  mov     x2, x22
  1000cec48  bl      _objc_msgSend                            ; [[[self tableView] dequeueReusableCellWithIdentifier:@"weaponCellID"] populateWithSubtitleString:[[[self weaponsData] objectAtIndex:x2] objectForKey:@"name"] Values:[NSArray arrayWithObjects:&x29[-0x88] count:2]]
loc_1000cec4c:
  1000cec4c  mov     x0, x21
  1000cec50  bl      _objc_release
  1000cec54  mov     x0, x28
  1000cec58  bl      _objc_release
  1000cec5c  mov     x0, x27
  1000cec60  bl      _objc_release
  1000cec64  ldr     x0, [sp, #0xb8]
  1000cec68  bl      _objc_release
  1000cec6c  mov     x0, x22
  1000cec70  bl      _objc_release
  1000cec74  mov     x0, x26
  1000cec78  bl      _objc_release
  1000cec7c  mov     x28, x24
  1000cec80  mov     x24, x19
  1000cec84  mov     x19, x20
  1000cec88  mov     x20, x23
loc_1000cec8c:
  1000cec8c  mov     w2, #0
  1000cec90  mov     x0, x25
  1000cec94  ldr     x1, [sp, #0xa8]
  1000cec98  bl      _objc_msgSend                            ; [x0 setUserInteractionEnabled:0]
  1000cec9c  mov     x0, x19
  1000ceca0  ldr     x1, [sp, #0xa0]
  1000ceca4  bl      _objc_msgSend                            ; [self weaponCells]
  1000ceca8  mov     x29, x29
  1000cecac  bl      _objc_retainAutoreleasedReturnValue
  1000cecb0  mov     x21, x0
  1000cecb4  ldr     x1, [sp, #0x98]
  1000cecb8  mov     x2, x25
  1000cecbc  bl      _objc_msgSend                            ; [[self weaponCells] addObject:x2]
  1000cecc0  b       loc_1000ce498
  1000cecc4  b       loc_1000cedcc
loc_1000cecc8:
  1000cecc8  ldur    x8, [x29, #-0x78]
  1000ceccc  adrp    x9, #0x1003b0000
  1000cecd0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000cecd4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000cecd8  sub     x8, x9, x8
  1000cecdc  cbnz    x8, loc_1000ced08                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000cece0  sub     sp, x29, #0x70
  1000cece4  ldp     x29, x30, [sp, #0x70]
  1000cece8  ldp     x20, x19, [sp, #0x60]
  1000cecec  ldp     x22, x21, [sp, #0x50]
  1000cecf0  ldp     x24, x23, [sp, #0x40]
  1000cecf4  ldp     x26, x25, [sp, #0x30]
  1000cecf8  ldp     x28, x27, [sp, #0x20]
  1000cecfc  ldp     d9, d8, [sp, #0x10]
  1000ced00  ldp     d11, d10, [sp], #0x80
  1000ced04  ret
loc_1000ced08:
  1000ced08  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000ced0c  mov     x19, x0
  1000ced10  b       loc_1000ceebc
  1000ced14  mov     x19, x0
  1000ced18  b       loc_1000cee5c
  1000ced1c  b       loc_1000cedc0
  1000ced20  mov     x19, x0
  1000ced24  b       loc_1000cee64
  1000ced28  mov     x19, x0
  1000ced2c  b       loc_1000cee80
  1000ced30  mov     x19, x0
  1000ced34  b       loc_1000cee9c
  1000ced38  mov     x19, x0
  1000ced3c  b       loc_1000cee54
  1000ced40  b       loc_1000cedc0
  1000ced44  mov     x19, x0
  1000ced48  mov     x0, x22
  1000ced4c  bl      _objc_release
  1000ced50  b       loc_1000cedc4
  1000ced54  b       loc_1000cee0c
  1000ced58  mov     x19, x0
  1000ced5c  b       loc_1000cee80
  1000ced60  mov     x19, x0
  1000ced64  b       loc_1000cee9c
  1000ced68  b       loc_1000cee0c
  1000ced6c  mov     x19, x0
  1000ced70  b       loc_1000cee4c
  1000ced74  b       loc_1000cedc0
  1000ced78  b       loc_1000cedcc
  1000ced7c  mov     x19, x0
  1000ced80  b       loc_1000ceeb4
  1000ced84  mov     x19, x0
  1000ced88  b       loc_1000ceeac
  1000ced8c  mov     x19, x0
  1000ced90  b       loc_1000ceea4
  1000ced94  mov     x19, x0
  1000ced98  b       loc_1000cee20
  1000ced9c  b       loc_1000cedf8
  1000ceda0  mov     x19, x0
  1000ceda4  b       loc_1000cee18
  1000ceda8  b       loc_1000cee0c
  1000cedac  mov     x19, x0
  1000cedb0  b       loc_1000cee54
  1000cedb4  mov     x19, x0
  1000cedb8  mov     x0, x21
  1000cedbc  b       loc_1000cee50
loc_1000cedc0:
  1000cedc0  mov     x19, x0
loc_1000cedc4:
  1000cedc4  mov     x0, x21
  1000cedc8  b       loc_1000ceec0
loc_1000cedcc:
  1000cedcc  mov     x19, x0
  1000cedd0  mov     x0, x21
  1000cedd4  b       loc_1000ceeb8
  1000cedd8  mov     x19, x0
  1000ceddc  b       loc_1000ceeb4
  1000cede0  mov     x19, x0
  1000cede4  b       loc_1000ceeac
  1000cede8  mov     x19, x0
  1000cedec  b       loc_1000ceea4
  1000cedf0  mov     x19, x0
  1000cedf4  b       loc_1000cee20
loc_1000cedf8:
  1000cedf8  mov     x19, x0
  1000cedfc  mov     x0, x21
  1000cee00  b       loc_1000cee1c
  1000cee04  mov     x19, x0
  1000cee08  b       loc_1000cee18
loc_1000cee0c:
  1000cee0c  mov     x19, x0
  1000cee10  mov     x0, x21
  1000cee14  bl      _objc_release
loc_1000cee18:
  1000cee18  mov     x0, x28
loc_1000cee1c:
  1000cee1c  bl      _objc_release
loc_1000cee20:
  1000cee20  mov     x0, x27
  1000cee24  b       loc_1000ceea0
  1000cee28  mov     x19, x0
  1000cee2c  b       loc_1000cee80
  1000cee30  b       loc_1000cee74
  1000cee34  mov     x19, x0
  1000cee38  b       loc_1000cee9c
  1000cee3c  b       loc_1000cee90
  1000cee40  mov     x19, x0
  1000cee44  mov     x0, x21
  1000cee48  bl      _objc_release
loc_1000cee4c:
  1000cee4c  mov     x0, x26
loc_1000cee50:
  1000cee50  bl      _objc_release
loc_1000cee54:
  1000cee54  mov     x0, x25
  1000cee58  bl      _objc_release
loc_1000cee5c:
  1000cee5c  mov     x0, x23
  1000cee60  bl      _objc_release
loc_1000cee64:
  1000cee64  mov     x0, x22
  1000cee68  b       loc_1000ceec0
  1000cee6c  mov     x19, x0
  1000cee70  b       loc_1000cee80
loc_1000cee74:
  1000cee74  mov     x19, x0
  1000cee78  mov     x0, x21
  1000cee7c  bl      _objc_release
loc_1000cee80:
  1000cee80  mov     x0, x27
  1000cee84  b       loc_1000ceea8
  1000cee88  mov     x19, x0
  1000cee8c  b       loc_1000cee9c
loc_1000cee90:
  1000cee90  mov     x19, x0
  1000cee94  mov     x0, x21
  1000cee98  bl      _objc_release
loc_1000cee9c:
  1000cee9c  mov     x0, x28
loc_1000ceea0:
  1000ceea0  bl      _objc_release
loc_1000ceea4:
  1000ceea4  ldr     x0, [sp, #0xb8]
loc_1000ceea8:
  1000ceea8  bl      _objc_release
loc_1000ceeac:
  1000ceeac  mov     x0, x22
  1000ceeb0  bl      _objc_release
loc_1000ceeb4:
  1000ceeb4  mov     x0, x26
loc_1000ceeb8:
  1000ceeb8  bl      _objc_release
loc_1000ceebc:
  1000ceebc  mov     x0, x25
loc_1000ceec0:
  1000ceec0  bl      _objc_release
  1000ceec4  mov     x0, x19
  1000ceec8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController createSectionsForWeapons]
; address 0x1000ceecc  size 1580  kind objc
; ======================================================================
  1000ceecc  stp     d11, d10, [sp, #-0x80]!
  1000ceed0  stp     d9, d8, [sp, #0x10]
  1000ceed4  stp     x28, x27, [sp, #0x20]
  1000ceed8  stp     x26, x25, [sp, #0x30]
  1000ceedc  stp     x24, x23, [sp, #0x40]
  1000ceee0  stp     x22, x21, [sp, #0x50]
  1000ceee4  stp     x20, x19, [sp, #0x60]
  1000ceee8  stp     x29, x30, [sp, #0x70]
  1000ceeec  add     x29, sp, #0x70
  1000ceef0  sub     sp, sp, #0x1a0
  1000ceef4  mov     x23, x0
  1000ceef8  adrp    x8, #0x1003b0000
  1000ceefc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000cef00  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000cef04  stur    x8, [x29, #-0x78]
  1000cef08  adrp    x8, #0x10041d000
  1000cef0c  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000cef10  adrp    x8, #0x100416000
  1000cef14  nop
  1000cef18  ldr     x1, [x8, #0xe10]
  1000cef1c  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000cef20  mov     x29, x29
  1000cef24  bl      _objc_retainAutoreleasedReturnValue
  1000cef28  mov     x19, x0
  1000cef2c  adrp    x8, #0x10041a000
  1000cef30  nop
  1000cef34  ldr     x1, [x8, #0xd50]
  1000cef38  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getUnlockedWeapons]
  1000cef3c  mov     x29, x29
  1000cef40  bl      _objc_retainAutoreleasedReturnValue
  1000cef44  str     x0, [sp, #0x98]
  1000cef48  mov     x0, x19
  1000cef4c  bl      _objc_release
  1000cef50  adrp    x8, #0x10041d000
  1000cef54  ldr     x20, [x8, #0xef8]                        ; class NSDictionary
  1000cef58  nop
  1000cef5c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000cef60  adrp    x8, #0x100416000
  1000cef64  nop
  1000cef68  ldr     x1, [x8, #0xb58]
  1000cef6c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000cef70  mov     x29, x29
  1000cef74  bl      _objc_retainAutoreleasedReturnValue
  1000cef78  mov     x19, x0
  1000cef7c  adrp    x8, #0x100416000
  1000cef80  nop
  1000cef84  ldr     x1, [x8, #0xd60]
  1000cef88  adrp    x2, #0x1003bf000
  1000cef8c  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000cef90  adrp    x3, #0x1003b9000
  1000cef94  add     x3, x3, #0xa70                           ; @"plist"
  1000cef98  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]
  1000cef9c  mov     x29, x29
  1000cefa0  bl      _objc_retainAutoreleasedReturnValue
  1000cefa4  mov     x21, x0
  1000cefa8  adrp    x8, #0x100417000
  1000cefac  nop
  1000cefb0  ldr     x1, [x8, #0x258]
  1000cefb4  mov     x0, x20
  1000cefb8  mov     x2, x21
  1000cefbc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]]
  1000cefc0  mov     x29, x29
  1000cefc4  bl      _objc_retainAutoreleasedReturnValue
  1000cefc8  mov     x20, x0
  1000cefcc  mov     x0, x21
  1000cefd0  bl      _objc_release
  1000cefd4  mov     x0, x19
  1000cefd8  bl      _objc_release
  1000cefdc  adrp    x8, #0x1003b0000
  1000cefe0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000cefe4  mov     w9, #-0x3e000000
  1000cefe8  str     x8, [sp, #0xf0]
  1000cefec  stp     w9, wzr, [sp, #0xf8]
  1000ceff0  adr     x8, #0x1000cf4f8                         ; &-[ADStatsViewController createSectionsForWeapons]_block_invoke
  1000ceff4  nop
  1000ceff8  str     x8, [sp, #0x100]
  1000ceffc  adrp    x8, #0x1003b2000
  1000cf000  add     x8, x8, #0x920                           ; &d_1003b2920
  1000cf004  str     x8, [sp, #0x108]
  1000cf008  mov     x0, x20
  1000cf00c  bl      _objc_retain
  1000cf010  mov     x22, x0
  1000cf014  str     x22, [sp, #0x110]
  1000cf018  add     x0, sp, #0xf0
  1000cf01c  bl      _objc_retainBlock
  1000cf020  mov     x21, x0
  1000cf024  adrp    x8, #0x10041d000
  1000cf028  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000cf02c  adrp    x8, #0x100416000
  1000cf030  nop
  1000cf034  ldr     x19, [x8, #0xac8]
  1000cf038  mov     x1, x19
  1000cf03c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000cf040  adrp    x8, #0x100416000
  1000cf044  nop
  1000cf048  ldr     x1, [x8, #0xab8]
  1000cf04c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000cf050  str     x0, [sp, #0x90]
  1000cf054  stp     xzr, xzr, [sp, #0xe0]
  1000cf058  stp     xzr, xzr, [sp, #0xd0]
  1000cf05c  stp     xzr, xzr, [sp, #0xc0]
  1000cf060  stp     xzr, xzr, [sp, #0xb0]
  1000cf064  adrp    x8, #0x100417000
  1000cf068  nop
  1000cf06c  ldr     x1, [x8, #0x248]
  1000cf070  ldr     x0, [sp, #0x98]
  1000cf074  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getUnlockedWeapons] allKeys]
  1000cf078  stp     x19, x23, [sp, #0x38]
  1000cf07c  str     x22, [sp, #0x48]
  1000cf080  mov     x29, x29
  1000cf084  bl      _objc_retainAutoreleasedReturnValue
  1000cf088  str     x0, [sp, #0x58]
  1000cf08c  adrp    x8, #0x100416000
  1000cf090  nop
  1000cf094  ldr     x1, [x8, #0xe00]
  1000cf098  str     x1, [sp, #0x50]
  1000cf09c  add     x2, sp, #0xb0
  1000cf0a0  sub     x3, x29, #0xf8
  1000cf0a4  mov     w4, #0x10
  1000cf0a8  bl      _objc_msgSend                            ; [[[[ADPersistentStats persistentStats] getUnlockedWeapons] allKeys] countByEnumeratingWithState:&sp[0xb0] objects:&x29[-0xf8] count:16]
  1000cf0ac  mov     x27, x0
  1000cf0b0  cbz     x27, loc_1000cf330                       ; if ([[[[ADPersistentStats persistentStats] getUnlockedWeapons] allKeys] countByEnumeratingWithState:&sp[0xb0] objects:&x29[-0xf8] count:16] == 0)
  1000cf0b4  adrp    x8, #0x100417000
  1000cf0b8  nop
  1000cf0bc  adrp    x9, #0x100417000
  1000cf0c0  nop
  1000cf0c4  adrp    x10, #0x100417000
  1000cf0c8  add     x10, x10, #0xb0                          ; &@selector(integerValue)
  1000cf0cc  ldr     x11, [sp, #0xc0]
  1000cf0d0  adrp    x12, #0x100418000
  1000cf0d4  add     x12, x12, #0x310                         ; &@selector(numberWithFloat:)
  1000cf0d8  ldr     x28, [x8, #0x40]
  1000cf0dc  ldr     x22, [x9, #0x48]
  1000cf0e0  ldr     x8, [x11]
  1000cf0e4  str     x8, [sp, #0x88]
  1000cf0e8  ldr     x8, [x10]
  1000cf0ec  str     x8, [sp, #0x80]
  1000cf0f0  ldr     x8, [x12]
  1000cf0f4  str     x8, [sp, #0x78]
  1000cf0f8  adrp    x8, #0x100417000
  1000cf0fc  nop
  1000cf100  adrp    x9, #0x100417000
  1000cf104  add     x9, x9, #0xf90                           ; &@selector(dictionaryWithObjectsAndKeys:)
  1000cf108  ldr     x8, [x8, #0xe8]
  1000cf10c  str     x8, [sp, #0x70]
  1000cf110  ldr     x8, [x9]
  1000cf114  str     x8, [sp, #0x68]
  1000cf118  adrp    x8, #0x100416000
  1000cf11c  nop
  1000cf120  ldr     x8, [x8, #0xd90]
  1000cf124  str     x8, [sp, #0x60]
  1000cf128  adrp    x8, #0x100181000
  1000cf12c  ldr     s10, [x8, #0xa10]                        ; s10 = 100.0
loc_1000cf130:
  1000cf130  mov     x20, #0
loc_1000cf134:
  1000cf134  ldr     x8, [sp, #0xc0]
  1000cf138  ldr     x8, [x8]
  1000cf13c  ldr     x9, [sp, #0x88]
  1000cf140  cmp     x8, x9
  1000cf144  b.eq    loc_1000cf150                            ; if (x8 == x9)
  1000cf148  ldr     x0, [sp, #0x58]
  1000cf14c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[ADPersistentStats persistentStats] getUnlockedWeapons] allKeys])
loc_1000cf150:
  1000cf150  ldr     x8, [sp, #0xb8]
  1000cf154  ldr     x23, [x8, x20, lsl #3]
  1000cf158  ldr     x0, [sp, #0x98]
  1000cf15c  mov     x1, x28
  1000cf160  mov     x2, x23
  1000cf164  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2]
  1000cf168  mov     x29, x29
  1000cf16c  bl      _objc_retainAutoreleasedReturnValue
  1000cf170  mov     x19, x0
  1000cf174  ldr     x8, [x21, #0x10]
  1000cf178  mov     x0, x21
  1000cf17c  mov     x1, x23
  1000cf180  blr     x8
  1000cf184  mov     x29, x29
  1000cf188  bl      _objc_retainAutoreleasedReturnValue
  1000cf18c  mov     x25, x0
  1000cf190  mov     x0, x19
  1000cf194  mov     x1, x28
  1000cf198  adrp    x2, #0x1003ba000
  1000cf19c  add     x2, x2, #0x290                           ; @"shotsFired"
  1000cf1a0  bl      _objc_msgSend                            ; [[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"shotsFired"]
  1000cf1a4  mov     x29, x29
  1000cf1a8  bl      _objc_retainAutoreleasedReturnValue
  1000cf1ac  mov     x23, x0
  1000cf1b0  mov     x1, x22
  1000cf1b4  bl      _objc_msgSend                            ; [[[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"shotsFired"] floatValue]
  1000cf1b8  mov     v8.16b, v0.16b
  1000cf1bc  mov     x0, x23
  1000cf1c0  bl      _objc_release
  1000cf1c4  mov     x0, x19
  1000cf1c8  mov     x1, x28
  1000cf1cc  adrp    x2, #0x1003ba000
  1000cf1d0  add     x2, x2, #0x2d0                           ; @"shotsHit"
  1000cf1d4  bl      _objc_msgSend                            ; [[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"shotsHit"]
  1000cf1d8  mov     x29, x29
  1000cf1dc  bl      _objc_retainAutoreleasedReturnValue
  1000cf1e0  mov     x23, x0
  1000cf1e4  mov     x1, x22
  1000cf1e8  bl      _objc_msgSend                            ; [[[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"shotsHit"] floatValue]
  1000cf1ec  mov     v9.16b, v0.16b
  1000cf1f0  mov     x0, x23
  1000cf1f4  bl      _objc_release
  1000cf1f8  fcmp    s8, #0.0
  1000cf1fc  b.ne    loc_1000cf208                            ; if ([[[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"shotsFired"] floatValue] != 0.0)
  1000cf200  movi    v0.16b, #0
  1000cf204  b       loc_1000cf210
loc_1000cf208:
  1000cf208  fdiv    s0, s9, s8                               ; t1 = ([[[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"shotsHit"] floatValue] / [[[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"shotsFired"] floatValue])
  1000cf20c  fmul    s0, s0, s10
loc_1000cf210:
  1000cf210  str     q0, [sp, #0xa0]
  1000cf214  mov     x0, x19
  1000cf218  mov     x1, x28
  1000cf21c  adrp    x2, #0x1003ba000
  1000cf220  add     x2, x2, #0x230                           ; @"kills"
  1000cf224  bl      _objc_msgSend                            ; [[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"kills"]
  1000cf228  mov     x29, x29
  1000cf22c  bl      _objc_retainAutoreleasedReturnValue
  1000cf230  mov     x24, x0
  1000cf234  ldr     x1, [sp, #0x80]
  1000cf238  bl      _objc_msgSend                            ; [[[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"kills"] integerValue]
  1000cf23c  mov     x23, x0
  1000cf240  mov     x0, x24
  1000cf244  bl      _objc_release
  1000cf248  adrp    x8, #0x10041d000
  1000cf24c  ldr     x24, [x8, #0xef8]                        ; class NSDictionary
  1000cf250  nop
  1000cf254  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000cf258  ldr     x1, [sp, #0x78]
  1000cf25c  ldr     q0, [sp, #0xa0]
  1000cf260  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:d0]
  1000cf264  mov     x29, x29
  1000cf268  bl      _objc_retainAutoreleasedReturnValue
  1000cf26c  mov     x26, x0
  1000cf270  adrp    x8, #0x10041d000
  1000cf274  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000cf278  ldr     x1, [sp, #0x70]
  1000cf27c  mov     x2, x23
  1000cf280  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[[ADPersistentStats persistentStats] getUnlockedWeapons] objectForKey:x2] objectForKey:@"kills"] integerValue]]
  1000cf284  mov     x29, x29
  1000cf288  bl      _objc_retainAutoreleasedReturnValue
  1000cf28c  mov     x23, x0
  1000cf290  adrp    x8, #0x1003ba000
  1000cf294  add     x8, x8, #0x230                           ; @"kills"
  1000cf298  stp     x8, xzr, [sp, #0x20]
  1000cf29c  adrp    x8, #0x1003bb000
  1000cf2a0  add     x8, x8, #0xdb0                           ; @"accuracy"
  1000cf2a4  stp     x8, x23, [sp, #0x10]
  1000cf2a8  adrp    x8, #0x1003b9000
  1000cf2ac  add     x8, x8, #0xdb0                           ; @"name"
  1000cf2b0  stp     x8, x26, [sp]
  1000cf2b4  mov     x0, x24
  1000cf2b8  ldr     x1, [sp, #0x68]
  1000cf2bc  mov     x2, x25
  1000cf2c0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:x8(…), @"name", [NSNumber numberWithFloat:d0], @"accuracy", [NSNumber numberWithInteger:[[[[[ADPersistentStats persisten…, @"kills", nil]
  1000cf2c4  mov     x29, x29
  1000cf2c8  bl      _objc_retainAutoreleasedReturnValue
  1000cf2cc  mov     x24, x0
  1000cf2d0  mov     x0, x23
  1000cf2d4  bl      _objc_release
  1000cf2d8  mov     x0, x26
  1000cf2dc  bl      _objc_release
  1000cf2e0  ldr     x0, [sp, #0x90]
  1000cf2e4  ldr     x1, [sp, #0x60]
  1000cf2e8  mov     x2, x24
  1000cf2ec  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:[NSDictionary dictionaryWithObjectsAndKeys:x8(…), @"name", [NSNumber numberWithFloat:d0], @"accuracy", [NSNumber numberWithInteger:[[[[[ADPersistentStats persisten…, @"kills", nil]]
  1000cf2f0  mov     x0, x24
  1000cf2f4  bl      _objc_release
  1000cf2f8  mov     x0, x25
  1000cf2fc  bl      _objc_release
  1000cf300  mov     x0, x19
  1000cf304  bl      _objc_release
  1000cf308  add     x20, x20, #1
  1000cf30c  cmp     x20, x27
  1000cf310  b.lo    loc_1000cf134                            ; if ((x20 + 1) <u [[[[ADPersistentStats persistentStats] getUnlockedWeapons] allKeys] countByEnumeratingWithState:&sp[0xb0] objects:&x29[-…)
  1000cf314  add     x2, sp, #0xb0
  1000cf318  sub     x3, x29, #0xf8
  1000cf31c  mov     w4, #0x10
  1000cf320  ldp     x1, x0, [sp, #0x50]
  1000cf324  bl      _objc_msgSend                            ; [[[[ADPersistentStats persistentStats] getUnlockedWeapons] allKeys] countByEnumeratingWithState:&sp[0xb0] objects:&x29[-0xf8] count:16]
  1000cf328  mov     x27, x0
  1000cf32c  cbnz    x27, loc_1000cf130                       ; if ([[[[ADPersistentStats persistentStats] getUnlockedWeapons] allKeys] countByEnumeratingWithState:&sp[0xb0] objects:&x29[-0xf8] count:16] != 0)
loc_1000cf330:
  1000cf330  ldr     x0, [sp, #0x58]
  1000cf334  bl      _objc_release
  1000cf338  adrp    x8, #0x10041d000
  1000cf33c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000cf340  ldr     x1, [sp, #0x38]
  1000cf344  ldr     x22, [sp, #0x48]
  1000cf348  bl      _objc_msgSend                            ; [NSArray alloc]
  1000cf34c  adrp    x20, #0x1003b0000
  1000cf350  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000cf354  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000cf358  ldr     x23, [sp, #0x40]
  1000cf35c  adrp    x8, #0x100418000
  1000cf360  nop
  1000cf364  ldr     x1, [x8, #0xbb0]
  1000cf368  ldr     x2, [sp, #0x90]
  1000cf36c  bl      _objc_msgSend                            ; [[NSArray alloc] initWithArray:[[NSMutableArray alloc] init]]
  1000cf370  mov     x19, x0
  1000cf374  adrp    x8, #0x10041a000
  1000cf378  nop
  1000cf37c  ldr     x1, [x8, #0x828]
  1000cf380  mov     x0, x23
  1000cf384  mov     x2, x19
  1000cf388  bl      _objc_msgSend                            ; [self setWeaponsData:[[NSArray alloc] initWithArray:[[NSMutableArray alloc] init]]]
  1000cf38c  mov     x0, x19
  1000cf390  bl      _objc_release
  1000cf394  ldr     x0, [sp, #0x90]
  1000cf398  bl      _objc_release
  1000cf39c  mov     x0, x21
  1000cf3a0  bl      _objc_release
  1000cf3a4  ldr     x0, [sp, #0x110]
  1000cf3a8  bl      _objc_release
  1000cf3ac  mov     x0, x22
  1000cf3b0  bl      _objc_release
  1000cf3b4  ldr     x0, [sp, #0x98]
  1000cf3b8  bl      _objc_release
  1000cf3bc  ldur    x8, [x29, #-0x78]
  1000cf3c0  sub     x8, x20, x8
  1000cf3c4  cbnz    x8, loc_1000cf3f0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000cf3c8  sub     sp, x29, #0x70
  1000cf3cc  ldp     x29, x30, [sp, #0x70]
  1000cf3d0  ldp     x20, x19, [sp, #0x60]
  1000cf3d4  ldp     x22, x21, [sp, #0x50]
  1000cf3d8  ldp     x24, x23, [sp, #0x40]
  1000cf3dc  ldp     x26, x25, [sp, #0x30]
  1000cf3e0  ldp     x28, x27, [sp, #0x20]
  1000cf3e4  ldp     d9, d8, [sp, #0x10]
  1000cf3e8  ldp     d11, d10, [sp], #0x80
  1000cf3ec  ret
loc_1000cf3f0:
  1000cf3f0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000cf3f4  mov     x20, x0
  1000cf3f8  b       loc_1000cf458
loc_1000cf3fc:
  1000cf3fc  mov     x20, x0
  1000cf400  ldr     x22, [sp, #0x48]
  1000cf404  b       loc_1000cf46c
  1000cf408  mov     x20, x0
  1000cf40c  ldr     x22, [sp, #0x48]
  1000cf410  b       loc_1000cf464
  1000cf414  b       loc_1000cf418
loc_1000cf418:
  1000cf418  mov     x20, x0
  1000cf41c  mov     x0, x23
  1000cf420  b       loc_1000cf454
  1000cf424  b       loc_1000cf44c
  1000cf428  mov     x20, x0
  1000cf42c  b       loc_1000cf43c
  1000cf430  mov     x20, x0
  1000cf434  mov     x0, x23
  1000cf438  bl      _objc_release
loc_1000cf43c:
  1000cf43c  ldr     x22, [sp, #0x48]
  1000cf440  mov     x0, x26
  1000cf444  bl      _objc_release
  1000cf448  b       loc_1000cf45c
loc_1000cf44c:
  1000cf44c  mov     x20, x0
  1000cf450  mov     x0, x24
loc_1000cf454:
  1000cf454  bl      _objc_release
loc_1000cf458:
  1000cf458  ldr     x22, [sp, #0x48]
loc_1000cf45c:
  1000cf45c  mov     x0, x25
  1000cf460  bl      _objc_release
loc_1000cf464:
  1000cf464  mov     x0, x19
  1000cf468  bl      _objc_release
loc_1000cf46c:
  1000cf46c  ldr     x0, [sp, #0x58]
loc_1000cf470:
  1000cf470  bl      _objc_release
loc_1000cf474:
  1000cf474  ldr     x0, [sp, #0x90]
  1000cf478  bl      _objc_release
loc_1000cf47c:
  1000cf47c  mov     x0, x21
  1000cf480  bl      _objc_release
  1000cf484  ldr     x0, [sp, #0x110]
  1000cf488  bl      _objc_release
  1000cf48c  mov     x0, x22
loc_1000cf490:
  1000cf490  bl      _objc_release
loc_1000cf494:
  1000cf494  ldr     x0, [sp, #0x98]
loc_1000cf498:
  1000cf498  bl      _objc_release
  1000cf49c  mov     x0, x20
  1000cf4a0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000cf4a4  b       loc_1000cf3fc
  1000cf4a8  mov     x20, x0
  1000cf4ac  b       loc_1000cf474
  1000cf4b0  mov     x20, x0
  1000cf4b4  b       loc_1000cf47c
  1000cf4b8  mov     x20, x0
  1000cf4bc  mov     x0, x19
  1000cf4c0  b       loc_1000cf498
  1000cf4c4  mov     x20, x0
  1000cf4c8  b       loc_1000cf494
  1000cf4cc  mov     x20, x0
  1000cf4d0  b       loc_1000cf4e0
  1000cf4d4  mov     x20, x0
  1000cf4d8  mov     x0, x21
  1000cf4dc  bl      _objc_release
loc_1000cf4e0:
  1000cf4e0  mov     x0, x19
  1000cf4e4  b       loc_1000cf490
  1000cf4e8  b       loc_1000cf3fc
  1000cf4ec  mov     x20, x0
  1000cf4f0  mov     x0, x19
  1000cf4f4  b       loc_1000cf470

; ======================================================================
; -[ADStatsViewController createSectionsForWeapons]_block_invoke
; address 0x1000cf4f8  size 356  kind block
; ======================================================================
  1000cf4f8  stp     x22, x21, [sp, #-0x30]!
  1000cf4fc  stp     x20, x19, [sp, #0x10]
  1000cf500  stp     x29, x30, [sp, #0x20]
  1000cf504  add     x29, sp, #0x20
  1000cf508  sub     sp, sp, #0x60
  1000cf50c  mov     x20, x0
  1000cf510  mov     x0, x1
  1000cf514  bl      _objc_retain
  1000cf518  mov     x19, x0
  1000cf51c  add     x22, sp, #0x30
  1000cf520  stp     xzr, x22, [sp, #0x30]
  1000cf524  mov     w8, #0x32000000
  1000cf528  str     w8, [sp, #0x40]
  1000cf52c  mov     w8, #0x30
  1000cf530  str     w8, [sp, #0x44]
  1000cf534  adr     x8, #0x1000cf65c                         ; &-[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke
  1000cf538  nop
  1000cf53c  str     x8, [sp, #0x48]
  1000cf540  adr     x8, #0x1000cf66c                         ; &-[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke_2
  1000cf544  nop
  1000cf548  stp     x8, xzr, [sp, #0x50]
  1000cf54c  ldr     x0, [x20, #0x20]                         ; x0 = block[+0x20]
  1000cf550  adrp    x8, #0x100417000
  1000cf554  nop
  1000cf558  ldr     x1, [x8, #0x40]
  1000cf55c  adrp    x2, #0x1003bf000
  1000cf560  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000cf564  bl      _objc_msgSend                            ; [block[+0x20] objectForKey:@"Weapons"]
  1000cf568  mov     x29, x29
  1000cf56c  bl      _objc_retainAutoreleasedReturnValue
  1000cf570  mov     x20, x0
  1000cf574  adrp    x8, #0x1003b0000
  1000cf578  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000cf57c  mov     w9, #-0x3e000000
  1000cf580  str     x8, [sp]
  1000cf584  stp     w9, wzr, [sp, #8]
  1000cf588  adr     x8, #0x1000cf674                         ; &-[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke_3
  1000cf58c  nop
  1000cf590  str     x8, [sp, #0x10]
  1000cf594  adrp    x8, #0x1003b2000
  1000cf598  add     x8, x8, #0x8f0                           ; &d_1003b28f0
  1000cf59c  str     x8, [sp, #0x18]
  1000cf5a0  mov     x0, x19
  1000cf5a4  bl      _objc_retain
  1000cf5a8  mov     x21, x0
  1000cf5ac  stp     x21, x22, [sp, #0x20]
  1000cf5b0  adrp    x8, #0x100418000
  1000cf5b4  nop
  1000cf5b8  ldr     x1, [x8, #0x5a0]
  1000cf5bc  mov     x2, sp
  1000cf5c0  mov     x0, x20
  1000cf5c4  bl      _objc_msgSend                            ; [[block[+0x20] objectForKey:@"Weapons"] enumerateObjectsUsingBlock:^{-[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke_3 captures +0x20=blockarg1, +0x40=0x32000000, +0x48=&-[ADStatsViewController createSectionsF…, +0x50=&-[ADStatsViewController createSectionsF…}]
  1000cf5c8  ldr     x8, [sp, #0x38]
  1000cf5cc  ldr     x0, [x8, #0x28]
  1000cf5d0  bl      _objc_retain
  1000cf5d4  mov     x19, x0
  1000cf5d8  ldr     x0, [sp, #0x20]
  1000cf5dc  bl      _objc_release
  1000cf5e0  mov     x0, x20
  1000cf5e4  bl      _objc_release
  1000cf5e8  add     x0, sp, #0x30
  1000cf5ec  mov     w1, #8
  1000cf5f0  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  1000cf5f4  ldr     x0, [sp, #0x58]
  1000cf5f8  bl      _objc_release
  1000cf5fc  mov     x0, x21
  1000cf600  bl      _objc_release
  1000cf604  mov     x0, x19
  1000cf608  sub     sp, x29, #0x20
  1000cf60c  ldp     x29, x30, [sp, #0x20]
  1000cf610  ldp     x20, x19, [sp, #0x10]
  1000cf614  ldp     x22, x21, [sp], #0x30
  1000cf618  b       _objc_autoreleaseReturnValue
  1000cf61c  mov     x21, x0
  1000cf620  b       loc_1000cf638
  1000cf624  mov     x21, x0
  1000cf628  ldr     x0, [sp, #0x20]
  1000cf62c  bl      _objc_release
  1000cf630  mov     x0, x20
  1000cf634  bl      _objc_release
loc_1000cf638:
  1000cf638  add     x0, sp, #0x30
  1000cf63c  mov     w1, #8
  1000cf640  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  1000cf644  ldr     x0, [sp, #0x58]
  1000cf648  bl      _objc_release
  1000cf64c  mov     x0, x19
  1000cf650  bl      _objc_release
  1000cf654  mov     x0, x21
  1000cf658  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke
; address 0x1000cf65c  size 16  kind block
; ======================================================================
  1000cf65c  ldr     x8, [x1, #0x28]                          ; x8 = blockarg1[+0x28]
  1000cf660  str     x8, [x0, #0x28]                          ; block[+0x28] = blockarg1[+0x28]
  1000cf664  str     xzr, [x1, #0x28]                         ; blockarg1[+0x28] = 0
  1000cf668  ret

; ======================================================================
; -[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke_2
; address 0x1000cf66c  size 8  kind block
; ======================================================================
  1000cf66c  ldr     x0, [x0, #0x28]                          ; x0 = block[+0x28]
  1000cf670  b       _objc_release

; ======================================================================
; -[ADStatsViewController createSectionsForWeapons]_block_invoke_block_invoke_3
; address 0x1000cf674  size 232  kind block
; ======================================================================
  1000cf674  stp     x24, x23, [sp, #-0x40]!
  1000cf678  stp     x22, x21, [sp, #0x10]
  1000cf67c  stp     x20, x19, [sp, #0x20]
  1000cf680  stp     x29, x30, [sp, #0x30]
  1000cf684  add     x29, sp, #0x30
  1000cf688  mov     x20, x3
  1000cf68c  mov     x21, x0
  1000cf690  mov     x0, x1
  1000cf694  bl      _objc_retain
  1000cf698  mov     x19, x0
  1000cf69c  adrp    x8, #0x100417000
  1000cf6a0  nop
  1000cf6a4  ldr     x23, [x8, #0x40]
  1000cf6a8  adrp    x2, #0x1003b9000
  1000cf6ac  add     x2, x2, #0xdb0                           ; @"name"
  1000cf6b0  mov     x1, x23
  1000cf6b4  bl      _objc_msgSend                            ; [blockarg1 objectForKey:@"name"]
  1000cf6b8  mov     x29, x29
  1000cf6bc  bl      _objc_retainAutoreleasedReturnValue
  1000cf6c0  mov     x22, x0
  1000cf6c4  ldr     x2, [x21, #0x20]                         ; x2 = captured blockarg1
  1000cf6c8  adrp    x8, #0x100416000
  1000cf6cc  nop
  1000cf6d0  ldr     x1, [x8, #0xf58]
  1000cf6d4  bl      _objc_msgSend                            ; [[blockarg1 objectForKey:@"name"] isEqualToString:blockarg1]
  1000cf6d8  cbz     w0, loc_1000cf718                        ; if ([[blockarg1 objectForKey:@"name"] isEqualToString:blockarg1] == 0)
  1000cf6dc  adrp    x2, #0x1003ba000
  1000cf6e0  add     x2, x2, #0x2b0                           ; @"displayName"
  1000cf6e4  mov     x0, x19
  1000cf6e8  mov     x1, x23
  1000cf6ec  bl      _objc_msgSend                            ; [blockarg1 objectForKey:@"displayName"]
  1000cf6f0  mov     x29, x29
  1000cf6f4  bl      _objc_retainAutoreleasedReturnValue
  1000cf6f8  ldr     x8, [x21, #0x28]                         ; x8 = block[+0x28]
  1000cf6fc  ldr     x9, [x8, #8]                             ; x9 = block[+0x28][+0x8]
  1000cf700  ldr     x8, [x9, #0x28]                          ; x8 = block[+0x28][+0x8][+0x28]
  1000cf704  str     x0, [x9, #0x28]                          ; block[+0x28][+0x8][+0x28] = [blockarg1 objectForKey:@"displayName"]
  1000cf708  mov     x0, x8
  1000cf70c  bl      _objc_release
  1000cf710  mov     w8, #1
  1000cf714  strb    w8, [x20]                                ; blockarg3[+0x0] = 1
loc_1000cf718:
  1000cf718  mov     x0, x22
  1000cf71c  bl      _objc_release
  1000cf720  mov     x0, x19
  1000cf724  ldp     x29, x30, [sp, #0x30]
  1000cf728  ldp     x20, x19, [sp, #0x20]
  1000cf72c  ldp     x22, x21, [sp, #0x10]
  1000cf730  ldp     x24, x23, [sp], #0x40
  1000cf734  b       _objc_release
  1000cf738  mov     x20, x0
  1000cf73c  mov     x0, x22
  1000cf740  bl      _objc_release
  1000cf744  b       loc_1000cf74c
  1000cf748  mov     x20, x0
loc_1000cf74c:
  1000cf74c  mov     x0, x19
  1000cf750  bl      _objc_release
  1000cf754  mov     x0, x20
  1000cf758  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000cf75c
; address 0x1000cf75c  size 52  kind sub
; ======================================================================
  1000cf75c  stp     x20, x19, [sp, #-0x20]!
  1000cf760  stp     x29, x30, [sp, #0x10]
  1000cf764  add     x29, sp, #0x10
  1000cf768  mov     x19, x1
  1000cf76c  mov     x20, x0
  1000cf770  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000cf774  bl      _objc_retain
  1000cf778  add     x0, x20, #0x28
  1000cf77c  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000cf780  mov     w2, #8
  1000cf784  ldp     x29, x30, [sp, #0x10]
  1000cf788  ldp     x20, x19, [sp], #0x20
  1000cf78c  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8)

; ======================================================================
; sub_1000cf790
; address 0x1000cf790  size 44  kind sub
; ======================================================================
  1000cf790  stp     x20, x19, [sp, #-0x20]!
  1000cf794  stp     x29, x30, [sp, #0x10]
  1000cf798  add     x29, sp, #0x10
  1000cf79c  mov     x19, x0
  1000cf7a0  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000cf7a4  bl      _objc_release
  1000cf7a8  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000cf7ac  mov     w1, #8
  1000cf7b0  ldp     x29, x30, [sp, #0x10]
  1000cf7b4  ldp     x20, x19, [sp], #0x20
  1000cf7b8  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8)

; ======================================================================
; sub_1000cf7bc
; address 0x1000cf7bc  size 8  kind sub
; ======================================================================
  1000cf7bc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000cf7c0  b       _objc_retain

; ======================================================================
; sub_1000cf7c4
; address 0x1000cf7c4  size 8  kind sub
; ======================================================================
  1000cf7c4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000cf7c8  b       _objc_release

; ======================================================================
; -[ADStatsViewController createSectionsForEnemies]
; address 0x1000cf7cc  size 1168  kind objc
; ======================================================================
  1000cf7cc  stp     x28, x27, [sp, #-0x60]!
  1000cf7d0  stp     x26, x25, [sp, #0x10]
  1000cf7d4  stp     x24, x23, [sp, #0x20]
  1000cf7d8  stp     x22, x21, [sp, #0x30]
  1000cf7dc  stp     x20, x19, [sp, #0x40]
  1000cf7e0  stp     x29, x30, [sp, #0x50]
  1000cf7e4  add     x29, sp, #0x50
  1000cf7e8  sub     sp, sp, #0x140
  1000cf7ec  mov     x20, x0
  1000cf7f0  adrp    x8, #0x1003b0000
  1000cf7f4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000cf7f8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000cf7fc  stur    x8, [x29, #-0x58]
  1000cf800  adrp    x8, #0x10041d000
  1000cf804  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000cf808  adrp    x8, #0x100416000
  1000cf80c  nop
  1000cf810  ldr     x21, [x8, #0xac8]
  1000cf814  mov     x1, x21
  1000cf818  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000cf81c  adrp    x8, #0x100416000
  1000cf820  nop
  1000cf824  ldr     x1, [x8, #0xab8]
  1000cf828  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000cf82c  str     x0, [sp, #0x68]
  1000cf830  adrp    x8, #0x10041d000
  1000cf834  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000cf838  adrp    x8, #0x100416000
  1000cf83c  nop
  1000cf840  ldr     x1, [x8, #0xe10]
  1000cf844  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000cf848  mov     x29, x29
  1000cf84c  bl      _objc_retainAutoreleasedReturnValue
  1000cf850  mov     x19, x0
  1000cf854  adrp    x8, #0x10041a000
  1000cf858  nop
  1000cf85c  ldr     x1, [x8, #0xd58]
  1000cf860  mov     x2, #0
  1000cf864  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0]
  1000cf868  stp     x20, x21, [sp, #0x38]
  1000cf86c  mov     x29, x29
  1000cf870  bl      _objc_retainAutoreleasedReturnValue
  1000cf874  mov     x20, x0
  1000cf878  mov     x0, x19
  1000cf87c  bl      _objc_release
  1000cf880  stp     xzr, xzr, [sp, #0xa8]
  1000cf884  stp     xzr, xzr, [sp, #0x98]
  1000cf888  stp     xzr, xzr, [sp, #0x88]
  1000cf88c  stp     xzr, xzr, [sp, #0x78]
  1000cf890  mov     x0, x20
  1000cf894  bl      _objc_retain
  1000cf898  mov     x23, x0
  1000cf89c  adrp    x8, #0x100416000
  1000cf8a0  nop
  1000cf8a4  ldr     x1, [x8, #0xe00]
  1000cf8a8  str     x1, [sp, #0x48]
  1000cf8ac  add     x2, sp, #0x78
  1000cf8b0  add     x3, sp, #0xb8
  1000cf8b4  mov     w4, #0x10
  1000cf8b8  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  1000cf8bc  mov     x22, x0
  1000cf8c0  cbz     x22, loc_1000cfae8                       ; if ([[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] == 0)
  1000cf8c4  ldr     x8, [sp, #0x88]
  1000cf8c8  adrp    x9, #0x100417000
  1000cf8cc  add     x9, x9, #0x40                            ; &@selector(objectForKey:)
  1000cf8d0  ldr     x26, [x9]
  1000cf8d4  ldr     x8, [x8]
  1000cf8d8  str     x8, [sp, #0x60]
  1000cf8dc  adrp    x8, #0x100417000
  1000cf8e0  nop
  1000cf8e4  ldr     x8, [x8, #0xb0]
  1000cf8e8  str     x8, [sp, #0x70]
  1000cf8ec  adrp    x8, #0x100417000
  1000cf8f0  nop
  1000cf8f4  ldr     x28, [x8, #0xe8]
  1000cf8f8  adrp    x8, #0x100417000
  1000cf8fc  nop
  1000cf900  ldr     x8, [x8, #0xf90]
  1000cf904  str     x8, [sp, #0x58]
  1000cf908  adrp    x8, #0x100416000
  1000cf90c  nop
  1000cf910  ldr     x8, [x8, #0xd90]
  1000cf914  str     x8, [sp, #0x50]
loc_1000cf918:
  1000cf918  mov     x25, #0
loc_1000cf91c:
  1000cf91c  ldr     x8, [sp, #0x88]
  1000cf920  ldr     x8, [x8]
  1000cf924  ldr     x9, [sp, #0x60]
  1000cf928  cmp     x8, x9
  1000cf92c  b.eq    loc_1000cf938                            ; if (x8 == x9)
  1000cf930  mov     x0, x23
  1000cf934  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0])
loc_1000cf938:
  1000cf938  ldr     x8, [sp, #0x80]
  1000cf93c  ldr     x0, [x8, x25, lsl #3]
  1000cf940  bl      _objc_retain
  1000cf944  mov     x24, x0
  1000cf948  adrp    x8, #0x10041d000
  1000cf94c  ldr     x21, [x8, #0xf68]                        ; class NSNumber
  1000cf950  mov     x0, x23
  1000cf954  mov     x1, x26
  1000cf958  mov     x2, x24
  1000cf95c  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2]
  1000cf960  mov     x29, x29
  1000cf964  bl      _objc_retainAutoreleasedReturnValue
  1000cf968  mov     x19, x0
  1000cf96c  mov     x1, x26
  1000cf970  adrp    x2, #0x1003bf000
  1000cf974  add     x2, x2, #0x470                           ; @"Casualty"
  1000cf978  bl      _objc_msgSend                            ; [[[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2] objectForKey:@"Casualty"]
  1000cf97c  mov     x27, x23
  1000cf980  mov     x29, x29
  1000cf984  bl      _objc_retainAutoreleasedReturnValue
  1000cf988  mov     x23, x0
  1000cf98c  ldr     x1, [sp, #0x70]
  1000cf990  bl      _objc_msgSend                            ; [[[[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2] objectForKey:@"Casualty"] integerValue]
  1000cf994  mov     x2, x0
  1000cf998  mov     x0, x21
  1000cf99c  mov     x1, x28
  1000cf9a0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2] objectForKey:@"Casualty"] integerValue]]
  1000cf9a4  mov     x20, x22
  1000cf9a8  mov     x29, x29
  1000cf9ac  bl      _objc_retainAutoreleasedReturnValue
  1000cf9b0  mov     x22, x0
  1000cf9b4  mov     x0, x23
  1000cf9b8  bl      _objc_release
  1000cf9bc  mov     x0, x19
  1000cf9c0  bl      _objc_release
  1000cf9c4  adrp    x8, #0x10041d000
  1000cf9c8  ldr     x21, [x8, #0xf68]                        ; class NSNumber
  1000cf9cc  mov     x23, x27
  1000cf9d0  mov     x0, x23
  1000cf9d4  mov     x1, x26
  1000cf9d8  mov     x2, x24
  1000cf9dc  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2]
  1000cf9e0  mov     x29, x29
  1000cf9e4  bl      _objc_retainAutoreleasedReturnValue
  1000cf9e8  mov     x19, x0
  1000cf9ec  mov     x1, x26
  1000cf9f0  adrp    x2, #0x1003ba000
  1000cf9f4  add     x2, x2, #0x1d0                           ; @"Killed"
  1000cf9f8  bl      _objc_msgSend                            ; [[[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2] objectForKey:@"Killed"]
  1000cf9fc  mov     x27, x23
  1000cfa00  mov     x29, x29
  1000cfa04  bl      _objc_retainAutoreleasedReturnValue
  1000cfa08  mov     x23, x0
  1000cfa0c  ldr     x1, [sp, #0x70]
  1000cfa10  bl      _objc_msgSend                            ; [[[[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2] objectForKey:@"Killed"] integerValue]
  1000cfa14  mov     x2, x0
  1000cfa18  mov     x0, x21
  1000cfa1c  mov     x1, x28
  1000cfa20  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] objectForKey:x2] objectForKey:@"Killed"] integerValue]]
  1000cfa24  mov     x29, x29
  1000cfa28  bl      _objc_retainAutoreleasedReturnValue
  1000cfa2c  mov     x21, x0
  1000cfa30  mov     x0, x23
  1000cfa34  bl      _objc_release
  1000cfa38  mov     x0, x19
  1000cfa3c  bl      _objc_release
  1000cfa40  adrp    x8, #0x10041d000
  1000cfa44  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000cfa48  adrp    x8, #0x1003ba000
  1000cfa4c  add     x8, x8, #0x230                           ; @"kills"
  1000cfa50  stp     x8, xzr, [sp, #0x20]
  1000cfa54  adrp    x8, #0x1003c2000
  1000cfa58  add     x8, x8, #0x4b0                           ; @"casualty"
  1000cfa5c  stp     x8, x21, [sp, #0x10]
  1000cfa60  adrp    x8, #0x1003b9000
  1000cfa64  add     x8, x8, #0xdb0                           ; @"name"
  1000cfa68  stp     x8, x22, [sp]
  1000cfa6c  ldr     x1, [sp, #0x58]
  1000cfa70  mov     x2, x24
  1000cfa74  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:x2, @"name", [NSNumber numberWithInteger:[[[[[ADPersistentStats persisten…, @"casualty", [NSNumber numberWithInteger:[[[[[ADPersistentStats persisten…, @"kills", nil]
  1000cfa78  mov     x29, x29
  1000cfa7c  bl      _objc_retainAutoreleasedReturnValue
  1000cfa80  mov     x19, x0
  1000cfa84  ldr     x0, [sp, #0x68]
  1000cfa88  ldr     x1, [sp, #0x50]
  1000cfa8c  mov     x2, x19
  1000cfa90  mov     x23, x27
  1000cfa94  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:[NSDictionary dictionaryWithObjectsAndKeys:x2, @"name", [NSNumber numberWithInteger:[[[[[ADPersistentStats persisten…, @"casualty", [NSNumber numberWithInteger:[[[[[ADPersistentStats persisten…, @"kills", nil]]
  1000cfa98  mov     x0, x19
  1000cfa9c  bl      _objc_release
  1000cfaa0  mov     x0, x21
  1000cfaa4  bl      _objc_release
  1000cfaa8  mov     x0, x22
  1000cfaac  bl      _objc_release
  1000cfab0  mov     x0, x24
  1000cfab4  bl      _objc_release
  1000cfab8  add     x25, x25, #1
  1000cfabc  mov     x22, x20
  1000cfac0  cmp     x25, x22
  1000cfac4  b.lo    loc_1000cf91c                            ; if ((x25 + 1) <u [[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] countByEnumeratingWithState:&sp[0x78] objects:…)
  1000cfac8  add     x2, sp, #0x78
  1000cfacc  add     x3, sp, #0xb8
  1000cfad0  mov     w4, #0x10
  1000cfad4  mov     x0, x23
  1000cfad8  ldr     x1, [sp, #0x48]
  1000cfadc  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  1000cfae0  mov     x22, x0
  1000cfae4  cbnz    x22, loc_1000cf918                       ; if ([[[ADPersistentStats persistentStats] getEnemyListWithKillsGreaterThan:0] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] != 0)
loc_1000cfae8:
  1000cfae8  mov     x0, x23
  1000cfaec  bl      _objc_release
  1000cfaf0  adrp    x8, #0x10041d000
  1000cfaf4  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000cfaf8  ldr     x1, [sp, #0x40]
  1000cfafc  bl      _objc_msgSend                            ; [NSArray alloc]
  1000cfb00  adrp    x8, #0x100418000
  1000cfb04  nop
  1000cfb08  ldr     x1, [x8, #0xbb0]
  1000cfb0c  ldr     x2, [sp, #0x68]
  1000cfb10  bl      _objc_msgSend                            ; [[NSArray alloc] initWithArray:[[NSMutableArray alloc] init]]
  1000cfb14  mov     x19, x0
  1000cfb18  adrp    x8, #0x10041a000
  1000cfb1c  nop
  1000cfb20  ldr     x1, [x8, #0xd60]
  1000cfb24  ldr     x0, [sp, #0x38]
  1000cfb28  mov     x2, x19
  1000cfb2c  bl      _objc_msgSend                            ; [self setEnemiesData:[[NSArray alloc] initWithArray:[[NSMutableArray alloc] init]]]
  1000cfb30  mov     x0, x19
  1000cfb34  bl      _objc_release
  1000cfb38  mov     x0, x23
  1000cfb3c  bl      _objc_release
  1000cfb40  ldr     x0, [sp, #0x68]
  1000cfb44  bl      _objc_release
  1000cfb48  ldur    x8, [x29, #-0x58]
  1000cfb4c  adrp    x9, #0x1003b0000
  1000cfb50  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000cfb54  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000cfb58  sub     x8, x9, x8
  1000cfb5c  cbnz    x8, loc_1000cfb80                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000cfb60  sub     sp, x29, #0x50
  1000cfb64  ldp     x29, x30, [sp, #0x50]
  1000cfb68  ldp     x20, x19, [sp, #0x40]
  1000cfb6c  ldp     x22, x21, [sp, #0x30]
  1000cfb70  ldp     x24, x23, [sp, #0x20]
  1000cfb74  ldp     x26, x25, [sp, #0x10]
  1000cfb78  ldp     x28, x27, [sp], #0x60
  1000cfb7c  ret
loc_1000cfb80:
  1000cfb80  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000cfb84  mov     x25, x0
  1000cfb88  mov     x0, x23
  1000cfb8c  bl      _objc_release
  1000cfb90  mov     x23, x27
  1000cfb94  b       loc_1000cfbb8
  1000cfb98  mov     x25, x0
  1000cfb9c  mov     x0, x23
  1000cfba0  bl      _objc_release
  1000cfba4  mov     x23, x27
  1000cfba8  b       loc_1000cfbcc
  1000cfbac  mov     x25, x0
  1000cfbb0  b       loc_1000cfbfc
  1000cfbb4  mov     x25, x0
loc_1000cfbb8:
  1000cfbb8  mov     x0, x19
  1000cfbbc  b       loc_1000cfbf8
  1000cfbc0  mov     x25, x0
  1000cfbc4  b       loc_1000cfbf4
  1000cfbc8  mov     x25, x0
loc_1000cfbcc:
  1000cfbcc  mov     x0, x19
  1000cfbd0  b       loc_1000cfbf0
  1000cfbd4  mov     x25, x0
  1000cfbd8  mov     x23, x27
  1000cfbdc  b       loc_1000cfbec
  1000cfbe0  mov     x25, x0
  1000cfbe4  mov     x0, x19
  1000cfbe8  bl      _objc_release
loc_1000cfbec:
  1000cfbec  mov     x0, x21
loc_1000cfbf0:
  1000cfbf0  bl      _objc_release
loc_1000cfbf4:
  1000cfbf4  mov     x0, x22
loc_1000cfbf8:
  1000cfbf8  bl      _objc_release
loc_1000cfbfc:
  1000cfbfc  mov     x0, x24
  1000cfc00  bl      _objc_release
loc_1000cfc04:
  1000cfc04  mov     x0, x23
loc_1000cfc08:
  1000cfc08  bl      _objc_release
loc_1000cfc0c:
  1000cfc0c  mov     x0, x23
loc_1000cfc10:
  1000cfc10  bl      _objc_release
loc_1000cfc14:
  1000cfc14  ldr     x0, [sp, #0x68]
  1000cfc18  bl      _objc_release
  1000cfc1c  mov     x0, x25
  1000cfc20  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000cfc24:
  1000cfc24  mov     x25, x0
  1000cfc28  b       loc_1000cfc04
  1000cfc2c  b       loc_1000cfc24
  1000cfc30  mov     x25, x0
  1000cfc34  b       loc_1000cfc0c
  1000cfc38  mov     x25, x0
  1000cfc3c  b       loc_1000cfc14
  1000cfc40  mov     x25, x0
  1000cfc44  mov     x0, x19
  1000cfc48  b       loc_1000cfc10
  1000cfc4c  b       loc_1000cfc24
  1000cfc50  mov     x25, x0
  1000cfc54  mov     x0, x19
  1000cfc58  b       loc_1000cfc08

; ======================================================================
; -[ADStatsViewController createGlobalSection]
; address 0x1000cfc5c  size 768  kind objc
; ======================================================================
  1000cfc5c  stp     x28, x27, [sp, #-0x60]!
  1000cfc60  stp     x26, x25, [sp, #0x10]
  1000cfc64  stp     x24, x23, [sp, #0x20]
  1000cfc68  stp     x22, x21, [sp, #0x30]
  1000cfc6c  stp     x20, x19, [sp, #0x40]
  1000cfc70  stp     x29, x30, [sp, #0x50]
  1000cfc74  add     x29, sp, #0x50
  1000cfc78  sub     sp, sp, #0x100
  1000cfc7c  str     x0, [sp, #0x30]
  1000cfc80  adrp    x8, #0x1003b0000
  1000cfc84  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000cfc88  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000cfc8c  stur    x8, [x29, #-0x58]
  1000cfc90  adrp    x8, #0x10041d000
  1000cfc94  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000cfc98  adrp    x8, #0x100416000
  1000cfc9c  nop
  1000cfca0  ldr     x1, [x8, #0xe10]
  1000cfca4  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000cfca8  mov     x29, x29
  1000cfcac  bl      _objc_retainAutoreleasedReturnValue
  1000cfcb0  mov     x20, x0
  1000cfcb4  adrp    x8, #0x100419000
  1000cfcb8  nop
  1000cfcbc  ldr     x1, [x8, #0xe90]
  1000cfcc0  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getTotalStatData]
  1000cfcc4  mov     x29, x29
  1000cfcc8  bl      _objc_retainAutoreleasedReturnValue
  1000cfccc  mov     x21, x0
  1000cfcd0  mov     x0, x20
  1000cfcd4  bl      _objc_release
  1000cfcd8  adrp    x8, #0x10041d000
  1000cfcdc  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000cfce0  adrp    x8, #0x100416000
  1000cfce4  nop
  1000cfce8  ldr     x19, [x8, #0xac8]
  1000cfcec  mov     x1, x19
  1000cfcf0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000cfcf4  adrp    x8, #0x100416000
  1000cfcf8  nop
  1000cfcfc  ldr     x1, [x8, #0xab8]
  1000cfd00  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000cfd04  str     x0, [sp, #0x28]
  1000cfd08  str     x19, [sp, #0x10]
  1000cfd0c  stp     xzr, xzr, [sp, #0x68]
  1000cfd10  stp     xzr, xzr, [sp, #0x58]
  1000cfd14  stp     xzr, xzr, [sp, #0x48]
  1000cfd18  stp     xzr, xzr, [sp, #0x38]
  1000cfd1c  mov     x0, x21
  1000cfd20  str     x21, [sp, #8]
  1000cfd24  bl      _objc_retain
  1000cfd28  mov     x22, x0
  1000cfd2c  adrp    x8, #0x100416000
  1000cfd30  nop
  1000cfd34  ldr     x1, [x8, #0xe00]
  1000cfd38  str     x1, [sp, #0x18]
  1000cfd3c  add     x2, sp, #0x38
  1000cfd40  add     x3, sp, #0x78
  1000cfd44  mov     w4, #0x10
  1000cfd48  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000cfd4c  mov     x25, x0
  1000cfd50  cbz     x25, loc_1000cfe4c                       ; if ([[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  1000cfd54  ldr     x8, [sp, #0x48]
  1000cfd58  ldr     x28, [x8]
  1000cfd5c  adrp    x8, #0x10041a000
  1000cfd60  nop
  1000cfd64  ldr     x26, [x8, #0xd68]
  1000cfd68  adrp    x8, #0x100417000
  1000cfd6c  nop
  1000cfd70  ldr     x27, [x8, #0x280]
  1000cfd74  adrp    x8, #0x100417000
  1000cfd78  nop
  1000cfd7c  ldr     x8, [x8, #0x40]
  1000cfd80  str     x8, [sp, #0x20]
  1000cfd84  adrp    x8, #0x100418000
  1000cfd88  add     x8, x8, #0x318                           ; &@selector(setValue:forKey:)
  1000cfd8c  ldr     x19, [x8]
loc_1000cfd90:
  1000cfd90  mov     x21, #0
loc_1000cfd94:
  1000cfd94  ldr     x8, [sp, #0x48]
  1000cfd98  ldr     x8, [x8]
  1000cfd9c  cmp     x8, x28
  1000cfda0  b.eq    loc_1000cfdac                            ; if (x8 == x28)
  1000cfda4  mov     x0, x22
  1000cfda8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADPersistentStats persistentStats] getTotalStatData])
loc_1000cfdac:
  1000cfdac  ldr     x8, [sp, #0x40]
  1000cfdb0  ldr     x23, [x8, x21, lsl #3]
  1000cfdb4  ldr     x0, [sp, #0x30]
  1000cfdb8  mov     x1, x26
  1000cfdbc  bl      _objc_msgSend                            ; [self endlessModeStatsOrdering]
  1000cfdc0  mov     x29, x29
  1000cfdc4  bl      _objc_retainAutoreleasedReturnValue
  1000cfdc8  mov     x24, x0
  1000cfdcc  mov     x1, x27
  1000cfdd0  mov     x2, x23
  1000cfdd4  bl      _objc_msgSend                            ; [[self endlessModeStatsOrdering] containsObject:x2]
  1000cfdd8  mov     x20, x0
  1000cfddc  mov     x0, x24
  1000cfde0  bl      _objc_release
  1000cfde4  tbnz    w20, #0, loc_1000cfe20                   ; if (([[self endlessModeStatsOrdering] containsObject:x2] & 1))
  1000cfde8  mov     x0, x22
  1000cfdec  ldr     x1, [sp, #0x20]
  1000cfdf0  mov     x2, x23
  1000cfdf4  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getTotalStatData] objectForKey:x2]
  1000cfdf8  mov     x29, x29
  1000cfdfc  bl      _objc_retainAutoreleasedReturnValue
  1000cfe00  mov     x24, x0
  1000cfe04  ldr     x0, [sp, #0x28]
  1000cfe08  mov     x1, x19
  1000cfe0c  mov     x2, x24
  1000cfe10  mov     x3, x23
  1000cfe14  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[[[ADPersistentStats persistentStats] getTotalStatData] objectForKey:x2] forKey:x3]
  1000cfe18  mov     x0, x24
  1000cfe1c  bl      _objc_release
loc_1000cfe20:
  1000cfe20  add     x21, x21, #1
  1000cfe24  cmp     x21, x25
  1000cfe28  b.lo    loc_1000cfd94                            ; if ((x21 + 1) <u [[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16…)
  1000cfe2c  add     x2, sp, #0x38
  1000cfe30  add     x3, sp, #0x78
  1000cfe34  mov     w4, #0x10
  1000cfe38  mov     x0, x22
  1000cfe3c  ldr     x1, [sp, #0x18]
  1000cfe40  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000cfe44  mov     x25, x0
  1000cfe48  cbnz    x25, loc_1000cfd90                       ; if ([[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_1000cfe4c:
  1000cfe4c  mov     x0, x22
  1000cfe50  bl      _objc_release
  1000cfe54  adrp    x8, #0x10041d000
  1000cfe58  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000cfe5c  ldr     x1, [sp, #0x10]
  1000cfe60  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000cfe64  adrp    x8, #0x100416000
  1000cfe68  nop
  1000cfe6c  ldr     x1, [x8, #0xd80]
  1000cfe70  ldr     x2, [sp, #0x28]
  1000cfe74  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithDictionary:[[NSMutableDictionary alloc] init]]
  1000cfe78  mov     x23, x0
  1000cfe7c  adrp    x8, #0x10041a000
  1000cfe80  nop
  1000cfe84  ldr     x1, [x8, #0xd70]
  1000cfe88  ldr     x0, [sp, #0x30]
  1000cfe8c  mov     x2, x23
  1000cfe90  bl      _objc_msgSend                            ; [self setGlobalData:[[NSDictionary alloc] initWithDictionary:[[NSMutableDictionary alloc] init]]]
  1000cfe94  mov     x0, x23
  1000cfe98  bl      _objc_release
  1000cfe9c  ldr     x0, [sp, #0x28]
  1000cfea0  bl      _objc_release
  1000cfea4  mov     x0, x22
  1000cfea8  bl      _objc_release
  1000cfeac  ldur    x8, [x29, #-0x58]
  1000cfeb0  adrp    x9, #0x1003b0000
  1000cfeb4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000cfeb8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000cfebc  sub     x8, x9, x8
  1000cfec0  cbnz    x8, loc_1000cfee4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000cfec4  sub     sp, x29, #0x50
  1000cfec8  ldp     x29, x30, [sp, #0x50]
  1000cfecc  ldp     x20, x19, [sp, #0x40]
  1000cfed0  ldp     x22, x21, [sp, #0x30]
  1000cfed4  ldp     x24, x23, [sp, #0x20]
  1000cfed8  ldp     x26, x25, [sp, #0x10]
  1000cfedc  ldp     x28, x27, [sp], #0x60
  1000cfee0  ret
loc_1000cfee4:
  1000cfee4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000cfee8:
  1000cfee8  mov     x19, x0
  1000cfeec  b       loc_1000cff00
  1000cfef0  b       loc_1000cfef4
loc_1000cfef4:
  1000cfef4  mov     x19, x0
  1000cfef8  mov     x0, x24
  1000cfefc  bl      _objc_release
loc_1000cff00:
  1000cff00  ldr     x21, [sp, #8]
  1000cff04  mov     x0, x22
  1000cff08  bl      _objc_release
loc_1000cff0c:
  1000cff0c  ldr     x0, [sp, #0x28]
  1000cff10  bl      _objc_release
loc_1000cff14:
  1000cff14  mov     x0, x21
loc_1000cff18:
  1000cff18  bl      _objc_release
  1000cff1c  mov     x0, x19
  1000cff20  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000cff24  b       loc_1000cfee8
  1000cff28  mov     x19, x0
  1000cff2c  b       loc_1000cff14
  1000cff30  mov     x19, x0
  1000cff34  b       loc_1000cff54
  1000cff38  mov     x19, x0
  1000cff3c  mov     x0, x20
  1000cff40  b       loc_1000cff18
  1000cff44  b       loc_1000cfee8
  1000cff48  mov     x19, x0
  1000cff4c  mov     x0, x23
  1000cff50  bl      _objc_release
loc_1000cff54:
  1000cff54  ldr     x21, [sp, #8]
  1000cff58  b       loc_1000cff0c

; ======================================================================
; -[ADStatsViewController createEndlessModeSection]
; address 0x1000cff5c  size 768  kind objc
; ======================================================================
  1000cff5c  stp     x28, x27, [sp, #-0x60]!
  1000cff60  stp     x26, x25, [sp, #0x10]
  1000cff64  stp     x24, x23, [sp, #0x20]
  1000cff68  stp     x22, x21, [sp, #0x30]
  1000cff6c  stp     x20, x19, [sp, #0x40]
  1000cff70  stp     x29, x30, [sp, #0x50]
  1000cff74  add     x29, sp, #0x50
  1000cff78  sub     sp, sp, #0x100
  1000cff7c  str     x0, [sp, #0x30]
  1000cff80  adrp    x8, #0x1003b0000
  1000cff84  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000cff88  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000cff8c  stur    x8, [x29, #-0x58]
  1000cff90  adrp    x8, #0x10041d000
  1000cff94  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000cff98  adrp    x8, #0x100416000
  1000cff9c  nop
  1000cffa0  ldr     x1, [x8, #0xe10]
  1000cffa4  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000cffa8  mov     x29, x29
  1000cffac  bl      _objc_retainAutoreleasedReturnValue
  1000cffb0  mov     x20, x0
  1000cffb4  adrp    x8, #0x100419000
  1000cffb8  nop
  1000cffbc  ldr     x1, [x8, #0xe90]
  1000cffc0  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getTotalStatData]
  1000cffc4  mov     x29, x29
  1000cffc8  bl      _objc_retainAutoreleasedReturnValue
  1000cffcc  mov     x21, x0
  1000cffd0  mov     x0, x20
  1000cffd4  bl      _objc_release
  1000cffd8  adrp    x8, #0x10041d000
  1000cffdc  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000cffe0  adrp    x8, #0x100416000
  1000cffe4  nop
  1000cffe8  ldr     x19, [x8, #0xac8]
  1000cffec  mov     x1, x19
  1000cfff0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000cfff4  adrp    x8, #0x100416000
  1000cfff8  nop
  1000cfffc  ldr     x1, [x8, #0xab8]
  1000d0000  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000d0004  str     x0, [sp, #0x28]
  1000d0008  str     x19, [sp, #0x10]
  1000d000c  stp     xzr, xzr, [sp, #0x68]
  1000d0010  stp     xzr, xzr, [sp, #0x58]
  1000d0014  stp     xzr, xzr, [sp, #0x48]
  1000d0018  stp     xzr, xzr, [sp, #0x38]
  1000d001c  mov     x0, x21
  1000d0020  str     x21, [sp, #8]
  1000d0024  bl      _objc_retain
  1000d0028  mov     x22, x0
  1000d002c  adrp    x8, #0x100416000
  1000d0030  nop
  1000d0034  ldr     x1, [x8, #0xe00]
  1000d0038  str     x1, [sp, #0x18]
  1000d003c  add     x2, sp, #0x38
  1000d0040  add     x3, sp, #0x78
  1000d0044  mov     w4, #0x10
  1000d0048  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000d004c  mov     x25, x0
  1000d0050  cbz     x25, loc_1000d014c                       ; if ([[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  1000d0054  ldr     x8, [sp, #0x48]
  1000d0058  ldr     x28, [x8]
  1000d005c  adrp    x8, #0x10041a000
  1000d0060  nop
  1000d0064  ldr     x26, [x8, #0xd68]
  1000d0068  adrp    x8, #0x100417000
  1000d006c  nop
  1000d0070  ldr     x27, [x8, #0x280]
  1000d0074  adrp    x8, #0x100417000
  1000d0078  nop
  1000d007c  ldr     x8, [x8, #0x40]
  1000d0080  str     x8, [sp, #0x20]
  1000d0084  adrp    x8, #0x100418000
  1000d0088  add     x8, x8, #0x318                           ; &@selector(setValue:forKey:)
  1000d008c  ldr     x19, [x8]
loc_1000d0090:
  1000d0090  mov     x21, #0
loc_1000d0094:
  1000d0094  ldr     x8, [sp, #0x48]
  1000d0098  ldr     x8, [x8]
  1000d009c  cmp     x8, x28
  1000d00a0  b.eq    loc_1000d00ac                            ; if (x8 == x28)
  1000d00a4  mov     x0, x22
  1000d00a8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADPersistentStats persistentStats] getTotalStatData])
loc_1000d00ac:
  1000d00ac  ldr     x8, [sp, #0x40]
  1000d00b0  ldr     x23, [x8, x21, lsl #3]
  1000d00b4  ldr     x0, [sp, #0x30]
  1000d00b8  mov     x1, x26
  1000d00bc  bl      _objc_msgSend                            ; [self endlessModeStatsOrdering]
  1000d00c0  mov     x29, x29
  1000d00c4  bl      _objc_retainAutoreleasedReturnValue
  1000d00c8  mov     x24, x0
  1000d00cc  mov     x1, x27
  1000d00d0  mov     x2, x23
  1000d00d4  bl      _objc_msgSend                            ; [[self endlessModeStatsOrdering] containsObject:x2]
  1000d00d8  mov     x20, x0
  1000d00dc  mov     x0, x24
  1000d00e0  bl      _objc_release
  1000d00e4  cbz     w20, loc_1000d0120                       ; if ([[self endlessModeStatsOrdering] containsObject:x2] == 0)
  1000d00e8  mov     x0, x22
  1000d00ec  ldr     x1, [sp, #0x20]
  1000d00f0  mov     x2, x23
  1000d00f4  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getTotalStatData] objectForKey:x2]
  1000d00f8  mov     x29, x29
  1000d00fc  bl      _objc_retainAutoreleasedReturnValue
  1000d0100  mov     x24, x0
  1000d0104  ldr     x0, [sp, #0x28]
  1000d0108  mov     x1, x19
  1000d010c  mov     x2, x24
  1000d0110  mov     x3, x23
  1000d0114  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[[[ADPersistentStats persistentStats] getTotalStatData] objectForKey:x2] forKey:x3]
  1000d0118  mov     x0, x24
  1000d011c  bl      _objc_release
loc_1000d0120:
  1000d0120  add     x21, x21, #1
  1000d0124  cmp     x21, x25
  1000d0128  b.lo    loc_1000d0094                            ; if ((x21 + 1) <u [[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16…)
  1000d012c  add     x2, sp, #0x38
  1000d0130  add     x3, sp, #0x78
  1000d0134  mov     w4, #0x10
  1000d0138  mov     x0, x22
  1000d013c  ldr     x1, [sp, #0x18]
  1000d0140  bl      _objc_msgSend                            ; [[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000d0144  mov     x25, x0
  1000d0148  cbnz    x25, loc_1000d0090                       ; if ([[[ADPersistentStats persistentStats] getTotalStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_1000d014c:
  1000d014c  mov     x0, x22
  1000d0150  bl      _objc_release
  1000d0154  adrp    x8, #0x10041d000
  1000d0158  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000d015c  ldr     x1, [sp, #0x10]
  1000d0160  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000d0164  adrp    x8, #0x100416000
  1000d0168  nop
  1000d016c  ldr     x1, [x8, #0xd80]
  1000d0170  ldr     x2, [sp, #0x28]
  1000d0174  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithDictionary:[[NSMutableDictionary alloc] init]]
  1000d0178  mov     x23, x0
  1000d017c  adrp    x8, #0x10041a000
  1000d0180  nop
  1000d0184  ldr     x1, [x8, #0xd78]
  1000d0188  ldr     x0, [sp, #0x30]
  1000d018c  mov     x2, x23
  1000d0190  bl      _objc_msgSend                            ; [self setEndlessModeData:[[NSDictionary alloc] initWithDictionary:[[NSMutableDictionary alloc] init]]]
  1000d0194  mov     x0, x23
  1000d0198  bl      _objc_release
  1000d019c  ldr     x0, [sp, #0x28]
  1000d01a0  bl      _objc_release
  1000d01a4  mov     x0, x22
  1000d01a8  bl      _objc_release
  1000d01ac  ldur    x8, [x29, #-0x58]
  1000d01b0  adrp    x9, #0x1003b0000
  1000d01b4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000d01b8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000d01bc  sub     x8, x9, x8
  1000d01c0  cbnz    x8, loc_1000d01e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d01c4  sub     sp, x29, #0x50
  1000d01c8  ldp     x29, x30, [sp, #0x50]
  1000d01cc  ldp     x20, x19, [sp, #0x40]
  1000d01d0  ldp     x22, x21, [sp, #0x30]
  1000d01d4  ldp     x24, x23, [sp, #0x20]
  1000d01d8  ldp     x26, x25, [sp, #0x10]
  1000d01dc  ldp     x28, x27, [sp], #0x60
  1000d01e0  ret
loc_1000d01e4:
  1000d01e4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000d01e8:
  1000d01e8  mov     x19, x0
  1000d01ec  b       loc_1000d0200
  1000d01f0  b       loc_1000d01f4
loc_1000d01f4:
  1000d01f4  mov     x19, x0
  1000d01f8  mov     x0, x24
  1000d01fc  bl      _objc_release
loc_1000d0200:
  1000d0200  ldr     x21, [sp, #8]
  1000d0204  mov     x0, x22
  1000d0208  bl      _objc_release
loc_1000d020c:
  1000d020c  ldr     x0, [sp, #0x28]
  1000d0210  bl      _objc_release
loc_1000d0214:
  1000d0214  mov     x0, x21
loc_1000d0218:
  1000d0218  bl      _objc_release
  1000d021c  mov     x0, x19
  1000d0220  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d0224  b       loc_1000d01e8
  1000d0228  mov     x19, x0
  1000d022c  b       loc_1000d0214
  1000d0230  mov     x19, x0
  1000d0234  b       loc_1000d0254
  1000d0238  mov     x19, x0
  1000d023c  mov     x0, x20
  1000d0240  b       loc_1000d0218
  1000d0244  b       loc_1000d01e8
  1000d0248  mov     x19, x0
  1000d024c  mov     x0, x23
  1000d0250  bl      _objc_release
loc_1000d0254:
  1000d0254  ldr     x21, [sp, #8]
  1000d0258  b       loc_1000d020c

; ======================================================================
; -[ADStatsViewController didReceiveMemoryWarning]
; address 0x1000d025c  size 60  kind objc
; ======================================================================
  1000d025c  stp     x29, x30, [sp, #-0x10]!
  1000d0260  mov     x29, sp
  1000d0264  sub     sp, sp, #0x10
  1000d0268  str     x0, [sp]
  1000d026c  adrp    x8, #0x10041e000
  1000d0270  ldr     x8, [x8, #0xfc8]
  1000d0274  str     x8, [sp, #8]
  1000d0278  adrp    x8, #0x100416000
  1000d027c  nop
  1000d0280  ldr     x1, [x8, #0xbf8]
  1000d0284  mov     x0, sp
  1000d0288  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000d028c  mov     sp, x29
  1000d0290  ldp     x29, x30, [sp], #0x10
  1000d0294  ret

; ======================================================================
; -[ADStatsViewController backButtonPressed]
; address 0x1000d0298  size 104  kind objc
; ======================================================================
  1000d0298  stp     x20, x19, [sp, #-0x20]!
  1000d029c  stp     x29, x30, [sp, #0x10]
  1000d02a0  add     x29, sp, #0x10
  1000d02a4  sub     sp, sp, #0x10
  1000d02a8  mov     x19, x0
  1000d02ac  str     x19, [sp]
  1000d02b0  adrp    x8, #0x10041e000
  1000d02b4  ldr     x8, [x8, #0xfc8]
  1000d02b8  str     x8, [sp, #8]
  1000d02bc  adrp    x8, #0x100417000
  1000d02c0  nop
  1000d02c4  ldr     x1, [x8, #0x410]
  1000d02c8  mov     x0, sp
  1000d02cc  bl      _objc_msgSendSuper2                      ; [super backButtonPressed]
  1000d02d0  adrp    x8, #0x100417000
  1000d02d4  nop
  1000d02d8  ldr     x1, [x8, #0x420]
  1000d02dc  mov     w2, #0
  1000d02e0  adrp    x3, #0x1003b2000
  1000d02e4  add     x3, x3, #0x970                           ; ^{-[ADStatsViewController backButtonPressed]_block_invoke}
  1000d02e8  mov     x0, x19
  1000d02ec  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADStatsViewController backButtonPressed]_block_invoke}]
  1000d02f0  sub     sp, x29, #0x10
  1000d02f4  ldp     x29, x30, [sp, #0x10]
  1000d02f8  ldp     x20, x19, [sp], #0x20
  1000d02fc  ret

; ======================================================================
; -[ADStatsViewController backButtonPressed]_block_invoke
; address 0x1000d0300  size 4  kind block
; ======================================================================
  1000d0300  ret

; ======================================================================
; -[ADStatsViewController configureGlobalCell:ForRow:]
; address 0x1000d0304  size 1084  kind objc
; ======================================================================
  1000d0304  stp     x28, x27, [sp, #-0x60]!
  1000d0308  stp     x26, x25, [sp, #0x10]
  1000d030c  stp     x24, x23, [sp, #0x20]
  1000d0310  stp     x22, x21, [sp, #0x30]
  1000d0314  stp     x20, x19, [sp, #0x40]
  1000d0318  stp     x29, x30, [sp, #0x50]
  1000d031c  add     x29, sp, #0x50
  1000d0320  mov     x20, x3
  1000d0324  mov     x23, x0
  1000d0328  mov     x0, x2
  1000d032c  bl      _objc_retain
  1000d0330  mov     x19, x0
  1000d0334  adrp    x8, #0x100417000
  1000d0338  nop
  1000d033c  ldr     x1, [x8, #0x3a8]
  1000d0340  nop
  1000d0344  ldr     d0, #0x100181a00                         ; d0 = 0.800000012
  1000d0348  bl      _objc_msgSend                            ; [arg1 keyLabelSize:0.8]
  1000d034c  adrp    x8, #0x10041a000
  1000d0350  nop
  1000d0354  ldr     x1, [x8, #0xd80]
  1000d0358  mov     x0, x23
  1000d035c  bl      _objc_msgSend                            ; [self globalStatsOrdering]
  1000d0360  mov     x29, x29
  1000d0364  bl      _objc_retainAutoreleasedReturnValue
  1000d0368  mov     x21, x0
  1000d036c  adrp    x8, #0x100416000
  1000d0370  nop
  1000d0374  ldr     x1, [x8, #0xc30]
  1000d0378  mov     x2, x20
  1000d037c  bl      _objc_msgSend                            ; [[self globalStatsOrdering] objectAtIndex:arg2]
  1000d0380  mov     x29, x29
  1000d0384  bl      _objc_retainAutoreleasedReturnValue
  1000d0388  mov     x20, x0
  1000d038c  mov     x0, x21
  1000d0390  bl      _objc_release
  1000d0394  adrp    x8, #0x10041a000
  1000d0398  nop
  1000d039c  ldr     x1, [x8, #0xd88]
  1000d03a0  mov     x0, x23
  1000d03a4  bl      _objc_msgSend                            ; [self globalData]
  1000d03a8  mov     x29, x29
  1000d03ac  bl      _objc_retainAutoreleasedReturnValue
  1000d03b0  mov     x24, x0
  1000d03b4  adrp    x8, #0x100417000
  1000d03b8  nop
  1000d03bc  ldr     x1, [x8, #0x40]
  1000d03c0  mov     x2, x20
  1000d03c4  bl      _objc_msgSend                            ; [[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]]
  1000d03c8  mov     x29, x29
  1000d03cc  bl      _objc_retainAutoreleasedReturnValue
  1000d03d0  mov     x21, x0
  1000d03d4  mov     x0, x24
  1000d03d8  bl      _objc_release
  1000d03dc  adrp    x8, #0x100417000
  1000d03e0  nop
  1000d03e4  ldr     x1, [x8, #0x398]
  1000d03e8  mov     x0, x19
  1000d03ec  bl      _objc_msgSend                            ; [arg1 keyLabel]
  1000d03f0  mov     x29, x29
  1000d03f4  bl      _objc_retainAutoreleasedReturnValue
  1000d03f8  mov     x24, x0
  1000d03fc  adrp    x8, #0x100416000
  1000d0400  nop
  1000d0404  ldr     x22, [x8, #0xb68]
  1000d0408  mov     x1, x22
  1000d040c  mov     x2, x20
  1000d0410  bl      _objc_msgSend                            ; [[arg1 keyLabel] setText:[[self globalStatsOrdering] objectAtIndex:arg2]]
  1000d0414  mov     x0, x24
  1000d0418  bl      _objc_release
  1000d041c  adrp    x8, #0x100416000
  1000d0420  nop
  1000d0424  ldr     x1, [x8, #0xf58]
  1000d0428  adrp    x2, #0x1003b9000
  1000d042c  add     x2, x2, #0x950                           ; @"Kills"
  1000d0430  mov     x0, x20
  1000d0434  bl      _objc_msgSend                            ; [[[self globalStatsOrdering] objectAtIndex:arg2] isEqualToString:@"Kills"]
  1000d0438  cbz     w0, loc_1000d050c                        ; if ([[[self globalStatsOrdering] objectAtIndex:arg2] isEqualToString:@"Kills"] == 0)
  1000d043c  adrp    x28, #0x10041d000
  1000d0440  ldr     x0, [x28, #0xf58]                        ; class ADPersistentStats
  1000d0444  adrp    x8, #0x100416000
  1000d0448  nop
  1000d044c  ldr     x25, [x8, #0xe10]
  1000d0450  mov     x1, x25
  1000d0454  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000d0458  mov     x29, x29
  1000d045c  bl      _objc_retainAutoreleasedReturnValue
  1000d0460  mov     x24, x0
  1000d0464  adrp    x8, #0x100418000
  1000d0468  nop
  1000d046c  ldr     x26, [x8, #0xac8]
  1000d0470  mov     x1, x26
  1000d0474  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] computeTotalEnemyKillCount]
  1000d0478  mov     x27, x0
  1000d047c  mov     x0, x24
  1000d0480  bl      _objc_release
  1000d0484  adrp    x8, #0x100417000
  1000d0488  add     x8, x8, #0x3a0                           ; &@selector(valueLabel)
  1000d048c  ldr     x1, [x8]
  1000d0490  cbz     x27, loc_1000d0610                       ; if ([[ADPersistentStats persistentStats] computeTotalEnemyKillCount] == 0)
  1000d0494  mov     x0, x19
  1000d0498  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d049c  mov     x29, x29
  1000d04a0  bl      _objc_retainAutoreleasedReturnValue
  1000d04a4  mov     x24, x0
  1000d04a8  ldr     x0, [x28, #0xf58]                        ; class ADPersistentStats
  1000d04ac  mov     x1, x25
  1000d04b0  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000d04b4  mov     x29, x29
  1000d04b8  bl      _objc_retainAutoreleasedReturnValue
  1000d04bc  mov     x25, x0
  1000d04c0  mov     x1, x26
  1000d04c4  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] computeTotalEnemyKillCount]
  1000d04c8  mov     x2, x0
  1000d04cc  adrp    x8, #0x100418000
  1000d04d0  nop
  1000d04d4  ldr     x1, [x8, #0x7b8]
  1000d04d8  mov     x0, x23
  1000d04dc  bl      _objc_msgSend                            ; [self formattedScoreFromInt:[[ADPersistentStats persistentStats] computeTotalEnemyKillCount]]
  1000d04e0  mov     x29, x29
  1000d04e4  bl      _objc_retainAutoreleasedReturnValue
  1000d04e8  mov     x23, x0
  1000d04ec  mov     x0, x24
  1000d04f0  mov     x1, x22
  1000d04f4  mov     x2, x23
  1000d04f8  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:[self formattedScoreFromInt:[[ADPersistentStats persistentStats] computeTotalEnemyKillCount]]]
  1000d04fc  mov     x0, x23
  1000d0500  bl      _objc_release
  1000d0504  mov     x0, x25
  1000d0508  b       loc_1000d0604
loc_1000d050c:
  1000d050c  adrp    x8, #0x10041d000
  1000d0510  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d0514  adrp    x8, #0x100417000
  1000d0518  nop
  1000d051c  ldr     x1, [x8, #0x2e0]
  1000d0520  bl      _objc_msgSend                            ; [NSString class]
  1000d0524  mov     x2, x0
  1000d0528  adrp    x8, #0x100417000
  1000d052c  nop
  1000d0530  ldr     x1, [x8, #0x3b8]
  1000d0534  mov     x0, x21
  1000d0538  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]] isKindOfClass:[NSString class]]
  1000d053c  cbz     w0, loc_1000d0574                        ; if ([[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]] isKindOfClass:[NSString class]] == 0)
  1000d0540  adrp    x8, #0x100417000
  1000d0544  nop
  1000d0548  ldr     x1, [x8, #0x3a0]
  1000d054c  mov     x0, x19
  1000d0550  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d0554  mov     x29, x29
  1000d0558  bl      _objc_retainAutoreleasedReturnValue
  1000d055c  mov     x23, x0
  1000d0560  mov     x1, x22
  1000d0564  mov     x2, x21
  1000d0568  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]]]
  1000d056c  b       loc_1000d0660
  1000d0570  b       loc_1000d0730
loc_1000d0574:
  1000d0574  adrp    x8, #0x10041a000
  1000d0578  nop
  1000d057c  ldr     x23, [x8, #0xd20]
  1000d0580  mov     x0, x21
  1000d0584  mov     x1, x23
  1000d0588  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]] stringValue]
  1000d058c  mov     x29, x29
  1000d0590  bl      _objc_retainAutoreleasedReturnValue
  1000d0594  mov     x24, x0
  1000d0598  adrp    x8, #0x100417000
  1000d059c  nop
  1000d05a0  ldr     x1, [x8, #0xc58]
  1000d05a4  bl      _objc_msgSend                            ; [[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]] stringValue] length]
  1000d05a8  mov     x25, x0
  1000d05ac  mov     x0, x24
  1000d05b0  bl      _objc_release
  1000d05b4  adrp    x8, #0x100417000
  1000d05b8  add     x8, x8, #0x3a0                           ; &@selector(valueLabel)
  1000d05bc  ldr     x1, [x8]
  1000d05c0  cbz     x25, loc_1000d063c                       ; if ([[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]] stringValue] length] == 0)
  1000d05c4  mov     x0, x19
  1000d05c8  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d05cc  mov     x29, x29
  1000d05d0  bl      _objc_retainAutoreleasedReturnValue
  1000d05d4  mov     x24, x0
  1000d05d8  mov     x0, x21
  1000d05dc  mov     x1, x23
  1000d05e0  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]] stringValue]
  1000d05e4  mov     x29, x29
  1000d05e8  bl      _objc_retainAutoreleasedReturnValue
  1000d05ec  mov     x23, x0
  1000d05f0  mov     x0, x24
  1000d05f4  mov     x1, x22
  1000d05f8  mov     x2, x23
  1000d05fc  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:arg2]] stringValue]]
  1000d0600  mov     x0, x23
loc_1000d0604:
  1000d0604  bl      _objc_release
  1000d0608  mov     x0, x24
  1000d060c  b       loc_1000d0664
loc_1000d0610:
  1000d0610  mov     x0, x19
  1000d0614  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d0618  mov     x29, x29
  1000d061c  bl      _objc_retainAutoreleasedReturnValue
  1000d0620  mov     x23, x0
  1000d0624  adrp    x2, #0x1003bb000
  1000d0628  add     x2, x2, #0xe30                           ; @"0"
  1000d062c  mov     x1, x22
  1000d0630  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:@"0"]
  1000d0634  b       loc_1000d0660
  1000d0638  b       loc_1000d0730
loc_1000d063c:
  1000d063c  mov     x0, x19
  1000d0640  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d0644  mov     x29, x29
  1000d0648  bl      _objc_retainAutoreleasedReturnValue
  1000d064c  mov     x23, x0
  1000d0650  adrp    x2, #0x1003bb000
  1000d0654  add     x2, x2, #0xe30                           ; @"0"
  1000d0658  mov     x1, x22
  1000d065c  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:@"0"]
loc_1000d0660:
  1000d0660  mov     x0, x23
loc_1000d0664:
  1000d0664  bl      _objc_release
  1000d0668  mov     x0, x21
  1000d066c  bl      _objc_release
  1000d0670  mov     x0, x20
  1000d0674  bl      _objc_release
  1000d0678  mov     x0, x19
  1000d067c  ldp     x29, x30, [sp, #0x50]
  1000d0680  ldp     x20, x19, [sp, #0x40]
  1000d0684  ldp     x22, x21, [sp, #0x30]
  1000d0688  ldp     x24, x23, [sp, #0x20]
  1000d068c  ldp     x26, x25, [sp, #0x10]
  1000d0690  ldp     x28, x27, [sp], #0x60
  1000d0694  b       _objc_autoreleaseReturnValue
  1000d0698  mov     x22, x0
  1000d069c  b       loc_1000d0704
  1000d06a0  mov     x22, x0
  1000d06a4  b       loc_1000d0714
  1000d06a8  mov     x22, x0
  1000d06ac  mov     x0, x21
  1000d06b0  b       loc_1000d0710
  1000d06b4  mov     x22, x0
  1000d06b8  b       loc_1000d070c
  1000d06bc  mov     x22, x0
  1000d06c0  mov     x0, x24
  1000d06c4  b       loc_1000d0708
  1000d06c8  b       loc_1000d06f8
  1000d06cc  mov     x22, x0
  1000d06d0  b       loc_1000d06e8
  1000d06d4  b       loc_1000d06f8
  1000d06d8  b       loc_1000d06f8
  1000d06dc  mov     x22, x0
  1000d06e0  mov     x0, x23
  1000d06e4  bl      _objc_release
loc_1000d06e8:
  1000d06e8  mov     x0, x25
loc_1000d06ec:
  1000d06ec  bl      _objc_release
  1000d06f0  b       loc_1000d06fc
  1000d06f4  b       loc_1000d06f8
loc_1000d06f8:
  1000d06f8  mov     x22, x0
loc_1000d06fc:
  1000d06fc  mov     x0, x24
  1000d0700  bl      _objc_release
loc_1000d0704:
  1000d0704  mov     x0, x21
loc_1000d0708:
  1000d0708  bl      _objc_release
loc_1000d070c:
  1000d070c  mov     x0, x20
loc_1000d0710:
  1000d0710  bl      _objc_release
loc_1000d0714:
  1000d0714  mov     x0, x19
  1000d0718  bl      _objc_release
  1000d071c  mov     x0, x22
  1000d0720  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d0724  mov     x22, x0
  1000d0728  mov     x0, x23
  1000d072c  b       loc_1000d06ec
loc_1000d0730:
  1000d0730  mov     x22, x0
  1000d0734  mov     x0, x23
  1000d0738  bl      _objc_release
  1000d073c  b       loc_1000d0704

; ======================================================================
; -[ADStatsViewController configureEndlessModeCell:ForRow:]
; address 0x1000d0740  size 972  kind objc
; ======================================================================
  1000d0740  stp     x26, x25, [sp, #-0x50]!
  1000d0744  stp     x24, x23, [sp, #0x10]
  1000d0748  stp     x22, x21, [sp, #0x20]
  1000d074c  stp     x20, x19, [sp, #0x30]
  1000d0750  stp     x29, x30, [sp, #0x40]
  1000d0754  add     x29, sp, #0x40
  1000d0758  mov     x20, x3
  1000d075c  mov     x23, x0
  1000d0760  mov     x0, x2
  1000d0764  bl      _objc_retain
  1000d0768  mov     x19, x0
  1000d076c  adrp    x8, #0x100417000
  1000d0770  nop
  1000d0774  ldr     x1, [x8, #0x3a8]
  1000d0778  nop
  1000d077c  ldr     d0, #0x100181a00                         ; d0 = 0.800000012
  1000d0780  bl      _objc_msgSend                            ; [arg1 keyLabelSize:0.8]
  1000d0784  adrp    x8, #0x10041a000
  1000d0788  nop
  1000d078c  ldr     x1, [x8, #0xd68]
  1000d0790  mov     x0, x23
  1000d0794  bl      _objc_msgSend                            ; [self endlessModeStatsOrdering]
  1000d0798  mov     x29, x29
  1000d079c  bl      _objc_retainAutoreleasedReturnValue
  1000d07a0  mov     x21, x0
  1000d07a4  adrp    x8, #0x100416000
  1000d07a8  nop
  1000d07ac  ldr     x1, [x8, #0xc30]
  1000d07b0  mov     x2, x20
  1000d07b4  bl      _objc_msgSend                            ; [[self endlessModeStatsOrdering] objectAtIndex:arg2]
  1000d07b8  mov     x29, x29
  1000d07bc  bl      _objc_retainAutoreleasedReturnValue
  1000d07c0  mov     x20, x0
  1000d07c4  mov     x0, x21
  1000d07c8  bl      _objc_release
  1000d07cc  adrp    x8, #0x10041a000
  1000d07d0  nop
  1000d07d4  ldr     x1, [x8, #0xd90]
  1000d07d8  mov     x0, x23
  1000d07dc  bl      _objc_msgSend                            ; [self endlessModeData]
  1000d07e0  mov     x29, x29
  1000d07e4  bl      _objc_retainAutoreleasedReturnValue
  1000d07e8  mov     x24, x0
  1000d07ec  adrp    x8, #0x100417000
  1000d07f0  nop
  1000d07f4  ldr     x1, [x8, #0x40]
  1000d07f8  mov     x2, x20
  1000d07fc  bl      _objc_msgSend                            ; [[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]]
  1000d0800  mov     x29, x29
  1000d0804  bl      _objc_retainAutoreleasedReturnValue
  1000d0808  mov     x21, x0
  1000d080c  mov     x0, x24
  1000d0810  bl      _objc_release
  1000d0814  adrp    x8, #0x100417000
  1000d0818  nop
  1000d081c  ldr     x1, [x8, #0x398]
  1000d0820  mov     x0, x19
  1000d0824  bl      _objc_msgSend                            ; [arg1 keyLabel]
  1000d0828  mov     x29, x29
  1000d082c  bl      _objc_retainAutoreleasedReturnValue
  1000d0830  mov     x24, x0
  1000d0834  adrp    x8, #0x100416000
  1000d0838  nop
  1000d083c  ldr     x22, [x8, #0xb68]
  1000d0840  mov     x1, x22
  1000d0844  mov     x2, x20
  1000d0848  bl      _objc_msgSend                            ; [[arg1 keyLabel] setText:[[self endlessModeStatsOrdering] objectAtIndex:arg2]]
  1000d084c  mov     x0, x24
  1000d0850  bl      _objc_release
  1000d0854  adrp    x8, #0x100416000
  1000d0858  nop
  1000d085c  ldr     x1, [x8, #0xf58]
  1000d0860  adrp    x2, #0x1003c2000
  1000d0864  add     x2, x2, #0x3f0                           ; @"Best score"
  1000d0868  mov     x0, x20
  1000d086c  bl      _objc_msgSend                            ; [[[self endlessModeStatsOrdering] objectAtIndex:arg2] isEqualToString:@"Best score"]
  1000d0870  cbz     w0, loc_1000d090c                        ; if ([[[self endlessModeStatsOrdering] objectAtIndex:arg2] isEqualToString:@"Best score"] == 0)
  1000d0874  adrp    x8, #0x100417000
  1000d0878  nop
  1000d087c  ldr     x1, [x8, #0x3a0]
  1000d0880  mov     x0, x19
  1000d0884  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d0888  mov     x29, x29
  1000d088c  bl      _objc_retainAutoreleasedReturnValue
  1000d0890  mov     x24, x0
  1000d0894  adrp    x8, #0x10041d000
  1000d0898  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000d089c  adrp    x8, #0x100416000
  1000d08a0  nop
  1000d08a4  ldr     x1, [x8, #0xe10]
  1000d08a8  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000d08ac  mov     x29, x29
  1000d08b0  bl      _objc_retainAutoreleasedReturnValue
  1000d08b4  mov     x25, x0
  1000d08b8  adrp    x8, #0x100419000
  1000d08bc  nop
  1000d08c0  ldr     x1, [x8, #0xed0]
  1000d08c4  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] highScore]
  1000d08c8  mov     x2, x0
  1000d08cc  adrp    x8, #0x100418000
  1000d08d0  nop
  1000d08d4  ldr     x1, [x8, #0x7b8]
  1000d08d8  mov     x0, x23
  1000d08dc  bl      _objc_msgSend                            ; [self formattedScoreFromInt:[[ADPersistentStats persistentStats] highScore]]
  1000d08e0  mov     x29, x29
  1000d08e4  bl      _objc_retainAutoreleasedReturnValue
  1000d08e8  mov     x23, x0
  1000d08ec  mov     x0, x24
  1000d08f0  mov     x1, x22
  1000d08f4  mov     x2, x23
  1000d08f8  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:[self formattedScoreFromInt:[[ADPersistentStats persistentStats] highScore]]]
  1000d08fc  mov     x0, x23
  1000d0900  bl      _objc_release
  1000d0904  mov     x0, x25
  1000d0908  b       loc_1000d0a04
loc_1000d090c:
  1000d090c  adrp    x8, #0x10041d000
  1000d0910  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d0914  adrp    x8, #0x100417000
  1000d0918  nop
  1000d091c  ldr     x1, [x8, #0x2e0]
  1000d0920  bl      _objc_msgSend                            ; [NSString class]
  1000d0924  mov     x2, x0
  1000d0928  adrp    x8, #0x100417000
  1000d092c  nop
  1000d0930  ldr     x1, [x8, #0x3b8]
  1000d0934  mov     x0, x21
  1000d0938  bl      _objc_msgSend                            ; [[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]] isKindOfClass:[NSString class]]
  1000d093c  cbz     w0, loc_1000d0974                        ; if ([[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]] isKindOfClass:[NSString class]] == 0)
  1000d0940  adrp    x8, #0x100417000
  1000d0944  nop
  1000d0948  ldr     x1, [x8, #0x3a0]
  1000d094c  mov     x0, x19
  1000d0950  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d0954  mov     x29, x29
  1000d0958  bl      _objc_retainAutoreleasedReturnValue
  1000d095c  mov     x23, x0
  1000d0960  mov     x1, x22
  1000d0964  mov     x2, x21
  1000d0968  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]]]
  1000d096c  b       loc_1000d0a34
  1000d0970  b       loc_1000d0afc
loc_1000d0974:
  1000d0974  adrp    x8, #0x10041a000
  1000d0978  nop
  1000d097c  ldr     x23, [x8, #0xd20]
  1000d0980  mov     x0, x21
  1000d0984  mov     x1, x23
  1000d0988  bl      _objc_msgSend                            ; [[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]] stringValue]
  1000d098c  mov     x29, x29
  1000d0990  bl      _objc_retainAutoreleasedReturnValue
  1000d0994  mov     x24, x0
  1000d0998  adrp    x8, #0x100417000
  1000d099c  nop
  1000d09a0  ldr     x1, [x8, #0xc58]
  1000d09a4  bl      _objc_msgSend                            ; [[[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]] stringValue] length]
  1000d09a8  mov     x25, x0
  1000d09ac  mov     x0, x24
  1000d09b0  bl      _objc_release
  1000d09b4  adrp    x8, #0x100417000
  1000d09b8  add     x8, x8, #0x3a0                           ; &@selector(valueLabel)
  1000d09bc  ldr     x1, [x8]
  1000d09c0  cbz     x25, loc_1000d0a10                       ; if ([[[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]] stringValue] length] == 0)
  1000d09c4  mov     x0, x19
  1000d09c8  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d09cc  mov     x29, x29
  1000d09d0  bl      _objc_retainAutoreleasedReturnValue
  1000d09d4  mov     x24, x0
  1000d09d8  mov     x0, x21
  1000d09dc  mov     x1, x23
  1000d09e0  bl      _objc_msgSend                            ; [[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]] stringValue]
  1000d09e4  mov     x29, x29
  1000d09e8  bl      _objc_retainAutoreleasedReturnValue
  1000d09ec  mov     x23, x0
  1000d09f0  mov     x0, x24
  1000d09f4  mov     x1, x22
  1000d09f8  mov     x2, x23
  1000d09fc  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:[[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:arg2]] stringValue]]
  1000d0a00  mov     x0, x23
loc_1000d0a04:
  1000d0a04  bl      _objc_release
  1000d0a08  mov     x0, x24
  1000d0a0c  b       loc_1000d0a38
loc_1000d0a10:
  1000d0a10  mov     x0, x19
  1000d0a14  bl      _objc_msgSend                            ; [arg1 valueLabel]
  1000d0a18  mov     x29, x29
  1000d0a1c  bl      _objc_retainAutoreleasedReturnValue
  1000d0a20  mov     x23, x0
  1000d0a24  adrp    x2, #0x1003bb000
  1000d0a28  add     x2, x2, #0xe30                           ; @"0"
  1000d0a2c  mov     x1, x22
  1000d0a30  bl      _objc_msgSend                            ; [[arg1 valueLabel] setText:@"0"]
loc_1000d0a34:
  1000d0a34  mov     x0, x23
loc_1000d0a38:
  1000d0a38  bl      _objc_release
  1000d0a3c  mov     x0, x21
  1000d0a40  bl      _objc_release
  1000d0a44  mov     x0, x20
  1000d0a48  bl      _objc_release
  1000d0a4c  mov     x0, x19
  1000d0a50  ldp     x29, x30, [sp, #0x40]
  1000d0a54  ldp     x20, x19, [sp, #0x30]
  1000d0a58  ldp     x22, x21, [sp, #0x20]
  1000d0a5c  ldp     x24, x23, [sp, #0x10]
  1000d0a60  ldp     x26, x25, [sp], #0x50
  1000d0a64  b       _objc_autoreleaseReturnValue
  1000d0a68  mov     x22, x0
  1000d0a6c  b       loc_1000d0ad0
  1000d0a70  mov     x22, x0
  1000d0a74  b       loc_1000d0ae0
  1000d0a78  mov     x22, x0
  1000d0a7c  mov     x0, x21
  1000d0a80  b       loc_1000d0adc
  1000d0a84  mov     x22, x0
  1000d0a88  b       loc_1000d0ad8
  1000d0a8c  mov     x22, x0
  1000d0a90  mov     x0, x24
  1000d0a94  b       loc_1000d0ad4
  1000d0a98  b       loc_1000d0ac4
  1000d0a9c  mov     x22, x0
  1000d0aa0  b       loc_1000d0ab4
  1000d0aa4  b       loc_1000d0ac4
  1000d0aa8  mov     x22, x0
  1000d0aac  mov     x0, x23
  1000d0ab0  bl      _objc_release
loc_1000d0ab4:
  1000d0ab4  mov     x0, x25
loc_1000d0ab8:
  1000d0ab8  bl      _objc_release
  1000d0abc  b       loc_1000d0ac8
  1000d0ac0  b       loc_1000d0ac4
loc_1000d0ac4:
  1000d0ac4  mov     x22, x0
loc_1000d0ac8:
  1000d0ac8  mov     x0, x24
  1000d0acc  bl      _objc_release
loc_1000d0ad0:
  1000d0ad0  mov     x0, x21
loc_1000d0ad4:
  1000d0ad4  bl      _objc_release
loc_1000d0ad8:
  1000d0ad8  mov     x0, x20
loc_1000d0adc:
  1000d0adc  bl      _objc_release
loc_1000d0ae0:
  1000d0ae0  mov     x0, x19
  1000d0ae4  bl      _objc_release
  1000d0ae8  mov     x0, x22
  1000d0aec  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d0af0  mov     x22, x0
  1000d0af4  mov     x0, x23
  1000d0af8  b       loc_1000d0ab8
loc_1000d0afc:
  1000d0afc  mov     x22, x0
  1000d0b00  mov     x0, x23
  1000d0b04  bl      _objc_release
  1000d0b08  b       loc_1000d0ad0

; ======================================================================
; -[ADStatsViewController formattedScoreFromInt:]
; address 0x1000d0b0c  size 232  kind objc
; ======================================================================
  1000d0b0c  stp     x22, x21, [sp, #-0x30]!
  1000d0b10  stp     x20, x19, [sp, #0x10]
  1000d0b14  stp     x29, x30, [sp, #0x20]
  1000d0b18  add     x29, sp, #0x20
  1000d0b1c  mov     x20, x2
  1000d0b20  adrp    x8, #0x10041e000
  1000d0b24  ldr     x0, [x8, #0x190]                         ; class NSNumberFormatter
  1000d0b28  adrp    x8, #0x100416000
  1000d0b2c  nop
  1000d0b30  ldr     x1, [x8, #0xac8]
  1000d0b34  bl      _objc_msgSend                            ; [NSNumberFormatter alloc]
  1000d0b38  adrp    x8, #0x100416000
  1000d0b3c  nop
  1000d0b40  ldr     x1, [x8, #0xab8]
  1000d0b44  bl      _objc_msgSend                            ; [[NSNumberFormatter alloc] init]
  1000d0b48  mov     x19, x0
  1000d0b4c  adrp    x8, #0x100418000
  1000d0b50  nop
  1000d0b54  ldr     x1, [x8, #0x810]
  1000d0b58  mov     w2, #1
  1000d0b5c  bl      _objc_msgSend                            ; [[[NSNumberFormatter alloc] init] setNumberStyle:1]
  1000d0b60  adrp    x8, #0x10041d000
  1000d0b64  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000d0b68  adrp    x8, #0x100416000
  1000d0b6c  nop
  1000d0b70  ldr     x1, [x8, #0xec0]
  1000d0b74  mov     x2, x20
  1000d0b78  bl      _objc_msgSend                            ; [NSNumber numberWithInt:arg1]
  1000d0b7c  mov     x29, x29
  1000d0b80  bl      _objc_retainAutoreleasedReturnValue
  1000d0b84  mov     x20, x0
  1000d0b88  adrp    x8, #0x100418000
  1000d0b8c  nop
  1000d0b90  ldr     x1, [x8, #0x818]
  1000d0b94  mov     x0, x19
  1000d0b98  mov     x2, x20
  1000d0b9c  bl      _objc_msgSend                            ; [[[NSNumberFormatter alloc] init] stringFromNumber:[NSNumber numberWithInt:arg1]]
  1000d0ba0  mov     x29, x29
  1000d0ba4  bl      _objc_retainAutoreleasedReturnValue
  1000d0ba8  mov     x21, x0
  1000d0bac  mov     x0, x20
  1000d0bb0  bl      _objc_release
  1000d0bb4  mov     x0, x19
  1000d0bb8  bl      _objc_release
  1000d0bbc  mov     x0, x21
  1000d0bc0  ldp     x29, x30, [sp, #0x20]
  1000d0bc4  ldp     x20, x19, [sp, #0x10]
  1000d0bc8  ldp     x22, x21, [sp], #0x30
  1000d0bcc  b       _objc_autoreleaseReturnValue
  1000d0bd0  mov     x21, x0
  1000d0bd4  b       loc_1000d0be4
  1000d0bd8  mov     x21, x0
  1000d0bdc  mov     x0, x20
  1000d0be0  bl      _objc_release
loc_1000d0be4:
  1000d0be4  mov     x0, x19
  1000d0be8  bl      _objc_release
  1000d0bec  mov     x0, x21
  1000d0bf0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController configureEnemyCell:ForRow:]
; address 0x1000d0bf4  size 1020  kind objc
; ======================================================================
  1000d0bf4  stp     x28, x27, [sp, #-0x60]!
  1000d0bf8  stp     x26, x25, [sp, #0x10]
  1000d0bfc  stp     x24, x23, [sp, #0x20]
  1000d0c00  stp     x22, x21, [sp, #0x30]
  1000d0c04  stp     x20, x19, [sp, #0x40]
  1000d0c08  stp     x29, x30, [sp, #0x50]
  1000d0c0c  add     x29, sp, #0x50
  1000d0c10  sub     sp, sp, #0x40
  1000d0c14  mov     x20, x3
  1000d0c18  mov     x21, x0
  1000d0c1c  adrp    x22, #0x1003b0000
  1000d0c20  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000d0c24  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000d0c28  str     x22, [sp, #0x38]
  1000d0c2c  mov     x0, x2
  1000d0c30  bl      _objc_retain
  1000d0c34  mov     x28, x0
  1000d0c38  adrp    x8, #0x10041a000
  1000d0c3c  nop
  1000d0c40  ldr     x1, [x8, #0xd08]
  1000d0c44  mov     x0, x21
  1000d0c48  bl      _objc_msgSend                            ; [self enemiesData]
  1000d0c4c  mov     x29, x29
  1000d0c50  bl      _objc_retainAutoreleasedReturnValue
  1000d0c54  mov     x21, x0
  1000d0c58  adrp    x8, #0x100416000
  1000d0c5c  nop
  1000d0c60  ldr     x1, [x8, #0xc30]
  1000d0c64  mov     x2, x20
  1000d0c68  bl      _objc_msgSend                            ; [[self enemiesData] objectAtIndex:arg2]
  1000d0c6c  mov     x29, x29
  1000d0c70  bl      _objc_retainAutoreleasedReturnValue
  1000d0c74  mov     x20, x0
  1000d0c78  mov     x0, x21
  1000d0c7c  bl      _objc_release
  1000d0c80  adrp    x8, #0x100417000
  1000d0c84  nop
  1000d0c88  ldr     x24, [x8, #0x40]
  1000d0c8c  adrp    x2, #0x1003b9000
  1000d0c90  add     x2, x2, #0xdb0                           ; @"name"
  1000d0c94  mov     x0, x20
  1000d0c98  mov     x1, x24
  1000d0c9c  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:arg2] objectForKey:@"name"]
  1000d0ca0  mov     x29, x29
  1000d0ca4  bl      _objc_retainAutoreleasedReturnValue
  1000d0ca8  str     x0, [sp, #0x10]
  1000d0cac  adrp    x23, #0x1003ba000
  1000d0cb0  add     x23, x23, #0x230                         ; @"kills"
  1000d0cb4  mov     x0, x20
  1000d0cb8  mov     x1, x24
  1000d0cbc  mov     x2, x23
  1000d0cc0  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:arg2] objectForKey:@"kills"]
  1000d0cc4  mov     x29, x29
  1000d0cc8  bl      _objc_retainAutoreleasedReturnValue
  1000d0ccc  mov     x25, x0
  1000d0cd0  adrp    x19, #0x10041d000
  1000d0cd4  ldr     x0, [x19, #0xf78]                        ; class NSString
  1000d0cd8  adrp    x8, #0x100417000
  1000d0cdc  nop
  1000d0ce0  ldr     x26, [x8, #0x2e0]
  1000d0ce4  mov     x1, x26
  1000d0ce8  bl      _objc_msgSend                            ; [NSString class]
  1000d0cec  mov     x2, x0
  1000d0cf0  adrp    x8, #0x100417000
  1000d0cf4  nop
  1000d0cf8  ldr     x27, [x8, #0x3b8]
  1000d0cfc  mov     x0, x25
  1000d0d00  mov     x1, x27
  1000d0d04  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:arg2] objectForKey:@"kills"] isKindOfClass:[NSString class]]
  1000d0d08  cbz     w0, loc_1000d0d34                        ; if ([[[[self enemiesData] objectAtIndex:arg2] objectForKey:@"kills"] isKindOfClass:[NSString class]] == 0)
  1000d0d0c  adrp    x2, #0x1003ba000
  1000d0d10  add     x2, x2, #0x230                           ; @"kills"
  1000d0d14  mov     x0, x20
  1000d0d18  mov     x1, x24
  1000d0d1c  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:arg2] objectForKey:@"kills"]
  1000d0d20  mov     x21, x22
  1000d0d24  mov     x29, x29
  1000d0d28  bl      _objc_retainAutoreleasedReturnValue
  1000d0d2c  mov     x22, x0
  1000d0d30  b       loc_1000d0d84
loc_1000d0d34:
  1000d0d34  str     x28, [sp, #8]
  1000d0d38  adrp    x2, #0x1003ba000
  1000d0d3c  add     x2, x2, #0x230                           ; @"kills"
  1000d0d40  mov     x0, x20
  1000d0d44  mov     x1, x24
  1000d0d48  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:arg2] objectForKey:@"kills"]
  1000d0d4c  mov     x21, x22
  1000d0d50  mov     x29, x29
  1000d0d54  bl      _objc_retainAutoreleasedReturnValue
  1000d0d58  mov     x28, x0
  1000d0d5c  adrp    x8, #0x10041a000
  1000d0d60  nop
  1000d0d64  ldr     x1, [x8, #0xd20]
  1000d0d68  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:arg2] objectForKey:@"kills"] stringValue]
  1000d0d6c  mov     x29, x29
  1000d0d70  bl      _objc_retainAutoreleasedReturnValue
  1000d0d74  mov     x22, x0
  1000d0d78  mov     x0, x28
  1000d0d7c  bl      _objc_release
  1000d0d80  ldr     x28, [sp, #8]
loc_1000d0d84:
  1000d0d84  mov     x0, x25
  1000d0d88  bl      _objc_release
  1000d0d8c  adrp    x2, #0x1003c2000
  1000d0d90  add     x2, x2, #0x4b0                           ; @"casualty"
  1000d0d94  mov     x0, x20
  1000d0d98  mov     x1, x24
  1000d0d9c  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:arg2] objectForKey:@"casualty"]
  1000d0da0  mov     x29, x29
  1000d0da4  bl      _objc_retainAutoreleasedReturnValue
  1000d0da8  mov     x25, x0
  1000d0dac  ldr     x0, [x19, #0xf78]                        ; class NSString
  1000d0db0  mov     x1, x26
  1000d0db4  bl      _objc_msgSend                            ; [NSString class]
  1000d0db8  mov     x2, x0
  1000d0dbc  mov     x0, x25
  1000d0dc0  mov     x1, x27
  1000d0dc4  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:arg2] objectForKey:@"casualty"] isKindOfClass:[NSString class]]
  1000d0dc8  cbz     w0, loc_1000d0df0                        ; if ([[[[self enemiesData] objectAtIndex:arg2] objectForKey:@"casualty"] isKindOfClass:[NSString class]] == 0)
  1000d0dcc  adrp    x2, #0x1003c2000
  1000d0dd0  add     x2, x2, #0x4b0                           ; @"casualty"
  1000d0dd4  mov     x0, x20
  1000d0dd8  mov     x1, x24
  1000d0ddc  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:arg2] objectForKey:@"casualty"]
  1000d0de0  mov     x29, x29
  1000d0de4  bl      _objc_retainAutoreleasedReturnValue
  1000d0de8  mov     x24, x0
  1000d0dec  b       loc_1000d0e34
loc_1000d0df0:
  1000d0df0  adrp    x2, #0x1003c2000
  1000d0df4  add     x2, x2, #0x4b0                           ; @"casualty"
  1000d0df8  mov     x0, x20
  1000d0dfc  mov     x1, x24
  1000d0e00  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:arg2] objectForKey:@"casualty"]
  1000d0e04  mov     x29, x29
  1000d0e08  bl      _objc_retainAutoreleasedReturnValue
  1000d0e0c  mov     x26, x0
  1000d0e10  adrp    x8, #0x10041a000
  1000d0e14  nop
  1000d0e18  ldr     x1, [x8, #0xd20]
  1000d0e1c  bl      _objc_msgSend                            ; [[[[self enemiesData] objectAtIndex:arg2] objectForKey:@"casualty"] stringValue]
  1000d0e20  mov     x29, x29
  1000d0e24  bl      _objc_retainAutoreleasedReturnValue
  1000d0e28  mov     x24, x0
  1000d0e2c  mov     x0, x26
  1000d0e30  bl      _objc_release
loc_1000d0e34:
  1000d0e34  mov     x0, x25
  1000d0e38  bl      _objc_release
  1000d0e3c  adrp    x8, #0x1003c2000
  1000d0e40  add     x8, x8, #0x4f0                           ; @"casualties"
  1000d0e44  stp     x23, x8, [sp, #0x28]
  1000d0e48  adrp    x19, #0x10041d000
  1000d0e4c  ldr     x0, [x19, #0xf20]                        ; class NSArray
  1000d0e50  adrp    x8, #0x100417000
  1000d0e54  nop
  1000d0e58  ldr     x23, [x8, #0x3c8]
  1000d0e5c  add     x2, sp, #0x28
  1000d0e60  mov     w3, #2
  1000d0e64  mov     x1, x23
  1000d0e68  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x28] count:2]
  1000d0e6c  bl      _objc_retain
  1000d0e70  mov     x25, x0
  1000d0e74  stp     x22, x24, [sp, #0x18]
  1000d0e78  ldr     x0, [x19, #0xf20]                        ; class NSArray
  1000d0e7c  add     x2, sp, #0x18
  1000d0e80  mov     w3, #2
  1000d0e84  mov     x1, x23
  1000d0e88  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x18] count:2]
  1000d0e8c  mov     x4, x0
  1000d0e90  adrp    x8, #0x100417000
  1000d0e94  nop
  1000d0e98  ldr     x1, [x8, #0x3d0]
  1000d0e9c  mov     x0, x28
  1000d0ea0  ldr     x19, [sp, #0x10]
  1000d0ea4  mov     x2, x19
  1000d0ea8  mov     x3, x25
  1000d0eac  bl      _objc_msgSend                            ; [arg1 populateWithSubtitleString:[[[self enemiesData] objectAtIndex:arg2] objectForKey:@"name"] Keys:[NSArray arrayWithObjects:&sp[0x28] count:2] Values:[NSArray arrayWithObjects:&sp[0x18] count:2]]
  1000d0eb0  mov     x0, x25
  1000d0eb4  bl      _objc_release
  1000d0eb8  mov     x0, x24
  1000d0ebc  bl      _objc_release
  1000d0ec0  mov     x0, x22
  1000d0ec4  bl      _objc_release
  1000d0ec8  mov     x0, x19
  1000d0ecc  bl      _objc_release
  1000d0ed0  mov     x0, x20
  1000d0ed4  bl      _objc_release
  1000d0ed8  mov     x0, x28
  1000d0edc  bl      _objc_release
  1000d0ee0  ldr     x8, [sp, #0x38]
  1000d0ee4  sub     x8, x21, x8
  1000d0ee8  cbnz    x8, loc_1000d0f0c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d0eec  sub     sp, x29, #0x50
  1000d0ef0  ldp     x29, x30, [sp, #0x50]
  1000d0ef4  ldp     x20, x19, [sp, #0x40]
  1000d0ef8  ldp     x22, x21, [sp, #0x30]
  1000d0efc  ldp     x24, x23, [sp, #0x20]
  1000d0f00  ldp     x26, x25, [sp, #0x10]
  1000d0f04  ldp     x28, x27, [sp], #0x60
  1000d0f08  ret
loc_1000d0f0c:
  1000d0f0c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000d0f10  str     x28, [sp, #8]
  1000d0f14  mov     x23, x0
  1000d0f18  b       loc_1000d0f9c
  1000d0f1c  b       loc_1000d0fa4
  1000d0f20  str     x28, [sp, #8]
  1000d0f24  mov     x23, x0
  1000d0f28  b       loc_1000d0fcc
  1000d0f2c  str     x28, [sp, #8]
  1000d0f30  mov     x23, x0
  1000d0f34  mov     x0, x21
  1000d0f38  b       loc_1000d0fc8
  1000d0f3c  str     x28, [sp, #8]
  1000d0f40  mov     x23, x0
  1000d0f44  b       loc_1000d0fc4
  1000d0f48  str     x28, [sp, #8]
  1000d0f4c  mov     x23, x0
  1000d0f50  b       loc_1000d0fbc
  1000d0f54  str     x28, [sp, #8]
  1000d0f58  mov     x23, x0
  1000d0f5c  b       loc_1000d0fb4
  1000d0f60  str     x28, [sp, #8]
  1000d0f64  mov     x23, x0
  1000d0f68  b       loc_1000d0f80
  1000d0f6c  b       loc_1000d0f70
loc_1000d0f70:
  1000d0f70  str     x28, [sp, #8]
  1000d0f74  mov     x23, x0
  1000d0f78  mov     x0, x25
  1000d0f7c  bl      _objc_release
loc_1000d0f80:
  1000d0f80  mov     x0, x24
  1000d0f84  b       loc_1000d0fb0
  1000d0f88  mov     x23, x0
  1000d0f8c  b       loc_1000d0f9c
  1000d0f90  mov     x23, x0
  1000d0f94  mov     x0, x28
  1000d0f98  bl      _objc_release
loc_1000d0f9c:
  1000d0f9c  mov     x0, x25
  1000d0fa0  b       loc_1000d0fb8
loc_1000d0fa4:
  1000d0fa4  str     x28, [sp, #8]
  1000d0fa8  mov     x23, x0
loc_1000d0fac:
  1000d0fac  mov     x0, x25
loc_1000d0fb0:
  1000d0fb0  bl      _objc_release
loc_1000d0fb4:
  1000d0fb4  mov     x0, x22
loc_1000d0fb8:
  1000d0fb8  bl      _objc_release
loc_1000d0fbc:
  1000d0fbc  ldr     x0, [sp, #0x10]
  1000d0fc0  bl      _objc_release
loc_1000d0fc4:
  1000d0fc4  mov     x0, x20
loc_1000d0fc8:
  1000d0fc8  bl      _objc_release
loc_1000d0fcc:
  1000d0fcc  ldr     x0, [sp, #8]
  1000d0fd0  bl      _objc_release
  1000d0fd4  mov     x0, x23
  1000d0fd8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d0fdc  str     x28, [sp, #8]
  1000d0fe0  mov     x23, x0
  1000d0fe4  mov     x0, x26
  1000d0fe8  bl      _objc_release
  1000d0fec  b       loc_1000d0fac

; ======================================================================
; -[ADStatsViewController configureWeaponCell:ForRow:]
; address 0x1000d0ff0  size 1164  kind objc
; ======================================================================
  1000d0ff0  stp     x28, x27, [sp, #-0x60]!
  1000d0ff4  stp     x26, x25, [sp, #0x10]
  1000d0ff8  stp     x24, x23, [sp, #0x20]
  1000d0ffc  stp     x22, x21, [sp, #0x30]
  1000d1000  stp     x20, x19, [sp, #0x40]
  1000d1004  stp     x29, x30, [sp, #0x50]
  1000d1008  add     x29, sp, #0x50
  1000d100c  sub     sp, sp, #0x50
  1000d1010  mov     x19, x3
  1000d1014  mov     x20, x0
  1000d1018  adrp    x8, #0x1003b0000
  1000d101c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000d1020  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000d1024  str     x8, [sp, #0x48]
  1000d1028  mov     x0, x2
  1000d102c  bl      _objc_retain
  1000d1030  str     x0, [sp, #0x20]
  1000d1034  adrp    x8, #0x10041a000
  1000d1038  nop
  1000d103c  ldr     x1, [x8, #0x898]
  1000d1040  mov     x0, x20
  1000d1044  bl      _objc_msgSend                            ; [self weaponsData]
  1000d1048  mov     x29, x29
  1000d104c  bl      _objc_retainAutoreleasedReturnValue
  1000d1050  mov     x21, x0
  1000d1054  adrp    x8, #0x100416000
  1000d1058  nop
  1000d105c  ldr     x23, [x8, #0xc30]
  1000d1060  mov     x1, x23
  1000d1064  mov     x2, x19
  1000d1068  bl      _objc_msgSend                            ; [[self weaponsData] objectAtIndex:arg2]
  1000d106c  mov     x29, x29
  1000d1070  bl      _objc_retainAutoreleasedReturnValue
  1000d1074  mov     x20, x0
  1000d1078  mov     x0, x21
  1000d107c  bl      _objc_release
  1000d1080  adrp    x8, #0x100417000
  1000d1084  nop
  1000d1088  ldr     x25, [x8, #0x40]
  1000d108c  adrp    x2, #0x1003b9000
  1000d1090  add     x2, x2, #0xdb0                           ; @"name"
  1000d1094  mov     x0, x20
  1000d1098  mov     x1, x25
  1000d109c  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:arg2] objectForKey:@"name"]
  1000d10a0  mov     x29, x29
  1000d10a4  bl      _objc_retainAutoreleasedReturnValue
  1000d10a8  str     x0, [sp, #0x18]
  1000d10ac  adrp    x19, #0x1003ba000
  1000d10b0  add     x19, x19, #0x230                         ; @"kills"
  1000d10b4  mov     x0, x20
  1000d10b8  mov     x1, x25
  1000d10bc  mov     x2, x19
  1000d10c0  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:arg2] objectForKey:@"kills"]
  1000d10c4  mov     x29, x29
  1000d10c8  bl      _objc_retainAutoreleasedReturnValue
  1000d10cc  mov     x26, x0
  1000d10d0  adrp    x24, #0x10041d000
  1000d10d4  ldr     x0, [x24, #0xf78]                        ; class NSString
  1000d10d8  adrp    x8, #0x100417000
  1000d10dc  nop
  1000d10e0  ldr     x27, [x8, #0x2e0]
  1000d10e4  mov     x1, x27
  1000d10e8  bl      _objc_msgSend                            ; [NSString class]
  1000d10ec  mov     x2, x0
  1000d10f0  adrp    x8, #0x100417000
  1000d10f4  nop
  1000d10f8  ldr     x28, [x8, #0x3b8]
  1000d10fc  mov     x0, x26
  1000d1100  mov     x1, x28
  1000d1104  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:arg2] objectForKey:@"kills"] isKindOfClass:[NSString class]]
  1000d1108  cbz     w0, loc_1000d1134                        ; if ([[[[self weaponsData] objectAtIndex:arg2] objectForKey:@"kills"] isKindOfClass:[NSString class]] == 0)
  1000d110c  adrp    x2, #0x1003ba000
  1000d1110  add     x2, x2, #0x230                           ; @"kills"
  1000d1114  mov     x0, x20
  1000d1118  mov     x1, x25
  1000d111c  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:arg2] objectForKey:@"kills"]
  1000d1120  mov     x21, x19
  1000d1124  mov     x29, x29
  1000d1128  bl      _objc_retainAutoreleasedReturnValue
  1000d112c  mov     x22, x0
  1000d1130  b       loc_1000d117c
loc_1000d1134:
  1000d1134  mov     x21, x19
  1000d1138  adrp    x2, #0x1003ba000
  1000d113c  add     x2, x2, #0x230                           ; @"kills"
  1000d1140  mov     x0, x20
  1000d1144  mov     x1, x25
  1000d1148  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:arg2] objectForKey:@"kills"]
  1000d114c  mov     x29, x29
  1000d1150  bl      _objc_retainAutoreleasedReturnValue
  1000d1154  mov     x19, x0
  1000d1158  adrp    x8, #0x10041a000
  1000d115c  nop
  1000d1160  ldr     x1, [x8, #0xd20]
  1000d1164  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:arg2] objectForKey:@"kills"] stringValue]
  1000d1168  mov     x29, x29
  1000d116c  bl      _objc_retainAutoreleasedReturnValue
  1000d1170  mov     x22, x0
  1000d1174  mov     x0, x19
  1000d1178  bl      _objc_release
loc_1000d117c:
  1000d117c  mov     x0, x26
  1000d1180  bl      _objc_release
  1000d1184  adrp    x26, #0x1003bb000
  1000d1188  add     x26, x26, #0xdb0                         ; @"accuracy"
  1000d118c  mov     x0, x20
  1000d1190  mov     x1, x25
  1000d1194  mov     x2, x26
  1000d1198  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:arg2] objectForKey:@"accuracy"]
  1000d119c  mov     x29, x29
  1000d11a0  bl      _objc_retainAutoreleasedReturnValue
  1000d11a4  mov     x19, x0
  1000d11a8  ldr     x0, [x24, #0xf78]                        ; class NSString
  1000d11ac  mov     x1, x27
  1000d11b0  bl      _objc_msgSend                            ; [NSString class]
  1000d11b4  mov     x2, x0
  1000d11b8  mov     x0, x19
  1000d11bc  mov     x1, x28
  1000d11c0  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:arg2] objectForKey:@"accuracy"] isKindOfClass:[NSString class]]
  1000d11c4  cbz     w0, loc_1000d11ec                        ; if ([[[[self weaponsData] objectAtIndex:arg2] objectForKey:@"accuracy"] isKindOfClass:[NSString class]] == 0)
  1000d11c8  adrp    x2, #0x1003bb000
  1000d11cc  add     x2, x2, #0xdb0                           ; @"accuracy"
  1000d11d0  mov     x0, x20
  1000d11d4  mov     x1, x25
  1000d11d8  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:arg2] objectForKey:@"accuracy"]
  1000d11dc  mov     x29, x29
  1000d11e0  bl      _objc_retainAutoreleasedReturnValue
  1000d11e4  mov     x25, x0
  1000d11e8  b       loc_1000d1230
loc_1000d11ec:
  1000d11ec  adrp    x2, #0x1003bb000
  1000d11f0  add     x2, x2, #0xdb0                           ; @"accuracy"
  1000d11f4  mov     x0, x20
  1000d11f8  mov     x1, x25
  1000d11fc  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:arg2] objectForKey:@"accuracy"]
  1000d1200  mov     x29, x29
  1000d1204  bl      _objc_retainAutoreleasedReturnValue
  1000d1208  mov     x27, x0
  1000d120c  adrp    x8, #0x10041a000
  1000d1210  nop
  1000d1214  ldr     x1, [x8, #0xd20]
  1000d1218  bl      _objc_msgSend                            ; [[[[self weaponsData] objectAtIndex:arg2] objectForKey:@"accuracy"] stringValue]
  1000d121c  mov     x29, x29
  1000d1220  bl      _objc_retainAutoreleasedReturnValue
  1000d1224  mov     x25, x0
  1000d1228  mov     x0, x27
  1000d122c  bl      _objc_release
loc_1000d1230:
  1000d1230  mov     x0, x19
  1000d1234  bl      _objc_release
  1000d1238  adrp    x8, #0x100419000
  1000d123c  nop
  1000d1240  ldr     x1, [x8, #0x188]
  1000d1244  adrp    x2, #0x1003be000
  1000d1248  add     x2, x2, #0x9f0                           ; @"."
  1000d124c  mov     x0, x25
  1000d1250  bl      _objc_msgSend                            ; [x0 componentsSeparatedByString:@"."]
  1000d1254  mov     x29, x29
  1000d1258  bl      _objc_retainAutoreleasedReturnValue
  1000d125c  mov     x27, x0
  1000d1260  mov     x2, #0
  1000d1264  mov     x1, x23
  1000d1268  bl      _objc_msgSend                            ; [[x0 componentsSeparatedByString:@"."] objectAtIndex:0]
  1000d126c  mov     x29, x29
  1000d1270  bl      _objc_retainAutoreleasedReturnValue
  1000d1274  mov     x19, x0
  1000d1278  mov     x0, x27
  1000d127c  bl      _objc_release
  1000d1280  ldr     x0, [x24, #0xf78]                        ; class NSString
  1000d1284  adrp    x8, #0x100416000
  1000d1288  nop
  1000d128c  ldr     x1, [x8, #0xee8]
  1000d1290  str     x19, [sp]
  1000d1294  adrp    x2, #0x1003c2000
  1000d1298  add     x2, x2, #0x4d0                           ; @"%@%%"
  1000d129c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%%", [[x0 componentsSeparatedByString:@"."] objectAtIndex:0]]
  1000d12a0  mov     x29, x29
  1000d12a4  bl      _objc_retainAutoreleasedReturnValue
  1000d12a8  mov     x27, x0
  1000d12ac  stp     x21, x26, [sp, #0x38]
  1000d12b0  adrp    x26, #0x10041d000
  1000d12b4  ldr     x0, [x26, #0xf20]                        ; class NSArray
  1000d12b8  adrp    x8, #0x100417000
  1000d12bc  nop
  1000d12c0  ldr     x23, [x8, #0x3c8]
  1000d12c4  add     x2, sp, #0x38
  1000d12c8  mov     w3, #2
  1000d12cc  mov     x1, x23
  1000d12d0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x38] count:2]
  1000d12d4  bl      _objc_retain
  1000d12d8  mov     x24, x0
  1000d12dc  stp     x22, x27, [sp, #0x28]
  1000d12e0  ldr     x0, [x26, #0xf20]                        ; class NSArray
  1000d12e4  add     x2, sp, #0x28
  1000d12e8  mov     w3, #2
  1000d12ec  mov     x1, x23
  1000d12f0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x28] count:2]
  1000d12f4  mov     x4, x0
  1000d12f8  adrp    x8, #0x100417000
  1000d12fc  nop
  1000d1300  ldr     x1, [x8, #0x3d0]
  1000d1304  ldp     x26, x23, [sp, #0x18]
  1000d1308  mov     x0, x23
  1000d130c  mov     x2, x26
  1000d1310  mov     x3, x24
  1000d1314  bl      _objc_msgSend                            ; [arg1 populateWithSubtitleString:[[[self weaponsData] objectAtIndex:arg2] objectForKey:@"name"] Keys:[NSArray arrayWithObjects:&sp[0x38] count:2] Values:[NSArray arrayWithObjects:&sp[0x28] count:2]]
  1000d1318  mov     x0, x24
  1000d131c  bl      _objc_release
  1000d1320  mov     x0, x27
  1000d1324  bl      _objc_release
  1000d1328  mov     x0, x19
  1000d132c  bl      _objc_release
  1000d1330  mov     x0, x25
  1000d1334  bl      _objc_release
  1000d1338  mov     x0, x22
  1000d133c  bl      _objc_release
  1000d1340  mov     x0, x26
  1000d1344  bl      _objc_release
  1000d1348  mov     x0, x20
  1000d134c  bl      _objc_release
  1000d1350  mov     x0, x23
  1000d1354  bl      _objc_release
  1000d1358  ldr     x8, [sp, #0x48]
  1000d135c  adrp    x9, #0x1003b0000
  1000d1360  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000d1364  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000d1368  sub     x8, x9, x8
  1000d136c  cbnz    x8, loc_1000d1390                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d1370  sub     sp, x29, #0x50
  1000d1374  ldp     x29, x30, [sp, #0x50]
  1000d1378  ldp     x20, x19, [sp, #0x40]
  1000d137c  ldp     x22, x21, [sp, #0x30]
  1000d1380  ldp     x24, x23, [sp, #0x20]
  1000d1384  ldp     x26, x25, [sp, #0x10]
  1000d1388  ldp     x28, x27, [sp], #0x60
  1000d138c  ret
loc_1000d1390:
  1000d1390  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000d1394  mov     x23, x0
  1000d1398  b       loc_1000d1430
  1000d139c  mov     x23, x0
  1000d13a0  b       loc_1000d144c
  1000d13a4  mov     x23, x0
  1000d13a8  b       loc_1000d146c
  1000d13ac  mov     x23, x0
  1000d13b0  mov     x0, x21
  1000d13b4  b       loc_1000d1468
  1000d13b8  mov     x23, x0
  1000d13bc  b       loc_1000d1464
  1000d13c0  mov     x23, x0
  1000d13c4  b       loc_1000d145c
  1000d13c8  mov     x23, x0
  1000d13cc  b       loc_1000d1454
  1000d13d0  mov     x23, x0
  1000d13d4  b       loc_1000d1414
  1000d13d8  mov     x23, x0
  1000d13dc  mov     x0, x27
  1000d13e0  b       loc_1000d1410
  1000d13e4  mov     x23, x0
  1000d13e8  b       loc_1000d140c
  1000d13ec  mov     x23, x0
  1000d13f0  b       loc_1000d1404
  1000d13f4  b       loc_1000d13f8
loc_1000d13f8:
  1000d13f8  mov     x23, x0
  1000d13fc  mov     x0, x24
  1000d1400  bl      _objc_release
loc_1000d1404:
  1000d1404  mov     x0, x27
  1000d1408  bl      _objc_release
loc_1000d140c:
  1000d140c  mov     x0, x19
loc_1000d1410:
  1000d1410  bl      _objc_release
loc_1000d1414:
  1000d1414  mov     x0, x25
  1000d1418  b       loc_1000d1450
  1000d141c  mov     x23, x0
  1000d1420  b       loc_1000d1430
  1000d1424  mov     x23, x0
  1000d1428  mov     x0, x19
  1000d142c  bl      _objc_release
loc_1000d1430:
  1000d1430  mov     x0, x26
  1000d1434  b       loc_1000d1458
  1000d1438  mov     x23, x0
  1000d143c  b       loc_1000d144c
  1000d1440  mov     x23, x0
  1000d1444  mov     x0, x27
  1000d1448  bl      _objc_release
loc_1000d144c:
  1000d144c  mov     x0, x19
loc_1000d1450:
  1000d1450  bl      _objc_release
loc_1000d1454:
  1000d1454  mov     x0, x22
loc_1000d1458:
  1000d1458  bl      _objc_release
loc_1000d145c:
  1000d145c  ldr     x0, [sp, #0x18]
  1000d1460  bl      _objc_release
loc_1000d1464:
  1000d1464  mov     x0, x20
loc_1000d1468:
  1000d1468  bl      _objc_release
loc_1000d146c:
  1000d146c  ldr     x0, [sp, #0x20]
  1000d1470  bl      _objc_release
  1000d1474  mov     x0, x23
  1000d1478  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController tableView:cellForRowAtIndexPath:]
; address 0x1000d147c  size 4488  kind objc
; ======================================================================
  1000d147c  stp     d9, d8, [sp, #-0x70]!
  1000d1480  stp     x28, x27, [sp, #0x10]
  1000d1484  stp     x26, x25, [sp, #0x20]
  1000d1488  stp     x24, x23, [sp, #0x30]
  1000d148c  stp     x22, x21, [sp, #0x40]
  1000d1490  stp     x20, x19, [sp, #0x50]
  1000d1494  stp     x29, x30, [sp, #0x60]
  1000d1498  add     x29, sp, #0x60
  1000d149c  sub     sp, sp, #0x20
  1000d14a0  mov     x19, x3
  1000d14a4  mov     x22, x0
  1000d14a8  mov     x0, x2
  1000d14ac  bl      _objc_retain
  1000d14b0  mov     x28, x0
  1000d14b4  mov     x0, x19
  1000d14b8  bl      _objc_retain
  1000d14bc  mov     x20, x0
  1000d14c0  adrp    x8, #0x100417000
  1000d14c4  nop
  1000d14c8  ldr     x1, [x8, #0x348]
  1000d14cc  bl      _objc_msgSend                            ; [arg2 section]
  1000d14d0  cmp     x0, #3
  1000d14d4  b.ls    loc_1000d1508                            ; if ([arg2 section] <=u 3)
  1000d14d8  adrp    x8, #0x100417000
  1000d14dc  nop
  1000d14e0  ldr     x1, [x8, #0xb50]
  1000d14e4  adrp    x2, #0x1003c2000
  1000d14e8  add     x2, x2, #0x350                           ; @"standardCellID"
  1000d14ec  mov     x0, x28
  1000d14f0  mov     x3, x20
  1000d14f4  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"standardCellID" forIndexPath:arg2]
  1000d14f8  mov     x29, x29
  1000d14fc  bl      _objc_retainAutoreleasedReturnValue
  1000d1500  mov     x21, x0
  1000d1504  b       loc_1000d2318
loc_1000d1508:
  1000d1508  adr     x8, #0x1000d25f4                         ; 0x1000d25f4
  1000d150c  nop
  1000d1510  ldrsw   x9, [x8, x0, lsl #2]
  1000d1514  add     x8, x9, x8
  1000d1518  br      x8                                       ; switch (?) { case 0: goto loc_1000d151c; case 1: goto loc_1000d1650; case 2: goto loc_1000d1780; case 3: goto loc_1000d17d4 }
loc_1000d151c:  ; case 0
  1000d151c  adrp    x8, #0x100417000
  1000d1520  nop
  1000d1524  ldr     x1, [x8, #0x390]
  1000d1528  mov     x21, #0
  1000d152c  adrp    x2, #0x1003c2000
  1000d1530  add     x2, x2, #0x350                           ; @"standardCellID"
  1000d1534  mov     x0, x28
  1000d1538  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"standardCellID"]
  1000d153c  mov     x29, x29
  1000d1540  bl      _objc_retainAutoreleasedReturnValue
  1000d1544  mov     x21, x0
  1000d1548  adrp    x19, #0x10041e000
  1000d154c  ldr     x0, [x19, #0x50]                         ; class UIDevice
  1000d1550  adrp    x8, #0x100417000
  1000d1554  nop
  1000d1558  ldr     x24, [x8, #0x788]
  1000d155c  mov     x1, x24
  1000d1560  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d1564  str     x28, [sp, #0x18]
  1000d1568  mov     x29, x29
  1000d156c  bl      _objc_retainAutoreleasedReturnValue
  1000d1570  mov     x23, x0
  1000d1574  adrp    x8, #0x100418000
  1000d1578  nop
  1000d157c  ldr     x26, [x8, #0x9e8]
  1000d1580  mov     x1, x26
  1000d1584  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000d1588  str     x23, [sp, #0x10]
  1000d158c  mov     x29, x29
  1000d1590  bl      _objc_retainAutoreleasedReturnValue
  1000d1594  mov     x25, x0
  1000d1598  adrp    x8, #0x100416000
  1000d159c  nop
  1000d15a0  ldr     x27, [x8, #0xf58]
  1000d15a4  adrp    x2, #0x1003bd000
  1000d15a8  add     x2, x2, #0x30                            ; @"iPhone"
  1000d15ac  mov     x1, x27
  1000d15b0  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000d15b4  cbz     w0, loc_1000d1838                        ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] == 0)
  1000d15b8  adrp    x23, #0x10041e000
  1000d15bc  ldr     x0, [x23, #0x28]                         ; class UIScreen
  1000d15c0  adrp    x8, #0x100417000
  1000d15c4  nop
  1000d15c8  ldr     x28, [x8, #0x6e8]
  1000d15cc  mov     x1, x28
  1000d15d0  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d15d4  mov     x29, x29
  1000d15d8  bl      _objc_retainAutoreleasedReturnValue
  1000d15dc  str     x0, [sp, #8]
  1000d15e0  adrp    x8, #0x100418000
  1000d15e4  nop
  1000d15e8  ldr     x19, [x8, #0x9f0]
  1000d15ec  adrp    x8, #0x100417000
  1000d15f0  nop
  1000d15f4  ldr     x1, [x8, #0xe90]
  1000d15f8  mov     x2, x19
  1000d15fc  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  1000d1600  mov     x8, x0
  1000d1604  ldr     x0, [x23, #0x28]                         ; class UIScreen
  1000d1608  cbz     w8, loc_1000d1864                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  1000d160c  mov     x1, x28
  1000d1610  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d1614  mov     x29, x29
  1000d1618  bl      _objc_retainAutoreleasedReturnValue
  1000d161c  str     x0, [sp]
  1000d1620  mov     x1, x19
  1000d1624  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000d1628  nop
  1000d162c  ldr     d0, #0x100181bd0                         ; d0 = -1704.0
  1000d1630  fadd    d0, d3, d0
  1000d1634  fabs    d0, d0
  1000d1638  adrp    x8, #0x100181000
  1000d163c  ldr     d8, [x8, #0xbc8]                         ; d8 = 2.22044605e-16
  1000d1640  fcmp    d0, d8
  1000d1644  b.pl    loc_1000d1910                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  1000d1648  mov     w28, #0
  1000d164c  b       loc_1000d1950
loc_1000d1650:  ; case 1
  1000d1650  adrp    x8, #0x100417000
  1000d1654  nop
  1000d1658  ldr     x1, [x8, #0x390]
  1000d165c  mov     x21, #0
  1000d1660  adrp    x2, #0x1003c2000
  1000d1664  add     x2, x2, #0x350                           ; @"standardCellID"
  1000d1668  mov     x0, x28
  1000d166c  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"standardCellID"]
  1000d1670  mov     x29, x29
  1000d1674  bl      _objc_retainAutoreleasedReturnValue
  1000d1678  mov     x21, x0
  1000d167c  adrp    x19, #0x10041e000
  1000d1680  ldr     x0, [x19, #0x50]                         ; class UIDevice
  1000d1684  adrp    x8, #0x100417000
  1000d1688  nop
  1000d168c  ldr     x24, [x8, #0x788]
  1000d1690  mov     x1, x24
  1000d1694  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d1698  stp     x21, x28, [sp, #0x10]
  1000d169c  mov     x29, x29
  1000d16a0  bl      _objc_retainAutoreleasedReturnValue
  1000d16a4  mov     x23, x0
  1000d16a8  adrp    x8, #0x100418000
  1000d16ac  nop
  1000d16b0  ldr     x26, [x8, #0x9e8]
  1000d16b4  mov     x1, x26
  1000d16b8  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000d16bc  mov     x29, x29
  1000d16c0  bl      _objc_retainAutoreleasedReturnValue
  1000d16c4  mov     x25, x0
  1000d16c8  adrp    x8, #0x100416000
  1000d16cc  nop
  1000d16d0  ldr     x27, [x8, #0xf58]
  1000d16d4  adrp    x2, #0x1003bd000
  1000d16d8  add     x2, x2, #0x30                            ; @"iPhone"
  1000d16dc  mov     x1, x27
  1000d16e0  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000d16e4  cbz     w0, loc_1000d184c                        ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] == 0)
  1000d16e8  adrp    x21, #0x10041e000
  1000d16ec  ldr     x0, [x21, #0x28]                         ; class UIScreen
  1000d16f0  adrp    x8, #0x100417000
  1000d16f4  nop
  1000d16f8  ldr     x28, [x8, #0x6e8]
  1000d16fc  mov     x1, x28
  1000d1700  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d1704  mov     x29, x29
  1000d1708  bl      _objc_retainAutoreleasedReturnValue
  1000d170c  str     x0, [sp, #8]
  1000d1710  adrp    x8, #0x100418000
  1000d1714  nop
  1000d1718  ldr     x19, [x8, #0x9f0]
  1000d171c  adrp    x8, #0x100417000
  1000d1720  nop
  1000d1724  ldr     x1, [x8, #0xe90]
  1000d1728  mov     x2, x19
  1000d172c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  1000d1730  mov     x8, x0
  1000d1734  ldr     x0, [x21, #0x28]                         ; class UIScreen
  1000d1738  cbz     w8, loc_1000d18b8                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  1000d173c  mov     x1, x28
  1000d1740  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d1744  mov     x29, x29
  1000d1748  bl      _objc_retainAutoreleasedReturnValue
  1000d174c  str     x0, [sp]
  1000d1750  mov     x1, x19
  1000d1754  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000d1758  nop
  1000d175c  ldr     d0, #0x100181bd0                         ; d0 = -1704.0
  1000d1760  fadd    d0, d3, d0
  1000d1764  fabs    d0, d0
  1000d1768  adrp    x8, #0x100181000
  1000d176c  ldr     d8, [x8, #0xbc8]                         ; d8 = 2.22044605e-16
  1000d1770  fcmp    d0, d8
  1000d1774  b.pl    loc_1000d1d5c                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  1000d1778  mov     w28, #0
  1000d177c  b       loc_1000d1d9c
loc_1000d1780:  ; case 2
  1000d1780  adrp    x8, #0x10041a000
  1000d1784  nop
  1000d1788  ldr     x1, [x8, #0xd40]
  1000d178c  mov     x0, x22
  1000d1790  bl      _objc_msgSend                            ; [self enemyCells]
  1000d1794  mov     x29, x29
  1000d1798  bl      _objc_retainAutoreleasedReturnValue
  1000d179c  mov     x19, x0
  1000d17a0  adrp    x8, #0x100417000
  1000d17a4  nop
  1000d17a8  ldr     x1, [x8, #0x350]
  1000d17ac  mov     x0, x20
  1000d17b0  bl      _objc_msgSend                            ; [arg2 row]
  1000d17b4  mov     x2, x0
  1000d17b8  adrp    x8, #0x100416000
  1000d17bc  nop
  1000d17c0  ldr     x1, [x8, #0xc30]
  1000d17c4  mov     x0, x19
  1000d17c8  bl      _objc_msgSend                            ; [[self enemyCells] objectAtIndex:[arg2 row]]
  1000d17cc  mov     x29, x29
  1000d17d0  b       loc_1000d1824
loc_1000d17d4:  ; case 3
  1000d17d4  adrp    x8, #0x100417000
  1000d17d8  nop
  1000d17dc  ldr     x1, [x8, #0x2a0]
  1000d17e0  mov     x0, x22
  1000d17e4  bl      _objc_msgSend                            ; [self weaponCells]
  1000d17e8  mov     x29, x29
  1000d17ec  bl      _objc_retainAutoreleasedReturnValue
  1000d17f0  mov     x19, x0
  1000d17f4  adrp    x8, #0x100417000
  1000d17f8  nop
  1000d17fc  ldr     x1, [x8, #0x350]
  1000d1800  mov     x0, x20
  1000d1804  bl      _objc_msgSend                            ; [arg2 row]
  1000d1808  mov     x2, x0
  1000d180c  adrp    x8, #0x100416000
  1000d1810  nop
  1000d1814  ldr     x1, [x8, #0xc30]
  1000d1818  mov     x0, x19
  1000d181c  bl      _objc_msgSend                            ; [[self weaponCells] objectAtIndex:[arg2 row]]
  1000d1820  mov     x29, x29
loc_1000d1824:
  1000d1824  bl      _objc_retainAutoreleasedReturnValue
  1000d1828  mov     x21, x0
  1000d182c  mov     x0, x19
  1000d1830  bl      _objc_release
  1000d1834  b       loc_1000d2318
loc_1000d1838:
  1000d1838  mov     x0, x25
  1000d183c  bl      _objc_release
  1000d1840  ldr     x0, [sp, #0x10]
  1000d1844  bl      _objc_release
  1000d1848  b       loc_1000d1ad8
loc_1000d184c:
  1000d184c  mov     x0, x25
  1000d1850  bl      _objc_release
  1000d1854  mov     x0, x23
  1000d1858  bl      _objc_release
  1000d185c  ldr     x21, [sp, #0x10]
  1000d1860  b       loc_1000d1f28
loc_1000d1864:
  1000d1864  mov     x1, x28
  1000d1868  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d186c  mov     x29, x29
  1000d1870  bl      _objc_retainAutoreleasedReturnValue
  1000d1874  mov     x19, x0
  1000d1878  adrp    x8, #0x100417000
  1000d187c  nop
  1000d1880  ldr     x1, [x8, #0x748]
  1000d1884  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  1000d1888  nop
  1000d188c  ldr     d0, #0x100181bc0                         ; d0 = -568.0
  1000d1890  fadd    d0, d3, d0
  1000d1894  fabs    d0, d0
  1000d1898  nop
  1000d189c  ldr     d1, #0x100181bc8                         ; d1 = 2.22044605e-16
  1000d18a0  fcmp    d0, d1
  1000d18a4  cset    w28, pl
  1000d18a8  mov     x0, x19
  1000d18ac  bl      _objc_release
  1000d18b0  adrp    x19, #0x10041e000
  1000d18b4  b       loc_1000d195c
loc_1000d18b8:
  1000d18b8  mov     x1, x28
  1000d18bc  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d18c0  mov     x29, x29
  1000d18c4  bl      _objc_retainAutoreleasedReturnValue
  1000d18c8  mov     x19, x0
  1000d18cc  adrp    x8, #0x100417000
  1000d18d0  nop
  1000d18d4  ldr     x1, [x8, #0x748]
  1000d18d8  ldr     x21, [sp, #0x10]
  1000d18dc  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  1000d18e0  nop
  1000d18e4  ldr     d0, #0x100181bc0                         ; d0 = -568.0
  1000d18e8  fadd    d0, d3, d0
  1000d18ec  fabs    d0, d0
  1000d18f0  nop
  1000d18f4  ldr     d1, #0x100181bc8                         ; d1 = 2.22044605e-16
  1000d18f8  fcmp    d0, d1
  1000d18fc  cset    w28, pl
  1000d1900  mov     x0, x19
  1000d1904  bl      _objc_release
  1000d1908  adrp    x19, #0x10041e000
  1000d190c  b       loc_1000d1dac
loc_1000d1910:
  1000d1910  ldr     x0, [x23, #0x28]                         ; class UIScreen
  1000d1914  mov     x1, x28
  1000d1918  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d191c  mov     x29, x29
  1000d1920  bl      _objc_retainAutoreleasedReturnValue
  1000d1924  mov     x23, x0
  1000d1928  mov     x1, x19
  1000d192c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000d1930  nop
  1000d1934  ldr     d0, #0x100181bd8                         ; d0 = -1136.0
  1000d1938  fadd    d0, d3, d0
  1000d193c  fabs    d0, d0
  1000d1940  fcmp    d0, d8
  1000d1944  cset    w28, pl
  1000d1948  mov     x0, x23
  1000d194c  bl      _objc_release
loc_1000d1950:
  1000d1950  adrp    x19, #0x10041e000
  1000d1954  ldr     x0, [sp]
  1000d1958  bl      _objc_release
loc_1000d195c:
  1000d195c  ldr     x0, [sp, #8]
  1000d1960  bl      _objc_release
  1000d1964  mov     x0, x25
  1000d1968  bl      _objc_release
  1000d196c  ldr     x0, [sp, #0x10]
  1000d1970  bl      _objc_release
  1000d1974  cbz     w28, loc_1000d1ad8                       ; if (w28 == 0)
  1000d1978  mov     x0, x21
  1000d197c  bl      _objc_retain
  1000d1980  mov     x23, x0
  1000d1984  adrp    x8, #0x10041a000
  1000d1988  nop
  1000d198c  ldr     x1, [x8, #0xd80]
  1000d1990  mov     x0, x22
  1000d1994  bl      _objc_msgSend                            ; [self globalStatsOrdering]
  1000d1998  mov     x29, x29
  1000d199c  bl      _objc_retainAutoreleasedReturnValue
  1000d19a0  mov     x19, x0
  1000d19a4  adrp    x8, #0x100417000
  1000d19a8  nop
  1000d19ac  ldr     x1, [x8, #0x350]
  1000d19b0  mov     x0, x20
  1000d19b4  bl      _objc_msgSend                            ; [arg2 row]
  1000d19b8  mov     x2, x0
  1000d19bc  adrp    x8, #0x100416000
  1000d19c0  nop
  1000d19c4  ldr     x1, [x8, #0xc30]
  1000d19c8  mov     x0, x19
  1000d19cc  bl      _objc_msgSend                            ; [[self globalStatsOrdering] objectAtIndex:[arg2 row]]
  1000d19d0  mov     x29, x29
  1000d19d4  bl      _objc_retainAutoreleasedReturnValue
  1000d19d8  mov     x24, x0
  1000d19dc  mov     x0, x19
  1000d19e0  bl      _objc_release
  1000d19e4  adrp    x8, #0x10041a000
  1000d19e8  nop
  1000d19ec  ldr     x1, [x8, #0xd88]
  1000d19f0  mov     x0, x22
  1000d19f4  ldr     x28, [sp, #0x18]
  1000d19f8  bl      _objc_msgSend                            ; [self globalData]
  1000d19fc  mov     x29, x29
  1000d1a00  bl      _objc_retainAutoreleasedReturnValue
  1000d1a04  mov     x19, x0
  1000d1a08  adrp    x8, #0x100417000
  1000d1a0c  nop
  1000d1a10  ldr     x1, [x8, #0x40]
  1000d1a14  mov     x2, x24
  1000d1a18  bl      _objc_msgSend                            ; [[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d1a1c  mov     x29, x29
  1000d1a20  bl      _objc_retainAutoreleasedReturnValue
  1000d1a24  mov     x22, x0
  1000d1a28  mov     x0, x19
  1000d1a2c  bl      _objc_release
  1000d1a30  adrp    x8, #0x10041a000
  1000d1a34  nop
  1000d1a38  ldr     x1, [x8, #0xd98]
  1000d1a3c  mov     x0, x23
  1000d1a40  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey]
  1000d1a44  mov     x29, x29
  1000d1a48  bl      _objc_retainAutoreleasedReturnValue
  1000d1a4c  mov     x26, x0
  1000d1a50  adrp    x8, #0x100416000
  1000d1a54  nop
  1000d1a58  ldr     x25, [x8, #0xb68]
  1000d1a5c  mov     x1, x25
  1000d1a60  mov     x2, x24
  1000d1a64  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey] setText:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d1a68  mov     x0, x26
  1000d1a6c  bl      _objc_release
  1000d1a70  adrp    x8, #0x10041d000
  1000d1a74  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d1a78  adrp    x8, #0x100417000
  1000d1a7c  nop
  1000d1a80  ldr     x1, [x8, #0x2e0]
  1000d1a84  bl      _objc_msgSend                            ; [NSString class]
  1000d1a88  mov     x2, x0
  1000d1a8c  adrp    x8, #0x100417000
  1000d1a90  nop
  1000d1a94  ldr     x1, [x8, #0x3b8]
  1000d1a98  mov     x0, x22
  1000d1a9c  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]]
  1000d1aa0  cbz     w0, loc_1000d2164                        ; if ([[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]] == 0)
  1000d1aa4  adrp    x8, #0x10041a000
  1000d1aa8  nop
  1000d1aac  ldr     x1, [x8, #0xda0]
  1000d1ab0  mov     x0, x23
  1000d1ab4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d1ab8  mov     x29, x29
  1000d1abc  bl      _objc_retainAutoreleasedReturnValue
  1000d1ac0  mov     x26, x0
  1000d1ac4  mov     x1, x25
  1000d1ac8  mov     x2, x22
  1000d1acc  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]]]
  1000d1ad0  b       loc_1000d22e0
  1000d1ad4  b       loc_1000d25ac
loc_1000d1ad8:
  1000d1ad8  ldr     x0, [x19, #0x50]                         ; class UIDevice
  1000d1adc  mov     x1, x24
  1000d1ae0  ldr     x28, [sp, #0x18]
  1000d1ae4  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d1ae8  mov     x29, x29
  1000d1aec  bl      _objc_retainAutoreleasedReturnValue
  1000d1af0  mov     x19, x0
  1000d1af4  mov     x1, x26
  1000d1af8  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000d1afc  mov     x29, x29
  1000d1b00  bl      _objc_retainAutoreleasedReturnValue
  1000d1b04  mov     x23, x0
  1000d1b08  adrp    x2, #0x1003bd000
  1000d1b0c  add     x2, x2, #0x50                            ; @"iPod touch"
  1000d1b10  mov     x1, x27
  1000d1b14  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000d1b18  mov     x24, x0
  1000d1b1c  mov     x0, x23
  1000d1b20  bl      _objc_release
  1000d1b24  mov     x0, x19
  1000d1b28  bl      _objc_release
  1000d1b2c  cbz     w24, loc_1000d1c8c                       ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] == 0)
  1000d1b30  mov     x0, x21
  1000d1b34  bl      _objc_retain
  1000d1b38  mov     x23, x0
  1000d1b3c  adrp    x8, #0x10041a000
  1000d1b40  nop
  1000d1b44  ldr     x1, [x8, #0xd80]
  1000d1b48  mov     x0, x22
  1000d1b4c  bl      _objc_msgSend                            ; [self globalStatsOrdering]
  1000d1b50  mov     x29, x29
  1000d1b54  bl      _objc_retainAutoreleasedReturnValue
  1000d1b58  mov     x19, x0
  1000d1b5c  adrp    x8, #0x100417000
  1000d1b60  nop
  1000d1b64  ldr     x1, [x8, #0x350]
  1000d1b68  mov     x0, x20
  1000d1b6c  bl      _objc_msgSend                            ; [arg2 row]
  1000d1b70  mov     x2, x0
  1000d1b74  adrp    x8, #0x100416000
  1000d1b78  nop
  1000d1b7c  ldr     x1, [x8, #0xc30]
  1000d1b80  mov     x0, x19
  1000d1b84  bl      _objc_msgSend                            ; [[self globalStatsOrdering] objectAtIndex:[arg2 row]]
  1000d1b88  mov     x29, x29
  1000d1b8c  bl      _objc_retainAutoreleasedReturnValue
  1000d1b90  mov     x24, x0
  1000d1b94  mov     x0, x19
  1000d1b98  bl      _objc_release
  1000d1b9c  adrp    x8, #0x10041a000
  1000d1ba0  nop
  1000d1ba4  ldr     x1, [x8, #0xd88]
  1000d1ba8  mov     x0, x22
  1000d1bac  bl      _objc_msgSend                            ; [self globalData]
  1000d1bb0  mov     x29, x29
  1000d1bb4  bl      _objc_retainAutoreleasedReturnValue
  1000d1bb8  mov     x19, x0
  1000d1bbc  adrp    x8, #0x100417000
  1000d1bc0  nop
  1000d1bc4  ldr     x1, [x8, #0x40]
  1000d1bc8  mov     x2, x24
  1000d1bcc  bl      _objc_msgSend                            ; [[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d1bd0  mov     x29, x29
  1000d1bd4  bl      _objc_retainAutoreleasedReturnValue
  1000d1bd8  mov     x22, x0
  1000d1bdc  mov     x0, x19
  1000d1be0  bl      _objc_release
  1000d1be4  adrp    x8, #0x10041a000
  1000d1be8  nop
  1000d1bec  ldr     x1, [x8, #0xd98]
  1000d1bf0  mov     x0, x23
  1000d1bf4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey]
  1000d1bf8  mov     x29, x29
  1000d1bfc  bl      _objc_retainAutoreleasedReturnValue
  1000d1c00  mov     x26, x0
  1000d1c04  adrp    x8, #0x100416000
  1000d1c08  nop
  1000d1c0c  ldr     x25, [x8, #0xb68]
  1000d1c10  mov     x1, x25
  1000d1c14  mov     x2, x24
  1000d1c18  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey] setText:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d1c1c  mov     x0, x26
  1000d1c20  bl      _objc_release
  1000d1c24  adrp    x8, #0x10041d000
  1000d1c28  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d1c2c  adrp    x8, #0x100417000
  1000d1c30  nop
  1000d1c34  ldr     x1, [x8, #0x2e0]
  1000d1c38  bl      _objc_msgSend                            ; [NSString class]
  1000d1c3c  mov     x2, x0
  1000d1c40  adrp    x8, #0x100417000
  1000d1c44  nop
  1000d1c48  ldr     x1, [x8, #0x3b8]
  1000d1c4c  mov     x0, x22
  1000d1c50  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]]
  1000d1c54  cbz     w0, loc_1000d1cc8                        ; if ([[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]] == 0)
  1000d1c58  adrp    x8, #0x10041a000
  1000d1c5c  nop
  1000d1c60  ldr     x1, [x8, #0xda0]
  1000d1c64  mov     x0, x23
  1000d1c68  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d1c6c  mov     x29, x29
  1000d1c70  bl      _objc_retainAutoreleasedReturnValue
  1000d1c74  mov     x26, x0
  1000d1c78  mov     x1, x25
  1000d1c7c  mov     x2, x22
  1000d1c80  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]]]
  1000d1c84  b       loc_1000d22e0
  1000d1c88  b       loc_1000d25ac
loc_1000d1c8c:
  1000d1c8c  adrp    x8, #0x100417000
  1000d1c90  nop
  1000d1c94  ldr     x1, [x8, #0x350]
  1000d1c98  mov     x0, x20
  1000d1c9c  bl      _objc_msgSend                            ; [arg2 row]
  1000d1ca0  mov     x3, x0
  1000d1ca4  adrp    x8, #0x10041a000
  1000d1ca8  nop
  1000d1cac  ldr     x1, [x8, #0xda8]
  1000d1cb0  mov     x0, x22
  1000d1cb4  mov     x2, x21
  1000d1cb8  bl      _objc_msgSend                            ; [self configureGlobalCell:[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] ForRow:[arg2 row]]
  1000d1cbc  mov     x29, x29
  1000d1cc0  bl      _objc_retainAutoreleasedReturnValue
  1000d1cc4  b       loc_1000d22fc
loc_1000d1cc8:
  1000d1cc8  adrp    x8, #0x10041a000
  1000d1ccc  nop
  1000d1cd0  ldr     x19, [x8, #0xd20]
  1000d1cd4  mov     x0, x22
  1000d1cd8  mov     x1, x19
  1000d1cdc  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]
  1000d1ce0  mov     x29, x29
  1000d1ce4  bl      _objc_retainAutoreleasedReturnValue
  1000d1ce8  mov     x26, x0
  1000d1cec  adrp    x8, #0x100417000
  1000d1cf0  nop
  1000d1cf4  ldr     x1, [x8, #0xc58]
  1000d1cf8  bl      _objc_msgSend                            ; [[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue] length]
  1000d1cfc  mov     x27, x0
  1000d1d00  mov     x0, x26
  1000d1d04  bl      _objc_release
  1000d1d08  adrp    x8, #0x10041a000
  1000d1d0c  add     x8, x8, #0xda0                           ; &@selector(placeholderValue)
  1000d1d10  ldr     x1, [x8]
  1000d1d14  cbz     x27, loc_1000d2290                       ; if ([[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue] length] == 0)
  1000d1d18  mov     x0, x23
  1000d1d1c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d1d20  mov     x29, x29
  1000d1d24  bl      _objc_retainAutoreleasedReturnValue
  1000d1d28  mov     x26, x0
  1000d1d2c  mov     x0, x22
  1000d1d30  mov     x1, x19
  1000d1d34  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]
  1000d1d38  mov     x29, x29
  1000d1d3c  bl      _objc_retainAutoreleasedReturnValue
  1000d1d40  mov     x27, x0
  1000d1d44  mov     x0, x26
  1000d1d48  mov     x1, x25
  1000d1d4c  mov     x2, x27
  1000d1d50  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]]
  1000d1d54  b       loc_1000d21f0
  1000d1d58  b       loc_1000d2598
loc_1000d1d5c:
  1000d1d5c  ldr     x0, [x21, #0x28]                         ; class UIScreen
  1000d1d60  mov     x1, x28
  1000d1d64  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d1d68  mov     x29, x29
  1000d1d6c  bl      _objc_retainAutoreleasedReturnValue
  1000d1d70  mov     x21, x0
  1000d1d74  mov     x1, x19
  1000d1d78  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000d1d7c  nop
  1000d1d80  ldr     d0, #0x100181bd8                         ; d0 = -1136.0
  1000d1d84  fadd    d0, d3, d0
  1000d1d88  fabs    d0, d0
  1000d1d8c  fcmp    d0, d8
  1000d1d90  cset    w28, pl
  1000d1d94  mov     x0, x21
  1000d1d98  bl      _objc_release
loc_1000d1d9c:
  1000d1d9c  adrp    x19, #0x10041e000
  1000d1da0  ldr     x21, [sp, #0x10]
  1000d1da4  ldr     x0, [sp]
  1000d1da8  bl      _objc_release
loc_1000d1dac:
  1000d1dac  ldr     x0, [sp, #8]
  1000d1db0  bl      _objc_release
  1000d1db4  mov     x0, x25
  1000d1db8  bl      _objc_release
  1000d1dbc  mov     x0, x23
  1000d1dc0  bl      _objc_release
  1000d1dc4  cbz     w28, loc_1000d1f28                       ; if (w28 == 0)
  1000d1dc8  mov     x0, x21
  1000d1dcc  bl      _objc_retain
  1000d1dd0  mov     x23, x0
  1000d1dd4  adrp    x8, #0x10041a000
  1000d1dd8  nop
  1000d1ddc  ldr     x1, [x8, #0xd68]
  1000d1de0  mov     x0, x22
  1000d1de4  bl      _objc_msgSend                            ; [self endlessModeStatsOrdering]
  1000d1de8  mov     x29, x29
  1000d1dec  bl      _objc_retainAutoreleasedReturnValue
  1000d1df0  mov     x19, x0
  1000d1df4  adrp    x8, #0x100417000
  1000d1df8  nop
  1000d1dfc  ldr     x1, [x8, #0x350]
  1000d1e00  mov     x0, x20
  1000d1e04  bl      _objc_msgSend                            ; [arg2 row]
  1000d1e08  mov     x2, x0
  1000d1e0c  adrp    x8, #0x100416000
  1000d1e10  nop
  1000d1e14  ldr     x1, [x8, #0xc30]
  1000d1e18  mov     x0, x19
  1000d1e1c  bl      _objc_msgSend                            ; [[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]
  1000d1e20  mov     x29, x29
  1000d1e24  bl      _objc_retainAutoreleasedReturnValue
  1000d1e28  mov     x24, x0
  1000d1e2c  mov     x0, x19
  1000d1e30  bl      _objc_release
  1000d1e34  adrp    x8, #0x10041a000
  1000d1e38  nop
  1000d1e3c  ldr     x1, [x8, #0xd90]
  1000d1e40  mov     x0, x22
  1000d1e44  ldr     x28, [sp, #0x18]
  1000d1e48  bl      _objc_msgSend                            ; [self endlessModeData]
  1000d1e4c  mov     x29, x29
  1000d1e50  bl      _objc_retainAutoreleasedReturnValue
  1000d1e54  mov     x19, x0
  1000d1e58  adrp    x8, #0x100417000
  1000d1e5c  nop
  1000d1e60  ldr     x1, [x8, #0x40]
  1000d1e64  mov     x2, x24
  1000d1e68  bl      _objc_msgSend                            ; [[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d1e6c  mov     x29, x29
  1000d1e70  bl      _objc_retainAutoreleasedReturnValue
  1000d1e74  mov     x25, x0
  1000d1e78  mov     x0, x19
  1000d1e7c  bl      _objc_release
  1000d1e80  adrp    x8, #0x10041a000
  1000d1e84  nop
  1000d1e88  ldr     x1, [x8, #0xd98]
  1000d1e8c  mov     x0, x23
  1000d1e90  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey]
  1000d1e94  mov     x29, x29
  1000d1e98  bl      _objc_retainAutoreleasedReturnValue
  1000d1e9c  mov     x19, x0
  1000d1ea0  adrp    x8, #0x100416000
  1000d1ea4  nop
  1000d1ea8  ldr     x22, [x8, #0xb68]
  1000d1eac  mov     x1, x22
  1000d1eb0  mov     x2, x24
  1000d1eb4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey] setText:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d1eb8  mov     x0, x19
  1000d1ebc  bl      _objc_release
  1000d1ec0  adrp    x8, #0x10041d000
  1000d1ec4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d1ec8  adrp    x8, #0x100417000
  1000d1ecc  nop
  1000d1ed0  ldr     x1, [x8, #0x2e0]
  1000d1ed4  bl      _objc_msgSend                            ; [NSString class]
  1000d1ed8  mov     x2, x0
  1000d1edc  adrp    x8, #0x100417000
  1000d1ee0  nop
  1000d1ee4  ldr     x1, [x8, #0x3b8]
  1000d1ee8  mov     x0, x25
  1000d1eec  bl      _objc_msgSend                            ; [[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]]
  1000d1ef0  adrp    x8, #0x10041a000
  1000d1ef4  add     x8, x8, #0xda0                           ; &@selector(placeholderValue)
  1000d1ef8  ldr     x1, [x8]
  1000d1efc  cbz     w0, loc_1000d21fc                        ; if ([[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]] == 0)
  1000d1f00  mov     x0, x23
  1000d1f04  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d1f08  mov     x29, x29
  1000d1f0c  bl      _objc_retainAutoreleasedReturnValue
  1000d1f10  mov     x19, x0
  1000d1f14  mov     x1, x22
  1000d1f18  mov     x2, x25
  1000d1f1c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]]]
  1000d1f20  b       loc_1000d2248
  1000d1f24  b       loc_1000d2548
loc_1000d1f28:
  1000d1f28  ldr     x0, [x19, #0x50]                         ; class UIDevice
  1000d1f2c  mov     x1, x24
  1000d1f30  ldr     x28, [sp, #0x18]
  1000d1f34  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d1f38  mov     x29, x29
  1000d1f3c  bl      _objc_retainAutoreleasedReturnValue
  1000d1f40  mov     x19, x0
  1000d1f44  mov     x1, x26
  1000d1f48  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000d1f4c  mov     x29, x29
  1000d1f50  bl      _objc_retainAutoreleasedReturnValue
  1000d1f54  mov     x23, x0
  1000d1f58  adrp    x2, #0x1003bd000
  1000d1f5c  add     x2, x2, #0x50                            ; @"iPod touch"
  1000d1f60  mov     x1, x27
  1000d1f64  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000d1f68  mov     x24, x0
  1000d1f6c  mov     x0, x23
  1000d1f70  bl      _objc_release
  1000d1f74  mov     x0, x19
  1000d1f78  bl      _objc_release
  1000d1f7c  cbz     w24, loc_1000d20dc                       ; if ([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] == 0)
  1000d1f80  mov     x0, x21
  1000d1f84  bl      _objc_retain
  1000d1f88  mov     x23, x0
  1000d1f8c  adrp    x8, #0x10041a000
  1000d1f90  nop
  1000d1f94  ldr     x1, [x8, #0xd68]
  1000d1f98  mov     x0, x22
  1000d1f9c  bl      _objc_msgSend                            ; [self endlessModeStatsOrdering]
  1000d1fa0  mov     x29, x29
  1000d1fa4  bl      _objc_retainAutoreleasedReturnValue
  1000d1fa8  mov     x19, x0
  1000d1fac  adrp    x8, #0x100417000
  1000d1fb0  nop
  1000d1fb4  ldr     x1, [x8, #0x350]
  1000d1fb8  mov     x0, x20
  1000d1fbc  bl      _objc_msgSend                            ; [arg2 row]
  1000d1fc0  mov     x2, x0
  1000d1fc4  adrp    x8, #0x100416000
  1000d1fc8  nop
  1000d1fcc  ldr     x1, [x8, #0xc30]
  1000d1fd0  mov     x0, x19
  1000d1fd4  bl      _objc_msgSend                            ; [[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]
  1000d1fd8  mov     x29, x29
  1000d1fdc  bl      _objc_retainAutoreleasedReturnValue
  1000d1fe0  mov     x24, x0
  1000d1fe4  mov     x0, x19
  1000d1fe8  bl      _objc_release
  1000d1fec  adrp    x8, #0x10041a000
  1000d1ff0  nop
  1000d1ff4  ldr     x1, [x8, #0xd90]
  1000d1ff8  mov     x0, x22
  1000d1ffc  bl      _objc_msgSend                            ; [self endlessModeData]
  1000d2000  mov     x29, x29
  1000d2004  bl      _objc_retainAutoreleasedReturnValue
  1000d2008  mov     x19, x0
  1000d200c  adrp    x8, #0x100417000
  1000d2010  nop
  1000d2014  ldr     x1, [x8, #0x40]
  1000d2018  mov     x2, x24
  1000d201c  bl      _objc_msgSend                            ; [[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d2020  mov     x29, x29
  1000d2024  bl      _objc_retainAutoreleasedReturnValue
  1000d2028  mov     x25, x0
  1000d202c  mov     x0, x19
  1000d2030  bl      _objc_release
  1000d2034  adrp    x8, #0x10041a000
  1000d2038  nop
  1000d203c  ldr     x1, [x8, #0xd98]
  1000d2040  mov     x0, x23
  1000d2044  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey]
  1000d2048  mov     x29, x29
  1000d204c  bl      _objc_retainAutoreleasedReturnValue
  1000d2050  mov     x19, x0
  1000d2054  adrp    x8, #0x100416000
  1000d2058  nop
  1000d205c  ldr     x22, [x8, #0xb68]
  1000d2060  mov     x1, x22
  1000d2064  mov     x2, x24
  1000d2068  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderKey] setText:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]]
  1000d206c  mov     x0, x19
  1000d2070  bl      _objc_release
  1000d2074  adrp    x8, #0x10041d000
  1000d2078  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d207c  adrp    x8, #0x100417000
  1000d2080  nop
  1000d2084  ldr     x1, [x8, #0x2e0]
  1000d2088  bl      _objc_msgSend                            ; [NSString class]
  1000d208c  mov     x2, x0
  1000d2090  adrp    x8, #0x100417000
  1000d2094  nop
  1000d2098  ldr     x1, [x8, #0x3b8]
  1000d209c  mov     x0, x25
  1000d20a0  bl      _objc_msgSend                            ; [[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]]
  1000d20a4  adrp    x8, #0x10041a000
  1000d20a8  add     x8, x8, #0xda0                           ; &@selector(placeholderValue)
  1000d20ac  ldr     x1, [x8]
  1000d20b0  cbz     w0, loc_1000d2118                        ; if ([[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] isKindOfClass:[NSString class]] == 0)
  1000d20b4  mov     x0, x23
  1000d20b8  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d20bc  mov     x29, x29
  1000d20c0  bl      _objc_retainAutoreleasedReturnValue
  1000d20c4  mov     x19, x0
  1000d20c8  mov     x1, x22
  1000d20cc  mov     x2, x25
  1000d20d0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]]]
  1000d20d4  b       loc_1000d2248
  1000d20d8  b       loc_1000d2548
loc_1000d20dc:
  1000d20dc  adrp    x8, #0x100417000
  1000d20e0  nop
  1000d20e4  ldr     x1, [x8, #0x350]
  1000d20e8  mov     x0, x20
  1000d20ec  bl      _objc_msgSend                            ; [arg2 row]
  1000d20f0  mov     x3, x0
  1000d20f4  adrp    x8, #0x10041a000
  1000d20f8  nop
  1000d20fc  ldr     x1, [x8, #0xdb0]
  1000d2100  mov     x0, x22
  1000d2104  mov     x2, x21
  1000d2108  bl      _objc_msgSend                            ; [self configureEndlessModeCell:[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] ForRow:[arg2 row]]
  1000d210c  mov     x29, x29
  1000d2110  bl      _objc_retainAutoreleasedReturnValue
  1000d2114  b       loc_1000d2264
loc_1000d2118:
  1000d2118  mov     x0, x23
  1000d211c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d2120  mov     x29, x29
  1000d2124  bl      _objc_retainAutoreleasedReturnValue
  1000d2128  mov     x19, x0
  1000d212c  adrp    x8, #0x10041a000
  1000d2130  nop
  1000d2134  ldr     x1, [x8, #0xd20]
  1000d2138  mov     x0, x25
  1000d213c  bl      _objc_msgSend                            ; [[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]
  1000d2140  mov     x29, x29
  1000d2144  bl      _objc_retainAutoreleasedReturnValue
  1000d2148  mov     x26, x0
  1000d214c  mov     x0, x19
  1000d2150  mov     x1, x22
  1000d2154  mov     x2, x26
  1000d2158  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]]
  1000d215c  b       loc_1000d2240
  1000d2160  b       loc_1000d2554
loc_1000d2164:
  1000d2164  adrp    x8, #0x10041a000
  1000d2168  nop
  1000d216c  ldr     x19, [x8, #0xd20]
  1000d2170  mov     x0, x22
  1000d2174  mov     x1, x19
  1000d2178  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]
  1000d217c  mov     x29, x29
  1000d2180  bl      _objc_retainAutoreleasedReturnValue
  1000d2184  mov     x26, x0
  1000d2188  adrp    x8, #0x100417000
  1000d218c  nop
  1000d2190  ldr     x1, [x8, #0xc58]
  1000d2194  bl      _objc_msgSend                            ; [[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue] length]
  1000d2198  mov     x27, x0
  1000d219c  mov     x0, x26
  1000d21a0  bl      _objc_release
  1000d21a4  adrp    x8, #0x10041a000
  1000d21a8  add     x8, x8, #0xda0                           ; &@selector(placeholderValue)
  1000d21ac  ldr     x1, [x8]
  1000d21b0  cbz     x27, loc_1000d22bc                       ; if ([[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue] length] == 0)
  1000d21b4  mov     x0, x23
  1000d21b8  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d21bc  mov     x29, x29
  1000d21c0  bl      _objc_retainAutoreleasedReturnValue
  1000d21c4  mov     x26, x0
  1000d21c8  mov     x0, x22
  1000d21cc  mov     x1, x19
  1000d21d0  bl      _objc_msgSend                            ; [[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]
  1000d21d4  mov     x29, x29
  1000d21d8  bl      _objc_retainAutoreleasedReturnValue
  1000d21dc  mov     x27, x0
  1000d21e0  mov     x0, x26
  1000d21e4  mov     x1, x25
  1000d21e8  mov     x2, x27
  1000d21ec  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[[self globalData] objectForKey:[[self globalStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]]
loc_1000d21f0:
  1000d21f0  mov     x0, x27
  1000d21f4  bl      _objc_release
  1000d21f8  b       loc_1000d22e0
loc_1000d21fc:
  1000d21fc  mov     x0, x23
  1000d2200  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d2204  mov     x29, x29
  1000d2208  bl      _objc_retainAutoreleasedReturnValue
  1000d220c  mov     x19, x0
  1000d2210  adrp    x8, #0x10041a000
  1000d2214  nop
  1000d2218  ldr     x1, [x8, #0xd20]
  1000d221c  mov     x0, x25
  1000d2220  bl      _objc_msgSend                            ; [[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]
  1000d2224  mov     x29, x29
  1000d2228  bl      _objc_retainAutoreleasedReturnValue
  1000d222c  mov     x26, x0
  1000d2230  mov     x0, x19
  1000d2234  mov     x1, x22
  1000d2238  mov     x2, x26
  1000d223c  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:[[[self endlessModeData] objectForKey:[[self endlessModeStatsOrdering] objectAtIndex:[arg2 row]]] stringValue]]
loc_1000d2240:
  1000d2240  mov     x0, x26
  1000d2244  bl      _objc_release
loc_1000d2248:
  1000d2248  mov     x0, x19
  1000d224c  bl      _objc_release
  1000d2250  mov     x0, x25
  1000d2254  bl      _objc_release
  1000d2258  mov     x0, x24
  1000d225c  bl      _objc_release
  1000d2260  mov     x0, x23
loc_1000d2264:
  1000d2264  bl      _objc_release
  1000d2268  adrp    x8, #0x100417000
  1000d226c  nop
  1000d2270  ldr     x1, [x8, #0x998]
  1000d2274  mov     w2, #0
  1000d2278  mov     x0, x21
  1000d227c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] setUserInteractionEnabled:0]
  1000d2280  b       loc_1000d2318
  1000d2284  stp     x21, x28, [sp, #0x10]
  1000d2288  mov     x22, x0
  1000d228c  b       loc_1000d2584
loc_1000d2290:
  1000d2290  mov     x0, x23
  1000d2294  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d2298  mov     x29, x29
  1000d229c  bl      _objc_retainAutoreleasedReturnValue
  1000d22a0  mov     x26, x0
  1000d22a4  adrp    x2, #0x1003bb000
  1000d22a8  add     x2, x2, #0xe30                           ; @"0"
  1000d22ac  mov     x1, x25
  1000d22b0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:@"0"]
  1000d22b4  b       loc_1000d22e0
  1000d22b8  b       loc_1000d25ac
loc_1000d22bc:
  1000d22bc  mov     x0, x23
  1000d22c0  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue]
  1000d22c4  mov     x29, x29
  1000d22c8  bl      _objc_retainAutoreleasedReturnValue
  1000d22cc  mov     x26, x0
  1000d22d0  adrp    x2, #0x1003bb000
  1000d22d4  add     x2, x2, #0xe30                           ; @"0"
  1000d22d8  mov     x1, x25
  1000d22dc  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] placeholderValue] setText:@"0"]
loc_1000d22e0:
  1000d22e0  mov     x0, x26
  1000d22e4  bl      _objc_release
  1000d22e8  mov     x0, x22
  1000d22ec  bl      _objc_release
  1000d22f0  mov     x0, x24
  1000d22f4  bl      _objc_release
  1000d22f8  mov     x0, x23
loc_1000d22fc:
  1000d22fc  bl      _objc_release
  1000d2300  adrp    x8, #0x100417000
  1000d2304  nop
  1000d2308  ldr     x1, [x8, #0x998]
  1000d230c  mov     w2, #0
  1000d2310  mov     x0, x21
  1000d2314  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"standardCellID"] setUserInteractionEnabled:0]
loc_1000d2318:
  1000d2318  mov     x0, x20
  1000d231c  bl      _objc_release
  1000d2320  mov     x0, x28
  1000d2324  bl      _objc_release
  1000d2328  mov     x0, x21
  1000d232c  sub     sp, x29, #0x60
  1000d2330  ldp     x29, x30, [sp, #0x60]
  1000d2334  ldp     x20, x19, [sp, #0x50]
  1000d2338  ldp     x22, x21, [sp, #0x40]
  1000d233c  ldp     x24, x23, [sp, #0x30]
  1000d2340  ldp     x26, x25, [sp, #0x20]
  1000d2344  ldp     x28, x27, [sp, #0x10]
  1000d2348  ldp     d9, d8, [sp], #0x70
  1000d234c  b       _objc_autoreleaseReturnValue
  1000d2350  str     x28, [sp, #0x18]
  1000d2354  mov     x22, x0
  1000d2358  b       loc_1000d25dc
  1000d235c  str     x28, [sp, #0x18]
  1000d2360  mov     x22, x0
  1000d2364  b       loc_1000d25d4
  1000d2368  b       loc_1000d236c
loc_1000d236c:
  1000d236c  str     x28, [sp, #0x18]
  1000d2370  mov     x22, x0
  1000d2374  mov     x0, x19
  1000d2378  bl      _objc_release
  1000d237c  b       loc_1000d25dc
  1000d2380  mov     x19, x22
  1000d2384  b       loc_1000d24b0
  1000d2388  mov     x22, x0
  1000d238c  b       loc_1000d250c
  1000d2390  mov     x22, x0
  1000d2394  b       loc_1000d253c
  1000d2398  b       loc_1000d23b8
  1000d239c  mov     x19, x22
  1000d23a0  b       loc_1000d24b0
  1000d23a4  str     x23, [sp, #0x10]
  1000d23a8  mov     x22, x0
  1000d23ac  b       loc_1000d2514
  1000d23b0  mov     x22, x0
  1000d23b4  b       loc_1000d257c
loc_1000d23b8:
  1000d23b8  str     x21, [sp, #0x10]
  1000d23bc  mov     x22, x0
  1000d23c0  b       loc_1000d256c
  1000d23c4  mov     x22, x0
  1000d23c8  b       loc_1000d2504
  1000d23cc  mov     x22, x0
  1000d23d0  b       loc_1000d2534
  1000d23d4  mov     x22, x0
  1000d23d8  b       loc_1000d23e8
  1000d23dc  mov     x22, x0
  1000d23e0  mov     x0, x23
  1000d23e4  bl      _objc_release
loc_1000d23e8:
  1000d23e8  mov     x0, x19
  1000d23ec  bl      _objc_release
  1000d23f0  b       loc_1000d25d4
  1000d23f4  b       loc_1000d2424
  1000d23f8  str     x21, [sp, #0x10]
  1000d23fc  mov     x22, x0
  1000d2400  b       loc_1000d2414
  1000d2404  str     x21, [sp, #0x10]
  1000d2408  mov     x22, x0
  1000d240c  mov     x0, x23
  1000d2410  bl      _objc_release
loc_1000d2414:
  1000d2414  mov     x0, x19
  1000d2418  bl      _objc_release
  1000d241c  b       loc_1000d2584
  1000d2420  b       loc_1000d2430
loc_1000d2424:
  1000d2424  mov     x22, x0
  1000d2428  mov     x0, x19
  1000d242c  b       loc_1000d25c8
loc_1000d2430:
  1000d2430  str     x21, [sp, #0x10]
  1000d2434  mov     x22, x0
  1000d2438  mov     x0, x19
  1000d243c  b       loc_1000d2578
  1000d2440  mov     x22, x0
  1000d2444  b       loc_1000d24fc
  1000d2448  mov     x22, x0
  1000d244c  b       loc_1000d25cc
  1000d2450  mov     x22, x0
  1000d2454  b       loc_1000d25c4
  1000d2458  b       loc_1000d24b0
  1000d245c  b       loc_1000d25ac
  1000d2460  mov     x22, x0
  1000d2464  b       loc_1000d252c
  1000d2468  b       loc_1000d24bc
  1000d246c  b       loc_1000d24c8
  1000d2470  b       loc_1000d24d4
  1000d2474  b       loc_1000d2548
  1000d2478  mov     x22, x0
  1000d247c  b       loc_1000d2504
  1000d2480  mov     x22, x0
  1000d2484  mov     x0, x19
  1000d2488  b       loc_1000d2500
  1000d248c  mov     x22, x0
  1000d2490  b       loc_1000d2534
  1000d2494  mov     x22, x0
  1000d2498  mov     x0, x19
  1000d249c  b       loc_1000d2530
  1000d24a0  mov     x22, x0
  1000d24a4  b       loc_1000d25cc
  1000d24a8  mov     x22, x0
  1000d24ac  b       loc_1000d25c4
loc_1000d24b0:
  1000d24b0  mov     x22, x0
  1000d24b4  b       loc_1000d25bc
  1000d24b8  b       loc_1000d25ac
loc_1000d24bc:
  1000d24bc  str     x21, [sp, #0x10]
  1000d24c0  mov     x22, x0
  1000d24c4  b       loc_1000d257c
loc_1000d24c8:
  1000d24c8  str     x21, [sp, #0x10]
  1000d24cc  mov     x22, x0
  1000d24d0  b       loc_1000d2574
loc_1000d24d4:
  1000d24d4  str     x21, [sp, #0x10]
  1000d24d8  mov     x22, x0
  1000d24dc  mov     x0, x19
  1000d24e0  b       loc_1000d2570
  1000d24e4  b       loc_1000d2548
  1000d24e8  b       loc_1000d25ac
  1000d24ec  b       loc_1000d2548
  1000d24f0  mov     x22, x0
  1000d24f4  mov     x0, x23
  1000d24f8  bl      _objc_release
loc_1000d24fc:
  1000d24fc  ldr     x0, [sp]
loc_1000d2500:
  1000d2500  bl      _objc_release
loc_1000d2504:
  1000d2504  ldr     x0, [sp, #8]
  1000d2508  bl      _objc_release
loc_1000d250c:
  1000d250c  mov     x0, x25
  1000d2510  bl      _objc_release
loc_1000d2514:
  1000d2514  ldr     x0, [sp, #0x10]
  1000d2518  bl      _objc_release
  1000d251c  b       loc_1000d25d4
  1000d2520  mov     x22, x0
  1000d2524  mov     x0, x21
  1000d2528  bl      _objc_release
loc_1000d252c:
  1000d252c  ldr     x0, [sp]
loc_1000d2530:
  1000d2530  bl      _objc_release
loc_1000d2534:
  1000d2534  ldr     x0, [sp, #8]
  1000d2538  bl      _objc_release
loc_1000d253c:
  1000d253c  mov     x0, x25
  1000d2540  b       loc_1000d2578
  1000d2544  b       loc_1000d25ac
loc_1000d2548:
  1000d2548  str     x21, [sp, #0x10]
  1000d254c  mov     x22, x0
  1000d2550  b       loc_1000d2564
loc_1000d2554:
  1000d2554  str     x21, [sp, #0x10]
  1000d2558  mov     x22, x0
  1000d255c  mov     x0, x26
  1000d2560  bl      _objc_release
loc_1000d2564:
  1000d2564  mov     x0, x19
  1000d2568  bl      _objc_release
loc_1000d256c:
  1000d256c  mov     x0, x25
loc_1000d2570:
  1000d2570  bl      _objc_release
loc_1000d2574:
  1000d2574  mov     x0, x24
loc_1000d2578:
  1000d2578  bl      _objc_release
loc_1000d257c:
  1000d257c  mov     x0, x23
  1000d2580  bl      _objc_release
loc_1000d2584:
  1000d2584  ldr     x0, [sp, #0x10]
  1000d2588  bl      _objc_release
  1000d258c  b       loc_1000d25dc
  1000d2590  b       loc_1000d25ac
  1000d2594  b       loc_1000d25ac
loc_1000d2598:
  1000d2598  mov     x19, x22
  1000d259c  mov     x22, x0
  1000d25a0  mov     x0, x27
  1000d25a4  bl      _objc_release
  1000d25a8  b       loc_1000d25b4
loc_1000d25ac:
  1000d25ac  mov     x19, x22
  1000d25b0  mov     x22, x0
loc_1000d25b4:
  1000d25b4  mov     x0, x26
  1000d25b8  bl      _objc_release
loc_1000d25bc:
  1000d25bc  mov     x0, x19
  1000d25c0  bl      _objc_release
loc_1000d25c4:
  1000d25c4  mov     x0, x24
loc_1000d25c8:
  1000d25c8  bl      _objc_release
loc_1000d25cc:
  1000d25cc  mov     x0, x23
  1000d25d0  bl      _objc_release
loc_1000d25d4:
  1000d25d4  mov     x0, x21
  1000d25d8  bl      _objc_release
loc_1000d25dc:
  1000d25dc  mov     x0, x20
  1000d25e0  bl      _objc_release
  1000d25e4  ldr     x0, [sp, #0x18]
  1000d25e8  bl      _objc_release
  1000d25ec  mov     x0, x22
  1000d25f0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d25f4  .word   jump table of 1000d1518, case 0 -> loc_1000d151c
  1000d25f8  .word   jump table of 1000d1518, case 1 -> loc_1000d1650
  1000d25fc  .word   jump table of 1000d1518, case 2 -> loc_1000d1780
  1000d2600  .word   jump table of 1000d1518, case 3 -> loc_1000d17d4

; ======================================================================
; -[ADStatsViewController tableView:willDisplayCell:forRowAtIndexPath:]
; address 0x1000d2604  size 152  kind objc
; ======================================================================
  1000d2604  stp     x22, x21, [sp, #-0x30]!
  1000d2608  stp     x20, x19, [sp, #0x10]
  1000d260c  stp     x29, x30, [sp, #0x20]
  1000d2610  add     x29, sp, #0x20
  1000d2614  mov     x0, x3
  1000d2618  bl      _objc_retain
  1000d261c  mov     x19, x0
  1000d2620  adrp    x8, #0x10041d000
  1000d2624  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000d2628  adrp    x8, #0x100417000
  1000d262c  nop
  1000d2630  ldr     x1, [x8, #0x340]
  1000d2634  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000d2638  mov     x29, x29
  1000d263c  bl      _objc_retainAutoreleasedReturnValue
  1000d2640  mov     x20, x0
  1000d2644  adrp    x8, #0x100417000
  1000d2648  nop
  1000d264c  ldr     x1, [x8, #0x188]
  1000d2650  mov     x0, x19
  1000d2654  mov     x2, x20
  1000d2658  bl      _objc_msgSend                            ; [arg2 setBackgroundColor:[UIColor clearColor]]
  1000d265c  mov     x0, x20
  1000d2660  bl      _objc_release
  1000d2664  mov     x0, x19
  1000d2668  ldp     x29, x30, [sp, #0x20]
  1000d266c  ldp     x20, x19, [sp, #0x10]
  1000d2670  ldp     x22, x21, [sp], #0x30
  1000d2674  b       _objc_release
  1000d2678  mov     x21, x0
  1000d267c  b       loc_1000d268c
  1000d2680  mov     x21, x0
  1000d2684  mov     x0, x20
  1000d2688  bl      _objc_release
loc_1000d268c:
  1000d268c  mov     x0, x19
  1000d2690  bl      _objc_release
  1000d2694  mov     x0, x21
  1000d2698  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController numberOfSectionsInTableView:]
; address 0x1000d269c  size 8  kind objc
; ======================================================================
  1000d269c  mov     w0, #4
  1000d26a0  ret

; ======================================================================
; -[ADStatsViewController tableView:numberOfRowsInSection:]
; address 0x1000d26a4  size 360  kind objc
; ======================================================================
  1000d26a4  stp     x22, x21, [sp, #-0x30]!
  1000d26a8  stp     x20, x19, [sp, #0x10]
  1000d26ac  stp     x29, x30, [sp, #0x20]
  1000d26b0  add     x29, sp, #0x20
  1000d26b4  mov     x21, x3
  1000d26b8  mov     x20, x0
  1000d26bc  mov     x0, x2
  1000d26c0  bl      _objc_retain
  1000d26c4  mov     x19, x0
  1000d26c8  cmp     x21, #2
  1000d26cc  b.eq    loc_1000d2714                            ; if (arg2 == 2)
  1000d26d0  cmp     x21, #1
  1000d26d4  b.ne    loc_1000d2750                            ; if (arg2 != 1)
  1000d26d8  adrp    x8, #0x10041a000
  1000d26dc  nop
  1000d26e0  ldr     x1, [x8, #0xd68]
  1000d26e4  mov     x0, x20
  1000d26e8  bl      _objc_msgSend                            ; [self endlessModeStatsOrdering]
  1000d26ec  mov     x29, x29
  1000d26f0  bl      _objc_retainAutoreleasedReturnValue
  1000d26f4  mov     x21, x0
  1000d26f8  adrp    x8, #0x100416000
  1000d26fc  nop
  1000d2700  ldr     x1, [x8, #0xe30]
  1000d2704  bl      _objc_msgSend                            ; [[self endlessModeStatsOrdering] count]
  1000d2708  mov     x20, x0
  1000d270c  b       loc_1000d27c4
  1000d2710  b       loc_1000d27f0
loc_1000d2714:
  1000d2714  adrp    x8, #0x10041a000
  1000d2718  nop
  1000d271c  ldr     x1, [x8, #0xd08]
  1000d2720  mov     x0, x20
  1000d2724  bl      _objc_msgSend                            ; [self enemiesData]
  1000d2728  mov     x29, x29
  1000d272c  bl      _objc_retainAutoreleasedReturnValue
  1000d2730  mov     x21, x0
  1000d2734  adrp    x8, #0x100416000
  1000d2738  nop
  1000d273c  ldr     x1, [x8, #0xe30]
  1000d2740  bl      _objc_msgSend                            ; [[self enemiesData] count]
  1000d2744  mov     x20, x0
  1000d2748  b       loc_1000d27c4
  1000d274c  b       loc_1000d27f0
loc_1000d2750:
  1000d2750  cbnz    x21, loc_1000d2790                       ; if (arg2 != 0)
  1000d2754  adrp    x8, #0x10041a000
  1000d2758  nop
  1000d275c  ldr     x1, [x8, #0xd80]
  1000d2760  mov     x0, x20
  1000d2764  bl      _objc_msgSend                            ; [self globalStatsOrdering]
  1000d2768  mov     x29, x29
  1000d276c  bl      _objc_retainAutoreleasedReturnValue
  1000d2770  mov     x21, x0
  1000d2774  adrp    x8, #0x100416000
  1000d2778  nop
  1000d277c  ldr     x1, [x8, #0xe30]
  1000d2780  bl      _objc_msgSend                            ; [[self globalStatsOrdering] count]
  1000d2784  mov     x20, x0
  1000d2788  b       loc_1000d27c4
  1000d278c  b       loc_1000d27f0
loc_1000d2790:
  1000d2790  adrp    x8, #0x10041a000
  1000d2794  nop
  1000d2798  ldr     x1, [x8, #0x898]
  1000d279c  mov     x0, x20
  1000d27a0  bl      _objc_msgSend                            ; [self weaponsData]
  1000d27a4  mov     x29, x29
  1000d27a8  bl      _objc_retainAutoreleasedReturnValue
  1000d27ac  mov     x21, x0
  1000d27b0  adrp    x8, #0x100416000
  1000d27b4  nop
  1000d27b8  ldr     x1, [x8, #0xe30]
  1000d27bc  bl      _objc_msgSend                            ; [[self weaponsData] count]
  1000d27c0  mov     x20, x0
loc_1000d27c4:
  1000d27c4  mov     x0, x21
  1000d27c8  bl      _objc_release
  1000d27cc  mov     x0, x19
  1000d27d0  bl      _objc_release
  1000d27d4  mov     x0, x20
  1000d27d8  ldp     x29, x30, [sp, #0x20]
  1000d27dc  ldp     x20, x19, [sp, #0x10]
  1000d27e0  ldp     x22, x21, [sp], #0x30
  1000d27e4  ret
  1000d27e8  mov     x20, x0
  1000d27ec  b       loc_1000d27fc
loc_1000d27f0:
  1000d27f0  mov     x20, x0
  1000d27f4  mov     x0, x21
  1000d27f8  bl      _objc_release
loc_1000d27fc:
  1000d27fc  mov     x0, x19
  1000d2800  bl      _objc_release
  1000d2804  mov     x0, x20
  1000d2808  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController tableView:heightForHeaderInSection:]
; address 0x1000d280c  size 292  kind objc
; ======================================================================
  1000d280c  stp     x22, x21, [sp, #-0x30]!
  1000d2810  stp     x20, x19, [sp, #0x10]
  1000d2814  stp     x29, x30, [sp, #0x20]
  1000d2818  add     x29, sp, #0x20
  1000d281c  sub     sp, sp, #0x10
  1000d2820  mov     x20, x3
  1000d2824  mov     x0, x2
  1000d2828  bl      _objc_retain
  1000d282c  mov     x19, x0
  1000d2830  adrp    x8, #0x100417000
  1000d2834  nop
  1000d2838  ldr     x1, [x8, #0x3e8]
  1000d283c  bl      _objc_msgSend                            ; [arg1 dataSource]
  1000d2840  mov     x29, x29
  1000d2844  bl      _objc_retainAutoreleasedReturnValue
  1000d2848  mov     x21, x0
  1000d284c  adrp    x8, #0x100417000
  1000d2850  nop
  1000d2854  ldr     x1, [x8, #0x3f0]
  1000d2858  mov     x2, x19
  1000d285c  mov     x3, x20
  1000d2860  bl      _objc_msgSend                            ; [[arg1 dataSource] tableView:arg1 numberOfRowsInSection:arg2]
  1000d2864  mov     x20, x0
  1000d2868  mov     x0, x21
  1000d286c  bl      _objc_release
  1000d2870  cbz     x20, loc_1000d28d0                       ; if ([[arg1 dataSource] tableView:arg1 numberOfRowsInSection:arg2] == 0)
  1000d2874  adrp    x8, #0x10041d000
  1000d2878  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000d287c  adrp    x8, #0x100416000
  1000d2880  nop
  1000d2884  ldr     x1, [x8, #0xc00]
  1000d2888  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000d288c  mov     x29, x29
  1000d2890  bl      _objc_retainAutoreleasedReturnValue
  1000d2894  mov     x20, x0
  1000d2898  adrp    x8, #0x100416000
  1000d289c  nop
  1000d28a0  ldr     x1, [x8, #0xd18]
  1000d28a4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000d28a8  cmp     w0, #0
  1000d28ac  nop
  1000d28b0  ldr     d0, #0x1001819f0                         ; d0 = 180.0
  1000d28b4  nop
  1000d28b8  ldr     d1, #0x100181b80                         ; d1 = 80.0
  1000d28bc  fcsel   d0, d1, d0, ne
  1000d28c0  str     q0, [sp]
  1000d28c4  mov     x0, x20
  1000d28c8  bl      _objc_release
  1000d28cc  b       loc_1000d28d8
loc_1000d28d0:
  1000d28d0  movi    v0.16b, #0
  1000d28d4  str     q0, [sp]
loc_1000d28d8:
  1000d28d8  mov     x0, x19
  1000d28dc  bl      _objc_release
  1000d28e0  ldr     q0, [sp]
  1000d28e4  sub     sp, x29, #0x20
  1000d28e8  ldp     x29, x30, [sp, #0x20]
  1000d28ec  ldp     x20, x19, [sp, #0x10]
  1000d28f0  ldp     x22, x21, [sp], #0x30
  1000d28f4  ret
  1000d28f8  mov     x20, x0
  1000d28fc  b       loc_1000d2920
  1000d2900  mov     x20, x0
  1000d2904  mov     x0, x21
  1000d2908  bl      _objc_release
  1000d290c  b       loc_1000d2920
  1000d2910  mov     x1, x20
  1000d2914  mov     x20, x0
  1000d2918  mov     x0, x1
  1000d291c  bl      _objc_release
loc_1000d2920:
  1000d2920  mov     x0, x19
  1000d2924  bl      _objc_release
  1000d2928  mov     x0, x20
  1000d292c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController tableView:heightForRowAtIndexPath:]
; address 0x1000d2930  size 760  kind objc
; ======================================================================
  1000d2930  stp     d11, d10, [sp, #-0x50]!
  1000d2934  stp     d9, d8, [sp, #0x10]
  1000d2938  stp     x22, x21, [sp, #0x20]
  1000d293c  stp     x20, x19, [sp, #0x30]
  1000d2940  stp     x29, x30, [sp, #0x40]
  1000d2944  add     x29, sp, #0x40
  1000d2948  sub     sp, sp, #0x10
  1000d294c  mov     x20, x0
  1000d2950  mov     x0, x3
  1000d2954  bl      _objc_retain
  1000d2958  mov     x19, x0
  1000d295c  adrp    x8, #0x100417000
  1000d2960  nop
  1000d2964  ldr     x1, [x8, #0x348]
  1000d2968  bl      _objc_msgSend                            ; [arg2 section]
  1000d296c  cmp     x0, #2
  1000d2970  b.hs    loc_1000d29c0                            ; if ([arg2 section] >=u 2)
  1000d2974  adrp    x8, #0x10041d000
  1000d2978  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000d297c  adrp    x8, #0x100416000
  1000d2980  nop
  1000d2984  ldr     x1, [x8, #0xc00]
  1000d2988  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000d298c  mov     x29, x29
  1000d2990  bl      _objc_retainAutoreleasedReturnValue
  1000d2994  mov     x20, x0
  1000d2998  adrp    x8, #0x100416000
  1000d299c  nop
  1000d29a0  ldr     x1, [x8, #0xd18]
  1000d29a4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000d29a8  cmp     w0, #0
  1000d29ac  adrp    x8, #0x100181000
  1000d29b0  ldr     d0, [x8, #0xa08]                         ; d0 = 60.0
  1000d29b4  fmov    d1, #30.00000000
  1000d29b8  fcsel   d0, d1, d0, ne
  1000d29bc  b       loc_1000d2ba8
loc_1000d29c0:
  1000d29c0  b.ne    loc_1000d2aa4                            ; if (flags !=)
  1000d29c4  adrp    x8, #0x10041a000
  1000d29c8  nop
  1000d29cc  ldr     x1, [x8, #0xd08]
  1000d29d0  mov     x0, x20
  1000d29d4  bl      _objc_msgSend                            ; [self enemiesData]
  1000d29d8  mov     x29, x29
  1000d29dc  bl      _objc_retainAutoreleasedReturnValue
  1000d29e0  mov     x21, x0
  1000d29e4  adrp    x8, #0x100417000
  1000d29e8  nop
  1000d29ec  ldr     x1, [x8, #0x350]
  1000d29f0  mov     x0, x19
  1000d29f4  bl      _objc_msgSend                            ; [arg2 row]
  1000d29f8  mov     x2, x0
  1000d29fc  adrp    x8, #0x100416000
  1000d2a00  nop
  1000d2a04  ldr     x1, [x8, #0xc30]
  1000d2a08  mov     x0, x21
  1000d2a0c  bl      _objc_msgSend                            ; [[self enemiesData] objectAtIndex:[arg2 row]]
  1000d2a10  mov     x29, x29
  1000d2a14  bl      _objc_retainAutoreleasedReturnValue
  1000d2a18  mov     x20, x0
  1000d2a1c  mov     x0, x21
  1000d2a20  bl      _objc_release
  1000d2a24  adrp    x8, #0x100416000
  1000d2a28  nop
  1000d2a2c  ldr     x1, [x8, #0xe30]
  1000d2a30  mov     x0, x20
  1000d2a34  bl      _objc_msgSend                            ; [[[self enemiesData] objectAtIndex:[arg2 row]] count]
  1000d2a38  mov     x21, x0
  1000d2a3c  adrp    x22, #0x10041d000
  1000d2a40  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2a44  adrp    x8, #0x100417000
  1000d2a48  nop
  1000d2a4c  ldr     x1, [x8, #0x358]
  1000d2a50  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleLabelOffset]
  1000d2a54  mov     v8.16b, v0.16b
  1000d2a58  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2a5c  adrp    x8, #0x100417000
  1000d2a60  nop
  1000d2a64  ldr     x1, [x8, #0x360]
  1000d2a68  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleCellHeight]
  1000d2a6c  mov     v9.16b, v0.16b
  1000d2a70  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2a74  adrp    x8, #0x100417000
  1000d2a78  nop
  1000d2a7c  ldr     x1, [x8, #0x368]
  1000d2a80  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  1000d2a84  mov     v10.16b, v0.16b
  1000d2a88  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2a8c  adrp    x8, #0x100417000
  1000d2a90  nop
  1000d2a94  ldr     x1, [x8, #0x370]
  1000d2a98  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
  1000d2a9c  b       loc_1000d2b84
  1000d2aa0  b       loc_1000d2bf4
loc_1000d2aa4:
  1000d2aa4  cmp     x0, #3
  1000d2aa8  b.ne    loc_1000d2bdc                            ; if ([arg2 section] != 3)
  1000d2aac  adrp    x8, #0x10041a000
  1000d2ab0  nop
  1000d2ab4  ldr     x1, [x8, #0x898]
  1000d2ab8  mov     x0, x20
  1000d2abc  bl      _objc_msgSend                            ; [self weaponsData]
  1000d2ac0  mov     x29, x29
  1000d2ac4  bl      _objc_retainAutoreleasedReturnValue
  1000d2ac8  mov     x21, x0
  1000d2acc  adrp    x8, #0x100417000
  1000d2ad0  nop
  1000d2ad4  ldr     x1, [x8, #0x350]
  1000d2ad8  mov     x0, x19
  1000d2adc  bl      _objc_msgSend                            ; [arg2 row]
  1000d2ae0  mov     x2, x0
  1000d2ae4  adrp    x8, #0x100416000
  1000d2ae8  nop
  1000d2aec  ldr     x1, [x8, #0xc30]
  1000d2af0  mov     x0, x21
  1000d2af4  bl      _objc_msgSend                            ; [[self weaponsData] objectAtIndex:[arg2 row]]
  1000d2af8  mov     x29, x29
  1000d2afc  bl      _objc_retainAutoreleasedReturnValue
  1000d2b00  mov     x20, x0
  1000d2b04  mov     x0, x21
  1000d2b08  bl      _objc_release
  1000d2b0c  adrp    x8, #0x100416000
  1000d2b10  nop
  1000d2b14  ldr     x1, [x8, #0xe30]
  1000d2b18  mov     x0, x20
  1000d2b1c  bl      _objc_msgSend                            ; [[[self weaponsData] objectAtIndex:[arg2 row]] count]
  1000d2b20  mov     x21, x0
  1000d2b24  adrp    x22, #0x10041d000
  1000d2b28  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2b2c  adrp    x8, #0x100417000
  1000d2b30  nop
  1000d2b34  ldr     x1, [x8, #0x358]
  1000d2b38  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleLabelOffset]
  1000d2b3c  mov     v8.16b, v0.16b
  1000d2b40  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2b44  adrp    x8, #0x100417000
  1000d2b48  nop
  1000d2b4c  ldr     x1, [x8, #0x360]
  1000d2b50  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleCellHeight]
  1000d2b54  mov     v9.16b, v0.16b
  1000d2b58  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2b5c  adrp    x8, #0x100417000
  1000d2b60  nop
  1000d2b64  ldr     x1, [x8, #0x368]
  1000d2b68  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  1000d2b6c  mov     v10.16b, v0.16b
  1000d2b70  ldr     x0, [x22, #0xff0]                        ; class ADStatsMultiCell
  1000d2b74  adrp    x8, #0x100417000
  1000d2b78  nop
  1000d2b7c  ldr     x1, [x8, #0x370]
  1000d2b80  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
loc_1000d2b84:
  1000d2b84  sub     x8, x21, #1
  1000d2b88  fadd    d1, d8, d9                               ; t1 = ([ADStatsMultiCell defaultSubTitleLabelOffset] + [ADStatsMultiCell defaultSubTitleCellHeight])
  1000d2b8c  scvtf   d2, x8
  1000d2b90  fmul    d2, d2, d10
  1000d2b94  fadd    d1, d1, d2
  1000d2b98  scvtf   d2, x21
  1000d2b9c  fmul    d0, d2, d0
  1000d2ba0  fadd    d0, d1, d0                               ; t2 = ((t1 + ((float)(x21 - 1) * [ADStatsMultiCell defaultCellHeight])) + ((float)x21 * [ADStatsMultiCell defaultCellOffset]))
  1000d2ba4  fadd    d0, d9, d0
loc_1000d2ba8:
  1000d2ba8  str     q0, [sp]
  1000d2bac  mov     x0, x20
  1000d2bb0  bl      _objc_release
loc_1000d2bb4:
  1000d2bb4  mov     x0, x19
  1000d2bb8  bl      _objc_release
  1000d2bbc  ldr     q0, [sp]
  1000d2bc0  sub     sp, x29, #0x40
  1000d2bc4  ldp     x29, x30, [sp, #0x40]
  1000d2bc8  ldp     x20, x19, [sp, #0x30]
  1000d2bcc  ldp     x22, x21, [sp, #0x20]
  1000d2bd0  ldp     d9, d8, [sp, #0x10]
  1000d2bd4  ldp     d11, d10, [sp], #0x50
  1000d2bd8  ret
loc_1000d2bdc:
  1000d2bdc  movi    v0.16b, #0
  1000d2be0  str     q0, [sp]
  1000d2be4  b       loc_1000d2bb4
  1000d2be8  mov     x21, x0
  1000d2bec  b       loc_1000d2c18
  1000d2bf0  b       loc_1000d2bf4
loc_1000d2bf4:
  1000d2bf4  mov     x21, x0
  1000d2bf8  mov     x0, x20
  1000d2bfc  bl      _objc_release
  1000d2c00  b       loc_1000d2c18
  1000d2c04  b       loc_1000d2c08
loc_1000d2c08:
  1000d2c08  mov     x1, x21
  1000d2c0c  mov     x21, x0
  1000d2c10  mov     x0, x1
  1000d2c14  bl      _objc_release
loc_1000d2c18:
  1000d2c18  mov     x0, x19
  1000d2c1c  bl      _objc_release
  1000d2c20  mov     x0, x21
  1000d2c24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController tableView:viewForHeaderInSection:]
; address 0x1000d2c28  size 440  kind objc
; ======================================================================
  1000d2c28  stp     x22, x21, [sp, #-0x30]!
  1000d2c2c  stp     x20, x19, [sp, #0x10]
  1000d2c30  stp     x29, x30, [sp, #0x20]
  1000d2c34  add     x29, sp, #0x20
  1000d2c38  mov     x21, x3
  1000d2c3c  mov     x0, x2
  1000d2c40  bl      _objc_retain
  1000d2c44  mov     x19, x0
  1000d2c48  cmp     x21, #2
  1000d2c4c  b.ne    loc_1000d2c6c                            ; if (arg2 != 2)
  1000d2c50  adrp    x8, #0x100417000
  1000d2c54  nop
  1000d2c58  ldr     x1, [x8, #0x3f8]
  1000d2c5c  mov     w2, #2
  1000d2c60  mov     x0, x19
  1000d2c64  bl      _objc_msgSend                            ; [arg1 numberOfRowsInSection:2]
  1000d2c68  cbz     x0, loc_1000d2d50                        ; if ([arg1 numberOfRowsInSection:2] == 0)
loc_1000d2c6c:
  1000d2c6c  adrp    x8, #0x100417000
  1000d2c70  nop
  1000d2c74  ldr     x1, [x8, #0x400]
  1000d2c78  adrp    x2, #0x1003ba000
  1000d2c7c  add     x2, x2, #0x30                            ; @"headerID"
  1000d2c80  mov     x0, x19
  1000d2c84  bl      _objc_msgSend                            ; [arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"]
  1000d2c88  mov     x29, x29
  1000d2c8c  bl      _objc_retainAutoreleasedReturnValue
  1000d2c90  mov     x20, x0
  1000d2c94  adrp    x8, #0x100417000
  1000d2c98  add     x8, x8, #0x408                           ; &@selector(headerTitleLabel)
  1000d2c9c  ldr     x1, [x8]
  1000d2ca0  cmp     x21, #1
  1000d2ca4  b.ne    loc_1000d2cdc                            ; if (arg2 != 1)
  1000d2ca8  mov     x0, x20
  1000d2cac  bl      _objc_msgSend                            ; [[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel]
  1000d2cb0  mov     x29, x29
  1000d2cb4  bl      _objc_retainAutoreleasedReturnValue
  1000d2cb8  mov     x21, x0
  1000d2cbc  adrp    x8, #0x100416000
  1000d2cc0  nop
  1000d2cc4  ldr     x1, [x8, #0xb68]
  1000d2cc8  adrp    x2, #0x1003bd000
  1000d2ccc  add     x2, x2, #0xf70                           ; @"Endless mode"
  1000d2cd0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel] setText:@"Endless mode"]
  1000d2cd4  b       loc_1000d2d84
  1000d2cd8  b       loc_1000d2db8
loc_1000d2cdc:
  1000d2cdc  cbnz    x21, loc_1000d2d14                       ; if (arg2 != 0)
  1000d2ce0  mov     x0, x20
  1000d2ce4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel]
  1000d2ce8  mov     x29, x29
  1000d2cec  bl      _objc_retainAutoreleasedReturnValue
  1000d2cf0  mov     x21, x0
  1000d2cf4  adrp    x8, #0x100416000
  1000d2cf8  nop
  1000d2cfc  ldr     x1, [x8, #0xb68]
  1000d2d00  adrp    x2, #0x1003c2000
  1000d2d04  add     x2, x2, #0x510                           ; @"Misc"
  1000d2d08  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel] setText:@"Misc"]
  1000d2d0c  b       loc_1000d2d84
  1000d2d10  b       loc_1000d2db8
loc_1000d2d14:
  1000d2d14  cmp     x21, #2
  1000d2d18  b.ne    loc_1000d2d58                            ; if (arg2 != 2)
  1000d2d1c  mov     x0, x20
  1000d2d20  bl      _objc_msgSend                            ; [[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel]
  1000d2d24  mov     x29, x29
  1000d2d28  bl      _objc_retainAutoreleasedReturnValue
  1000d2d2c  mov     x21, x0
  1000d2d30  adrp    x8, #0x100416000
  1000d2d34  nop
  1000d2d38  ldr     x1, [x8, #0xb68]
  1000d2d3c  adrp    x2, #0x1003c0000
  1000d2d40  add     x2, x2, #0x690                           ; @"Enemies"
  1000d2d44  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel] setText:@"Enemies"]
  1000d2d48  b       loc_1000d2d84
  1000d2d4c  b       loc_1000d2db8
loc_1000d2d50:
  1000d2d50  mov     x20, #0
  1000d2d54  b       loc_1000d2d8c
loc_1000d2d58:
  1000d2d58  mov     x0, x20
  1000d2d5c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel]
  1000d2d60  mov     x29, x29
  1000d2d64  bl      _objc_retainAutoreleasedReturnValue
  1000d2d68  mov     x21, x0
  1000d2d6c  adrp    x8, #0x100416000
  1000d2d70  nop
  1000d2d74  ldr     x1, [x8, #0xb68]
  1000d2d78  adrp    x2, #0x1003bf000
  1000d2d7c  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000d2d80  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel] setText:@"Weapons"]
loc_1000d2d84:
  1000d2d84  mov     x0, x21
  1000d2d88  bl      _objc_release
loc_1000d2d8c:
  1000d2d8c  mov     x0, x19
  1000d2d90  bl      _objc_release
  1000d2d94  mov     x0, x20
  1000d2d98  ldp     x29, x30, [sp, #0x20]
  1000d2d9c  ldp     x20, x19, [sp, #0x10]
  1000d2da0  ldp     x22, x21, [sp], #0x30
  1000d2da4  b       _objc_autoreleaseReturnValue
  1000d2da8  mov     x21, x0
  1000d2dac  b       loc_1000d2dd0
  1000d2db0  mov     x21, x0
  1000d2db4  b       loc_1000d2dc8
loc_1000d2db8:
  1000d2db8  mov     x1, x21
  1000d2dbc  mov     x21, x0
  1000d2dc0  mov     x0, x1
  1000d2dc4  bl      _objc_release
loc_1000d2dc8:
  1000d2dc8  mov     x0, x20
  1000d2dcc  bl      _objc_release
loc_1000d2dd0:
  1000d2dd0  mov     x0, x19
  1000d2dd4  bl      _objc_release
  1000d2dd8  mov     x0, x21
  1000d2ddc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsViewController tableView]
; address 0x1000d2de0  size 32  kind objc
; ======================================================================
  1000d2de0  stp     x29, x30, [sp, #-0x10]!
  1000d2de4  mov     x29, sp
  1000d2de8  adrp    x8, #0x100420000
  1000d2dec  ldrsw   x8, [x8, #0x41c]                         ; ivar offset ADStatsViewController._tableView (+0x148)
  1000d2df0  add     x0, x0, x8
  1000d2df4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000d2df8  ldp     x29, x30, [sp], #0x10
  1000d2dfc  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADStatsViewController setTableView:]
; address 0x1000d2e00  size 20  kind objc
; ======================================================================
  1000d2e00  adrp    x8, #0x100420000
  1000d2e04  ldrsw   x8, [x8, #0x41c]                         ; ivar offset ADStatsViewController._tableView (+0x148)
  1000d2e08  add     x0, x0, x8
  1000d2e0c  mov     x1, x2
  1000d2e10  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADStatsViewController globalData]
; address 0x1000d2e14  size 16  kind objc
; ======================================================================
  1000d2e14  adrp    x8, #0x100420000
  1000d2e18  ldrsw   x2, [x8, #0x420]                         ; ivar offset ADStatsViewController._globalData (+0x150)
  1000d2e1c  mov     w3, #1
  1000d2e20  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setGlobalData:]
; address 0x1000d2e24  size 12  kind objc
; ======================================================================
  1000d2e24  adrp    x8, #0x100420000
  1000d2e28  ldrsw   x3, [x8, #0x420]                         ; ivar offset ADStatsViewController._globalData (+0x150)
  1000d2e2c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController endlessModeData]
; address 0x1000d2e30  size 16  kind objc
; ======================================================================
  1000d2e30  adrp    x8, #0x100420000
  1000d2e34  ldrsw   x2, [x8, #0x424]                         ; ivar offset ADStatsViewController._endlessModeData (+0x158)
  1000d2e38  mov     w3, #1
  1000d2e3c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setEndlessModeData:]
; address 0x1000d2e40  size 12  kind objc
; ======================================================================
  1000d2e40  adrp    x8, #0x100420000
  1000d2e44  ldrsw   x3, [x8, #0x424]                         ; ivar offset ADStatsViewController._endlessModeData (+0x158)
  1000d2e48  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController weaponsData]
; address 0x1000d2e4c  size 16  kind objc
; ======================================================================
  1000d2e4c  adrp    x8, #0x100420000
  1000d2e50  ldrsw   x2, [x8, #0x428]                         ; ivar offset ADStatsViewController._weaponsData (+0x160)
  1000d2e54  mov     w3, #1
  1000d2e58  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setWeaponsData:]
; address 0x1000d2e5c  size 12  kind objc
; ======================================================================
  1000d2e5c  adrp    x8, #0x100420000
  1000d2e60  ldrsw   x3, [x8, #0x428]                         ; ivar offset ADStatsViewController._weaponsData (+0x160)
  1000d2e64  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController enemiesData]
; address 0x1000d2e68  size 16  kind objc
; ======================================================================
  1000d2e68  adrp    x8, #0x100420000
  1000d2e6c  ldrsw   x2, [x8, #0x42c]                         ; ivar offset ADStatsViewController._enemiesData (+0x168)
  1000d2e70  mov     w3, #1
  1000d2e74  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setEnemiesData:]
; address 0x1000d2e78  size 12  kind objc
; ======================================================================
  1000d2e78  adrp    x8, #0x100420000
  1000d2e7c  ldrsw   x3, [x8, #0x42c]                         ; ivar offset ADStatsViewController._enemiesData (+0x168)
  1000d2e80  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController endlessModeStatsOrdering]
; address 0x1000d2e84  size 16  kind objc
; ======================================================================
  1000d2e84  adrp    x8, #0x100420000
  1000d2e88  ldrsw   x2, [x8, #0x430]                         ; ivar offset ADStatsViewController._endlessModeStatsOrdering (+0x170)
  1000d2e8c  mov     w3, #1
  1000d2e90  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setEndlessModeStatsOrdering:]
; address 0x1000d2e94  size 12  kind objc
; ======================================================================
  1000d2e94  adrp    x8, #0x100420000
  1000d2e98  ldrsw   x3, [x8, #0x430]                         ; ivar offset ADStatsViewController._endlessModeStatsOrdering (+0x170)
  1000d2e9c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController globalStatsOrdering]
; address 0x1000d2ea0  size 16  kind objc
; ======================================================================
  1000d2ea0  adrp    x8, #0x100420000
  1000d2ea4  ldrsw   x2, [x8, #0x434]                         ; ivar offset ADStatsViewController._globalStatsOrdering (+0x178)
  1000d2ea8  mov     w3, #1
  1000d2eac  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setGlobalStatsOrdering:]
; address 0x1000d2eb0  size 12  kind objc
; ======================================================================
  1000d2eb0  adrp    x8, #0x100420000
  1000d2eb4  ldrsw   x3, [x8, #0x434]                         ; ivar offset ADStatsViewController._globalStatsOrdering (+0x178)
  1000d2eb8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController enemyCells]
; address 0x1000d2ebc  size 16  kind objc
; ======================================================================
  1000d2ebc  adrp    x8, #0x100420000
  1000d2ec0  ldrsw   x2, [x8, #0x438]                         ; ivar offset ADStatsViewController._enemyCells (+0x180)
  1000d2ec4  mov     w3, #1
  1000d2ec8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setEnemyCells:]
; address 0x1000d2ecc  size 12  kind objc
; ======================================================================
  1000d2ecc  adrp    x8, #0x100420000
  1000d2ed0  ldrsw   x3, [x8, #0x438]                         ; ivar offset ADStatsViewController._enemyCells (+0x180)
  1000d2ed4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController weaponCells]
; address 0x1000d2ed8  size 16  kind objc
; ======================================================================
  1000d2ed8  adrp    x8, #0x100420000
  1000d2edc  ldrsw   x2, [x8, #0x43c]                         ; ivar offset ADStatsViewController._weaponCells (+0x188)
  1000d2ee0  mov     w3, #1
  1000d2ee4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADStatsViewController setWeaponCells:]
; address 0x1000d2ee8  size 12  kind objc
; ======================================================================
  1000d2ee8  adrp    x8, #0x100420000
  1000d2eec  ldrsw   x3, [x8, #0x43c]                         ; ivar offset ADStatsViewController._weaponCells (+0x188)
  1000d2ef0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADStatsViewController dataLoaded]
; address 0x1000d2ef4  size 20  kind objc
; ======================================================================
  1000d2ef4  adrp    x8, #0x100420000
  1000d2ef8  ldrsw   x8, [x8, #0x440]                         ; ivar offset ADStatsViewController._dataLoaded (+0x140)
  1000d2efc  ldrb    w8, [x0, x8]                             ; w8 = self->_dataLoaded
  1000d2f00  and     w0, w8, #1
  1000d2f04  ret

; ======================================================================
; -[ADStatsViewController setDataLoaded:]
; address 0x1000d2f08  size 16  kind objc
; ======================================================================
  1000d2f08  adrp    x8, #0x100420000
  1000d2f0c  ldrsw   x8, [x8, #0x440]                         ; ivar offset ADStatsViewController._dataLoaded (+0x140)
  1000d2f10  strb    w2, [x0, x8]                             ; self->_dataLoaded = arg1
  1000d2f14  ret

; ======================================================================
; -[ADStatsViewController .cxx_destruct]
; address 0x1000d2f18  size 200  kind objc
; ======================================================================
  1000d2f18  stp     x20, x19, [sp, #-0x20]!
  1000d2f1c  stp     x29, x30, [sp, #0x10]
  1000d2f20  add     x29, sp, #0x10
  1000d2f24  mov     x19, x0
  1000d2f28  adrp    x8, #0x100420000
  1000d2f2c  ldrsw   x8, [x8, #0x43c]                         ; ivar offset ADStatsViewController._weaponCells (+0x188)
  1000d2f30  add     x0, x19, x8
  1000d2f34  mov     x1, #0
  1000d2f38  bl      _objc_storeStrong
  1000d2f3c  adrp    x8, #0x100420000
  1000d2f40  ldrsw   x8, [x8, #0x438]                         ; ivar offset ADStatsViewController._enemyCells (+0x180)
  1000d2f44  add     x0, x19, x8
  1000d2f48  mov     x1, #0
  1000d2f4c  bl      _objc_storeStrong
  1000d2f50  adrp    x8, #0x100420000
  1000d2f54  ldrsw   x8, [x8, #0x434]                         ; ivar offset ADStatsViewController._globalStatsOrdering (+0x178)
  1000d2f58  add     x0, x19, x8
  1000d2f5c  mov     x1, #0
  1000d2f60  bl      _objc_storeStrong
  1000d2f64  adrp    x8, #0x100420000
  1000d2f68  ldrsw   x8, [x8, #0x430]                         ; ivar offset ADStatsViewController._endlessModeStatsOrdering (+0x170)
  1000d2f6c  add     x0, x19, x8
  1000d2f70  mov     x1, #0
  1000d2f74  bl      _objc_storeStrong
  1000d2f78  adrp    x8, #0x100420000
  1000d2f7c  ldrsw   x8, [x8, #0x42c]                         ; ivar offset ADStatsViewController._enemiesData (+0x168)
  1000d2f80  add     x0, x19, x8
  1000d2f84  mov     x1, #0
  1000d2f88  bl      _objc_storeStrong
  1000d2f8c  adrp    x8, #0x100420000
  1000d2f90  ldrsw   x8, [x8, #0x428]                         ; ivar offset ADStatsViewController._weaponsData (+0x160)
  1000d2f94  add     x0, x19, x8
  1000d2f98  mov     x1, #0
  1000d2f9c  bl      _objc_storeStrong
  1000d2fa0  adrp    x8, #0x100420000
  1000d2fa4  ldrsw   x8, [x8, #0x424]                         ; ivar offset ADStatsViewController._endlessModeData (+0x158)
  1000d2fa8  add     x0, x19, x8
  1000d2fac  mov     x1, #0
  1000d2fb0  bl      _objc_storeStrong
  1000d2fb4  adrp    x8, #0x100420000
  1000d2fb8  ldrsw   x8, [x8, #0x420]                         ; ivar offset ADStatsViewController._globalData (+0x150)
  1000d2fbc  add     x0, x19, x8
  1000d2fc0  mov     x1, #0
  1000d2fc4  bl      _objc_storeStrong
  1000d2fc8  adrp    x8, #0x100420000
  1000d2fcc  ldrsw   x8, [x8, #0x41c]                         ; ivar offset ADStatsViewController._tableView (+0x148)
  1000d2fd0  add     x0, x19, x8
  1000d2fd4  ldp     x29, x30, [sp, #0x10]
  1000d2fd8  ldp     x20, x19, [sp], #0x20
  1000d2fdc  b       _objc_destroyWeak
