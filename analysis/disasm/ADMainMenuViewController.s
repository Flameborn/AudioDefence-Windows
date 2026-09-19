// unit ADMainMenuViewController — 35 functions
//   0x1000645a8     140  -[ADMainMenuViewController initWithNibName:bundle:]
//   0x100064634    1368  -[ADMainMenuViewController viewDidLoad]
//   0x100064b8c     400  -[ADMainMenuViewController loadView]
//   0x100064d1c     388  -[ADMainMenuViewController viewDidAppear:]
//   0x100064ea0     252  -[ADMainMenuViewController viewDidAppear:]_block_invoke
//   0x100064f9c      12  sub_100064f9c
//   0x100064fa8       8  sub_100064fa8
//   0x100064fb0     148  -[ADMainMenuViewController armoryButtonPressed:]
//   0x100065044     148  -[ADMainMenuViewController cheatButtonPressed:]
//   0x1000650d8     648  -[ADMainMenuViewController playButtonPressed:]
//   0x100065360     148  -[ADMainMenuViewController settingsButtonTouched:]
//   0x1000653f4     148  -[ADMainMenuViewController moveToEncyclopedia:]
//   0x100065488     216  -[ADMainMenuViewController audioRouteChanged]
//   0x100065560     260  -[ADMainMenuViewController alertView:willDismissWithButtonIndex:]
//   0x100065664      16  -[ADMainMenuViewController authenticatePlayerOnGameCenter]
//   0x100065674     496  -[ADMainMenuViewController authenticateLocalPlayer]
//   0x100065864     172  -[ADMainMenuViewController authenticateLocalPlayer]_block_invoke
//   0x100065910      44  sub_100065910
//   0x10006593c      40  sub_10006593c
//   0x100065964     588  -[ADMainMenuViewController leaderboardsButtonPressed:]
//   0x100065bb0      40  -[ADMainMenuViewController presentGameCenter:]
//   0x100065bd8      40  -[ADMainMenuViewController gameCenterViewControllerDidFinish:]
//   0x100065c00     320  -[ADMainMenuViewController betaHasExpired]
//   0x100065d40      40  -[ADMainMenuViewController accessibilityPerformMagicTap]
//   0x100065d68      16  -[ADMainMenuViewController fullMoonView]
//   0x100065d78      56  -[ADMainMenuViewController setFullMoonView:]
//   0x100065db0      16  -[ADMainMenuViewController cheatMenu]
//   0x100065dc0      56  -[ADMainMenuViewController setCheatMenu:]
//   0x100065df8      16  -[ADMainMenuViewController versionNumberLabel]
//   0x100065e08      56  -[ADMainMenuViewController setVersionNumberLabel:]
//   0x100065e40      16  -[ADMainMenuViewController useHeadphones]
//   0x100065e50      56  -[ADMainMenuViewController setUseHeadphones:]
//   0x100065e88      16  -[ADMainMenuViewController slidingView]
//   0x100065e98      56  -[ADMainMenuViewController setSlidingView:]
//   0x100065ed0     124  -[ADMainMenuViewController .cxx_destruct]

