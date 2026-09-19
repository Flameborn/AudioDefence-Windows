// unit ADGameOverEndlessStatsViewController — 27 functions
//   0x100011550    2064  -[ADGameOverEndlessStatsViewController initWithNibName:bundle:]
//   0x100011d60    1004  -[ADGameOverEndlessStatsViewController viewDidLoad]
//   0x10001214c      60  -[ADGameOverEndlessStatsViewController didReceiveMemoryWarning]
//   0x100012188     648  -[ADGameOverEndlessStatsViewController tableView:willDisplayCell:forRowAtIndexPath:]
//   0x100012410     488  -[ADGameOverEndlessStatsViewController tableView:numberOfRowsInSection:]
//   0x1000125f8     728  -[ADGameOverEndlessStatsViewController tableView:heightForRowAtIndexPath:]
//   0x1000128d0      32  -[ADGameOverEndlessStatsViewController numberOfSectionsInTableView:]
//   0x1000128f0     644  -[ADGameOverEndlessStatsViewController tableView:cellForRowAtIndexPath:]
//   0x100012b74     680  -[ADGameOverEndlessStatsViewController createMiscCellForRowAtIndexPath:ForTableView:]
//   0x100012e1c     852  -[ADGameOverEndlessStatsViewController createEnemyCellForRowAtIndexPath:ForTableView:]
//   0x100013170    1912  -[ADGameOverEndlessStatsViewController createWeaponCellForRow:]
//   0x1000138e8     192  -[ADGameOverEndlessStatsViewController tableView:heightForHeaderInSection:]
//   0x1000139a8     648  -[ADGameOverEndlessStatsViewController tableView:viewForHeaderInSection:]
//   0x100013c30     156  -[ADGameOverEndlessStatsViewController backButtonPressed]
//   0x100013ccc       4  -[ADGameOverEndlessStatsViewController scrollViewDidScroll:]
//   0x100013cd0      32  -[ADGameOverEndlessStatsViewController tableView]
//   0x100013cf0      20  -[ADGameOverEndlessStatsViewController setTableView:]
//   0x100013d04      32  -[ADGameOverEndlessStatsViewController delegate]
//   0x100013d24      20  -[ADGameOverEndlessStatsViewController setDelegate:]
//   0x100013d38      16  -[ADGameOverEndlessStatsViewController numberOfSections]
//   0x100013d48      16  -[ADGameOverEndlessStatsViewController setNumberOfSections:]
//   0x100013d58      16  -[ADGameOverEndlessStatsViewController weaponCells]
//   0x100013d68      12  -[ADGameOverEndlessStatsViewController setWeaponCells:]
//   0x100013d74      16  -[ADGameOverEndlessStatsViewController sectionsDict]
//   0x100013d84      12  -[ADGameOverEndlessStatsViewController setSectionsDict:]
//   0x100013d90     256  -[ADGameOverEndlessStatsViewController .cxx_destruct]
//   0x100013e90     260  sub_100013e90

