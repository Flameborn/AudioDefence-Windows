// unit ADArmoryPowerUpViewController — 18 functions
//   0x10003a3cc     732  -[ADArmoryPowerUpViewController viewDidLoad]
//   0x10003a6a8     260  -[ADArmoryPowerUpViewController loadView]
//   0x10003a7ac      16  -[ADArmoryPowerUpViewController handleBackActionFromStatusBar]
//   0x10003a7bc     100  -[ADArmoryPowerUpViewController handlePowerUpUpgrade:]
//   0x10003a820     140  -[ADArmoryPowerUpViewController tableView:heightForRowAtIndexPath:]
//   0x10003a8ac       8  -[ADArmoryPowerUpViewController numberOfSectionsInTableView:]
//   0x10003a8b4     184  -[ADArmoryPowerUpViewController tableView:numberOfRowsInSection:]
//   0x10003a96c    2692  -[ADArmoryPowerUpViewController tableView:cellForRowAtIndexPath:]
//   0x10003b3f0     252  -[ADArmoryPowerUpViewController playSound]
//   0x10003b4ec    1308  -[ADArmoryPowerUpViewController tableView:didSelectRowAtIndexPath:]
//   0x10003ba08     476  -[ADArmoryPowerUpViewController alertView:willDismissWithButtonIndex:]
//   0x10003bbe4     172  -[ADArmoryPowerUpViewController viewWillLayoutSubviews]
//   0x10003bc90     552  -[ADArmoryPowerUpViewController removeDetailView]
//   0x10003beb8      16  -[ADArmoryPowerUpViewController tableView]
//   0x10003bec8      56  -[ADArmoryPowerUpViewController setTableView:]
//   0x10003bf00      16  -[ADArmoryPowerUpViewController armoryViewController]
//   0x10003bf10      56  -[ADArmoryPowerUpViewController setArmoryViewController:]
//   0x10003bf48      84  -[ADArmoryPowerUpViewController .cxx_destruct]