; ======================================================================
; -[ADMainMenuViewController initWithNibName:bundle:]
; address 0x1000645a8  size 140  kind objc
; ======================================================================
  1000645a8  stp     x22, x21, [sp, #-0x30]!
  1000645ac  stp     x20, x19, [sp, #0x10]
  1000645b0  stp     x29, x30, [sp, #0x20]
  1000645b4  add     x29, sp, #0x20
  1000645b8  sub     sp, sp, #0x10
  1000645bc  mov     x20, x3
  1000645c0  mov     x21, x0
  1000645c4  mov     x0, x2
  1000645c8  bl      _objc_retain
  1000645cc  mov     x19, x0
  1000645d0  str     x21, [sp]
  1000645d4  adrp    x8, #0x10041e000
  1000645d8  ldr     x8, [x8, #0xd88]
  1000645dc  str     x8, [sp, #8]
  1000645e0  adrp    x8, #0x100416000
  1000645e4  nop
  1000645e8  ldr     x1, [x8, #0xb40]
  1000645ec  mov     x0, sp
  1000645f0  mov     x2, x19
  1000645f4  mov     x3, x20
  1000645f8  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000645fc  mov     x20, x0
  100064600  mov     x0, x19
  100064604  bl      _objc_release
  100064608  mov     x0, x20
  10006460c  sub     sp, x29, #0x20
  100064610  ldp     x29, x30, [sp, #0x20]
  100064614  ldp     x20, x19, [sp, #0x10]
  100064618  ldp     x22, x21, [sp], #0x30
  10006461c  ret
  100064620  mov     x20, x0
  100064624  mov     x0, x19
  100064628  bl      _objc_release
  10006462c  mov     x0, x20
  100064630  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController viewDidLoad]
; address 0x100064634  size 1368  kind objc
; ======================================================================
  100064634  stp     x24, x23, [sp, #-0x40]!
  100064638  stp     x22, x21, [sp, #0x10]
  10006463c  stp     x20, x19, [sp, #0x20]
  100064640  stp     x29, x30, [sp, #0x30]
  100064644  add     x29, sp, #0x30
  100064648  sub     sp, sp, #0x10
  10006464c  mov     x19, x0
  100064650  str     x19, [sp]
  100064654  adrp    x8, #0x10041e000
  100064658  ldr     x8, [x8, #0xd88]
  10006465c  str     x8, [sp, #8]
  100064660  adrp    x8, #0x100416000
  100064664  nop
  100064668  ldr     x1, [x8, #0xb48]
  10006466c  mov     x0, sp
  100064670  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100064674  adrp    x8, #0x10041e000
  100064678  ldr     x0, [x8]                                 ; class ADGameModifiers
  10006467c  adrp    x8, #0x100417000
  100064680  nop
  100064684  ldr     x1, [x8, #0x510]
  100064688  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10006468c  mov     x29, x29
  100064690  bl      _objc_retainAutoreleasedReturnValue
  100064694  mov     x20, x0
  100064698  adrp    x8, #0x100419000
  10006469c  nop
  1000646a0  ldr     x1, [x8, #0x458]
  1000646a4  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] fullMoon]
  1000646a8  mov     x22, x0
  1000646ac  mov     x0, x20
  1000646b0  bl      _objc_release
  1000646b4  adrp    x8, #0x100419000
  1000646b8  nop
  1000646bc  ldr     x1, [x8, #0x460]
  1000646c0  mov     x0, x19
  1000646c4  bl      _objc_msgSend                            ; [self fullMoonView]
  1000646c8  mov     x29, x29
  1000646cc  bl      _objc_retainAutoreleasedReturnValue
  1000646d0  mov     x21, x0
  1000646d4  adrp    x8, #0x100416000
  1000646d8  add     x8, x8, #0xba8                           ; &@selector(setHidden:)
  1000646dc  ldr     x20, [x8]
  1000646e0  cbz     w22, loc_1000646fc                       ; if ([[ADGameModifiers sharedModifiers] fullMoon] == 0)
  1000646e4  mov     w2, #0
  1000646e8  mov     x0, x21
  1000646ec  mov     x1, x20
  1000646f0  bl      _objc_msgSend                            ; [[self fullMoonView] setHidden:0]
  1000646f4  b       loc_10006470c
  1000646f8  b       loc_100064b78
loc_1000646fc:
  1000646fc  mov     w2, #1
  100064700  mov     x0, x21
  100064704  mov     x1, x20
  100064708  bl      _objc_msgSend                            ; [[self fullMoonView] setHidden:1]
loc_10006470c:
  10006470c  mov     x0, x21
  100064710  bl      _objc_release
  100064714  adrp    x8, #0x100417000
  100064718  nop
  10006471c  ldr     x22, [x8, #0x2a8]
  100064720  mov     x0, x19
  100064724  mov     x1, x22
  100064728  bl      _objc_msgSend                            ; [self statusBarViewController]
  10006472c  mov     x29, x29
  100064730  bl      _objc_retainAutoreleasedReturnValue
  100064734  mov     x23, x0
  100064738  adrp    x8, #0x100417000
  10006473c  nop
  100064740  ldr     x1, [x8, #0x2c8]
  100064744  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100064748  mov     x29, x29
  10006474c  bl      _objc_retainAutoreleasedReturnValue
  100064750  mov     x24, x0
  100064754  adrp    x8, #0x100416000
  100064758  nop
  10006475c  ldr     x21, [x8, #0xb68]
  100064760  adrp    x2, #0x1003be000
  100064764  add     x2, x2, #0x810                           ; @"AUDIO DEFENCE"
  100064768  mov     x1, x21
  10006476c  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"AUDIO DEFENCE"]
  100064770  mov     x0, x24
  100064774  bl      _objc_release
  100064778  mov     x0, x23
  10006477c  bl      _objc_release
  100064780  mov     x0, x19
  100064784  mov     x1, x22
  100064788  bl      _objc_msgSend                            ; [self statusBarViewController]
  10006478c  mov     x29, x29
  100064790  bl      _objc_retainAutoreleasedReturnValue
  100064794  mov     x23, x0
  100064798  adrp    x8, #0x100417000
  10006479c  nop
  1000647a0  ldr     x1, [x8, #0x2b0]
  1000647a4  mov     w2, #0
  1000647a8  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  1000647ac  mov     x0, x23
  1000647b0  bl      _objc_release
  1000647b4  mov     x0, x19
  1000647b8  mov     x1, x22
  1000647bc  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000647c0  mov     x29, x29
  1000647c4  bl      _objc_retainAutoreleasedReturnValue
  1000647c8  mov     x23, x0
  1000647cc  adrp    x8, #0x100417000
  1000647d0  nop
  1000647d4  ldr     x1, [x8, #0x2b8]
  1000647d8  mov     w2, #0
  1000647dc  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000647e0  mov     x0, x23
  1000647e4  bl      _objc_release
  1000647e8  mov     x0, x19
  1000647ec  mov     x1, x22
  1000647f0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000647f4  mov     x29, x29
  1000647f8  bl      _objc_retainAutoreleasedReturnValue
  1000647fc  mov     x23, x0
  100064800  adrp    x8, #0x100417000
  100064804  nop
  100064808  ldr     x1, [x8, #0x7d8]
  10006480c  mov     x2, x19
  100064810  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:self]
  100064814  mov     x0, x23
  100064818  bl      _objc_release
  10006481c  mov     x0, x19
  100064820  mov     x1, x22
  100064824  bl      _objc_msgSend                            ; [self statusBarViewController]
  100064828  mov     x29, x29
  10006482c  bl      _objc_retainAutoreleasedReturnValue
  100064830  mov     x22, x0
  100064834  adrp    x8, #0x100417000
  100064838  nop
  10006483c  ldr     x1, [x8, #0x7c8]
  100064840  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  100064844  mov     x29, x29
  100064848  bl      _objc_retainAutoreleasedReturnValue
  10006484c  mov     x23, x0
  100064850  mov     w2, #1
  100064854  mov     x1, x20
  100064858  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setHidden:1]
  10006485c  mov     x0, x23
  100064860  bl      _objc_release
  100064864  mov     x0, x22
  100064868  bl      _objc_release
  10006486c  adrp    x8, #0x100419000
  100064870  nop
  100064874  ldr     x1, [x8, #0x468]
  100064878  mov     x0, x19
  10006487c  bl      _objc_msgSend                            ; [self cheatMenu]
  100064880  mov     x29, x29
  100064884  bl      _objc_retainAutoreleasedReturnValue
  100064888  mov     x22, x0
  10006488c  mov     w2, #1
  100064890  mov     x1, x20
  100064894  bl      _objc_msgSend                            ; [[self cheatMenu] setHidden:1]
  100064898  mov     x0, x22
  10006489c  bl      _objc_release
  1000648a0  adrp    x8, #0x100419000
  1000648a4  nop
  1000648a8  ldr     x1, [x8, #0x470]
  1000648ac  mov     x0, x19
  1000648b0  bl      _objc_msgSend                            ; [self versionNumberLabel]
  1000648b4  mov     x29, x29
  1000648b8  bl      _objc_retainAutoreleasedReturnValue
  1000648bc  mov     x20, x0
  1000648c0  adrp    x2, #0x1003be000
  1000648c4  add     x2, x2, #0x830                           ; @"Version 1.1"
  1000648c8  mov     x1, x21
  1000648cc  bl      _objc_msgSend                            ; [[self versionNumberLabel] setText:@"Version 1.1"]
  1000648d0  mov     x0, x20
  1000648d4  bl      _objc_release
  1000648d8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000648dc  mov     x21, x0
  1000648e0  adrp    x8, #0x10041e000
  1000648e4  ldr     x0, [x8, #8]                             ; class ADTracker
  1000648e8  adrp    x8, #0x100416000
  1000648ec  nop
  1000648f0  ldr     x20, [x8, #0xac0]
  1000648f4  mov     x1, x20
  1000648f8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000648fc  adrp    x8, #0x1003be000
  100064900  add     x8, x8, #0x870                           ; @"NO"
  100064904  adrp    x9, #0x1003be000
  100064908  add     x9, x9, #0x850                           ; @"YES"
  10006490c  cmp     w21, #0
  100064910  csel    x22, x9, x8, ne
  100064914  bl      _objc_retainAutoreleasedReturnValue
  100064918  mov     x21, x0
  10006491c  adrp    x8, #0x100417000
  100064920  nop
  100064924  ldr     x1, [x8, #0x9b8]
  100064928  mov     x4, #0
  10006492c  mov     x5, #0
  100064930  adrp    x3, #0x1003bb000
  100064934  add     x3, x3, #0x890                           ; @"Accessibility"
  100064938  mov     x2, x22
  10006493c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:(UIAccessibilityIsVoiceOverRunning() != 0 ? @"YES" : @"NO") ForDimension:@"Accessibility" AndValue:0 ForMetric:0]
  100064940  mov     x0, x21
  100064944  bl      _objc_release
  100064948  adrp    x8, #0x10041d000
  10006494c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100064950  mov     x1, x20
  100064954  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100064958  mov     x29, x29
  10006495c  bl      _objc_retainAutoreleasedReturnValue
  100064960  mov     x21, x0
  100064964  adrp    x8, #0x100417000
  100064968  nop
  10006496c  ldr     x1, [x8, #0x2f8]
  100064970  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100064974  mov     x29, x29
  100064978  bl      _objc_retainAutoreleasedReturnValue
  10006497c  mov     x20, x0
  100064980  mov     x0, x21
  100064984  bl      _objc_release
  100064988  adrp    x8, #0x1003b8000
  10006498c  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  100064990  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  100064994  adrp    x8, #0x100417000
  100064998  nop
  10006499c  ldr     x1, [x8, #0x300]
  1000649a0  adrp    x3, #0x1003be000
  1000649a4  add     x3, x3, #0x890                           ; @"Home Screen"
  1000649a8  mov     x0, x20
  1000649ac  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:@"Home Screen"]
  1000649b0  adrp    x8, #0x10041d000
  1000649b4  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000649b8  adrp    x8, #0x100417000
  1000649bc  nop
  1000649c0  ldr     x1, [x8, #0x308]
  1000649c4  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createAppView]
  1000649c8  mov     x29, x29
  1000649cc  bl      _objc_retainAutoreleasedReturnValue
  1000649d0  mov     x21, x0
  1000649d4  adrp    x8, #0x100417000
  1000649d8  nop
  1000649dc  ldr     x1, [x8, #0x310]
  1000649e0  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createAppView] build]
  1000649e4  mov     x29, x29
  1000649e8  bl      _objc_retainAutoreleasedReturnValue
  1000649ec  mov     x22, x0
  1000649f0  adrp    x8, #0x100417000
  1000649f4  nop
  1000649f8  ldr     x1, [x8, #0x318]
  1000649fc  mov     x0, x20
  100064a00  mov     x2, x22
  100064a04  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createAppView] build]]
  100064a08  mov     x0, x22
  100064a0c  bl      _objc_release
  100064a10  mov     x0, x21
  100064a14  bl      _objc_release
  100064a18  adrp    x8, #0x10041d000
  100064a1c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100064a20  adrp    x8, #0x100416000
  100064a24  nop
  100064a28  ldr     x1, [x8, #0xe88]
  100064a2c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100064a30  mov     x29, x29
  100064a34  bl      _objc_retainAutoreleasedReturnValue
  100064a38  mov     x21, x0
  100064a3c  adrp    x8, #0x100419000
  100064a40  nop
  100064a44  ldr     x22, [x8, #0x478]
  100064a48  adrp    x8, #0x100416000
  100064a4c  nop
  100064a50  ldr     x1, [x8, #0xe98]
  100064a54  mov     x5, #0
  100064a58  adrp    x4, #0x1003be000
  100064a5c  add     x4, x4, #0x8b0                           ; @"AD_MESSAGE_AudioRouteChanged"
  100064a60  mov     x2, x19
  100064a64  mov     x3, x22
  100064a68  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(audioRouteChanged) name:@"AD_MESSAGE_AudioRouteChanged" object:0]
  100064a6c  mov     x0, x21
  100064a70  bl      _objc_release
  100064a74  mov     x0, x19
  100064a78  mov     x1, x22
  100064a7c  bl      _objc_msgSend                            ; [self audioRouteChanged]
  100064a80  adrp    x8, #0x10041d000
  100064a84  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100064a88  adrp    x8, #0x100416000
  100064a8c  nop
  100064a90  ldr     x1, [x8, #0xb28]
  100064a94  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100064a98  mov     x29, x29
  100064a9c  bl      _objc_retainAutoreleasedReturnValue
  100064aa0  mov     x21, x0
  100064aa4  adrp    x8, #0x100417000
  100064aa8  nop
  100064aac  ldr     x1, [x8, #0xcf8]
  100064ab0  mov     w2, #0
  100064ab4  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] setIdleTimerDisabled:0]
  100064ab8  mov     x0, x21
  100064abc  bl      _objc_release
  100064ac0  mov     x0, x20
  100064ac4  bl      _objc_release
  100064ac8  sub     sp, x29, #0x30
  100064acc  ldp     x29, x30, [sp, #0x30]
  100064ad0  ldp     x20, x19, [sp, #0x20]
  100064ad4  ldp     x22, x21, [sp, #0x10]
  100064ad8  ldp     x24, x23, [sp], #0x40
  100064adc  ret
  100064ae0  b       loc_100064b3c
  100064ae4  mov     x19, x0
  100064ae8  b       loc_100064b84
  100064aec  b       loc_100064b3c
  100064af0  b       loc_100064b0c
  100064af4  mov     x19, x0
  100064af8  mov     x0, x24
  100064afc  bl      _objc_release
  100064b00  b       loc_100064b10
  100064b04  b       loc_100064b0c
  100064b08  b       loc_100064b0c
loc_100064b0c:
  100064b0c  mov     x19, x0
loc_100064b10:
  100064b10  mov     x0, x23
  100064b14  b       loc_100064b80
  100064b18  mov     x19, x0
  100064b1c  b       loc_100064b34
  100064b20  mov     x19, x0
  100064b24  mov     x0, x23
  100064b28  bl      _objc_release
  100064b2c  b       loc_100064b34
  100064b30  mov     x19, x0
loc_100064b34:
  100064b34  mov     x0, x22
  100064b38  b       loc_100064b80
loc_100064b3c:
  100064b3c  mov     x19, x0
  100064b40  b       loc_100064b70
  100064b44  b       loc_100064b78
  100064b48  b       loc_100064b78
  100064b4c  b       loc_100064b64
  100064b50  mov     x19, x0
  100064b54  mov     x0, x22
  100064b58  bl      _objc_release
  100064b5c  b       loc_100064b68
  100064b60  b       loc_100064b64
loc_100064b64:
  100064b64  mov     x19, x0
loc_100064b68:
  100064b68  mov     x0, x21
  100064b6c  bl      _objc_release
loc_100064b70:
  100064b70  mov     x0, x20
  100064b74  b       loc_100064b80
loc_100064b78:
  100064b78  mov     x19, x0
  100064b7c  mov     x0, x21
loc_100064b80:
  100064b80  bl      _objc_release
loc_100064b84:
  100064b84  mov     x0, x19
  100064b88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController loadView]
; address 0x100064b8c  size 400  kind objc
; ======================================================================
  100064b8c  stp     x24, x23, [sp, #-0x40]!
  100064b90  stp     x22, x21, [sp, #0x10]
  100064b94  stp     x20, x19, [sp, #0x20]
  100064b98  stp     x29, x30, [sp, #0x30]
  100064b9c  add     x29, sp, #0x30
  100064ba0  sub     sp, sp, #0x40
  100064ba4  mov     x20, x0
  100064ba8  adrp    x24, #0x1003b0000
  100064bac  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100064bb0  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  100064bb4  str     x24, [sp, #0x38]
  100064bb8  adrp    x8, #0x1003be000
  100064bbc  add     x8, x8, #0x8d0                           ; @"cheatMenu"
  100064bc0  str     x8, [sp, #8]
  100064bc4  adrp    x23, #0x10041d000
  100064bc8  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100064bcc  adrp    x8, #0x100416000
  100064bd0  nop
  100064bd4  ldr     x22, [x8, #0xec0]
  100064bd8  mov     w2, #1
  100064bdc  mov     x1, x22
  100064be0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100064be4  mov     x29, x29
  100064be8  bl      _objc_retainAutoreleasedReturnValue
  100064bec  mov     x19, x0
  100064bf0  str     x19, [sp, #0x20]
  100064bf4  adrp    x8, #0x1003be000
  100064bf8  add     x8, x8, #0x8f0                           ; @"useHeadphones"
  100064bfc  str     x8, [sp, #0x10]
  100064c00  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100064c04  mov     w2, #2
  100064c08  mov     x1, x22
  100064c0c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100064c10  bl      _objc_retain
  100064c14  mov     x21, x0
  100064c18  str     x21, [sp, #0x28]
  100064c1c  adrp    x8, #0x1003be000
  100064c20  add     x8, x8, #0x910                           ; @"slidingView"
  100064c24  str     x8, [sp, #0x18]
  100064c28  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100064c2c  mov     w2, #3
  100064c30  mov     x1, x22
  100064c34  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100064c38  bl      _objc_retain
  100064c3c  mov     x22, x0
  100064c40  str     x22, [sp, #0x30]
  100064c44  adrp    x8, #0x10041d000
  100064c48  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100064c4c  adrp    x8, #0x100416000
  100064c50  nop
  100064c54  ldr     x1, [x8, #0xcd0]
  100064c58  add     x2, sp, #0x20
  100064c5c  add     x3, sp, #8
  100064c60  mov     w4, #3
  100064c64  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]
  100064c68  mov     x29, x29
  100064c6c  bl      _objc_retainAutoreleasedReturnValue
  100064c70  mov     x23, x0
  100064c74  mov     x0, x22
  100064c78  bl      _objc_release
  100064c7c  mov     x0, x21
  100064c80  bl      _objc_release
  100064c84  mov     x0, x19
  100064c88  bl      _objc_release
  100064c8c  adrp    x8, #0x100416000
  100064c90  nop
  100064c94  ldr     x1, [x8, #0xbf0]
  100064c98  adrp    x2, #0x1003be000
  100064c9c  add     x2, x2, #0x930                           ; @"ADMainMenuViewController"
  100064ca0  mov     x0, x20
  100064ca4  mov     x3, x23
  100064ca8  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADMainMenuViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]]
  100064cac  mov     x0, x23
  100064cb0  bl      _objc_release
  100064cb4  ldr     x8, [sp, #0x38]
  100064cb8  sub     x8, x24, x8
  100064cbc  cbnz    x8, loc_100064cd8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100064cc0  sub     sp, x29, #0x30
  100064cc4  ldp     x29, x30, [sp, #0x30]
  100064cc8  ldp     x20, x19, [sp, #0x20]
  100064ccc  ldp     x22, x21, [sp, #0x10]
  100064cd0  ldp     x24, x23, [sp], #0x40
  100064cd4  ret
loc_100064cd8:
  100064cd8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100064cdc  mov     x20, x0
  100064ce0  b       loc_100064d00
  100064ce4  mov     x20, x0
  100064ce8  b       loc_100064cf8
  100064cec  mov     x20, x0
  100064cf0  mov     x0, x22
  100064cf4  bl      _objc_release
loc_100064cf8:
  100064cf8  mov     x0, x21
  100064cfc  bl      _objc_release
loc_100064d00:
  100064d00  mov     x0, x19
  100064d04  b       loc_100064d10
  100064d08  mov     x20, x0
  100064d0c  mov     x0, x23
loc_100064d10:
  100064d10  bl      _objc_release
  100064d14  mov     x0, x20
  100064d18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController viewDidAppear:]
; address 0x100064d1c  size 388  kind objc
; ======================================================================
  100064d1c  stp     x24, x23, [sp, #-0x40]!
  100064d20  stp     x22, x21, [sp, #0x10]
  100064d24  stp     x20, x19, [sp, #0x20]
  100064d28  stp     x29, x30, [sp, #0x30]
  100064d2c  add     x29, sp, #0x30
  100064d30  sub     sp, sp, #0x40
  100064d34  mov     x20, x0
  100064d38  str     x20, [sp, #0x30]
  100064d3c  adrp    x8, #0x10041e000
  100064d40  ldr     x8, [x8, #0xd88]
  100064d44  str     x8, [sp, #0x38]
  100064d48  adrp    x8, #0x100417000
  100064d4c  nop
  100064d50  ldr     x1, [x8, #0x938]
  100064d54  add     x0, sp, #0x30
  100064d58  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  100064d5c  add     x0, sp, #0x28
  100064d60  mov     x1, x20
  100064d64  bl      _objc_initWeak                           ; objc_initWeak(&sp[0x28], self)
  100064d68  adrp    x8, #0x100419000
  100064d6c  nop
  100064d70  ldr     x21, [x8, #0x480]
  100064d74  mov     x0, x20
  100064d78  mov     x1, x21
  100064d7c  bl      _objc_msgSend                            ; [self slidingView]
  100064d80  mov     x22, x0
  100064d84  adrp    x8, #0x1003b0000
  100064d88  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100064d8c  mov     x9, sp
  100064d90  mov     w10, #-0x3e000000
  100064d94  add     x19, x9, #0x20
  100064d98  str     x8, [sp]
  100064d9c  stp     w10, wzr, [sp, #8]
  100064da0  adr     x8, #0x100064ea0                         ; &-[ADMainMenuViewController viewDidAppear:]_block_invoke
  100064da4  nop
  100064da8  str     x8, [sp, #0x10]
  100064dac  adrp    x8, #0x1003b1000
  100064db0  add     x8, x8, #0xd00                           ; &d_1003b1d00
  100064db4  str     x8, [sp, #0x18]
  100064db8  mov     x0, x22
  100064dbc  bl      _objc_retain
  100064dc0  mov     x23, x0
  100064dc4  add     x0, sp, #0x28
  100064dc8  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(&sp[0x28])
  100064dcc  mov     x24, x0
  100064dd0  mov     x0, x19
  100064dd4  mov     x1, x24
  100064dd8  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x0] + 32), objc_loadWeakRetained(&sp[0x28]))
  100064ddc  mov     x0, x24
  100064de0  bl      _objc_release
  100064de4  adrp    x8, #0x100417000
  100064de8  nop
  100064dec  ldr     x1, [x8, #0x950]
  100064df0  mov     x2, sp
  100064df4  mov     x0, x22
  100064df8  bl      _objc_msgSend                            ; [[self slidingView] setSlideCompletion:^{-[ADMainMenuViewController viewDidAppear:]_block_invoke captures +0x30=self, +0x38=ADMainMenuViewController}]
  100064dfc  mov     x0, x23
  100064e00  bl      _objc_release
  100064e04  mov     x0, x20
  100064e08  mov     x1, x21
  100064e0c  bl      _objc_msgSend                            ; [self slidingView]
  100064e10  mov     x29, x29
  100064e14  bl      _objc_retainAutoreleasedReturnValue
  100064e18  mov     x21, x0
  100064e1c  adrp    x8, #0x100417000
  100064e20  nop
  100064e24  ldr     x1, [x8, #0x948]
  100064e28  bl      _objc_msgSend                            ; [[self slidingView] slide]
  100064e2c  mov     x0, x21
  100064e30  bl      _objc_release
  100064e34  mov     x0, x19
  100064e38  bl      _objc_destroyWeak
  100064e3c  add     x0, sp, #0x28
  100064e40  bl      _objc_destroyWeak
  100064e44  sub     sp, x29, #0x30
  100064e48  ldp     x29, x30, [sp, #0x30]
  100064e4c  ldp     x20, x19, [sp, #0x20]
  100064e50  ldp     x22, x21, [sp, #0x10]
  100064e54  ldp     x24, x23, [sp], #0x40
  100064e58  ret
  100064e5c  mov     x20, x0
  100064e60  b       loc_100064e90
  100064e64  mov     x20, x0
  100064e68  mov     x0, x23
  100064e6c  bl      _objc_release
  100064e70  b       loc_100064e88
  100064e74  mov     x20, x0
  100064e78  b       loc_100064e88
  100064e7c  mov     x20, x0
  100064e80  mov     x0, x21
  100064e84  bl      _objc_release
loc_100064e88:
  100064e88  mov     x0, x19
  100064e8c  bl      _objc_destroyWeak
loc_100064e90:
  100064e90  add     x0, sp, #0x28
  100064e94  bl      _objc_destroyWeak
  100064e98  mov     x0, x20
  100064e9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController viewDidAppear:]_block_invoke
; address 0x100064ea0  size 252  kind block
; ======================================================================
  100064ea0  stp     d9, d8, [sp, #-0x40]!
  100064ea4  stp     x22, x21, [sp, #0x10]
  100064ea8  stp     x20, x19, [sp, #0x20]
  100064eac  stp     x29, x30, [sp, #0x30]
  100064eb0  add     x29, sp, #0x30
  100064eb4  mov     x19, x0
  100064eb8  adrp    x8, #0x10041e000
  100064ebc  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100064ec0  adrp    x8, #0x100417000
  100064ec4  nop
  100064ec8  ldr     x1, [x8, #0x788]
  100064ecc  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100064ed0  mov     x29, x29
  100064ed4  bl      _objc_retainAutoreleasedReturnValue
  100064ed8  mov     x20, x0
  100064edc  adrp    x8, #0x100418000
  100064ee0  nop
  100064ee4  ldr     x1, [x8, #0xa90]
  100064ee8  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  100064eec  mov     x29, x29
  100064ef0  bl      _objc_retainAutoreleasedReturnValue
  100064ef4  mov     x21, x0
  100064ef8  adrp    x8, #0x100417000
  100064efc  nop
  100064f00  ldr     x1, [x8, #0x48]
  100064f04  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] floatValue]
  100064f08  mov     v8.16b, v0.16b
  100064f0c  mov     x0, x21
  100064f10  bl      _objc_release
  100064f14  mov     x0, x20
  100064f18  bl      _objc_release
  100064f1c  fmov    s0, #7.00000000
  100064f20  fcmp    s8, s0
  100064f24  b.ge    loc_100064f3c                            ; if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)
  100064f28  ldp     x29, x30, [sp, #0x30]
  100064f2c  ldp     x20, x19, [sp, #0x20]
  100064f30  ldp     x22, x21, [sp, #0x10]
  100064f34  ldp     d9, d8, [sp], #0x40
  100064f38  ret
loc_100064f3c:
  100064f3c  add     x0, x19, #0x20
  100064f40  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block + 32))
  100064f44  mov     x20, x0
  100064f48  adrp    x8, #0x100419000
  100064f4c  nop
  100064f50  ldr     x1, [x8, #0x488]
  100064f54  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 32)) authenticatePlayerOnGameCenter]
  100064f58  mov     x0, x20
  100064f5c  ldp     x29, x30, [sp, #0x30]
  100064f60  ldp     x20, x19, [sp, #0x20]
  100064f64  ldp     x22, x21, [sp, #0x10]
  100064f68  ldp     d9, d8, [sp], #0x40
  100064f6c  b       _objc_release
  100064f70  mov     x19, x0
  100064f74  b       loc_100064f8c
  100064f78  mov     x19, x0
  100064f7c  mov     x0, x21
  100064f80  bl      _objc_release
  100064f84  b       loc_100064f8c
  100064f88  mov     x19, x0
loc_100064f8c:
  100064f8c  mov     x0, x20
  100064f90  bl      _objc_release
  100064f94  mov     x0, x19
  100064f98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100064f9c
; address 0x100064f9c  size 12  kind sub
; ======================================================================
  100064f9c  add     x1, x1, #0x20
  100064fa0  add     x0, x0, #0x20
  100064fa4  b       _objc_copyWeak                           ; objc_copyWeak((a0 + 32), (a1 + 32), a2, a3)

; ======================================================================
; sub_100064fa8
; address 0x100064fa8  size 8  kind sub
; ======================================================================
  100064fa8  add     x0, x0, #0x20
  100064fac  b       _objc_destroyWeak

; ======================================================================
; -[ADMainMenuViewController armoryButtonPressed:]
; address 0x100064fb0  size 148  kind objc
; ======================================================================
  100064fb0  stp     x20, x19, [sp, #-0x20]!
  100064fb4  stp     x29, x30, [sp, #0x10]
  100064fb8  add     x29, sp, #0x10
  100064fbc  mov     x19, x0
  100064fc0  adrp    x8, #0x10041d000
  100064fc4  ldr     x0, [x8, #0xfb0]                         ; class ADArmoryViewController
  100064fc8  adrp    x8, #0x100416000
  100064fcc  nop
  100064fd0  ldr     x1, [x8, #0xac8]
  100064fd4  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  100064fd8  adrp    x8, #0x100416000
  100064fdc  nop
  100064fe0  ldr     x1, [x8, #0xb40]
  100064fe4  mov     x3, #0
  100064fe8  adrp    x2, #0x1003b9000
  100064fec  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  100064ff0  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0]
  100064ff4  mov     x20, x0
  100064ff8  adrp    x8, #0x100417000
  100064ffc  nop
  100065000  ldr     x1, [x8, #0x208]
  100065004  mov     w3, #0
  100065008  mov     x4, #0
  10006500c  mov     x0, x19
  100065010  mov     x2, x20
  100065014  bl      _objc_msgSend                            ; [self presentViewController:[[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0] animated:0 completion:0]
  100065018  mov     x0, x20
  10006501c  ldp     x29, x30, [sp, #0x10]
  100065020  ldp     x20, x19, [sp], #0x20
  100065024  b       _objc_release
  100065028  mov     x19, x0
  10006502c  b       loc_10006503c
  100065030  mov     x19, x0
  100065034  mov     x0, x20
  100065038  bl      _objc_release
loc_10006503c:
  10006503c  mov     x0, x19
  100065040  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController cheatButtonPressed:]
; address 0x100065044  size 148  kind objc
; ======================================================================
  100065044  stp     x20, x19, [sp, #-0x20]!
  100065048  stp     x29, x30, [sp, #0x10]
  10006504c  add     x29, sp, #0x10
  100065050  mov     x19, x0
  100065054  adrp    x8, #0x10041e000
  100065058  ldr     x0, [x8, #0x230]                         ; class ADCheatViewController
  10006505c  adrp    x8, #0x100416000
  100065060  nop
  100065064  ldr     x1, [x8, #0xac8]
  100065068  bl      _objc_msgSend                            ; [ADCheatViewController alloc]
  10006506c  adrp    x8, #0x100416000
  100065070  nop
  100065074  ldr     x1, [x8, #0xb40]
  100065078  mov     x3, #0
  10006507c  adrp    x2, #0x1003be000
  100065080  add     x2, x2, #0x950                           ; @"ADCheatViewController"
  100065084  bl      _objc_msgSend                            ; [[ADCheatViewController alloc] initWithNibName:@"ADCheatViewController" bundle:0]
  100065088  mov     x20, x0
  10006508c  adrp    x8, #0x100417000
  100065090  nop
  100065094  ldr     x1, [x8, #0x208]
  100065098  mov     w3, #0
  10006509c  mov     x4, #0
  1000650a0  mov     x0, x19
  1000650a4  mov     x2, x20
  1000650a8  bl      _objc_msgSend                            ; [self presentViewController:[[ADCheatViewController alloc] initWithNibName:@"ADCheatViewController" bundle:0] animated:0 completion:0]
  1000650ac  mov     x0, x20
  1000650b0  ldp     x29, x30, [sp, #0x10]
  1000650b4  ldp     x20, x19, [sp], #0x20
  1000650b8  b       _objc_release
  1000650bc  mov     x19, x0
  1000650c0  b       loc_1000650d0
  1000650c4  mov     x19, x0
  1000650c8  mov     x0, x20
  1000650cc  bl      _objc_release
loc_1000650d0:
  1000650d0  mov     x0, x19
  1000650d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController playButtonPressed:]
; address 0x1000650d8  size 648  kind objc
; ======================================================================
  1000650d8  stp     x26, x25, [sp, #-0x50]!
  1000650dc  stp     x24, x23, [sp, #0x10]
  1000650e0  stp     x22, x21, [sp, #0x20]
  1000650e4  stp     x20, x19, [sp, #0x30]
  1000650e8  stp     x29, x30, [sp, #0x40]
  1000650ec  add     x29, sp, #0x40
  1000650f0  sub     sp, sp, #0x10
  1000650f4  mov     x19, x0
  1000650f8  adrp    x8, #0x10041d000
  1000650fc  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100065100  adrp    x8, #0x100416000
  100065104  nop
  100065108  ldr     x1, [x8, #0xc00]
  10006510c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100065110  mov     x29, x29
  100065114  bl      _objc_retainAutoreleasedReturnValue
  100065118  mov     x20, x0
  10006511c  adrp    x8, #0x100419000
  100065120  nop
  100065124  ldr     x1, [x8, #0x490]
  100065128  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isHeadsetPluggedIn]
  10006512c  mov     x21, x0
  100065130  mov     x0, x20
  100065134  bl      _objc_release
  100065138  tbz     w21, #0, loc_10006519c                   ; if (!([[ADGameParameters sharedParameters] isHeadsetPluggedIn] & 1))
  10006513c  adrp    x8, #0x10041d000
  100065140  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100065144  adrp    x8, #0x100416000
  100065148  nop
  10006514c  ldr     x1, [x8, #0xb28]
  100065150  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100065154  mov     x29, x29
  100065158  bl      _objc_retainAutoreleasedReturnValue
  10006515c  mov     x20, x0
  100065160  adrp    x8, #0x100416000
  100065164  nop
  100065168  ldr     x1, [x8, #0xc18]
  10006516c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100065170  mov     x29, x29
  100065174  bl      _objc_retainAutoreleasedReturnValue
  100065178  mov     x21, x0
  10006517c  adrp    x8, #0x100418000
  100065180  nop
  100065184  ldr     x1, [x8, #0x450]
  100065188  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToPlayMenu]
  10006518c  mov     x0, x21
  100065190  bl      _objc_release
  100065194  mov     x0, x20
  100065198  b       loc_1000652d8
loc_10006519c:
  10006519c  adrp    x8, #0x10041e000
  1000651a0  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  1000651a4  adrp    x8, #0x100416000
  1000651a8  nop
  1000651ac  ldr     x1, [x8, #0xac8]
  1000651b0  bl      _objc_msgSend                            ; [UIAlertView alloc]
  1000651b4  mov     x22, x0
  1000651b8  adrp    x25, #0x10041d000
  1000651bc  ldr     x0, [x25, #0xee8]                        ; class NSBundle
  1000651c0  adrp    x8, #0x100416000
  1000651c4  nop
  1000651c8  ldr     x23, [x8, #0xb58]
  1000651cc  mov     x1, x23
  1000651d0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000651d4  mov     x29, x29
  1000651d8  bl      _objc_retainAutoreleasedReturnValue
  1000651dc  mov     x20, x0
  1000651e0  adrp    x8, #0x100416000
  1000651e4  nop
  1000651e8  ldr     x24, [x8, #0xb60]
  1000651ec  mov     x4, #0
  1000651f0  adrp    x2, #0x1003be000
  1000651f4  add     x2, x2, #0x970                           ; @"ALERT_TITLE"
  1000651f8  adrp    x3, #0x1003b9000
  1000651fc  add     x3, x3, #0x870                           ; @""
  100065200  mov     x1, x24
  100065204  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"ALERT_TITLE" value:@"" table:0]
  100065208  mov     x29, x29
  10006520c  bl      _objc_retainAutoreleasedReturnValue
  100065210  mov     x21, x0
  100065214  ldr     x0, [x25, #0xee8]                        ; class NSBundle
  100065218  mov     x1, x23
  10006521c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100065220  mov     x29, x29
  100065224  bl      _objc_retainAutoreleasedReturnValue
  100065228  mov     x23, x0
  10006522c  mov     x4, #0
  100065230  adrp    x2, #0x1003be000
  100065234  add     x2, x2, #0x990                           ; @"ALERT_CONTENT"
  100065238  adrp    x3, #0x1003b9000
  10006523c  add     x3, x3, #0x870                           ; @""
  100065240  mov     x1, x24
  100065244  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"ALERT_CONTENT" value:@"" table:0]
  100065248  mov     x29, x29
  10006524c  bl      _objc_retainAutoreleasedReturnValue
  100065250  mov     x24, x0
  100065254  adrp    x8, #0x100417000
  100065258  nop
  10006525c  ldr     x1, [x8, #0x800]
  100065260  mov     x4, #0
  100065264  str     xzr, [sp]
  100065268  adrp    x6, #0x1003ba000
  10006526c  add     x6, x6, #0xaf0                           ; @"OK"
  100065270  mov     x0, x22
  100065274  mov     x2, x21
  100065278  mov     x3, x24
  10006527c  mov     x5, #0
  100065280  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:0 otherButtonTitles:@"OK"]
  100065284  mov     x22, x0
  100065288  mov     x0, x24
  10006528c  bl      _objc_release
  100065290  mov     x0, x23
  100065294  bl      _objc_release
  100065298  mov     x0, x21
  10006529c  bl      _objc_release
  1000652a0  mov     x0, x20
  1000652a4  bl      _objc_release
  1000652a8  adrp    x8, #0x100417000
  1000652ac  nop
  1000652b0  ldr     x1, [x8, #0x7d8]
  1000652b4  mov     x0, x22
  1000652b8  mov     x2, x19
  1000652bc  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:0 otherButtonTitles:@"OK"] setDelegate:self]
  1000652c0  adrp    x8, #0x100417000
  1000652c4  nop
  1000652c8  ldr     x1, [x8, #0x810]
  1000652cc  mov     x0, x22
  1000652d0  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:0 otherButtonTitles:@"OK"] show]
  1000652d4  mov     x0, x22
loc_1000652d8:
  1000652d8  sub     sp, x29, #0x40
  1000652dc  ldp     x29, x30, [sp, #0x40]
  1000652e0  ldp     x20, x19, [sp, #0x30]
  1000652e4  ldp     x22, x21, [sp, #0x20]
  1000652e8  ldp     x24, x23, [sp, #0x10]
  1000652ec  ldp     x26, x25, [sp], #0x50
  1000652f0  b       _objc_release
  1000652f4  mov     x19, x0
  1000652f8  b       loc_100065358
  1000652fc  mov     x19, x0
  100065300  b       loc_100065350
  100065304  mov     x19, x0
  100065308  mov     x0, x22
  10006530c  b       loc_100065354
  100065310  mov     x19, x0
  100065314  b       loc_100065350
  100065318  b       loc_100065324
  10006531c  mov     x19, x0
  100065320  b       loc_100065350
loc_100065324:
  100065324  mov     x19, x0
  100065328  b       loc_100065348
  10006532c  mov     x19, x0
  100065330  b       loc_100065340
  100065334  mov     x19, x0
  100065338  mov     x0, x24
  10006533c  bl      _objc_release
loc_100065340:
  100065340  mov     x0, x23
  100065344  bl      _objc_release
loc_100065348:
  100065348  mov     x0, x21
  10006534c  bl      _objc_release
loc_100065350:
  100065350  mov     x0, x20
loc_100065354:
  100065354  bl      _objc_release
loc_100065358:
  100065358  mov     x0, x19
  10006535c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController settingsButtonTouched:]
; address 0x100065360  size 148  kind objc
; ======================================================================
  100065360  stp     x20, x19, [sp, #-0x20]!
  100065364  stp     x29, x30, [sp, #0x10]
  100065368  add     x29, sp, #0x10
  10006536c  mov     x19, x0
  100065370  adrp    x8, #0x10041e000
  100065374  ldr     x0, [x8, #0x238]                         ; class ADSettingsViewController
  100065378  adrp    x8, #0x100416000
  10006537c  nop
  100065380  ldr     x1, [x8, #0xac8]
  100065384  bl      _objc_msgSend                            ; [ADSettingsViewController alloc]
  100065388  adrp    x8, #0x100416000
  10006538c  nop
  100065390  ldr     x1, [x8, #0xb40]
  100065394  mov     x3, #0
  100065398  adrp    x2, #0x1003be000
  10006539c  add     x2, x2, #0x9b0                           ; @"ADSettingsViewController"
  1000653a0  bl      _objc_msgSend                            ; [[ADSettingsViewController alloc] initWithNibName:@"ADSettingsViewController" bundle:0]
  1000653a4  mov     x20, x0
  1000653a8  adrp    x8, #0x100417000
  1000653ac  nop
  1000653b0  ldr     x1, [x8, #0x208]
  1000653b4  mov     w3, #0
  1000653b8  mov     x4, #0
  1000653bc  mov     x0, x19
  1000653c0  mov     x2, x20
  1000653c4  bl      _objc_msgSend                            ; [self presentViewController:[[ADSettingsViewController alloc] initWithNibName:@"ADSettingsViewController" bundle:0] animated:0 completion:0]
  1000653c8  mov     x0, x20
  1000653cc  ldp     x29, x30, [sp, #0x10]
  1000653d0  ldp     x20, x19, [sp], #0x20
  1000653d4  b       _objc_release
  1000653d8  mov     x19, x0
  1000653dc  b       loc_1000653ec
  1000653e0  mov     x19, x0
  1000653e4  mov     x0, x20
  1000653e8  bl      _objc_release
loc_1000653ec:
  1000653ec  mov     x0, x19
  1000653f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController moveToEncyclopedia:]
; address 0x1000653f4  size 148  kind objc
; ======================================================================
  1000653f4  stp     x20, x19, [sp, #-0x20]!
  1000653f8  stp     x29, x30, [sp, #0x10]
  1000653fc  add     x29, sp, #0x10
  100065400  mov     x19, x0
  100065404  adrp    x8, #0x10041e000
  100065408  ldr     x0, [x8, #0x240]                         ; class ADStatsPortalViewController
  10006540c  adrp    x8, #0x100416000
  100065410  nop
  100065414  ldr     x1, [x8, #0xac8]
  100065418  bl      _objc_msgSend                            ; [ADStatsPortalViewController alloc]
  10006541c  adrp    x8, #0x100416000
  100065420  nop
  100065424  ldr     x1, [x8, #0xb40]
  100065428  mov     x3, #0
  10006542c  adrp    x2, #0x1003be000
  100065430  add     x2, x2, #0x9d0                           ; @"ADStatsPortalViewController"
  100065434  bl      _objc_msgSend                            ; [[ADStatsPortalViewController alloc] initWithNibName:@"ADStatsPortalViewController" bundle:0]
  100065438  mov     x20, x0
  10006543c  adrp    x8, #0x100417000
  100065440  nop
  100065444  ldr     x1, [x8, #0x208]
  100065448  mov     w3, #0
  10006544c  mov     x4, #0
  100065450  mov     x0, x19
  100065454  mov     x2, x20
  100065458  bl      _objc_msgSend                            ; [self presentViewController:[[ADStatsPortalViewController alloc] initWithNibName:@"ADStatsPortalViewController" bundle:0] animated:0 completion:0]
  10006545c  mov     x0, x20
  100065460  ldp     x29, x30, [sp, #0x10]
  100065464  ldp     x20, x19, [sp], #0x20
  100065468  b       _objc_release
  10006546c  mov     x19, x0
  100065470  b       loc_100065480
  100065474  mov     x19, x0
  100065478  mov     x0, x20
  10006547c  bl      _objc_release
loc_100065480:
  100065480  mov     x0, x19
  100065484  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController audioRouteChanged]
; address 0x100065488  size 216  kind objc
; ======================================================================
  100065488  stp     x22, x21, [sp, #-0x30]!
  10006548c  stp     x20, x19, [sp, #0x10]
  100065490  stp     x29, x30, [sp, #0x20]
  100065494  add     x29, sp, #0x20
  100065498  mov     x19, x0
  10006549c  adrp    x8, #0x10041d000
  1000654a0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000654a4  adrp    x8, #0x100416000
  1000654a8  nop
  1000654ac  ldr     x1, [x8, #0xc00]
  1000654b0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000654b4  mov     x29, x29
  1000654b8  bl      _objc_retainAutoreleasedReturnValue
  1000654bc  mov     x21, x0
  1000654c0  adrp    x8, #0x100419000
  1000654c4  nop
  1000654c8  ldr     x1, [x8, #0x490]
  1000654cc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isHeadsetPluggedIn]
  1000654d0  mov     x20, x0
  1000654d4  mov     x0, x21
  1000654d8  bl      _objc_release
  1000654dc  adrp    x8, #0x100419000
  1000654e0  nop
  1000654e4  ldr     x1, [x8, #0x498]
  1000654e8  mov     x0, x19
  1000654ec  bl      _objc_msgSend                            ; [self useHeadphones]
  1000654f0  mov     x29, x29
  1000654f4  bl      _objc_retainAutoreleasedReturnValue
  1000654f8  mov     x19, x0
  1000654fc  adrp    x8, #0x100416000
  100065500  add     x8, x8, #0xba8                           ; &@selector(setHidden:)
  100065504  ldr     x1, [x8]
  100065508  cbz     w20, loc_100065520                       ; if ([[ADGameParameters sharedParameters] isHeadsetPluggedIn] == 0)
  10006550c  mov     w2, #1
  100065510  mov     x0, x19
  100065514  bl      _objc_msgSend                            ; [[self useHeadphones] setHidden:1]
  100065518  b       loc_10006552c
  10006551c  b       loc_10006554c
loc_100065520:
  100065520  mov     w2, #0
  100065524  mov     x0, x19
  100065528  bl      _objc_msgSend                            ; [[self useHeadphones] setHidden:0]
loc_10006552c:
  10006552c  mov     x0, x19
  100065530  ldp     x29, x30, [sp, #0x20]
  100065534  ldp     x20, x19, [sp, #0x10]
  100065538  ldp     x22, x21, [sp], #0x30
  10006553c  b       _objc_release
  100065540  mov     x20, x0
  100065544  mov     x0, x21
  100065548  b       loc_100065554
loc_10006554c:
  10006554c  mov     x20, x0
  100065550  mov     x0, x19
loc_100065554:
  100065554  bl      _objc_release
  100065558  mov     x0, x20
  10006555c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController alertView:willDismissWithButtonIndex:]
; address 0x100065560  size 260  kind objc
; ======================================================================
  100065560  stp     x22, x21, [sp, #-0x30]!
  100065564  stp     x20, x19, [sp, #0x10]
  100065568  stp     x29, x30, [sp, #0x20]
  10006556c  add     x29, sp, #0x20
  100065570  adrp    x8, #0x100418000
  100065574  nop
  100065578  ldr     x1, [x8, #0x620]
  10006557c  mov     x0, x2
  100065580  mov     x2, x3
  100065584  bl      _objc_msgSend                            ; [arg1 buttonTitleAtIndex:arg2]
  100065588  mov     x29, x29
  10006558c  bl      _objc_retainAutoreleasedReturnValue
  100065590  mov     x19, x0
  100065594  adrp    x8, #0x100416000
  100065598  nop
  10006559c  ldr     x1, [x8, #0xf58]
  1000655a0  adrp    x2, #0x1003ba000
  1000655a4  add     x2, x2, #0xaf0                           ; @"OK"
  1000655a8  bl      _objc_msgSend                            ; [[arg1 buttonTitleAtIndex:arg2] isEqualToString:@"OK"]
  1000655ac  cbz     w0, loc_100065610                        ; if ([[arg1 buttonTitleAtIndex:arg2] isEqualToString:@"OK"] == 0)
  1000655b0  adrp    x8, #0x10041d000
  1000655b4  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000655b8  adrp    x8, #0x100416000
  1000655bc  nop
  1000655c0  ldr     x1, [x8, #0xb28]
  1000655c4  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000655c8  mov     x29, x29
  1000655cc  bl      _objc_retainAutoreleasedReturnValue
  1000655d0  mov     x20, x0
  1000655d4  adrp    x8, #0x100416000
  1000655d8  nop
  1000655dc  ldr     x1, [x8, #0xc18]
  1000655e0  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000655e4  mov     x29, x29
  1000655e8  bl      _objc_retainAutoreleasedReturnValue
  1000655ec  mov     x21, x0
  1000655f0  adrp    x8, #0x100418000
  1000655f4  nop
  1000655f8  ldr     x1, [x8, #0x450]
  1000655fc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToPlayMenu]
  100065600  mov     x0, x21
  100065604  bl      _objc_release
  100065608  mov     x0, x20
  10006560c  bl      _objc_release
loc_100065610:
  100065610  mov     x0, x19
  100065614  ldp     x29, x30, [sp, #0x20]
  100065618  ldp     x20, x19, [sp, #0x10]
  10006561c  ldp     x22, x21, [sp], #0x30
  100065620  b       _objc_release
  100065624  mov     x21, x0
  100065628  b       loc_100065654
  10006562c  mov     x21, x0
  100065630  b       loc_10006565c
  100065634  mov     x21, x0
  100065638  b       loc_10006564c
  10006563c  mov     x1, x21
  100065640  mov     x21, x0
  100065644  mov     x0, x1
  100065648  bl      _objc_release
loc_10006564c:
  10006564c  mov     x0, x20
  100065650  bl      _objc_release
loc_100065654:
  100065654  mov     x0, x19
  100065658  bl      _objc_release
loc_10006565c:
  10006565c  mov     x0, x21
  100065660  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController authenticatePlayerOnGameCenter]
; address 0x100065664  size 16  kind objc
; ======================================================================
  100065664  adrp    x8, #0x100419000
  100065668  nop
  10006566c  ldr     x1, [x8, #0x4a0]
  100065670  b       _objc_msgSend                            ; [self authenticateLocalPlayer]

; ======================================================================
; -[ADMainMenuViewController authenticateLocalPlayer]
; address 0x100065674  size 496  kind objc
; ======================================================================
  100065674  stp     x24, x23, [sp, #-0x40]!
  100065678  stp     x22, x21, [sp, #0x10]
  10006567c  stp     x20, x19, [sp, #0x20]
  100065680  stp     x29, x30, [sp, #0x30]
  100065684  add     x29, sp, #0x30
  100065688  sub     sp, sp, #0x30
  10006568c  mov     x20, x0
  100065690  adrp    x8, #0x10041e000
  100065694  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100065698  adrp    x8, #0x100417000
  10006569c  nop
  1000656a0  ldr     x1, [x8, #0x788]
  1000656a4  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000656a8  mov     x29, x29
  1000656ac  bl      _objc_retainAutoreleasedReturnValue
  1000656b0  mov     x21, x0
  1000656b4  adrp    x8, #0x100418000
  1000656b8  nop
  1000656bc  ldr     x1, [x8, #0xa90]
  1000656c0  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  1000656c4  mov     x29, x29
  1000656c8  bl      _objc_retainAutoreleasedReturnValue
  1000656cc  mov     x19, x0
  1000656d0  mov     x0, x21
  1000656d4  bl      _objc_release
  1000656d8  adrp    x8, #0x100419000
  1000656dc  nop
  1000656e0  ldr     x1, [x8, #0x188]
  1000656e4  adrp    x2, #0x1003be000
  1000656e8  add     x2, x2, #0x9f0                           ; @"."
  1000656ec  mov     x0, x19
  1000656f0  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."]
  1000656f4  mov     x29, x29
  1000656f8  bl      _objc_retainAutoreleasedReturnValue
  1000656fc  mov     x21, x0
  100065700  adrp    x8, #0x100416000
  100065704  nop
  100065708  ldr     x1, [x8, #0xc30]
  10006570c  mov     x2, #0
  100065710  bl      _objc_msgSend                            ; [[[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."] objectAtIndex:0]
  100065714  mov     x29, x29
  100065718  bl      _objc_retainAutoreleasedReturnValue
  10006571c  mov     x22, x0
  100065720  adrp    x8, #0x100417000
  100065724  nop
  100065728  ldr     x1, [x8, #0x110]
  10006572c  bl      _objc_msgSend                            ; [[[[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."] objectAtIndex:0] intValue]
  100065730  mov     x23, x0
  100065734  mov     x0, x22
  100065738  bl      _objc_release
  10006573c  mov     x0, x21
  100065740  bl      _objc_release
  100065744  cmp     w23, #6
  100065748  b.lt    loc_1000657ec                            ; if ([[[[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."] objectAtIndex:0] intValue] < 6)
  10006574c  adrp    x8, #0x10041e000
  100065750  ldr     x0, [x8, #0x1a8]                         ; class GKLocalPlayer
  100065754  adrp    x8, #0x100418000
  100065758  nop
  10006575c  ldr     x1, [x8, #0xaa0]
  100065760  bl      _objc_msgSend                            ; [GKLocalPlayer localPlayer]
  100065764  mov     x29, x29
  100065768  bl      _objc_retainAutoreleasedReturnValue
  10006576c  mov     x21, x0
  100065770  adrp    x8, #0x1003b0000
  100065774  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100065778  mov     x9, sp
  10006577c  mov     w10, #-0x3e000000
  100065780  add     x22, x9, #0x28
  100065784  str     x8, [sp]
  100065788  stp     w10, wzr, [sp, #8]
  10006578c  adr     x8, #0x100065864                         ; &-[ADMainMenuViewController authenticateLocalPlayer]_block_invoke
  100065790  nop
  100065794  str     x8, [sp, #0x10]
  100065798  adrp    x8, #0x1003b1000
  10006579c  add     x8, x8, #0xd30                           ; &d_1003b1d30
  1000657a0  str     x8, [sp, #0x18]
  1000657a4  mov     x0, x22
  1000657a8  mov     x1, x21
  1000657ac  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x0] + 40), [GKLocalPlayer localPlayer])
  1000657b0  mov     x0, x20
  1000657b4  bl      _objc_retain
  1000657b8  str     x0, [sp, #0x20]
  1000657bc  adrp    x8, #0x100419000
  1000657c0  nop
  1000657c4  ldr     x1, [x8, #0x4a8]
  1000657c8  mov     x2, sp
  1000657cc  mov     x0, x21
  1000657d0  bl      _objc_msgSend                            ; [[GKLocalPlayer localPlayer] setAuthenticateHandler:^{-[ADMainMenuViewController authenticateLocalPlayer]_block_invoke captures +0x20=self}]
  1000657d4  ldr     x0, [sp, #0x20]
  1000657d8  bl      _objc_release
  1000657dc  mov     x0, x22
  1000657e0  bl      _objc_destroyWeak
  1000657e4  mov     x0, x21
  1000657e8  bl      _objc_release
loc_1000657ec:
  1000657ec  mov     x0, x19
  1000657f0  bl      _objc_release
  1000657f4  sub     sp, x29, #0x30
  1000657f8  ldp     x29, x30, [sp, #0x30]
  1000657fc  ldp     x20, x19, [sp, #0x20]
  100065800  ldp     x22, x21, [sp, #0x10]
  100065804  ldp     x24, x23, [sp], #0x40
  100065808  ret
  10006580c  mov     x20, x0
  100065810  b       loc_100065854
  100065814  mov     x20, x0
  100065818  mov     x0, x21
  10006581c  b       loc_100065858
  100065820  mov     x20, x0
  100065824  b       loc_10006584c
  100065828  mov     x20, x0
  10006582c  mov     x0, x22
  100065830  bl      _objc_release
  100065834  b       loc_10006584c
  100065838  mov     x20, x0
  10006583c  ldr     x0, [sp, #0x20]
  100065840  bl      _objc_release
  100065844  mov     x0, x22
  100065848  bl      _objc_destroyWeak
loc_10006584c:
  10006584c  mov     x0, x21
  100065850  bl      _objc_release
loc_100065854:
  100065854  mov     x0, x19
loc_100065858:
  100065858  bl      _objc_release
  10006585c  mov     x0, x20
  100065860  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController authenticateLocalPlayer]_block_invoke
; address 0x100065864  size 172  kind block
; ======================================================================
  100065864  stp     x22, x21, [sp, #-0x30]!
  100065868  stp     x20, x19, [sp, #0x10]
  10006586c  stp     x29, x30, [sp, #0x20]
  100065870  add     x29, sp, #0x20
  100065874  mov     x20, x0
  100065878  mov     x0, x1
  10006587c  bl      _objc_retain
  100065880  mov     x19, x0
  100065884  add     x0, x20, #0x28
  100065888  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block + 40))
  10006588c  mov     x21, x0
  100065890  adrp    x8, #0x100418000
  100065894  nop
  100065898  ldr     x1, [x8, #0xaa8]
  10006589c  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 40)) isAuthenticated]
  1000658a0  mov     x22, x0
  1000658a4  mov     x0, x21
  1000658a8  bl      _objc_release
  1000658ac  cbz     x19, loc_1000658d8                       ; if (blockarg1 == 0)
  1000658b0  eor     w8, w22, #1
  1000658b4  tbz     w8, #0, loc_1000658d8                    ; if (!(([objc_loadWeakRetained((block + 40)) isAuthenticated] ^ 1) & 1))
  1000658b8  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000658bc  adrp    x8, #0x100417000
  1000658c0  nop
  1000658c4  ldr     x1, [x8, #0x208]
  1000658c8  mov     w3, #0
  1000658cc  mov     x4, #0
  1000658d0  mov     x2, x19
  1000658d4  bl      _objc_msgSend                            ; [self presentViewController:blockarg1 animated:0 completion:0]
loc_1000658d8:
  1000658d8  mov     x0, x19
  1000658dc  ldp     x29, x30, [sp, #0x20]
  1000658e0  ldp     x20, x19, [sp, #0x10]
  1000658e4  ldp     x22, x21, [sp], #0x30
  1000658e8  b       _objc_release
  1000658ec  mov     x20, x0
  1000658f0  mov     x0, x21
  1000658f4  bl      _objc_release
  1000658f8  b       loc_100065900
  1000658fc  mov     x20, x0
loc_100065900:
  100065900  mov     x0, x19
  100065904  bl      _objc_release
  100065908  mov     x0, x20
  10006590c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100065910
; address 0x100065910  size 44  kind sub
; ======================================================================
  100065910  stp     x20, x19, [sp, #-0x20]!
  100065914  stp     x29, x30, [sp, #0x10]
  100065918  add     x29, sp, #0x10
  10006591c  mov     x19, x1
  100065920  add     x1, x19, #0x28
  100065924  add     x0, x0, #0x28
  100065928  bl      _objc_copyWeak                           ; objc_copyWeak((a0 + 40), (a1 + 40), a2, a3)
  10006592c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100065930  ldp     x29, x30, [sp, #0x10]
  100065934  ldp     x20, x19, [sp], #0x20
  100065938  b       _objc_retain

; ======================================================================
; sub_10006593c
; address 0x10006593c  size 40  kind sub
; ======================================================================
  10006593c  stp     x20, x19, [sp, #-0x20]!
  100065940  stp     x29, x30, [sp, #0x10]
  100065944  add     x29, sp, #0x10
  100065948  mov     x19, x0
  10006594c  add     x0, x19, #0x28
  100065950  bl      _objc_destroyWeak
  100065954  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100065958  ldp     x29, x30, [sp, #0x10]
  10006595c  ldp     x20, x19, [sp], #0x20
  100065960  b       _objc_release

; ======================================================================
; -[ADMainMenuViewController leaderboardsButtonPressed:]
; address 0x100065964  size 588  kind objc
; ======================================================================
  100065964  stp     d9, d8, [sp, #-0x60]!
  100065968  stp     x26, x25, [sp, #0x10]
  10006596c  stp     x24, x23, [sp, #0x20]
  100065970  stp     x22, x21, [sp, #0x30]
  100065974  stp     x20, x19, [sp, #0x40]
  100065978  stp     x29, x30, [sp, #0x50]
  10006597c  add     x29, sp, #0x50
  100065980  sub     sp, sp, #0x10
  100065984  mov     x19, x0
  100065988  adrp    x25, #0x10041e000
  10006598c  ldr     x0, [x25, #0x50]                         ; class UIDevice
  100065990  adrp    x8, #0x100417000
  100065994  nop
  100065998  ldr     x20, [x8, #0x788]
  10006599c  mov     x1, x20
  1000659a0  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000659a4  mov     x29, x29
  1000659a8  bl      _objc_retainAutoreleasedReturnValue
  1000659ac  mov     x23, x0
  1000659b0  adrp    x8, #0x100418000
  1000659b4  nop
  1000659b8  ldr     x21, [x8, #0xa90]
  1000659bc  mov     x1, x21
  1000659c0  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  1000659c4  mov     x29, x29
  1000659c8  bl      _objc_retainAutoreleasedReturnValue
  1000659cc  mov     x24, x0
  1000659d0  adrp    x8, #0x100417000
  1000659d4  nop
  1000659d8  ldr     x22, [x8, #0x48]
  1000659dc  mov     x1, x22
  1000659e0  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] floatValue]
  1000659e4  fcvt    d0, s0
  1000659e8  str     d0, [sp]
  1000659ec  adrp    x0, #0x1003be000
  1000659f0  add     x0, x0, #0xa10                           ; @"Version : %f"
  1000659f4  bl      _NSLog                                   ; NSLog(@"Version : %f", [[[UIDevice currentDevice] systemVersion] floatValue])
  1000659f8  mov     x0, x24
  1000659fc  bl      _objc_release
  100065a00  mov     x0, x23
  100065a04  bl      _objc_release
  100065a08  ldr     x0, [x25, #0x50]                         ; class UIDevice
  100065a0c  mov     x1, x20
  100065a10  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100065a14  mov     x29, x29
  100065a18  bl      _objc_retainAutoreleasedReturnValue
  100065a1c  mov     x20, x0
  100065a20  mov     x1, x21
  100065a24  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  100065a28  mov     x29, x29
  100065a2c  bl      _objc_retainAutoreleasedReturnValue
  100065a30  mov     x21, x0
  100065a34  mov     x1, x22
  100065a38  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] floatValue]
  100065a3c  mov     v8.16b, v0.16b
  100065a40  mov     x0, x21
  100065a44  bl      _objc_release
  100065a48  mov     x0, x20
  100065a4c  bl      _objc_release
  100065a50  fmov    s0, #7.00000000
  100065a54  fcmp    s8, s0
  100065a58  b.ge    loc_100065a7c                            ; if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)
  100065a5c  sub     sp, x29, #0x50
  100065a60  ldp     x29, x30, [sp, #0x50]
  100065a64  ldp     x20, x19, [sp, #0x40]
  100065a68  ldp     x22, x21, [sp, #0x30]
  100065a6c  ldp     x24, x23, [sp, #0x20]
  100065a70  ldp     x26, x25, [sp, #0x10]
  100065a74  ldp     d9, d8, [sp], #0x60
  100065a78  ret
loc_100065a7c:
  100065a7c  adrp    x8, #0x10041e000
  100065a80  ldr     x0, [x8, #0x248]                         ; class GKGameCenterViewController
  100065a84  adrp    x8, #0x100416000
  100065a88  nop
  100065a8c  ldr     x1, [x8, #0xac8]
  100065a90  bl      _objc_msgSend                            ; [GKGameCenterViewController alloc]
  100065a94  adrp    x8, #0x100416000
  100065a98  nop
  100065a9c  ldr     x1, [x8, #0xab8]
  100065aa0  bl      _objc_msgSend                            ; [[GKGameCenterViewController alloc] init]
  100065aa4  mov     x20, x0
  100065aa8  cbz     x20, loc_100065b38                       ; if ([[GKGameCenterViewController alloc] init] == 0)
  100065aac  adrp    x8, #0x100419000
  100065ab0  nop
  100065ab4  ldr     x1, [x8, #0x4b0]
  100065ab8  mov     x0, x20
  100065abc  mov     x2, x19
  100065ac0  bl      _objc_msgSend                            ; [[[GKGameCenterViewController alloc] init] setGameCenterDelegate:self]
  100065ac4  adrp    x8, #0x100419000
  100065ac8  nop
  100065acc  ldr     x1, [x8, #0x4b8]
  100065ad0  mov     x2, #0
  100065ad4  mov     x0, x20
  100065ad8  bl      _objc_msgSend                            ; [[[GKGameCenterViewController alloc] init] setViewState:0]
  100065adc  adrp    x8, #0x100419000
  100065ae0  nop
  100065ae4  ldr     x1, [x8, #0x4c0]
  100065ae8  mov     w2, #2
  100065aec  mov     x0, x20
  100065af0  bl      _objc_msgSend                            ; [[[GKGameCenterViewController alloc] init] setLeaderboardTimeScope:2]
  100065af4  adrp    x8, #0x100419000
  100065af8  nop
  100065afc  ldr     x1, [x8, #0x4c8]
  100065b00  adrp    x2, #0x1003be000
  100065b04  add     x2, x2, #0xa30                           ; @"EndlessModeScoreLeaderboard"
  100065b08  mov     x0, x20
  100065b0c  bl      _objc_msgSend                            ; [[[GKGameCenterViewController alloc] init] setLeaderboardIdentifier:@"EndlessModeScoreLeaderboard"]
  100065b10  adrp    x8, #0x100419000
  100065b14  nop
  100065b18  ldr     x2, [x8, #0x4d0]
  100065b1c  adrp    x8, #0x100418000
  100065b20  nop
  100065b24  ldr     x1, [x8, #0x188]
  100065b28  movi    v0.16b, #0
  100065b2c  mov     x0, x19
  100065b30  mov     x3, x20
  100065b34  bl      _objc_msgSend                            ; [self performSelector:@selector(presentGameCenter:) withObject:[[GKGameCenterViewController alloc] init] afterDelay:0]
loc_100065b38:
  100065b38  mov     x0, x20
  100065b3c  sub     sp, x29, #0x50
  100065b40  ldp     x29, x30, [sp, #0x50]
  100065b44  ldp     x20, x19, [sp, #0x40]
  100065b48  ldp     x22, x21, [sp, #0x30]
  100065b4c  ldp     x24, x23, [sp, #0x20]
  100065b50  ldp     x26, x25, [sp, #0x10]
  100065b54  ldp     d9, d8, [sp], #0x60
  100065b58  b       _objc_release
  100065b5c  mov     x19, x0
  100065b60  b       loc_100065ba8
  100065b64  mov     x19, x0
  100065b68  mov     x0, x24
  100065b6c  bl      _objc_release
  100065b70  b       loc_100065b80
  100065b74  mov     x19, x0
  100065b78  b       loc_100065ba0
  100065b7c  mov     x19, x0
loc_100065b80:
  100065b80  mov     x0, x23
  100065b84  bl      _objc_release
  100065b88  b       loc_100065ba8
  100065b8c  mov     x19, x0
  100065b90  b       loc_100065ba0
  100065b94  mov     x19, x0
  100065b98  mov     x0, x21
  100065b9c  bl      _objc_release
loc_100065ba0:
  100065ba0  mov     x0, x20
  100065ba4  bl      _objc_release
loc_100065ba8:
  100065ba8  mov     x0, x19
  100065bac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController presentGameCenter:]
; address 0x100065bb0  size 40  kind objc
; ======================================================================
  100065bb0  stp     x29, x30, [sp, #-0x10]!
  100065bb4  mov     x29, sp
  100065bb8  adrp    x8, #0x100417000
  100065bbc  nop
  100065bc0  ldr     x1, [x8, #0x208]
  100065bc4  mov     w3, #1
  100065bc8  mov     x4, #0
  100065bcc  bl      _objc_msgSend                            ; [self presentViewController:arg1 animated:1 completion:0]
  100065bd0  ldp     x29, x30, [sp], #0x10
  100065bd4  ret

; ======================================================================
; -[ADMainMenuViewController gameCenterViewControllerDidFinish:]
; address 0x100065bd8  size 40  kind objc
; ======================================================================
  100065bd8  stp     x29, x30, [sp, #-0x10]!
  100065bdc  mov     x29, sp
  100065be0  adrp    x8, #0x100417000
  100065be4  nop
  100065be8  ldr     x1, [x8, #0x420]
  100065bec  mov     w2, #1
  100065bf0  mov     x3, #0
  100065bf4  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:1 completion:0]
  100065bf8  ldp     x29, x30, [sp], #0x10
  100065bfc  ret

; ======================================================================
; -[ADMainMenuViewController betaHasExpired]
; address 0x100065c00  size 320  kind objc
; ======================================================================
  100065c00  stp     x22, x21, [sp, #-0x30]!
  100065c04  stp     x20, x19, [sp, #0x10]
  100065c08  stp     x29, x30, [sp, #0x20]
  100065c0c  add     x29, sp, #0x20
  100065c10  adrp    x8, #0x10041e000
  100065c14  ldr     x0, [x8, #0x250]                         ; class NSDateFormatter
  100065c18  adrp    x8, #0x100416000
  100065c1c  nop
  100065c20  ldr     x1, [x8, #0xac8]
  100065c24  bl      _objc_msgSend                            ; [NSDateFormatter alloc]
  100065c28  adrp    x8, #0x100416000
  100065c2c  nop
  100065c30  ldr     x1, [x8, #0xab8]
  100065c34  bl      _objc_msgSend                            ; [[NSDateFormatter alloc] init]
  100065c38  mov     x19, x0
  100065c3c  adrp    x8, #0x100419000
  100065c40  nop
  100065c44  ldr     x1, [x8, #0x4d8]
  100065c48  adrp    x2, #0x1003be000
  100065c4c  add     x2, x2, #0xa70                           ; @"yyyy-MM-dd"
  100065c50  mov     x0, x19
  100065c54  bl      _objc_msgSend                            ; [[[NSDateFormatter alloc] init] setDateFormat:@"yyyy-MM-dd"]
  100065c58  adrp    x8, #0x100419000
  100065c5c  nop
  100065c60  ldr     x1, [x8, #0x4e0]
  100065c64  adrp    x2, #0x1003be000
  100065c68  add     x2, x2, #0xa50                           ; @"2014-10-21"
  100065c6c  mov     x0, x19
  100065c70  bl      _objc_msgSend                            ; [[[NSDateFormatter alloc] init] dateFromString:@"2014-10-21"]
  100065c74  mov     x29, x29
  100065c78  bl      _objc_retainAutoreleasedReturnValue
  100065c7c  mov     x20, x0
  100065c80  adrp    x8, #0x10041e000
  100065c84  ldr     x0, [x8, #0x38]                          ; class NSDate
  100065c88  adrp    x8, #0x100418000
  100065c8c  nop
  100065c90  ldr     x1, [x8, #0x158]
  100065c94  bl      _objc_msgSend                            ; [NSDate date]
  100065c98  mov     x29, x29
  100065c9c  bl      _objc_retainAutoreleasedReturnValue
  100065ca0  mov     x21, x0
  100065ca4  adrp    x8, #0x100419000
  100065ca8  nop
  100065cac  ldr     x1, [x8, #0x4e8]
  100065cb0  mov     x2, x20
  100065cb4  bl      _objc_msgSend                            ; [[NSDate date] compare:[[[NSDateFormatter alloc] init] dateFromString:@"2014-10-21"]]
  100065cb8  cmp     x0, #1
  100065cbc  b.ne    loc_100065cd4                            ; if ([[NSDate date] compare:[[[NSDateFormatter alloc] init] dateFromString:@"2014-10-21"]] != 1)
  100065cc0  adrp    x0, #0x1003be000
  100065cc4  add     x0, x0, #0xa90                           ; @"BETA IS OVER"
  100065cc8  bl      _NSLog                                   ; NSLog(@"BETA IS OVER")
  100065ccc  mov     w22, #1
  100065cd0  b       loc_100065cd8
loc_100065cd4:
  100065cd4  mov     w22, #0
loc_100065cd8:
  100065cd8  mov     x0, x21
  100065cdc  bl      _objc_release
  100065ce0  mov     x0, x20
  100065ce4  bl      _objc_release
  100065ce8  mov     x0, x19
  100065cec  bl      _objc_release
  100065cf0  mov     x0, x22
  100065cf4  ldp     x29, x30, [sp, #0x20]
  100065cf8  ldp     x20, x19, [sp, #0x10]
  100065cfc  ldp     x22, x21, [sp], #0x30
  100065d00  ret
  100065d04  mov     x22, x0
  100065d08  b       loc_100065d38
  100065d0c  mov     x22, x0
  100065d10  b       loc_100065d30
  100065d14  mov     x22, x0
  100065d18  mov     x0, x21
  100065d1c  bl      _objc_release
  100065d20  b       loc_100065d28
  100065d24  mov     x22, x0
loc_100065d28:
  100065d28  mov     x0, x20
  100065d2c  bl      _objc_release
loc_100065d30:
  100065d30  mov     x0, x19
  100065d34  bl      _objc_release
loc_100065d38:
  100065d38  mov     x0, x22
  100065d3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMainMenuViewController accessibilityPerformMagicTap]
; address 0x100065d40  size 40  kind objc
; ======================================================================
  100065d40  stp     x29, x30, [sp, #-0x10]!
  100065d44  mov     x29, sp
  100065d48  adrp    x8, #0x100418000
  100065d4c  nop
  100065d50  ldr     x1, [x8, #0x458]
  100065d54  mov     x2, #0
  100065d58  bl      _objc_msgSend                            ; [self playButtonPressed:0]
  100065d5c  mov     w0, #1
  100065d60  ldp     x29, x30, [sp], #0x10
  100065d64  ret

; ======================================================================
; -[ADMainMenuViewController fullMoonView]
; address 0x100065d68  size 16  kind objc
; ======================================================================
  100065d68  adrp    x8, #0x10041f000
  100065d6c  ldrsw   x8, [x8, #0xc2c]                         ; ivar offset ADMainMenuViewController._fullMoonView (+0x140)
  100065d70  ldr     x0, [x0, x8]                             ; x0 = self->_fullMoonView
  100065d74  ret

; ======================================================================
; -[ADMainMenuViewController setFullMoonView:]
; address 0x100065d78  size 56  kind objc
; ======================================================================
  100065d78  stp     x20, x19, [sp, #-0x20]!
  100065d7c  stp     x29, x30, [sp, #0x10]
  100065d80  add     x29, sp, #0x10
  100065d84  mov     x19, x0
  100065d88  adrp    x8, #0x10041f000
  100065d8c  ldrsw   x20, [x8, #0xc2c]                        ; ivar offset ADMainMenuViewController._fullMoonView (+0x140)
  100065d90  mov     x0, x2
  100065d94  bl      _objc_retain
  100065d98  ldr     x8, [x19, x20]                           ; x8 = self->_fullMoonView
  100065d9c  str     x0, [x19, x20]                           ; self->_fullMoonView = arg1
  100065da0  mov     x0, x8
  100065da4  ldp     x29, x30, [sp, #0x10]
  100065da8  ldp     x20, x19, [sp], #0x20
  100065dac  b       _objc_release

; ======================================================================
; -[ADMainMenuViewController cheatMenu]
; address 0x100065db0  size 16  kind objc
; ======================================================================
  100065db0  adrp    x8, #0x10041f000
  100065db4  ldrsw   x8, [x8, #0xc30]                         ; ivar offset ADMainMenuViewController._cheatMenu (+0x148)
  100065db8  ldr     x0, [x0, x8]                             ; x0 = self->_cheatMenu
  100065dbc  ret

; ======================================================================
; -[ADMainMenuViewController setCheatMenu:]
; address 0x100065dc0  size 56  kind objc
; ======================================================================
  100065dc0  stp     x20, x19, [sp, #-0x20]!
  100065dc4  stp     x29, x30, [sp, #0x10]
  100065dc8  add     x29, sp, #0x10
  100065dcc  mov     x19, x0
  100065dd0  adrp    x8, #0x10041f000
  100065dd4  ldrsw   x20, [x8, #0xc30]                        ; ivar offset ADMainMenuViewController._cheatMenu (+0x148)
  100065dd8  mov     x0, x2
  100065ddc  bl      _objc_retain
  100065de0  ldr     x8, [x19, x20]                           ; x8 = self->_cheatMenu
  100065de4  str     x0, [x19, x20]                           ; self->_cheatMenu = arg1
  100065de8  mov     x0, x8
  100065dec  ldp     x29, x30, [sp, #0x10]
  100065df0  ldp     x20, x19, [sp], #0x20
  100065df4  b       _objc_release

; ======================================================================
; -[ADMainMenuViewController versionNumberLabel]
; address 0x100065df8  size 16  kind objc
; ======================================================================
  100065df8  adrp    x8, #0x10041f000
  100065dfc  ldrsw   x8, [x8, #0xc34]                         ; ivar offset ADMainMenuViewController._versionNumberLabel (+0x150)
  100065e00  ldr     x0, [x0, x8]                             ; x0 = self->_versionNumberLabel
  100065e04  ret

; ======================================================================
; -[ADMainMenuViewController setVersionNumberLabel:]
; address 0x100065e08  size 56  kind objc
; ======================================================================
  100065e08  stp     x20, x19, [sp, #-0x20]!
  100065e0c  stp     x29, x30, [sp, #0x10]
  100065e10  add     x29, sp, #0x10
  100065e14  mov     x19, x0
  100065e18  adrp    x8, #0x10041f000
  100065e1c  ldrsw   x20, [x8, #0xc34]                        ; ivar offset ADMainMenuViewController._versionNumberLabel (+0x150)
  100065e20  mov     x0, x2
  100065e24  bl      _objc_retain
  100065e28  ldr     x8, [x19, x20]                           ; x8 = self->_versionNumberLabel
  100065e2c  str     x0, [x19, x20]                           ; self->_versionNumberLabel = arg1
  100065e30  mov     x0, x8
  100065e34  ldp     x29, x30, [sp, #0x10]
  100065e38  ldp     x20, x19, [sp], #0x20
  100065e3c  b       _objc_release

; ======================================================================
; -[ADMainMenuViewController useHeadphones]
; address 0x100065e40  size 16  kind objc
; ======================================================================
  100065e40  adrp    x8, #0x10041f000
  100065e44  ldrsw   x8, [x8, #0xc38]                         ; ivar offset ADMainMenuViewController._useHeadphones (+0x158)
  100065e48  ldr     x0, [x0, x8]                             ; x0 = self->_useHeadphones
  100065e4c  ret

; ======================================================================
; -[ADMainMenuViewController setUseHeadphones:]
; address 0x100065e50  size 56  kind objc
; ======================================================================
  100065e50  stp     x20, x19, [sp, #-0x20]!
  100065e54  stp     x29, x30, [sp, #0x10]
  100065e58  add     x29, sp, #0x10
  100065e5c  mov     x19, x0
  100065e60  adrp    x8, #0x10041f000
  100065e64  ldrsw   x20, [x8, #0xc38]                        ; ivar offset ADMainMenuViewController._useHeadphones (+0x158)
  100065e68  mov     x0, x2
  100065e6c  bl      _objc_retain
  100065e70  ldr     x8, [x19, x20]                           ; x8 = self->_useHeadphones
  100065e74  str     x0, [x19, x20]                           ; self->_useHeadphones = arg1
  100065e78  mov     x0, x8
  100065e7c  ldp     x29, x30, [sp, #0x10]
  100065e80  ldp     x20, x19, [sp], #0x20
  100065e84  b       _objc_release

; ======================================================================
; -[ADMainMenuViewController slidingView]
; address 0x100065e88  size 16  kind objc
; ======================================================================
  100065e88  adrp    x8, #0x10041f000
  100065e8c  ldrsw   x8, [x8, #0xc3c]                         ; ivar offset ADMainMenuViewController._slidingView (+0x160)
  100065e90  ldr     x0, [x0, x8]                             ; x0 = self->_slidingView
  100065e94  ret

; ======================================================================
; -[ADMainMenuViewController setSlidingView:]
; address 0x100065e98  size 56  kind objc
; ======================================================================
  100065e98  stp     x20, x19, [sp, #-0x20]!
  100065e9c  stp     x29, x30, [sp, #0x10]
  100065ea0  add     x29, sp, #0x10
  100065ea4  mov     x19, x0
  100065ea8  adrp    x8, #0x10041f000
  100065eac  ldrsw   x20, [x8, #0xc3c]                        ; ivar offset ADMainMenuViewController._slidingView (+0x160)
  100065eb0  mov     x0, x2
  100065eb4  bl      _objc_retain
  100065eb8  ldr     x8, [x19, x20]                           ; x8 = self->_slidingView
  100065ebc  str     x0, [x19, x20]                           ; self->_slidingView = arg1
  100065ec0  mov     x0, x8
  100065ec4  ldp     x29, x30, [sp, #0x10]
  100065ec8  ldp     x20, x19, [sp], #0x20
  100065ecc  b       _objc_release

; ======================================================================
; -[ADMainMenuViewController .cxx_destruct]
; address 0x100065ed0  size 124  kind objc
; ======================================================================
  100065ed0  stp     x20, x19, [sp, #-0x20]!
  100065ed4  stp     x29, x30, [sp, #0x10]
  100065ed8  add     x29, sp, #0x10
  100065edc  mov     x19, x0
  100065ee0  adrp    x8, #0x10041f000
  100065ee4  ldrsw   x8, [x8, #0xc3c]                         ; ivar offset ADMainMenuViewController._slidingView (+0x160)
  100065ee8  add     x0, x19, x8
  100065eec  mov     x1, #0
  100065ef0  bl      _objc_storeStrong
  100065ef4  adrp    x8, #0x10041f000
  100065ef8  ldrsw   x8, [x8, #0xc38]                         ; ivar offset ADMainMenuViewController._useHeadphones (+0x158)
  100065efc  add     x0, x19, x8
  100065f00  mov     x1, #0
  100065f04  bl      _objc_storeStrong
  100065f08  adrp    x8, #0x10041f000
  100065f0c  ldrsw   x8, [x8, #0xc34]                         ; ivar offset ADMainMenuViewController._versionNumberLabel (+0x150)
  100065f10  add     x0, x19, x8
  100065f14  mov     x1, #0
  100065f18  bl      _objc_storeStrong
  100065f1c  adrp    x8, #0x10041f000
  100065f20  ldrsw   x8, [x8, #0xc30]                         ; ivar offset ADMainMenuViewController._cheatMenu (+0x148)
  100065f24  add     x0, x19, x8
  100065f28  mov     x1, #0
  100065f2c  bl      _objc_storeStrong
  100065f30  mov     x1, #0
  100065f34  adrp    x8, #0x10041f000
  100065f38  ldrsw   x8, [x8, #0xc2c]                         ; ivar offset ADMainMenuViewController._fullMoonView (+0x140)
  100065f3c  add     x0, x19, x8
  100065f40  ldp     x29, x30, [sp, #0x10]
  100065f44  ldp     x20, x19, [sp], #0x20
  100065f48  b       _objc_storeStrong