; ======================================================================
; -[ADGameOverEndlessStatsViewController initWithNibName:bundle:]
; address 0x100011550  size 2064  kind objc
; ======================================================================
  100011550  stp     x28, x27, [sp, #-0x60]!
  100011554  stp     x26, x25, [sp, #0x10]
  100011558  stp     x24, x23, [sp, #0x20]
  10001155c  stp     x22, x21, [sp, #0x30]
  100011560  stp     x20, x19, [sp, #0x40]
  100011564  stp     x29, x30, [sp, #0x50]
  100011568  add     x29, sp, #0x50
  10001156c  sub     sp, sp, #0x40
  100011570  mov     x19, x3
  100011574  mov     x20, x0
  100011578  mov     x0, x2
  10001157c  bl      _objc_retain
  100011580  mov     x21, x0
  100011584  str     x21, [sp, #0x18]
  100011588  mov     x0, x19
  10001158c  bl      _objc_retain
  100011590  mov     x9, x0
  100011594  str     x9, [sp, #0x10]
  100011598  str     x20, [sp, #0x30]
  10001159c  adrp    x8, #0x10041e000
  1000115a0  ldr     x8, [x8, #0xbe8]
  1000115a4  str     x8, [sp, #0x38]
  1000115a8  adrp    x8, #0x100416000
  1000115ac  nop
  1000115b0  ldr     x1, [x8, #0xb40]
  1000115b4  mov     x25, #0
  1000115b8  add     x0, sp, #0x30
  1000115bc  mov     x2, x21
  1000115c0  mov     x3, x9
  1000115c4  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000115c8  mov     x21, x0
  1000115cc  cbz     x21, loc_100011c88                       ; if (self == 0)
  1000115d0  mov     x25, x21
  1000115d4  adrp    x23, #0x10041d000
  1000115d8  ldr     x0, [x23, #0xef8]                        ; class NSDictionary
  1000115dc  adrp    x8, #0x100416000
  1000115e0  nop
  1000115e4  ldr     x1, [x8, #0xac8]
  1000115e8  str     x1, [sp, #0x20]
  1000115ec  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000115f0  mov     x25, x21
  1000115f4  adrp    x8, #0x100416000
  1000115f8  nop
  1000115fc  ldr     x1, [x8, #0xab8]
  100011600  str     x1, [sp, #0x28]
  100011604  bl      _objc_msgSend                            ; [[NSDictionary alloc] init]
  100011608  mov     x25, x21
  10001160c  adrp    x8, #0x10041f000
  100011610  ldrsw   x22, [x8, #0x524]                        ; ivar offset ADGameOverEndlessStatsViewController.enemyData (+0x140)
  100011614  ldr     x8, [x21, x22]                           ; x8 = self->enemyData
  100011618  str     x0, [x21, x22]                           ; self->enemyData = [[NSDictionary alloc] init]
  10001161c  mov     x0, x8
  100011620  bl      _objc_release
  100011624  ldr     x0, [x23, #0xef8]                        ; class NSDictionary
  100011628  ldr     x1, [sp, #0x20]
  10001162c  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100011630  mov     x25, x21
  100011634  ldr     x1, [sp, #0x28]
  100011638  bl      _objc_msgSend                            ; [[NSDictionary alloc] init]
  10001163c  mov     x25, x21
  100011640  adrp    x8, #0x10041f000
  100011644  ldrsw   x26, [x8, #0x528]                        ; ivar offset ADGameOverEndlessStatsViewController.weaponsData (+0x148)
  100011648  ldr     x8, [x21, x26]                           ; x8 = self->weaponsData
  10001164c  str     x0, [x21, x26]                           ; self->weaponsData = [[NSDictionary alloc] init]
  100011650  mov     x0, x8
  100011654  bl      _objc_release
  100011658  ldr     x0, [x23, #0xef8]                        ; class NSDictionary
  10001165c  ldr     x1, [sp, #0x20]
  100011660  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100011664  mov     x25, x21
  100011668  ldr     x1, [sp, #0x28]
  10001166c  bl      _objc_msgSend                            ; [[NSDictionary alloc] init]
  100011670  mov     x25, x21
  100011674  adrp    x8, #0x10041f000
  100011678  ldrsw   x20, [x8, #0x52c]                        ; ivar offset ADGameOverEndlessStatsViewController.weaponsCriticalData (+0x150)
  10001167c  ldr     x8, [x21, x20]                           ; x8 = self->weaponsCriticalData
  100011680  str     x0, [x21, x20]                           ; self->weaponsCriticalData = [[NSDictionary alloc] init]
  100011684  mov     x0, x8
  100011688  bl      _objc_release
  10001168c  ldr     x0, [x23, #0xef8]                        ; class NSDictionary
  100011690  ldr     x1, [sp, #0x20]
  100011694  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100011698  mov     x25, x21
  10001169c  ldr     x1, [sp, #0x28]
  1000116a0  bl      _objc_msgSend                            ; [[NSDictionary alloc] init]
  1000116a4  mov     x25, x21
  1000116a8  adrp    x8, #0x10041f000
  1000116ac  ldrsw   x27, [x8, #0x530]                        ; ivar offset ADGameOverEndlessStatsViewController.miscData (+0x158)
  1000116b0  ldr     x8, [x21, x27]                           ; x8 = self->miscData
  1000116b4  str     x0, [x21, x27]                           ; self->miscData = [[NSDictionary alloc] init]
  1000116b8  mov     x0, x8
  1000116bc  bl      _objc_release
  1000116c0  adrp    x28, #0x10041d000
  1000116c4  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  1000116c8  adrp    x8, #0x100417000
  1000116cc  nop
  1000116d0  ldr     x24, [x8, #0x228]
  1000116d4  mov     x1, x24
  1000116d8  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000116dc  mov     x29, x29
  1000116e0  bl      _objc_retainAutoreleasedReturnValue
  1000116e4  mov     x19, x0
  1000116e8  adrp    x8, #0x100417000
  1000116ec  nop
  1000116f0  ldr     x1, [x8, #0x230]
  1000116f4  bl      _objc_msgSend                            ; [[ADInGameStats singleton] getEnemyData]
  1000116f8  mov     x25, x21
  1000116fc  mov     x29, x29
  100011700  bl      _objc_retainAutoreleasedReturnValue
  100011704  ldr     x8, [x21, x22]                           ; x8 = self->enemyData
  100011708  str     x0, [x21, x22]                           ; self->enemyData = [[ADInGameStats singleton] getEnemyData]
  10001170c  mov     x0, x8
  100011710  bl      _objc_release
  100011714  mov     x0, x19
  100011718  bl      _objc_release
  10001171c  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100011720  mov     x1, x24
  100011724  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100011728  mov     x29, x29
  10001172c  bl      _objc_retainAutoreleasedReturnValue
  100011730  mov     x19, x0
  100011734  adrp    x8, #0x100417000
  100011738  nop
  10001173c  ldr     x1, [x8, #0x238]
  100011740  bl      _objc_msgSend                            ; [[ADInGameStats singleton] getWeaponData]
  100011744  mov     x25, x21
  100011748  mov     x29, x29
  10001174c  bl      _objc_retainAutoreleasedReturnValue
  100011750  ldr     x8, [x21, x26]                           ; x8 = self->weaponsData
  100011754  str     x0, [x21, x26]                           ; self->weaponsData = [[ADInGameStats singleton] getWeaponData]
  100011758  mov     x0, x8
  10001175c  bl      _objc_release
  100011760  mov     x0, x19
  100011764  bl      _objc_release
  100011768  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  10001176c  mov     x1, x24
  100011770  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100011774  mov     x29, x29
  100011778  bl      _objc_retainAutoreleasedReturnValue
  10001177c  mov     x19, x0
  100011780  adrp    x8, #0x100417000
  100011784  nop
  100011788  ldr     x1, [x8, #0x240]
  10001178c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] getWeaponCriticalHitsData]
  100011790  mov     x25, x21
  100011794  mov     x29, x29
  100011798  bl      _objc_retainAutoreleasedReturnValue
  10001179c  ldr     x8, [x21, x20]                           ; x8 = self->weaponsCriticalData
  1000117a0  str     x0, [x21, x20]                           ; self->weaponsCriticalData = [[ADInGameStats singleton] getWeaponCriticalHitsData]
  1000117a4  mov     x0, x8
  1000117a8  bl      _objc_release
  1000117ac  mov     x0, x19
  1000117b0  bl      _objc_release
  1000117b4  ldr     x0, [x21, x22]                           ; x0 = self->enemyData
  1000117b8  adrp    x8, #0x100417000
  1000117bc  nop
  1000117c0  ldr     x19, [x8, #0x248]
  1000117c4  mov     x1, x19
  1000117c8  bl      _objc_msgSend                            ; [self->enemyData allKeys]
  1000117cc  mov     x25, x21
  1000117d0  mov     x29, x29
  1000117d4  bl      _objc_retainAutoreleasedReturnValue
  1000117d8  adrp    x8, #0x10041f000
  1000117dc  ldrsw   x9, [x8, #0x534]                         ; ivar offset ADGameOverEndlessStatsViewController.enemyKeys (+0x168)
  1000117e0  ldr     x8, [x21, x9]                            ; x8 = self->enemyKeys
  1000117e4  str     x0, [x21, x9]                            ; self->enemyKeys = [self->enemyData allKeys]
  1000117e8  mov     x0, x8
  1000117ec  bl      _objc_release
  1000117f0  ldr     x0, [x21, x26]                           ; x0 = self->weaponsData
  1000117f4  mov     x1, x19
  1000117f8  bl      _objc_msgSend                            ; [self->weaponsData allKeys]
  1000117fc  mov     x25, x21
  100011800  mov     x29, x29
  100011804  bl      _objc_retainAutoreleasedReturnValue
  100011808  adrp    x8, #0x10041f000
  10001180c  ldrsw   x9, [x8, #0x538]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsKeys (+0x160)
  100011810  str     x9, [sp, #8]
  100011814  ldr     x8, [x21, x9]                            ; x8 = self->weaponsKeys
  100011818  str     x0, [x21, x9]                            ; self->weaponsKeys = [self->weaponsData allKeys]
  10001181c  mov     x0, x8
  100011820  bl      _objc_release
  100011824  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100011828  mov     x1, x24
  10001182c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100011830  mov     x29, x29
  100011834  bl      _objc_retainAutoreleasedReturnValue
  100011838  mov     x19, x0
  10001183c  adrp    x8, #0x100417000
  100011840  nop
  100011844  ldr     x1, [x8, #0x250]
  100011848  bl      _objc_msgSend                            ; [[ADInGameStats singleton] getMiscData]
  10001184c  mov     x25, x21
  100011850  mov     x29, x29
  100011854  bl      _objc_retainAutoreleasedReturnValue
  100011858  ldr     x8, [x21, x27]                           ; x8 = self->miscData
  10001185c  str     x0, [x21, x27]                           ; self->miscData = [[ADInGameStats singleton] getMiscData]
  100011860  mov     x0, x8
  100011864  bl      _objc_release
  100011868  mov     x0, x19
  10001186c  bl      _objc_release
  100011870  ldr     x20, [x23, #0xef8]                       ; class NSDictionary
  100011874  adrp    x8, #0x10041d000
  100011878  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001187c  adrp    x8, #0x100416000
  100011880  nop
  100011884  ldr     x1, [x8, #0xb58]
  100011888  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001188c  mov     x29, x29
  100011890  bl      _objc_retainAutoreleasedReturnValue
  100011894  mov     x19, x0
  100011898  adrp    x8, #0x100416000
  10001189c  nop
  1000118a0  ldr     x1, [x8, #0xd60]
  1000118a4  adrp    x2, #0x1003ba000
  1000118a8  add     x2, x2, #0x50                            ; @"enemies"
  1000118ac  adrp    x3, #0x1003b9000
  1000118b0  add     x3, x3, #0xa70                           ; @"plist"
  1000118b4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]
  1000118b8  mov     x29, x29
  1000118bc  bl      _objc_retainAutoreleasedReturnValue
  1000118c0  mov     x24, x0
  1000118c4  adrp    x8, #0x100417000
  1000118c8  nop
  1000118cc  ldr     x1, [x8, #0x258]
  1000118d0  mov     x0, x20
  1000118d4  mov     x2, x24
  1000118d8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  1000118dc  mov     x29, x29
  1000118e0  bl      _objc_retainAutoreleasedReturnValue
  1000118e4  adrp    x8, #0x10041f000
  1000118e8  ldrsw   x9, [x8, #0x53c]                         ; ivar offset ADGameOverEndlessStatsViewController.enemyPlist (+0x178)
  1000118ec  ldr     x8, [x21, x9]                            ; x8 = self->enemyPlist
  1000118f0  str     x0, [x21, x9]                            ; self->enemyPlist = [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  1000118f4  mov     x0, x8
  1000118f8  bl      _objc_release
  1000118fc  mov     x0, x24
  100011900  bl      _objc_release
  100011904  mov     x0, x19
  100011908  bl      _objc_release
  10001190c  ldr     x8, [x21, x26]                           ; x8 = self->weaponsData
  100011910  cbz     x8, loc_10001191c                        ; if (self->weaponsData == 0)
  100011914  ldr     x8, [x21, x22]                           ; x8 = self->enemyData
  100011918  cbnz    x8, loc_100011948                        ; if (self->enemyData != 0)
loc_10001191c:
  10001191c  mov     x25, x21
  100011920  adrp    x8, #0x10041d000
  100011924  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100011928  adrp    x8, #0x100417000
  10001192c  nop
  100011930  ldr     x1, [x8, #0x260]
  100011934  adrp    x2, #0x1003ba000
  100011938  add     x2, x2, #0x70                            ; @"Nil data"
  10001193c  adrp    x3, #0x1003ba000
  100011940  add     x3, x3, #0x90                            ; @"The enemy and/or weapons data values are nil in the ADGameOverEndlessStatsViewController"
  100011944  bl      _objc_msgSend                            ; [NSException raise:@"Nil data" format:@"The enemy and/or weapons data values are nil in the ADGameOverEndlessStatsViewController"]
loc_100011948:
  100011948  mov     x25, x21
  10001194c  adrp    x8, #0x10041d000
  100011950  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100011954  ldr     x1, [sp, #0x20]
  100011958  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10001195c  mov     x25, x21
  100011960  ldr     x1, [sp, #0x28]
  100011964  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100011968  mov     x24, x0
  10001196c  ldr     x0, [x21, x27]                           ; x0 = self->miscData
  100011970  cbz     x0, loc_1000119a4                        ; if (self->miscData == 0)
  100011974  adrp    x8, #0x100416000
  100011978  nop
  10001197c  ldr     x1, [x8, #0xe30]
  100011980  bl      _objc_msgSend                            ; [self->miscData count]
  100011984  cbz     x0, loc_1000119a4                        ; if ([self->miscData count] == 0)
  100011988  adrp    x8, #0x100416000
  10001198c  nop
  100011990  ldr     x1, [x8, #0xd90]
  100011994  adrp    x2, #0x1003ba000
  100011998  add     x2, x2, #0x10                            ; @"MiscCellID"
  10001199c  mov     x0, x24
  1000119a0  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:@"MiscCellID"]
loc_1000119a4:
  1000119a4  ldr     x0, [x21, x26]                           ; x0 = self->weaponsData
  1000119a8  cbz     x0, loc_1000119dc                        ; if (self->weaponsData == 0)
  1000119ac  adrp    x8, #0x100416000
  1000119b0  nop
  1000119b4  ldr     x1, [x8, #0xe30]
  1000119b8  bl      _objc_msgSend                            ; [self->weaponsData count]
  1000119bc  cbz     x0, loc_1000119dc                        ; if ([self->weaponsData count] == 0)
  1000119c0  adrp    x8, #0x100416000
  1000119c4  nop
  1000119c8  ldr     x1, [x8, #0xd90]
  1000119cc  adrp    x2, #0x1003b9000
  1000119d0  add     x2, x2, #0xff0                           ; @"WeaponCellID"
  1000119d4  mov     x0, x24
  1000119d8  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:@"WeaponCellID"]
loc_1000119dc:
  1000119dc  ldr     x0, [x21, x22]                           ; x0 = self->enemyData
  1000119e0  cbz     x0, loc_100011a14                        ; if (self->enemyData == 0)
  1000119e4  adrp    x8, #0x100416000
  1000119e8  nop
  1000119ec  ldr     x1, [x8, #0xe30]
  1000119f0  bl      _objc_msgSend                            ; [self->enemyData count]
  1000119f4  cbz     x0, loc_100011a14                        ; if ([self->enemyData count] == 0)
  1000119f8  adrp    x8, #0x100416000
  1000119fc  nop
  100011a00  ldr     x1, [x8, #0xd90]
  100011a04  adrp    x2, #0x1003b9000
  100011a08  add     x2, x2, #0xfd0                           ; @"EnemyCellID"
  100011a0c  mov     x0, x24
  100011a10  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:@"EnemyCellID"]
loc_100011a14:
  100011a14  adrp    x8, #0x10041d000
  100011a18  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100011a1c  ldr     x1, [sp, #0x20]
  100011a20  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100011a24  ldr     x1, [sp, #0x28]
  100011a28  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100011a2c  str     x0, [sp, #0x28]
  100011a30  mov     x26, #0
  100011a34  adrp    x8, #0x100416000
  100011a38  nop
  100011a3c  ldr     x25, [x8, #0xe30]
  100011a40  adrp    x8, #0x100416000
  100011a44  nop
  100011a48  adrp    x9, #0x100416000
  100011a4c  add     x9, x9, #0xec0                           ; &@selector(numberWithInt:)
  100011a50  ldr     x27, [x8, #0xc30]
  100011a54  ldr     x28, [x9]
  100011a58  adrp    x8, #0x100416000
  100011a5c  add     x8, x8, #0xdc8                           ; &@selector(setObject:forKey:)
  100011a60  ldr     x19, [x8]
  100011a64  adrp    x23, #0x10041d000
  100011a68  b       loc_100011a80
loc_100011a6c:
  100011a6c  mov     x0, x22
  100011a70  bl      _objc_release
  100011a74  mov     x0, x20
  100011a78  bl      _objc_release
  100011a7c  add     x26, x26, #1
loc_100011a80:
  100011a80  mov     x0, x24
  100011a84  mov     x1, x25
  100011a88  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] count]
  100011a8c  cmp     x26, x0
  100011a90  b.hs    loc_100011af0                            ; if (x26 >=u [[[NSMutableArray alloc] init] count])
  100011a94  mov     x0, x24
  100011a98  mov     x1, x27
  100011a9c  mov     x2, x26
  100011aa0  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] objectAtIndex:x2]
  100011aa4  mov     x29, x29
  100011aa8  bl      _objc_retainAutoreleasedReturnValue
  100011aac  mov     x20, x0
  100011ab0  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100011ab4  mov     x1, x28
  100011ab8  mov     x2, x26
  100011abc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:x2]
  100011ac0  mov     x29, x29
  100011ac4  bl      _objc_retainAutoreleasedReturnValue
  100011ac8  mov     x22, x0
  100011acc  ldr     x0, [sp, #0x28]
  100011ad0  mov     x1, x19
  100011ad4  mov     x2, x20
  100011ad8  mov     x3, x22
  100011adc  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[[[NSMutableArray alloc] init] objectAtIndex:x2] forKey:[NSNumber numberWithInt:x2]]
  100011ae0  b       loc_100011a6c
  100011ae4  mov     x26, x0
  100011ae8  mov     x0, x22
  100011aec  b       loc_100011c70
loc_100011af0:
  100011af0  adrp    x8, #0x100417000
  100011af4  nop
  100011af8  ldr     x1, [x8, #0x268]
  100011afc  mov     x0, x21
  100011b00  ldr     x2, [sp, #0x28]
  100011b04  bl      _objc_msgSend                            ; [self setSectionsDict:[[NSMutableDictionary alloc] init]]
  100011b08  ldr     x23, [sp, #8]
  100011b0c  adrp    x8, #0x100417000
  100011b10  nop
  100011b14  ldr     x1, [x8, #0x270]
  100011b18  mov     x0, x21
  100011b1c  bl      _objc_msgSend                            ; [self sectionsDict]
  100011b20  mov     x29, x29
  100011b24  bl      _objc_retainAutoreleasedReturnValue
  100011b28  mov     x19, x0
  100011b2c  mov     x1, x25
  100011b30  bl      _objc_msgSend                            ; [[self sectionsDict] count]
  100011b34  mov     x2, x0
  100011b38  adrp    x8, #0x100417000
  100011b3c  nop
  100011b40  ldr     x1, [x8, #0x278]
  100011b44  mov     x0, x21
  100011b48  bl      _objc_msgSend                            ; [self setNumberOfSections:[[self sectionsDict] count]]
  100011b4c  mov     x0, x19
  100011b50  bl      _objc_release
  100011b54  adrp    x8, #0x100417000
  100011b58  nop
  100011b5c  ldr     x1, [x8, #0x280]
  100011b60  adrp    x2, #0x1003b9000
  100011b64  add     x2, x2, #0xff0                           ; @"WeaponCellID"
  100011b68  mov     x0, x24
  100011b6c  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] containsObject:@"WeaponCellID"]
  100011b70  cbz     w0, loc_100011c78                        ; if ([[[NSMutableArray alloc] init] containsObject:@"WeaponCellID"] == 0)
  100011b74  adrp    x8, #0x10041d000
  100011b78  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100011b7c  ldr     x1, [sp, #0x20]
  100011b80  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100011b84  mov     x19, x0
  100011b88  ldr     x0, [x21, x23]                           ; x0 = self->weaponsKeys
  100011b8c  mov     x1, x25
  100011b90  bl      _objc_msgSend                            ; [self->weaponsKeys count]
  100011b94  mov     x2, x0
  100011b98  adrp    x8, #0x100417000
  100011b9c  nop
  100011ba0  ldr     x1, [x8, #0x288]
  100011ba4  mov     x0, x19
  100011ba8  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:[self->weaponsKeys count]]
  100011bac  mov     x19, x0
  100011bb0  adrp    x8, #0x100417000
  100011bb4  nop
  100011bb8  ldr     x1, [x8, #0x290]
  100011bbc  mov     x0, x21
  100011bc0  mov     x2, x19
  100011bc4  bl      _objc_msgSend                            ; [self setWeaponCells:[[NSMutableArray alloc] initWithCapacity:[self->weaponsKeys count]]]
  100011bc8  mov     x0, x19
  100011bcc  bl      _objc_release
  100011bd0  mov     x22, #0
  100011bd4  adrp    x8, #0x100417000
  100011bd8  nop
  100011bdc  ldr     x26, [x8, #0x298]
  100011be0  adrp    x8, #0x100417000
  100011be4  nop
  100011be8  ldr     x19, [x8, #0x2a0]
  100011bec  adrp    x8, #0x100416000
  100011bf0  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  100011bf4  ldr     x27, [x8]
  100011bf8  b       loc_100011c10
loc_100011bfc:
  100011bfc  mov     x0, x28
  100011c00  bl      _objc_release
  100011c04  mov     x0, x20
  100011c08  bl      _objc_release
  100011c0c  add     x22, x22, #1
loc_100011c10:
  100011c10  ldr     x0, [x21, x23]                           ; x0 = self->weaponsKeys
  100011c14  mov     x1, x25
  100011c18  bl      _objc_msgSend                            ; [self->weaponsKeys count]
  100011c1c  cmp     x22, x0
  100011c20  b.hs    loc_100011c78                            ; if (x22 >=u [self->weaponsKeys count])
  100011c24  mov     x0, x21
  100011c28  mov     x1, x26
  100011c2c  mov     x2, x22
  100011c30  bl      _objc_msgSend                            ; [self createWeaponCellForRow:x2]
  100011c34  mov     x29, x29
  100011c38  bl      _objc_retainAutoreleasedReturnValue
  100011c3c  mov     x20, x0
  100011c40  mov     x0, x21
  100011c44  mov     x1, x19
  100011c48  bl      _objc_msgSend                            ; [self weaponCells]
  100011c4c  mov     x29, x29
  100011c50  bl      _objc_retainAutoreleasedReturnValue
  100011c54  mov     x28, x0
  100011c58  mov     x1, x27
  100011c5c  mov     x2, x20
  100011c60  bl      _objc_msgSend                            ; [[self weaponCells] addObject:[self createWeaponCellForRow:x2]]
  100011c64  b       loc_100011bfc
  100011c68  mov     x26, x0
  100011c6c  mov     x0, x28
loc_100011c70:
  100011c70  bl      _objc_release
  100011c74  b       loc_100011cdc
loc_100011c78:
  100011c78  ldr     x0, [sp, #0x28]
  100011c7c  bl      _objc_release
  100011c80  mov     x0, x24
  100011c84  bl      _objc_release
loc_100011c88:
  100011c88  ldr     x0, [sp, #0x10]
  100011c8c  bl      _objc_release
  100011c90  ldr     x0, [sp, #0x18]
  100011c94  bl      _objc_release
  100011c98  mov     x0, x21
  100011c9c  sub     sp, x29, #0x50
  100011ca0  ldp     x29, x30, [sp, #0x50]
  100011ca4  ldp     x20, x19, [sp, #0x40]
  100011ca8  ldp     x22, x21, [sp, #0x30]
  100011cac  ldp     x24, x23, [sp, #0x20]
  100011cb0  ldp     x26, x25, [sp, #0x10]
  100011cb4  ldp     x28, x27, [sp], #0x60
  100011cb8  ret
  100011cbc  b       loc_100011cc0
loc_100011cc0:
  100011cc0  mov     x26, x0
  100011cc4  b       loc_100011ce4
  100011cc8  mov     x26, x0
  100011ccc  b       loc_100011cdc
  100011cd0  mov     x26, x0
  100011cd4  b       loc_100011cf8
  100011cd8  mov     x26, x0
loc_100011cdc:
  100011cdc  mov     x0, x20
loc_100011ce0:
  100011ce0  bl      _objc_release
loc_100011ce4:
  100011ce4  ldr     x0, [sp, #0x28]
  100011ce8  bl      _objc_release
loc_100011cec:
  100011cec  mov     x0, x24
loc_100011cf0:
  100011cf0  bl      _objc_release
  100011cf4  mov     x25, x21
loc_100011cf8:
  100011cf8  ldp     x0, x19, [sp, #0x10]
  100011cfc  bl      _objc_release
  100011d00  mov     x0, x19
  100011d04  bl      _objc_release
  100011d08  mov     x0, x25
  100011d0c  bl      _objc_release
  100011d10  mov     x0, x26
  100011d14  bl      __Unwind_Resume                          ; Unwind_Resume()
  100011d18  mov     x26, x0
  100011d1c  b       loc_100011cec
  100011d20  b       loc_100011cc0
  100011d24  b       loc_100011d54
  100011d28  b       loc_100011d38
  100011d2c  b       loc_100011d38
  100011d30  b       loc_100011d38
  100011d34  b       loc_100011d38
loc_100011d38:
  100011d38  mov     x26, x0
  100011d3c  b       loc_100011d4c
  100011d40  mov     x26, x0
  100011d44  mov     x0, x24
  100011d48  bl      _objc_release
loc_100011d4c:
  100011d4c  mov     x0, x19
  100011d50  b       loc_100011cf0
loc_100011d54:
  100011d54  mov     x26, x0
  100011d58  mov     x0, x19
  100011d5c  b       loc_100011ce0

; ======================================================================
; -[ADGameOverEndlessStatsViewController viewDidLoad]
; address 0x100011d60  size 1004  kind objc
; ======================================================================
  100011d60  stp     x24, x23, [sp, #-0x40]!
  100011d64  stp     x22, x21, [sp, #0x10]
  100011d68  stp     x20, x19, [sp, #0x20]
  100011d6c  stp     x29, x30, [sp, #0x30]
  100011d70  add     x29, sp, #0x30
  100011d74  sub     sp, sp, #0x10
  100011d78  mov     x19, x0
  100011d7c  str     x19, [sp]
  100011d80  adrp    x8, #0x10041e000
  100011d84  ldr     x8, [x8, #0xbe8]
  100011d88  str     x8, [sp, #8]
  100011d8c  adrp    x8, #0x100416000
  100011d90  nop
  100011d94  ldr     x1, [x8, #0xb48]
  100011d98  mov     x0, sp
  100011d9c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100011da0  adrp    x8, #0x100417000
  100011da4  nop
  100011da8  ldr     x20, [x8, #0x2a8]
  100011dac  mov     x0, x19
  100011db0  mov     x1, x20
  100011db4  bl      _objc_msgSend                            ; [self statusBarViewController]
  100011db8  mov     x29, x29
  100011dbc  bl      _objc_retainAutoreleasedReturnValue
  100011dc0  mov     x21, x0
  100011dc4  adrp    x8, #0x100417000
  100011dc8  nop
  100011dcc  ldr     x1, [x8, #0x2b0]
  100011dd0  mov     w2, #0
  100011dd4  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  100011dd8  mov     x0, x21
  100011ddc  bl      _objc_release
  100011de0  mov     x0, x19
  100011de4  mov     x1, x20
  100011de8  bl      _objc_msgSend                            ; [self statusBarViewController]
  100011dec  mov     x29, x29
  100011df0  bl      _objc_retainAutoreleasedReturnValue
  100011df4  mov     x21, x0
  100011df8  adrp    x8, #0x100417000
  100011dfc  nop
  100011e00  ldr     x1, [x8, #0x2b8]
  100011e04  mov     w2, #0
  100011e08  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  100011e0c  mov     x0, x21
  100011e10  bl      _objc_release
  100011e14  mov     x0, x19
  100011e18  mov     x1, x20
  100011e1c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100011e20  mov     x29, x29
  100011e24  bl      _objc_retainAutoreleasedReturnValue
  100011e28  mov     x21, x0
  100011e2c  adrp    x8, #0x100417000
  100011e30  nop
  100011e34  ldr     x1, [x8, #0x2c0]
  100011e38  mov     w2, #0
  100011e3c  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  100011e40  mov     x0, x21
  100011e44  bl      _objc_release
  100011e48  mov     x0, x19
  100011e4c  mov     x1, x20
  100011e50  bl      _objc_msgSend                            ; [self statusBarViewController]
  100011e54  mov     x29, x29
  100011e58  bl      _objc_retainAutoreleasedReturnValue
  100011e5c  mov     x21, x0
  100011e60  adrp    x8, #0x100417000
  100011e64  nop
  100011e68  ldr     x1, [x8, #0x2c8]
  100011e6c  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100011e70  mov     x29, x29
  100011e74  bl      _objc_retainAutoreleasedReturnValue
  100011e78  mov     x22, x0
  100011e7c  adrp    x8, #0x100416000
  100011e80  nop
  100011e84  ldr     x1, [x8, #0xb68]
  100011e88  adrp    x2, #0x1003ba000
  100011e8c  add     x2, x2, #0xb0                            ; @"STATISTICS"
  100011e90  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"STATISTICS"]
  100011e94  mov     x0, x22
  100011e98  bl      _objc_release
  100011e9c  mov     x0, x21
  100011ea0  bl      _objc_release
  100011ea4  adrp    x8, #0x100417000
  100011ea8  nop
  100011eac  ldr     x20, [x8, #0x2d0]
  100011eb0  mov     x0, x19
  100011eb4  mov     x1, x20
  100011eb8  bl      _objc_msgSend                            ; [self tableView]
  100011ebc  mov     x29, x29
  100011ec0  bl      _objc_retainAutoreleasedReturnValue
  100011ec4  mov     x21, x0
  100011ec8  adrp    x8, #0x100417000
  100011ecc  nop
  100011ed0  ldr     x1, [x8, #0x2d8]
  100011ed4  mov     w2, #0x12
  100011ed8  bl      _objc_msgSend                            ; [[self tableView] setAutoresizingMask:18]
  100011edc  mov     x0, x21
  100011ee0  bl      _objc_release
  100011ee4  mov     x0, x19
  100011ee8  mov     x1, x20
  100011eec  bl      _objc_msgSend                            ; [self tableView]
  100011ef0  mov     x29, x29
  100011ef4  bl      _objc_retainAutoreleasedReturnValue
  100011ef8  mov     x23, x0
  100011efc  adrp    x24, #0x10041d000
  100011f00  ldr     x0, [x24, #0xfd0]                        ; class ADStatsCell
  100011f04  adrp    x8, #0x100417000
  100011f08  nop
  100011f0c  ldr     x21, [x8, #0x2e0]
  100011f10  mov     x1, x21
  100011f14  bl      _objc_msgSend                            ; [ADStatsCell class]
  100011f18  mov     x2, x0
  100011f1c  adrp    x8, #0x100417000
  100011f20  nop
  100011f24  ldr     x22, [x8, #0x2e8]
  100011f28  adrp    x3, #0x1003ba000
  100011f2c  add     x3, x3, #0x10                            ; @"MiscCellID"
  100011f30  mov     x0, x23
  100011f34  mov     x1, x22
  100011f38  bl      _objc_msgSend                            ; [[self tableView] registerClass:[ADStatsCell class] forCellReuseIdentifier:@"MiscCellID"]
  100011f3c  mov     x0, x23
  100011f40  bl      _objc_release
  100011f44  mov     x0, x19
  100011f48  mov     x1, x20
  100011f4c  bl      _objc_msgSend                            ; [self tableView]
  100011f50  mov     x29, x29
  100011f54  bl      _objc_retainAutoreleasedReturnValue
  100011f58  mov     x23, x0
  100011f5c  ldr     x0, [x24, #0xfd0]                        ; class ADStatsCell
  100011f60  mov     x1, x21
  100011f64  bl      _objc_msgSend                            ; [ADStatsCell class]
  100011f68  mov     x2, x0
  100011f6c  adrp    x3, #0x1003b9000
  100011f70  add     x3, x3, #0xfd0                           ; @"EnemyCellID"
  100011f74  mov     x0, x23
  100011f78  mov     x1, x22
  100011f7c  bl      _objc_msgSend                            ; [[self tableView] registerClass:[ADStatsCell class] forCellReuseIdentifier:@"EnemyCellID"]
  100011f80  mov     x0, x23
  100011f84  bl      _objc_release
  100011f88  mov     x0, x19
  100011f8c  mov     x1, x20
  100011f90  bl      _objc_msgSend                            ; [self tableView]
  100011f94  mov     x29, x29
  100011f98  bl      _objc_retainAutoreleasedReturnValue
  100011f9c  mov     x19, x0
  100011fa0  adrp    x8, #0x10041d000
  100011fa4  ldr     x0, [x8, #0xfd8]                         ; class ADStatsHeader
  100011fa8  mov     x1, x21
  100011fac  bl      _objc_msgSend                            ; [ADStatsHeader class]
  100011fb0  mov     x2, x0
  100011fb4  adrp    x8, #0x100417000
  100011fb8  nop
  100011fbc  ldr     x1, [x8, #0x2f0]
  100011fc0  adrp    x3, #0x1003ba000
  100011fc4  add     x3, x3, #0x30                            ; @"headerID"
  100011fc8  mov     x0, x19
  100011fcc  bl      _objc_msgSend                            ; [[self tableView] registerClass:[ADStatsHeader class] forHeaderFooterViewReuseIdentifier:@"headerID"]
  100011fd0  mov     x0, x19
  100011fd4  bl      _objc_release
  100011fd8  adrp    x8, #0x10041d000
  100011fdc  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100011fe0  adrp    x8, #0x100416000
  100011fe4  nop
  100011fe8  ldr     x1, [x8, #0xac0]
  100011fec  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100011ff0  mov     x29, x29
  100011ff4  bl      _objc_retainAutoreleasedReturnValue
  100011ff8  mov     x21, x0
  100011ffc  adrp    x8, #0x100417000
  100012000  nop
  100012004  ldr     x1, [x8, #0x2f8]
  100012008  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10001200c  mov     x29, x29
  100012010  bl      _objc_retainAutoreleasedReturnValue
  100012014  mov     x19, x0
  100012018  mov     x0, x21
  10001201c  bl      _objc_release
  100012020  adrp    x8, #0x1003b8000
  100012024  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  100012028  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  10001202c  adrp    x8, #0x100417000
  100012030  nop
  100012034  ldr     x1, [x8, #0x300]
  100012038  adrp    x3, #0x1003ba000
  10001203c  add     x3, x3, #0xd0                            ; @"Game over statistics screen"
  100012040  mov     x0, x19
  100012044  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:@"Game over statistics screen"]
  100012048  adrp    x8, #0x10041d000
  10001204c  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100012050  adrp    x8, #0x100417000
  100012054  nop
  100012058  ldr     x1, [x8, #0x308]
  10001205c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createAppView]
  100012060  mov     x29, x29
  100012064  bl      _objc_retainAutoreleasedReturnValue
  100012068  mov     x21, x0
  10001206c  adrp    x8, #0x100417000
  100012070  nop
  100012074  ldr     x1, [x8, #0x310]
  100012078  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createAppView] build]
  10001207c  mov     x29, x29
  100012080  bl      _objc_retainAutoreleasedReturnValue
  100012084  mov     x22, x0
  100012088  adrp    x8, #0x100417000
  10001208c  nop
  100012090  ldr     x1, [x8, #0x318]
  100012094  mov     x0, x19
  100012098  mov     x2, x22
  10001209c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createAppView] build]]
  1000120a0  mov     x0, x22
  1000120a4  bl      _objc_release
  1000120a8  mov     x0, x21
  1000120ac  bl      _objc_release
  1000120b0  mov     x0, x19
  1000120b4  bl      _objc_release
  1000120b8  sub     sp, x29, #0x30
  1000120bc  ldp     x29, x30, [sp, #0x30]
  1000120c0  ldp     x20, x19, [sp, #0x20]
  1000120c4  ldp     x22, x21, [sp, #0x10]
  1000120c8  ldp     x24, x23, [sp], #0x40
  1000120cc  ret
  1000120d0  b       loc_1000120d4
loc_1000120d4:
  1000120d4  mov     x20, x0
  1000120d8  mov     x0, x23
  1000120dc  b       loc_100012140
  1000120e0  mov     x20, x0
  1000120e4  b       loc_10001213c
  1000120e8  mov     x20, x0
  1000120ec  b       loc_10001213c
  1000120f0  b       loc_100012114
  1000120f4  b       loc_100012114
  1000120f8  b       loc_100012114
  1000120fc  b       loc_100012114
  100012100  mov     x20, x0
  100012104  mov     x0, x22
  100012108  bl      _objc_release
  10001210c  b       loc_100012118
  100012110  b       loc_100012114
loc_100012114:
  100012114  mov     x20, x0
loc_100012118:
  100012118  mov     x0, x21
  10001211c  b       loc_100012140
  100012120  mov     x20, x0
  100012124  b       loc_100012134
  100012128  mov     x20, x0
  10001212c  mov     x0, x22
  100012130  bl      _objc_release
loc_100012134:
  100012134  mov     x0, x21
  100012138  bl      _objc_release
loc_10001213c:
  10001213c  mov     x0, x19
loc_100012140:
  100012140  bl      _objc_release
  100012144  mov     x0, x20
  100012148  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController didReceiveMemoryWarning]
; address 0x10001214c  size 60  kind objc
; ======================================================================
  10001214c  stp     x29, x30, [sp, #-0x10]!
  100012150  mov     x29, sp
  100012154  sub     sp, sp, #0x10
  100012158  str     x0, [sp]
  10001215c  adrp    x8, #0x10041e000
  100012160  ldr     x8, [x8, #0xbe8]
  100012164  str     x8, [sp, #8]
  100012168  adrp    x8, #0x100416000
  10001216c  nop
  100012170  ldr     x1, [x8, #0xbf8]
  100012174  mov     x0, sp
  100012178  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10001217c  mov     sp, x29
  100012180  ldp     x29, x30, [sp], #0x10
  100012184  ret

; ======================================================================
; -[ADGameOverEndlessStatsViewController tableView:willDisplayCell:forRowAtIndexPath:]
; address 0x100012188  size 648  kind objc
; ======================================================================
  100012188  stp     x26, x25, [sp, #-0x50]!
  10001218c  stp     x24, x23, [sp, #0x10]
  100012190  stp     x22, x21, [sp, #0x20]
  100012194  stp     x20, x19, [sp, #0x30]
  100012198  stp     x29, x30, [sp, #0x40]
  10001219c  add     x29, sp, #0x40
  1000121a0  mov     x0, x3
  1000121a4  bl      _objc_retain
  1000121a8  mov     x19, x0
  1000121ac  adrp    x8, #0x100417000
  1000121b0  nop
  1000121b4  ldr     x20, [x8, #0x320]
  1000121b8  mov     x1, x20
  1000121bc  bl      _objc_msgSend                            ; [arg2 textLabel]
  1000121c0  mov     x29, x29
  1000121c4  bl      _objc_retainAutoreleasedReturnValue
  1000121c8  mov     x23, x0
  1000121cc  adrp    x25, #0x10041d000
  1000121d0  ldr     x0, [x25, #0xfa0]                        ; class UIColor
  1000121d4  adrp    x8, #0x100417000
  1000121d8  nop
  1000121dc  ldr     x21, [x8, #0x328]
  1000121e0  mov     x1, x21
  1000121e4  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000121e8  mov     x29, x29
  1000121ec  bl      _objc_retainAutoreleasedReturnValue
  1000121f0  mov     x24, x0
  1000121f4  adrp    x8, #0x100417000
  1000121f8  nop
  1000121fc  ldr     x22, [x8, #0x330]
  100012200  mov     x0, x23
  100012204  mov     x1, x22
  100012208  mov     x2, x24
  10001220c  bl      _objc_msgSend                            ; [[arg2 textLabel] setTextColor:[UIColor whiteColor]]
  100012210  mov     x0, x24
  100012214  bl      _objc_release
  100012218  mov     x0, x23
  10001221c  bl      _objc_release
  100012220  adrp    x8, #0x100417000
  100012224  nop
  100012228  ldr     x1, [x8, #0x338]
  10001222c  mov     x0, x19
  100012230  bl      _objc_msgSend                            ; [arg2 detailTextLabel]
  100012234  mov     x29, x29
  100012238  bl      _objc_retainAutoreleasedReturnValue
  10001223c  mov     x23, x0
  100012240  ldr     x0, [x25, #0xfa0]                        ; class UIColor
  100012244  mov     x1, x21
  100012248  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10001224c  mov     x29, x29
  100012250  bl      _objc_retainAutoreleasedReturnValue
  100012254  mov     x21, x0
  100012258  mov     x0, x23
  10001225c  mov     x1, x22
  100012260  mov     x2, x21
  100012264  bl      _objc_msgSend                            ; [[arg2 detailTextLabel] setTextColor:[UIColor whiteColor]]
  100012268  mov     x0, x21
  10001226c  bl      _objc_release
  100012270  mov     x0, x23
  100012274  bl      _objc_release
  100012278  ldr     x0, [x25, #0xfa0]                        ; class UIColor
  10001227c  adrp    x8, #0x100417000
  100012280  nop
  100012284  ldr     x1, [x8, #0x340]
  100012288  bl      _objc_msgSend                            ; [UIColor clearColor]
  10001228c  mov     x29, x29
  100012290  bl      _objc_retainAutoreleasedReturnValue
  100012294  mov     x21, x0
  100012298  adrp    x8, #0x100417000
  10001229c  nop
  1000122a0  ldr     x1, [x8, #0x188]
  1000122a4  mov     x0, x19
  1000122a8  mov     x2, x21
  1000122ac  bl      _objc_msgSend                            ; [arg2 setBackgroundColor:[UIColor clearColor]]
  1000122b0  mov     x0, x21
  1000122b4  bl      _objc_release
  1000122b8  adrp    x8, #0x10041d000
  1000122bc  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000122c0  adrp    x8, #0x100416000
  1000122c4  nop
  1000122c8  ldr     x1, [x8, #0xc00]
  1000122cc  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000122d0  mov     x29, x29
  1000122d4  bl      _objc_retainAutoreleasedReturnValue
  1000122d8  mov     x22, x0
  1000122dc  adrp    x8, #0x100416000
  1000122e0  nop
  1000122e4  ldr     x1, [x8, #0xd18]
  1000122e8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000122ec  mov     x21, x0
  1000122f0  mov     x0, x22
  1000122f4  bl      _objc_release
  1000122f8  mov     x0, x19
  1000122fc  mov     x1, x20
  100012300  bl      _objc_msgSend                            ; [arg2 textLabel]
  100012304  mov     x29, x29
  100012308  bl      _objc_retainAutoreleasedReturnValue
  10001230c  mov     x20, x0
  100012310  adrp    x8, #0x10041d000
  100012314  ldr     x0, [x8, #0xf08]                         ; class UIFont
  100012318  cmp     w21, #0
  10001231c  fmov    d0, #20.00000000
  100012320  fmov    d1, #15.00000000
  100012324  fcsel   d0, d1, d0, ne
  100012328  adrp    x8, #0x100416000
  10001232c  nop
  100012330  ldr     x1, [x8, #0xd20]
  100012334  adrp    x2, #0x1003ba000
  100012338  add     x2, x2, #0xf0                            ; @"Friday13"
  10001233c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  100012340  mov     x29, x29
  100012344  bl      _objc_retainAutoreleasedReturnValue
  100012348  mov     x21, x0
  10001234c  adrp    x8, #0x100416000
  100012350  nop
  100012354  ldr     x1, [x8, #0xd28]
  100012358  mov     x0, x20
  10001235c  mov     x2, x21
  100012360  bl      _objc_msgSend                            ; [[arg2 textLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  100012364  mov     x0, x21
  100012368  bl      _objc_release
  10001236c  mov     x0, x20
  100012370  bl      _objc_release
  100012374  mov     x0, x19
  100012378  ldp     x29, x30, [sp, #0x40]
  10001237c  ldp     x20, x19, [sp, #0x30]
  100012380  ldp     x22, x21, [sp, #0x20]
  100012384  ldp     x24, x23, [sp, #0x10]
  100012388  ldp     x26, x25, [sp], #0x50
  10001238c  b       _objc_release
  100012390  mov     x20, x0
  100012394  b       loc_100012400
  100012398  mov     x20, x0
  10001239c  b       loc_1000123c0
  1000123a0  mov     x20, x0
  1000123a4  mov     x0, x24
  1000123a8  b       loc_1000123bc
  1000123ac  mov     x20, x0
  1000123b0  b       loc_1000123c0
  1000123b4  mov     x20, x0
  1000123b8  mov     x0, x21
loc_1000123bc:
  1000123bc  bl      _objc_release
loc_1000123c0:
  1000123c0  mov     x0, x23
  1000123c4  b       loc_1000123fc
  1000123c8  mov     x20, x0
  1000123cc  mov     x0, x21
  1000123d0  b       loc_1000123fc
  1000123d4  mov     x20, x0
  1000123d8  b       loc_1000123f8
  1000123dc  mov     x22, x20
  1000123e0  mov     x20, x0
  1000123e4  b       loc_1000123f8
  1000123e8  mov     x22, x20
  1000123ec  mov     x20, x0
  1000123f0  mov     x0, x21
  1000123f4  bl      _objc_release
loc_1000123f8:
  1000123f8  mov     x0, x22
loc_1000123fc:
  1000123fc  bl      _objc_release
loc_100012400:
  100012400  mov     x0, x19
  100012404  bl      _objc_release
  100012408  mov     x0, x20
  10001240c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController tableView:numberOfRowsInSection:]
; address 0x100012410  size 488  kind objc
; ======================================================================
  100012410  stp     x24, x23, [sp, #-0x40]!
  100012414  stp     x22, x21, [sp, #0x10]
  100012418  stp     x20, x19, [sp, #0x20]
  10001241c  stp     x29, x30, [sp, #0x30]
  100012420  add     x29, sp, #0x30
  100012424  sub     sp, sp, #0x10
  100012428  mov     x21, x3
  10001242c  mov     x20, x0
  100012430  adrp    x8, #0x100417000
  100012434  nop
  100012438  ldr     x1, [x8, #0x270]
  10001243c  bl      _objc_msgSend                            ; [self sectionsDict]
  100012440  mov     x29, x29
  100012444  bl      _objc_retainAutoreleasedReturnValue
  100012448  mov     x22, x0
  10001244c  adrp    x8, #0x10041d000
  100012450  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100012454  adrp    x8, #0x100417000
  100012458  nop
  10001245c  ldr     x1, [x8, #0xe8]
  100012460  mov     x2, x21
  100012464  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg2]
  100012468  mov     x29, x29
  10001246c  bl      _objc_retainAutoreleasedReturnValue
  100012470  mov     x23, x0
  100012474  adrp    x8, #0x100417000
  100012478  nop
  10001247c  ldr     x1, [x8, #0x40]
  100012480  mov     x0, x22
  100012484  mov     x2, x23
  100012488  bl      _objc_msgSend                            ; [[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]]
  10001248c  mov     x29, x29
  100012490  bl      _objc_retainAutoreleasedReturnValue
  100012494  mov     x19, x0
  100012498  mov     x0, x23
  10001249c  bl      _objc_release
  1000124a0  mov     x0, x22
  1000124a4  bl      _objc_release
  1000124a8  adrp    x8, #0x100416000
  1000124ac  nop
  1000124b0  ldr     x22, [x8, #0xf58]
  1000124b4  adrp    x2, #0x1003b9000
  1000124b8  add     x2, x2, #0xfd0                           ; @"EnemyCellID"
  1000124bc  mov     x0, x19
  1000124c0  mov     x1, x22
  1000124c4  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"EnemyCellID"]
  1000124c8  cbz     w0, loc_1000124f0                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"EnemyCellID"] == 0)
  1000124cc  adrp    x8, #0x10041f000
  1000124d0  ldrsw   x8, [x8, #0x524]                         ; ivar offset ADGameOverEndlessStatsViewController.enemyData (+0x140)
  1000124d4  ldr     x0, [x20, x8]                            ; x0 = self->enemyData
  1000124d8  adrp    x8, #0x100416000
  1000124dc  nop
  1000124e0  ldr     x1, [x8, #0xe30]
  1000124e4  bl      _objc_msgSend                            ; [self->enemyData count]
  1000124e8  mov     x20, x0
  1000124ec  b       loc_100012598
loc_1000124f0:
  1000124f0  adrp    x2, #0x1003ba000
  1000124f4  add     x2, x2, #0x10                            ; @"MiscCellID"
  1000124f8  mov     x0, x19
  1000124fc  mov     x1, x22
  100012500  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"MiscCellID"]
  100012504  cbz     w0, loc_10001252c                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"MiscCellID"] == 0)
  100012508  adrp    x8, #0x10041f000
  10001250c  ldrsw   x8, [x8, #0x530]                         ; ivar offset ADGameOverEndlessStatsViewController.miscData (+0x158)
  100012510  ldr     x0, [x20, x8]                            ; x0 = self->miscData
  100012514  adrp    x8, #0x100416000
  100012518  nop
  10001251c  ldr     x1, [x8, #0xe30]
  100012520  bl      _objc_msgSend                            ; [self->miscData count]
  100012524  mov     x20, x0
  100012528  b       loc_100012598
loc_10001252c:
  10001252c  adrp    x2, #0x1003b9000
  100012530  add     x2, x2, #0xff0                           ; @"WeaponCellID"
  100012534  mov     x0, x19
  100012538  mov     x1, x22
  10001253c  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"WeaponCellID"]
  100012540  cbz     w0, loc_100012568                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"WeaponCellID"] == 0)
  100012544  adrp    x8, #0x10041f000
  100012548  ldrsw   x8, [x8, #0x528]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsData (+0x148)
  10001254c  ldr     x0, [x20, x8]                            ; x0 = self->weaponsData
  100012550  adrp    x8, #0x100416000
  100012554  nop
  100012558  ldr     x1, [x8, #0xe30]
  10001255c  bl      _objc_msgSend                            ; [self->weaponsData count]
  100012560  mov     x20, x0
  100012564  b       loc_100012598
loc_100012568:
  100012568  adrp    x8, #0x10041d000
  10001256c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100012570  adrp    x8, #0x100417000
  100012574  nop
  100012578  ldr     x1, [x8, #0x260]
  10001257c  str     x21, [sp]
  100012580  adrp    x2, #0x1003ba000
  100012584  add     x2, x2, #0x110                           ; @"Section data incorrect"
  100012588  adrp    x3, #0x1003ba000
  10001258c  add     x3, x3, #0x130                           ; @"No data for section %d"
  100012590  bl      _objc_msgSend                            ; [NSException raise:@"Section data incorrect" format:@"No data for section %d", arg2]
  100012594  mov     x20, #0
loc_100012598:
  100012598  mov     x0, x19
  10001259c  bl      _objc_release
  1000125a0  mov     x0, x20
  1000125a4  sub     sp, x29, #0x30
  1000125a8  ldp     x29, x30, [sp, #0x30]
  1000125ac  ldp     x20, x19, [sp, #0x20]
  1000125b0  ldp     x22, x21, [sp, #0x10]
  1000125b4  ldp     x24, x23, [sp], #0x40
  1000125b8  ret
  1000125bc  mov     x20, x0
  1000125c0  mov     x0, x19
  1000125c4  bl      _objc_release
  1000125c8  b       loc_1000125f0
  1000125cc  mov     x20, x0
  1000125d0  b       loc_1000125f0
  1000125d4  mov     x20, x0
  1000125d8  b       loc_1000125e8
  1000125dc  mov     x20, x0
  1000125e0  mov     x0, x23
  1000125e4  bl      _objc_release
loc_1000125e8:
  1000125e8  mov     x0, x22
  1000125ec  bl      _objc_release
loc_1000125f0:
  1000125f0  mov     x0, x20
  1000125f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController tableView:heightForRowAtIndexPath:]
; address 0x1000125f8  size 728  kind objc
; ======================================================================
  1000125f8  stp     d11, d10, [sp, #-0x60]!
  1000125fc  stp     d9, d8, [sp, #0x10]
  100012600  stp     x24, x23, [sp, #0x20]
  100012604  stp     x22, x21, [sp, #0x30]
  100012608  stp     x20, x19, [sp, #0x40]
  10001260c  stp     x29, x30, [sp, #0x50]
  100012610  add     x29, sp, #0x50
  100012614  mov     x22, x0
  100012618  mov     x0, x3
  10001261c  bl      _objc_retain
  100012620  mov     x19, x0
  100012624  adrp    x8, #0x100417000
  100012628  nop
  10001262c  ldr     x1, [x8, #0x270]
  100012630  mov     x0, x22
  100012634  bl      _objc_msgSend                            ; [self sectionsDict]
  100012638  mov     x29, x29
  10001263c  bl      _objc_retainAutoreleasedReturnValue
  100012640  mov     x21, x0
  100012644  adrp    x8, #0x10041d000
  100012648  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  10001264c  adrp    x8, #0x100417000
  100012650  nop
  100012654  ldr     x1, [x8, #0x348]
  100012658  mov     x0, x19
  10001265c  bl      _objc_msgSend                            ; [arg2 section]
  100012660  mov     x2, x0
  100012664  adrp    x8, #0x100417000
  100012668  nop
  10001266c  ldr     x1, [x8, #0xe8]
  100012670  mov     x0, x20
  100012674  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[arg2 section]]
  100012678  mov     x29, x29
  10001267c  bl      _objc_retainAutoreleasedReturnValue
  100012680  mov     x24, x0
  100012684  adrp    x8, #0x100417000
  100012688  nop
  10001268c  ldr     x23, [x8, #0x40]
  100012690  mov     x0, x21
  100012694  mov     x1, x23
  100012698  mov     x2, x24
  10001269c  bl      _objc_msgSend                            ; [[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]]
  1000126a0  mov     x29, x29
  1000126a4  bl      _objc_retainAutoreleasedReturnValue
  1000126a8  mov     x20, x0
  1000126ac  mov     x0, x24
  1000126b0  bl      _objc_release
  1000126b4  mov     x0, x21
  1000126b8  bl      _objc_release
  1000126bc  adrp    x8, #0x100416000
  1000126c0  nop
  1000126c4  ldr     x1, [x8, #0xf58]
  1000126c8  adrp    x2, #0x1003b9000
  1000126cc  add     x2, x2, #0xff0                           ; @"WeaponCellID"
  1000126d0  mov     x0, x20
  1000126d4  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"WeaponCellID"]
  1000126d8  cbz     w0, loc_100012824                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"WeaponCellID"] == 0)
  1000126dc  adrp    x8, #0x10041f000
  1000126e0  ldrsw   x8, [x8, #0x538]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsKeys (+0x160)
  1000126e4  ldr     x21, [x22, x8]                           ; x21 = self->weaponsKeys
  1000126e8  adrp    x8, #0x100417000
  1000126ec  nop
  1000126f0  ldr     x1, [x8, #0x350]
  1000126f4  mov     x0, x19
  1000126f8  bl      _objc_msgSend                            ; [arg2 row]
  1000126fc  mov     x2, x0
  100012700  adrp    x8, #0x100416000
  100012704  nop
  100012708  ldr     x1, [x8, #0xc30]
  10001270c  mov     x0, x21
  100012710  bl      _objc_msgSend                            ; [self->weaponsKeys objectAtIndex:[arg2 row]]
  100012714  mov     x29, x29
  100012718  bl      _objc_retainAutoreleasedReturnValue
  10001271c  mov     x21, x0
  100012720  adrp    x8, #0x10041f000
  100012724  ldrsw   x8, [x8, #0x528]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsData (+0x148)
  100012728  ldr     x0, [x22, x8]                            ; x0 = self->weaponsData
  10001272c  mov     x1, x23
  100012730  mov     x2, x21
  100012734  bl      _objc_msgSend                            ; [self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:[arg2 row]]]
  100012738  mov     x29, x29
  10001273c  bl      _objc_retainAutoreleasedReturnValue
  100012740  mov     x22, x0
  100012744  adrp    x2, #0x1003b9000
  100012748  add     x2, x2, #0xe10                           ; @"melee"
  10001274c  mov     x1, x23
  100012750  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:[arg2 row]]] objectForKey:@"melee"]
  100012754  mov     x29, x29
  100012758  bl      _objc_retainAutoreleasedReturnValue
  10001275c  mov     x24, x0
  100012760  adrp    x8, #0x100417000
  100012764  nop
  100012768  ldr     x1, [x8, #0xd8]
  10001276c  bl      _objc_msgSend                            ; [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:[arg2 row]]] objectForKey:@"melee"] boolValue]
  100012770  mov     x23, x0
  100012774  mov     x0, x24
  100012778  bl      _objc_release
  10001277c  cmp     w23, #0
  100012780  mov     w8, #5
  100012784  mov     w9, #1
  100012788  csel    x23, x9, x8, ne                          ; t1 = ([[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:[arg2 row]]] objectForKey:@"melee"] boolValue] != 0 ? 1 : 5)
  10001278c  adrp    x24, #0x10041d000
  100012790  ldr     x0, [x24, #0xff0]                        ; class ADStatsMultiCell
  100012794  adrp    x8, #0x100417000
  100012798  nop
  10001279c  ldr     x1, [x8, #0x358]
  1000127a0  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleLabelOffset]
  1000127a4  mov     v8.16b, v0.16b
  1000127a8  ldr     x0, [x24, #0xff0]                        ; class ADStatsMultiCell
  1000127ac  adrp    x8, #0x100417000
  1000127b0  nop
  1000127b4  ldr     x1, [x8, #0x360]
  1000127b8  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultSubTitleCellHeight]
  1000127bc  mov     v9.16b, v0.16b
  1000127c0  ldr     x0, [x24, #0xff0]                        ; class ADStatsMultiCell
  1000127c4  adrp    x8, #0x100417000
  1000127c8  nop
  1000127cc  ldr     x1, [x8, #0x368]
  1000127d0  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellHeight]
  1000127d4  mov     v10.16b, v0.16b
  1000127d8  ldr     x0, [x24, #0xff0]                        ; class ADStatsMultiCell
  1000127dc  adrp    x8, #0x100417000
  1000127e0  nop
  1000127e4  ldr     x1, [x8, #0x370]
  1000127e8  bl      _objc_msgSend                            ; [ADStatsMultiCell defaultCellOffset]
  1000127ec  fadd    d1, d8, d9                               ; t2 = ([ADStatsMultiCell defaultSubTitleLabelOffset] + [ADStatsMultiCell defaultSubTitleCellHeight])
  1000127f0  scvtf   d2, x23
  1000127f4  fmul    d2, d2, d10
  1000127f8  fadd    d1, d1, d2
  1000127fc  add     x8, x23, #1
  100012800  scvtf   d2, x8
  100012804  fmul    d0, d2, d0
  100012808  fadd    d0, d1, d0                               ; t3 = ((t2 + ((float)t1 * [ADStatsMultiCell defaultCellHeight])) + ((float)(t1 + 1) * [ADStatsMultiCell defaultCellOffset]))
  10001280c  fadd    d8, d9, d0
  100012810  mov     x0, x22
  100012814  bl      _objc_release
  100012818  mov     x0, x21
  10001281c  bl      _objc_release
  100012820  b       loc_100012830
loc_100012824:
  100012824  adrp    x8, #0x10042d000
  100012828  add     x8, x8, #0x960                           ; &g_10042d960
  10001282c  ldr     d8, [x8]                                 ; d8 = 0.0
loc_100012830:
  100012830  mov     x0, x20
  100012834  bl      _objc_release
  100012838  mov     x0, x19
  10001283c  bl      _objc_release
  100012840  mov     v0.16b, v8.16b
  100012844  ldp     x29, x30, [sp, #0x50]
  100012848  ldp     x20, x19, [sp, #0x40]
  10001284c  ldp     x22, x21, [sp, #0x30]
  100012850  ldp     x24, x23, [sp, #0x20]
  100012854  ldp     d9, d8, [sp, #0x10]
  100012858  ldp     d11, d10, [sp], #0x60
  10001285c  ret
  100012860  mov     x23, x0
  100012864  b       loc_1000128a8
  100012868  mov     x23, x0
  10001286c  b       loc_10001288c
  100012870  mov     x23, x0
  100012874  b       loc_1000128b8
  100012878  mov     x23, x0
  10001287c  b       loc_1000128c0
  100012880  mov     x23, x0
  100012884  mov     x0, x24
  100012888  bl      _objc_release
loc_10001288c:
  10001288c  mov     x0, x21
  100012890  b       loc_1000128bc
  100012894  mov     x23, x0
  100012898  b       loc_1000128b0
  10001289c  mov     x23, x0
  1000128a0  mov     x0, x24
  1000128a4  bl      _objc_release
loc_1000128a8:
  1000128a8  mov     x0, x22
  1000128ac  bl      _objc_release
loc_1000128b0:
  1000128b0  mov     x0, x21
  1000128b4  bl      _objc_release
loc_1000128b8:
  1000128b8  mov     x0, x20
loc_1000128bc:
  1000128bc  bl      _objc_release
loc_1000128c0:
  1000128c0  mov     x0, x19
  1000128c4  bl      _objc_release
  1000128c8  mov     x0, x23
  1000128cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController numberOfSectionsInTableView:]
; address 0x1000128d0  size 32  kind objc
; ======================================================================
  1000128d0  stp     x29, x30, [sp, #-0x10]!
  1000128d4  mov     x29, sp
  1000128d8  adrp    x8, #0x100417000
  1000128dc  nop
  1000128e0  ldr     x1, [x8, #0x378]
  1000128e4  bl      _objc_msgSend                            ; [self numberOfSections]
  1000128e8  ldp     x29, x30, [sp], #0x10
  1000128ec  ret

; ======================================================================
; -[ADGameOverEndlessStatsViewController tableView:cellForRowAtIndexPath:]
; address 0x1000128f0  size 644  kind objc
; ======================================================================
  1000128f0  stp     x24, x23, [sp, #-0x40]!
  1000128f4  stp     x22, x21, [sp, #0x10]
  1000128f8  stp     x20, x19, [sp, #0x20]
  1000128fc  stp     x29, x30, [sp, #0x30]
  100012900  add     x29, sp, #0x30
  100012904  mov     x20, x3
  100012908  mov     x22, x0
  10001290c  mov     x0, x2
  100012910  bl      _objc_retain
  100012914  mov     x19, x0
  100012918  mov     x0, x20
  10001291c  bl      _objc_retain
  100012920  mov     x20, x0
  100012924  adrp    x8, #0x100417000
  100012928  nop
  10001292c  ldr     x1, [x8, #0x270]
  100012930  mov     x0, x22
  100012934  bl      _objc_msgSend                            ; [self sectionsDict]
  100012938  mov     x29, x29
  10001293c  bl      _objc_retainAutoreleasedReturnValue
  100012940  mov     x23, x0
  100012944  adrp    x8, #0x10041d000
  100012948  ldr     x21, [x8, #0xf68]                        ; class NSNumber
  10001294c  adrp    x8, #0x100417000
  100012950  nop
  100012954  ldr     x1, [x8, #0x348]
  100012958  mov     x0, x20
  10001295c  bl      _objc_msgSend                            ; [arg2 section]
  100012960  mov     x2, x0
  100012964  adrp    x8, #0x100417000
  100012968  nop
  10001296c  ldr     x1, [x8, #0xe8]
  100012970  mov     x0, x21
  100012974  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[arg2 section]]
  100012978  mov     x29, x29
  10001297c  bl      _objc_retainAutoreleasedReturnValue
  100012980  mov     x24, x0
  100012984  adrp    x8, #0x100417000
  100012988  nop
  10001298c  ldr     x1, [x8, #0x40]
  100012990  mov     x0, x23
  100012994  mov     x2, x24
  100012998  bl      _objc_msgSend                            ; [[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]]
  10001299c  mov     x29, x29
  1000129a0  bl      _objc_retainAutoreleasedReturnValue
  1000129a4  mov     x21, x0
  1000129a8  mov     x0, x24
  1000129ac  bl      _objc_release
  1000129b0  mov     x0, x23
  1000129b4  bl      _objc_release
  1000129b8  adrp    x8, #0x100416000
  1000129bc  nop
  1000129c0  ldr     x23, [x8, #0xf58]
  1000129c4  adrp    x2, #0x1003ba000
  1000129c8  add     x2, x2, #0x10                            ; @"MiscCellID"
  1000129cc  mov     x0, x21
  1000129d0  mov     x1, x23
  1000129d4  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"MiscCellID"]
  1000129d8  cbz     w0, loc_100012a00                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"MiscCellID"] == 0)
  1000129dc  adrp    x8, #0x100417000
  1000129e0  nop
  1000129e4  ldr     x1, [x8, #0x380]
  1000129e8  mov     x0, x22
  1000129ec  mov     x2, x20
  1000129f0  mov     x3, x19
  1000129f4  bl      _objc_msgSend                            ; [self createMiscCellForRowAtIndexPath:arg2 ForTableView:arg1]
  1000129f8  mov     x29, x29
  1000129fc  b       loc_100012a38
loc_100012a00:
  100012a00  adrp    x2, #0x1003b9000
  100012a04  add     x2, x2, #0xfd0                           ; @"EnemyCellID"
  100012a08  mov     x0, x21
  100012a0c  mov     x1, x23
  100012a10  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"EnemyCellID"]
  100012a14  cbz     w0, loc_100012a70                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"EnemyCellID"] == 0)
  100012a18  adrp    x8, #0x100417000
  100012a1c  nop
  100012a20  ldr     x1, [x8, #0x388]
  100012a24  mov     x0, x22
  100012a28  mov     x2, x20
  100012a2c  mov     x3, x19
  100012a30  bl      _objc_msgSend                            ; [self createEnemyCellForRowAtIndexPath:arg2 ForTableView:arg1]
  100012a34  mov     x29, x29
loc_100012a38:
  100012a38  bl      _objc_retainAutoreleasedReturnValue
  100012a3c  mov     x22, x0
loc_100012a40:
  100012a40  mov     x0, x21
  100012a44  bl      _objc_release
  100012a48  mov     x0, x20
  100012a4c  bl      _objc_release
  100012a50  mov     x0, x19
  100012a54  bl      _objc_release
  100012a58  mov     x0, x22
  100012a5c  ldp     x29, x30, [sp, #0x30]
  100012a60  ldp     x20, x19, [sp, #0x20]
  100012a64  ldp     x22, x21, [sp, #0x10]
  100012a68  ldp     x24, x23, [sp], #0x40
  100012a6c  b       _objc_autoreleaseReturnValue
loc_100012a70:
  100012a70  adrp    x2, #0x1003b9000
  100012a74  add     x2, x2, #0xff0                           ; @"WeaponCellID"
  100012a78  mov     x0, x21
  100012a7c  mov     x1, x23
  100012a80  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"WeaponCellID"]
  100012a84  cbz     w0, loc_100012aec                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:[arg2 section]]] isEqualToString:@"WeaponCellID"] == 0)
  100012a88  adrp    x8, #0x100417000
  100012a8c  nop
  100012a90  ldr     x1, [x8, #0x2a0]
  100012a94  mov     x0, x22
  100012a98  bl      _objc_msgSend                            ; [self weaponCells]
  100012a9c  mov     x29, x29
  100012aa0  bl      _objc_retainAutoreleasedReturnValue
  100012aa4  mov     x23, x0
  100012aa8  adrp    x8, #0x100417000
  100012aac  nop
  100012ab0  ldr     x1, [x8, #0x350]
  100012ab4  mov     x0, x20
  100012ab8  bl      _objc_msgSend                            ; [arg2 row]
  100012abc  mov     x2, x0
  100012ac0  adrp    x8, #0x100416000
  100012ac4  nop
  100012ac8  ldr     x1, [x8, #0xc30]
  100012acc  mov     x0, x23
  100012ad0  bl      _objc_msgSend                            ; [[self weaponCells] objectAtIndex:[arg2 row]]
  100012ad4  mov     x29, x29
  100012ad8  bl      _objc_retainAutoreleasedReturnValue
  100012adc  mov     x22, x0
  100012ae0  mov     x0, x23
  100012ae4  bl      _objc_release
  100012ae8  b       loc_100012a40
loc_100012aec:
  100012aec  adrp    x8, #0x10041d000
  100012af0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100012af4  adrp    x8, #0x100417000
  100012af8  nop
  100012afc  ldr     x1, [x8, #0x260]
  100012b00  adrp    x2, #0x1003ba000
  100012b04  add     x2, x2, #0x150                           ; @"Indexpath error"
  100012b08  adrp    x3, #0x1003ba000
  100012b0c  add     x3, x3, #0x170                           ; @"Unknown indexpath"
  100012b10  bl      _objc_msgSend                            ; [NSException raise:@"Indexpath error" format:@"Unknown indexpath"]
  100012b14  mov     x22, #0
  100012b18  b       loc_100012a40
  100012b1c  mov     x22, x0
loc_100012b20:
  100012b20  mov     x0, x21
  100012b24  b       loc_100012b48
  100012b28  mov     x22, x0
  100012b2c  b       loc_100012b44
  100012b30  mov     x22, x0
  100012b34  b       loc_100012b4c
  100012b38  mov     x22, x0
  100012b3c  mov     x0, x24
  100012b40  bl      _objc_release
loc_100012b44:
  100012b44  mov     x0, x23
loc_100012b48:
  100012b48  bl      _objc_release
loc_100012b4c:
  100012b4c  mov     x0, x20
  100012b50  bl      _objc_release
  100012b54  mov     x0, x19
  100012b58  bl      _objc_release
  100012b5c  mov     x0, x22
  100012b60  bl      __Unwind_Resume                          ; Unwind_Resume()
  100012b64  mov     x22, x0
  100012b68  mov     x0, x23
  100012b6c  bl      _objc_release
  100012b70  b       loc_100012b20

; ======================================================================
; -[ADGameOverEndlessStatsViewController createMiscCellForRowAtIndexPath:ForTableView:]
; address 0x100012b74  size 680  kind objc
; ======================================================================
  100012b74  stp     x26, x25, [sp, #-0x50]!
  100012b78  stp     x24, x23, [sp, #0x10]
  100012b7c  stp     x22, x21, [sp, #0x20]
  100012b80  stp     x20, x19, [sp, #0x30]
  100012b84  stp     x29, x30, [sp, #0x40]
  100012b88  add     x29, sp, #0x40
  100012b8c  sub     sp, sp, #0x10
  100012b90  mov     x20, x3
  100012b94  mov     x21, x0
  100012b98  mov     x0, x2
  100012b9c  bl      _objc_retain
  100012ba0  mov     x19, x0
  100012ba4  adrp    x8, #0x100417000
  100012ba8  nop
  100012bac  ldr     x1, [x8, #0x390]
  100012bb0  adrp    x2, #0x1003ba000
  100012bb4  add     x2, x2, #0x10                            ; @"MiscCellID"
  100012bb8  mov     x0, x20
  100012bbc  bl      _objc_msgSend                            ; [arg2 dequeueReusableCellWithIdentifier:@"MiscCellID"]
  100012bc0  mov     x29, x29
  100012bc4  bl      _objc_retainAutoreleasedReturnValue
  100012bc8  mov     x20, x0
  100012bcc  adrp    x8, #0x10041f000
  100012bd0  ldrsw   x8, [x8, #0x530]                         ; ivar offset ADGameOverEndlessStatsViewController.miscData (+0x158)
  100012bd4  ldr     x21, [x21, x8]                           ; x21 = self->miscData
  100012bd8  adrp    x8, #0x10041d000
  100012bdc  ldr     x22, [x8, #0xf68]                        ; class NSNumber
  100012be0  adrp    x8, #0x100417000
  100012be4  nop
  100012be8  ldr     x1, [x8, #0x350]
  100012bec  mov     x0, x19
  100012bf0  bl      _objc_msgSend                            ; [arg1 row]
  100012bf4  mov     x2, x0
  100012bf8  adrp    x8, #0x100417000
  100012bfc  nop
  100012c00  ldr     x1, [x8, #0xe8]
  100012c04  mov     x0, x22
  100012c08  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[arg1 row]]
  100012c0c  mov     x29, x29
  100012c10  bl      _objc_retainAutoreleasedReturnValue
  100012c14  mov     x24, x0
  100012c18  adrp    x8, #0x100417000
  100012c1c  nop
  100012c20  ldr     x23, [x8, #0x40]
  100012c24  mov     x0, x21
  100012c28  mov     x1, x23
  100012c2c  mov     x2, x24
  100012c30  bl      _objc_msgSend                            ; [self->miscData objectForKey:[NSNumber numberWithInteger:[arg1 row]]]
  100012c34  mov     x29, x29
  100012c38  bl      _objc_retainAutoreleasedReturnValue
  100012c3c  mov     x21, x0
  100012c40  mov     x0, x24
  100012c44  bl      _objc_release
  100012c48  adrp    x8, #0x100417000
  100012c4c  nop
  100012c50  ldr     x1, [x8, #0x398]
  100012c54  mov     x0, x20
  100012c58  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"MiscCellID"] keyLabel]
  100012c5c  mov     x29, x29
  100012c60  bl      _objc_retainAutoreleasedReturnValue
  100012c64  mov     x24, x0
  100012c68  adrp    x2, #0x1003b9000
  100012c6c  add     x2, x2, #0xdb0                           ; @"name"
  100012c70  mov     x0, x21
  100012c74  mov     x1, x23
  100012c78  bl      _objc_msgSend                            ; [[self->miscData objectForKey:[NSNumber numberWithInteger:[arg1 row]]] objectForKey:@"name"]
  100012c7c  mov     x29, x29
  100012c80  bl      _objc_retainAutoreleasedReturnValue
  100012c84  mov     x25, x0
  100012c88  adrp    x8, #0x100416000
  100012c8c  nop
  100012c90  ldr     x22, [x8, #0xb68]
  100012c94  mov     x0, x24
  100012c98  mov     x1, x22
  100012c9c  mov     x2, x25
  100012ca0  bl      _objc_msgSend                            ; [[[arg2 dequeueReusableCellWithIdentifier:@"MiscCellID"] keyLabel] setText:[[self->miscData objectForKey:[NSNumber numberWithInteger:[arg1 row]]] objectForKey:@"name"]]
  100012ca4  mov     x0, x25
  100012ca8  bl      _objc_release
  100012cac  mov     x0, x24
  100012cb0  bl      _objc_release
  100012cb4  adrp    x8, #0x10041d000
  100012cb8  ldr     x25, [x8, #0xf78]                        ; class NSString
  100012cbc  adrp    x2, #0x1003ba000
  100012cc0  add     x2, x2, #0x1b0                           ; @"value"
  100012cc4  mov     x0, x21
  100012cc8  mov     x1, x23
  100012ccc  bl      _objc_msgSend                            ; [[self->miscData objectForKey:[NSNumber numberWithInteger:[arg1 row]]] objectForKey:@"value"]
  100012cd0  mov     x29, x29
  100012cd4  bl      _objc_retainAutoreleasedReturnValue
  100012cd8  mov     x24, x0
  100012cdc  adrp    x8, #0x100416000
  100012ce0  nop
  100012ce4  ldr     x1, [x8, #0xee8]
  100012ce8  str     x24, [sp]
  100012cec  adrp    x2, #0x1003ba000
  100012cf0  add     x2, x2, #0x190                           ; @"%@"
  100012cf4  mov     x0, x25
  100012cf8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@", [[self->miscData objectForKey:[NSNumber numberWithInteger:[arg1 row]]] objectFor…]
  100012cfc  mov     x29, x29
  100012d00  bl      _objc_retainAutoreleasedReturnValue
  100012d04  mov     x23, x0
  100012d08  mov     x0, x24
  100012d0c  bl      _objc_release
  100012d10  adrp    x8, #0x100417000
  100012d14  nop
  100012d18  ldr     x1, [x8, #0x3a0]
  100012d1c  mov     x0, x20
  100012d20  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"MiscCellID"] valueLabel]
  100012d24  mov     x29, x29
  100012d28  bl      _objc_retainAutoreleasedReturnValue
  100012d2c  mov     x24, x0
  100012d30  mov     x1, x22
  100012d34  mov     x2, x23
  100012d38  bl      _objc_msgSend                            ; [[[arg2 dequeueReusableCellWithIdentifier:@"MiscCellID"] valueLabel] setText:[NSString stringWithFormat:@"%@", [[self->miscData objectForKey:[NSNumber numberWithInteger:[arg1 row]]] objectFor…]]
  100012d3c  mov     x0, x24
  100012d40  bl      _objc_release
  100012d44  adrp    x8, #0x100417000
  100012d48  nop
  100012d4c  ldr     x1, [x8, #0x3a8]
  100012d50  adrp    x8, #0x100181000
  100012d54  ldr     d0, [x8, #0xa00]                         ; d0 = 0.800000012
  100012d58  mov     x0, x20
  100012d5c  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"MiscCellID"] keyLabelSize:0.8]
  100012d60  mov     x0, x23
  100012d64  bl      _objc_release
  100012d68  mov     x0, x21
  100012d6c  bl      _objc_release
  100012d70  mov     x0, x19
  100012d74  bl      _objc_release
  100012d78  mov     x0, x20
  100012d7c  sub     sp, x29, #0x40
  100012d80  ldp     x29, x30, [sp, #0x40]
  100012d84  ldp     x20, x19, [sp, #0x30]
  100012d88  ldp     x22, x21, [sp, #0x20]
  100012d8c  ldp     x24, x23, [sp, #0x10]
  100012d90  ldp     x26, x25, [sp], #0x50
  100012d94  b       _objc_autoreleaseReturnValue
  100012d98  mov     x22, x0
  100012d9c  b       loc_100012e04
  100012da0  mov     x22, x0
  100012da4  b       loc_100012dfc
  100012da8  mov     x22, x0
  100012dac  b       loc_100012df4
  100012db0  mov     x22, x0
  100012db4  b       loc_100012e0c
  100012db8  mov     x22, x0
  100012dbc  mov     x0, x24
  100012dc0  b       loc_100012e00
  100012dc4  mov     x22, x0
  100012dc8  b       loc_100012de0
  100012dcc  mov     x22, x0
  100012dd0  mov     x0, x25
  100012dd4  bl      _objc_release
  100012dd8  b       loc_100012de0
  100012ddc  mov     x22, x0
loc_100012de0:
  100012de0  mov     x0, x24
  100012de4  b       loc_100012df8
  100012de8  mov     x22, x0
  100012dec  mov     x0, x24
  100012df0  bl      _objc_release
loc_100012df4:
  100012df4  mov     x0, x23
loc_100012df8:
  100012df8  bl      _objc_release
loc_100012dfc:
  100012dfc  mov     x0, x21
loc_100012e00:
  100012e00  bl      _objc_release
loc_100012e04:
  100012e04  mov     x0, x20
  100012e08  bl      _objc_release
loc_100012e0c:
  100012e0c  mov     x0, x19
  100012e10  bl      _objc_release
  100012e14  mov     x0, x22
  100012e18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController createEnemyCellForRowAtIndexPath:ForTableView:]
; address 0x100012e1c  size 852  kind objc
; ======================================================================
  100012e1c  stp     x28, x27, [sp, #-0x60]!
  100012e20  stp     x26, x25, [sp, #0x10]
  100012e24  stp     x24, x23, [sp, #0x20]
  100012e28  stp     x22, x21, [sp, #0x30]
  100012e2c  stp     x20, x19, [sp, #0x40]
  100012e30  stp     x29, x30, [sp, #0x50]
  100012e34  add     x29, sp, #0x50
  100012e38  sub     sp, sp, #0x10
  100012e3c  mov     x20, x3
  100012e40  mov     x22, x0
  100012e44  mov     x0, x2
  100012e48  bl      _objc_retain
  100012e4c  mov     x19, x0
  100012e50  adrp    x8, #0x100417000
  100012e54  nop
  100012e58  ldr     x1, [x8, #0x390]
  100012e5c  adrp    x2, #0x1003b9000
  100012e60  add     x2, x2, #0xfd0                           ; @"EnemyCellID"
  100012e64  mov     x0, x20
  100012e68  bl      _objc_msgSend                            ; [arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"]
  100012e6c  mov     x29, x29
  100012e70  bl      _objc_retainAutoreleasedReturnValue
  100012e74  mov     x20, x0
  100012e78  adrp    x8, #0x100417000
  100012e7c  nop
  100012e80  ldr     x1, [x8, #0x3b0]
  100012e84  mov     x2, #0
  100012e88  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] setSelectionStyle:0]
  100012e8c  adrp    x8, #0x10041f000
  100012e90  ldrsw   x27, [x8, #0x534]                        ; ivar offset ADGameOverEndlessStatsViewController.enemyKeys (+0x168)
  100012e94  ldr     x21, [x22, x27]                          ; x21 = self->enemyKeys
  100012e98  adrp    x8, #0x100417000
  100012e9c  nop
  100012ea0  ldr     x24, [x8, #0x350]
  100012ea4  mov     x0, x19
  100012ea8  mov     x1, x24
  100012eac  bl      _objc_msgSend                            ; [arg1 row]
  100012eb0  mov     x2, x0
  100012eb4  adrp    x8, #0x100416000
  100012eb8  nop
  100012ebc  ldr     x25, [x8, #0xc30]
  100012ec0  mov     x0, x21
  100012ec4  mov     x1, x25
  100012ec8  bl      _objc_msgSend                            ; [self->enemyKeys objectAtIndex:[arg1 row]]
  100012ecc  mov     x29, x29
  100012ed0  bl      _objc_retainAutoreleasedReturnValue
  100012ed4  mov     x21, x0
  100012ed8  adrp    x8, #0x100417000
  100012edc  nop
  100012ee0  ldr     x1, [x8, #0x398]
  100012ee4  mov     x0, x20
  100012ee8  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] keyLabel]
  100012eec  mov     x29, x29
  100012ef0  bl      _objc_retainAutoreleasedReturnValue
  100012ef4  mov     x26, x0
  100012ef8  adrp    x8, #0x100416000
  100012efc  nop
  100012f00  ldr     x23, [x8, #0xb68]
  100012f04  mov     x1, x23
  100012f08  mov     x2, x21
  100012f0c  bl      _objc_msgSend                            ; [[[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] keyLabel] setText:[self->enemyKeys objectAtIndex:[arg1 row]]]
  100012f10  mov     x0, x26
  100012f14  bl      _objc_release
  100012f18  adrp    x8, #0x10041f000
  100012f1c  ldrsw   x8, [x8, #0x524]                         ; ivar offset ADGameOverEndlessStatsViewController.enemyData (+0x140)
  100012f20  ldr     x26, [x22, x8]                           ; x26 = self->enemyData
  100012f24  ldr     x22, [x22, x27]                          ; x22 = self->enemyKeys
  100012f28  mov     x0, x19
  100012f2c  mov     x1, x24
  100012f30  bl      _objc_msgSend                            ; [arg1 row]
  100012f34  mov     x2, x0
  100012f38  mov     x0, x22
  100012f3c  mov     x1, x25
  100012f40  bl      _objc_msgSend                            ; [self->enemyKeys objectAtIndex:[arg1 row]]
  100012f44  mov     x29, x29
  100012f48  bl      _objc_retainAutoreleasedReturnValue
  100012f4c  mov     x25, x0
  100012f50  adrp    x8, #0x100417000
  100012f54  nop
  100012f58  ldr     x24, [x8, #0x40]
  100012f5c  mov     x0, x26
  100012f60  mov     x1, x24
  100012f64  mov     x2, x25
  100012f68  bl      _objc_msgSend                            ; [self->enemyData objectForKey:[self->enemyKeys objectAtIndex:[arg1 row]]]
  100012f6c  mov     x29, x29
  100012f70  bl      _objc_retainAutoreleasedReturnValue
  100012f74  mov     x22, x0
  100012f78  mov     x0, x25
  100012f7c  bl      _objc_release
  100012f80  adrp    x8, #0x10041d000
  100012f84  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100012f88  adrp    x8, #0x100417000
  100012f8c  nop
  100012f90  ldr     x1, [x8, #0x2e0]
  100012f94  bl      _objc_msgSend                            ; [NSDictionary class]
  100012f98  mov     x2, x0
  100012f9c  adrp    x8, #0x100417000
  100012fa0  nop
  100012fa4  ldr     x1, [x8, #0x3b8]
  100012fa8  mov     x0, x22
  100012fac  bl      _objc_msgSend                            ; [[self->enemyData objectForKey:[self->enemyKeys objectAtIndex:[arg1 row]]] isKindOfClass:[NSDictionary class]]
  100012fb0  cbz     w0, loc_10001305c                        ; if ([[self->enemyData objectForKey:[self->enemyKeys objectAtIndex:[arg1 row]]] isKindOfClass:[NSDictionary class]] == 0)
  100012fb4  adrp    x2, #0x1003ba000
  100012fb8  add     x2, x2, #0x1d0                           ; @"Killed"
  100012fbc  mov     x0, x22
  100012fc0  mov     x1, x24
  100012fc4  bl      _objc_msgSend                            ; [[self->enemyData objectForKey:[self->enemyKeys objectAtIndex:[arg1 row]]] objectForKey:@"Killed"]
  100012fc8  mov     x29, x29
  100012fcc  bl      _objc_retainAutoreleasedReturnValue
  100012fd0  mov     x24, x0
  100012fd4  adrp    x8, #0x100417000
  100012fd8  nop
  100012fdc  ldr     x1, [x8, #0xb0]
  100012fe0  bl      _objc_msgSend                            ; [[[self->enemyData objectForKey:[self->enemyKeys objectAtIndex:[arg1 row]]] objectForKey:@"Killed"] integerValue]
  100012fe4  mov     x25, x0
  100012fe8  mov     x0, x24
  100012fec  bl      _objc_release
  100012ff0  adrp    x8, #0x100417000
  100012ff4  nop
  100012ff8  ldr     x1, [x8, #0x3a0]
  100012ffc  mov     x0, x20
  100013000  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] valueLabel]
  100013004  mov     x29, x29
  100013008  bl      _objc_retainAutoreleasedReturnValue
  10001300c  mov     x24, x0
  100013010  adrp    x8, #0x10041d000
  100013014  ldr     x0, [x8, #0xf78]                         ; class NSString
  100013018  adrp    x8, #0x100416000
  10001301c  nop
  100013020  ldr     x1, [x8, #0xee8]
  100013024  str     x25, [sp]
  100013028  adrp    x2, #0x1003ba000
  10001302c  add     x2, x2, #0x1f0                           ; @"%d"
  100013030  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[[self->enemyData objectForKey:[self->enemyKeys objectAtIndex:[arg1 row]]] obje…]
  100013034  mov     x29, x29
  100013038  bl      _objc_retainAutoreleasedReturnValue
  10001303c  mov     x25, x0
  100013040  mov     x0, x24
  100013044  mov     x1, x23
  100013048  mov     x2, x25
  10001304c  bl      _objc_msgSend                            ; [[[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] valueLabel] setText:[NSString stringWithFormat:@"%d", [[[self->enemyData objectForKey:[self->enemyKeys objectAtIndex:[arg1 row]]] obje…]]
  100013050  mov     x0, x25
  100013054  bl      _objc_release
  100013058  b       loc_10001308c
loc_10001305c:
  10001305c  adrp    x8, #0x100417000
  100013060  nop
  100013064  ldr     x1, [x8, #0x3a0]
  100013068  mov     x0, x20
  10001306c  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] valueLabel]
  100013070  mov     x29, x29
  100013074  bl      _objc_retainAutoreleasedReturnValue
  100013078  mov     x24, x0
  10001307c  adrp    x2, #0x1003ba000
  100013080  add     x2, x2, #0x210                           ; @"-1"
  100013084  mov     x1, x23
  100013088  bl      _objc_msgSend                            ; [[[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] valueLabel] setText:@"-1"]
loc_10001308c:
  10001308c  mov     x0, x24
  100013090  bl      _objc_release
  100013094  adrp    x8, #0x100417000
  100013098  nop
  10001309c  ldr     x1, [x8, #0x3a8]
  1000130a0  adrp    x8, #0x100181000
  1000130a4  ldr     d0, [x8, #0xa00]                         ; d0 = 0.800000012
  1000130a8  mov     x0, x20
  1000130ac  bl      _objc_msgSend                            ; [[arg2 dequeueReusableCellWithIdentifier:@"EnemyCellID"] keyLabelSize:0.8]
  1000130b0  mov     x0, x22
  1000130b4  bl      _objc_release
  1000130b8  mov     x0, x21
  1000130bc  bl      _objc_release
  1000130c0  mov     x0, x19
  1000130c4  bl      _objc_release
  1000130c8  mov     x0, x20
  1000130cc  sub     sp, x29, #0x50
  1000130d0  ldp     x29, x30, [sp, #0x50]
  1000130d4  ldp     x20, x19, [sp, #0x40]
  1000130d8  ldp     x22, x21, [sp, #0x30]
  1000130dc  ldp     x24, x23, [sp, #0x20]
  1000130e0  ldp     x26, x25, [sp, #0x10]
  1000130e4  ldp     x28, x27, [sp], #0x60
  1000130e8  b       _objc_autoreleaseReturnValue
  1000130ec  mov     x23, x0
  1000130f0  b       loc_100013148
  1000130f4  mov     x23, x0
  1000130f8  b       loc_100013158
  1000130fc  mov     x23, x0
  100013100  b       loc_100013150
  100013104  mov     x23, x0
  100013108  b       loc_100013160
  10001310c  mov     x23, x0
  100013110  mov     x0, x26
  100013114  b       loc_10001314c
  100013118  mov     x23, x0
  10001311c  mov     x0, x25
  100013120  b       loc_10001314c
  100013124  b       loc_10001313c
  100013128  b       loc_10001313c
  10001312c  mov     x23, x0
  100013130  mov     x0, x25
  100013134  bl      _objc_release
  100013138  b       loc_100013140
loc_10001313c:
  10001313c  mov     x23, x0
loc_100013140:
  100013140  mov     x0, x24
  100013144  bl      _objc_release
loc_100013148:
  100013148  mov     x0, x22
loc_10001314c:
  10001314c  bl      _objc_release
loc_100013150:
  100013150  mov     x0, x21
  100013154  bl      _objc_release
loc_100013158:
  100013158  mov     x0, x20
  10001315c  bl      _objc_release
loc_100013160:
  100013160  mov     x0, x19
  100013164  bl      _objc_release
  100013168  mov     x0, x23
  10001316c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController createWeaponCellForRow:]
; address 0x100013170  size 1912  kind objc
; ======================================================================
  100013170  stp     d9, d8, [sp, #-0x70]!
  100013174  stp     x28, x27, [sp, #0x10]
  100013178  stp     x26, x25, [sp, #0x20]
  10001317c  stp     x24, x23, [sp, #0x30]
  100013180  stp     x22, x21, [sp, #0x40]
  100013184  stp     x20, x19, [sp, #0x50]
  100013188  stp     x29, x30, [sp, #0x60]
  10001318c  add     x29, sp, #0x60
  100013190  sub     sp, sp, #0x90
  100013194  mov     x19, x2
  100013198  mov     x28, x0
  10001319c  adrp    x27, #0x1003b0000
  1000131a0  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  1000131a4  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  1000131a8  stur    x27, [x29, #-0x68]
  1000131ac  adrp    x8, #0x10041d000
  1000131b0  ldr     x0, [x8, #0xff0]                         ; class ADStatsMultiCell
  1000131b4  adrp    x8, #0x100416000
  1000131b8  nop
  1000131bc  ldr     x1, [x8, #0xac8]
  1000131c0  bl      _objc_msgSend                            ; [ADStatsMultiCell alloc]
  1000131c4  adrp    x8, #0x100417000
  1000131c8  nop
  1000131cc  ldr     x1, [x8, #0x3c0]
  1000131d0  mov     x2, #0
  1000131d4  adrp    x3, #0x1003b9000
  1000131d8  add     x3, x3, #0xff0                           ; @"WeaponCellID"
  1000131dc  bl      _objc_msgSend                            ; [[ADStatsMultiCell alloc] initWithStyle:0 reuseIdentifier:@"WeaponCellID"]
  1000131e0  mov     x26, x0
  1000131e4  adrp    x8, #0x10041f000
  1000131e8  ldrsw   x8, [x8, #0x538]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsKeys (+0x160)
  1000131ec  ldr     x0, [x28, x8]                            ; x0 = self->weaponsKeys
  1000131f0  adrp    x8, #0x100416000
  1000131f4  nop
  1000131f8  ldr     x1, [x8, #0xc30]
  1000131fc  mov     x2, x19
  100013200  bl      _objc_msgSend                            ; [self->weaponsKeys objectAtIndex:arg1]
  100013204  mov     x29, x29
  100013208  bl      _objc_retainAutoreleasedReturnValue
  10001320c  mov     x24, x0
  100013210  adrp    x8, #0x10041f000
  100013214  ldrsw   x8, [x8, #0x528]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsData (+0x148)
  100013218  ldr     x0, [x28, x8]                            ; x0 = self->weaponsData
  10001321c  adrp    x8, #0x100417000
  100013220  nop
  100013224  ldr     x25, [x8, #0x40]
  100013228  mov     x1, x25
  10001322c  mov     x2, x24
  100013230  bl      _objc_msgSend                            ; [self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]]
  100013234  mov     x29, x29
  100013238  bl      _objc_retainAutoreleasedReturnValue
  10001323c  mov     x21, x0
  100013240  adrp    x2, #0x1003b9000
  100013244  add     x2, x2, #0xe10                           ; @"melee"
  100013248  mov     x1, x25
  10001324c  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"melee"]
  100013250  mov     x29, x29
  100013254  bl      _objc_retainAutoreleasedReturnValue
  100013258  mov     x20, x0
  10001325c  adrp    x8, #0x100417000
  100013260  nop
  100013264  ldr     x1, [x8, #0xd8]
  100013268  bl      _objc_msgSend                            ; [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"melee"] boolValue]
  10001326c  mov     x19, x0
  100013270  mov     x0, x20
  100013274  bl      _objc_release
  100013278  adrp    x8, #0x10041d000
  10001327c  ldr     x20, [x8, #0xf78]                        ; class NSString
  100013280  cbz     w19, loc_100013384                       ; if ([[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"melee"] boolValue] == 0)
  100013284  adrp    x2, #0x1003ba000
  100013288  add     x2, x2, #0x230                           ; @"kills"
  10001328c  mov     x0, x21
  100013290  mov     x1, x25
  100013294  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"kills"]
  100013298  mov     x29, x29
  10001329c  bl      _objc_retainAutoreleasedReturnValue
  1000132a0  mov     x23, x0
  1000132a4  adrp    x8, #0x100417000
  1000132a8  nop
  1000132ac  ldr     x1, [x8, #0xb0]
  1000132b0  bl      _objc_msgSend                            ; [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"kills"] integerValue]
  1000132b4  adrp    x8, #0x100416000
  1000132b8  nop
  1000132bc  ldr     x1, [x8, #0xee8]
  1000132c0  str     x0, [sp]
  1000132c4  adrp    x2, #0x1003ba000
  1000132c8  add     x2, x2, #0x1f0                           ; @"%d"
  1000132cc  mov     x0, x20
  1000132d0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] object…]
  1000132d4  mov     x29, x29
  1000132d8  bl      _objc_retainAutoreleasedReturnValue
  1000132dc  mov     x22, x0
  1000132e0  mov     x0, x23
  1000132e4  bl      _objc_release
  1000132e8  adrp    x8, #0x1003ba000
  1000132ec  add     x8, x8, #0x270                           ; @"Melee kills"
  1000132f0  stur    x8, [x29, #-0x70]
  1000132f4  adrp    x23, #0x10041d000
  1000132f8  ldr     x0, [x23, #0xf20]                        ; class NSArray
  1000132fc  adrp    x8, #0x100417000
  100013300  nop
  100013304  ldr     x19, [x8, #0x3c8]
  100013308  sub     x2, x29, #0x70
  10001330c  mov     w3, #1
  100013310  mov     x1, x19
  100013314  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x70] count:1]
  100013318  mov     x29, x29
  10001331c  bl      _objc_retainAutoreleasedReturnValue
  100013320  mov     x20, x0
  100013324  str     x22, [sp, #0x78]
  100013328  ldr     x0, [x23, #0xf20]                        ; class NSArray
  10001332c  add     x2, sp, #0x78
  100013330  mov     w3, #1
  100013334  mov     x1, x19
  100013338  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x78] count:1]
  10001333c  mov     x29, x29
  100013340  bl      _objc_retainAutoreleasedReturnValue
  100013344  mov     x23, x0
  100013348  adrp    x8, #0x100417000
  10001334c  nop
  100013350  ldr     x1, [x8, #0x3d0]
  100013354  mov     x0, x26
  100013358  mov     x2, x24
  10001335c  mov     x3, x20
  100013360  mov     x4, x23
  100013364  bl      _objc_msgSend                            ; [[[ADStatsMultiCell alloc] initWithStyle:0 reuseIdentifier:@"WeaponCellID"] populateWithSubtitleString:[self->weaponsKeys objectAtIndex:arg1] Keys:[NSArray arrayWithObjects:&x29[-0x70] count:1] Values:[NSArray arrayWithObjects:&sp[0x78] count:1]]
  100013368  mov     x0, x23
  10001336c  bl      _objc_release
  100013370  mov     x0, x20
  100013374  bl      _objc_release
  100013378  mov     x0, x22
  10001337c  bl      _objc_release
  100013380  b       loc_100013750
loc_100013384:
  100013384  stp     x26, x24, [sp, #0x10]
  100013388  mov     x23, #0
  10001338c  mov     x22, #0
  100013390  mov     x27, #0
  100013394  mov     x24, #0
  100013398  str     xzr, [sp, #0x20]
  10001339c  adrp    x2, #0x1003ba000
  1000133a0  add     x2, x2, #0x290                           ; @"shotsFired"
  1000133a4  mov     x0, x21
  1000133a8  mov     x1, x25
  1000133ac  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"shotsFired"]
  1000133b0  mov     x29, x29
  1000133b4  bl      _objc_retainAutoreleasedReturnValue
  1000133b8  mov     x22, x0
  1000133bc  adrp    x8, #0x100417000
  1000133c0  nop
  1000133c4  ldr     x19, [x8, #0xb0]
  1000133c8  mov     x1, x19
  1000133cc  bl      _objc_msgSend                            ; [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"shotsFired"] integerValue]
  1000133d0  adrp    x8, #0x100416000
  1000133d4  nop
  1000133d8  ldr     x26, [x8, #0xee8]
  1000133dc  str     x0, [sp]
  1000133e0  adrp    x2, #0x1003ba000
  1000133e4  add     x2, x2, #0x1f0                           ; @"%d"
  1000133e8  mov     x0, x20
  1000133ec  mov     x1, x26
  1000133f0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] object…]
  1000133f4  mov     x29, x29
  1000133f8  bl      _objc_retainAutoreleasedReturnValue
  1000133fc  str     x0, [sp, #0x20]
  100013400  mov     x0, x22
  100013404  bl      _objc_release
  100013408  mov     x23, #0
  10001340c  mov     x22, #0
  100013410  mov     x27, #0
  100013414  mov     x24, #0
  100013418  adrp    x2, #0x1003ba000
  10001341c  add     x2, x2, #0x250                           ; @"timeSpentWithWeapon"
  100013420  mov     x0, x21
  100013424  mov     x1, x25
  100013428  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"timeSpentWithWeapon"]
  10001342c  mov     x29, x29
  100013430  bl      _objc_retainAutoreleasedReturnValue
  100013434  mov     x20, x0
  100013438  adrp    x8, #0x100417000
  10001343c  nop
  100013440  ldr     x1, [x8, #0x3d8]
  100013444  bl      _objc_msgSend                            ; [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"timeSpentWithWeapon"] doubleValue]
  100013448  mov     v8.16b, v0.16b
  10001344c  mov     x0, x20
  100013450  bl      _objc_release
  100013454  adrp    x8, #0x10041d000
  100013458  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  10001345c  adrp    x8, #0x100416000
  100013460  nop
  100013464  ldr     x1, [x8, #0xe10]
  100013468  mov     x23, #0
  10001346c  mov     x22, #0
  100013470  mov     x27, #0
  100013474  mov     x24, #0
  100013478  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  10001347c  mov     x29, x29
  100013480  bl      _objc_retainAutoreleasedReturnValue
  100013484  mov     x20, x0
  100013488  adrp    x8, #0x100417000
  10001348c  nop
  100013490  ldr     x1, [x8, #0x3e0]
  100013494  mov     v0.16b, v8.16b
  100013498  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] gameTimeToString:[[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"timeSpentWithWeapon"] doubleValue]]
  10001349c  mov     x29, x29
  1000134a0  bl      _objc_retainAutoreleasedReturnValue
  1000134a4  mov     x23, x0
  1000134a8  mov     x0, x20
  1000134ac  bl      _objc_release
  1000134b0  mov     x22, #0
  1000134b4  mov     x27, #0
  1000134b8  mov     x24, #0
  1000134bc  adrp    x8, #0x10041f000
  1000134c0  ldrsw   x8, [x8, #0x52c]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsCriticalData (+0x150)
  1000134c4  ldr     x28, [x28, x8]                           ; x28 = self->weaponsCriticalData
  1000134c8  adrp    x2, #0x1003ba000
  1000134cc  add     x2, x2, #0x2b0                           ; @"displayName"
  1000134d0  mov     x0, x21
  1000134d4  mov     x1, x25
  1000134d8  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"displayName"]
  1000134dc  mov     x29, x29
  1000134e0  bl      _objc_retainAutoreleasedReturnValue
  1000134e4  mov     x20, x0
  1000134e8  mov     x0, x28
  1000134ec  mov     x1, x25
  1000134f0  mov     x2, x20
  1000134f4  bl      _objc_msgSend                            ; [self->weaponsCriticalData objectForKey:[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"displayName"]]
  1000134f8  mov     x29, x29
  1000134fc  bl      _objc_retainAutoreleasedReturnValue
  100013500  mov     x22, x0
  100013504  mov     x1, x19
  100013508  bl      _objc_msgSend                            ; [[self->weaponsCriticalData objectForKey:[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"displayName"]] integerValue]
  10001350c  mov     x28, x0
  100013510  mov     x0, x22
  100013514  bl      _objc_release
  100013518  mov     x0, x20
  10001351c  bl      _objc_release
  100013520  mov     x22, #0
  100013524  mov     x27, #0
  100013528  mov     x24, #0
  10001352c  adrp    x8, #0x10041d000
  100013530  ldr     x0, [x8, #0xf78]                         ; class NSString
  100013534  str     x28, [sp]
  100013538  adrp    x2, #0x1003ba000
  10001353c  add     x2, x2, #0x1f0                           ; @"%d"
  100013540  mov     x1, x26
  100013544  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[self->weaponsCriticalData objectForKey:[[self->weaponsData objectForKey:[self-…]
  100013548  mov     x29, x29
  10001354c  bl      _objc_retainAutoreleasedReturnValue
  100013550  mov     x24, x0
  100013554  mov     x22, #0
  100013558  mov     x27, #0
  10001355c  adrp    x8, #0x10041d000
  100013560  ldr     x28, [x8, #0xf78]                        ; class NSString
  100013564  adrp    x2, #0x1003ba000
  100013568  add     x2, x2, #0x230                           ; @"kills"
  10001356c  mov     x0, x21
  100013570  mov     x1, x25
  100013574  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"kills"]
  100013578  mov     x29, x29
  10001357c  bl      _objc_retainAutoreleasedReturnValue
  100013580  mov     x20, x0
  100013584  mov     x1, x19
  100013588  bl      _objc_msgSend                            ; [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"kills"] integerValue]
  10001358c  str     x0, [sp]
  100013590  adrp    x2, #0x1003ba000
  100013594  add     x2, x2, #0x1f0                           ; @"%d"
  100013598  mov     x0, x28
  10001359c  mov     x1, x26
  1000135a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] object…]
  1000135a4  mov     x29, x29
  1000135a8  bl      _objc_retainAutoreleasedReturnValue
  1000135ac  mov     x27, x0
  1000135b0  mov     x0, x20
  1000135b4  bl      _objc_release
  1000135b8  mov     x22, #0
  1000135bc  adrp    x2, #0x1003ba000
  1000135c0  add     x2, x2, #0x2d0                           ; @"shotsHit"
  1000135c4  mov     x0, x21
  1000135c8  mov     x1, x25
  1000135cc  bl      _objc_msgSend                            ; [[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"shotsHit"]
  1000135d0  mov     x29, x29
  1000135d4  bl      _objc_retainAutoreleasedReturnValue
  1000135d8  mov     x20, x0
  1000135dc  adrp    x8, #0x100417000
  1000135e0  nop
  1000135e4  ldr     x19, [x8, #0x48]
  1000135e8  mov     x1, x19
  1000135ec  bl      _objc_msgSend                            ; [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"shotsHit"] floatValue]
  1000135f0  mov     v8.16b, v0.16b
  1000135f4  mov     x0, x20
  1000135f8  bl      _objc_release
  1000135fc  mov     x22, #0
  100013600  ldr     x0, [sp, #0x20]
  100013604  mov     x1, x19
  100013608  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%d", [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] object…] floatValue]
  10001360c  mov     x22, #0
  100013610  adrp    x8, #0x10041d000
  100013614  ldr     x0, [x8, #0xf78]                         ; class NSString
  100013618  fdiv    s0, s8, s0                               ; t1 = ([[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] objectForKey:@"shotsHit"] floatValue] / [[NSString stringWithFormat:@"%d", [[[self->weaponsData objectForKey:[self->weaponsKeys objectAtIndex:arg1]] object…] floatValue])
  10001361c  adrp    x8, #0x100181000
  100013620  ldr     s1, [x8, #0xa10]                         ; s1 = 100.0
  100013624  fmul    s0, s0, s1
  100013628  fcvt    d0, s0
  10001362c  str     d0, [sp]
  100013630  adrp    x2, #0x1003ba000
  100013634  add     x2, x2, #0x2f0                           ; @"%.0f%%"
  100013638  mov     x1, x26
  10001363c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%.0f%%", (t1 * 100)]
  100013640  mov     x29, x29
  100013644  bl      _objc_retainAutoreleasedReturnValue
  100013648  mov     x22, x0
  10001364c  adrp    x8, #0x1003ba000
  100013650  add     x8, x8, #0x310                           ; @"Shots fired"
  100013654  str     x8, [sp, #0x50]
  100013658  adrp    x8, #0x1003ba000
  10001365c  add     x8, x8, #0x330                           ; @"Critical hits"
  100013660  str     x8, [sp, #0x58]
  100013664  adrp    x8, #0x1003b9000
  100013668  add     x8, x8, #0x950                           ; @"Kills"
  10001366c  str     x8, [sp, #0x60]
  100013670  adrp    x8, #0x1003ba000
  100013674  add     x8, x8, #0x350                           ; @"Time spent with weapon"
  100013678  str     x8, [sp, #0x68]
  10001367c  adrp    x8, #0x1003b9000
  100013680  add     x8, x8, #0x990                           ; @"Accuracy"
  100013684  str     x8, [sp, #0x70]
  100013688  adrp    x25, #0x10041d000
  10001368c  ldr     x0, [x25, #0xf20]                        ; class NSArray
  100013690  adrp    x8, #0x100417000
  100013694  nop
  100013698  ldr     x19, [x8, #0x3c8]
  10001369c  add     x2, sp, #0x50
  1000136a0  mov     w3, #5
  1000136a4  mov     x1, x19
  1000136a8  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x50] count:5]
  1000136ac  mov     x29, x29
  1000136b0  bl      _objc_retainAutoreleasedReturnValue
  1000136b4  mov     x20, x0
  1000136b8  ldr     x8, [sp, #0x20]
  1000136bc  stp     x8, x24, [sp, #0x28]
  1000136c0  stp     x27, x23, [sp, #0x38]
  1000136c4  str     x22, [sp, #0x48]
  1000136c8  ldr     x0, [x25, #0xf20]                        ; class NSArray
  1000136cc  add     x2, sp, #0x28
  1000136d0  mov     w3, #5
  1000136d4  mov     x1, x19
  1000136d8  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x28] count:5]
  1000136dc  mov     x29, x29
  1000136e0  bl      _objc_retainAutoreleasedReturnValue
  1000136e4  mov     x25, x0
  1000136e8  adrp    x8, #0x100417000
  1000136ec  nop
  1000136f0  ldr     x1, [x8, #0x3d0]
  1000136f4  ldp     x26, x2, [sp, #0x10]
  1000136f8  mov     x0, x26
  1000136fc  mov     x3, x20
  100013700  mov     x4, x25
  100013704  bl      _objc_msgSend                            ; [[[ADStatsMultiCell alloc] initWithStyle:0 reuseIdentifier:@"WeaponCellID"] populateWithSubtitleString:[self->weaponsKeys objectAtIndex:arg1] Keys:[NSArray arrayWithObjects:&sp[0x50] count:5] Values:[NSArray arrayWithObjects:&sp[0x28] count:5]]
  100013708  mov     x0, x25
  10001370c  bl      _objc_release
  100013710  mov     x0, x20
  100013714  bl      _objc_release
  100013718  mov     x0, x22
  10001371c  bl      _objc_release
  100013720  mov     x0, x23
  100013724  bl      _objc_release
  100013728  mov     x0, x27
  10001372c  bl      _objc_release
  100013730  mov     x0, x24
  100013734  bl      _objc_release
  100013738  ldr     x0, [sp, #0x20]
  10001373c  bl      _objc_release
  100013740  ldr     x24, [sp, #0x18]
  100013744  adrp    x27, #0x1003b0000
  100013748  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10001374c  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
loc_100013750:
  100013750  mov     x0, x21
  100013754  bl      _objc_release
  100013758  mov     x0, x24
  10001375c  bl      _objc_release
  100013760  ldur    x8, [x29, #-0x68]
  100013764  sub     x8, x27, x8
  100013768  cbnz    x8, loc_100013794                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001376c  mov     x0, x26
  100013770  sub     sp, x29, #0x60
  100013774  ldp     x29, x30, [sp, #0x60]
  100013778  ldp     x20, x19, [sp, #0x50]
  10001377c  ldp     x22, x21, [sp, #0x40]
  100013780  ldp     x24, x23, [sp, #0x30]
  100013784  ldp     x26, x25, [sp, #0x20]
  100013788  ldp     x28, x27, [sp, #0x10]
  10001378c  ldp     d9, d8, [sp], #0x70
  100013790  b       _objc_autoreleaseReturnValue
loc_100013794:
  100013794  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100013798  mov     x19, x0
  10001379c  b       loc_1000138a0
  1000137a0  stp     x26, x24, [sp, #0x10]
  1000137a4  mov     x19, x0
  1000137a8  b       loc_1000138c8
  1000137ac  str     x26, [sp, #0x10]
  1000137b0  mov     x19, x0
  1000137b4  b       loc_1000138d8
  1000137b8  stp     x26, x24, [sp, #0x10]
  1000137bc  mov     x19, x0
  1000137c0  b       loc_1000138d0
  1000137c4  stp     x26, x24, [sp, #0x10]
  1000137c8  mov     x19, x0
  1000137cc  mov     x0, x20
  1000137d0  bl      _objc_release
  1000137d4  b       loc_1000138c8
  1000137d8  stp     x26, x24, [sp, #0x10]
  1000137dc  mov     x19, x0
  1000137e0  mov     x0, x23
  1000137e4  bl      _objc_release
  1000137e8  b       loc_1000138c8
  1000137ec  mov     x19, x0
  1000137f0  b       loc_100013838
  1000137f4  mov     x19, x0
  1000137f8  mov     x0, x20
  1000137fc  bl      _objc_release
  100013800  mov     x0, x23
  100013804  b       loc_1000138b4
  100013808  stp     x26, x24, [sp, #0x10]
  10001380c  mov     x19, x0
  100013810  b       loc_100013838
  100013814  stp     x26, x24, [sp, #0x10]
  100013818  mov     x19, x0
  10001381c  b       loc_100013830
  100013820  stp     x26, x24, [sp, #0x10]
  100013824  mov     x19, x0
  100013828  mov     x0, x23
  10001382c  bl      _objc_release
loc_100013830:
  100013830  mov     x0, x20
  100013834  bl      _objc_release
loc_100013838:
  100013838  mov     x0, x22
  10001383c  bl      _objc_release
  100013840  b       loc_1000138c8
  100013844  b       loc_100013848
loc_100013848:
  100013848  mov     x19, x0
  10001384c  mov     x0, x20
  100013850  b       loc_1000138bc
  100013854  mov     x19, x0
  100013858  b       loc_100013868
  10001385c  mov     x19, x0
  100013860  mov     x0, x22
  100013864  bl      _objc_release
loc_100013868:
  100013868  mov     x0, x20
  10001386c  bl      _objc_release
  100013870  mov     x0, x23
  100013874  b       loc_1000138bc
  100013878  mov     x19, x0
  10001387c  mov     x0, x20
  100013880  b       loc_1000138a4
  100013884  mov     x19, x0
  100013888  b       loc_100013898
  10001388c  mov     x19, x0
  100013890  mov     x0, x25
  100013894  bl      _objc_release
loc_100013898:
  100013898  mov     x0, x20
  10001389c  bl      _objc_release
loc_1000138a0:
  1000138a0  mov     x0, x22
loc_1000138a4:
  1000138a4  bl      _objc_release
  1000138a8  mov     x0, x23
  1000138ac  bl      _objc_release
  1000138b0  mov     x0, x27
loc_1000138b4:
  1000138b4  bl      _objc_release
  1000138b8  mov     x0, x24
loc_1000138bc:
  1000138bc  bl      _objc_release
  1000138c0  ldr     x0, [sp, #0x20]
  1000138c4  bl      _objc_release
loc_1000138c8:
  1000138c8  mov     x0, x21
  1000138cc  bl      _objc_release
loc_1000138d0:
  1000138d0  ldr     x0, [sp, #0x18]
  1000138d4  bl      _objc_release
loc_1000138d8:
  1000138d8  ldr     x0, [sp, #0x10]
  1000138dc  bl      _objc_release
  1000138e0  mov     x0, x19
  1000138e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController tableView:heightForHeaderInSection:]
; address 0x1000138e8  size 192  kind objc
; ======================================================================
  1000138e8  stp     d9, d8, [sp, #-0x40]!
  1000138ec  stp     x22, x21, [sp, #0x10]
  1000138f0  stp     x20, x19, [sp, #0x20]
  1000138f4  stp     x29, x30, [sp, #0x30]
  1000138f8  add     x29, sp, #0x30
  1000138fc  mov     x20, x3
  100013900  mov     x0, x2
  100013904  bl      _objc_retain
  100013908  mov     x19, x0
  10001390c  adrp    x8, #0x100417000
  100013910  nop
  100013914  ldr     x1, [x8, #0x3e8]
  100013918  bl      _objc_msgSend                            ; [arg1 dataSource]
  10001391c  mov     x29, x29
  100013920  bl      _objc_retainAutoreleasedReturnValue
  100013924  mov     x21, x0
  100013928  adrp    x8, #0x100417000
  10001392c  nop
  100013930  ldr     x1, [x8, #0x3f0]
  100013934  mov     x2, x19
  100013938  mov     x3, x20
  10001393c  bl      _objc_msgSend                            ; [[arg1 dataSource] tableView:arg1 numberOfRowsInSection:arg2]
  100013940  mov     x20, x0
  100013944  mov     x0, x21
  100013948  bl      _objc_release
  10001394c  adrp    x8, #0x10042d000
  100013950  add     x8, x8, #0x960                           ; &g_10042d960
  100013954  ldr     d0, [x8, #8]                             ; d0 = 0.0
  100013958  cmp     x20, #0
  10001395c  movi    v1.16b, #0
  100013960  fcsel   d8, d1, d0, eq
  100013964  mov     x0, x19
  100013968  bl      _objc_release
  10001396c  mov     v0.16b, v8.16b
  100013970  ldp     x29, x30, [sp, #0x30]
  100013974  ldp     x20, x19, [sp, #0x20]
  100013978  ldp     x22, x21, [sp, #0x10]
  10001397c  ldp     d9, d8, [sp], #0x40
  100013980  ret
  100013984  mov     x20, x0
  100013988  b       loc_100013998
  10001398c  mov     x20, x0
  100013990  mov     x0, x21
  100013994  bl      _objc_release
loc_100013998:
  100013998  mov     x0, x19
  10001399c  bl      _objc_release
  1000139a0  mov     x0, x20
  1000139a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController tableView:viewForHeaderInSection:]
; address 0x1000139a8  size 648  kind objc
; ======================================================================
  1000139a8  stp     x24, x23, [sp, #-0x40]!
  1000139ac  stp     x22, x21, [sp, #0x10]
  1000139b0  stp     x20, x19, [sp, #0x20]
  1000139b4  stp     x29, x30, [sp, #0x30]
  1000139b8  add     x29, sp, #0x30
  1000139bc  mov     x21, x3
  1000139c0  mov     x22, x0
  1000139c4  mov     x0, x2
  1000139c8  bl      _objc_retain
  1000139cc  mov     x19, x0
  1000139d0  cmp     x21, #2
  1000139d4  b.ne    loc_1000139f4                            ; if (arg2 != 2)
  1000139d8  adrp    x8, #0x100417000
  1000139dc  nop
  1000139e0  ldr     x1, [x8, #0x3f8]
  1000139e4  mov     w2, #2
  1000139e8  mov     x0, x19
  1000139ec  bl      _objc_msgSend                            ; [arg1 numberOfRowsInSection:2]
  1000139f0  cbz     x0, loc_100013bb8                        ; if ([arg1 numberOfRowsInSection:2] == 0)
loc_1000139f4:
  1000139f4  adrp    x8, #0x100417000
  1000139f8  nop
  1000139fc  ldr     x1, [x8, #0x400]
  100013a00  adrp    x2, #0x1003ba000
  100013a04  add     x2, x2, #0x30                            ; @"headerID"
  100013a08  mov     x0, x19
  100013a0c  bl      _objc_msgSend                            ; [arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"]
  100013a10  mov     x29, x29
  100013a14  bl      _objc_retainAutoreleasedReturnValue
  100013a18  mov     x20, x0
  100013a1c  adrp    x8, #0x100417000
  100013a20  nop
  100013a24  ldr     x1, [x8, #0x270]
  100013a28  mov     x0, x22
  100013a2c  bl      _objc_msgSend                            ; [self sectionsDict]
  100013a30  mov     x29, x29
  100013a34  bl      _objc_retainAutoreleasedReturnValue
  100013a38  mov     x22, x0
  100013a3c  adrp    x8, #0x10041d000
  100013a40  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100013a44  adrp    x8, #0x100417000
  100013a48  nop
  100013a4c  ldr     x1, [x8, #0xe8]
  100013a50  mov     x2, x21
  100013a54  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg2]
  100013a58  mov     x29, x29
  100013a5c  bl      _objc_retainAutoreleasedReturnValue
  100013a60  mov     x23, x0
  100013a64  adrp    x8, #0x100417000
  100013a68  nop
  100013a6c  ldr     x1, [x8, #0x40]
  100013a70  mov     x0, x22
  100013a74  mov     x2, x23
  100013a78  bl      _objc_msgSend                            ; [[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]]
  100013a7c  mov     x29, x29
  100013a80  bl      _objc_retainAutoreleasedReturnValue
  100013a84  mov     x21, x0
  100013a88  mov     x0, x23
  100013a8c  bl      _objc_release
  100013a90  mov     x0, x22
  100013a94  bl      _objc_release
  100013a98  adrp    x8, #0x100416000
  100013a9c  nop
  100013aa0  ldr     x22, [x8, #0xf58]
  100013aa4  adrp    x2, #0x1003ba000
  100013aa8  add     x2, x2, #0x10                            ; @"MiscCellID"
  100013aac  mov     x0, x21
  100013ab0  mov     x1, x22
  100013ab4  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"MiscCellID"]
  100013ab8  cbz     w0, loc_100013afc                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"MiscCellID"] == 0)
  100013abc  adrp    x8, #0x100417000
  100013ac0  nop
  100013ac4  ldr     x1, [x8, #0x408]
  100013ac8  mov     x0, x20
  100013acc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel]
  100013ad0  mov     x29, x29
  100013ad4  bl      _objc_retainAutoreleasedReturnValue
  100013ad8  mov     x23, x0
  100013adc  adrp    x8, #0x100416000
  100013ae0  nop
  100013ae4  ldr     x1, [x8, #0xb68]
  100013ae8  adrp    x2, #0x1003ba000
  100013aec  add     x2, x2, #0x370                           ; @"Your stats!"
  100013af0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel] setText:@"Your stats!"]
  100013af4  b       loc_100013ba4
  100013af8  b       loc_100013c00
loc_100013afc:
  100013afc  adrp    x2, #0x1003b9000
  100013b00  add     x2, x2, #0xfd0                           ; @"EnemyCellID"
  100013b04  mov     x0, x21
  100013b08  mov     x1, x22
  100013b0c  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"EnemyCellID"]
  100013b10  cbz     w0, loc_100013b54                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"EnemyCellID"] == 0)
  100013b14  adrp    x8, #0x100417000
  100013b18  nop
  100013b1c  ldr     x1, [x8, #0x408]
  100013b20  mov     x0, x20
  100013b24  bl      _objc_msgSend                            ; [[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel]
  100013b28  mov     x29, x29
  100013b2c  bl      _objc_retainAutoreleasedReturnValue
  100013b30  mov     x23, x0
  100013b34  adrp    x8, #0x100416000
  100013b38  nop
  100013b3c  ldr     x1, [x8, #0xb68]
  100013b40  adrp    x2, #0x1003ba000
  100013b44  add     x2, x2, #0x390                           ; @"Enemies!"
  100013b48  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel] setText:@"Enemies!"]
  100013b4c  b       loc_100013ba4
  100013b50  b       loc_100013c00
loc_100013b54:
  100013b54  adrp    x2, #0x1003b9000
  100013b58  add     x2, x2, #0xff0                           ; @"WeaponCellID"
  100013b5c  mov     x0, x21
  100013b60  mov     x1, x22
  100013b64  bl      _objc_msgSend                            ; [[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"WeaponCellID"]
  100013b68  cbz     w0, loc_100013bac                        ; if ([[[self sectionsDict] objectForKey:[NSNumber numberWithInteger:arg2]] isEqualToString:@"WeaponCellID"] == 0)
  100013b6c  adrp    x8, #0x100417000
  100013b70  nop
  100013b74  ldr     x1, [x8, #0x408]
  100013b78  mov     x0, x20
  100013b7c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel]
  100013b80  mov     x29, x29
  100013b84  bl      _objc_retainAutoreleasedReturnValue
  100013b88  mov     x23, x0
  100013b8c  adrp    x8, #0x100416000
  100013b90  nop
  100013b94  ldr     x1, [x8, #0xb68]
  100013b98  adrp    x2, #0x1003ba000
  100013b9c  add     x2, x2, #0x3b0                           ; @"Weapons!"
  100013ba0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableHeaderFooterViewWithIdentifier:@"headerID"] headerTitleLabel] setText:@"Weapons!"]
loc_100013ba4:
  100013ba4  mov     x0, x23
  100013ba8  bl      _objc_release
loc_100013bac:
  100013bac  mov     x0, x21
  100013bb0  bl      _objc_release
  100013bb4  b       loc_100013bbc
loc_100013bb8:
  100013bb8  mov     x20, #0
loc_100013bbc:
  100013bbc  mov     x0, x19
  100013bc0  bl      _objc_release
  100013bc4  mov     x0, x20
  100013bc8  ldp     x29, x30, [sp, #0x30]
  100013bcc  ldp     x20, x19, [sp, #0x20]
  100013bd0  ldp     x22, x21, [sp, #0x10]
  100013bd4  ldp     x24, x23, [sp], #0x40
  100013bd8  b       _objc_autoreleaseReturnValue
  100013bdc  b       loc_100013bf4
  100013be0  mov     x22, x0
  100013be4  b       loc_100013c1c
  100013be8  mov     x22, x0
  100013bec  b       loc_100013c14
  100013bf0  mov     x21, x22
loc_100013bf4:
  100013bf4  mov     x22, x0
  100013bf8  b       loc_100013c0c
  100013bfc  mov     x21, x22
loc_100013c00:
  100013c00  mov     x22, x0
  100013c04  mov     x0, x23
  100013c08  bl      _objc_release
loc_100013c0c:
  100013c0c  mov     x0, x21
  100013c10  bl      _objc_release
loc_100013c14:
  100013c14  mov     x0, x20
  100013c18  bl      _objc_release
loc_100013c1c:
  100013c1c  mov     x0, x19
  100013c20  bl      _objc_release
  100013c24  mov     x0, x22
  100013c28  bl      __Unwind_Resume                          ; Unwind_Resume()
  100013c2c  b       loc_100013c00

; ======================================================================
; -[ADGameOverEndlessStatsViewController backButtonPressed]
; address 0x100013c30  size 156  kind objc
; ======================================================================
  100013c30  stp     x20, x19, [sp, #-0x20]!
  100013c34  stp     x29, x30, [sp, #0x10]
  100013c38  add     x29, sp, #0x10
  100013c3c  sub     sp, sp, #0x10
  100013c40  mov     x19, x0
  100013c44  str     x19, [sp]
  100013c48  adrp    x8, #0x10041e000
  100013c4c  ldr     x8, [x8, #0xbe8]
  100013c50  str     x8, [sp, #8]
  100013c54  adrp    x8, #0x100417000
  100013c58  nop
  100013c5c  ldr     x1, [x8, #0x410]
  100013c60  mov     x0, sp
  100013c64  bl      _objc_msgSendSuper2                      ; [super backButtonPressed]
  100013c68  adrp    x8, #0x100417000
  100013c6c  nop
  100013c70  ldr     x1, [x8, #0x418]
  100013c74  mov     x0, x19
  100013c78  bl      _objc_msgSend                            ; [self presentingViewController]
  100013c7c  mov     x29, x29
  100013c80  bl      _objc_retainAutoreleasedReturnValue
  100013c84  mov     x19, x0
  100013c88  adrp    x8, #0x100417000
  100013c8c  nop
  100013c90  ldr     x1, [x8, #0x420]
  100013c94  mov     w2, #0
  100013c98  mov     x3, #0
  100013c9c  bl      _objc_msgSend                            ; [[self presentingViewController] dismissViewControllerAnimated:0 completion:0]
  100013ca0  mov     x0, x19
  100013ca4  bl      _objc_release
  100013ca8  sub     sp, x29, #0x10
  100013cac  ldp     x29, x30, [sp, #0x10]
  100013cb0  ldp     x20, x19, [sp], #0x20
  100013cb4  ret
  100013cb8  mov     x20, x0
  100013cbc  mov     x0, x19
  100013cc0  bl      _objc_release
  100013cc4  mov     x0, x20
  100013cc8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessStatsViewController scrollViewDidScroll:]
; address 0x100013ccc  size 4  kind objc
; ======================================================================
  100013ccc  ret

; ======================================================================
; -[ADGameOverEndlessStatsViewController tableView]
; address 0x100013cd0  size 32  kind objc
; ======================================================================
  100013cd0  stp     x29, x30, [sp, #-0x10]!
  100013cd4  mov     x29, sp
  100013cd8  adrp    x8, #0x10041f000
  100013cdc  ldrsw   x8, [x8, #0x540]                         ; ivar offset ADGameOverEndlessStatsViewController._tableView (+0x180)
  100013ce0  add     x0, x0, x8
  100013ce4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100013ce8  ldp     x29, x30, [sp], #0x10
  100013cec  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverEndlessStatsViewController setTableView:]
; address 0x100013cf0  size 20  kind objc
; ======================================================================
  100013cf0  adrp    x8, #0x10041f000
  100013cf4  ldrsw   x8, [x8, #0x540]                         ; ivar offset ADGameOverEndlessStatsViewController._tableView (+0x180)
  100013cf8  add     x0, x0, x8
  100013cfc  mov     x1, x2
  100013d00  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverEndlessStatsViewController delegate]
; address 0x100013d04  size 32  kind objc
; ======================================================================
  100013d04  stp     x29, x30, [sp, #-0x10]!
  100013d08  mov     x29, sp
  100013d0c  adrp    x8, #0x10041f000
  100013d10  ldrsw   x8, [x8, #0x544]                         ; ivar offset ADGameOverEndlessStatsViewController._delegate (+0x188)
  100013d14  add     x0, x0, x8
  100013d18  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100013d1c  ldp     x29, x30, [sp], #0x10
  100013d20  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverEndlessStatsViewController setDelegate:]
; address 0x100013d24  size 20  kind objc
; ======================================================================
  100013d24  adrp    x8, #0x10041f000
  100013d28  ldrsw   x8, [x8, #0x544]                         ; ivar offset ADGameOverEndlessStatsViewController._delegate (+0x188)
  100013d2c  add     x0, x0, x8
  100013d30  mov     x1, x2
  100013d34  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverEndlessStatsViewController numberOfSections]
; address 0x100013d38  size 16  kind objc
; ======================================================================
  100013d38  adrp    x8, #0x10041f000
  100013d3c  ldrsw   x8, [x8, #0x548]                         ; ivar offset ADGameOverEndlessStatsViewController._numberOfSections (+0x190)
  100013d40  ldr     x0, [x0, x8]                             ; x0 = self->_numberOfSections
  100013d44  ret

; ======================================================================
; -[ADGameOverEndlessStatsViewController setNumberOfSections:]
; address 0x100013d48  size 16  kind objc
; ======================================================================
  100013d48  adrp    x8, #0x10041f000
  100013d4c  ldrsw   x8, [x8, #0x548]                         ; ivar offset ADGameOverEndlessStatsViewController._numberOfSections (+0x190)
  100013d50  str     x2, [x0, x8]                             ; self->_numberOfSections = arg1
  100013d54  ret

; ======================================================================
; -[ADGameOverEndlessStatsViewController weaponCells]
; address 0x100013d58  size 16  kind objc
; ======================================================================
  100013d58  adrp    x8, #0x10041f000
  100013d5c  ldrsw   x2, [x8, #0x54c]                         ; ivar offset ADGameOverEndlessStatsViewController._weaponCells (+0x198)
  100013d60  mov     w3, #1
  100013d64  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverEndlessStatsViewController setWeaponCells:]
; address 0x100013d68  size 12  kind objc
; ======================================================================
  100013d68  adrp    x8, #0x10041f000
  100013d6c  ldrsw   x3, [x8, #0x54c]                         ; ivar offset ADGameOverEndlessStatsViewController._weaponCells (+0x198)
  100013d70  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverEndlessStatsViewController sectionsDict]
; address 0x100013d74  size 16  kind objc
; ======================================================================
  100013d74  adrp    x8, #0x10041f000
  100013d78  ldrsw   x2, [x8, #0x550]                         ; ivar offset ADGameOverEndlessStatsViewController._sectionsDict (+0x1a0)
  100013d7c  mov     w3, #1
  100013d80  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverEndlessStatsViewController setSectionsDict:]
; address 0x100013d84  size 12  kind objc
; ======================================================================
  100013d84  adrp    x8, #0x10041f000
  100013d88  ldrsw   x3, [x8, #0x550]                         ; ivar offset ADGameOverEndlessStatsViewController._sectionsDict (+0x1a0)
  100013d8c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverEndlessStatsViewController .cxx_destruct]
; address 0x100013d90  size 256  kind objc
; ======================================================================
  100013d90  stp     x20, x19, [sp, #-0x20]!
  100013d94  stp     x29, x30, [sp, #0x10]
  100013d98  add     x29, sp, #0x10
  100013d9c  mov     x19, x0
  100013da0  adrp    x8, #0x10041f000
  100013da4  ldrsw   x8, [x8, #0x550]                         ; ivar offset ADGameOverEndlessStatsViewController._sectionsDict (+0x1a0)
  100013da8  add     x0, x19, x8
  100013dac  mov     x1, #0
  100013db0  bl      _objc_storeStrong
  100013db4  adrp    x8, #0x10041f000
  100013db8  ldrsw   x8, [x8, #0x54c]                         ; ivar offset ADGameOverEndlessStatsViewController._weaponCells (+0x198)
  100013dbc  add     x0, x19, x8
  100013dc0  mov     x1, #0
  100013dc4  bl      _objc_storeStrong
  100013dc8  adrp    x8, #0x10041f000
  100013dcc  ldrsw   x8, [x8, #0x544]                         ; ivar offset ADGameOverEndlessStatsViewController._delegate (+0x188)
  100013dd0  add     x0, x19, x8
  100013dd4  bl      _objc_destroyWeak
  100013dd8  adrp    x8, #0x10041f000
  100013ddc  ldrsw   x8, [x8, #0x540]                         ; ivar offset ADGameOverEndlessStatsViewController._tableView (+0x180)
  100013de0  add     x0, x19, x8
  100013de4  bl      _objc_destroyWeak
  100013de8  adrp    x8, #0x10041f000
  100013dec  ldrsw   x8, [x8, #0x53c]                         ; ivar offset ADGameOverEndlessStatsViewController.enemyPlist (+0x178)
  100013df0  add     x0, x19, x8
  100013df4  mov     x1, #0
  100013df8  bl      _objc_storeStrong
  100013dfc  adrp    x8, #0x10041f000
  100013e00  ldrsw   x8, [x8, #0x554]                         ; ivar offset ADGameOverEndlessStatsViewController.cellsTriggered (+0x170)
  100013e04  add     x0, x19, x8
  100013e08  mov     x1, #0
  100013e0c  bl      _objc_storeStrong
  100013e10  adrp    x8, #0x10041f000
  100013e14  ldrsw   x8, [x8, #0x534]                         ; ivar offset ADGameOverEndlessStatsViewController.enemyKeys (+0x168)
  100013e18  add     x0, x19, x8
  100013e1c  mov     x1, #0
  100013e20  bl      _objc_storeStrong
  100013e24  adrp    x8, #0x10041f000
  100013e28  ldrsw   x8, [x8, #0x538]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsKeys (+0x160)
  100013e2c  add     x0, x19, x8
  100013e30  mov     x1, #0
  100013e34  bl      _objc_storeStrong
  100013e38  adrp    x8, #0x10041f000
  100013e3c  ldrsw   x8, [x8, #0x530]                         ; ivar offset ADGameOverEndlessStatsViewController.miscData (+0x158)
  100013e40  add     x0, x19, x8
  100013e44  mov     x1, #0
  100013e48  bl      _objc_storeStrong
  100013e4c  adrp    x8, #0x10041f000
  100013e50  ldrsw   x8, [x8, #0x52c]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsCriticalData (+0x150)
  100013e54  add     x0, x19, x8
  100013e58  mov     x1, #0
  100013e5c  bl      _objc_storeStrong
  100013e60  adrp    x8, #0x10041f000
  100013e64  ldrsw   x8, [x8, #0x528]                         ; ivar offset ADGameOverEndlessStatsViewController.weaponsData (+0x148)
  100013e68  add     x0, x19, x8
  100013e6c  mov     x1, #0
  100013e70  bl      _objc_storeStrong
  100013e74  mov     x1, #0
  100013e78  adrp    x8, #0x10041f000
  100013e7c  ldrsw   x8, [x8, #0x524]                         ; ivar offset ADGameOverEndlessStatsViewController.enemyData (+0x140)
  100013e80  add     x0, x19, x8
  100013e84  ldp     x29, x30, [sp, #0x10]
  100013e88  ldp     x20, x19, [sp], #0x20
  100013e8c  b       _objc_storeStrong

; ======================================================================
; sub_100013e90
; address 0x100013e90  size 260  kind sub
; ======================================================================
  100013e90  stp     d9, d8, [sp, #-0x50]!
  100013e94  stp     x24, x23, [sp, #0x10]
  100013e98  stp     x22, x21, [sp, #0x20]
  100013e9c  stp     x20, x19, [sp, #0x30]
  100013ea0  stp     x29, x30, [sp, #0x40]
  100013ea4  add     x29, sp, #0x40
  100013ea8  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  100013eac  mov     x19, x0
  100013eb0  adrp    x23, #0x10041d000
  100013eb4  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  100013eb8  adrp    x8, #0x100416000
  100013ebc  nop
  100013ec0  ldr     x20, [x8, #0xc00]
  100013ec4  mov     x1, x20
  100013ec8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100013ecc  mov     x29, x29
  100013ed0  bl      _objc_retainAutoreleasedReturnValue
  100013ed4  mov     x22, x0
  100013ed8  adrp    x8, #0x100416000
  100013edc  nop
  100013ee0  ldr     x21, [x8, #0xd18]
  100013ee4  mov     x1, x21
  100013ee8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100013eec  cmp     w0, #0
  100013ef0  adrp    x8, #0x100181000
  100013ef4  ldr     d0, [x8, #0xa08]                         ; d0 = 60.0
  100013ef8  fmov    d1, #30.00000000
  100013efc  fcsel   d8, d1, d0, ne
  100013f00  mov     x0, x22
  100013f04  bl      _objc_release
  100013f08  adrp    x22, #0x10042d000
  100013f0c  add     x22, x22, #0x960                         ; &g_10042d960
  100013f10  str     d8, [x22]                                ; store g_10042d960 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? 30 : 60)
  100013f14  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  100013f18  mov     x1, x20
  100013f1c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100013f20  mov     x29, x29
  100013f24  bl      _objc_retainAutoreleasedReturnValue
  100013f28  mov     x20, x0
  100013f2c  mov     x1, x21
  100013f30  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100013f34  cmp     w0, #0
  100013f38  adrp    x8, #0x100181000
  100013f3c  ldr     d0, [x8, #0x9f0]                         ; d0 = 180.0
  100013f40  nop
  100013f44  ldr     d1, [x8, #0x9d0]                         ; d1 = 50.0
  100013f48  fcsel   d8, d1, d0, ne
  100013f4c  mov     x0, x20
  100013f50  bl      _objc_release
  100013f54  str     d8, [x22, #8]                            ; store g_10042d968 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? 50 : 180)
  100013f58  mov     x0, x19
  100013f5c  ldp     x29, x30, [sp, #0x40]
  100013f60  ldp     x20, x19, [sp, #0x30]
  100013f64  ldp     x22, x21, [sp, #0x20]
  100013f68  ldp     x24, x23, [sp, #0x10]
  100013f6c  ldp     d9, d8, [sp], #0x50
  100013f70  b       _objc_autoreleasePoolPop
  100013f74  mov     x19, x0
  100013f78  mov     x0, x22
  100013f7c  b       loc_100013f88
  100013f80  mov     x19, x0
  100013f84  mov     x0, x20
loc_100013f88:
  100013f88  bl      _objc_release
  100013f8c  mov     x0, x19
  100013f90  bl      __Unwind_Resume                          ; Unwind_Resume()