; ======================================================================
; -[ADArmoryPowerUpViewController viewDidLoad]
; address 0x10003a3cc  size 732  kind objc
; ======================================================================
  10003a3cc  stp     x22, x21, [sp, #-0x30]!
  10003a3d0  stp     x20, x19, [sp, #0x10]
  10003a3d4  stp     x29, x30, [sp, #0x20]
  10003a3d8  add     x29, sp, #0x20
  10003a3dc  sub     sp, sp, #0x10
  10003a3e0  mov     x19, x0
  10003a3e4  str     x19, [sp]
  10003a3e8  adrp    x8, #0x10041e000
  10003a3ec  ldr     x8, [x8, #0xcb8]
  10003a3f0  str     x8, [sp, #8]
  10003a3f4  adrp    x8, #0x100416000
  10003a3f8  nop
  10003a3fc  ldr     x1, [x8, #0xb48]
  10003a400  mov     x0, sp
  10003a404  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10003a408  adrp    x8, #0x100417000
  10003a40c  nop
  10003a410  ldr     x20, [x8, #0x2d0]
  10003a414  mov     x0, x19
  10003a418  mov     x1, x20
  10003a41c  bl      _objc_msgSend                            ; [self tableView]
  10003a420  mov     x29, x29
  10003a424  bl      _objc_retainAutoreleasedReturnValue
  10003a428  mov     x21, x0
  10003a42c  adrp    x8, #0x100418000
  10003a430  nop
  10003a434  ldr     x1, [x8, #0x5d0]
  10003a438  mov     x2, x19
  10003a43c  bl      _objc_msgSend                            ; [[self tableView] setDataSource:self]
  10003a440  mov     x0, x21
  10003a444  bl      _objc_release
  10003a448  mov     x0, x19
  10003a44c  mov     x1, x20
  10003a450  bl      _objc_msgSend                            ; [self tableView]
  10003a454  mov     x29, x29
  10003a458  bl      _objc_retainAutoreleasedReturnValue
  10003a45c  mov     x21, x0
  10003a460  adrp    x8, #0x100417000
  10003a464  nop
  10003a468  ldr     x1, [x8, #0x7d8]
  10003a46c  mov     x2, x19
  10003a470  bl      _objc_msgSend                            ; [[self tableView] setDelegate:self]
  10003a474  mov     x0, x21
  10003a478  bl      _objc_release
  10003a47c  mov     x0, x19
  10003a480  mov     x1, x20
  10003a484  bl      _objc_msgSend                            ; [self tableView]
  10003a488  mov     x29, x29
  10003a48c  bl      _objc_retainAutoreleasedReturnValue
  10003a490  mov     x21, x0
  10003a494  adrp    x8, #0x10041d000
  10003a498  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003a49c  adrp    x8, #0x100417000
  10003a4a0  nop
  10003a4a4  ldr     x1, [x8, #0x340]
  10003a4a8  bl      _objc_msgSend                            ; [UIColor clearColor]
  10003a4ac  mov     x29, x29
  10003a4b0  bl      _objc_retainAutoreleasedReturnValue
  10003a4b4  mov     x22, x0
  10003a4b8  adrp    x8, #0x100417000
  10003a4bc  nop
  10003a4c0  ldr     x1, [x8, #0x188]
  10003a4c4  mov     x0, x21
  10003a4c8  mov     x2, x22
  10003a4cc  bl      _objc_msgSend                            ; [[self tableView] setBackgroundColor:[UIColor clearColor]]
  10003a4d0  mov     x0, x22
  10003a4d4  bl      _objc_release
  10003a4d8  mov     x0, x21
  10003a4dc  bl      _objc_release
  10003a4e0  adrp    x8, #0x10041d000
  10003a4e4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003a4e8  adrp    x8, #0x100416000
  10003a4ec  nop
  10003a4f0  ldr     x1, [x8, #0xc00]
  10003a4f4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003a4f8  mov     x29, x29
  10003a4fc  bl      _objc_retainAutoreleasedReturnValue
  10003a500  mov     x22, x0
  10003a504  adrp    x8, #0x100416000
  10003a508  nop
  10003a50c  ldr     x1, [x8, #0xd18]
  10003a510  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003a514  mov     x21, x0
  10003a518  mov     x0, x22
  10003a51c  bl      _objc_release
  10003a520  mov     x0, x19
  10003a524  mov     x1, x20
  10003a528  bl      _objc_msgSend                            ; [self tableView]
  10003a52c  mov     x29, x29
  10003a530  bl      _objc_retainAutoreleasedReturnValue
  10003a534  mov     x20, x0
  10003a538  adrp    x8, #0x10041e000
  10003a53c  ldr     x0, [x8, #0xb0]                          ; class UINib
  10003a540  adrp    x8, #0x100417000
  10003a544  add     x8, x8, #0xb38                           ; &@selector(nibWithNibName:bundle:)
  10003a548  ldr     x1, [x8]
  10003a54c  cbz     w21, loc_10003a594                       ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  10003a550  mov     x3, #0
  10003a554  adrp    x2, #0x1003bb000
  10003a558  add     x2, x2, #0x250                           ; @"ADCustomTableViewCellWithSubtitles"
  10003a55c  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles" bundle:0]
  10003a560  mov     x29, x29
  10003a564  bl      _objc_retainAutoreleasedReturnValue
  10003a568  mov     x21, x0
  10003a56c  adrp    x8, #0x100417000
  10003a570  nop
  10003a574  ldr     x1, [x8, #0xb40]
  10003a578  adrp    x3, #0x1003bc000
  10003a57c  add     x3, x3, #0x6b0                           ; @"powerupcell"
  10003a580  mov     x0, x20
  10003a584  mov     x2, x21
  10003a588  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles" bundle:0] forCellReuseIdentifier:@"powerupcell"]
  10003a58c  b       loc_10003a5d0
  10003a590  b       loc_10003a68c
loc_10003a594:
  10003a594  mov     x3, #0
  10003a598  adrp    x2, #0x1003bb000
  10003a59c  add     x2, x2, #0x290                           ; @"ADCustomTableViewCellWithSubtitles_iPad"
  10003a5a0  bl      _objc_msgSend                            ; [UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles_iPad" bundle:0]
  10003a5a4  mov     x29, x29
  10003a5a8  bl      _objc_retainAutoreleasedReturnValue
  10003a5ac  mov     x21, x0
  10003a5b0  adrp    x8, #0x100417000
  10003a5b4  nop
  10003a5b8  ldr     x1, [x8, #0xb40]
  10003a5bc  adrp    x3, #0x1003bc000
  10003a5c0  add     x3, x3, #0x6b0                           ; @"powerupcell"
  10003a5c4  mov     x0, x20
  10003a5c8  mov     x2, x21
  10003a5cc  bl      _objc_msgSend                            ; [[self tableView] registerNib:[UINib nibWithNibName:@"ADCustomTableViewCellWithSubtitles_iPad" bundle:0] forCellReuseIdentifier:@"powerupcell"]
loc_10003a5d0:
  10003a5d0  mov     x0, x21
  10003a5d4  bl      _objc_release
  10003a5d8  mov     x0, x20
  10003a5dc  bl      _objc_release
  10003a5e0  adrp    x8, #0x10041d000
  10003a5e4  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10003a5e8  adrp    x8, #0x100416000
  10003a5ec  nop
  10003a5f0  ldr     x1, [x8, #0xe88]
  10003a5f4  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10003a5f8  mov     x29, x29
  10003a5fc  bl      _objc_retainAutoreleasedReturnValue
  10003a600  mov     x20, x0
  10003a604  adrp    x8, #0x100418000
  10003a608  nop
  10003a60c  ldr     x3, [x8, #0x5d8]
  10003a610  adrp    x8, #0x100416000
  10003a614  nop
  10003a618  ldr     x1, [x8, #0xe98]
  10003a61c  mov     x5, #0
  10003a620  adrp    x4, #0x1003bc000
  10003a624  add     x4, x4, #0x6d0                           ; @"POWERUP_UPGRADE_EVENT"
  10003a628  mov     x2, x19
  10003a62c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlePowerUpUpgrade:) name:@"POWERUP_UPGRADE_EVENT" object:0]
  10003a630  mov     x0, x20
  10003a634  bl      _objc_release
  10003a638  sub     sp, x29, #0x20
  10003a63c  ldp     x29, x30, [sp, #0x20]
  10003a640  ldp     x20, x19, [sp, #0x10]
  10003a644  ldp     x22, x21, [sp], #0x30
  10003a648  ret
  10003a64c  b       loc_10003a654
  10003a650  b       loc_10003a654
loc_10003a654:
  10003a654  mov     x19, x0
  10003a658  b       loc_10003a668
  10003a65c  mov     x19, x0
  10003a660  mov     x0, x22
  10003a664  bl      _objc_release
loc_10003a668:
  10003a668  mov     x0, x21
  10003a66c  b       loc_10003a69c
  10003a670  mov     x19, x0
  10003a674  mov     x0, x22
  10003a678  b       loc_10003a69c
  10003a67c  b       loc_10003a684
  10003a680  b       loc_10003a684
loc_10003a684:
  10003a684  mov     x19, x0
  10003a688  b       loc_10003a698
loc_10003a68c:
  10003a68c  mov     x19, x0
  10003a690  mov     x0, x21
  10003a694  bl      _objc_release
loc_10003a698:
  10003a698  mov     x0, x20
loc_10003a69c:
  10003a69c  bl      _objc_release
  10003a6a0  mov     x0, x19
  10003a6a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController loadView]
; address 0x10003a6a8  size 260  kind objc
; ======================================================================
  10003a6a8  stp     x22, x21, [sp, #-0x30]!
  10003a6ac  stp     x20, x19, [sp, #0x10]
  10003a6b0  stp     x29, x30, [sp, #0x20]
  10003a6b4  add     x29, sp, #0x20
  10003a6b8  sub     sp, sp, #0x20
  10003a6bc  mov     x19, x0
  10003a6c0  adrp    x22, #0x1003b0000
  10003a6c4  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10003a6c8  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  10003a6cc  str     x22, [sp, #0x18]
  10003a6d0  adrp    x8, #0x1003bb000
  10003a6d4  add     x8, x8, #0x2b0                           ; @"tableView"
  10003a6d8  str     x8, [sp, #8]
  10003a6dc  adrp    x8, #0x10041d000
  10003a6e0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10003a6e4  adrp    x8, #0x100416000
  10003a6e8  nop
  10003a6ec  ldr     x1, [x8, #0xec0]
  10003a6f0  mov     w2, #1
  10003a6f4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10003a6f8  mov     x29, x29
  10003a6fc  bl      _objc_retainAutoreleasedReturnValue
  10003a700  mov     x20, x0
  10003a704  str     x20, [sp, #0x10]
  10003a708  adrp    x8, #0x10041d000
  10003a70c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10003a710  adrp    x8, #0x100416000
  10003a714  nop
  10003a718  ldr     x1, [x8, #0xcd0]
  10003a71c  add     x2, sp, #0x10
  10003a720  add     x3, sp, #8
  10003a724  mov     w4, #1
  10003a728  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  10003a72c  mov     x29, x29
  10003a730  bl      _objc_retainAutoreleasedReturnValue
  10003a734  mov     x21, x0
  10003a738  mov     x0, x20
  10003a73c  bl      _objc_release
  10003a740  adrp    x8, #0x100416000
  10003a744  nop
  10003a748  ldr     x1, [x8, #0xbf0]
  10003a74c  adrp    x2, #0x1003bc000
  10003a750  add     x2, x2, #0x6f0                           ; @"ADArmoryPowerUpViewController"
  10003a754  mov     x0, x19
  10003a758  mov     x3, x21
  10003a75c  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADArmoryPowerUpViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  10003a760  mov     x0, x21
  10003a764  bl      _objc_release
  10003a768  ldr     x8, [sp, #0x18]
  10003a76c  sub     x8, x22, x8
  10003a770  cbnz    x8, loc_10003a788                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10003a774  sub     sp, x29, #0x20
  10003a778  ldp     x29, x30, [sp, #0x20]
  10003a77c  ldp     x20, x19, [sp, #0x10]
  10003a780  ldp     x22, x21, [sp], #0x30
  10003a784  ret
loc_10003a788:
  10003a788  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10003a78c  mov     x19, x0
  10003a790  mov     x0, x20
  10003a794  b       loc_10003a7a0
  10003a798  mov     x19, x0
  10003a79c  mov     x0, x21
loc_10003a7a0:
  10003a7a0  bl      _objc_release
  10003a7a4  mov     x0, x19
  10003a7a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController handleBackActionFromStatusBar]
; address 0x10003a7ac  size 16  kind objc
; ======================================================================
  10003a7ac  adrp    x8, #0x100418000
  10003a7b0  nop
  10003a7b4  ldr     x1, [x8, #0x5e0]
  10003a7b8  b       _objc_msgSend                            ; [self removeDetailView]

; ======================================================================
; -[ADArmoryPowerUpViewController handlePowerUpUpgrade:]
; address 0x10003a7bc  size 100  kind objc
; ======================================================================
  10003a7bc  stp     x20, x19, [sp, #-0x20]!
  10003a7c0  stp     x29, x30, [sp, #0x10]
  10003a7c4  add     x29, sp, #0x10
  10003a7c8  adrp    x8, #0x100417000
  10003a7cc  nop
  10003a7d0  ldr     x1, [x8, #0x2d0]
  10003a7d4  bl      _objc_msgSend                            ; [self tableView]
  10003a7d8  mov     x29, x29
  10003a7dc  bl      _objc_retainAutoreleasedReturnValue
  10003a7e0  mov     x19, x0
  10003a7e4  adrp    x8, #0x100417000
  10003a7e8  nop
  10003a7ec  ldr     x1, [x8, #0xb18]
  10003a7f0  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  10003a7f4  mov     x0, x19
  10003a7f8  ldp     x29, x30, [sp, #0x10]
  10003a7fc  ldp     x20, x19, [sp], #0x20
  10003a800  b       _objc_release
  10003a804  mov     x20, x0
  10003a808  b       loc_10003a818
  10003a80c  mov     x20, x0
  10003a810  mov     x0, x19
  10003a814  bl      _objc_release
loc_10003a818:
  10003a818  mov     x0, x20
  10003a81c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController tableView:heightForRowAtIndexPath:]
; address 0x10003a820  size 140  kind objc
; ======================================================================
  10003a820  stp     x20, x19, [sp, #-0x20]!
  10003a824  stp     x29, x30, [sp, #0x10]
  10003a828  add     x29, sp, #0x10
  10003a82c  adrp    x8, #0x10041d000
  10003a830  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003a834  adrp    x8, #0x100416000
  10003a838  nop
  10003a83c  ldr     x1, [x8, #0xc00]
  10003a840  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003a844  mov     x29, x29
  10003a848  bl      _objc_retainAutoreleasedReturnValue
  10003a84c  mov     x19, x0
  10003a850  adrp    x8, #0x100416000
  10003a854  nop
  10003a858  ldr     x1, [x8, #0xd18]
  10003a85c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003a860  mov     x20, x0
  10003a864  mov     x0, x19
  10003a868  bl      _objc_release
  10003a86c  cmp     w20, #0
  10003a870  adrp    x8, #0x100181000
  10003a874  ldr     d0, [x8, #0xaa8]                         ; d0 = 176.0
  10003a878  nop
  10003a87c  ldr     d1, [x8, #0xab0]                         ; d1 = 120.0
  10003a880  fcsel   d0, d1, d0, ne
  10003a884  ldp     x29, x30, [sp, #0x10]
  10003a888  ldp     x20, x19, [sp], #0x20
  10003a88c  ret
  10003a890  mov     x20, x0
  10003a894  b       loc_10003a8a4
  10003a898  mov     x20, x0
  10003a89c  mov     x0, x19
  10003a8a0  bl      _objc_release
loc_10003a8a4:
  10003a8a4  mov     x0, x20
  10003a8a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController numberOfSectionsInTableView:]
; address 0x10003a8ac  size 8  kind objc
; ======================================================================
  10003a8ac  mov     w0, #1
  10003a8b0  ret

; ======================================================================
; -[ADArmoryPowerUpViewController tableView:numberOfRowsInSection:]
; address 0x10003a8b4  size 184  kind objc
; ======================================================================
  10003a8b4  stp     x22, x21, [sp, #-0x30]!
  10003a8b8  stp     x20, x19, [sp, #0x10]
  10003a8bc  stp     x29, x30, [sp, #0x20]
  10003a8c0  add     x29, sp, #0x20
  10003a8c4  adrp    x8, #0x10041d000
  10003a8c8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10003a8cc  adrp    x8, #0x100417000
  10003a8d0  nop
  10003a8d4  ldr     x1, [x8, #0xa0]
  10003a8d8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003a8dc  mov     x29, x29
  10003a8e0  bl      _objc_retainAutoreleasedReturnValue
  10003a8e4  mov     x19, x0
  10003a8e8  adrp    x8, #0x100417000
  10003a8ec  nop
  10003a8f0  ldr     x1, [x8, #0xe0]
  10003a8f4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray]
  10003a8f8  mov     x29, x29
  10003a8fc  bl      _objc_retainAutoreleasedReturnValue
  10003a900  mov     x20, x0
  10003a904  adrp    x8, #0x100416000
  10003a908  nop
  10003a90c  ldr     x1, [x8, #0xe30]
  10003a910  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] count]
  10003a914  mov     x21, x0
  10003a918  mov     x0, x20
  10003a91c  bl      _objc_release
  10003a920  mov     x0, x19
  10003a924  bl      _objc_release
  10003a928  mov     x0, x21
  10003a92c  ldp     x29, x30, [sp, #0x20]
  10003a930  ldp     x20, x19, [sp, #0x10]
  10003a934  ldp     x22, x21, [sp], #0x30
  10003a938  ret
  10003a93c  mov     x20, x0
  10003a940  b       loc_10003a964
  10003a944  mov     x20, x0
  10003a948  b       loc_10003a95c
  10003a94c  mov     x1, x20
  10003a950  mov     x20, x0
  10003a954  mov     x0, x1
  10003a958  bl      _objc_release
loc_10003a95c:
  10003a95c  mov     x0, x19
  10003a960  bl      _objc_release
loc_10003a964:
  10003a964  mov     x0, x20
  10003a968  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController tableView:cellForRowAtIndexPath:]
; address 0x10003a96c  size 2692  kind objc
; ======================================================================
  10003a96c  stp     x28, x27, [sp, #-0x60]!
  10003a970  stp     x26, x25, [sp, #0x10]
  10003a974  stp     x24, x23, [sp, #0x20]
  10003a978  stp     x22, x21, [sp, #0x30]
  10003a97c  stp     x20, x19, [sp, #0x40]
  10003a980  stp     x29, x30, [sp, #0x50]
  10003a984  add     x29, sp, #0x50
  10003a988  sub     sp, sp, #0x60
  10003a98c  mov     x19, x3
  10003a990  mov     x21, x2
  10003a994  mov     x0, x21
  10003a998  bl      _objc_retain
  10003a99c  mov     x20, x0
  10003a9a0  mov     x0, x19
  10003a9a4  bl      _objc_retain
  10003a9a8  str     x0, [sp, #0x58]
  10003a9ac  adrp    x8, #0x100417000
  10003a9b0  nop
  10003a9b4  ldr     x1, [x8, #0x390]
  10003a9b8  adrp    x2, #0x1003bc000
  10003a9bc  add     x2, x2, #0x6b0                           ; @"powerupcell"
  10003a9c0  mov     x0, x21
  10003a9c4  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"powerupcell"]
  10003a9c8  mov     x19, x0
  10003a9cc  mov     x0, x20
  10003a9d0  bl      _objc_release
  10003a9d4  mov     x0, x19
  10003a9d8  bl      _objc_retainAutoreleasedReturnValue
  10003a9dc  mov     x28, x0
  10003a9e0  adrp    x8, #0x100417000
  10003a9e4  nop
  10003a9e8  ldr     x1, [x8, #0xb70]
  10003a9ec  str     x1, [sp, #0x38]
  10003a9f0  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton]
  10003a9f4  mov     x29, x29
  10003a9f8  bl      _objc_retainAutoreleasedReturnValue
  10003a9fc  mov     x20, x0
  10003aa00  adrp    x8, #0x10041d000
  10003aa04  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003aa08  adrp    x8, #0x100418000
  10003aa0c  nop
  10003aa10  ldr     x1, [x8, #0x5e8]
  10003aa14  adrp    x8, #0x100181000
  10003aa18  ldr     d0, [x8, #0xb68]                         ; d0 = 0.046875
  10003aa1c  nop
  10003aa20  ldr     d2, [x8, #0xb70]                         ; d2 = 0.3828125
  10003aa24  fmov    d1, #0.18750000
  10003aa28  fmov    d3, #1.00000000
  10003aa2c  bl      _objc_msgSend                            ; [UIColor colorWithRed:0.046875 green:0.1875 blue:0.382812 alpha:1]
  10003aa30  mov     x29, x29
  10003aa34  bl      _objc_retainAutoreleasedReturnValue
  10003aa38  mov     x21, x0
  10003aa3c  adrp    x8, #0x100417000
  10003aa40  nop
  10003aa44  ldr     x1, [x8, #0x188]
  10003aa48  str     x1, [sp, #0x28]
  10003aa4c  mov     x0, x20
  10003aa50  mov     x2, x21
  10003aa54  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton] setBackgroundColor:[UIColor colorWithRed:0.046875 green:0.1875 blue:0.382812 alpha:1]]
  10003aa58  mov     x0, x21
  10003aa5c  bl      _objc_release
  10003aa60  mov     x0, x20
  10003aa64  bl      _objc_release
  10003aa68  mov     x0, x28
  10003aa6c  ldr     x1, [sp, #0x38]
  10003aa70  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton]
  10003aa74  mov     x29, x29
  10003aa78  bl      _objc_retainAutoreleasedReturnValue
  10003aa7c  mov     x20, x0
  10003aa80  adrp    x8, #0x10041d000
  10003aa84  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003aa88  adrp    x8, #0x100417000
  10003aa8c  nop
  10003aa90  ldr     x1, [x8, #0x328]
  10003aa94  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10003aa98  mov     x29, x29
  10003aa9c  bl      _objc_retainAutoreleasedReturnValue
  10003aaa0  mov     x21, x0
  10003aaa4  adrp    x8, #0x100418000
  10003aaa8  nop
  10003aaac  ldr     x1, [x8, #0x5f0]
  10003aab0  mov     x3, #0
  10003aab4  mov     x0, x20
  10003aab8  mov     x2, x21
  10003aabc  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton] setTitleColor:[UIColor whiteColor] forState:0]
  10003aac0  mov     x0, x21
  10003aac4  bl      _objc_release
  10003aac8  mov     x0, x20
  10003aacc  bl      _objc_release
  10003aad0  adrp    x8, #0x100416000
  10003aad4  nop
  10003aad8  ldr     x1, [x8, #0xcf8]
  10003aadc  mov     x0, x28
  10003aae0  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] image]
  10003aae4  str     x28, [sp, #0x50]
  10003aae8  mov     x29, x29
  10003aaec  bl      _objc_retainAutoreleasedReturnValue
  10003aaf0  mov     x26, x0
  10003aaf4  adrp    x8, #0x10041d000
  10003aaf8  ldr     x20, [x8, #0xf10]                        ; class UIImage
  10003aafc  nop
  10003ab00  ldr     x28, [x8, #0xf78]                        ; class NSString
  10003ab04  adrp    x8, #0x10041d000
  10003ab08  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10003ab0c  adrp    x8, #0x100417000
  10003ab10  nop
  10003ab14  ldr     x1, [x8, #0xa0]
  10003ab18  str     x1, [sp, #0x48]
  10003ab1c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003ab20  mov     x29, x29
  10003ab24  bl      _objc_retainAutoreleasedReturnValue
  10003ab28  mov     x27, x0
  10003ab2c  adrp    x8, #0x100417000
  10003ab30  nop
  10003ab34  ldr     x1, [x8, #0xe0]
  10003ab38  str     x1, [sp, #0x40]
  10003ab3c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray]
  10003ab40  mov     x29, x29
  10003ab44  bl      _objc_retainAutoreleasedReturnValue
  10003ab48  mov     x22, x0
  10003ab4c  adrp    x8, #0x100417000
  10003ab50  nop
  10003ab54  ldr     x19, [x8, #0x350]
  10003ab58  ldr     x0, [sp, #0x58]
  10003ab5c  mov     x1, x19
  10003ab60  bl      _objc_msgSend                            ; [arg2 row]
  10003ab64  mov     x2, x0
  10003ab68  adrp    x8, #0x100416000
  10003ab6c  nop
  10003ab70  ldr     x23, [x8, #0xc30]
  10003ab74  mov     x0, x22
  10003ab78  mov     x1, x23
  10003ab7c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]]
  10003ab80  mov     x29, x29
  10003ab84  bl      _objc_retainAutoreleasedReturnValue
  10003ab88  mov     x25, x0
  10003ab8c  adrp    x8, #0x100417000
  10003ab90  nop
  10003ab94  ldr     x24, [x8, #0x40]
  10003ab98  adrp    x2, #0x1003b9000
  10003ab9c  add     x2, x2, #0xdb0                           ; @"name"
  10003aba0  mov     x1, x24
  10003aba4  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10003aba8  mov     x29, x29
  10003abac  bl      _objc_retainAutoreleasedReturnValue
  10003abb0  mov     x21, x0
  10003abb4  adrp    x8, #0x100416000
  10003abb8  nop
  10003abbc  ldr     x1, [x8, #0xee8]
  10003abc0  str     x1, [sp, #0x30]
  10003abc4  str     x21, [sp]
  10003abc8  adrp    x2, #0x1003b9000
  10003abcc  add     x2, x2, #0xc10                           ; @"%@_icon"
  10003abd0  mov     x0, x28
  10003abd4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg…]
  10003abd8  mov     x29, x29
  10003abdc  bl      _objc_retainAutoreleasedReturnValue
  10003abe0  mov     x28, x0
  10003abe4  adrp    x8, #0x100416000
  10003abe8  nop
  10003abec  ldr     x1, [x8, #0xd40]
  10003abf0  str     x1, [sp, #0x20]
  10003abf4  mov     x0, x20
  10003abf8  mov     x2, x28
  10003abfc  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg…]]
  10003ac00  mov     x29, x29
  10003ac04  bl      _objc_retainAutoreleasedReturnValue
  10003ac08  mov     x20, x0
  10003ac0c  adrp    x8, #0x100416000
  10003ac10  nop
  10003ac14  ldr     x1, [x8, #0xef0]
  10003ac18  str     x1, [sp, #0x18]
  10003ac1c  mov     x0, x26
  10003ac20  mov     x2, x20
  10003ac24  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] image] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg…]]]
  10003ac28  mov     x0, x20
  10003ac2c  bl      _objc_release
  10003ac30  mov     x0, x28
  10003ac34  bl      _objc_release
  10003ac38  mov     x0, x21
  10003ac3c  bl      _objc_release
  10003ac40  mov     x0, x25
  10003ac44  bl      _objc_release
  10003ac48  mov     x0, x22
  10003ac4c  bl      _objc_release
  10003ac50  mov     x0, x27
  10003ac54  bl      _objc_release
  10003ac58  mov     x0, x26
  10003ac5c  bl      _objc_release
  10003ac60  adrp    x8, #0x100417000
  10003ac64  nop
  10003ac68  ldr     x27, [x8, #0xb80]
  10003ac6c  ldr     x28, [sp, #0x50]
  10003ac70  mov     x0, x28
  10003ac74  mov     x1, x27
  10003ac78  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel]
  10003ac7c  mov     x29, x29
  10003ac80  bl      _objc_retainAutoreleasedReturnValue
  10003ac84  mov     x22, x0
  10003ac88  adrp    x8, #0x10041d000
  10003ac8c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10003ac90  ldr     x1, [sp, #0x48]
  10003ac94  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003ac98  mov     x29, x29
  10003ac9c  bl      _objc_retainAutoreleasedReturnValue
  10003aca0  mov     x25, x0
  10003aca4  ldr     x1, [sp, #0x40]
  10003aca8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray]
  10003acac  mov     x29, x29
  10003acb0  bl      _objc_retainAutoreleasedReturnValue
  10003acb4  mov     x20, x0
  10003acb8  ldr     x0, [sp, #0x58]
  10003acbc  mov     x1, x19
  10003acc0  bl      _objc_msgSend                            ; [arg2 row]
  10003acc4  mov     x2, x0
  10003acc8  mov     x0, x20
  10003accc  mov     x1, x23
  10003acd0  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]]
  10003acd4  mov     x29, x29
  10003acd8  bl      _objc_retainAutoreleasedReturnValue
  10003acdc  mov     x21, x0
  10003ace0  adrp    x2, #0x1003bc000
  10003ace4  add     x2, x2, #0x710                           ; @"upgradeText"
  10003ace8  mov     x1, x24
  10003acec  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]] objectForKey:@"upgradeText"]
  10003acf0  mov     x29, x29
  10003acf4  bl      _objc_retainAutoreleasedReturnValue
  10003acf8  mov     x28, x0
  10003acfc  adrp    x8, #0x100416000
  10003ad00  nop
  10003ad04  ldr     x26, [x8, #0xb68]
  10003ad08  mov     x0, x22
  10003ad0c  mov     x1, x26
  10003ad10  mov     x2, x28
  10003ad14  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] setText:[[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]] objectForKey:@"upgradeText"]]
  10003ad18  mov     x0, x28
  10003ad1c  bl      _objc_release
  10003ad20  mov     x0, x21
  10003ad24  bl      _objc_release
  10003ad28  mov     x0, x20
  10003ad2c  bl      _objc_release
  10003ad30  mov     x0, x25
  10003ad34  bl      _objc_release
  10003ad38  mov     x0, x22
  10003ad3c  bl      _objc_release
  10003ad40  adrp    x8, #0x100416000
  10003ad44  nop
  10003ad48  ldr     x1, [x8, #0xb80]
  10003ad4c  ldr     x28, [sp, #0x50]
  10003ad50  mov     x0, x28
  10003ad54  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] titleLabel]
  10003ad58  mov     x29, x29
  10003ad5c  bl      _objc_retainAutoreleasedReturnValue
  10003ad60  mov     x22, x0
  10003ad64  adrp    x8, #0x10041d000
  10003ad68  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10003ad6c  ldr     x1, [sp, #0x48]
  10003ad70  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003ad74  mov     x29, x29
  10003ad78  bl      _objc_retainAutoreleasedReturnValue
  10003ad7c  mov     x25, x0
  10003ad80  ldr     x1, [sp, #0x40]
  10003ad84  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray]
  10003ad88  mov     x29, x29
  10003ad8c  bl      _objc_retainAutoreleasedReturnValue
  10003ad90  mov     x20, x0
  10003ad94  ldr     x0, [sp, #0x58]
  10003ad98  mov     x1, x19
  10003ad9c  bl      _objc_msgSend                            ; [arg2 row]
  10003ada0  mov     x2, x0
  10003ada4  mov     x0, x20
  10003ada8  mov     x1, x23
  10003adac  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]]
  10003adb0  mov     x29, x29
  10003adb4  bl      _objc_retainAutoreleasedReturnValue
  10003adb8  mov     x21, x0
  10003adbc  adrp    x2, #0x1003ba000
  10003adc0  add     x2, x2, #0x2b0                           ; @"displayName"
  10003adc4  mov     x1, x24
  10003adc8  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]] objectForKey:@"displayName"]
  10003adcc  mov     x29, x29
  10003add0  bl      _objc_retainAutoreleasedReturnValue
  10003add4  mov     x28, x0
  10003add8  mov     x0, x22
  10003addc  mov     x1, x26
  10003ade0  mov     x2, x28
  10003ade4  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] titleLabel] setText:[[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]] objectForKey:@"displayName"]]
  10003ade8  mov     x0, x28
  10003adec  bl      _objc_release
  10003adf0  mov     x0, x21
  10003adf4  bl      _objc_release
  10003adf8  mov     x0, x20
  10003adfc  bl      _objc_release
  10003ae00  mov     x0, x25
  10003ae04  bl      _objc_release
  10003ae08  mov     x0, x22
  10003ae0c  bl      _objc_release
  10003ae10  adrp    x8, #0x10041d000
  10003ae14  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10003ae18  adrp    x8, #0x100416000
  10003ae1c  nop
  10003ae20  ldr     x1, [x8, #0xec8]
  10003ae24  ldr     x28, [sp, #0x50]
  10003ae28  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10003ae2c  mov     x29, x29
  10003ae30  bl      _objc_retainAutoreleasedReturnValue
  10003ae34  mov     x22, x0
  10003ae38  adrp    x8, #0x10041d000
  10003ae3c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10003ae40  ldr     x1, [sp, #0x48]
  10003ae44  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003ae48  mov     x29, x29
  10003ae4c  bl      _objc_retainAutoreleasedReturnValue
  10003ae50  mov     x25, x0
  10003ae54  ldr     x1, [sp, #0x40]
  10003ae58  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray]
  10003ae5c  mov     x29, x29
  10003ae60  bl      _objc_retainAutoreleasedReturnValue
  10003ae64  mov     x20, x0
  10003ae68  ldr     x0, [sp, #0x58]
  10003ae6c  mov     x1, x19
  10003ae70  bl      _objc_msgSend                            ; [arg2 row]
  10003ae74  mov     x2, x0
  10003ae78  mov     x0, x20
  10003ae7c  mov     x1, x23
  10003ae80  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]]
  10003ae84  mov     x29, x29
  10003ae88  bl      _objc_retainAutoreleasedReturnValue
  10003ae8c  mov     x21, x0
  10003ae90  adrp    x2, #0x1003b9000
  10003ae94  add     x2, x2, #0xdb0                           ; @"name"
  10003ae98  mov     x1, x24
  10003ae9c  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10003aea0  mov     x29, x29
  10003aea4  bl      _objc_retainAutoreleasedReturnValue
  10003aea8  mov     x23, x0
  10003aeac  adrp    x8, #0x100417000
  10003aeb0  nop
  10003aeb4  ldr     x1, [x8, #0xd90]
  10003aeb8  mov     x0, x22
  10003aebc  mov     x2, x23
  10003aec0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:[[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10003aec4  mov     x19, x0
  10003aec8  mov     x0, x23
  10003aecc  bl      _objc_release
  10003aed0  mov     x0, x21
  10003aed4  bl      _objc_release
  10003aed8  mov     x0, x20
  10003aedc  bl      _objc_release
  10003aee0  mov     x0, x25
  10003aee4  bl      _objc_release
  10003aee8  mov     x0, x22
  10003aeec  bl      _objc_release
  10003aef0  cmp     w19, #4
  10003aef4  b.lt    loc_10003af34                            ; if ([[ADInventory sharedInventory] levelForPowerUpWithName:[[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] obj… < 4)
  10003aef8  mov     x0, x28
  10003aefc  ldr     x1, [sp, #0x38]
  10003af00  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton]
  10003af04  mov     x29, x29
  10003af08  bl      _objc_retainAutoreleasedReturnValue
  10003af0c  mov     x20, x0
  10003af10  adrp    x8, #0x100417000
  10003af14  nop
  10003af18  ldr     x1, [x8, #0x920]
  10003af1c  mov     x3, #0
  10003af20  adrp    x2, #0x1003bc000
  10003af24  add     x2, x2, #0x730                           ; @"VIEW"
  10003af28  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton] setTitle:@"VIEW" forState:0]
  10003af2c  b       loc_10003af68
  10003af30  b       loc_10003b378
loc_10003af34:
  10003af34  mov     x0, x28
  10003af38  ldr     x1, [sp, #0x38]
  10003af3c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton]
  10003af40  mov     x29, x29
  10003af44  bl      _objc_retainAutoreleasedReturnValue
  10003af48  mov     x20, x0
  10003af4c  adrp    x8, #0x100417000
  10003af50  nop
  10003af54  ldr     x1, [x8, #0x920]
  10003af58  mov     x3, #0
  10003af5c  adrp    x2, #0x1003bc000
  10003af60  add     x2, x2, #0x750                           ; @"UPGRADE"
  10003af64  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton] setTitle:@"UPGRADE" forState:0]
loc_10003af68:
  10003af68  mov     x0, x20
  10003af6c  bl      _objc_release
  10003af70  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10003af74  cbz     w0, loc_10003b0fc                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  10003af78  mov     x0, x28
  10003af7c  ldr     x1, [sp, #0x38]
  10003af80  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton]
  10003af84  mov     x29, x29
  10003af88  bl      _objc_retainAutoreleasedReturnValue
  10003af8c  mov     x20, x0
  10003af90  adrp    x8, #0x100416000
  10003af94  nop
  10003af98  ldr     x1, [x8, #0xba8]
  10003af9c  mov     w2, #1
  10003afa0  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] buyUpgradeButton] setHidden:1]
  10003afa4  mov     x0, x20
  10003afa8  bl      _objc_release
  10003afac  cmp     w19, #4
  10003afb0  b.lt    loc_10003b04c                            ; if ([[ADInventory sharedInventory] levelForPowerUpWithName:[[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] obj… < 4)
  10003afb4  mov     x0, x28
  10003afb8  mov     x1, x27
  10003afbc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel]
  10003afc0  mov     x29, x29
  10003afc4  bl      _objc_retainAutoreleasedReturnValue
  10003afc8  mov     x21, x0
  10003afcc  adrp    x8, #0x10041d000
  10003afd0  ldr     x23, [x8, #0xf78]                        ; class NSString
  10003afd4  mov     x0, x28
  10003afd8  mov     x1, x27
  10003afdc  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel]
  10003afe0  mov     x29, x29
  10003afe4  bl      _objc_retainAutoreleasedReturnValue
  10003afe8  mov     x20, x0
  10003afec  adrp    x8, #0x100418000
  10003aff0  nop
  10003aff4  ldr     x1, [x8, #0x290]
  10003aff8  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] text]
  10003affc  mov     x29, x29
  10003b000  bl      _objc_retainAutoreleasedReturnValue
  10003b004  mov     x22, x0
  10003b008  adrp    x8, #0x1003bc000
  10003b00c  add     x8, x8, #0x790                           ; @"double tap to view"
  10003b010  stp     x22, x8, [sp]
  10003b014  adrp    x2, #0x1003bc000
  10003b018  add     x2, x2, #0x770                           ; @"%@ %@"
  10003b01c  mov     x0, x23
  10003b020  ldr     x1, [sp, #0x30]
  10003b024  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@", [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] text], @"double tap to view"]
  10003b028  mov     x29, x29
  10003b02c  bl      _objc_retainAutoreleasedReturnValue
  10003b030  mov     x23, x0
  10003b034  mov     x0, x21
  10003b038  mov     x1, x26
  10003b03c  mov     x2, x23
  10003b040  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] setText:[NSString stringWithFormat:@"%@ %@", [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] text], @"double tap to view"]]
  10003b044  b       loc_10003b0dc
  10003b048  b       loc_10003b3b4
loc_10003b04c:
  10003b04c  mov     x0, x28
  10003b050  mov     x1, x27
  10003b054  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel]
  10003b058  mov     x29, x29
  10003b05c  bl      _objc_retainAutoreleasedReturnValue
  10003b060  mov     x21, x0
  10003b064  adrp    x8, #0x10041d000
  10003b068  ldr     x23, [x8, #0xf78]                        ; class NSString
  10003b06c  mov     x0, x28
  10003b070  mov     x1, x27
  10003b074  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel]
  10003b078  mov     x29, x29
  10003b07c  bl      _objc_retainAutoreleasedReturnValue
  10003b080  mov     x20, x0
  10003b084  adrp    x8, #0x100418000
  10003b088  nop
  10003b08c  ldr     x1, [x8, #0x290]
  10003b090  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] text]
  10003b094  mov     x29, x29
  10003b098  bl      _objc_retainAutoreleasedReturnValue
  10003b09c  mov     x22, x0
  10003b0a0  adrp    x8, #0x1003bc000
  10003b0a4  add     x8, x8, #0x7b0                           ; @"double tap to upgrade"
  10003b0a8  stp     x22, x8, [sp]
  10003b0ac  adrp    x2, #0x1003bc000
  10003b0b0  add     x2, x2, #0x770                           ; @"%@ %@"
  10003b0b4  mov     x0, x23
  10003b0b8  ldr     x1, [sp, #0x30]
  10003b0bc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@", [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] text], @"double tap to upgrade"]
  10003b0c0  mov     x29, x29
  10003b0c4  bl      _objc_retainAutoreleasedReturnValue
  10003b0c8  mov     x23, x0
  10003b0cc  mov     x0, x21
  10003b0d0  mov     x1, x26
  10003b0d4  mov     x2, x23
  10003b0d8  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] setText:[NSString stringWithFormat:@"%@ %@", [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] detailLabel] text], @"double tap to upgrade"]]
loc_10003b0dc:
  10003b0dc  mov     x0, x23
  10003b0e0  bl      _objc_release
  10003b0e4  mov     x0, x22
  10003b0e8  bl      _objc_release
  10003b0ec  mov     x0, x20
  10003b0f0  bl      _objc_release
  10003b0f4  mov     x0, x21
  10003b0f8  bl      _objc_release
loc_10003b0fc:
  10003b0fc  adrp    x8, #0x100418000
  10003b100  nop
  10003b104  ldr     x1, [x8, #0x5f8]
  10003b108  mov     x0, x28
  10003b10c  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] statusLevel]
  10003b110  mov     x29, x29
  10003b114  bl      _objc_retainAutoreleasedReturnValue
  10003b118  mov     x20, x0
  10003b11c  adrp    x8, #0x10041d000
  10003b120  ldr     x22, [x8, #0xf10]                        ; class UIImage
  10003b124  nop
  10003b128  ldr     x0, [x8, #0xf78]                         ; class NSString
  10003b12c  str     x19, [sp]
  10003b130  adrp    x2, #0x1003bc000
  10003b134  add     x2, x2, #0x7d0                           ; @"badge_level%d.png"
  10003b138  ldr     x1, [sp, #0x30]
  10003b13c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"badge_level%d.png", [[ADInventory sharedInventory] levelForPowerUpWithName:[[[[ADWeaponManager share…]
  10003b140  mov     x29, x29
  10003b144  bl      _objc_retainAutoreleasedReturnValue
  10003b148  mov     x21, x0
  10003b14c  mov     x0, x22
  10003b150  ldr     x1, [sp, #0x20]
  10003b154  mov     x2, x21
  10003b158  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"badge_level%d.png", [[ADInventory sharedInventory] levelForPowerUpWithName:[[[[ADWeaponManager share…]]
  10003b15c  mov     x29, x29
  10003b160  bl      _objc_retainAutoreleasedReturnValue
  10003b164  mov     x22, x0
  10003b168  mov     x0, x20
  10003b16c  ldr     x1, [sp, #0x18]
  10003b170  mov     x2, x22
  10003b174  bl      _objc_msgSend                            ; [[[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] statusLevel] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"badge_level%d.png", [[ADInventory sharedInventory] levelForPowerUpWithName:[[[[ADWeaponManager share…]]]
  10003b178  mov     x0, x22
  10003b17c  bl      _objc_release
  10003b180  mov     x0, x21
  10003b184  bl      _objc_release
  10003b188  mov     x0, x20
  10003b18c  bl      _objc_release
  10003b190  adrp    x8, #0x100417000
  10003b194  nop
  10003b198  ldr     x1, [x8, #0x3b0]
  10003b19c  mov     x2, #0
  10003b1a0  mov     x0, x28
  10003b1a4  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] setSelectionStyle:0]
  10003b1a8  adrp    x8, #0x10041d000
  10003b1ac  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10003b1b0  adrp    x8, #0x100417000
  10003b1b4  nop
  10003b1b8  ldr     x1, [x8, #0x340]
  10003b1bc  bl      _objc_msgSend                            ; [UIColor clearColor]
  10003b1c0  mov     x29, x29
  10003b1c4  bl      _objc_retainAutoreleasedReturnValue
  10003b1c8  mov     x20, x0
  10003b1cc  mov     x0, x28
  10003b1d0  ldr     x1, [sp, #0x28]
  10003b1d4  mov     x2, x20
  10003b1d8  bl      _objc_msgSend                            ; [[arg1 dequeueReusableCellWithIdentifier:@"powerupcell"] setBackgroundColor:[UIColor clearColor]]
  10003b1dc  mov     x0, x20
  10003b1e0  bl      _objc_release
  10003b1e4  ldr     x0, [sp, #0x58]
  10003b1e8  bl      _objc_release
  10003b1ec  mov     x0, x28
  10003b1f0  sub     sp, x29, #0x50
  10003b1f4  ldp     x29, x30, [sp, #0x50]
  10003b1f8  ldp     x20, x19, [sp, #0x40]
  10003b1fc  ldp     x22, x21, [sp, #0x30]
  10003b200  ldp     x24, x23, [sp, #0x20]
  10003b204  ldp     x26, x25, [sp, #0x10]
  10003b208  ldp     x28, x27, [sp], #0x60
  10003b20c  b       _objc_autoreleaseReturnValue
  10003b210  str     x28, [sp, #0x50]
  10003b214  mov     x19, x0
  10003b218  b       loc_10003b3d8
  10003b21c  mov     x19, x0
  10003b220  b       loc_10003b2b0
  10003b224  mov     x19, x0
  10003b228  b       loc_10003b334
  10003b22c  mov     x19, x0
  10003b230  b       loc_10003b334
  10003b234  mov     x19, x0
  10003b238  b       loc_10003b334
  10003b23c  mov     x19, x0
  10003b240  mov     x0, x20
  10003b244  b       loc_10003b3dc
  10003b248  b       loc_10003b250
  10003b24c  b       loc_10003b258
loc_10003b250:
  10003b250  str     x28, [sp, #0x50]
  10003b254  b       loc_10003b378
loc_10003b258:
  10003b258  str     x28, [sp, #0x50]
  10003b25c  mov     x19, x0
  10003b260  b       loc_10003b364
  10003b264  mov     x19, x0
  10003b268  b       loc_10003b2c0
  10003b26c  mov     x19, x0
  10003b270  b       loc_10003b2b8
  10003b274  mov     x19, x0
  10003b278  b       loc_10003b2a8
  10003b27c  mov     x19, x0
  10003b280  b       loc_10003b2a0
  10003b284  mov     x19, x0
  10003b288  b       loc_10003b298
  10003b28c  mov     x19, x0
  10003b290  mov     x0, x20
  10003b294  bl      _objc_release
loc_10003b298:
  10003b298  mov     x0, x28
  10003b29c  bl      _objc_release
loc_10003b2a0:
  10003b2a0  mov     x0, x21
  10003b2a4  bl      _objc_release
loc_10003b2a8:
  10003b2a8  mov     x0, x25
  10003b2ac  bl      _objc_release
loc_10003b2b0:
  10003b2b0  mov     x0, x22
  10003b2b4  bl      _objc_release
loc_10003b2b8:
  10003b2b8  mov     x0, x27
  10003b2bc  bl      _objc_release
loc_10003b2c0:
  10003b2c0  mov     x0, x26
  10003b2c4  b       loc_10003b3d4
  10003b2c8  mov     x19, x0
  10003b2cc  b       loc_10003b344
  10003b2d0  mov     x19, x0
  10003b2d4  b       loc_10003b33c
  10003b2d8  mov     x19, x0
  10003b2dc  b       loc_10003b32c
  10003b2e0  b       loc_10003b2fc
  10003b2e4  mov     x19, x0
  10003b2e8  b       loc_10003b344
  10003b2ec  mov     x19, x0
  10003b2f0  b       loc_10003b33c
  10003b2f4  mov     x19, x0
  10003b2f8  b       loc_10003b32c
loc_10003b2fc:
  10003b2fc  mov     x19, x0
  10003b300  mov     x0, x28
  10003b304  b       loc_10003b328
  10003b308  mov     x19, x0
  10003b30c  b       loc_10003b344
  10003b310  mov     x19, x0
  10003b314  b       loc_10003b33c
  10003b318  mov     x19, x0
  10003b31c  b       loc_10003b32c
  10003b320  mov     x19, x0
  10003b324  mov     x0, x23
loc_10003b328:
  10003b328  bl      _objc_release
loc_10003b32c:
  10003b32c  mov     x0, x21
  10003b330  bl      _objc_release
loc_10003b334:
  10003b334  mov     x0, x20
  10003b338  bl      _objc_release
loc_10003b33c:
  10003b33c  mov     x0, x25
  10003b340  bl      _objc_release
loc_10003b344:
  10003b344  mov     x0, x22
  10003b348  b       loc_10003b3d4
  10003b34c  b       loc_10003b378
  10003b350  mov     x19, x0
  10003b354  b       loc_10003b364
  10003b358  mov     x19, x0
  10003b35c  mov     x0, x22
  10003b360  bl      _objc_release
loc_10003b364:
  10003b364  mov     x0, x21
  10003b368  bl      _objc_release
  10003b36c  b       loc_10003b37c
  10003b370  b       loc_10003b378
  10003b374  b       loc_10003b378
loc_10003b378:
  10003b378  mov     x19, x0
loc_10003b37c:
  10003b37c  mov     x0, x20
  10003b380  b       loc_10003b3d4
  10003b384  mov     x19, x0
  10003b388  b       loc_10003b3d0
  10003b38c  mov     x19, x0
  10003b390  b       loc_10003b3c8
  10003b394  mov     x19, x0
  10003b398  b       loc_10003b3c0
  10003b39c  mov     x19, x0
  10003b3a0  b       loc_10003b3d0
  10003b3a4  mov     x19, x0
  10003b3a8  b       loc_10003b3c8
  10003b3ac  mov     x19, x0
  10003b3b0  b       loc_10003b3c0
loc_10003b3b4:
  10003b3b4  mov     x19, x0
  10003b3b8  mov     x0, x23
  10003b3bc  bl      _objc_release
loc_10003b3c0:
  10003b3c0  mov     x0, x22
  10003b3c4  bl      _objc_release
loc_10003b3c8:
  10003b3c8  mov     x0, x20
  10003b3cc  bl      _objc_release
loc_10003b3d0:
  10003b3d0  mov     x0, x21
loc_10003b3d4:
  10003b3d4  bl      _objc_release
loc_10003b3d8:
  10003b3d8  ldr     x0, [sp, #0x50]
loc_10003b3dc:
  10003b3dc  bl      _objc_release
  10003b3e0  ldr     x0, [sp, #0x58]
  10003b3e4  bl      _objc_release
  10003b3e8  mov     x0, x19
  10003b3ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController playSound]
; address 0x10003b3f0  size 252  kind objc
; ======================================================================
  10003b3f0  stp     x22, x21, [sp, #-0x30]!
  10003b3f4  stp     x20, x19, [sp, #0x10]
  10003b3f8  stp     x29, x30, [sp, #0x20]
  10003b3fc  add     x29, sp, #0x20
  10003b400  adrp    x8, #0x10041d000
  10003b404  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10003b408  adrp    x8, #0x100417000
  10003b40c  nop
  10003b410  ldr     x1, [x8, #0x4f0]
  10003b414  bl      _objc_msgSend                            ; [S3DEngine engine]
  10003b418  mov     x29, x29
  10003b41c  bl      _objc_retainAutoreleasedReturnValue
  10003b420  mov     x19, x0
  10003b424  adrp    x8, #0x100417000
  10003b428  nop
  10003b42c  ldr     x1, [x8, #0x4f8]
  10003b430  adrp    x2, #0x1003ba000
  10003b434  add     x2, x2, #0xcb0                           ; @"buttons"
  10003b438  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10003b43c  mov     x29, x29
  10003b440  bl      _objc_retainAutoreleasedReturnValue
  10003b444  mov     x21, x0
  10003b448  adrp    x8, #0x100417000
  10003b44c  nop
  10003b450  ldr     x1, [x8, #0x990]
  10003b454  adrp    x2, #0x1003ba000
  10003b458  add     x2, x2, #0xcd0                           ; @"click_button"
  10003b45c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  10003b460  mov     x29, x29
  10003b464  bl      _objc_retainAutoreleasedReturnValue
  10003b468  mov     x20, x0
  10003b46c  mov     x0, x21
  10003b470  bl      _objc_release
  10003b474  mov     x0, x19
  10003b478  bl      _objc_release
  10003b47c  adrp    x8, #0x100416000
  10003b480  nop
  10003b484  ldr     x1, [x8, #0xcb0]
  10003b488  fmov    s0, #3.00000000
  10003b48c  mov     x0, x20
  10003b490  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  10003b494  adrp    x8, #0x100417000
  10003b498  nop
  10003b49c  ldr     x1, [x8, #0x600]
  10003b4a0  mov     x0, x20
  10003b4a4  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  10003b4a8  mov     x0, x20
  10003b4ac  ldp     x29, x30, [sp, #0x20]
  10003b4b0  ldp     x20, x19, [sp, #0x10]
  10003b4b4  ldp     x22, x21, [sp], #0x30
  10003b4b8  b       _objc_release
  10003b4bc  mov     x22, x0
  10003b4c0  mov     x0, x20
  10003b4c4  b       loc_10003b4e0
  10003b4c8  mov     x22, x0
  10003b4cc  b       loc_10003b4dc
  10003b4d0  mov     x22, x0
  10003b4d4  mov     x0, x21
  10003b4d8  bl      _objc_release
loc_10003b4dc:
  10003b4dc  mov     x0, x19
loc_10003b4e0:
  10003b4e0  bl      _objc_release
  10003b4e4  mov     x0, x22
  10003b4e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController tableView:didSelectRowAtIndexPath:]
; address 0x10003b4ec  size 1308  kind objc
; ======================================================================
  10003b4ec  stp     x28, x27, [sp, #-0x60]!
  10003b4f0  stp     x26, x25, [sp, #0x10]
  10003b4f4  stp     x24, x23, [sp, #0x20]
  10003b4f8  stp     x22, x21, [sp, #0x30]
  10003b4fc  stp     x20, x19, [sp, #0x40]
  10003b500  stp     x29, x30, [sp, #0x50]
  10003b504  add     x29, sp, #0x50
  10003b508  mov     x20, x0
  10003b50c  mov     x0, x3
  10003b510  bl      _objc_retain
  10003b514  mov     x19, x0
  10003b518  adrp    x8, #0x100417000
  10003b51c  nop
  10003b520  ldr     x1, [x8, #0x350]
  10003b524  bl      _objc_msgSend                            ; [arg2 row]
  10003b528  mov     x23, x0
  10003b52c  adrp    x8, #0x100418000
  10003b530  nop
  10003b534  ldr     x1, [x8, #0x600]
  10003b538  mov     x0, x20
  10003b53c  bl      _objc_msgSend                            ; [self playSound]
  10003b540  adrp    x8, #0x10041e000
  10003b544  ldr     x0, [x8, #0x160]                         ; class ADArmoryPowerUpUpgraderViewController
  10003b548  adrp    x8, #0x100416000
  10003b54c  nop
  10003b550  ldr     x1, [x8, #0xac8]
  10003b554  bl      _objc_msgSend                            ; [ADArmoryPowerUpUpgraderViewController alloc]
  10003b558  mov     x22, x0
  10003b55c  adrp    x8, #0x10041d000
  10003b560  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  10003b564  adrp    x8, #0x100417000
  10003b568  nop
  10003b56c  ldr     x1, [x8, #0xa0]
  10003b570  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003b574  mov     x29, x29
  10003b578  bl      _objc_retainAutoreleasedReturnValue
  10003b57c  mov     x21, x0
  10003b580  adrp    x8, #0x100417000
  10003b584  nop
  10003b588  ldr     x1, [x8, #0xe0]
  10003b58c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray]
  10003b590  mov     x29, x29
  10003b594  bl      _objc_retainAutoreleasedReturnValue
  10003b598  mov     x24, x0
  10003b59c  sxtw    x2, w23
  10003b5a0  adrp    x8, #0x100416000
  10003b5a4  nop
  10003b5a8  ldr     x1, [x8, #0xc30]
  10003b5ac  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]]
  10003b5b0  mov     x29, x29
  10003b5b4  bl      _objc_retainAutoreleasedReturnValue
  10003b5b8  mov     x23, x0
  10003b5bc  adrp    x8, #0x100418000
  10003b5c0  nop
  10003b5c4  ldr     x1, [x8, #0x608]
  10003b5c8  mov     x0, x22
  10003b5cc  mov     x2, x23
  10003b5d0  bl      _objc_msgSend                            ; [[ADArmoryPowerUpUpgraderViewController alloc] initWithPowerupDictionary:[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]]]
  10003b5d4  adrp    x8, #0x10041f000
  10003b5d8  ldrsw   x26, [x8, #0x8a0]                        ; ivar offset ADArmoryPowerUpViewController.detailView (+0x140)
  10003b5dc  ldr     x8, [x20, x26]                           ; x8 = self->detailView
  10003b5e0  str     x0, [x20, x26]                           ; self->detailView = [[ADArmoryPowerUpUpgraderViewController alloc] initWithPowerupDictionary:[[[ADWeaponManager sharedWeaponManager] getAllPowerUpsArray] objectAtIndex:[arg2 row]]]
  10003b5e4  mov     x0, x8
  10003b5e8  bl      _objc_release
  10003b5ec  mov     x0, x23
  10003b5f0  bl      _objc_release
  10003b5f4  mov     x0, x24
  10003b5f8  bl      _objc_release
  10003b5fc  mov     x0, x21
  10003b600  bl      _objc_release
  10003b604  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10003b608  adrp    x8, #0x100418000
  10003b60c  nop
  10003b610  ldr     x1, [x8, #0x610]
  10003b614  mov     x2, x20
  10003b618  bl      _objc_msgSend                            ; [self->detailView setAlertViewDelegate:self]
  10003b61c  adrp    x8, #0x100416000
  10003b620  nop
  10003b624  ldr     x21, [x8, #0xfa0]
  10003b628  mov     x0, x20
  10003b62c  mov     x1, x21
  10003b630  bl      _objc_msgSend                            ; [self armoryViewController]
  10003b634  mov     x29, x29
  10003b638  bl      _objc_retainAutoreleasedReturnValue
  10003b63c  mov     x23, x0
  10003b640  adrp    x8, #0x100416000
  10003b644  nop
  10003b648  ldr     x22, [x8, #0xf18]
  10003b64c  mov     x1, x22
  10003b650  bl      _objc_msgSend                            ; [[self armoryViewController] view]
  10003b654  mov     x29, x29
  10003b658  bl      _objc_retainAutoreleasedReturnValue
  10003b65c  mov     x24, x0
  10003b660  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10003b664  mov     x1, x22
  10003b668  bl      _objc_msgSend                            ; [self->detailView view]
  10003b66c  mov     x29, x29
  10003b670  bl      _objc_retainAutoreleasedReturnValue
  10003b674  mov     x25, x0
  10003b678  adrp    x8, #0x100416000
  10003b67c  nop
  10003b680  ldr     x1, [x8, #0xf20]
  10003b684  mov     x0, x24
  10003b688  mov     x2, x25
  10003b68c  bl      _objc_msgSend                            ; [[[self armoryViewController] view] addSubview:[self->detailView view]]
  10003b690  mov     x0, x25
  10003b694  bl      _objc_release
  10003b698  mov     x0, x24
  10003b69c  bl      _objc_release
  10003b6a0  mov     x0, x23
  10003b6a4  bl      _objc_release
  10003b6a8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10003b6ac  cbz     w0, loc_10003b6e4                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  10003b6b0  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10003b6b4  mov     x1, x22
  10003b6b8  bl      _objc_msgSend                            ; [self->detailView view]
  10003b6bc  mov     x29, x29
  10003b6c0  bl      _objc_retainAutoreleasedReturnValue
  10003b6c4  mov     x23, x0
  10003b6c8  adrp    x8, #0x100418000
  10003b6cc  nop
  10003b6d0  ldr     x1, [x8, #0x618]
  10003b6d4  mov     w2, #1
  10003b6d8  bl      _objc_msgSend                            ; [[self->detailView view] setAccessibilityViewIsModal:1]
  10003b6dc  mov     x0, x23
  10003b6e0  bl      _objc_release
loc_10003b6e4:
  10003b6e4  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10003b6e8  mov     x1, x22
  10003b6ec  bl      _objc_msgSend                            ; [self->detailView view]
  10003b6f0  mov     x29, x29
  10003b6f4  bl      _objc_retainAutoreleasedReturnValue
  10003b6f8  mov     x23, x0
  10003b6fc  adrp    x8, #0x100417000
  10003b700  nop
  10003b704  ldr     x1, [x8, #0x998]
  10003b708  mov     w2, #1
  10003b70c  bl      _objc_msgSend                            ; [[self->detailView view] setUserInteractionEnabled:1]
  10003b710  mov     x0, x23
  10003b714  bl      _objc_release
  10003b718  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10003b71c  mov     x1, x22
  10003b720  bl      _objc_msgSend                            ; [self->detailView view]
  10003b724  mov     x29, x29
  10003b728  bl      _objc_retainAutoreleasedReturnValue
  10003b72c  mov     x23, x0
  10003b730  adrp    x8, #0x100417000
  10003b734  nop
  10003b738  ldr     x1, [x8, #0x670]
  10003b73c  mov     w2, #0x63
  10003b740  bl      _objc_msgSend                            ; [[self->detailView view] setTag:99]
  10003b744  mov     x0, x23
  10003b748  bl      _objc_release
  10003b74c  ldr     x23, [x20, x26]                          ; x23 = self->detailView
  10003b750  mov     x0, x20
  10003b754  mov     x1, x21
  10003b758  bl      _objc_msgSend                            ; [self armoryViewController]
  10003b75c  mov     x29, x29
  10003b760  bl      _objc_retainAutoreleasedReturnValue
  10003b764  mov     x24, x0
  10003b768  adrp    x8, #0x100418000
  10003b76c  nop
  10003b770  ldr     x1, [x8, #0x4b0]
  10003b774  mov     x0, x23
  10003b778  mov     x2, x24
  10003b77c  bl      _objc_msgSend                            ; [self->detailView setArmoryViewController:[self armoryViewController]]
  10003b780  mov     x0, x24
  10003b784  bl      _objc_release
  10003b788  mov     x0, x20
  10003b78c  mov     x1, x21
  10003b790  bl      _objc_msgSend                            ; [self armoryViewController]
  10003b794  mov     x29, x29
  10003b798  bl      _objc_retainAutoreleasedReturnValue
  10003b79c  mov     x23, x0
  10003b7a0  mov     x1, x22
  10003b7a4  bl      _objc_msgSend                            ; [[self armoryViewController] view]
  10003b7a8  mov     x29, x29
  10003b7ac  bl      _objc_retainAutoreleasedReturnValue
  10003b7b0  mov     x24, x0
  10003b7b4  ldr     x0, [x20, x26]                           ; x0 = self->detailView
  10003b7b8  mov     x1, x22
  10003b7bc  bl      _objc_msgSend                            ; [self->detailView view]
  10003b7c0  mov     x29, x29
  10003b7c4  bl      _objc_retainAutoreleasedReturnValue
  10003b7c8  mov     x26, x0
  10003b7cc  adrp    x8, #0x100417000
  10003b7d0  nop
  10003b7d4  ldr     x25, [x8, #0x190]
  10003b7d8  mov     x0, x24
  10003b7dc  mov     x1, x25
  10003b7e0  mov     x2, x26
  10003b7e4  bl      _objc_msgSend                            ; [[[self armoryViewController] view] bringSubviewToFront:[self->detailView view]]
  10003b7e8  mov     x0, x26
  10003b7ec  bl      _objc_release
  10003b7f0  mov     x0, x24
  10003b7f4  bl      _objc_release
  10003b7f8  mov     x0, x23
  10003b7fc  bl      _objc_release
  10003b800  mov     x0, x20
  10003b804  mov     x1, x21
  10003b808  bl      _objc_msgSend                            ; [self armoryViewController]
  10003b80c  mov     x29, x29
  10003b810  bl      _objc_retainAutoreleasedReturnValue
  10003b814  mov     x23, x0
  10003b818  mov     x1, x22
  10003b81c  bl      _objc_msgSend                            ; [[self armoryViewController] view]
  10003b820  mov     x29, x29
  10003b824  bl      _objc_retainAutoreleasedReturnValue
  10003b828  mov     x24, x0
  10003b82c  mov     x0, x20
  10003b830  mov     x1, x21
  10003b834  bl      _objc_msgSend                            ; [self armoryViewController]
  10003b838  mov     x29, x29
  10003b83c  bl      _objc_retainAutoreleasedReturnValue
  10003b840  mov     x26, x0
  10003b844  adrp    x8, #0x100417000
  10003b848  nop
  10003b84c  ldr     x27, [x8, #0x2a8]
  10003b850  mov     x1, x27
  10003b854  bl      _objc_msgSend                            ; [[self armoryViewController] statusBarViewController]
  10003b858  mov     x29, x29
  10003b85c  bl      _objc_retainAutoreleasedReturnValue
  10003b860  mov     x28, x0
  10003b864  mov     x1, x22
  10003b868  bl      _objc_msgSend                            ; [[[self armoryViewController] statusBarViewController] view]
  10003b86c  mov     x29, x29
  10003b870  bl      _objc_retainAutoreleasedReturnValue
  10003b874  mov     x22, x0
  10003b878  mov     x0, x24
  10003b87c  mov     x1, x25
  10003b880  mov     x2, x22
  10003b884  bl      _objc_msgSend                            ; [[[self armoryViewController] view] bringSubviewToFront:[[[self armoryViewController] statusBarViewController] view]]
  10003b888  mov     x0, x22
  10003b88c  bl      _objc_release
  10003b890  mov     x0, x28
  10003b894  bl      _objc_release
  10003b898  mov     x0, x26
  10003b89c  bl      _objc_release
  10003b8a0  mov     x0, x24
  10003b8a4  bl      _objc_release
  10003b8a8  mov     x0, x23
  10003b8ac  bl      _objc_release
  10003b8b0  mov     x0, x20
  10003b8b4  mov     x1, x21
  10003b8b8  bl      _objc_msgSend                            ; [self armoryViewController]
  10003b8bc  mov     x29, x29
  10003b8c0  bl      _objc_retainAutoreleasedReturnValue
  10003b8c4  mov     x21, x0
  10003b8c8  mov     x1, x27
  10003b8cc  bl      _objc_msgSend                            ; [[self armoryViewController] statusBarViewController]
  10003b8d0  mov     x29, x29
  10003b8d4  bl      _objc_retainAutoreleasedReturnValue
  10003b8d8  mov     x22, x0
  10003b8dc  adrp    x8, #0x100418000
  10003b8e0  nop
  10003b8e4  ldr     x1, [x8, #0x490]
  10003b8e8  mov     x2, x20
  10003b8ec  bl      _objc_msgSend                            ; [[[self armoryViewController] statusBarViewController] setBackButtonDelegate:self]
  10003b8f0  mov     x0, x22
  10003b8f4  bl      _objc_release
  10003b8f8  mov     x0, x21
  10003b8fc  bl      _objc_release
  10003b900  mov     x0, x19
  10003b904  ldp     x29, x30, [sp, #0x50]
  10003b908  ldp     x20, x19, [sp, #0x40]
  10003b90c  ldp     x22, x21, [sp, #0x30]
  10003b910  ldp     x24, x23, [sp, #0x20]
  10003b914  ldp     x26, x25, [sp, #0x10]
  10003b918  ldp     x28, x27, [sp], #0x60
  10003b91c  b       _objc_release
  10003b920  mov     x20, x0
  10003b924  b       loc_10003b9f8
  10003b928  mov     x20, x0
  10003b92c  b       loc_10003b9e4
  10003b930  mov     x20, x0
  10003b934  b       loc_10003b944
  10003b938  mov     x20, x0
  10003b93c  mov     x0, x23
  10003b940  bl      _objc_release
loc_10003b944:
  10003b944  mov     x0, x24
  10003b948  b       loc_10003b9e0
  10003b94c  b       loc_10003b9ec
  10003b950  mov     x20, x0
  10003b954  b       loc_10003b9c4
  10003b958  mov     x20, x0
  10003b95c  mov     x0, x25
  10003b960  b       loc_10003b9c0
  10003b964  b       loc_10003b9ec
  10003b968  b       loc_10003b9ec
  10003b96c  mov     x20, x0
  10003b970  mov     x0, x24
  10003b974  b       loc_10003b9f4
  10003b978  b       loc_10003b9ec
  10003b97c  mov     x20, x0
  10003b980  b       loc_10003b9c4
  10003b984  mov     x20, x0
  10003b988  b       loc_10003b9bc
  10003b98c  b       loc_10003b9ec
  10003b990  mov     x20, x0
  10003b994  b       loc_10003b9c4
  10003b998  mov     x20, x0
  10003b99c  b       loc_10003b9bc
  10003b9a0  mov     x20, x0
  10003b9a4  b       loc_10003b9b4
  10003b9a8  mov     x20, x0
  10003b9ac  mov     x0, x22
  10003b9b0  bl      _objc_release
loc_10003b9b4:
  10003b9b4  mov     x0, x28
  10003b9b8  bl      _objc_release
loc_10003b9bc:
  10003b9bc  mov     x0, x26
loc_10003b9c0:
  10003b9c0  bl      _objc_release
loc_10003b9c4:
  10003b9c4  mov     x0, x24
  10003b9c8  bl      _objc_release
  10003b9cc  b       loc_10003b9f0
  10003b9d0  mov     x20, x0
  10003b9d4  b       loc_10003b9e4
  10003b9d8  mov     x20, x0
  10003b9dc  mov     x0, x22
loc_10003b9e0:
  10003b9e0  bl      _objc_release
loc_10003b9e4:
  10003b9e4  mov     x0, x21
  10003b9e8  b       loc_10003b9f4
loc_10003b9ec:
  10003b9ec  mov     x20, x0
loc_10003b9f0:
  10003b9f0  mov     x0, x23
loc_10003b9f4:
  10003b9f4  bl      _objc_release
loc_10003b9f8:
  10003b9f8  mov     x0, x19
  10003b9fc  bl      _objc_release
  10003ba00  mov     x0, x20
  10003ba04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController alertView:willDismissWithButtonIndex:]
; address 0x10003ba08  size 476  kind objc
; ======================================================================
  10003ba08  stp     x24, x23, [sp, #-0x40]!
  10003ba0c  stp     x22, x21, [sp, #0x10]
  10003ba10  stp     x20, x19, [sp, #0x20]
  10003ba14  stp     x29, x30, [sp, #0x30]
  10003ba18  add     x29, sp, #0x30
  10003ba1c  mov     x20, x0
  10003ba20  adrp    x8, #0x100418000
  10003ba24  nop
  10003ba28  ldr     x1, [x8, #0x620]
  10003ba2c  mov     x0, x2
  10003ba30  mov     x2, x3
  10003ba34  bl      _objc_msgSend                            ; [arg1 buttonTitleAtIndex:arg2]
  10003ba38  mov     x29, x29
  10003ba3c  bl      _objc_retainAutoreleasedReturnValue
  10003ba40  mov     x19, x0
  10003ba44  adrp    x8, #0x10041d000
  10003ba48  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10003ba4c  adrp    x8, #0x100416000
  10003ba50  nop
  10003ba54  ldr     x1, [x8, #0xb58]
  10003ba58  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10003ba5c  mov     x29, x29
  10003ba60  bl      _objc_retainAutoreleasedReturnValue
  10003ba64  mov     x21, x0
  10003ba68  adrp    x8, #0x100416000
  10003ba6c  nop
  10003ba70  ldr     x1, [x8, #0xb60]
  10003ba74  mov     x4, #0
  10003ba78  adrp    x2, #0x1003bc000
  10003ba7c  add     x2, x2, #0x7f0                           ; @"COINS_ALERT_MORE"
  10003ba80  adrp    x3, #0x1003b9000
  10003ba84  add     x3, x3, #0x870                           ; @""
  10003ba88  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]
  10003ba8c  mov     x29, x29
  10003ba90  bl      _objc_retainAutoreleasedReturnValue
  10003ba94  mov     x22, x0
  10003ba98  adrp    x8, #0x100416000
  10003ba9c  nop
  10003baa0  ldr     x1, [x8, #0xf58]
  10003baa4  mov     x0, x19
  10003baa8  mov     x2, x22
  10003baac  bl      _objc_msgSend                            ; [[arg1 buttonTitleAtIndex:arg2] isEqualToString:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]]
  10003bab0  mov     x23, x0
  10003bab4  mov     x0, x22
  10003bab8  bl      _objc_release
  10003babc  mov     x0, x21
  10003bac0  bl      _objc_release
  10003bac4  cbz     w23, loc_10003bb74                       ; if ([[arg1 buttonTitleAtIndex:arg2] isEqualToString:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]] == 0)
  10003bac8  adrp    x8, #0x100416000
  10003bacc  nop
  10003bad0  ldr     x21, [x8, #0xfa0]
  10003bad4  mov     x0, x20
  10003bad8  mov     x1, x21
  10003badc  bl      _objc_msgSend                            ; [self armoryViewController]
  10003bae0  mov     x29, x29
  10003bae4  bl      _objc_retainAutoreleasedReturnValue
  10003bae8  mov     x22, x0
  10003baec  adrp    x8, #0x100418000
  10003baf0  nop
  10003baf4  ldr     x1, [x8, #0x628]
  10003baf8  mov     x2, #0
  10003bafc  bl      _objc_msgSend                            ; [[self armoryViewController] currencyButtonPressed:0]
  10003bb00  mov     x0, x22
  10003bb04  bl      _objc_release
  10003bb08  adrp    x8, #0x100418000
  10003bb0c  nop
  10003bb10  ldr     x1, [x8, #0x5e0]
  10003bb14  mov     x0, x20
  10003bb18  bl      _objc_msgSend                            ; [self removeDetailView]
  10003bb1c  mov     x0, x20
  10003bb20  mov     x1, x21
  10003bb24  bl      _objc_msgSend                            ; [self armoryViewController]
  10003bb28  mov     x29, x29
  10003bb2c  bl      _objc_retainAutoreleasedReturnValue
  10003bb30  mov     x21, x0
  10003bb34  adrp    x8, #0x100417000
  10003bb38  nop
  10003bb3c  ldr     x1, [x8, #0x2a8]
  10003bb40  bl      _objc_msgSend                            ; [[self armoryViewController] statusBarViewController]
  10003bb44  mov     x29, x29
  10003bb48  bl      _objc_retainAutoreleasedReturnValue
  10003bb4c  mov     x22, x0
  10003bb50  adrp    x8, #0x100418000
  10003bb54  nop
  10003bb58  ldr     x1, [x8, #0x490]
  10003bb5c  mov     x2, #0
  10003bb60  bl      _objc_msgSend                            ; [[[self armoryViewController] statusBarViewController] setBackButtonDelegate:0]
  10003bb64  mov     x0, x22
  10003bb68  bl      _objc_release
  10003bb6c  mov     x0, x21
  10003bb70  bl      _objc_release
loc_10003bb74:
  10003bb74  mov     x0, x19
  10003bb78  ldp     x29, x30, [sp, #0x30]
  10003bb7c  ldp     x20, x19, [sp, #0x20]
  10003bb80  ldp     x22, x21, [sp, #0x10]
  10003bb84  ldp     x24, x23, [sp], #0x40
  10003bb88  b       _objc_release
  10003bb8c  mov     x20, x0
  10003bb90  b       loc_10003bbd4
  10003bb94  mov     x20, x0
  10003bb98  b       loc_10003bbdc
  10003bb9c  mov     x20, x0
  10003bba0  b       loc_10003bbcc
  10003bba4  b       loc_10003bbc0
  10003bba8  mov     x20, x0
  10003bbac  mov     x0, x22
  10003bbb0  bl      _objc_release
  10003bbb4  b       loc_10003bbd4
  10003bbb8  mov     x20, x0
  10003bbbc  b       loc_10003bbcc
loc_10003bbc0:
  10003bbc0  mov     x20, x0
  10003bbc4  mov     x0, x22
  10003bbc8  bl      _objc_release
loc_10003bbcc:
  10003bbcc  mov     x0, x21
  10003bbd0  bl      _objc_release
loc_10003bbd4:
  10003bbd4  mov     x0, x19
  10003bbd8  bl      _objc_release
loc_10003bbdc:
  10003bbdc  mov     x0, x20
  10003bbe0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController viewWillLayoutSubviews]
; address 0x10003bbe4  size 172  kind objc
; ======================================================================
  10003bbe4  stp     x22, x21, [sp, #-0x30]!
  10003bbe8  stp     x20, x19, [sp, #0x10]
  10003bbec  stp     x29, x30, [sp, #0x20]
  10003bbf0  add     x29, sp, #0x20
  10003bbf4  mov     x19, x0
  10003bbf8  adrp    x8, #0x100417000
  10003bbfc  nop
  10003bc00  ldr     x20, [x8, #0x2d0]
  10003bc04  mov     x1, x20
  10003bc08  bl      _objc_msgSend                            ; [self tableView]
  10003bc0c  mov     x29, x29
  10003bc10  bl      _objc_retainAutoreleasedReturnValue
  10003bc14  mov     x21, x0
  10003bc18  adrp    x8, #0x100417000
  10003bc1c  nop
  10003bc20  ldr     x1, [x8, #0xb18]
  10003bc24  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  10003bc28  mov     x0, x21
  10003bc2c  bl      _objc_release
  10003bc30  mov     x0, x19
  10003bc34  mov     x1, x20
  10003bc38  bl      _objc_msgSend                            ; [self tableView]
  10003bc3c  mov     x29, x29
  10003bc40  bl      _objc_retainAutoreleasedReturnValue
  10003bc44  mov     x19, x0
  10003bc48  adrp    x8, #0x100417000
  10003bc4c  nop
  10003bc50  ldr     x1, [x8, #0x828]
  10003bc54  fmov    d0, #1.00000000
  10003bc58  bl      _objc_msgSend                            ; [[self tableView] setAlpha:1]
  10003bc5c  mov     x0, x19
  10003bc60  ldp     x29, x30, [sp, #0x20]
  10003bc64  ldp     x20, x19, [sp, #0x10]
  10003bc68  ldp     x22, x21, [sp], #0x30
  10003bc6c  b       _objc_release
  10003bc70  mov     x20, x0
  10003bc74  mov     x0, x21
  10003bc78  b       loc_10003bc84
  10003bc7c  mov     x20, x0
  10003bc80  mov     x0, x19
loc_10003bc84:
  10003bc84  bl      _objc_release
  10003bc88  mov     x0, x20
  10003bc8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpViewController removeDetailView]
; address 0x10003bc90  size 552  kind objc
; ======================================================================
  10003bc90  stp     x28, x27, [sp, #-0x60]!
  10003bc94  stp     x26, x25, [sp, #0x10]
  10003bc98  stp     x24, x23, [sp, #0x20]
  10003bc9c  stp     x22, x21, [sp, #0x30]
  10003bca0  stp     x20, x19, [sp, #0x40]
  10003bca4  stp     x29, x30, [sp, #0x50]
  10003bca8  add     x29, sp, #0x50
  10003bcac  sub     sp, sp, #0xd0
  10003bcb0  adrp    x25, #0x1003b0000
  10003bcb4  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  10003bcb8  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  10003bcbc  stur    x25, [x29, #-0x58]
  10003bcc0  stp     xzr, xzr, [sp, #0x38]
  10003bcc4  stp     xzr, xzr, [sp, #0x28]
  10003bcc8  stp     xzr, xzr, [sp, #0x18]
  10003bccc  stp     xzr, xzr, [sp, #8]
  10003bcd0  adrp    x8, #0x100416000
  10003bcd4  nop
  10003bcd8  ldr     x1, [x8, #0xfa0]
  10003bcdc  mov     x19, #0
  10003bce0  bl      _objc_msgSend                            ; [self armoryViewController]
  10003bce4  mov     x29, x29
  10003bce8  bl      _objc_retainAutoreleasedReturnValue
  10003bcec  mov     x19, x0
  10003bcf0  adrp    x8, #0x100416000
  10003bcf4  nop
  10003bcf8  ldr     x1, [x8, #0xf18]
  10003bcfc  bl      _objc_msgSend                            ; [[self armoryViewController] view]
  10003bd00  mov     x29, x29
  10003bd04  bl      _objc_retainAutoreleasedReturnValue
  10003bd08  mov     x22, x0
  10003bd0c  adrp    x8, #0x100417000
  10003bd10  nop
  10003bd14  ldr     x1, [x8, #0x1c8]
  10003bd18  bl      _objc_msgSend                            ; [[[self armoryViewController] view] subviews]
  10003bd1c  mov     x29, x29
  10003bd20  bl      _objc_retainAutoreleasedReturnValue
  10003bd24  mov     x20, x0
  10003bd28  mov     x0, x22
  10003bd2c  bl      _objc_release
  10003bd30  mov     x0, x19
  10003bd34  bl      _objc_release
  10003bd38  adrp    x8, #0x100416000
  10003bd3c  nop
  10003bd40  ldr     x21, [x8, #0xe00]
  10003bd44  add     x2, sp, #8
  10003bd48  add     x3, sp, #0x48
  10003bd4c  mov     w4, #0x10
  10003bd50  mov     x0, x20
  10003bd54  mov     x1, x21
  10003bd58  bl      _objc_msgSend                            ; [[[[self armoryViewController] view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10003bd5c  mov     x22, x0
  10003bd60  cbz     x22, loc_10003be20                       ; if ([[[[self armoryViewController] view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10003bd64  mov     x19, #0
  10003bd68  ldr     x8, [sp, #0x18]
  10003bd6c  ldr     x26, [x8]
  10003bd70  adrp    x8, #0x100417000
  10003bd74  add     x8, x8, #0x6b0                           ; &@selector(tag)
  10003bd78  ldr     x23, [x8]
loc_10003bd7c:
  10003bd7c  mov     x27, #0
loc_10003bd80:
  10003bd80  ldr     x8, [sp, #0x18]
  10003bd84  ldr     x8, [x8]
  10003bd88  cmp     x8, x26
  10003bd8c  b.eq    loc_10003bd98                            ; if (x8 == x26)
  10003bd90  mov     x0, x20
  10003bd94  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[self armoryViewController] view] subviews])
loc_10003bd98:
  10003bd98  ldr     x8, [sp, #0x10]
  10003bd9c  ldr     x24, [x8, x27, lsl #3]
  10003bda0  mov     x0, x24
  10003bda4  mov     x1, x23
  10003bda8  bl      _objc_msgSend                            ; [x0 tag]
  10003bdac  cmp     x0, #0x63
  10003bdb0  b.ne    loc_10003bdcc                            ; if ([x0 tag] != 99)
  10003bdb4  mov     x0, x24
  10003bdb8  bl      _objc_retain
  10003bdbc  mov     x24, x0
  10003bdc0  mov     x0, x19
  10003bdc4  bl      _objc_release
  10003bdc8  mov     x19, x24
loc_10003bdcc:
  10003bdcc  add     x27, x27, #1
  10003bdd0  cmp     x27, x22
  10003bdd4  b.lo    loc_10003bd80                            ; if ((x27 + 1) <u [[[[self armoryViewController] view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  10003bdd8  add     x2, sp, #8
  10003bddc  add     x3, sp, #0x48
  10003bde0  mov     w4, #0x10
  10003bde4  mov     x0, x20
  10003bde8  mov     x1, x21
  10003bdec  bl      _objc_msgSend                            ; [[[[self armoryViewController] view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10003bdf0  mov     x22, x0
  10003bdf4  cbnz    x22, loc_10003bd7c                       ; if ([[[[self armoryViewController] view] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
  10003bdf8  mov     x0, x20
  10003bdfc  bl      _objc_release
  10003be00  cbz     x19, loc_10003be28                       ; if (x19 == 0)
  10003be04  adrp    x8, #0x100417000
  10003be08  nop
  10003be0c  ldr     x1, [x8, #0x1d0]
  10003be10  mov     x0, x19
  10003be14  bl      _objc_msgSend                            ; [x0 removeFromSuperview]
  10003be18  mov     w20, #1
  10003be1c  b       loc_10003be30
loc_10003be20:
  10003be20  mov     x0, x20
  10003be24  bl      _objc_release
loc_10003be28:
  10003be28  mov     x19, #0
  10003be2c  mov     w20, #0
loc_10003be30:
  10003be30  mov     x0, x19
  10003be34  bl      _objc_release
  10003be38  ldur    x8, [x29, #-0x58]
  10003be3c  sub     x8, x25, x8
  10003be40  cbnz    x8, loc_10003be68                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10003be44  mov     x0, x20
  10003be48  sub     sp, x29, #0x50
  10003be4c  ldp     x29, x30, [sp, #0x50]
  10003be50  ldp     x20, x19, [sp, #0x40]
  10003be54  ldp     x22, x21, [sp, #0x30]
  10003be58  ldp     x24, x23, [sp, #0x20]
  10003be5c  ldp     x26, x25, [sp, #0x10]
  10003be60  ldp     x28, x27, [sp], #0x60
  10003be64  ret
loc_10003be68:
  10003be68  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10003be6c  mov     x21, x0
loc_10003be70:
  10003be70  mov     x0, x20
loc_10003be74:
  10003be74  bl      _objc_release
loc_10003be78:
  10003be78  mov     x0, x19
  10003be7c  bl      _objc_release
  10003be80  mov     x0, x21
  10003be84  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003be88  mov     x21, x0
  10003be8c  b       loc_10003be70
  10003be90  mov     x21, x0
  10003be94  b       loc_10003be78
  10003be98  mov     x21, x0
  10003be9c  b       loc_10003be78
  10003bea0  mov     x21, x0
  10003bea4  mov     x0, x22
  10003bea8  b       loc_10003be74
  10003beac  mov     x21, x0
  10003beb0  mov     x19, #0
  10003beb4  b       loc_10003be70

; ======================================================================
; -[ADArmoryPowerUpViewController tableView]
; address 0x10003beb8  size 16  kind objc
; ======================================================================
  10003beb8  adrp    x8, #0x10041f000
  10003bebc  ldrsw   x8, [x8, #0x8a4]                         ; ivar offset ADArmoryPowerUpViewController._tableView (+0x148)
  10003bec0  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  10003bec4  ret

; ======================================================================
; -[ADArmoryPowerUpViewController setTableView:]
; address 0x10003bec8  size 56  kind objc
; ======================================================================
  10003bec8  stp     x20, x19, [sp, #-0x20]!
  10003becc  stp     x29, x30, [sp, #0x10]
  10003bed0  add     x29, sp, #0x10
  10003bed4  mov     x19, x0
  10003bed8  adrp    x8, #0x10041f000
  10003bedc  ldrsw   x20, [x8, #0x8a4]                        ; ivar offset ADArmoryPowerUpViewController._tableView (+0x148)
  10003bee0  mov     x0, x2
  10003bee4  bl      _objc_retain
  10003bee8  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  10003beec  str     x0, [x19, x20]                           ; self->_tableView = arg1
  10003bef0  mov     x0, x8
  10003bef4  ldp     x29, x30, [sp, #0x10]
  10003bef8  ldp     x20, x19, [sp], #0x20
  10003befc  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpViewController armoryViewController]
; address 0x10003bf00  size 16  kind objc
; ======================================================================
  10003bf00  adrp    x8, #0x10041f000
  10003bf04  ldrsw   x8, [x8, #0x8a8]                         ; ivar offset ADArmoryPowerUpViewController._armoryViewController (+0x150)
  10003bf08  ldr     x0, [x0, x8]                             ; x0 = self->_armoryViewController
  10003bf0c  ret

; ======================================================================
; -[ADArmoryPowerUpViewController setArmoryViewController:]
; address 0x10003bf10  size 56  kind objc
; ======================================================================
  10003bf10  stp     x20, x19, [sp, #-0x20]!
  10003bf14  stp     x29, x30, [sp, #0x10]
  10003bf18  add     x29, sp, #0x10
  10003bf1c  mov     x19, x0
  10003bf20  adrp    x8, #0x10041f000
  10003bf24  ldrsw   x20, [x8, #0x8a8]                        ; ivar offset ADArmoryPowerUpViewController._armoryViewController (+0x150)
  10003bf28  mov     x0, x2
  10003bf2c  bl      _objc_retain
  10003bf30  ldr     x8, [x19, x20]                           ; x8 = self->_armoryViewController
  10003bf34  str     x0, [x19, x20]                           ; self->_armoryViewController = arg1
  10003bf38  mov     x0, x8
  10003bf3c  ldp     x29, x30, [sp, #0x10]
  10003bf40  ldp     x20, x19, [sp], #0x20
  10003bf44  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpViewController .cxx_destruct]
; address 0x10003bf48  size 84  kind objc
; ======================================================================
  10003bf48  stp     x20, x19, [sp, #-0x20]!
  10003bf4c  stp     x29, x30, [sp, #0x10]
  10003bf50  add     x29, sp, #0x10
  10003bf54  mov     x19, x0
  10003bf58  adrp    x8, #0x10041f000
  10003bf5c  ldrsw   x8, [x8, #0x8a8]                         ; ivar offset ADArmoryPowerUpViewController._armoryViewController (+0x150)
  10003bf60  add     x0, x19, x8
  10003bf64  mov     x1, #0
  10003bf68  bl      _objc_storeStrong
  10003bf6c  adrp    x8, #0x10041f000
  10003bf70  ldrsw   x8, [x8, #0x8a4]                         ; ivar offset ADArmoryPowerUpViewController._tableView (+0x148)
  10003bf74  add     x0, x19, x8
  10003bf78  mov     x1, #0
  10003bf7c  bl      _objc_storeStrong
  10003bf80  mov     x1, #0
  10003bf84  adrp    x8, #0x10041f000
  10003bf88  ldrsw   x8, [x8, #0x8a0]                         ; ivar offset ADArmoryPowerUpViewController.detailView (+0x140)
  10003bf8c  add     x0, x19, x8
  10003bf90  ldp     x29, x30, [sp, #0x10]
  10003bf94  ldp     x20, x19, [sp], #0x20
  10003bf98  b       _objc_storeStrong
