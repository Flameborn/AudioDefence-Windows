// unit ADSettingsViewController — 14 functions
//   0x1000af12c     140  -[ADSettingsViewController initWithNibName:bundle:]
//   0x1000af1b8     548  -[ADSettingsViewController viewDidLoad]
//   0x1000af3dc     260  -[ADSettingsViewController loadView]
//   0x1000af4e0     216  -[ADSettingsViewController viewWillAppear:]
//   0x1000af5b8     704  -[ADSettingsViewController addControlSchemePanel]
//   0x1000af878     148  -[ADSettingsViewController dealloc]
//   0x1000af90c      60  -[ADSettingsViewController didReceiveMemoryWarning]
//   0x1000af948     272  -[ADSettingsViewController backButtonPressed]
//   0x1000afa58      40  -[ADSettingsViewController validateButtonPressed:]
//   0x1000afa80      16  -[ADSettingsViewController controlSchemeView]
//   0x1000afa90      56  -[ADSettingsViewController setControlSchemeView:]
//   0x1000afac8      16  -[ADSettingsViewController controlScheme]
//   0x1000afad8      12  -[ADSettingsViewController setControlScheme:]
//   0x1000afae4      64  -[ADSettingsViewController .cxx_destruct]

; ======================================================================
; -[ADSettingsViewController initWithNibName:bundle:]
; address 0x1000af12c  size 140  kind objc
; ======================================================================
  1000af12c  stp     x22, x21, [sp, #-0x30]!
  1000af130  stp     x20, x19, [sp, #0x10]
  1000af134  stp     x29, x30, [sp, #0x20]
  1000af138  add     x29, sp, #0x20
  1000af13c  sub     sp, sp, #0x10
  1000af140  mov     x20, x3
  1000af144  mov     x21, x0
  1000af148  mov     x0, x2
  1000af14c  bl      _objc_retain
  1000af150  mov     x19, x0
  1000af154  str     x21, [sp]
  1000af158  adrp    x8, #0x10041e000
  1000af15c  ldr     x8, [x8, #0xf28]
  1000af160  str     x8, [sp, #8]
  1000af164  adrp    x8, #0x100416000
  1000af168  nop
  1000af16c  ldr     x1, [x8, #0xb40]
  1000af170  mov     x0, sp
  1000af174  mov     x2, x19
  1000af178  mov     x3, x20
  1000af17c  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000af180  mov     x20, x0
  1000af184  mov     x0, x19
  1000af188  bl      _objc_release
  1000af18c  mov     x0, x20
  1000af190  sub     sp, x29, #0x20
  1000af194  ldp     x29, x30, [sp, #0x20]
  1000af198  ldp     x20, x19, [sp, #0x10]
  1000af19c  ldp     x22, x21, [sp], #0x30
  1000af1a0  ret
  1000af1a4  mov     x20, x0
  1000af1a8  mov     x0, x19
  1000af1ac  bl      _objc_release
  1000af1b0  mov     x0, x20
  1000af1b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSettingsViewController viewDidLoad]
; address 0x1000af1b8  size 548  kind objc
; ======================================================================
  1000af1b8  stp     x22, x21, [sp, #-0x30]!
  1000af1bc  stp     x20, x19, [sp, #0x10]
  1000af1c0  stp     x29, x30, [sp, #0x20]
  1000af1c4  add     x29, sp, #0x20
  1000af1c8  sub     sp, sp, #0x10
  1000af1cc  mov     x19, x0
  1000af1d0  str     x19, [sp]
  1000af1d4  adrp    x8, #0x10041e000
  1000af1d8  ldr     x8, [x8, #0xf28]
  1000af1dc  str     x8, [sp, #8]
  1000af1e0  adrp    x8, #0x100416000
  1000af1e4  nop
  1000af1e8  ldr     x1, [x8, #0xb48]
  1000af1ec  mov     x0, sp
  1000af1f0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000af1f4  adrp    x8, #0x10041a000
  1000af1f8  nop
  1000af1fc  ldr     x1, [x8, #0x5d8]
  1000af200  mov     x0, x19
  1000af204  bl      _objc_msgSend                            ; [self addControlSchemePanel]
  1000af208  adrp    x8, #0x100417000
  1000af20c  nop
  1000af210  ldr     x20, [x8, #0x2a8]
  1000af214  mov     x0, x19
  1000af218  mov     x1, x20
  1000af21c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000af220  mov     x29, x29
  1000af224  bl      _objc_retainAutoreleasedReturnValue
  1000af228  mov     x21, x0
  1000af22c  adrp    x8, #0x100417000
  1000af230  nop
  1000af234  ldr     x1, [x8, #0x7c8]
  1000af238  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  1000af23c  mov     x29, x29
  1000af240  bl      _objc_retainAutoreleasedReturnValue
  1000af244  mov     x22, x0
  1000af248  adrp    x8, #0x100417000
  1000af24c  nop
  1000af250  ldr     x1, [x8, #0x920]
  1000af254  mov     x3, #0
  1000af258  adrp    x2, #0x1003bc000
  1000af25c  add     x2, x2, #0xff0                           ; @"Main Menu"
  1000af260  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setTitle:@"Main Menu" forState:0]
  1000af264  mov     x0, x22
  1000af268  bl      _objc_release
  1000af26c  mov     x0, x21
  1000af270  bl      _objc_release
  1000af274  mov     x0, x19
  1000af278  mov     x1, x20
  1000af27c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000af280  mov     x29, x29
  1000af284  bl      _objc_retainAutoreleasedReturnValue
  1000af288  mov     x21, x0
  1000af28c  adrp    x8, #0x100417000
  1000af290  nop
  1000af294  ldr     x1, [x8, #0x2b0]
  1000af298  mov     w2, #0
  1000af29c  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  1000af2a0  mov     x0, x21
  1000af2a4  bl      _objc_release
  1000af2a8  mov     x0, x19
  1000af2ac  mov     x1, x20
  1000af2b0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000af2b4  mov     x29, x29
  1000af2b8  bl      _objc_retainAutoreleasedReturnValue
  1000af2bc  mov     x21, x0
  1000af2c0  adrp    x8, #0x100417000
  1000af2c4  nop
  1000af2c8  ldr     x1, [x8, #0x2b8]
  1000af2cc  mov     w2, #1
  1000af2d0  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:1]
  1000af2d4  mov     x0, x21
  1000af2d8  bl      _objc_release
  1000af2dc  mov     x0, x19
  1000af2e0  mov     x1, x20
  1000af2e4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000af2e8  mov     x29, x29
  1000af2ec  bl      _objc_retainAutoreleasedReturnValue
  1000af2f0  mov     x20, x0
  1000af2f4  adrp    x8, #0x100417000
  1000af2f8  nop
  1000af2fc  ldr     x1, [x8, #0x2c0]
  1000af300  mov     w2, #1
  1000af304  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:1]
  1000af308  mov     x0, x20
  1000af30c  bl      _objc_release
  1000af310  adrp    x8, #0x10041d000
  1000af314  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000af318  adrp    x8, #0x100417000
  1000af31c  nop
  1000af320  ldr     x1, [x8, #0x4f0]
  1000af324  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000af328  mov     x29, x29
  1000af32c  bl      _objc_retainAutoreleasedReturnValue
  1000af330  mov     x20, x0
  1000af334  adrp    x8, #0x100417000
  1000af338  nop
  1000af33c  ldr     x1, [x8, #0x4f8]
  1000af340  adrp    x2, #0x1003bd000
  1000af344  add     x2, x2, #0x910                           ; @"headphonesTest"
  1000af348  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"headphonesTest"]
  1000af34c  mov     x29, x29
  1000af350  bl      _objc_retainAutoreleasedReturnValue
  1000af354  mov     x21, x0
  1000af358  adrp    x8, #0x100417000
  1000af35c  nop
  1000af360  ldr     x1, [x8, #0x508]
  1000af364  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"headphonesTest"] activate]
  1000af368  mov     x0, x21
  1000af36c  bl      _objc_release
  1000af370  mov     x0, x20
  1000af374  bl      _objc_release
  1000af378  sub     sp, x29, #0x20
  1000af37c  ldp     x29, x30, [sp, #0x20]
  1000af380  ldp     x20, x19, [sp, #0x10]
  1000af384  ldp     x22, x21, [sp], #0x30
  1000af388  ret
  1000af38c  b       loc_1000af3a4
  1000af390  mov     x19, x0
  1000af394  mov     x0, x22
  1000af398  bl      _objc_release
  1000af39c  b       loc_1000af3a8
  1000af3a0  b       loc_1000af3a4
loc_1000af3a4:
  1000af3a4  mov     x19, x0
loc_1000af3a8:
  1000af3a8  mov     x0, x21
  1000af3ac  b       loc_1000af3d0
  1000af3b0  mov     x19, x0
  1000af3b4  b       loc_1000af3cc
  1000af3b8  mov     x19, x0
  1000af3bc  b       loc_1000af3cc
  1000af3c0  mov     x19, x0
  1000af3c4  mov     x0, x21
  1000af3c8  bl      _objc_release
loc_1000af3cc:
  1000af3cc  mov     x0, x20
loc_1000af3d0:
  1000af3d0  bl      _objc_release
  1000af3d4  mov     x0, x19
  1000af3d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSettingsViewController loadView]
; address 0x1000af3dc  size 260  kind objc
; ======================================================================
  1000af3dc  stp     x22, x21, [sp, #-0x30]!
  1000af3e0  stp     x20, x19, [sp, #0x10]
  1000af3e4  stp     x29, x30, [sp, #0x20]
  1000af3e8  add     x29, sp, #0x20
  1000af3ec  sub     sp, sp, #0x20
  1000af3f0  mov     x19, x0
  1000af3f4  adrp    x22, #0x1003b0000
  1000af3f8  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000af3fc  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000af400  str     x22, [sp, #0x18]
  1000af404  adrp    x8, #0x1003bd000
  1000af408  add     x8, x8, #0xa50                           ; @"controlSchemeView"
  1000af40c  str     x8, [sp, #8]
  1000af410  adrp    x8, #0x10041d000
  1000af414  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000af418  adrp    x8, #0x100416000
  1000af41c  nop
  1000af420  ldr     x1, [x8, #0xec0]
  1000af424  mov     w2, #1
  1000af428  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000af42c  mov     x29, x29
  1000af430  bl      _objc_retainAutoreleasedReturnValue
  1000af434  mov     x20, x0
  1000af438  str     x20, [sp, #0x10]
  1000af43c  adrp    x8, #0x10041d000
  1000af440  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000af444  adrp    x8, #0x100416000
  1000af448  nop
  1000af44c  ldr     x1, [x8, #0xcd0]
  1000af450  add     x2, sp, #0x10
  1000af454  add     x3, sp, #8
  1000af458  mov     w4, #1
  1000af45c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  1000af460  mov     x29, x29
  1000af464  bl      _objc_retainAutoreleasedReturnValue
  1000af468  mov     x21, x0
  1000af46c  mov     x0, x20
  1000af470  bl      _objc_release
  1000af474  adrp    x8, #0x100416000
  1000af478  nop
  1000af47c  ldr     x1, [x8, #0xbf0]
  1000af480  adrp    x2, #0x1003be000
  1000af484  add     x2, x2, #0x9b0                           ; @"ADSettingsViewController"
  1000af488  mov     x0, x19
  1000af48c  mov     x3, x21
  1000af490  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADSettingsViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  1000af494  mov     x0, x21
  1000af498  bl      _objc_release
  1000af49c  ldr     x8, [sp, #0x18]
  1000af4a0  sub     x8, x22, x8
  1000af4a4  cbnz    x8, loc_1000af4bc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000af4a8  sub     sp, x29, #0x20
  1000af4ac  ldp     x29, x30, [sp, #0x20]
  1000af4b0  ldp     x20, x19, [sp, #0x10]
  1000af4b4  ldp     x22, x21, [sp], #0x30
  1000af4b8  ret
loc_1000af4bc:
  1000af4bc  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000af4c0  mov     x19, x0
  1000af4c4  mov     x0, x20
  1000af4c8  b       loc_1000af4d4
  1000af4cc  mov     x19, x0
  1000af4d0  mov     x0, x21
loc_1000af4d4:
  1000af4d4  bl      _objc_release
  1000af4d8  mov     x0, x19
  1000af4dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSettingsViewController viewWillAppear:]
; address 0x1000af4e0  size 216  kind objc
; ======================================================================
  1000af4e0  stp     x22, x21, [sp, #-0x30]!
  1000af4e4  stp     x20, x19, [sp, #0x10]
  1000af4e8  stp     x29, x30, [sp, #0x20]
  1000af4ec  add     x29, sp, #0x20
  1000af4f0  sub     sp, sp, #0x10
  1000af4f4  mov     x19, x2
  1000af4f8  mov     x21, x0
  1000af4fc  adrp    x8, #0x100417000
  1000af500  nop
  1000af504  ldr     x1, [x8, #0x2a8]
  1000af508  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000af50c  mov     x29, x29
  1000af510  bl      _objc_retainAutoreleasedReturnValue
  1000af514  mov     x20, x0
  1000af518  adrp    x8, #0x100417000
  1000af51c  nop
  1000af520  ldr     x1, [x8, #0x7c8]
  1000af524  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  1000af528  mov     x29, x29
  1000af52c  bl      _objc_retainAutoreleasedReturnValue
  1000af530  mov     x22, x0
  1000af534  adrp    x8, #0x100416000
  1000af538  nop
  1000af53c  ldr     x1, [x8, #0xba8]
  1000af540  mov     w2, #0
  1000af544  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setHidden:0]
  1000af548  mov     x0, x22
  1000af54c  bl      _objc_release
  1000af550  mov     x0, x20
  1000af554  bl      _objc_release
  1000af558  str     x21, [sp]
  1000af55c  adrp    x8, #0x10041e000
  1000af560  ldr     x8, [x8, #0xf28]
  1000af564  str     x8, [sp, #8]
  1000af568  adrp    x8, #0x100417000
  1000af56c  nop
  1000af570  ldr     x1, [x8, #0x928]
  1000af574  mov     x0, sp
  1000af578  mov     x2, x19
  1000af57c  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  1000af580  sub     sp, x29, #0x20
  1000af584  ldp     x29, x30, [sp, #0x20]
  1000af588  ldp     x20, x19, [sp, #0x10]
  1000af58c  ldp     x22, x21, [sp], #0x30
  1000af590  ret
  1000af594  mov     x19, x0
  1000af598  b       loc_1000af5a8
  1000af59c  mov     x19, x0
  1000af5a0  mov     x0, x22
  1000af5a4  bl      _objc_release
loc_1000af5a8:
  1000af5a8  mov     x0, x20
  1000af5ac  bl      _objc_release
  1000af5b0  mov     x0, x19
  1000af5b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSettingsViewController addControlSchemePanel]
; address 0x1000af5b8  size 704  kind objc
; ======================================================================
  1000af5b8  stp     x24, x23, [sp, #-0x40]!
  1000af5bc  stp     x22, x21, [sp, #0x10]
  1000af5c0  stp     x20, x19, [sp, #0x20]
  1000af5c4  stp     x29, x30, [sp, #0x30]
  1000af5c8  add     x29, sp, #0x30
  1000af5cc  mov     x19, x0
  1000af5d0  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000af5d4  cbz     w0, loc_1000af690                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  1000af5d8  adrp    x8, #0x10041e000
  1000af5dc  ldr     x0, [x8, #0x3f8]                         ; class Accessible_ADControlSchemeViewController
  1000af5e0  adrp    x8, #0x100416000
  1000af5e4  nop
  1000af5e8  ldr     x1, [x8, #0xac8]
  1000af5ec  bl      _objc_msgSend                            ; [Accessible_ADControlSchemeViewController alloc]
  1000af5f0  adrp    x8, #0x100416000
  1000af5f4  nop
  1000af5f8  ldr     x1, [x8, #0xb40]
  1000af5fc  mov     x3, #0
  1000af600  adrp    x2, #0x1003c0000
  1000af604  add     x2, x2, #0xff0                           ; @"Accessible_ADControlSchemeViewController"
  1000af608  bl      _objc_msgSend                            ; [[Accessible_ADControlSchemeViewController alloc] initWithNibName:@"Accessible_ADControlSchemeViewController" bundle:0]
  1000af60c  mov     x20, x0
  1000af610  adrp    x8, #0x100416000
  1000af614  nop
  1000af618  ldr     x1, [x8, #0xc08]
  1000af61c  mov     x0, x19
  1000af620  mov     x2, x20
  1000af624  bl      _objc_msgSend                            ; [self setControlScheme:[[Accessible_ADControlSchemeViewController alloc] initWithNibName:@"Accessible_ADControlSchemeViewController" bundle:0]]
  1000af628  mov     x0, x20
  1000af62c  bl      _objc_release
  1000af630  adrp    x8, #0x1003b0000
  1000af634  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  1000af638  ldr     w21, [x8]                                ; w21 = _UIAccessibilityScreenChangedNotification[+0x0]
  1000af63c  adrp    x8, #0x100417000
  1000af640  nop
  1000af644  ldr     x1, [x8, #0xc80]
  1000af648  mov     x0, x19
  1000af64c  bl      _objc_msgSend                            ; [self controlScheme]
  1000af650  mov     x29, x29
  1000af654  bl      _objc_retainAutoreleasedReturnValue
  1000af658  mov     x20, x0
  1000af65c  adrp    x8, #0x100417000
  1000af660  nop
  1000af664  ldr     x1, [x8, #0x2d0]
  1000af668  bl      _objc_msgSend                            ; [[self controlScheme] tableView]
  1000af66c  mov     x29, x29
  1000af670  bl      _objc_retainAutoreleasedReturnValue
  1000af674  mov     x22, x0
  1000af678  mov     x0, x21
  1000af67c  mov     x1, x22
  1000af680  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [[self controlScheme] tableView])
  1000af684  mov     x0, x22
  1000af688  bl      _objc_release
  1000af68c  b       loc_1000af6e0
loc_1000af690:
  1000af690  adrp    x8, #0x10041e000
  1000af694  ldr     x0, [x8, #0x400]                         ; class ADControlSchemeViewController
  1000af698  adrp    x8, #0x100416000
  1000af69c  nop
  1000af6a0  ldr     x1, [x8, #0xac8]
  1000af6a4  bl      _objc_msgSend                            ; [ADControlSchemeViewController alloc]
  1000af6a8  adrp    x8, #0x100416000
  1000af6ac  nop
  1000af6b0  ldr     x1, [x8, #0xb40]
  1000af6b4  mov     x3, #0
  1000af6b8  adrp    x2, #0x1003bd000
  1000af6bc  add     x2, x2, #0x5f0                           ; @"ADControlSchemeViewController"
  1000af6c0  bl      _objc_msgSend                            ; [[ADControlSchemeViewController alloc] initWithNibName:@"ADControlSchemeViewController" bundle:0]
  1000af6c4  mov     x20, x0
  1000af6c8  adrp    x8, #0x100416000
  1000af6cc  nop
  1000af6d0  ldr     x1, [x8, #0xc08]
  1000af6d4  mov     x0, x19
  1000af6d8  mov     x2, x20
  1000af6dc  bl      _objc_msgSend                            ; [self setControlScheme:[[ADControlSchemeViewController alloc] initWithNibName:@"ADControlSchemeViewController" bundle:0]]
loc_1000af6e0:
  1000af6e0  mov     x0, x20
  1000af6e4  bl      _objc_release
  1000af6e8  adrp    x8, #0x100416000
  1000af6ec  nop
  1000af6f0  ldr     x21, [x8, #0xf18]
  1000af6f4  mov     x0, x19
  1000af6f8  mov     x1, x21
  1000af6fc  bl      _objc_msgSend                            ; [self view]
  1000af700  mov     x29, x29
  1000af704  bl      _objc_retainAutoreleasedReturnValue
  1000af708  mov     x20, x0
  1000af70c  adrp    x8, #0x100417000
  1000af710  nop
  1000af714  ldr     x22, [x8, #0xc80]
  1000af718  mov     x0, x19
  1000af71c  mov     x1, x22
  1000af720  bl      _objc_msgSend                            ; [self controlScheme]
  1000af724  mov     x29, x29
  1000af728  bl      _objc_retainAutoreleasedReturnValue
  1000af72c  mov     x23, x0
  1000af730  mov     x1, x21
  1000af734  bl      _objc_msgSend                            ; [[self controlScheme] view]
  1000af738  mov     x29, x29
  1000af73c  bl      _objc_retainAutoreleasedReturnValue
  1000af740  mov     x24, x0
  1000af744  adrp    x8, #0x100416000
  1000af748  nop
  1000af74c  ldr     x1, [x8, #0xf20]
  1000af750  mov     x0, x20
  1000af754  mov     x2, x24
  1000af758  bl      _objc_msgSend                            ; [[self view] addSubview:[[self controlScheme] view]]
  1000af75c  mov     x0, x24
  1000af760  bl      _objc_release
  1000af764  mov     x0, x23
  1000af768  bl      _objc_release
  1000af76c  mov     x0, x20
  1000af770  bl      _objc_release
  1000af774  mov     x0, x19
  1000af778  mov     x1, x22
  1000af77c  bl      _objc_msgSend                            ; [self controlScheme]
  1000af780  mov     x29, x29
  1000af784  bl      _objc_retainAutoreleasedReturnValue
  1000af788  mov     x20, x0
  1000af78c  mov     x1, x21
  1000af790  bl      _objc_msgSend                            ; [[self controlScheme] view]
  1000af794  mov     x29, x29
  1000af798  bl      _objc_retainAutoreleasedReturnValue
  1000af79c  mov     x21, x0
  1000af7a0  adrp    x8, #0x10041a000
  1000af7a4  nop
  1000af7a8  ldr     x1, [x8, #0x5e0]
  1000af7ac  mov     x0, x19
  1000af7b0  bl      _objc_msgSend                            ; [self controlSchemeView]
  1000af7b4  mov     x29, x29
  1000af7b8  bl      _objc_retainAutoreleasedReturnValue
  1000af7bc  mov     x22, x0
  1000af7c0  adrp    x8, #0x100417000
  1000af7c4  nop
  1000af7c8  ldr     x1, [x8, #0x688]
  1000af7cc  bl      _objc_msgSend                            ; [[self controlSchemeView] center]
  1000af7d0  adrp    x8, #0x100417000
  1000af7d4  nop
  1000af7d8  ldr     x1, [x8, #0x1f8]
  1000af7dc  mov     x0, x21
  1000af7e0  bl      _objc_msgSend                            ; [[[self controlScheme] view] setCenter:{[[self controlSchemeView] center].0, [[self controlSchemeView] center].1}]
  1000af7e4  mov     x0, x22
  1000af7e8  bl      _objc_release
  1000af7ec  mov     x0, x21
  1000af7f0  bl      _objc_release
  1000af7f4  mov     x0, x20
  1000af7f8  ldp     x29, x30, [sp, #0x30]
  1000af7fc  ldp     x20, x19, [sp, #0x20]
  1000af800  ldp     x22, x21, [sp, #0x10]
  1000af804  ldp     x24, x23, [sp], #0x40
  1000af808  b       _objc_release
  1000af80c  mov     x19, x0
  1000af810  mov     x0, x22
  1000af814  bl      _objc_release
  1000af818  b       loc_1000af844
  1000af81c  b       loc_1000af864
  1000af820  mov     x19, x0
  1000af824  b       loc_1000af834
  1000af828  mov     x19, x0
  1000af82c  mov     x0, x24
  1000af830  bl      _objc_release
loc_1000af834:
  1000af834  mov     x0, x23
  1000af838  b       loc_1000af848
  1000af83c  b       loc_1000af864
  1000af840  mov     x19, x0
loc_1000af844:
  1000af844  mov     x0, x21
loc_1000af848:
  1000af848  bl      _objc_release
  1000af84c  b       loc_1000af868
  1000af850  b       loc_1000af864
  1000af854  b       loc_1000af864
  1000af858  mov     x19, x0
  1000af85c  mov     x0, x22
  1000af860  b       loc_1000af848
loc_1000af864:
  1000af864  mov     x19, x0
loc_1000af868:
  1000af868  mov     x0, x20
  1000af86c  bl      _objc_release
  1000af870  mov     x0, x19
  1000af874  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSettingsViewController dealloc]
; address 0x1000af878  size 148  kind objc
; ======================================================================
  1000af878  stp     x20, x19, [sp, #-0x20]!
  1000af87c  stp     x29, x30, [sp, #0x10]
  1000af880  add     x29, sp, #0x10
  1000af884  sub     sp, sp, #0x20
  1000af888  mov     x19, x0
  1000af88c  adrp    x8, #0x100416000
  1000af890  nop
  1000af894  ldr     x1, [x8, #0xc08]
  1000af898  mov     x2, #0
  1000af89c  bl      _objc_msgSend                            ; [self setControlScheme:0]
  1000af8a0  str     x19, [sp, #0x10]
  1000af8a4  adrp    x8, #0x10041e000
  1000af8a8  ldr     x8, [x8, #0xf28]
  1000af8ac  str     x8, [sp, #0x18]
  1000af8b0  adrp    x8, #0x100416000
  1000af8b4  nop
  1000af8b8  ldr     x1, [x8, #0xfc8]
  1000af8bc  add     x0, sp, #0x10
  1000af8c0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000af8c4  sub     sp, x29, #0x10
  1000af8c8  ldp     x29, x30, [sp, #0x10]
  1000af8cc  ldp     x20, x19, [sp], #0x20
  1000af8d0  ret
  1000af8d4  mov     x8, x19
  1000af8d8  mov     x19, x0
  1000af8dc  str     x8, [sp]
  1000af8e0  adrp    x8, #0x10041e000
  1000af8e4  ldr     x8, [x8, #0xf28]
  1000af8e8  str     x8, [sp, #8]
  1000af8ec  adrp    x8, #0x100416000
  1000af8f0  nop
  1000af8f4  ldr     x1, [x8, #0xfc8]
  1000af8f8  mov     x0, sp
  1000af8fc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000af900  mov     x0, x19
  1000af904  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000af908  bl      sub_10000b760

; ======================================================================
; -[ADSettingsViewController didReceiveMemoryWarning]
; address 0x1000af90c  size 60  kind objc
; ======================================================================
  1000af90c  stp     x29, x30, [sp, #-0x10]!
  1000af910  mov     x29, sp
  1000af914  sub     sp, sp, #0x10
  1000af918  str     x0, [sp]
  1000af91c  adrp    x8, #0x10041e000
  1000af920  ldr     x8, [x8, #0xf28]
  1000af924  str     x8, [sp, #8]
  1000af928  adrp    x8, #0x100416000
  1000af92c  nop
  1000af930  ldr     x1, [x8, #0xbf8]
  1000af934  mov     x0, sp
  1000af938  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000af93c  mov     sp, x29
  1000af940  ldp     x29, x30, [sp], #0x10
  1000af944  ret

; ======================================================================
; -[ADSettingsViewController backButtonPressed]
; address 0x1000af948  size 272  kind objc
; ======================================================================
  1000af948  stp     x20, x19, [sp, #-0x20]!
  1000af94c  stp     x29, x30, [sp, #0x10]
  1000af950  add     x29, sp, #0x10
  1000af954  adrp    x8, #0x10041d000
  1000af958  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000af95c  adrp    x8, #0x100417000
  1000af960  nop
  1000af964  ldr     x1, [x8, #0x4f0]
  1000af968  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000af96c  mov     x29, x29
  1000af970  bl      _objc_retainAutoreleasedReturnValue
  1000af974  mov     x19, x0
  1000af978  adrp    x8, #0x100417000
  1000af97c  nop
  1000af980  ldr     x1, [x8, #0x4f8]
  1000af984  adrp    x2, #0x1003bd000
  1000af988  add     x2, x2, #0x910                           ; @"headphonesTest"
  1000af98c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"headphonesTest"]
  1000af990  mov     x29, x29
  1000af994  bl      _objc_retainAutoreleasedReturnValue
  1000af998  mov     x20, x0
  1000af99c  adrp    x8, #0x100417000
  1000af9a0  nop
  1000af9a4  ldr     x1, [x8, #0x618]
  1000af9a8  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"headphonesTest"] deactivate]
  1000af9ac  mov     x0, x20
  1000af9b0  bl      _objc_release
  1000af9b4  mov     x0, x19
  1000af9b8  bl      _objc_release
  1000af9bc  adrp    x8, #0x10041d000
  1000af9c0  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000af9c4  adrp    x8, #0x100416000
  1000af9c8  nop
  1000af9cc  ldr     x1, [x8, #0xb28]
  1000af9d0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000af9d4  mov     x29, x29
  1000af9d8  bl      _objc_retainAutoreleasedReturnValue
  1000af9dc  mov     x19, x0
  1000af9e0  adrp    x8, #0x100416000
  1000af9e4  nop
  1000af9e8  ldr     x1, [x8, #0xc18]
  1000af9ec  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000af9f0  mov     x29, x29
  1000af9f4  bl      _objc_retainAutoreleasedReturnValue
  1000af9f8  mov     x20, x0
  1000af9fc  adrp    x8, #0x100416000
  1000afa00  nop
  1000afa04  ldr     x1, [x8, #0xc10]
  1000afa08  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  1000afa0c  mov     x0, x20
  1000afa10  bl      _objc_release
  1000afa14  mov     x0, x19
  1000afa18  ldp     x29, x30, [sp, #0x10]
  1000afa1c  ldp     x20, x19, [sp], #0x20
  1000afa20  b       _objc_release
  1000afa24  mov     x20, x0
  1000afa28  b       loc_1000afa48
  1000afa2c  b       loc_1000afa38
  1000afa30  mov     x20, x0
  1000afa34  b       loc_1000afa48
loc_1000afa38:
  1000afa38  mov     x1, x20
  1000afa3c  mov     x20, x0
  1000afa40  mov     x0, x1
  1000afa44  bl      _objc_release
loc_1000afa48:
  1000afa48  mov     x0, x19
  1000afa4c  bl      _objc_release
  1000afa50  mov     x0, x20
  1000afa54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSettingsViewController validateButtonPressed:]
; address 0x1000afa58  size 40  kind objc
; ======================================================================
  1000afa58  stp     x29, x30, [sp, #-0x10]!
  1000afa5c  mov     x29, sp
  1000afa60  adrp    x8, #0x100417000
  1000afa64  nop
  1000afa68  ldr     x1, [x8, #0x420]
  1000afa6c  mov     w2, #0
  1000afa70  mov     x3, #0
  1000afa74  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:0]
  1000afa78  ldp     x29, x30, [sp], #0x10
  1000afa7c  ret

; ======================================================================
; -[ADSettingsViewController controlSchemeView]
; address 0x1000afa80  size 16  kind objc
; ======================================================================
  1000afa80  adrp    x8, #0x100420000
  1000afa84  ldrsw   x8, [x8, #0x174]                         ; ivar offset ADSettingsViewController._controlSchemeView (+0x140)
  1000afa88  ldr     x0, [x0, x8]                             ; x0 = self->_controlSchemeView
  1000afa8c  ret

; ======================================================================
; -[ADSettingsViewController setControlSchemeView:]
; address 0x1000afa90  size 56  kind objc
; ======================================================================
  1000afa90  stp     x20, x19, [sp, #-0x20]!
  1000afa94  stp     x29, x30, [sp, #0x10]
  1000afa98  add     x29, sp, #0x10
  1000afa9c  mov     x19, x0
  1000afaa0  adrp    x8, #0x100420000
  1000afaa4  ldrsw   x20, [x8, #0x174]                        ; ivar offset ADSettingsViewController._controlSchemeView (+0x140)
  1000afaa8  mov     x0, x2
  1000afaac  bl      _objc_retain
  1000afab0  ldr     x8, [x19, x20]                           ; x8 = self->_controlSchemeView
  1000afab4  str     x0, [x19, x20]                           ; self->_controlSchemeView = arg1
  1000afab8  mov     x0, x8
  1000afabc  ldp     x29, x30, [sp, #0x10]
  1000afac0  ldp     x20, x19, [sp], #0x20
  1000afac4  b       _objc_release

; ======================================================================
; -[ADSettingsViewController controlScheme]
; address 0x1000afac8  size 16  kind objc
; ======================================================================
  1000afac8  adrp    x8, #0x100420000
  1000afacc  ldrsw   x2, [x8, #0x178]                         ; ivar offset ADSettingsViewController._controlScheme (+0x148)
  1000afad0  mov     w3, #1
  1000afad4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADSettingsViewController setControlScheme:]
; address 0x1000afad8  size 12  kind objc
; ======================================================================
  1000afad8  adrp    x8, #0x100420000
  1000afadc  ldrsw   x3, [x8, #0x178]                         ; ivar offset ADSettingsViewController._controlScheme (+0x148)
  1000afae0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADSettingsViewController .cxx_destruct]
; address 0x1000afae4  size 64  kind objc
; ======================================================================
  1000afae4  stp     x20, x19, [sp, #-0x20]!
  1000afae8  stp     x29, x30, [sp, #0x10]
  1000afaec  add     x29, sp, #0x10
  1000afaf0  mov     x19, x0
  1000afaf4  adrp    x8, #0x100420000
  1000afaf8  ldrsw   x8, [x8, #0x178]                         ; ivar offset ADSettingsViewController._controlScheme (+0x148)
  1000afafc  add     x0, x19, x8
  1000afb00  mov     x1, #0
  1000afb04  bl      _objc_storeStrong
  1000afb08  mov     x1, #0
  1000afb0c  adrp    x8, #0x100420000
  1000afb10  ldrsw   x8, [x8, #0x174]                         ; ivar offset ADSettingsViewController._controlSchemeView (+0x140)
  1000afb14  add     x0, x19, x8
  1000afb18  ldp     x29, x30, [sp, #0x10]
  1000afb1c  ldp     x20, x19, [sp], #0x20
  1000afb20  b       _objc_storeStrong
