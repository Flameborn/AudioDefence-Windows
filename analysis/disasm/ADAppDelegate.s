// unit ADAppDelegate — 60 functions
//   0x10008099c    1652  -[ADAppDelegate application:didFinishLaunchingWithOptions:]
//   0x100081010       4  -[ADAppDelegate application:didFinishLaunchingWithOptions:]_block_invoke
//   0x100081014     180  -[ADAppDelegate runSanityCheck]
//   0x1000810c8     244  -[ADAppDelegate dictionaryForChallengeWithName:]
//   0x1000811bc     300  -[ADAppDelegate loadViewController:]
//   0x1000812e8     116  -[ADAppDelegate loadViewController:]_block_invoke
//   0x10008135c       4  -[ADAppDelegate loadViewController:]_block_invoke_block_invoke
//   0x100081360      40  sub_100081360
//   0x100081388      40  sub_100081388
//   0x1000813b0     168  -[ADAppDelegate goToAccessibleChallengeOverviewWithDictionary:]
//   0x100081458     168  -[ADAppDelegate goToChallengeOverviewWithDictionary:]
//   0x100081500     132  -[ADAppDelegate goToInputModeSelectScreen]
//   0x100081584     132  -[ADAppDelegate goToOpener]
//   0x100081608     216  -[ADAppDelegate goToGameOverEndless]
//   0x1000816e0     444  -[ADAppDelegate goToChallengeSelector]
//   0x10008189c     284  -[ADAppDelegate goToChallengeCompletedWithDictionary:]
//   0x1000819b8     168  -[ADAppDelegate goToChallengeFailedWithDictionary:]
//   0x100081a60     524  -[ADAppDelegate goToArmoryFromVC:EnableLoadOut:]
//   0x100081c6c       4  -[ADAppDelegate goToArmoryFromVC:EnableLoadOut:]_block_invoke
//   0x100081c70    1132  -[ADAppDelegate goToChallengeAfter:]
//   0x1000820dc     132  -[ADAppDelegate goToStory]
//   0x100082160     132  -[ADAppDelegate goToRoulette]
//   0x1000821e4     148  -[ADAppDelegate goToGameplay]
//   0x100082278     196  -[ADAppDelegate goToChallengeWithDict:]
//   0x10008233c     156  -[ADAppDelegate goToWorldSelector]
//   0x1000823d8     156  -[ADAppDelegate goToMainMenu]
//   0x100082474     160  -[ADAppDelegate goToPlayMenu]
//   0x100082514     168  -[ADAppDelegate goToInfoScreen:]
//   0x1000825bc     132  -[ADAppDelegate goToTarot]
//   0x100082640       4  -[ADAppDelegate popToRoot]
//   0x100082644     132  -[ADAppDelegate goToTabbedChallengeScreen]
//   0x1000826c8     724  -[ADAppDelegate showMetrics]
//   0x10008299c      56  -[ADAppDelegate setStatusBar:]
//   0x1000829d4     548  -[ADAppDelegate initPapaEngine]
//   0x100082bf8     168  -[ADAppDelegate activateButtonsPlaylist]
//   0x100082ca0     576  -[ADAppDelegate startMenuMusic:]
//   0x100082ee0     664  -[ADAppDelegate startMenuMusic:]_block_invoke
//   0x100083178     436  -[ADAppDelegate startMenuMusic:]_block_invoke_block_invoke
//   0x10008332c      40  sub_10008332c
//   0x100083354      40  sub_100083354
//   0x10008337c      48  sub_10008337c
//   0x1000833ac      48  sub_1000833ac
//   0x1000833dc     132  -[ADAppDelegate stopMenuMusic]
//   0x100083460     728  -[ADAppDelegate reduceMainMenuThemeVolume]
//   0x100083738     228  -[ADAppDelegate pauseGame]
//   0x10008381c      32  -[ADAppDelegate applicationWillResignActive:]
//   0x10008383c      32  -[ADAppDelegate applicationDidEnterBackground:]
//   0x10008385c       4  -[ADAppDelegate applicationWillEnterForeground:]
//   0x100083860       4  -[ADAppDelegate applicationDidBecomeActive:]
//   0x100083864       4  -[ADAppDelegate applicationWillTerminate:]
//   0x100083868      16  -[ADAppDelegate window]
//   0x100083878      56  -[ADAppDelegate setWindow:]
//   0x1000838b0      16  -[ADAppDelegate viewController]
//   0x1000838c0      56  -[ADAppDelegate setViewController:]
//   0x1000838f8      16  -[ADAppDelegate statusBar]
//   0x100083908      16  -[ADAppDelegate menu_music_playing]
//   0x100083918      16  -[ADAppDelegate setMenu_music_playing:]
//   0x100083928      16  -[ADAppDelegate currentMenuMusic]
//   0x100083938      56  -[ADAppDelegate setCurrentMenuMusic:]
//   0x100083970     184  -[ADAppDelegate .cxx_destruct]

; ======================================================================
; -[ADAppDelegate application:didFinishLaunchingWithOptions:]
; address 0x10008099c  size 1652  kind objc
; ======================================================================
  10008099c  stp     x28, x27, [sp, #-0x60]!
  1000809a0  stp     x26, x25, [sp, #0x10]
  1000809a4  stp     x24, x23, [sp, #0x20]
  1000809a8  stp     x22, x21, [sp, #0x30]
  1000809ac  stp     x20, x19, [sp, #0x40]
  1000809b0  stp     x29, x30, [sp, #0x50]
  1000809b4  add     x29, sp, #0x50
  1000809b8  mov     x20, x0
  1000809bc  adrp    x8, #0x10041e000
  1000809c0  ldr     x0, [x8, #0xe0]                          ; class UIWindow
  1000809c4  adrp    x8, #0x100416000
  1000809c8  nop
  1000809cc  ldr     x21, [x8, #0xac8]
  1000809d0  mov     x1, x21
  1000809d4  bl      _objc_msgSend                            ; [UIWindow alloc]
  1000809d8  mov     x22, x0
  1000809dc  adrp    x8, #0x10041e000
  1000809e0  ldr     x0, [x8, #0x28]                          ; class UIScreen
  1000809e4  adrp    x8, #0x100417000
  1000809e8  nop
  1000809ec  ldr     x1, [x8, #0x6e8]
  1000809f0  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000809f4  mov     x29, x29
  1000809f8  bl      _objc_retainAutoreleasedReturnValue
  1000809fc  mov     x19, x0
  100080a00  adrp    x8, #0x100417000
  100080a04  nop
  100080a08  ldr     x1, [x8, #0x748]
  100080a0c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  100080a10  adrp    x8, #0x100417000
  100080a14  nop
  100080a18  ldr     x1, [x8, #0x178]
  100080a1c  mov     x0, x22
  100080a20  bl      _objc_msgSend                            ; [[UIWindow alloc] initWithFrame:{[[UIScreen mainScreen] bounds].0, [[UIScreen mainScreen] bounds].1, [[UIScreen mainScreen] bounds].2, [[UIScreen mainScreen] bounds].3}]
  100080a24  mov     x22, x0
  100080a28  adrp    x8, #0x100419000
  100080a2c  nop
  100080a30  ldr     x1, [x8, #0xd00]
  100080a34  mov     x0, x20
  100080a38  mov     x2, x22
  100080a3c  bl      _objc_msgSend                            ; [self setWindow:[[UIWindow alloc] initWithFrame:{[[UIScreen mainScreen] bounds].0, [[UIScreen mainScreen] bounds].1, [[UIScreen mainScreen] bounds].2, [[UIScreen mainScreen] bounds].3}]]
  100080a40  mov     x0, x22
  100080a44  bl      _objc_release
  100080a48  mov     x0, x19
  100080a4c  bl      _objc_release
  100080a50  adrp    x8, #0x100419000
  100080a54  nop
  100080a58  ldr     x1, [x8, #0xd08]
  100080a5c  mov     x0, x20
  100080a60  bl      _objc_msgSend                            ; [self initPapaEngine]
  100080a64  adrp    x8, #0x10041e000
  100080a68  ldr     x0, [x8, #0x10]                          ; class OBDragDropManager
  100080a6c  adrp    x8, #0x100417000
  100080a70  nop
  100080a74  ldr     x1, [x8, #0x620]
  100080a78  bl      _objc_msgSend                            ; [OBDragDropManager sharedManager]
  100080a7c  mov     x29, x29
  100080a80  bl      _objc_retainAutoreleasedReturnValue
  100080a84  mov     x19, x0
  100080a88  adrp    x8, #0x100417000
  100080a8c  nop
  100080a90  ldr     x22, [x8, #0x6d0]
  100080a94  mov     x0, x20
  100080a98  mov     x1, x22
  100080a9c  bl      _objc_msgSend                            ; [self window]
  100080aa0  mov     x29, x29
  100080aa4  bl      _objc_retainAutoreleasedReturnValue
  100080aa8  mov     x23, x0
  100080aac  adrp    x8, #0x100419000
  100080ab0  nop
  100080ab4  ldr     x1, [x8, #0xd10]
  100080ab8  mov     x0, x19
  100080abc  mov     x2, x23
  100080ac0  bl      _objc_msgSend                            ; [[OBDragDropManager sharedManager] prepareOverlayWindowUsingMainWindow:[self window]]
  100080ac4  mov     x0, x23
  100080ac8  bl      _objc_release
  100080acc  adrp    x26, #0x10041d000
  100080ad0  ldr     x0, [x26, #0xfe0]                        ; class GAI
  100080ad4  adrp    x8, #0x100416000
  100080ad8  nop
  100080adc  ldr     x23, [x8, #0xac0]
  100080ae0  mov     x1, x23
  100080ae4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100080ae8  mov     x29, x29
  100080aec  bl      _objc_retainAutoreleasedReturnValue
  100080af0  mov     x24, x0
  100080af4  adrp    x8, #0x100417000
  100080af8  nop
  100080afc  ldr     x1, [x8, #0x2f8]
  100080b00  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100080b04  mov     x29, x29
  100080b08  bl      _objc_retainAutoreleasedReturnValue
  100080b0c  bl      _objc_release
  100080b10  mov     x0, x24
  100080b14  bl      _objc_release
  100080b18  ldr     x0, [x26, #0xfe0]                        ; class GAI
  100080b1c  mov     x1, x23
  100080b20  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100080b24  mov     x29, x29
  100080b28  bl      _objc_retainAutoreleasedReturnValue
  100080b2c  mov     x24, x0
  100080b30  adrp    x8, #0x100419000
  100080b34  nop
  100080b38  ldr     x1, [x8, #0xd18]
  100080b3c  fmov    d0, #2.00000000
  100080b40  bl      _objc_msgSend                            ; [[GAI sharedInstance] setDispatchInterval:2]
  100080b44  mov     x0, x24
  100080b48  bl      _objc_release
  100080b4c  ldr     x0, [x26, #0xfe0]                        ; class GAI
  100080b50  mov     x1, x23
  100080b54  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100080b58  mov     x29, x29
  100080b5c  bl      _objc_retainAutoreleasedReturnValue
  100080b60  mov     x24, x0
  100080b64  adrp    x8, #0x100419000
  100080b68  nop
  100080b6c  ldr     x1, [x8, #0xd20]
  100080b70  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  100080b74  mov     x29, x29
  100080b78  bl      _objc_retainAutoreleasedReturnValue
  100080b7c  mov     x25, x0
  100080b80  adrp    x8, #0x100419000
  100080b84  nop
  100080b88  ldr     x1, [x8, #0xd28]
  100080b8c  mov     x2, #0
  100080b90  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] setLogLevel:0]
  100080b94  mov     x0, x25
  100080b98  bl      _objc_release
  100080b9c  mov     x0, x24
  100080ba0  bl      _objc_release
  100080ba4  adrp    x0, #0x1003bf000
  100080ba8  add     x0, x0, #0x730                           ; @"Tracking with Beta!!"
  100080bac  bl      _NSLog                                   ; NSLog(@"Tracking with Beta!!")
  100080bb0  ldr     x0, [x26, #0xfe0]                        ; class GAI
  100080bb4  mov     x1, x23
  100080bb8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100080bbc  mov     x29, x29
  100080bc0  bl      _objc_retainAutoreleasedReturnValue
  100080bc4  mov     x24, x0
  100080bc8  adrp    x8, #0x100419000
  100080bcc  nop
  100080bd0  ldr     x1, [x8, #0xd30]
  100080bd4  adrp    x2, #0x1003bf000
  100080bd8  add     x2, x2, #0x750                           ; @"UA-46904274-3"
  100080bdc  bl      _objc_msgSend                            ; [[GAI sharedInstance] trackerWithTrackingId:@"UA-46904274-3"]
  100080be0  mov     x29, x29
  100080be4  bl      _objc_retainAutoreleasedReturnValue
  100080be8  bl      _objc_release
  100080bec  mov     x0, x24
  100080bf0  bl      _objc_release
  100080bf4  ldr     x0, [x26, #0xfe0]                        ; class GAI
  100080bf8  mov     x1, x23
  100080bfc  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100080c00  mov     x29, x29
  100080c04  bl      _objc_retainAutoreleasedReturnValue
  100080c08  mov     x23, x0
  100080c0c  adrp    x8, #0x100419000
  100080c10  nop
  100080c14  ldr     x1, [x8, #0xd38]
  100080c18  mov     w2, #1
  100080c1c  bl      _objc_msgSend                            ; [[GAI sharedInstance] setTrackUncaughtExceptions:1]
  100080c20  mov     x0, x23
  100080c24  bl      _objc_release
  100080c28  adrp    x23, #0x10041e000
  100080c2c  ldr     x0, [x23, #8]                            ; class ADTracker
  100080c30  adrp    x8, #0x100418000
  100080c34  nop
  100080c38  ldr     x1, [x8, #0x408]
  100080c3c  bl      _objc_msgSend                            ; [ADTracker initGamePlayTracker]
  100080c40  ldr     x0, [x23, #8]                            ; class ADTracker
  100080c44  adrp    x8, #0x100419000
  100080c48  nop
  100080c4c  ldr     x1, [x8, #0xd40]
  100080c50  bl      _objc_msgSend                            ; [ADTracker initArmoryTracker]
  100080c54  mov     x0, x20
  100080c58  mov     x1, x22
  100080c5c  bl      _objc_msgSend                            ; [self window]
  100080c60  mov     x29, x29
  100080c64  bl      _objc_retainAutoreleasedReturnValue
  100080c68  mov     x23, x0
  100080c6c  adrp    x28, #0x10041d000
  100080c70  ldr     x0, [x28, #0xfa0]                        ; class UIColor
  100080c74  adrp    x8, #0x100417000
  100080c78  nop
  100080c7c  ldr     x1, [x8, #0x328]
  100080c80  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100080c84  mov     x29, x29
  100080c88  bl      _objc_retainAutoreleasedReturnValue
  100080c8c  mov     x24, x0
  100080c90  adrp    x8, #0x100417000
  100080c94  nop
  100080c98  ldr     x25, [x8, #0x188]
  100080c9c  mov     x0, x23
  100080ca0  mov     x1, x25
  100080ca4  mov     x2, x24
  100080ca8  bl      _objc_msgSend                            ; [[self window] setBackgroundColor:[UIColor whiteColor]]
  100080cac  mov     x0, x24
  100080cb0  bl      _objc_release
  100080cb4  mov     x0, x23
  100080cb8  bl      _objc_release
  100080cbc  adrp    x8, #0x10041e000
  100080cc0  ldr     x0, [x8, #0x2e8]                         ; class UIViewController
  100080cc4  mov     x1, x21
  100080cc8  bl      _objc_msgSend                            ; [UIViewController alloc]
  100080ccc  adrp    x8, #0x100416000
  100080cd0  nop
  100080cd4  ldr     x23, [x8, #0xb40]
  100080cd8  mov     x3, #0
  100080cdc  adrp    x2, #0x1003bf000
  100080ce0  add     x2, x2, #0x770                           ; @"ADEmptyViewController"
  100080ce4  mov     x1, x23
  100080ce8  bl      _objc_msgSend                            ; [[UIViewController alloc] initWithNibName:@"ADEmptyViewController" bundle:0]
  100080cec  mov     x24, x0
  100080cf0  adrp    x8, #0x100419000
  100080cf4  nop
  100080cf8  ldr     x1, [x8, #0xd48]
  100080cfc  mov     x0, x20
  100080d00  mov     x2, x24
  100080d04  bl      _objc_msgSend                            ; [self setViewController:[[UIViewController alloc] initWithNibName:@"ADEmptyViewController" bundle:0]]
  100080d08  mov     x0, x24
  100080d0c  bl      _objc_release
  100080d10  adrp    x8, #0x100419000
  100080d14  nop
  100080d18  ldr     x24, [x8, #0xd50]
  100080d1c  mov     x0, x20
  100080d20  mov     x1, x24
  100080d24  bl      _objc_msgSend                            ; [self viewController]
  100080d28  mov     x29, x29
  100080d2c  bl      _objc_retainAutoreleasedReturnValue
  100080d30  mov     x26, x0
  100080d34  adrp    x8, #0x100416000
  100080d38  nop
  100080d3c  ldr     x1, [x8, #0xf18]
  100080d40  bl      _objc_msgSend                            ; [[self viewController] view]
  100080d44  mov     x29, x29
  100080d48  bl      _objc_retainAutoreleasedReturnValue
  100080d4c  mov     x27, x0
  100080d50  ldr     x0, [x28, #0xfa0]                        ; class UIColor
  100080d54  adrp    x8, #0x100417000
  100080d58  nop
  100080d5c  ldr     x1, [x8, #0x180]
  100080d60  bl      _objc_msgSend                            ; [UIColor blackColor]
  100080d64  mov     x29, x29
  100080d68  bl      _objc_retainAutoreleasedReturnValue
  100080d6c  mov     x28, x0
  100080d70  mov     x0, x27
  100080d74  mov     x1, x25
  100080d78  mov     x2, x28
  100080d7c  bl      _objc_msgSend                            ; [[[self viewController] view] setBackgroundColor:[UIColor blackColor]]
  100080d80  mov     x0, x28
  100080d84  bl      _objc_release
  100080d88  mov     x0, x27
  100080d8c  bl      _objc_release
  100080d90  mov     x0, x26
  100080d94  bl      _objc_release
  100080d98  mov     x0, x20
  100080d9c  mov     x1, x22
  100080da0  bl      _objc_msgSend                            ; [self window]
  100080da4  mov     x29, x29
  100080da8  bl      _objc_retainAutoreleasedReturnValue
  100080dac  mov     x25, x0
  100080db0  mov     x0, x20
  100080db4  mov     x1, x24
  100080db8  bl      _objc_msgSend                            ; [self viewController]
  100080dbc  mov     x29, x29
  100080dc0  bl      _objc_retainAutoreleasedReturnValue
  100080dc4  mov     x26, x0
  100080dc8  adrp    x8, #0x100419000
  100080dcc  nop
  100080dd0  ldr     x1, [x8, #0xd58]
  100080dd4  mov     x0, x25
  100080dd8  mov     x2, x26
  100080ddc  bl      _objc_msgSend                            ; [[self window] setRootViewController:[self viewController]]
  100080de0  mov     x0, x26
  100080de4  bl      _objc_release
  100080de8  mov     x0, x25
  100080dec  bl      _objc_release
  100080df0  mov     x0, x20
  100080df4  mov     x1, x22
  100080df8  bl      _objc_msgSend                            ; [self window]
  100080dfc  mov     x29, x29
  100080e00  bl      _objc_retainAutoreleasedReturnValue
  100080e04  mov     x22, x0
  100080e08  adrp    x8, #0x100419000
  100080e0c  nop
  100080e10  ldr     x1, [x8, #0xd60]
  100080e14  bl      _objc_msgSend                            ; [[self window] makeKeyAndVisible]
  100080e18  mov     x0, x22
  100080e1c  bl      _objc_release
  100080e20  adrp    x8, #0x10041e000
  100080e24  ldr     x0, [x8, #0x2f0]                         ; class ADLogoScreenViewController
  100080e28  mov     x1, x21
  100080e2c  bl      _objc_msgSend                            ; [ADLogoScreenViewController alloc]
  100080e30  mov     x21, x0
  100080e34  adrp    x8, #0x10041d000
  100080e38  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100080e3c  adrp    x8, #0x100416000
  100080e40  nop
  100080e44  ldr     x1, [x8, #0xc00]
  100080e48  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100080e4c  mov     x29, x29
  100080e50  bl      _objc_retainAutoreleasedReturnValue
  100080e54  mov     x22, x0
  100080e58  adrp    x8, #0x100416000
  100080e5c  nop
  100080e60  ldr     x1, [x8, #0xd18]
  100080e64  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100080e68  adrp    x8, #0x1003bf000
  100080e6c  add     x8, x8, #0x7b0                           ; @"ADLogoScreenViewController_iPad"
  100080e70  adrp    x9, #0x1003bf000
  100080e74  add     x9, x9, #0x790                           ; @"ADLogoScreenViewController"
  100080e78  cmp     w0, #0
  100080e7c  csel    x2, x9, x8, ne                           ; t1 = ([[ADGameParameters sharedParameters] isIphone] != 0 ? @"ADLogoScreenViewController" : @"ADLogoScreenViewController_iPad")
  100080e80  mov     x3, #0
  100080e84  mov     x0, x21
  100080e88  mov     x1, x23
  100080e8c  bl      _objc_msgSend                            ; [[ADLogoScreenViewController alloc] initWithNibName:t1 bundle:0]
  100080e90  mov     x21, x0
  100080e94  mov     x0, x22
  100080e98  bl      _objc_release
  100080e9c  mov     x0, x20
  100080ea0  mov     x1, x24
  100080ea4  bl      _objc_msgSend                            ; [self viewController]
  100080ea8  mov     x29, x29
  100080eac  bl      _objc_retainAutoreleasedReturnValue
  100080eb0  mov     x22, x0
  100080eb4  adrp    x8, #0x100417000
  100080eb8  nop
  100080ebc  ldr     x1, [x8, #0x208]
  100080ec0  adrp    x4, #0x1003b1000
  100080ec4  add     x4, x4, #0xfd0                           ; ^{-[ADAppDelegate application:didFinishLaunchingWithOptions:]_block_invoke}
  100080ec8  mov     w3, #1
  100080ecc  mov     x2, x21
  100080ed0  bl      _objc_msgSend                            ; [[self viewController] presentViewController:[[ADLogoScreenViewController alloc] initWithNibName:t1 bundle:0] animated:1 completion:^{-[ADAppDelegate application:didFinishLaunchingWithOptions:]_block_invoke}]
  100080ed4  mov     x0, x22
  100080ed8  bl      _objc_release
  100080edc  adrp    x8, #0x100419000
  100080ee0  nop
  100080ee4  ldr     x1, [x8, #0xd68]
  100080ee8  mov     x0, x20
  100080eec  bl      _objc_msgSend                            ; [self runSanityCheck]
  100080ef0  mov     x0, x21
  100080ef4  bl      _objc_release
  100080ef8  mov     x0, x19
  100080efc  bl      _objc_release
  100080f00  mov     w0, #1
  100080f04  ldp     x29, x30, [sp, #0x50]
  100080f08  ldp     x20, x19, [sp, #0x40]
  100080f0c  ldp     x22, x21, [sp, #0x30]
  100080f10  ldp     x24, x23, [sp, #0x20]
  100080f14  ldp     x26, x25, [sp, #0x10]
  100080f18  ldp     x28, x27, [sp], #0x60
  100080f1c  ret
  100080f20  mov     x20, x0
  100080f24  b       loc_100081000
  100080f28  mov     x20, x0
  100080f2c  b       loc_100081008
  100080f30  mov     x20, x0
  100080f34  b       loc_100081000
  100080f38  b       loc_100080fe0
  100080f3c  mov     x20, x0
  100080f40  b       loc_100080ff8
  100080f44  b       loc_100080fe0
  100080f48  b       loc_100080f70
  100080f4c  b       loc_100080f8c
  100080f50  b       loc_100080f8c
  100080f54  b       loc_100080f8c
  100080f58  mov     x20, x0
  100080f5c  mov     x0, x25
  100080f60  bl      _objc_release
  100080f64  b       loc_100080f90
  100080f68  b       loc_100080f8c
  100080f6c  b       loc_100080f70
loc_100080f70:
  100080f70  mov     x20, x0
  100080f74  b       loc_100080f84
  100080f78  mov     x20, x0
  100080f7c  mov     x0, x24
  100080f80  bl      _objc_release
loc_100080f84:
  100080f84  mov     x0, x23
  100080f88  b       loc_100080ffc
loc_100080f8c:
  100080f8c  mov     x20, x0
loc_100080f90:
  100080f90  mov     x0, x24
  100080f94  b       loc_100080ffc
  100080f98  mov     x20, x0
  100080f9c  b       loc_100080fbc
  100080fa0  mov     x20, x0
  100080fa4  b       loc_100080fb4
  100080fa8  mov     x20, x0
  100080fac  mov     x0, x28
  100080fb0  bl      _objc_release
loc_100080fb4:
  100080fb4  mov     x0, x27
  100080fb8  bl      _objc_release
loc_100080fbc:
  100080fbc  mov     x0, x26
  100080fc0  b       loc_100080ffc
  100080fc4  mov     x20, x0
  100080fc8  b       loc_100080fd8
  100080fcc  mov     x20, x0
  100080fd0  mov     x0, x26
  100080fd4  bl      _objc_release
loc_100080fd8:
  100080fd8  mov     x0, x25
  100080fdc  b       loc_100080ffc
loc_100080fe0:
  100080fe0  mov     x20, x0
  100080fe4  mov     x0, x22
  100080fe8  b       loc_100080ffc
  100080fec  mov     x20, x0
  100080ff0  mov     x0, x22
  100080ff4  bl      _objc_release
loc_100080ff8:
  100080ff8  mov     x0, x21
loc_100080ffc:
  100080ffc  bl      _objc_release
loc_100081000:
  100081000  mov     x0, x19
  100081004  bl      _objc_release
loc_100081008:
  100081008  mov     x0, x20
  10008100c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate application:didFinishLaunchingWithOptions:]_block_invoke
; address 0x100081010  size 4  kind block
; ======================================================================
  100081010  ret

; ======================================================================
; -[ADAppDelegate runSanityCheck]
; address 0x100081014  size 180  kind objc
; ======================================================================
  100081014  stp     x22, x21, [sp, #-0x30]!
  100081018  stp     x20, x19, [sp, #0x10]
  10008101c  stp     x29, x30, [sp, #0x20]
  100081020  add     x29, sp, #0x20
  100081024  adrp    x21, #0x10041e000
  100081028  ldr     x0, [x21, #0x98]                         ; class ADBrickManager
  10008102c  adrp    x8, #0x100417000
  100081030  nop
  100081034  ldr     x19, [x8, #0xaa8]
  100081038  mov     x1, x19
  10008103c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100081040  mov     x29, x29
  100081044  bl      _objc_retainAutoreleasedReturnValue
  100081048  mov     x20, x0
  10008104c  adrp    x8, #0x100418000
  100081050  nop
  100081054  ldr     x1, [x8, #0xf68]
  100081058  adrp    x2, #0x1003bd000
  10008105c  add     x2, x2, #0xd10                           ; @"brick_chance"
  100081060  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] loadBrickChancePlist:@"brick_chance"]
  100081064  mov     x0, x20
  100081068  bl      _objc_release
  10008106c  ldr     x0, [x21, #0x98]                         ; class ADBrickManager
  100081070  mov     x1, x19
  100081074  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100081078  mov     x29, x29
  10008107c  bl      _objc_retainAutoreleasedReturnValue
  100081080  mov     x19, x0
  100081084  adrp    x8, #0x100419000
  100081088  nop
  10008108c  ldr     x1, [x8, #0xd68]
  100081090  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] runSanityCheck]
  100081094  mov     x0, x19
  100081098  ldp     x29, x30, [sp, #0x20]
  10008109c  ldp     x20, x19, [sp, #0x10]
  1000810a0  ldp     x22, x21, [sp], #0x30
  1000810a4  b       _objc_release
  1000810a8  mov     x21, x0
  1000810ac  mov     x0, x20
  1000810b0  b       loc_1000810bc
  1000810b4  mov     x21, x0
  1000810b8  mov     x0, x19
loc_1000810bc:
  1000810bc  bl      _objc_release
  1000810c0  mov     x0, x21
  1000810c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate dictionaryForChallengeWithName:]
; address 0x1000810c8  size 244  kind objc
; ======================================================================
  1000810c8  stp     x22, x21, [sp, #-0x30]!
  1000810cc  stp     x20, x19, [sp, #0x10]
  1000810d0  stp     x29, x30, [sp, #0x20]
  1000810d4  add     x29, sp, #0x20
  1000810d8  mov     x0, x2
  1000810dc  bl      _objc_retain
  1000810e0  mov     x19, x0
  1000810e4  adrp    x8, #0x10041d000
  1000810e8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000810ec  adrp    x8, #0x100416000
  1000810f0  nop
  1000810f4  ldr     x1, [x8, #0xb58]
  1000810f8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000810fc  mov     x29, x29
  100081100  bl      _objc_retainAutoreleasedReturnValue
  100081104  mov     x21, x0
  100081108  adrp    x8, #0x100416000
  10008110c  nop
  100081110  ldr     x1, [x8, #0xd60]
  100081114  adrp    x3, #0x1003b9000
  100081118  add     x3, x3, #0xa70                           ; @"plist"
  10008111c  mov     x2, x19
  100081120  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  100081124  mov     x29, x29
  100081128  bl      _objc_retainAutoreleasedReturnValue
  10008112c  mov     x20, x0
  100081130  mov     x0, x21
  100081134  bl      _objc_release
  100081138  adrp    x8, #0x10041d000
  10008113c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100081140  adrp    x8, #0x100416000
  100081144  nop
  100081148  ldr     x1, [x8, #0xac8]
  10008114c  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100081150  adrp    x8, #0x100416000
  100081154  nop
  100081158  ldr     x1, [x8, #0xd68]
  10008115c  mov     x2, x20
  100081160  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  100081164  mov     x21, x0
  100081168  mov     x0, x20
  10008116c  bl      _objc_release
  100081170  mov     x0, x19
  100081174  bl      _objc_release
  100081178  mov     x0, x21
  10008117c  ldp     x29, x30, [sp, #0x20]
  100081180  ldp     x20, x19, [sp, #0x10]
  100081184  ldp     x22, x21, [sp], #0x30
  100081188  b       _objc_autoreleaseReturnValue
  10008118c  mov     x22, x0
  100081190  mov     x0, x20
  100081194  b       loc_1000811a8
  100081198  mov     x22, x0
  10008119c  b       loc_1000811ac
  1000811a0  mov     x22, x0
  1000811a4  mov     x0, x21
loc_1000811a8:
  1000811a8  bl      _objc_release
loc_1000811ac:
  1000811ac  mov     x0, x19
  1000811b0  bl      _objc_release
  1000811b4  mov     x0, x22
  1000811b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate loadViewController:]
; address 0x1000811bc  size 300  kind objc
; ======================================================================
  1000811bc  stp     x22, x21, [sp, #-0x30]!
  1000811c0  stp     x20, x19, [sp, #0x10]
  1000811c4  stp     x29, x30, [sp, #0x20]
  1000811c8  add     x29, sp, #0x20
  1000811cc  sub     sp, sp, #0x30
  1000811d0  mov     x20, x0
  1000811d4  mov     x0, x2
  1000811d8  bl      _objc_retain
  1000811dc  mov     x19, x0
  1000811e0  adrp    x8, #0x100419000
  1000811e4  nop
  1000811e8  ldr     x1, [x8, #0xd70]
  1000811ec  mov     w2, #2
  1000811f0  bl      _objc_msgSend                            ; [arg1 setModalTransitionStyle:2]
  1000811f4  adrp    x8, #0x100419000
  1000811f8  nop
  1000811fc  ldr     x1, [x8, #0xd50]
  100081200  mov     x0, x20
  100081204  bl      _objc_msgSend                            ; [self viewController]
  100081208  mov     x29, x29
  10008120c  bl      _objc_retainAutoreleasedReturnValue
  100081210  mov     x21, x0
  100081214  adrp    x8, #0x1003b0000
  100081218  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10008121c  mov     w9, #-0x3e000000
  100081220  str     x8, [sp]
  100081224  stp     w9, wzr, [sp, #8]
  100081228  adr     x8, #0x1000812e8                         ; &-[ADAppDelegate loadViewController:]_block_invoke
  10008122c  nop
  100081230  str     x8, [sp, #0x10]
  100081234  adrp    x8, #0x1003b2000
  100081238  add     x8, x8, #0x30                            ; &d_1003b2030
  10008123c  str     x8, [sp, #0x18]
  100081240  mov     x0, x20
  100081244  bl      _objc_retain
  100081248  str     x0, [sp, #0x20]
  10008124c  mov     x0, x19
  100081250  bl      _objc_retain
  100081254  mov     x20, x0
  100081258  str     x20, [sp, #0x28]
  10008125c  adrp    x8, #0x100417000
  100081260  nop
  100081264  ldr     x1, [x8, #0x420]
  100081268  mov     w2, #1
  10008126c  mov     x3, sp
  100081270  mov     x0, x21
  100081274  bl      _objc_msgSend                            ; [[self viewController] dismissViewControllerAnimated:1 completion:^{-[ADAppDelegate loadViewController:]_block_invoke captures +0x20=self, +0x28=arg1}]
  100081278  mov     x0, x21
  10008127c  bl      _objc_release
  100081280  ldr     x0, [sp, #0x28]
  100081284  bl      _objc_release
  100081288  ldr     x0, [sp, #0x20]
  10008128c  bl      _objc_release
  100081290  mov     x0, x20
  100081294  bl      _objc_release
  100081298  sub     sp, x29, #0x20
  10008129c  ldp     x29, x30, [sp, #0x20]
  1000812a0  ldp     x20, x19, [sp, #0x10]
  1000812a4  ldp     x22, x21, [sp], #0x30
  1000812a8  ret
  1000812ac  mov     x20, x0
  1000812b0  b       loc_1000812d8
  1000812b4  mov     x20, x0
  1000812b8  b       loc_1000812d8
  1000812bc  mov     x20, x0
  1000812c0  mov     x0, x21
  1000812c4  bl      _objc_release
  1000812c8  ldr     x0, [sp, #0x28]
  1000812cc  bl      _objc_release
  1000812d0  ldr     x0, [sp, #0x20]
  1000812d4  bl      _objc_release
loc_1000812d8:
  1000812d8  mov     x0, x19
  1000812dc  bl      _objc_release
  1000812e0  mov     x0, x20
  1000812e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate loadViewController:]_block_invoke
; address 0x1000812e8  size 116  kind block
; ======================================================================
  1000812e8  stp     x20, x19, [sp, #-0x20]!
  1000812ec  stp     x29, x30, [sp, #0x10]
  1000812f0  add     x29, sp, #0x10
  1000812f4  mov     x20, x0
  1000812f8  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000812fc  adrp    x8, #0x100419000
  100081300  nop
  100081304  ldr     x1, [x8, #0xd50]
  100081308  bl      _objc_msgSend                            ; [self viewController]
  10008130c  mov     x29, x29
  100081310  bl      _objc_retainAutoreleasedReturnValue
  100081314  mov     x19, x0
  100081318  ldr     x2, [x20, #0x28]                         ; x2 = captured arg1
  10008131c  adrp    x8, #0x100417000
  100081320  nop
  100081324  ldr     x1, [x8, #0x208]
  100081328  adrp    x4, #0x1003b2000
  10008132c  add     x4, x4, #0x10                            ; ^{-[ADAppDelegate loadViewController:]_block_invoke_block_invoke}
  100081330  mov     w3, #1
  100081334  bl      _objc_msgSend                            ; [[self viewController] presentViewController:arg1 animated:1 completion:^{-[ADAppDelegate loadViewController:]_block_invoke_block_invoke}]
  100081338  mov     x0, x19
  10008133c  ldp     x29, x30, [sp, #0x10]
  100081340  ldp     x20, x19, [sp], #0x20
  100081344  b       _objc_release
  100081348  mov     x20, x0
  10008134c  mov     x0, x19
  100081350  bl      _objc_release
  100081354  mov     x0, x20
  100081358  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate loadViewController:]_block_invoke_block_invoke
; address 0x10008135c  size 4  kind block
; ======================================================================
  10008135c  ret

; ======================================================================
; sub_100081360
; address 0x100081360  size 40  kind sub
; ======================================================================
  100081360  stp     x20, x19, [sp, #-0x20]!
  100081364  stp     x29, x30, [sp, #0x10]
  100081368  add     x29, sp, #0x10
  10008136c  mov     x19, x1
  100081370  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100081374  bl      _objc_retain
  100081378  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10008137c  ldp     x29, x30, [sp, #0x10]
  100081380  ldp     x20, x19, [sp], #0x20
  100081384  b       _objc_retain

; ======================================================================
; sub_100081388
; address 0x100081388  size 40  kind sub
; ======================================================================
  100081388  stp     x20, x19, [sp, #-0x20]!
  10008138c  stp     x29, x30, [sp, #0x10]
  100081390  add     x29, sp, #0x10
  100081394  mov     x19, x0
  100081398  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10008139c  bl      _objc_release
  1000813a0  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000813a4  ldp     x29, x30, [sp, #0x10]
  1000813a8  ldp     x20, x19, [sp], #0x20
  1000813ac  b       _objc_release

; ======================================================================
; -[ADAppDelegate goToAccessibleChallengeOverviewWithDictionary:]
; address 0x1000813b0  size 168  kind objc
; ======================================================================
  1000813b0  stp     x22, x21, [sp, #-0x30]!
  1000813b4  stp     x20, x19, [sp, #0x10]
  1000813b8  stp     x29, x30, [sp, #0x20]
  1000813bc  add     x29, sp, #0x20
  1000813c0  mov     x20, x0
  1000813c4  mov     x0, x2
  1000813c8  bl      _objc_retain
  1000813cc  mov     x19, x0
  1000813d0  adrp    x8, #0x10041e000
  1000813d4  ldr     x0, [x8, #0x2f8]                         ; class Accessible_ADChallengeOverviewViewController
  1000813d8  adrp    x8, #0x100416000
  1000813dc  nop
  1000813e0  ldr     x1, [x8, #0xac8]
  1000813e4  bl      _objc_msgSend                            ; [Accessible_ADChallengeOverviewViewController alloc]
  1000813e8  adrp    x8, #0x100416000
  1000813ec  nop
  1000813f0  ldr     x1, [x8, #0xd80]
  1000813f4  mov     x2, x19
  1000813f8  bl      _objc_msgSend                            ; [[Accessible_ADChallengeOverviewViewController alloc] initWithDictionary:arg1]
  1000813fc  mov     x21, x0
  100081400  adrp    x8, #0x100419000
  100081404  nop
  100081408  ldr     x1, [x8, #0xd78]
  10008140c  mov     x0, x20
  100081410  mov     x2, x21
  100081414  bl      _objc_msgSend                            ; [self loadViewController:[[Accessible_ADChallengeOverviewViewController alloc] initWithDictionary:arg1]]
  100081418  mov     x0, x21
  10008141c  bl      _objc_release
  100081420  mov     x0, x19
  100081424  ldp     x29, x30, [sp, #0x20]
  100081428  ldp     x20, x19, [sp, #0x10]
  10008142c  ldp     x22, x21, [sp], #0x30
  100081430  b       _objc_release
  100081434  mov     x20, x0
  100081438  b       loc_100081448
  10008143c  mov     x20, x0
  100081440  mov     x0, x21
  100081444  bl      _objc_release
loc_100081448:
  100081448  mov     x0, x19
  10008144c  bl      _objc_release
  100081450  mov     x0, x20
  100081454  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToChallengeOverviewWithDictionary:]
; address 0x100081458  size 168  kind objc
; ======================================================================
  100081458  stp     x22, x21, [sp, #-0x30]!
  10008145c  stp     x20, x19, [sp, #0x10]
  100081460  stp     x29, x30, [sp, #0x20]
  100081464  add     x29, sp, #0x20
  100081468  mov     x20, x0
  10008146c  mov     x0, x2
  100081470  bl      _objc_retain
  100081474  mov     x19, x0
  100081478  adrp    x8, #0x10041e000
  10008147c  ldr     x0, [x8, #0x300]                         ; class ADChallengeOverviewViewController
  100081480  adrp    x8, #0x100416000
  100081484  nop
  100081488  ldr     x1, [x8, #0xac8]
  10008148c  bl      _objc_msgSend                            ; [ADChallengeOverviewViewController alloc]
  100081490  adrp    x8, #0x100416000
  100081494  nop
  100081498  ldr     x1, [x8, #0xd80]
  10008149c  mov     x2, x19
  1000814a0  bl      _objc_msgSend                            ; [[ADChallengeOverviewViewController alloc] initWithDictionary:arg1]
  1000814a4  mov     x21, x0
  1000814a8  adrp    x8, #0x100419000
  1000814ac  nop
  1000814b0  ldr     x1, [x8, #0xd78]
  1000814b4  mov     x0, x20
  1000814b8  mov     x2, x21
  1000814bc  bl      _objc_msgSend                            ; [self loadViewController:[[ADChallengeOverviewViewController alloc] initWithDictionary:arg1]]
  1000814c0  mov     x0, x21
  1000814c4  bl      _objc_release
  1000814c8  mov     x0, x19
  1000814cc  ldp     x29, x30, [sp, #0x20]
  1000814d0  ldp     x20, x19, [sp, #0x10]
  1000814d4  ldp     x22, x21, [sp], #0x30
  1000814d8  b       _objc_release
  1000814dc  mov     x20, x0
  1000814e0  b       loc_1000814f0
  1000814e4  mov     x20, x0
  1000814e8  mov     x0, x21
  1000814ec  bl      _objc_release
loc_1000814f0:
  1000814f0  mov     x0, x19
  1000814f4  bl      _objc_release
  1000814f8  mov     x0, x20
  1000814fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToInputModeSelectScreen]
; address 0x100081500  size 132  kind objc
; ======================================================================
  100081500  stp     x20, x19, [sp, #-0x20]!
  100081504  stp     x29, x30, [sp, #0x10]
  100081508  add     x29, sp, #0x10
  10008150c  mov     x20, x0
  100081510  adrp    x8, #0x10041e000
  100081514  ldr     x0, [x8, #0x308]                         ; class ADInitialControlSchemeViewController
  100081518  adrp    x8, #0x100416000
  10008151c  nop
  100081520  ldr     x1, [x8, #0xac8]
  100081524  bl      _objc_msgSend                            ; [ADInitialControlSchemeViewController alloc]
  100081528  adrp    x8, #0x100416000
  10008152c  nop
  100081530  ldr     x1, [x8, #0xb40]
  100081534  mov     x3, #0
  100081538  adrp    x2, #0x1003b9000
  10008153c  add     x2, x2, #0x8f0                           ; @"ADInitialControlSchemeViewController"
  100081540  bl      _objc_msgSend                            ; [[ADInitialControlSchemeViewController alloc] initWithNibName:@"ADInitialControlSchemeViewController" bundle:0]
  100081544  mov     x19, x0
  100081548  adrp    x8, #0x100419000
  10008154c  nop
  100081550  ldr     x1, [x8, #0xd78]
  100081554  mov     x0, x20
  100081558  mov     x2, x19
  10008155c  bl      _objc_msgSend                            ; [self loadViewController:[[ADInitialControlSchemeViewController alloc] initWithNibName:@"ADInitialControlSchemeViewController" bundle:0]]
  100081560  mov     x0, x19
  100081564  ldp     x29, x30, [sp, #0x10]
  100081568  ldp     x20, x19, [sp], #0x20
  10008156c  b       _objc_release
  100081570  mov     x20, x0
  100081574  mov     x0, x19
  100081578  bl      _objc_release
  10008157c  mov     x0, x20
  100081580  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToOpener]
; address 0x100081584  size 132  kind objc
; ======================================================================
  100081584  stp     x20, x19, [sp, #-0x20]!
  100081588  stp     x29, x30, [sp, #0x10]
  10008158c  add     x29, sp, #0x10
  100081590  mov     x20, x0
  100081594  adrp    x8, #0x10041e000
  100081598  ldr     x0, [x8, #0xc8]                          ; class ADOpenerGameplayViewController
  10008159c  adrp    x8, #0x100416000
  1000815a0  nop
  1000815a4  ldr     x1, [x8, #0xac8]
  1000815a8  bl      _objc_msgSend                            ; [ADOpenerGameplayViewController alloc]
  1000815ac  adrp    x8, #0x100416000
  1000815b0  nop
  1000815b4  ldr     x1, [x8, #0xb40]
  1000815b8  mov     x3, #0
  1000815bc  adrp    x2, #0x1003bb000
  1000815c0  add     x2, x2, #0x670                           ; @"ADOpenerGameplayViewController"
  1000815c4  bl      _objc_msgSend                            ; [[ADOpenerGameplayViewController alloc] initWithNibName:@"ADOpenerGameplayViewController" bundle:0]
  1000815c8  mov     x19, x0
  1000815cc  adrp    x8, #0x100419000
  1000815d0  nop
  1000815d4  ldr     x1, [x8, #0xd78]
  1000815d8  mov     x0, x20
  1000815dc  mov     x2, x19
  1000815e0  bl      _objc_msgSend                            ; [self loadViewController:[[ADOpenerGameplayViewController alloc] initWithNibName:@"ADOpenerGameplayViewController" bundle:0]]
  1000815e4  mov     x0, x19
  1000815e8  ldp     x29, x30, [sp, #0x10]
  1000815ec  ldp     x20, x19, [sp], #0x20
  1000815f0  b       _objc_release
  1000815f4  mov     x20, x0
  1000815f8  mov     x0, x19
  1000815fc  bl      _objc_release
  100081600  mov     x0, x20
  100081604  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToGameOverEndless]
; address 0x100081608  size 216  kind objc
; ======================================================================
  100081608  stp     x20, x19, [sp, #-0x20]!
  10008160c  stp     x29, x30, [sp, #0x10]
  100081610  add     x29, sp, #0x10
  100081614  mov     x19, x0
  100081618  mov     x20, #0
  10008161c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100081620  tbz     w0, #0, loc_100081664                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  100081624  adrp    x8, #0x10041e000
  100081628  ldr     x0, [x8, #0x318]                         ; class Accessible_ADGameOverEndlessViewController
  10008162c  adrp    x8, #0x100416000
  100081630  nop
  100081634  ldr     x1, [x8, #0xac8]
  100081638  mov     x20, #0
  10008163c  bl      _objc_msgSend                            ; [Accessible_ADGameOverEndlessViewController alloc]
  100081640  adrp    x8, #0x100416000
  100081644  nop
  100081648  ldr     x1, [x8, #0xb40]
  10008164c  mov     x20, #0
  100081650  mov     x3, #0
  100081654  adrp    x2, #0x1003bf000
  100081658  add     x2, x2, #0x7f0                           ; @"Accessible_ADGameOverEndlessViewController"
  10008165c  bl      _objc_msgSend                            ; [[Accessible_ADGameOverEndlessViewController alloc] initWithNibName:@"Accessible_ADGameOverEndlessViewController" bundle:0]
  100081660  b       loc_1000816a0
loc_100081664:
  100081664  adrp    x8, #0x10041e000
  100081668  ldr     x0, [x8, #0x310]                         ; class ADGameOverEndlessViewController
  10008166c  adrp    x8, #0x100416000
  100081670  nop
  100081674  ldr     x1, [x8, #0xac8]
  100081678  mov     x20, #0
  10008167c  bl      _objc_msgSend                            ; [ADGameOverEndlessViewController alloc]
  100081680  adrp    x8, #0x100416000
  100081684  nop
  100081688  ldr     x1, [x8, #0xb40]
  10008168c  mov     x20, #0
  100081690  mov     x3, #0
  100081694  adrp    x2, #0x1003bf000
  100081698  add     x2, x2, #0x7d0                           ; @"ADGameOverEndlessViewController"
  10008169c  bl      _objc_msgSend                            ; [[ADGameOverEndlessViewController alloc] initWithNibName:@"ADGameOverEndlessViewController" bundle:0]
loc_1000816a0:
  1000816a0  mov     x20, x0
  1000816a4  adrp    x8, #0x100419000
  1000816a8  nop
  1000816ac  ldr     x1, [x8, #0xd78]
  1000816b0  mov     x0, x19
  1000816b4  mov     x2, x20
  1000816b8  bl      _objc_msgSend                            ; [self loadViewController:x2]
  1000816bc  mov     x0, x20
  1000816c0  ldp     x29, x30, [sp, #0x10]
  1000816c4  ldp     x20, x19, [sp], #0x20
  1000816c8  b       _objc_release
  1000816cc  mov     x19, x0
  1000816d0  mov     x0, x20
  1000816d4  bl      _objc_release
  1000816d8  mov     x0, x19
  1000816dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToChallengeSelector]
; address 0x1000816e0  size 444  kind objc
; ======================================================================
  1000816e0  stp     x24, x23, [sp, #-0x40]!
  1000816e4  stp     x22, x21, [sp, #0x10]
  1000816e8  stp     x20, x19, [sp, #0x20]
  1000816ec  stp     x29, x30, [sp, #0x30]
  1000816f0  add     x29, sp, #0x30
  1000816f4  mov     x19, x0
  1000816f8  mov     x20, #0
  1000816fc  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100081700  cbz     w0, loc_100081798                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100081704  adrp    x8, #0x10041e000
  100081708  ldr     x0, [x8, #0x320]                         ; class Accessible_ADChallengeSelectorViewController
  10008170c  adrp    x8, #0x100416000
  100081710  nop
  100081714  ldr     x1, [x8, #0xac8]
  100081718  mov     x20, #0
  10008171c  bl      _objc_msgSend                            ; [Accessible_ADChallengeSelectorViewController alloc]
  100081720  mov     x22, x0
  100081724  adrp    x8, #0x10041d000
  100081728  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008172c  adrp    x8, #0x100416000
  100081730  nop
  100081734  ldr     x1, [x8, #0xc00]
  100081738  mov     x20, #0
  10008173c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100081740  mov     x29, x29
  100081744  bl      _objc_retainAutoreleasedReturnValue
  100081748  mov     x21, x0
  10008174c  adrp    x8, #0x100419000
  100081750  nop
  100081754  ldr     x1, [x8, #0x520]
  100081758  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastChallengeWorld]
  10008175c  mov     x29, x29
  100081760  bl      _objc_retainAutoreleasedReturnValue
  100081764  mov     x23, x0
  100081768  adrp    x8, #0x100419000
  10008176c  nop
  100081770  ldr     x1, [x8, #0xd80]
  100081774  mov     x2, #0
  100081778  mov     x3, #0
  10008177c  mov     x4, #0
  100081780  mov     x0, x22
  100081784  mov     x5, x23
  100081788  bl      _objc_msgSend                            ; [[Accessible_ADChallengeSelectorViewController alloc] initWithNibName:0 bundle:0 loadChallenge:0 worldName:[[ADGameParameters sharedParameters] lastChallengeWorld]]
  10008178c  mov     x20, x0
  100081790  b       loc_100081824
  100081794  b       loc_100081880
loc_100081798:
  100081798  adrp    x8, #0x10041e000
  10008179c  ldr     x0, [x8, #0x328]                         ; class ADChallengeSelectorViewController
  1000817a0  adrp    x8, #0x100416000
  1000817a4  nop
  1000817a8  ldr     x1, [x8, #0xac8]
  1000817ac  mov     x20, #0
  1000817b0  bl      _objc_msgSend                            ; [ADChallengeSelectorViewController alloc]
  1000817b4  mov     x22, x0
  1000817b8  adrp    x8, #0x10041d000
  1000817bc  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000817c0  adrp    x8, #0x100416000
  1000817c4  nop
  1000817c8  ldr     x1, [x8, #0xc00]
  1000817cc  mov     x20, #0
  1000817d0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000817d4  mov     x29, x29
  1000817d8  bl      _objc_retainAutoreleasedReturnValue
  1000817dc  mov     x21, x0
  1000817e0  adrp    x8, #0x100419000
  1000817e4  nop
  1000817e8  ldr     x1, [x8, #0x520]
  1000817ec  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastChallengeWorld]
  1000817f0  mov     x29, x29
  1000817f4  bl      _objc_retainAutoreleasedReturnValue
  1000817f8  mov     x23, x0
  1000817fc  adrp    x8, #0x100419000
  100081800  nop
  100081804  ldr     x1, [x8, #0xd80]
  100081808  mov     x2, #0
  10008180c  mov     x3, #0
  100081810  mov     x4, #0
  100081814  mov     x0, x22
  100081818  mov     x5, x23
  10008181c  bl      _objc_msgSend                            ; [[ADChallengeSelectorViewController alloc] initWithNibName:0 bundle:0 loadChallenge:0 worldName:[[ADGameParameters sharedParameters] lastChallengeWorld]]
  100081820  mov     x20, x0
loc_100081824:
  100081824  mov     x0, x23
  100081828  bl      _objc_release
  10008182c  mov     x0, x21
  100081830  bl      _objc_release
  100081834  adrp    x8, #0x100419000
  100081838  nop
  10008183c  ldr     x1, [x8, #0xd78]
  100081840  mov     x0, x19
  100081844  mov     x2, x20
  100081848  bl      _objc_msgSend                            ; [self loadViewController:x2]
  10008184c  mov     x0, x20
  100081850  ldp     x29, x30, [sp, #0x30]
  100081854  ldp     x20, x19, [sp, #0x20]
  100081858  ldp     x22, x21, [sp, #0x10]
  10008185c  ldp     x24, x23, [sp], #0x40
  100081860  b       _objc_release
  100081864  mov     x19, x0
  100081868  mov     x0, x20
  10008186c  b       loc_100081890
  100081870  mov     x19, x0
  100081874  b       loc_10008188c
  100081878  mov     x19, x0
  10008187c  b       loc_10008188c
loc_100081880:
  100081880  mov     x19, x0
  100081884  mov     x0, x23
  100081888  bl      _objc_release
loc_10008188c:
  10008188c  mov     x0, x21
loc_100081890:
  100081890  bl      _objc_release
  100081894  mov     x0, x19
  100081898  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToChallengeCompletedWithDictionary:]
; address 0x10008189c  size 284  kind objc
; ======================================================================
  10008189c  stp     x22, x21, [sp, #-0x30]!
  1000818a0  stp     x20, x19, [sp, #0x10]
  1000818a4  stp     x29, x30, [sp, #0x20]
  1000818a8  add     x29, sp, #0x20
  1000818ac  mov     x20, x0
  1000818b0  mov     x0, x2
  1000818b4  bl      _objc_retain
  1000818b8  mov     x19, x0
  1000818bc  adrp    x8, #0x100419000
  1000818c0  nop
  1000818c4  ldr     x1, [x8, #0xd88]
  1000818c8  adrp    x2, #0x1003bf000
  1000818cc  add     x2, x2, #0x810                           ; @"game_over_theme"
  1000818d0  mov     x0, x20
  1000818d4  bl      _objc_msgSend                            ; [self startMenuMusic:@"game_over_theme"]
  1000818d8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000818dc  cbz     w0, loc_100081930                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  1000818e0  adrp    x8, #0x10041e000
  1000818e4  ldr     x0, [x8, #0x330]                         ; class Accessible_ADChallengeCompletedViewController
  1000818e8  adrp    x8, #0x100416000
  1000818ec  nop
  1000818f0  ldr     x1, [x8, #0xac8]
  1000818f4  bl      _objc_msgSend                            ; [Accessible_ADChallengeCompletedViewController alloc]
  1000818f8  adrp    x8, #0x100416000
  1000818fc  nop
  100081900  ldr     x1, [x8, #0xd80]
  100081904  mov     x2, x19
  100081908  bl      _objc_msgSend                            ; [[Accessible_ADChallengeCompletedViewController alloc] initWithDictionary:arg1]
  10008190c  mov     x21, x0
  100081910  adrp    x8, #0x100419000
  100081914  nop
  100081918  ldr     x1, [x8, #0xd78]
  10008191c  mov     x0, x20
  100081920  mov     x2, x21
  100081924  bl      _objc_msgSend                            ; [self loadViewController:[[Accessible_ADChallengeCompletedViewController alloc] initWithDictionary:arg1]]
  100081928  b       loc_100081978
  10008192c  b       loc_10008199c
loc_100081930:
  100081930  adrp    x8, #0x10041e000
  100081934  ldr     x0, [x8, #0x2a0]                         ; class ADChallengeCompletedViewController
  100081938  adrp    x8, #0x100416000
  10008193c  nop
  100081940  ldr     x1, [x8, #0xac8]
  100081944  bl      _objc_msgSend                            ; [ADChallengeCompletedViewController alloc]
  100081948  adrp    x8, #0x100416000
  10008194c  nop
  100081950  ldr     x1, [x8, #0xd80]
  100081954  mov     x2, x19
  100081958  bl      _objc_msgSend                            ; [[ADChallengeCompletedViewController alloc] initWithDictionary:arg1]
  10008195c  mov     x21, x0
  100081960  adrp    x8, #0x100419000
  100081964  nop
  100081968  ldr     x1, [x8, #0xd78]
  10008196c  mov     x0, x20
  100081970  mov     x2, x21
  100081974  bl      _objc_msgSend                            ; [self loadViewController:[[ADChallengeCompletedViewController alloc] initWithDictionary:arg1]]
loc_100081978:
  100081978  mov     x0, x21
  10008197c  bl      _objc_release
  100081980  mov     x0, x19
  100081984  ldp     x29, x30, [sp, #0x20]
  100081988  ldp     x20, x19, [sp, #0x10]
  10008198c  ldp     x22, x21, [sp], #0x30
  100081990  b       _objc_release
  100081994  mov     x20, x0
  100081998  b       loc_1000819a8
loc_10008199c:
  10008199c  mov     x20, x0
  1000819a0  mov     x0, x21
  1000819a4  bl      _objc_release
loc_1000819a8:
  1000819a8  mov     x0, x19
  1000819ac  bl      _objc_release
  1000819b0  mov     x0, x20
  1000819b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToChallengeFailedWithDictionary:]
; address 0x1000819b8  size 168  kind objc
; ======================================================================
  1000819b8  stp     x22, x21, [sp, #-0x30]!
  1000819bc  stp     x20, x19, [sp, #0x10]
  1000819c0  stp     x29, x30, [sp, #0x20]
  1000819c4  add     x29, sp, #0x20
  1000819c8  mov     x20, x0
  1000819cc  mov     x0, x2
  1000819d0  bl      _objc_retain
  1000819d4  mov     x19, x0
  1000819d8  adrp    x8, #0x10041e000
  1000819dc  ldr     x0, [x8, #0x338]                         ; class ADChallengeFailedViewController
  1000819e0  adrp    x8, #0x100416000
  1000819e4  nop
  1000819e8  ldr     x1, [x8, #0xac8]
  1000819ec  bl      _objc_msgSend                            ; [ADChallengeFailedViewController alloc]
  1000819f0  adrp    x8, #0x100416000
  1000819f4  nop
  1000819f8  ldr     x1, [x8, #0xd80]
  1000819fc  mov     x2, x19
  100081a00  bl      _objc_msgSend                            ; [[ADChallengeFailedViewController alloc] initWithDictionary:arg1]
  100081a04  mov     x21, x0
  100081a08  adrp    x8, #0x100419000
  100081a0c  nop
  100081a10  ldr     x1, [x8, #0xd78]
  100081a14  mov     x0, x20
  100081a18  mov     x2, x21
  100081a1c  bl      _objc_msgSend                            ; [self loadViewController:[[ADChallengeFailedViewController alloc] initWithDictionary:arg1]]
  100081a20  mov     x0, x21
  100081a24  bl      _objc_release
  100081a28  mov     x0, x19
  100081a2c  ldp     x29, x30, [sp, #0x20]
  100081a30  ldp     x20, x19, [sp, #0x10]
  100081a34  ldp     x22, x21, [sp], #0x30
  100081a38  b       _objc_release
  100081a3c  mov     x20, x0
  100081a40  b       loc_100081a50
  100081a44  mov     x20, x0
  100081a48  mov     x0, x21
  100081a4c  bl      _objc_release
loc_100081a50:
  100081a50  mov     x0, x19
  100081a54  bl      _objc_release
  100081a58  mov     x0, x20
  100081a5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToArmoryFromVC:EnableLoadOut:]
; address 0x100081a60  size 524  kind objc
; ======================================================================
  100081a60  stp     x24, x23, [sp, #-0x40]!
  100081a64  stp     x22, x21, [sp, #0x10]
  100081a68  stp     x20, x19, [sp, #0x20]
  100081a6c  stp     x29, x30, [sp, #0x30]
  100081a70  add     x29, sp, #0x30
  100081a74  mov     x20, x3
  100081a78  mov     x0, x2
  100081a7c  bl      _objc_retain
  100081a80  mov     x19, x0
  100081a84  mov     x21, #0
  100081a88  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100081a8c  cbz     w0, loc_100081ad4                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100081a90  adrp    x8, #0x10041e000
  100081a94  ldr     x0, [x8, #0x70]                          ; class Accessible_ADArmoryViewController
  100081a98  adrp    x8, #0x100416000
  100081a9c  nop
  100081aa0  ldr     x1, [x8, #0xac8]
  100081aa4  mov     x21, #0
  100081aa8  bl      _objc_msgSend                            ; [Accessible_ADArmoryViewController alloc]
  100081aac  adrp    x8, #0x100419000
  100081ab0  nop
  100081ab4  ldr     x1, [x8, #0xc50]
  100081ab8  mov     x21, #0
  100081abc  mov     x3, #0
  100081ac0  adrp    x2, #0x1003ba000
  100081ac4  add     x2, x2, #0xa70                           ; @"Accessible_ADArmoryViewController"
  100081ac8  mov     x4, x20
  100081acc  bl      _objc_msgSend                            ; [[Accessible_ADArmoryViewController alloc] initWithNibName:@"Accessible_ADArmoryViewController" bundle:0 loadoutEnabled:arg2]
  100081ad0  b       loc_100081c08
loc_100081ad4:
  100081ad4  adrp    x8, #0x10041e000
  100081ad8  ldr     x0, [x8, #0x78]                          ; class ADTarotViewController
  100081adc  adrp    x8, #0x100417000
  100081ae0  nop
  100081ae4  ldr     x22, [x8, #0x2e0]
  100081ae8  mov     x21, #0
  100081aec  mov     x1, x22
  100081af0  bl      _objc_msgSend                            ; [ADTarotViewController class]
  100081af4  mov     x2, x0
  100081af8  adrp    x8, #0x100417000
  100081afc  nop
  100081b00  ldr     x23, [x8, #0x3b8]
  100081b04  mov     x21, #0
  100081b08  mov     x0, x19
  100081b0c  mov     x1, x23
  100081b10  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[ADTarotViewController class]]
  100081b14  cbz     w0, loc_100081b64                        ; if ([arg1 isKindOfClass:[ADTarotViewController class]] == 0)
  100081b18  adrp    x8, #0x10041d000
  100081b1c  ldr     x0, [x8, #0xfb0]                         ; class ADArmoryViewController
  100081b20  adrp    x8, #0x100416000
  100081b24  nop
  100081b28  ldr     x1, [x8, #0xac8]
  100081b2c  mov     x21, #0
  100081b30  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  100081b34  adrp    x8, #0x100417000
  100081b38  nop
  100081b3c  ldr     x1, [x8, #0x7f8]
  100081b40  mov     x21, #0
  100081b44  mov     x3, #0
  100081b48  adrp    x2, #0x1003b9000
  100081b4c  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  100081b50  adrp    x4, #0x1003ba000
  100081b54  add     x4, x4, #0xa90                           ; @"loadout"
  100081b58  mov     x5, x20
  100081b5c  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 tab:@"loadout" loadoutEnabled:arg2]
  100081b60  b       loc_100081c08
loc_100081b64:
  100081b64  adrp    x8, #0x10041e000
  100081b68  ldr     x0, [x8, #0x300]                         ; class ADChallengeOverviewViewController
  100081b6c  mov     x21, #0
  100081b70  mov     x1, x22
  100081b74  bl      _objc_msgSend                            ; [ADChallengeOverviewViewController class]
  100081b78  mov     x2, x0
  100081b7c  mov     x21, #0
  100081b80  mov     x0, x19
  100081b84  mov     x1, x23
  100081b88  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[ADChallengeOverviewViewController class]]
  100081b8c  mov     x8, x0
  100081b90  adrp    x9, #0x10041d000
  100081b94  ldr     x0, [x9, #0xfb0]                         ; class ADArmoryViewController
  100081b98  adrp    x9, #0x100416000
  100081b9c  add     x9, x9, #0xac8                           ; &@selector(alloc)
  100081ba0  ldr     x1, [x9]
  100081ba4  cbz     w8, loc_100081bdc                        ; if ([arg1 isKindOfClass:[ADChallengeOverviewViewController class]] == 0)
  100081ba8  mov     x21, #0
  100081bac  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  100081bb0  adrp    x8, #0x100417000
  100081bb4  nop
  100081bb8  ldr     x1, [x8, #0x7f8]
  100081bbc  mov     x21, #0
  100081bc0  mov     x3, #0
  100081bc4  mov     x4, #0
  100081bc8  adrp    x2, #0x1003b9000
  100081bcc  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  100081bd0  mov     x5, x20
  100081bd4  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 tab:0 loadoutEnabled:arg2]
  100081bd8  b       loc_100081c08
loc_100081bdc:
  100081bdc  mov     x21, #0
  100081be0  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  100081be4  adrp    x8, #0x100419000
  100081be8  nop
  100081bec  ldr     x1, [x8, #0xc50]
  100081bf0  mov     x21, #0
  100081bf4  mov     x3, #0
  100081bf8  adrp    x2, #0x1003b9000
  100081bfc  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  100081c00  mov     x4, x20
  100081c04  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 loadoutEnabled:arg2]
loc_100081c08:
  100081c08  mov     x21, x0
  100081c0c  adrp    x8, #0x100417000
  100081c10  nop
  100081c14  ldr     x1, [x8, #0x208]
  100081c18  mov     w3, #0
  100081c1c  adrp    x4, #0x1003b2000
  100081c20  add     x4, x4, #0x80                            ; ^{-[ADAppDelegate goToArmoryFromVC:EnableLoadOut:]_block_invoke}
  100081c24  mov     x0, x19
  100081c28  mov     x2, x21
  100081c2c  bl      _objc_msgSend                            ; [arg1 presentViewController:x2 animated:0 completion:^{-[ADAppDelegate goToArmoryFromVC:EnableLoadOut:]_block_invoke}]
  100081c30  mov     x0, x21
  100081c34  bl      _objc_release
  100081c38  mov     x0, x19
  100081c3c  ldp     x29, x30, [sp, #0x30]
  100081c40  ldp     x20, x19, [sp, #0x20]
  100081c44  ldp     x22, x21, [sp, #0x10]
  100081c48  ldp     x24, x23, [sp], #0x40
  100081c4c  b       _objc_release
  100081c50  mov     x20, x0
  100081c54  mov     x0, x21
  100081c58  bl      _objc_release
  100081c5c  mov     x0, x19
  100081c60  bl      _objc_release
  100081c64  mov     x0, x20
  100081c68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToArmoryFromVC:EnableLoadOut:]_block_invoke
; address 0x100081c6c  size 4  kind block
; ======================================================================
  100081c6c  ret

; ======================================================================
; -[ADAppDelegate goToChallengeAfter:]
; address 0x100081c70  size 1132  kind objc
; ======================================================================
  100081c70  stp     x28, x27, [sp, #-0x60]!
  100081c74  stp     x26, x25, [sp, #0x10]
  100081c78  stp     x24, x23, [sp, #0x20]
  100081c7c  stp     x22, x21, [sp, #0x30]
  100081c80  stp     x20, x19, [sp, #0x40]
  100081c84  stp     x29, x30, [sp, #0x50]
  100081c88  add     x29, sp, #0x50
  100081c8c  sub     sp, sp, #0x10
  100081c90  mov     x23, x0
  100081c94  mov     x0, x2
  100081c98  bl      _objc_retain
  100081c9c  str     x0, [sp, #8]
  100081ca0  adrp    x19, #0x10041d000
  100081ca4  ldr     x0, [x19, #0xf50]                        ; class ADChallengeData
  100081ca8  adrp    x8, #0x100416000
  100081cac  nop
  100081cb0  ldr     x22, [x8, #0xdf0]
  100081cb4  mov     x26, #0
  100081cb8  mov     x1, x22
  100081cbc  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100081cc0  mov     x29, x29
  100081cc4  bl      _objc_retainAutoreleasedReturnValue
  100081cc8  mov     x21, x0
  100081ccc  adrp    x20, #0x10041d000
  100081cd0  ldr     x0, [x20, #0xef0]                        ; class ADGameParameters
  100081cd4  adrp    x8, #0x100416000
  100081cd8  nop
  100081cdc  ldr     x24, [x8, #0xc00]
  100081ce0  mov     x1, x24
  100081ce4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100081ce8  mov     x28, x23
  100081cec  mov     x29, x29
  100081cf0  bl      _objc_retainAutoreleasedReturnValue
  100081cf4  mov     x23, x0
  100081cf8  adrp    x8, #0x100419000
  100081cfc  nop
  100081d00  ldr     x25, [x8, #0x520]
  100081d04  mov     x1, x25
  100081d08  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastChallengeWorld]
  100081d0c  mov     x29, x29
  100081d10  bl      _objc_retainAutoreleasedReturnValue
  100081d14  mov     x26, x0
  100081d18  adrp    x8, #0x100419000
  100081d1c  nop
  100081d20  ldr     x1, [x8, #0x528]
  100081d24  mov     x0, x21
  100081d28  ldr     x2, [sp, #8]
  100081d2c  mov     x3, x26
  100081d30  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasChallengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]
  100081d34  mov     x27, x0
  100081d38  mov     x0, x26
  100081d3c  bl      _objc_release
  100081d40  mov     x0, x23
  100081d44  bl      _objc_release
  100081d48  mov     x0, x21
  100081d4c  bl      _objc_release
  100081d50  cbz     w27, loc_100081e6c                       ; if ([[ADChallengeData sharedChallengeData] hasChallengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]] == 0)
  100081d54  ldr     x0, [x19, #0xf50]                        ; class ADChallengeData
  100081d58  mov     x26, #0
  100081d5c  mov     x1, x22
  100081d60  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100081d64  mov     x27, x28
  100081d68  mov     x29, x29
  100081d6c  bl      _objc_retainAutoreleasedReturnValue
  100081d70  mov     x23, x0
  100081d74  ldr     x0, [x20, #0xef0]                        ; class ADGameParameters
  100081d78  mov     x1, x24
  100081d7c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100081d80  mov     x29, x29
  100081d84  bl      _objc_retainAutoreleasedReturnValue
  100081d88  mov     x24, x0
  100081d8c  mov     x1, x25
  100081d90  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastChallengeWorld]
  100081d94  mov     x29, x29
  100081d98  bl      _objc_retainAutoreleasedReturnValue
  100081d9c  mov     x25, x0
  100081da0  adrp    x8, #0x100419000
  100081da4  nop
  100081da8  ldr     x1, [x8, #0xd90]
  100081dac  mov     x0, x23
  100081db0  ldr     x2, [sp, #8]
  100081db4  mov     x3, x25
  100081db8  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]
  100081dbc  mov     x29, x29
  100081dc0  bl      _objc_retainAutoreleasedReturnValue
  100081dc4  mov     x21, x0
  100081dc8  mov     x0, x25
  100081dcc  bl      _objc_release
  100081dd0  mov     x0, x24
  100081dd4  bl      _objc_release
  100081dd8  mov     x0, x23
  100081ddc  bl      _objc_release
  100081de0  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100081de4  cbz     w0, loc_100081e88                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100081de8  ldr     x0, [x19, #0xf50]                        ; class ADChallengeData
  100081dec  mov     x1, x22
  100081df0  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100081df4  mov     x29, x29
  100081df8  bl      _objc_retainAutoreleasedReturnValue
  100081dfc  mov     x22, x0
  100081e00  adrp    x8, #0x100417000
  100081e04  nop
  100081e08  ldr     x1, [x8, #0x158]
  100081e0c  mov     x2, x21
  100081e10  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]]
  100081e14  mov     x23, x0
  100081e18  mov     x0, x22
  100081e1c  bl      _objc_release
  100081e20  tbz     w23, #0, loc_100081f78                   ; if (!([[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]] & 1))
  100081e24  adrp    x8, #0x100417000
  100081e28  nop
  100081e2c  ldr     x1, [x8, #0xa00]
  100081e30  mov     x0, x27
  100081e34  mov     x2, x21
  100081e38  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]]
  100081e3c  mov     x29, x29
  100081e40  bl      _objc_retainAutoreleasedReturnValue
  100081e44  mov     x22, x0
  100081e48  adrp    x8, #0x100418000
  100081e4c  nop
  100081e50  ldr     x1, [x8, #0xe28]
  100081e54  mov     x0, x27
  100081e58  mov     x2, x22
  100081e5c  bl      _objc_msgSend                            ; [self goToAccessibleChallengeOverviewWithDictionary:[self dictionaryForChallengeWithName:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]]]
  100081e60  mov     x0, x22
  100081e64  bl      _objc_release
  100081e68  b       loc_100081f8c
loc_100081e6c:
  100081e6c  adrp    x8, #0x100419000
  100081e70  nop
  100081e74  ldr     x1, [x8, #0xd98]
  100081e78  mov     x26, #0
  100081e7c  mov     x0, x28
  100081e80  bl      _objc_msgSend                            ; [self goToWorldSelector]
  100081e84  b       loc_100081ff4
loc_100081e88:
  100081e88  adrp    x8, #0x10041d000
  100081e8c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100081e90  adrp    x8, #0x100416000
  100081e94  nop
  100081e98  ldr     x1, [x8, #0xb58]
  100081e9c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100081ea0  mov     x29, x29
  100081ea4  bl      _objc_retainAutoreleasedReturnValue
  100081ea8  mov     x24, x0
  100081eac  adrp    x8, #0x100416000
  100081eb0  nop
  100081eb4  ldr     x1, [x8, #0xd60]
  100081eb8  adrp    x3, #0x1003b9000
  100081ebc  add     x3, x3, #0xa70                           ; @"plist"
  100081ec0  mov     x2, x21
  100081ec4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]] withExtension:@"plist"]
  100081ec8  mov     x29, x29
  100081ecc  bl      _objc_retainAutoreleasedReturnValue
  100081ed0  mov     x23, x0
  100081ed4  mov     x0, x24
  100081ed8  bl      _objc_release
  100081edc  adrp    x8, #0x10041d000
  100081ee0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100081ee4  adrp    x8, #0x100416000
  100081ee8  nop
  100081eec  ldr     x25, [x8, #0xac8]
  100081ef0  mov     x1, x25
  100081ef4  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100081ef8  adrp    x8, #0x100416000
  100081efc  nop
  100081f00  ldr     x1, [x8, #0xd68]
  100081f04  mov     x2, x23
  100081f08  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]] withExtension:@"plist"]]
  100081f0c  mov     x24, x0
  100081f10  ldr     x0, [x19, #0xf50]                        ; class ADChallengeData
  100081f14  mov     x1, x22
  100081f18  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100081f1c  mov     x29, x29
  100081f20  bl      _objc_retainAutoreleasedReturnValue
  100081f24  mov     x22, x0
  100081f28  adrp    x8, #0x100417000
  100081f2c  nop
  100081f30  ldr     x1, [x8, #0x158]
  100081f34  mov     x2, x21
  100081f38  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]]
  100081f3c  mov     x26, x0
  100081f40  mov     x0, x22
  100081f44  bl      _objc_release
  100081f48  tbz     w26, #0, loc_100081f9c                   ; if (!([[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]] & 1))
  100081f4c  adrp    x8, #0x10041e000
  100081f50  ldr     x0, [x8, #0x300]                         ; class ADChallengeOverviewViewController
  100081f54  mov     x1, x25
  100081f58  bl      _objc_msgSend                            ; [ADChallengeOverviewViewController alloc]
  100081f5c  adrp    x8, #0x100416000
  100081f60  nop
  100081f64  ldr     x1, [x8, #0xd80]
  100081f68  mov     x2, x24
  100081f6c  bl      _objc_msgSend                            ; [[ADChallengeOverviewViewController alloc] initWithDictionary:[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]] withExtension:@"plist"]]]
  100081f70  mov     x26, x0
  100081f74  b       loc_100081fc4
loc_100081f78:
  100081f78  adrp    x8, #0x100417000
  100081f7c  nop
  100081f80  ldr     x1, [x8, #0x148]
  100081f84  mov     x0, x27
  100081f88  bl      _objc_msgSend                            ; [self goToChallengeSelector]
loc_100081f8c:
  100081f8c  mov     x0, x21
  100081f90  bl      _objc_release
  100081f94  mov     x26, #0
  100081f98  b       loc_100081ff4
loc_100081f9c:
  100081f9c  adrp    x8, #0x10041e000
  100081fa0  ldr     x0, [x8, #0x340]                         ; class ADChallengeLockedViewController
  100081fa4  mov     x1, x25
  100081fa8  bl      _objc_msgSend                            ; [ADChallengeLockedViewController alloc]
  100081fac  adrp    x8, #0x100416000
  100081fb0  nop
  100081fb4  ldr     x1, [x8, #0xd80]
  100081fb8  mov     x2, x24
  100081fbc  bl      _objc_msgSend                            ; [[ADChallengeLockedViewController alloc] initWithDictionary:[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[ADChallengeData sharedChallengeData] challengeAfter:arg1 inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]] withExtension:@"plist"]]]
  100081fc0  mov     x26, x0
loc_100081fc4:
  100081fc4  mov     x0, x24
  100081fc8  bl      _objc_release
  100081fcc  mov     x0, x23
  100081fd0  bl      _objc_release
  100081fd4  mov     x0, x21
  100081fd8  bl      _objc_release
  100081fdc  adrp    x8, #0x100419000
  100081fe0  nop
  100081fe4  ldr     x1, [x8, #0xd78]
  100081fe8  mov     x0, x27
  100081fec  mov     x2, x26
  100081ff0  bl      _objc_msgSend                            ; [self loadViewController:x2]
loc_100081ff4:
  100081ff4  mov     x0, x26
  100081ff8  bl      _objc_release
  100081ffc  ldr     x0, [sp, #8]
  100082000  sub     sp, x29, #0x50
  100082004  ldp     x29, x30, [sp, #0x50]
  100082008  ldp     x20, x19, [sp, #0x40]
  10008200c  ldp     x22, x21, [sp, #0x30]
  100082010  ldp     x24, x23, [sp, #0x20]
  100082014  ldp     x26, x25, [sp, #0x10]
  100082018  ldp     x28, x27, [sp], #0x60
  10008201c  b       _objc_release
  100082020  mov     x20, x0
  100082024  mov     x0, x26
  100082028  b       loc_1000820bc
  10008202c  mov     x20, x0
  100082030  b       loc_1000820b8
  100082034  mov     x20, x0
  100082038  b       loc_1000820b8
  10008203c  mov     x20, x0
  100082040  b       loc_1000820b0
  100082044  mov     x20, x0
  100082048  mov     x0, x26
  10008204c  b       loc_1000820ac
  100082050  mov     x20, x0
  100082054  b       loc_1000820a8
  100082058  mov     x20, x0
  10008205c  b       loc_10008207c
  100082060  mov     x20, x0
  100082064  b       loc_100082074
  100082068  mov     x20, x0
  10008206c  mov     x0, x25
  100082070  bl      _objc_release
loc_100082074:
  100082074  mov     x0, x24
  100082078  bl      _objc_release
loc_10008207c:
  10008207c  mov     x0, x23
  100082080  b       loc_1000820bc
  100082084  mov     x20, x0
  100082088  b       loc_1000820b0
  10008208c  b       loc_1000820d0
  100082090  mov     x20, x0
  100082094  mov     x0, x24
  100082098  b       loc_1000820b4
  10008209c  mov     x20, x0
  1000820a0  mov     x0, x22
  1000820a4  bl      _objc_release
loc_1000820a8:
  1000820a8  mov     x0, x24
loc_1000820ac:
  1000820ac  bl      _objc_release
loc_1000820b0:
  1000820b0  mov     x0, x23
loc_1000820b4:
  1000820b4  bl      _objc_release
loc_1000820b8:
  1000820b8  mov     x0, x21
loc_1000820bc:
  1000820bc  bl      _objc_release
  1000820c0  ldr     x0, [sp, #8]
  1000820c4  bl      _objc_release
  1000820c8  mov     x0, x20
  1000820cc  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000820d0:
  1000820d0  mov     x20, x0
  1000820d4  mov     x0, x22
  1000820d8  b       loc_1000820b4

; ======================================================================
; -[ADAppDelegate goToStory]
; address 0x1000820dc  size 132  kind objc
; ======================================================================
  1000820dc  stp     x20, x19, [sp, #-0x20]!
  1000820e0  stp     x29, x30, [sp, #0x10]
  1000820e4  add     x29, sp, #0x10
  1000820e8  mov     x20, x0
  1000820ec  adrp    x8, #0x10041e000
  1000820f0  ldr     x0, [x8, #0x348]                         ; class ADStoryViewController
  1000820f4  adrp    x8, #0x100416000
  1000820f8  nop
  1000820fc  ldr     x1, [x8, #0xac8]
  100082100  bl      _objc_msgSend                            ; [ADStoryViewController alloc]
  100082104  adrp    x8, #0x100416000
  100082108  nop
  10008210c  ldr     x1, [x8, #0xb40]
  100082110  mov     x3, #0
  100082114  adrp    x2, #0x1003bf000
  100082118  add     x2, x2, #0x830                           ; @"ADStoryViewController"
  10008211c  bl      _objc_msgSend                            ; [[ADStoryViewController alloc] initWithNibName:@"ADStoryViewController" bundle:0]
  100082120  mov     x19, x0
  100082124  adrp    x8, #0x100419000
  100082128  nop
  10008212c  ldr     x1, [x8, #0xd78]
  100082130  mov     x0, x20
  100082134  mov     x2, x19
  100082138  bl      _objc_msgSend                            ; [self loadViewController:[[ADStoryViewController alloc] initWithNibName:@"ADStoryViewController" bundle:0]]
  10008213c  mov     x0, x19
  100082140  ldp     x29, x30, [sp, #0x10]
  100082144  ldp     x20, x19, [sp], #0x20
  100082148  b       _objc_release
  10008214c  mov     x20, x0
  100082150  mov     x0, x19
  100082154  bl      _objc_release
  100082158  mov     x0, x20
  10008215c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToRoulette]
; address 0x100082160  size 132  kind objc
; ======================================================================
  100082160  stp     x20, x19, [sp, #-0x20]!
  100082164  stp     x29, x30, [sp, #0x10]
  100082168  add     x29, sp, #0x10
  10008216c  mov     x20, x0
  100082170  adrp    x8, #0x10041e000
  100082174  ldr     x0, [x8, #0x350]                         ; class ADScenarioRouletteViewController
  100082178  adrp    x8, #0x100416000
  10008217c  nop
  100082180  ldr     x1, [x8, #0xac8]
  100082184  bl      _objc_msgSend                            ; [ADScenarioRouletteViewController alloc]
  100082188  adrp    x8, #0x100416000
  10008218c  nop
  100082190  ldr     x1, [x8, #0xb40]
  100082194  mov     x3, #0
  100082198  adrp    x2, #0x1003bf000
  10008219c  add     x2, x2, #0x850                           ; @"ADScenarioRouletteViewController"
  1000821a0  bl      _objc_msgSend                            ; [[ADScenarioRouletteViewController alloc] initWithNibName:@"ADScenarioRouletteViewController" bundle:0]
  1000821a4  mov     x19, x0
  1000821a8  adrp    x8, #0x100419000
  1000821ac  nop
  1000821b0  ldr     x1, [x8, #0xd78]
  1000821b4  mov     x0, x20
  1000821b8  mov     x2, x19
  1000821bc  bl      _objc_msgSend                            ; [self loadViewController:[[ADScenarioRouletteViewController alloc] initWithNibName:@"ADScenarioRouletteViewController" bundle:0]]
  1000821c0  mov     x0, x19
  1000821c4  ldp     x29, x30, [sp, #0x10]
  1000821c8  ldp     x20, x19, [sp], #0x20
  1000821cc  b       _objc_release
  1000821d0  mov     x20, x0
  1000821d4  mov     x0, x19
  1000821d8  bl      _objc_release
  1000821dc  mov     x0, x20
  1000821e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToGameplay]
; address 0x1000821e4  size 148  kind objc
; ======================================================================
  1000821e4  stp     x20, x19, [sp, #-0x20]!
  1000821e8  stp     x29, x30, [sp, #0x10]
  1000821ec  add     x29, sp, #0x10
  1000821f0  mov     x20, x0
  1000821f4  adrp    x8, #0x100419000
  1000821f8  nop
  1000821fc  ldr     x1, [x8, #0xda0]
  100082200  bl      _objc_msgSend                            ; [self stopMenuMusic]
  100082204  adrp    x8, #0x10041e000
  100082208  ldr     x0, [x8, #0xc0]                          ; class ADGameplayViewController
  10008220c  adrp    x8, #0x100416000
  100082210  nop
  100082214  ldr     x1, [x8, #0xac8]
  100082218  bl      _objc_msgSend                            ; [ADGameplayViewController alloc]
  10008221c  adrp    x8, #0x100416000
  100082220  nop
  100082224  ldr     x1, [x8, #0xb40]
  100082228  mov     x3, #0
  10008222c  adrp    x2, #0x1003bd000
  100082230  add     x2, x2, #0xf50                           ; @"ADGameplayViewController"
  100082234  bl      _objc_msgSend                            ; [[ADGameplayViewController alloc] initWithNibName:@"ADGameplayViewController" bundle:0]
  100082238  mov     x19, x0
  10008223c  adrp    x8, #0x100419000
  100082240  nop
  100082244  ldr     x1, [x8, #0xd78]
  100082248  mov     x0, x20
  10008224c  mov     x2, x19
  100082250  bl      _objc_msgSend                            ; [self loadViewController:[[ADGameplayViewController alloc] initWithNibName:@"ADGameplayViewController" bundle:0]]
  100082254  mov     x0, x19
  100082258  ldp     x29, x30, [sp, #0x10]
  10008225c  ldp     x20, x19, [sp], #0x20
  100082260  b       _objc_release
  100082264  mov     x20, x0
  100082268  mov     x0, x19
  10008226c  bl      _objc_release
  100082270  mov     x0, x20
  100082274  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToChallengeWithDict:]
; address 0x100082278  size 196  kind objc
; ======================================================================
  100082278  stp     x22, x21, [sp, #-0x30]!
  10008227c  stp     x20, x19, [sp, #0x10]
  100082280  stp     x29, x30, [sp, #0x20]
  100082284  add     x29, sp, #0x20
  100082288  mov     x20, x0
  10008228c  mov     x0, x2
  100082290  bl      _objc_retain
  100082294  mov     x19, x0
  100082298  adrp    x8, #0x100419000
  10008229c  nop
  1000822a0  ldr     x1, [x8, #0xda0]
  1000822a4  mov     x0, x20
  1000822a8  bl      _objc_msgSend                            ; [self stopMenuMusic]
  1000822ac  adrp    x8, #0x10041e000
  1000822b0  ldr     x0, [x8, #0x1e8]                         ; class ADChallengeGameplayViewController
  1000822b4  adrp    x8, #0x100416000
  1000822b8  nop
  1000822bc  ldr     x1, [x8, #0xac8]
  1000822c0  bl      _objc_msgSend                            ; [ADChallengeGameplayViewController alloc]
  1000822c4  adrp    x8, #0x100419000
  1000822c8  nop
  1000822cc  ldr     x1, [x8, #0xda8]
  1000822d0  mov     x2, #0
  1000822d4  mov     x3, #0
  1000822d8  mov     x4, x19
  1000822dc  bl      _objc_msgSend                            ; [[ADChallengeGameplayViewController alloc] initWithNibName:0 bundle:0 challengeDictionary:arg1]
  1000822e0  mov     x21, x0
  1000822e4  adrp    x8, #0x100419000
  1000822e8  nop
  1000822ec  ldr     x1, [x8, #0xd78]
  1000822f0  mov     x0, x20
  1000822f4  mov     x2, x21
  1000822f8  bl      _objc_msgSend                            ; [self loadViewController:[[ADChallengeGameplayViewController alloc] initWithNibName:0 bundle:0 challengeDictionary:arg1]]
  1000822fc  mov     x0, x21
  100082300  bl      _objc_release
  100082304  mov     x0, x19
  100082308  ldp     x29, x30, [sp, #0x20]
  10008230c  ldp     x20, x19, [sp, #0x10]
  100082310  ldp     x22, x21, [sp], #0x30
  100082314  b       _objc_release
  100082318  mov     x20, x0
  10008231c  b       loc_10008232c
  100082320  mov     x20, x0
  100082324  mov     x0, x21
  100082328  bl      _objc_release
loc_10008232c:
  10008232c  mov     x0, x19
  100082330  bl      _objc_release
  100082334  mov     x0, x20
  100082338  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToWorldSelector]
; address 0x10008233c  size 156  kind objc
; ======================================================================
  10008233c  stp     x20, x19, [sp, #-0x20]!
  100082340  stp     x29, x30, [sp, #0x10]
  100082344  add     x29, sp, #0x10
  100082348  mov     x20, x0
  10008234c  adrp    x8, #0x100419000
  100082350  nop
  100082354  ldr     x1, [x8, #0xd88]
  100082358  adrp    x2, #0x1003bf000
  10008235c  add     x2, x2, #0x870                           ; @"main_menu_theme"
  100082360  bl      _objc_msgSend                            ; [self startMenuMusic:@"main_menu_theme"]
  100082364  adrp    x8, #0x10041e000
  100082368  ldr     x0, [x8, #0x358]                         ; class ADWorldChallengeListViewController
  10008236c  adrp    x8, #0x100416000
  100082370  nop
  100082374  ldr     x1, [x8, #0xac8]
  100082378  bl      _objc_msgSend                            ; [ADWorldChallengeListViewController alloc]
  10008237c  adrp    x8, #0x100416000
  100082380  nop
  100082384  ldr     x1, [x8, #0xb40]
  100082388  mov     x3, #0
  10008238c  adrp    x2, #0x1003bd000
  100082390  add     x2, x2, #0x330                           ; @"ADWorldChallengeListViewController"
  100082394  bl      _objc_msgSend                            ; [[ADWorldChallengeListViewController alloc] initWithNibName:@"ADWorldChallengeListViewController" bundle:0]
  100082398  mov     x19, x0
  10008239c  adrp    x8, #0x100419000
  1000823a0  nop
  1000823a4  ldr     x1, [x8, #0xd78]
  1000823a8  mov     x0, x20
  1000823ac  mov     x2, x19
  1000823b0  bl      _objc_msgSend                            ; [self loadViewController:[[ADWorldChallengeListViewController alloc] initWithNibName:@"ADWorldChallengeListViewController" bundle:0]]
  1000823b4  mov     x0, x19
  1000823b8  ldp     x29, x30, [sp, #0x10]
  1000823bc  ldp     x20, x19, [sp], #0x20
  1000823c0  b       _objc_release
  1000823c4  mov     x20, x0
  1000823c8  mov     x0, x19
  1000823cc  bl      _objc_release
  1000823d0  mov     x0, x20
  1000823d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToMainMenu]
; address 0x1000823d8  size 156  kind objc
; ======================================================================
  1000823d8  stp     x20, x19, [sp, #-0x20]!
  1000823dc  stp     x29, x30, [sp, #0x10]
  1000823e0  add     x29, sp, #0x10
  1000823e4  mov     x20, x0
  1000823e8  adrp    x8, #0x100419000
  1000823ec  nop
  1000823f0  ldr     x1, [x8, #0xd88]
  1000823f4  adrp    x2, #0x1003bf000
  1000823f8  add     x2, x2, #0x870                           ; @"main_menu_theme"
  1000823fc  bl      _objc_msgSend                            ; [self startMenuMusic:@"main_menu_theme"]
  100082400  adrp    x8, #0x10041e000
  100082404  ldr     x0, [x8, #0x360]                         ; class ADMainMenuViewController
  100082408  adrp    x8, #0x100416000
  10008240c  nop
  100082410  ldr     x1, [x8, #0xac8]
  100082414  bl      _objc_msgSend                            ; [ADMainMenuViewController alloc]
  100082418  adrp    x8, #0x100416000
  10008241c  nop
  100082420  ldr     x1, [x8, #0xb40]
  100082424  mov     x3, #0
  100082428  adrp    x2, #0x1003be000
  10008242c  add     x2, x2, #0x930                           ; @"ADMainMenuViewController"
  100082430  bl      _objc_msgSend                            ; [[ADMainMenuViewController alloc] initWithNibName:@"ADMainMenuViewController" bundle:0]
  100082434  mov     x19, x0
  100082438  adrp    x8, #0x100419000
  10008243c  nop
  100082440  ldr     x1, [x8, #0xd78]
  100082444  mov     x0, x20
  100082448  mov     x2, x19
  10008244c  bl      _objc_msgSend                            ; [self loadViewController:[[ADMainMenuViewController alloc] initWithNibName:@"ADMainMenuViewController" bundle:0]]
  100082450  mov     x0, x19
  100082454  ldp     x29, x30, [sp, #0x10]
  100082458  ldp     x20, x19, [sp], #0x20
  10008245c  b       _objc_release
  100082460  mov     x20, x0
  100082464  mov     x0, x19
  100082468  bl      _objc_release
  10008246c  mov     x0, x20
  100082470  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToPlayMenu]
; address 0x100082474  size 160  kind objc
; ======================================================================
  100082474  stp     x20, x19, [sp, #-0x20]!
  100082478  stp     x29, x30, [sp, #0x10]
  10008247c  add     x29, sp, #0x10
  100082480  mov     x20, x0
  100082484  adrp    x8, #0x100419000
  100082488  nop
  10008248c  ldr     x1, [x8, #0xd88]
  100082490  adrp    x2, #0x1003bf000
  100082494  add     x2, x2, #0x870                           ; @"main_menu_theme"
  100082498  bl      _objc_msgSend                            ; [self startMenuMusic:@"main_menu_theme"]
  10008249c  adrp    x8, #0x10041e000
  1000824a0  ldr     x0, [x8, #0x368]                         ; class ADPlayMenuViewController
  1000824a4  adrp    x8, #0x100416000
  1000824a8  nop
  1000824ac  ldr     x1, [x8, #0xac8]
  1000824b0  bl      _objc_msgSend                            ; [ADPlayMenuViewController alloc]
  1000824b4  adrp    x8, #0x100419000
  1000824b8  nop
  1000824bc  ldr     x1, [x8, #0xdb0]
  1000824c0  mov     x3, #0
  1000824c4  mov     w4, #0
  1000824c8  adrp    x2, #0x1003bf000
  1000824cc  add     x2, x2, #0x890                           ; @"ADPlayMenuViewController"
  1000824d0  bl      _objc_msgSend                            ; [[ADPlayMenuViewController alloc] initWithNibName:@"ADPlayMenuViewController" bundle:0 shouldAnimate:0]
  1000824d4  mov     x19, x0
  1000824d8  adrp    x8, #0x100419000
  1000824dc  nop
  1000824e0  ldr     x1, [x8, #0xd78]
  1000824e4  mov     x0, x20
  1000824e8  mov     x2, x19
  1000824ec  bl      _objc_msgSend                            ; [self loadViewController:[[ADPlayMenuViewController alloc] initWithNibName:@"ADPlayMenuViewController" bundle:0 shouldAnimate:0]]
  1000824f0  mov     x0, x19
  1000824f4  ldp     x29, x30, [sp, #0x10]
  1000824f8  ldp     x20, x19, [sp], #0x20
  1000824fc  b       _objc_release
  100082500  mov     x20, x0
  100082504  mov     x0, x19
  100082508  bl      _objc_release
  10008250c  mov     x0, x20
  100082510  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToInfoScreen:]
; address 0x100082514  size 168  kind objc
; ======================================================================
  100082514  stp     x22, x21, [sp, #-0x30]!
  100082518  stp     x20, x19, [sp, #0x10]
  10008251c  stp     x29, x30, [sp, #0x20]
  100082520  add     x29, sp, #0x20
  100082524  mov     x20, x0
  100082528  mov     x0, x2
  10008252c  bl      _objc_retain
  100082530  mov     x19, x0
  100082534  adrp    x8, #0x10041e000
  100082538  ldr     x0, [x8, #0x370]                         ; class ADInfoViewController
  10008253c  adrp    x8, #0x100416000
  100082540  nop
  100082544  ldr     x1, [x8, #0xac8]
  100082548  bl      _objc_msgSend                            ; [ADInfoViewController alloc]
  10008254c  adrp    x8, #0x100419000
  100082550  nop
  100082554  ldr     x1, [x8, #0xdb8]
  100082558  mov     x2, x19
  10008255c  bl      _objc_msgSend                            ; [[ADInfoViewController alloc] initWithPageName:arg1]
  100082560  mov     x21, x0
  100082564  adrp    x8, #0x100419000
  100082568  nop
  10008256c  ldr     x1, [x8, #0xd78]
  100082570  mov     x0, x20
  100082574  mov     x2, x21
  100082578  bl      _objc_msgSend                            ; [self loadViewController:[[ADInfoViewController alloc] initWithPageName:arg1]]
  10008257c  mov     x0, x21
  100082580  bl      _objc_release
  100082584  mov     x0, x19
  100082588  ldp     x29, x30, [sp, #0x20]
  10008258c  ldp     x20, x19, [sp, #0x10]
  100082590  ldp     x22, x21, [sp], #0x30
  100082594  b       _objc_release
  100082598  mov     x20, x0
  10008259c  b       loc_1000825ac
  1000825a0  mov     x20, x0
  1000825a4  mov     x0, x21
  1000825a8  bl      _objc_release
loc_1000825ac:
  1000825ac  mov     x0, x19
  1000825b0  bl      _objc_release
  1000825b4  mov     x0, x20
  1000825b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate goToTarot]
; address 0x1000825bc  size 132  kind objc
; ======================================================================
  1000825bc  stp     x20, x19, [sp, #-0x20]!
  1000825c0  stp     x29, x30, [sp, #0x10]
  1000825c4  add     x29, sp, #0x10
  1000825c8  mov     x20, x0
  1000825cc  adrp    x8, #0x10041e000
  1000825d0  ldr     x0, [x8, #0x78]                          ; class ADTarotViewController
  1000825d4  adrp    x8, #0x100416000
  1000825d8  nop
  1000825dc  ldr     x1, [x8, #0xac8]
  1000825e0  bl      _objc_msgSend                            ; [ADTarotViewController alloc]
  1000825e4  adrp    x8, #0x100416000
  1000825e8  nop
  1000825ec  ldr     x1, [x8, #0xb40]
  1000825f0  mov     x3, #0
  1000825f4  adrp    x2, #0x1003bc000
  1000825f8  add     x2, x2, #0x390                           ; @"ADTarotViewController"
  1000825fc  bl      _objc_msgSend                            ; [[ADTarotViewController alloc] initWithNibName:@"ADTarotViewController" bundle:0]
  100082600  mov     x19, x0
  100082604  adrp    x8, #0x100419000
  100082608  nop
  10008260c  ldr     x1, [x8, #0xd78]
  100082610  mov     x0, x20
  100082614  mov     x2, x19
  100082618  bl      _objc_msgSend                            ; [self loadViewController:[[ADTarotViewController alloc] initWithNibName:@"ADTarotViewController" bundle:0]]
  10008261c  mov     x0, x19
  100082620  ldp     x29, x30, [sp, #0x10]
  100082624  ldp     x20, x19, [sp], #0x20
  100082628  b       _objc_release
  10008262c  mov     x20, x0
  100082630  mov     x0, x19
  100082634  bl      _objc_release
  100082638  mov     x0, x20
  10008263c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate popToRoot]
; address 0x100082640  size 4  kind objc
; ======================================================================
  100082640  ret

; ======================================================================
; -[ADAppDelegate goToTabbedChallengeScreen]
; address 0x100082644  size 132  kind objc
; ======================================================================
  100082644  stp     x20, x19, [sp, #-0x20]!
  100082648  stp     x29, x30, [sp, #0x10]
  10008264c  add     x29, sp, #0x10
  100082650  mov     x20, x0
  100082654  adrp    x8, #0x10041e000
  100082658  ldr     x0, [x8, #0x358]                         ; class ADWorldChallengeListViewController
  10008265c  adrp    x8, #0x100416000
  100082660  nop
  100082664  ldr     x1, [x8, #0xac8]
  100082668  bl      _objc_msgSend                            ; [ADWorldChallengeListViewController alloc]
  10008266c  adrp    x8, #0x100416000
  100082670  nop
  100082674  ldr     x1, [x8, #0xb40]
  100082678  mov     x3, #0
  10008267c  adrp    x2, #0x1003bd000
  100082680  add     x2, x2, #0x330                           ; @"ADWorldChallengeListViewController"
  100082684  bl      _objc_msgSend                            ; [[ADWorldChallengeListViewController alloc] initWithNibName:@"ADWorldChallengeListViewController" bundle:0]
  100082688  mov     x19, x0
  10008268c  adrp    x8, #0x100419000
  100082690  nop
  100082694  ldr     x1, [x8, #0xd78]
  100082698  mov     x0, x20
  10008269c  mov     x2, x19
  1000826a0  bl      _objc_msgSend                            ; [self loadViewController:[[ADWorldChallengeListViewController alloc] initWithNibName:@"ADWorldChallengeListViewController" bundle:0]]
  1000826a4  mov     x0, x19
  1000826a8  ldp     x29, x30, [sp, #0x10]
  1000826ac  ldp     x20, x19, [sp], #0x20
  1000826b0  b       _objc_release
  1000826b4  mov     x20, x0
  1000826b8  mov     x0, x19
  1000826bc  bl      _objc_release
  1000826c0  mov     x0, x20
  1000826c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate showMetrics]
; address 0x1000826c8  size 724  kind objc
; ======================================================================
  1000826c8  stp     d9, d8, [sp, #-0x60]!
  1000826cc  stp     x26, x25, [sp, #0x10]
  1000826d0  stp     x24, x23, [sp, #0x20]
  1000826d4  stp     x22, x21, [sp, #0x30]
  1000826d8  stp     x20, x19, [sp, #0x40]
  1000826dc  stp     x29, x30, [sp, #0x50]
  1000826e0  add     x29, sp, #0x50
  1000826e4  sub     sp, sp, #0x90
  1000826e8  mov     x20, x0
  1000826ec  adrp    x8, #0x10041f000
  1000826f0  ldrsw   x26, [x8, #0xe74]                        ; ivar offset ADAppDelegate.metricsViewController (+0x8)
  1000826f4  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  1000826f8  adrp    x8, #0x100416000
  1000826fc  nop
  100082700  ldr     x21, [x8, #0xf18]
  100082704  mov     x1, x21
  100082708  bl      _objc_msgSend                            ; [self->metricsViewController view]
  10008270c  mov     x29, x29
  100082710  bl      _objc_retainAutoreleasedReturnValue
  100082714  mov     x19, x0
  100082718  adrp    x8, #0x100417000
  10008271c  nop
  100082720  ldr     x1, [x8, #0x1d0]
  100082724  bl      _objc_msgSend                            ; [[self->metricsViewController view] removeFromSuperview]
  100082728  mov     x0, x19
  10008272c  bl      _objc_release
  100082730  adrp    x8, #0x100417000
  100082734  nop
  100082738  ldr     x1, [x8, #0x6d0]
  10008273c  mov     x0, x20
  100082740  bl      _objc_msgSend                            ; [self window]
  100082744  mov     x29, x29
  100082748  bl      _objc_retainAutoreleasedReturnValue
  10008274c  mov     x19, x0
  100082750  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  100082754  mov     x1, x21
  100082758  bl      _objc_msgSend                            ; [self->metricsViewController view]
  10008275c  mov     x29, x29
  100082760  bl      _objc_retainAutoreleasedReturnValue
  100082764  mov     x22, x0
  100082768  adrp    x8, #0x100416000
  10008276c  nop
  100082770  ldr     x1, [x8, #0xf20]
  100082774  mov     x0, x19
  100082778  mov     x2, x22
  10008277c  bl      _objc_msgSend                            ; [[self window] addSubview:[self->metricsViewController view]]
  100082780  mov     x0, x22
  100082784  bl      _objc_release
  100082788  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  10008278c  mov     x1, x21
  100082790  bl      _objc_msgSend                            ; [self->metricsViewController view]
  100082794  mov     x29, x29
  100082798  bl      _objc_retainAutoreleasedReturnValue
  10008279c  mov     x22, x0
  1000827a0  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  1000827a4  mov     x1, x21
  1000827a8  bl      _objc_msgSend                            ; [self->metricsViewController view]
  1000827ac  mov     x29, x29
  1000827b0  bl      _objc_retainAutoreleasedReturnValue
  1000827b4  mov     x23, x0
  1000827b8  adrp    x8, #0x100416000
  1000827bc  nop
  1000827c0  ldr     x25, [x8, #0xf38]
  1000827c4  mov     x1, x25
  1000827c8  bl      _objc_msgSend                            ; [[self->metricsViewController view] frame]
  1000827cc  mov     v8.16b, v2.16b
  1000827d0  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  1000827d4  mov     x1, x21
  1000827d8  bl      _objc_msgSend                            ; [self->metricsViewController view]
  1000827dc  mov     x29, x29
  1000827e0  bl      _objc_retainAutoreleasedReturnValue
  1000827e4  mov     x24, x0
  1000827e8  mov     x1, x25
  1000827ec  bl      _objc_msgSend                            ; [[self->metricsViewController view] frame]
  1000827f0  adrp    x8, #0x100417000
  1000827f4  nop
  1000827f8  ldr     x1, [x8, #0x7b8]
  1000827fc  nop
  100082800  ldr     d1, #0x100181cc0                         ; d1 = 385.0
  100082804  movi    v0.16b, #0
  100082808  mov     x0, x22
  10008280c  mov     v2.16b, v8.16b
  100082810  bl      _objc_msgSend                            ; [[self->metricsViewController view] setFrame:{0, 385, [[self->metricsViewController view] frame].2, [[self->metricsViewController view] frame].3}]
  100082814  mov     x0, x24
  100082818  bl      _objc_release
  10008281c  mov     x0, x23
  100082820  bl      _objc_release
  100082824  mov     x0, x22
  100082828  bl      _objc_release
  10008282c  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  100082830  mov     x1, x21
  100082834  bl      _objc_msgSend                            ; [self->metricsViewController view]
  100082838  mov     x29, x29
  10008283c  bl      _objc_retainAutoreleasedReturnValue
  100082840  mov     x22, x0
  100082844  adrp    x8, #0x100417000
  100082848  nop
  10008284c  ldr     x1, [x8, #0x998]
  100082850  mov     w2, #0
  100082854  bl      _objc_msgSend                            ; [[self->metricsViewController view] setUserInteractionEnabled:0]
  100082858  mov     x0, x22
  10008285c  bl      _objc_release
  100082860  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  100082864  mov     x1, x21
  100082868  bl      _objc_msgSend                            ; [self->metricsViewController view]
  10008286c  mov     x29, x29
  100082870  bl      _objc_retainAutoreleasedReturnValue
  100082874  mov     x23, x0
  100082878  adrp    x8, #0x1003b0000
  10008287c  ldr     x8, [x8]                                 ; _CGAffineTransformIdentity
  100082880  ldr     q0, [x8, #0x20]                          ; q0 = _CGAffineTransformIdentity[+0x20]
  100082884  str     q0, [sp, #0x80]
  100082888  ldp     q0, q1, [x8]
  10008288c  stp     q0, q1, [sp, #0x60]
  100082890  adrp    x8, #0x100417000
  100082894  nop
  100082898  ldr     x22, [x8, #0x8a8]
  10008289c  add     x2, sp, #0x60
  1000828a0  mov     x1, x22
  1000828a4  bl      _objc_msgSend                            ; [[self->metricsViewController view] setTransform:&sp[0x60]]
  1000828a8  mov     x0, x23
  1000828ac  bl      _objc_release
  1000828b0  ldr     x0, [x20, x26]                           ; x0 = self->metricsViewController
  1000828b4  mov     x1, x21
  1000828b8  bl      _objc_msgSend                            ; [self->metricsViewController view]
  1000828bc  mov     x29, x29
  1000828c0  bl      _objc_retainAutoreleasedReturnValue
  1000828c4  mov     x21, x0
  1000828c8  nop
  1000828cc  ldr     d0, #0x100181ad0                         ; d0 = -1.57079633
  1000828d0  add     x8, sp, #0x30
  1000828d4  bl      _CGAffineTransformMakeRotation           ; CGAffineTransformMakeRotation([self->metricsViewController view])
  1000828d8  ldr     q0, [sp, #0x50]
  1000828dc  str     q0, [sp, #0x20]
  1000828e0  ldr     q0, [sp, #0x40]
  1000828e4  str     q0, [sp, #0x10]
  1000828e8  ldr     q0, [sp, #0x30]
  1000828ec  str     q0, [sp]
  1000828f0  mov     x2, sp
  1000828f4  mov     x0, x21
  1000828f8  mov     x1, x22
  1000828fc  bl      _objc_msgSend                            ; [[self->metricsViewController view] setTransform:&sp[0x0]]
  100082900  mov     x0, x21
  100082904  bl      _objc_release
  100082908  mov     x0, x19
  10008290c  bl      _objc_release
  100082910  sub     sp, x29, #0x50
  100082914  ldp     x29, x30, [sp, #0x50]
  100082918  ldp     x20, x19, [sp, #0x40]
  10008291c  ldp     x22, x21, [sp, #0x30]
  100082920  ldp     x24, x23, [sp, #0x20]
  100082924  ldp     x26, x25, [sp, #0x10]
  100082928  ldp     d9, d8, [sp], #0x60
  10008292c  ret
  100082930  mov     x20, x0
  100082934  b       loc_100082980
  100082938  mov     x20, x0
  10008293c  b       loc_10008294c
  100082940  mov     x20, x0
  100082944  mov     x0, x24
  100082948  bl      _objc_release
loc_10008294c:
  10008294c  mov     x0, x23
  100082950  bl      _objc_release
  100082954  b       loc_100082978
  100082958  mov     x20, x0
  10008295c  mov     x0, x21
  100082960  b       loc_10008297c
  100082964  mov     x20, x0
  100082968  b       loc_100082980
  10008296c  b       loc_100082974
  100082970  b       loc_100082974
loc_100082974:
  100082974  mov     x20, x0
loc_100082978:
  100082978  mov     x0, x22
loc_10008297c:
  10008297c  bl      _objc_release
loc_100082980:
  100082980  mov     x0, x19
  100082984  bl      _objc_release
  100082988  mov     x0, x20
  10008298c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100082990  mov     x20, x0
  100082994  mov     x0, x23
  100082998  b       loc_10008297c

; ======================================================================
; -[ADAppDelegate setStatusBar:]
; address 0x10008299c  size 56  kind objc
; ======================================================================
  10008299c  stp     x20, x19, [sp, #-0x20]!
  1000829a0  stp     x29, x30, [sp, #0x10]
  1000829a4  add     x29, sp, #0x10
  1000829a8  mov     x19, x0
  1000829ac  mov     x0, x2
  1000829b0  bl      _objc_retain
  1000829b4  adrp    x8, #0x10041f000
  1000829b8  ldrsw   x9, [x8, #0xe78]                         ; ivar offset ADAppDelegate._statusBar (+0x48)
  1000829bc  ldr     x8, [x19, x9]                            ; x8 = self->_statusBar
  1000829c0  str     x0, [x19, x9]                            ; self->_statusBar = arg1
  1000829c4  mov     x0, x8
  1000829c8  ldp     x29, x30, [sp, #0x10]
  1000829cc  ldp     x20, x19, [sp], #0x20
  1000829d0  b       _objc_release

; ======================================================================
; -[ADAppDelegate initPapaEngine]
; address 0x1000829d4  size 548  kind objc
; ======================================================================
  1000829d4  stp     x22, x21, [sp, #-0x30]!
  1000829d8  stp     x20, x19, [sp, #0x10]
  1000829dc  stp     x29, x30, [sp, #0x20]
  1000829e0  add     x29, sp, #0x20
  1000829e4  mov     x19, x0
  1000829e8  adrp    x22, #0x10041d000
  1000829ec  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  1000829f0  adrp    x8, #0x100419000
  1000829f4  nop
  1000829f8  ldr     x1, [x8, #0xdc0]
  1000829fc  adrp    x2, #0x1003bf000
  100082a00  add     x2, x2, #0x8b0                           ; @"meta"
  100082a04  bl      _objc_msgSend                            ; [S3DEngine setPlayListMetaPath:@"meta"]
  100082a08  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082a0c  adrp    x8, #0x100419000
  100082a10  nop
  100082a14  ldr     x1, [x8, #0xdc8]
  100082a18  adrp    x2, #0x1003bf000
  100082a1c  add     x2, x2, #0x8d0                           ; @"AudioDefense"
  100082a20  bl      _objc_msgSend                            ; [S3DEngine setProductName:@"AudioDefense"]
  100082a24  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082a28  adrp    x8, #0x100417000
  100082a2c  nop
  100082a30  ldr     x20, [x8, #0x4f0]
  100082a34  mov     x1, x20
  100082a38  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082a3c  mov     x29, x29
  100082a40  bl      _objc_retainAutoreleasedReturnValue
  100082a44  mov     x21, x0
  100082a48  adrp    x8, #0x100418000
  100082a4c  nop
  100082a50  ldr     x1, [x8, #0xde8]
  100082a54  fmov    s0, #1.50000000
  100082a58  bl      _objc_msgSend                            ; [[S3DEngine engine] setMasterGain:1.5]
  100082a5c  mov     x0, x21
  100082a60  bl      _objc_release
  100082a64  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082a68  mov     x1, x20
  100082a6c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082a70  mov     x29, x29
  100082a74  bl      _objc_retainAutoreleasedReturnValue
  100082a78  mov     x21, x0
  100082a7c  adrp    x8, #0x100419000
  100082a80  nop
  100082a84  ldr     x1, [x8, #0xdd0]
  100082a88  mov     w2, #0
  100082a8c  bl      _objc_msgSend                            ; [[S3DEngine engine] setTraceLevel:0]
  100082a90  mov     x0, x21
  100082a94  bl      _objc_release
  100082a98  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082a9c  mov     x1, x20
  100082aa0  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082aa4  mov     x29, x29
  100082aa8  bl      _objc_retainAutoreleasedReturnValue
  100082aac  mov     x21, x0
  100082ab0  adrp    x8, #0x100417000
  100082ab4  nop
  100082ab8  ldr     x1, [x8, #0xd18]
  100082abc  fmov    s0, #1.50000000
  100082ac0  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbRoomSize:1.5]
  100082ac4  mov     x0, x21
  100082ac8  bl      _objc_release
  100082acc  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082ad0  mov     x1, x20
  100082ad4  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082ad8  mov     x29, x29
  100082adc  bl      _objc_retainAutoreleasedReturnValue
  100082ae0  mov     x21, x0
  100082ae4  adrp    x8, #0x100417000
  100082ae8  nop
  100082aec  ldr     x1, [x8, #0xd20]
  100082af0  nop
  100082af4  ldr     s0, #0x100181ac0                         ; s0 = 50.0
  100082af8  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbDampening:50]
  100082afc  mov     x0, x21
  100082b00  bl      _objc_release
  100082b04  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082b08  mov     x1, x20
  100082b0c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082b10  mov     x29, x29
  100082b14  bl      _objc_retainAutoreleasedReturnValue
  100082b18  mov     x21, x0
  100082b1c  adrp    x8, #0x100417000
  100082b20  nop
  100082b24  ldr     x1, [x8, #0xd28]
  100082b28  fmov    s0, #1.00000000
  100082b2c  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbVolume:1]
  100082b30  mov     x0, x21
  100082b34  bl      _objc_release
  100082b38  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082b3c  mov     x1, x20
  100082b40  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082b44  mov     x29, x29
  100082b48  bl      _objc_retainAutoreleasedReturnValue
  100082b4c  mov     x21, x0
  100082b50  adrp    x8, #0x100419000
  100082b54  nop
  100082b58  ldr     x1, [x8, #0xdd8]
  100082b5c  nop
  100082b60  ldr     s0, #0x1001819c8                         ; s0 = 0.800000012
  100082b64  bl      _objc_msgSend                            ; [[S3DEngine engine] setDistanceScale:0.8]
  100082b68  mov     x0, x21
  100082b6c  bl      _objc_release
  100082b70  ldr     x0, [x22, #0xff8]                        ; class S3DEngine
  100082b74  mov     x1, x20
  100082b78  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082b7c  mov     x29, x29
  100082b80  bl      _objc_retainAutoreleasedReturnValue
  100082b84  mov     x20, x0
  100082b88  adrp    x8, #0x100419000
  100082b8c  nop
  100082b90  ldr     x1, [x8, #0xde0]
  100082b94  fmov    s0, #6.00000000
  100082b98  bl      _objc_msgSend                            ; [[S3DEngine engine] setMaxSpatialGain:6]
  100082b9c  mov     x0, x20
  100082ba0  bl      _objc_release
  100082ba4  adrp    x8, #0x100419000
  100082ba8  nop
  100082bac  ldr     x1, [x8, #0xde8]
  100082bb0  mov     x0, x19
  100082bb4  ldp     x29, x30, [sp, #0x20]
  100082bb8  ldp     x20, x19, [sp, #0x10]
  100082bbc  ldp     x22, x21, [sp], #0x30
  100082bc0  b       _objc_msgSend                            ; [self activateButtonsPlaylist]
  100082bc4  b       loc_100082bd8
  100082bc8  b       loc_100082bd8
  100082bcc  b       loc_100082bd8
  100082bd0  b       loc_100082bd8
  100082bd4  b       loc_100082bd8
loc_100082bd8:
  100082bd8  mov     x19, x0
  100082bdc  mov     x0, x21
loc_100082be0:
  100082be0  bl      _objc_release
  100082be4  mov     x0, x19
  100082be8  bl      __Unwind_Resume                          ; Unwind_Resume()
  100082bec  mov     x19, x0
  100082bf0  mov     x0, x20
  100082bf4  b       loc_100082be0

; ======================================================================
; -[ADAppDelegate activateButtonsPlaylist]
; address 0x100082bf8  size 168  kind objc
; ======================================================================
  100082bf8  stp     x22, x21, [sp, #-0x30]!
  100082bfc  stp     x20, x19, [sp, #0x10]
  100082c00  stp     x29, x30, [sp, #0x20]
  100082c04  add     x29, sp, #0x20
  100082c08  adrp    x8, #0x10041d000
  100082c0c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100082c10  adrp    x8, #0x100417000
  100082c14  nop
  100082c18  ldr     x1, [x8, #0x4f0]
  100082c1c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082c20  mov     x29, x29
  100082c24  bl      _objc_retainAutoreleasedReturnValue
  100082c28  mov     x19, x0
  100082c2c  adrp    x8, #0x100417000
  100082c30  nop
  100082c34  ldr     x1, [x8, #0x4f8]
  100082c38  adrp    x2, #0x1003ba000
  100082c3c  add     x2, x2, #0xcb0                           ; @"buttons"
  100082c40  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  100082c44  mov     x29, x29
  100082c48  bl      _objc_retainAutoreleasedReturnValue
  100082c4c  mov     x20, x0
  100082c50  adrp    x8, #0x100417000
  100082c54  nop
  100082c58  ldr     x1, [x8, #0x508]
  100082c5c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] activate]
  100082c60  mov     x0, x20
  100082c64  bl      _objc_release
  100082c68  mov     x0, x19
  100082c6c  ldp     x29, x30, [sp, #0x20]
  100082c70  ldp     x20, x19, [sp, #0x10]
  100082c74  ldp     x22, x21, [sp], #0x30
  100082c78  b       _objc_release
  100082c7c  mov     x21, x0
  100082c80  b       loc_100082c90
  100082c84  mov     x21, x0
  100082c88  mov     x0, x20
  100082c8c  bl      _objc_release
loc_100082c90:
  100082c90  mov     x0, x19
  100082c94  bl      _objc_release
  100082c98  mov     x0, x21
  100082c9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate startMenuMusic:]
; address 0x100082ca0  size 576  kind objc
; ======================================================================
  100082ca0  stp     x24, x23, [sp, #-0x40]!
  100082ca4  stp     x22, x21, [sp, #0x10]
  100082ca8  stp     x20, x19, [sp, #0x20]
  100082cac  stp     x29, x30, [sp, #0x30]
  100082cb0  add     x29, sp, #0x30
  100082cb4  sub     sp, sp, #0x40
  100082cb8  mov     x20, x0
  100082cbc  mov     x0, x2
  100082cc0  bl      _objc_retain
  100082cc4  mov     x19, x0
  100082cc8  adrp    x8, #0x10041f000
  100082ccc  ldrsw   x8, [x8, #0xe7c]                         ; ivar offset ADAppDelegate.openSound (+0x20)
  100082cd0  ldr     x0, [x20, x8]                            ; x0 = self->openSound
  100082cd4  adrp    x8, #0x100417000
  100082cd8  nop
  100082cdc  ldr     x22, [x8, #0x598]
  100082ce0  mov     x1, x22
  100082ce4  bl      _objc_msgSend                            ; [self->openSound playing]
  100082ce8  cbz     w0, loc_100082d0c                        ; if ([self->openSound playing] == 0)
  100082cec  adrp    x8, #0x100416000
  100082cf0  nop
  100082cf4  ldr     x1, [x8, #0xf58]
  100082cf8  adrp    x2, #0x1003bf000
  100082cfc  add     x2, x2, #0x870                           ; @"main_menu_theme"
  100082d00  mov     x0, x19
  100082d04  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"main_menu_theme"]
  100082d08  tbnz    w0, #0, loc_100082e64                    ; if (([arg1 isEqualToString:@"main_menu_theme"] & 1))
loc_100082d0c:
  100082d0c  adrp    x8, #0x10041d000
  100082d10  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100082d14  adrp    x8, #0x100417000
  100082d18  nop
  100082d1c  ldr     x1, [x8, #0x4f0]
  100082d20  bl      _objc_msgSend                            ; [S3DEngine engine]
  100082d24  mov     x29, x29
  100082d28  bl      _objc_retainAutoreleasedReturnValue
  100082d2c  mov     x23, x0
  100082d30  adrp    x8, #0x100417000
  100082d34  nop
  100082d38  ldr     x1, [x8, #0x4f8]
  100082d3c  adrp    x2, #0x1003bf000
  100082d40  add     x2, x2, #0x8f0                           ; @"main_menu"
  100082d44  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"main_menu"]
  100082d48  mov     x29, x29
  100082d4c  bl      _objc_retainAutoreleasedReturnValue
  100082d50  mov     x21, x0
  100082d54  mov     x0, x23
  100082d58  bl      _objc_release
  100082d5c  adrp    x8, #0x100419000
  100082d60  nop
  100082d64  ldr     x1, [x8, #0xdf0]
  100082d68  mov     x0, x20
  100082d6c  bl      _objc_msgSend                            ; [self menu_music_playing]
  100082d70  cbz     w0, loc_100082ddc                        ; if ([self menu_music_playing] == 0)
  100082d74  adrp    x8, #0x100417000
  100082d78  nop
  100082d7c  ldr     x1, [x8, #0x990]
  100082d80  adrp    x2, #0x1003bf000
  100082d84  add     x2, x2, #0x870                           ; @"main_menu_theme"
  100082d88  mov     x0, x21
  100082d8c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"main_menu"] S3DSound:@"main_menu_theme"]
  100082d90  mov     x29, x29
  100082d94  bl      _objc_retainAutoreleasedReturnValue
  100082d98  mov     x23, x0
  100082d9c  mov     x1, x22
  100082da0  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"main_menu"] S3DSound:@"main_menu_theme"] playing]
  100082da4  mov     x22, x0
  100082da8  mov     x0, x23
  100082dac  bl      _objc_release
  100082db0  tbnz    w22, #0, loc_100082e5c                   ; if (([[[[S3DEngine engine] playListWithName:@"main_menu"] S3DSound:@"main_menu_theme"] playing] & 1))
  100082db4  adrp    x8, #0x100419000
  100082db8  nop
  100082dbc  ldr     x1, [x8, #0xda0]
  100082dc0  mov     x0, x20
  100082dc4  bl      _objc_msgSend                            ; [self stopMenuMusic]
  100082dc8  adrp    x8, #0x10041f000
  100082dcc  ldrsw   x8, [x8, #0xe80]                         ; ivar offset ADAppDelegate.start_theme_after_fade (+0x10)
  100082dd0  mov     w9, #1
  100082dd4  strb    w9, [x20, x8]                            ; self->start_theme_after_fade = 1
  100082dd8  b       loc_100082e5c
loc_100082ddc:
  100082ddc  adrp    x8, #0x1003b0000
  100082de0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100082de4  mov     w9, #-0x3e000000
  100082de8  str     x8, [sp]
  100082dec  stp     w9, wzr, [sp, #8]
  100082df0  adr     x8, #0x100082ee0                         ; &-[ADAppDelegate startMenuMusic:]_block_invoke
  100082df4  nop
  100082df8  str     x8, [sp, #0x10]
  100082dfc  adrp    x8, #0x1003b2000
  100082e00  add     x8, x8, #0xd0                            ; &d_1003b20d0
  100082e04  str     x8, [sp, #0x18]
  100082e08  mov     x0, x19
  100082e0c  bl      _objc_retain
  100082e10  str     x0, [sp, #0x20]
  100082e14  mov     x0, x20
  100082e18  bl      _objc_retain
  100082e1c  mov     x20, x0
  100082e20  str     x20, [sp, #0x28]
  100082e24  mov     x0, x21
  100082e28  bl      _objc_retain
  100082e2c  stp     x0, x20, [sp, #0x30]
  100082e30  adrp    x8, #0x100419000
  100082e34  nop
  100082e38  ldr     x1, [x8, #0x408]
  100082e3c  mov     x2, sp
  100082e40  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"main_menu"] activate:^{-[ADAppDelegate startMenuMusic:]_block_invoke captures +0x20=arg1, +0x28=self, +0x30=[[S3DEngine engine] playListWithName:@"m…, +0x38=self}]
  100082e44  ldr     x0, [sp, #0x30]
  100082e48  bl      _objc_release
  100082e4c  ldr     x0, [sp, #0x28]
  100082e50  bl      _objc_release
  100082e54  ldr     x0, [sp, #0x20]
  100082e58  bl      _objc_release
loc_100082e5c:
  100082e5c  mov     x0, x21
  100082e60  bl      _objc_release
loc_100082e64:
  100082e64  mov     x0, x19
  100082e68  bl      _objc_release
  100082e6c  sub     sp, x29, #0x30
  100082e70  ldp     x29, x30, [sp, #0x30]
  100082e74  ldp     x20, x19, [sp, #0x20]
  100082e78  ldp     x22, x21, [sp, #0x10]
  100082e7c  ldp     x24, x23, [sp], #0x40
  100082e80  ret
  100082e84  mov     x20, x0
  100082e88  b       loc_100082ed0
  100082e8c  mov     x20, x0
  100082e90  b       loc_100082ec8
  100082e94  mov     x20, x0
  100082e98  mov     x0, x23
  100082e9c  b       loc_100082ecc
  100082ea0  mov     x20, x0
  100082ea4  mov     x0, x23
  100082ea8  b       loc_100082ec4
  100082eac  mov     x20, x0
  100082eb0  ldr     x0, [sp, #0x30]
  100082eb4  bl      _objc_release
  100082eb8  ldr     x0, [sp, #0x28]
  100082ebc  bl      _objc_release
  100082ec0  ldr     x0, [sp, #0x20]
loc_100082ec4:
  100082ec4  bl      _objc_release
loc_100082ec8:
  100082ec8  mov     x0, x21
loc_100082ecc:
  100082ecc  bl      _objc_release
loc_100082ed0:
  100082ed0  mov     x0, x19
  100082ed4  bl      _objc_release
  100082ed8  mov     x0, x20
  100082edc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate startMenuMusic:]_block_invoke
; address 0x100082ee0  size 664  kind block
; ======================================================================
  100082ee0  stp     x22, x21, [sp, #-0x30]!
  100082ee4  stp     x20, x19, [sp, #0x10]
  100082ee8  stp     x29, x30, [sp, #0x20]
  100082eec  add     x29, sp, #0x20
  100082ef0  sub     sp, sp, #0x40
  100082ef4  mov     x19, x0
  100082ef8  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  100082efc  adrp    x8, #0x100416000
  100082f00  nop
  100082f04  ldr     x1, [x8, #0xf58]
  100082f08  adrp    x2, #0x1003bf000
  100082f0c  add     x2, x2, #0x870                           ; @"main_menu_theme"
  100082f10  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"main_menu_theme"]
  100082f14  cbz     w0, loc_100083010                        ; if ([arg1 isEqualToString:@"main_menu_theme"] == 0)
  100082f18  ldr     x0, [x19, #0x30]                         ; x0 = captured [[S3DEngine engine] playListWithName:@"main_menu"]
  100082f1c  adrp    x8, #0x100417000
  100082f20  nop
  100082f24  ldr     x1, [x8, #0x990]
  100082f28  adrp    x2, #0x1003bf000
  100082f2c  add     x2, x2, #0x910                           ; @"main_menu_open"
  100082f30  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"main_menu"] S3DSound:@"main_menu_open"]
  100082f34  mov     x29, x29
  100082f38  bl      _objc_retainAutoreleasedReturnValue
  100082f3c  ldr     x9, [x19, #0x28]                         ; x9 = captured self
  100082f40  adrp    x8, #0x10041f000
  100082f44  ldrsw   x20, [x8, #0xe7c]                        ; ivar offset ADAppDelegate.openSound (+0x20)
  100082f48  ldr     x8, [x9, x20]                            ; x8 = self->openSound
  100082f4c  str     x0, [x9, x20]                            ; self->openSound = [[[S3DEngine engine] playListWithName:@"main_menu"] S3DSound:@"main_menu_open"]
  100082f50  mov     x0, x8
  100082f54  bl      _objc_release
  100082f58  ldr     x8, [x19, #0x28]                         ; x8 = captured self
  100082f5c  ldr     x0, [x8, x20]                            ; x0 = self->openSound
  100082f60  adrp    x8, #0x100416000
  100082f64  nop
  100082f68  ldr     x1, [x8, #0xcb0]
  100082f6c  nop
  100082f70  ldr     s0, #0x100181cd0                         ; s0 = 0.400000006
  100082f74  bl      _objc_msgSend                            ; [self->openSound setGain:0.4]
  100082f78  ldr     x8, [x19, #0x28]                         ; x8 = captured self
  100082f7c  ldr     x0, [x8, x20]                            ; x0 = self->openSound
  100082f80  adrp    x8, #0x100417000
  100082f84  nop
  100082f88  ldr     x1, [x8, #0x600]
  100082f8c  bl      _objc_msgSend                            ; [self->openSound play]
  100082f90  ldr     x8, [x19, #0x28]                         ; x8 = captured self
  100082f94  ldr     x20, [x8, x20]                           ; x20 = self->openSound
  100082f98  adrp    x8, #0x1003b0000
  100082f9c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100082fa0  str     x8, [sp, #8]
  100082fa4  mov     w8, #-0x3e000000
  100082fa8  stp     w8, wzr, [sp, #0x10]
  100082fac  adr     x8, #0x100083178                         ; &-[ADAppDelegate startMenuMusic:]_block_invoke_block_invoke
  100082fb0  nop
  100082fb4  str     x8, [sp, #0x18]
  100082fb8  adrp    x8, #0x1003b2000
  100082fbc  add     x8, x8, #0xa0                            ; &d_1003b20a0
  100082fc0  str     x8, [sp, #0x20]
  100082fc4  ldr     x8, [x19, #0x38]                         ; x8 = captured self
  100082fc8  str     x8, [sp, #0x38]
  100082fcc  ldr     x0, [x19, #0x30]                         ; x0 = captured [[S3DEngine engine] playListWithName:@"main_menu"]
  100082fd0  bl      _objc_retain
  100082fd4  str     x0, [sp, #0x28]
  100082fd8  ldr     x0, [x19, #0x20]                         ; x0 = captured arg1
  100082fdc  bl      _objc_retain
  100082fe0  str     x0, [sp, #0x30]
  100082fe4  adrp    x8, #0x100419000
  100082fe8  nop
  100082fec  ldr     x1, [x8, #0xe18]
  100082ff0  add     x2, sp, #8
  100082ff4  mov     x0, x20
  100082ff8  bl      _objc_msgSend                            ; [self->openSound add3DSoundMonitor:^{-[ADAppDelegate startMenuMusic:]_block_invoke_block_invoke captures +0x20=[[S3DEngine engine] playListWithName:@"m…, +0x28=arg1, +0x30=self}]
  100082ffc  ldr     x0, [sp, #0x30]
  100083000  bl      _objc_release
  100083004  ldr     x0, [sp, #0x28]
  100083008  bl      _objc_release
  10008300c  b       loc_100083118
loc_100083010:
  100083010  ldp     x0, x20, [x19, #0x30]
  100083014  ldr     x2, [x19, #0x20]                         ; x2 = captured arg1
  100083018  adrp    x8, #0x100417000
  10008301c  nop
  100083020  ldr     x1, [x8, #0x990]
  100083024  bl      _objc_msgSend                            ; [x0 S3DSound:arg1]
  100083028  mov     x29, x29
  10008302c  bl      _objc_retainAutoreleasedReturnValue
  100083030  mov     x21, x0
  100083034  adrp    x8, #0x100419000
  100083038  nop
  10008303c  ldr     x1, [x8, #0xdf8]
  100083040  mov     x0, x20
  100083044  mov     x2, x21
  100083048  bl      _objc_msgSend                            ; [x0 setCurrentMenuMusic:[x0 S3DSound:arg1]]
  10008304c  mov     x0, x21
  100083050  bl      _objc_release
  100083054  ldr     x0, [x19, #0x38]                         ; x0 = captured self
  100083058  adrp    x8, #0x100419000
  10008305c  nop
  100083060  ldr     x20, [x8, #0xe00]
  100083064  mov     x1, x20
  100083068  bl      _objc_msgSend                            ; [self currentMenuMusic]
  10008306c  mov     x29, x29
  100083070  bl      _objc_retainAutoreleasedReturnValue
  100083074  mov     x21, x0
  100083078  adrp    x8, #0x100416000
  10008307c  nop
  100083080  ldr     x1, [x8, #0xcb0]
  100083084  nop
  100083088  ldr     s0, #0x100181cd0                         ; s0 = 0.400000006
  10008308c  bl      _objc_msgSend                            ; [[self currentMenuMusic] setGain:0.4]
  100083090  mov     x0, x21
  100083094  bl      _objc_release
  100083098  ldr     x0, [x19, #0x38]                         ; x0 = captured self
  10008309c  mov     x1, x20
  1000830a0  bl      _objc_msgSend                            ; [self currentMenuMusic]
  1000830a4  mov     x29, x29
  1000830a8  bl      _objc_retainAutoreleasedReturnValue
  1000830ac  mov     x21, x0
  1000830b0  adrp    x8, #0x100419000
  1000830b4  nop
  1000830b8  ldr     x1, [x8, #0xe08]
  1000830bc  mov     w2, #1
  1000830c0  bl      _objc_msgSend                            ; [[self currentMenuMusic] setStream:1]
  1000830c4  mov     x0, x21
  1000830c8  bl      _objc_release
  1000830cc  ldr     x0, [x19, #0x38]                         ; x0 = captured self
  1000830d0  mov     x1, x20
  1000830d4  bl      _objc_msgSend                            ; [self currentMenuMusic]
  1000830d8  mov     x29, x29
  1000830dc  bl      _objc_retainAutoreleasedReturnValue
  1000830e0  mov     x20, x0
  1000830e4  adrp    x8, #0x100416000
  1000830e8  nop
  1000830ec  ldr     x1, [x8, #0xcb8]
  1000830f0  mov     w2, #1
  1000830f4  bl      _objc_msgSend                            ; [[self currentMenuMusic] play:1]
  1000830f8  mov     x0, x20
  1000830fc  bl      _objc_release
  100083100  ldr     x0, [x19, #0x38]                         ; x0 = captured self
  100083104  adrp    x8, #0x100419000
  100083108  nop
  10008310c  ldr     x1, [x8, #0xe10]
  100083110  mov     w2, #1
  100083114  bl      _objc_msgSend                            ; [self setMenu_music_playing:1]
loc_100083118:
  100083118  sub     sp, x29, #0x20
  10008311c  ldp     x29, x30, [sp, #0x20]
  100083120  ldp     x20, x19, [sp, #0x10]
  100083124  ldp     x22, x21, [sp], #0x30
  100083128  ret
  10008312c  mov     x19, x0
  100083130  b       loc_100083170
  100083134  mov     x19, x0
  100083138  ldr     x0, [sp, #0x30]
  10008313c  bl      _objc_release
  100083140  ldr     x0, [sp, #0x28]
  100083144  bl      _objc_release
  100083148  b       loc_100083170
  10008314c  b       loc_100083154
  100083150  b       loc_100083154
loc_100083154:
  100083154  mov     x19, x0
  100083158  mov     x0, x21
  10008315c  bl      _objc_release
  100083160  b       loc_100083170
  100083164  mov     x19, x0
  100083168  mov     x0, x20
  10008316c  bl      _objc_release
loc_100083170:
  100083170  mov     x0, x19
  100083174  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate startMenuMusic:]_block_invoke_block_invoke
; address 0x100083178  size 436  kind block
; ======================================================================
  100083178  stp     d9, d8, [sp, #-0x40]!
  10008317c  stp     x22, x21, [sp, #0x10]
  100083180  stp     x20, x19, [sp, #0x20]
  100083184  stp     x29, x30, [sp, #0x30]
  100083188  add     x29, sp, #0x30
  10008318c  mov     v8.16b, v2.16b
  100083190  mov     v9.16b, v1.16b
  100083194  mov     x20, x0
  100083198  mov     x0, x1
  10008319c  bl      _objc_retain
  1000831a0  mov     x19, x0
  1000831a4  adrp    x8, #0x100181000
  1000831a8  ldr     d0, [x8, #0xb78]                         ; d0 = 0.7
  1000831ac  fmul    d0, d8, d0
  1000831b0  fcmp    d0, d9
  1000831b4  b.hi    loc_1000832d8                            ; if ((d8 * 0.7) > (or unordered) d9)
  1000831b8  ldr     x0, [x20, #0x30]                         ; x0 = captured self
  1000831bc  adrp    x8, #0x100419000
  1000831c0  nop
  1000831c4  ldr     x1, [x8, #0xdf0]
  1000831c8  bl      _objc_msgSend                            ; [self menu_music_playing]
  1000831cc  tbnz    w0, #0, loc_1000832d8                    ; if (([self menu_music_playing] & 1))
  1000831d0  ldp     x2, x21, [x20, #0x28]
  1000831d4  ldr     x0, [x20, #0x20]                         ; x0 = captured [[S3DEngine engine] playListWithName:@"main_menu"]
  1000831d8  adrp    x8, #0x100417000
  1000831dc  nop
  1000831e0  ldr     x1, [x8, #0x990]
  1000831e4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"main_menu"] S3DSound:x2]
  1000831e8  mov     x29, x29
  1000831ec  bl      _objc_retainAutoreleasedReturnValue
  1000831f0  mov     x22, x0
  1000831f4  adrp    x8, #0x100419000
  1000831f8  nop
  1000831fc  ldr     x1, [x8, #0xdf8]
  100083200  mov     x0, x21
  100083204  mov     x2, x22
  100083208  bl      _objc_msgSend                            ; [x0 setCurrentMenuMusic:[[[S3DEngine engine] playListWithName:@"main_menu"] S3DSound:x2]]
  10008320c  mov     x0, x22
  100083210  bl      _objc_release
  100083214  ldr     x0, [x20, #0x30]                         ; x0 = captured self
  100083218  adrp    x8, #0x100419000
  10008321c  nop
  100083220  ldr     x21, [x8, #0xe00]
  100083224  mov     x1, x21
  100083228  bl      _objc_msgSend                            ; [self currentMenuMusic]
  10008322c  mov     x29, x29
  100083230  bl      _objc_retainAutoreleasedReturnValue
  100083234  mov     x22, x0
  100083238  adrp    x8, #0x100416000
  10008323c  nop
  100083240  ldr     x1, [x8, #0xcb0]
  100083244  nop
  100083248  ldr     s0, #0x100181cd0                         ; s0 = 0.400000006
  10008324c  bl      _objc_msgSend                            ; [[self currentMenuMusic] setGain:0.4]
  100083250  mov     x0, x22
  100083254  bl      _objc_release
  100083258  ldr     x0, [x20, #0x30]                         ; x0 = captured self
  10008325c  mov     x1, x21
  100083260  bl      _objc_msgSend                            ; [self currentMenuMusic]
  100083264  mov     x29, x29
  100083268  bl      _objc_retainAutoreleasedReturnValue
  10008326c  mov     x22, x0
  100083270  adrp    x8, #0x100419000
  100083274  nop
  100083278  ldr     x1, [x8, #0xe08]
  10008327c  mov     w2, #1
  100083280  bl      _objc_msgSend                            ; [[self currentMenuMusic] setStream:1]
  100083284  mov     x0, x22
  100083288  bl      _objc_release
  10008328c  ldr     x0, [x20, #0x30]                         ; x0 = captured self
  100083290  mov     x1, x21
  100083294  bl      _objc_msgSend                            ; [self currentMenuMusic]
  100083298  mov     x29, x29
  10008329c  bl      _objc_retainAutoreleasedReturnValue
  1000832a0  mov     x21, x0
  1000832a4  adrp    x8, #0x100416000
  1000832a8  nop
  1000832ac  ldr     x1, [x8, #0xcb8]
  1000832b0  mov     w2, #1
  1000832b4  bl      _objc_msgSend                            ; [[self currentMenuMusic] play:1]
  1000832b8  mov     x0, x21
  1000832bc  bl      _objc_release
  1000832c0  ldr     x0, [x20, #0x30]                         ; x0 = captured self
  1000832c4  adrp    x8, #0x100419000
  1000832c8  nop
  1000832cc  ldr     x1, [x8, #0xe10]
  1000832d0  mov     w2, #1
  1000832d4  bl      _objc_msgSend                            ; [self setMenu_music_playing:1]
loc_1000832d8:
  1000832d8  mov     x0, x19
  1000832dc  ldp     x29, x30, [sp, #0x30]
  1000832e0  ldp     x20, x19, [sp, #0x20]
  1000832e4  ldp     x22, x21, [sp, #0x10]
  1000832e8  ldp     d9, d8, [sp], #0x40
  1000832ec  b       _objc_release
  1000832f0  mov     x20, x0
  1000832f4  b       loc_10008331c
  1000832f8  b       loc_100083300
  1000832fc  b       loc_100083300
loc_100083300:
  100083300  mov     x20, x0
  100083304  mov     x0, x22
  100083308  bl      _objc_release
  10008330c  b       loc_10008331c
  100083310  mov     x20, x0
  100083314  mov     x0, x21
  100083318  bl      _objc_release
loc_10008331c:
  10008331c  mov     x0, x19
  100083320  bl      _objc_release
  100083324  mov     x0, x20
  100083328  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10008332c
; address 0x10008332c  size 40  kind sub
; ======================================================================
  10008332c  stp     x20, x19, [sp, #-0x20]!
  100083330  stp     x29, x30, [sp, #0x10]
  100083334  add     x29, sp, #0x10
  100083338  mov     x19, x1
  10008333c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100083340  bl      _objc_retain
  100083344  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100083348  ldp     x29, x30, [sp, #0x10]
  10008334c  ldp     x20, x19, [sp], #0x20
  100083350  b       _objc_retain

; ======================================================================
; sub_100083354
; address 0x100083354  size 40  kind sub
; ======================================================================
  100083354  stp     x20, x19, [sp, #-0x20]!
  100083358  stp     x29, x30, [sp, #0x10]
  10008335c  add     x29, sp, #0x10
  100083360  mov     x19, x0
  100083364  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100083368  bl      _objc_release
  10008336c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100083370  ldp     x29, x30, [sp, #0x10]
  100083374  ldp     x20, x19, [sp], #0x20
  100083378  b       _objc_release

; ======================================================================
; sub_10008337c
; address 0x10008337c  size 48  kind sub
; ======================================================================
  10008337c  stp     x20, x19, [sp, #-0x20]!
  100083380  stp     x29, x30, [sp, #0x10]
  100083384  add     x29, sp, #0x10
  100083388  mov     x19, x1
  10008338c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100083390  bl      _objc_retain
  100083394  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100083398  bl      _objc_retain
  10008339c  ldr     x0, [x19, #0x30]                         ; x0 = a1[+0x30]
  1000833a0  ldp     x29, x30, [sp, #0x10]
  1000833a4  ldp     x20, x19, [sp], #0x20
  1000833a8  b       _objc_retain

; ======================================================================
; sub_1000833ac
; address 0x1000833ac  size 48  kind sub
; ======================================================================
  1000833ac  stp     x20, x19, [sp, #-0x20]!
  1000833b0  stp     x29, x30, [sp, #0x10]
  1000833b4  add     x29, sp, #0x10
  1000833b8  mov     x19, x0
  1000833bc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000833c0  bl      _objc_release
  1000833c4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000833c8  bl      _objc_release
  1000833cc  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  1000833d0  ldp     x29, x30, [sp, #0x10]
  1000833d4  ldp     x20, x19, [sp], #0x20
  1000833d8  b       _objc_release

; ======================================================================
; -[ADAppDelegate stopMenuMusic]
; address 0x1000833dc  size 132  kind objc
; ======================================================================
  1000833dc  stp     x20, x19, [sp, #-0x20]!
  1000833e0  stp     x29, x30, [sp, #0x10]
  1000833e4  add     x29, sp, #0x10
  1000833e8  mov     x19, x0
  1000833ec  adrp    x8, #0x10041f000
  1000833f0  ldrsw   x20, [x8, #0xe84]                        ; ivar offset ADAppDelegate.fadeOutTimer (+0x18)
  1000833f4  ldr     x8, [x19, x20]                           ; x8 = self->fadeOutTimer
  1000833f8  cbz     x8, loc_100083408                        ; if (self->fadeOutTimer == 0)
  1000833fc  ldp     x29, x30, [sp, #0x10]
  100083400  ldp     x20, x19, [sp], #0x20
  100083404  ret
loc_100083408:
  100083408  adrp    x8, #0x10041e000
  10008340c  ldr     x0, [x8, #0x30]                          ; class NSTimer
  100083410  adrp    x8, #0x100419000
  100083414  nop
  100083418  ldr     x3, [x8, #0xe20]
  10008341c  adrp    x8, #0x100417000
  100083420  nop
  100083424  ldr     x1, [x8, #0x890]
  100083428  nop
  10008342c  ldr     d0, #0x100181a20                         ; d0 = 0.05
  100083430  mov     w5, #1
  100083434  mov     x2, x19
  100083438  mov     x4, #0
  10008343c  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(reduceMainMenuThemeVolume) userInfo:0 repeats:1]
  100083440  mov     x29, x29
  100083444  bl      _objc_retainAutoreleasedReturnValue
  100083448  ldr     x8, [x19, x20]                           ; x8 = self->fadeOutTimer
  10008344c  str     x0, [x19, x20]                           ; self->fadeOutTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(reduceMainMenuThemeVolume) userInfo:0 repeats:1]
  100083450  mov     x0, x8
  100083454  ldp     x29, x30, [sp, #0x10]
  100083458  ldp     x20, x19, [sp], #0x20
  10008345c  b       _objc_release

; ======================================================================
; -[ADAppDelegate reduceMainMenuThemeVolume]
; address 0x100083460  size 728  kind objc
; ======================================================================
  100083460  stp     d9, d8, [sp, #-0x60]!
  100083464  stp     x26, x25, [sp, #0x10]
  100083468  stp     x24, x23, [sp, #0x20]
  10008346c  stp     x22, x21, [sp, #0x30]
  100083470  stp     x20, x19, [sp, #0x40]
  100083474  stp     x29, x30, [sp, #0x50]
  100083478  add     x29, sp, #0x50
  10008347c  mov     x20, x0
  100083480  adrp    x8, #0x10041d000
  100083484  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100083488  adrp    x8, #0x100417000
  10008348c  nop
  100083490  ldr     x1, [x8, #0x4f0]
  100083494  bl      _objc_msgSend                            ; [S3DEngine engine]
  100083498  mov     x29, x29
  10008349c  bl      _objc_retainAutoreleasedReturnValue
  1000834a0  mov     x21, x0
  1000834a4  adrp    x8, #0x100417000
  1000834a8  nop
  1000834ac  ldr     x1, [x8, #0x4f8]
  1000834b0  adrp    x2, #0x1003bf000
  1000834b4  add     x2, x2, #0x8f0                           ; @"main_menu"
  1000834b8  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"main_menu"]
  1000834bc  mov     x29, x29
  1000834c0  bl      _objc_retainAutoreleasedReturnValue
  1000834c4  mov     x19, x0
  1000834c8  mov     x0, x21
  1000834cc  bl      _objc_release
  1000834d0  adrp    x8, #0x100419000
  1000834d4  nop
  1000834d8  ldr     x21, [x8, #0xe00]
  1000834dc  mov     x0, x20
  1000834e0  mov     x1, x21
  1000834e4  bl      _objc_msgSend                            ; [self currentMenuMusic]
  1000834e8  mov     x29, x29
  1000834ec  bl      _objc_retainAutoreleasedReturnValue
  1000834f0  mov     x24, x0
  1000834f4  adrp    x8, #0x100419000
  1000834f8  nop
  1000834fc  ldr     x23, [x8, #0xe28]
  100083500  mov     x1, x23
  100083504  bl      _objc_msgSend                            ; [[self currentMenuMusic] gain]
  100083508  fcvt    d0, s0
  10008350c  nop
  100083510  ldr     d8, #0x100181cc8                         ; d8 = -0.01
  100083514  fadd    d0, d0, d8
  100083518  fcvt    s0, d0
  10008351c  adrp    x8, #0x100416000
  100083520  nop
  100083524  ldr     x22, [x8, #0xcb0]
  100083528  mov     x0, x24
  10008352c  mov     x1, x22
  100083530  bl      _objc_msgSend                            ; [[self currentMenuMusic] setGain:([[self currentMenuMusic] gain] + -0.01)]
  100083534  mov     x0, x24
  100083538  bl      _objc_release
  10008353c  adrp    x8, #0x10041f000
  100083540  ldrsw   x25, [x8, #0xe7c]                        ; ivar offset ADAppDelegate.openSound (+0x20)
  100083544  ldr     x24, [x20, x25]                          ; x24 = self->openSound
  100083548  mov     x0, x24
  10008354c  mov     x1, x23
  100083550  bl      _objc_msgSend                            ; [self->openSound gain]
  100083554  fcvt    d0, s0
  100083558  fadd    d0, d0, d8
  10008355c  fcvt    s0, d0
  100083560  mov     x0, x24
  100083564  mov     x1, x22
  100083568  bl      _objc_msgSend                            ; [self->openSound setGain:([self->openSound gain] + -0.01)]
  10008356c  mov     x0, x20
  100083570  mov     x1, x21
  100083574  bl      _objc_msgSend                            ; [self currentMenuMusic]
  100083578  mov     x29, x29
  10008357c  bl      _objc_retainAutoreleasedReturnValue
  100083580  mov     x24, x0
  100083584  mov     x1, x23
  100083588  bl      _objc_msgSend                            ; [[self currentMenuMusic] gain]
  10008358c  fcmp    s0, #0.0
  100083590  b.ls    loc_1000835b8                            ; if ([[self currentMenuMusic] gain] <= 0.0)
  100083594  ldr     x0, [x20, x25]                           ; x0 = self->openSound
  100083598  mov     x1, x23
  10008359c  bl      _objc_msgSend                            ; [self->openSound gain]
  1000835a0  mov     v8.16b, v0.16b
  1000835a4  mov     x0, x24
  1000835a8  bl      _objc_release
  1000835ac  fcmp    s8, #0.0
  1000835b0  b.ls    loc_1000835c0                            ; if ([self->openSound gain] <= 0.0)
  1000835b4  b       loc_1000836c4
loc_1000835b8:
  1000835b8  mov     x0, x24
  1000835bc  bl      _objc_release
loc_1000835c0:
  1000835c0  mov     x0, x20
  1000835c4  mov     x1, x21
  1000835c8  bl      _objc_msgSend                            ; [self currentMenuMusic]
  1000835cc  mov     x29, x29
  1000835d0  bl      _objc_retainAutoreleasedReturnValue
  1000835d4  mov     x23, x0
  1000835d8  movi    v0.16b, #0
  1000835dc  mov     x1, x22
  1000835e0  bl      _objc_msgSend                            ; [[self currentMenuMusic] setGain:0]
  1000835e4  mov     x0, x23
  1000835e8  bl      _objc_release
  1000835ec  ldr     x0, [x20, x25]                           ; x0 = self->openSound
  1000835f0  movi    v0.16b, #0
  1000835f4  mov     x1, x22
  1000835f8  bl      _objc_msgSend                            ; [self->openSound setGain:0]
  1000835fc  ldr     x0, [x20, x25]                           ; x0 = self->openSound
  100083600  adrp    x8, #0x100417000
  100083604  nop
  100083608  ldr     x22, [x8, #0x568]
  10008360c  mov     x1, x22
  100083610  bl      _objc_msgSend                            ; [self->openSound stop]
  100083614  mov     x0, x20
  100083618  mov     x1, x21
  10008361c  bl      _objc_msgSend                            ; [self currentMenuMusic]
  100083620  mov     x29, x29
  100083624  bl      _objc_retainAutoreleasedReturnValue
  100083628  mov     x21, x0
  10008362c  mov     x1, x22
  100083630  bl      _objc_msgSend                            ; [[self currentMenuMusic] stop]
  100083634  mov     x0, x21
  100083638  bl      _objc_release
  10008363c  adrp    x8, #0x100419000
  100083640  nop
  100083644  ldr     x1, [x8, #0xe10]
  100083648  mov     w2, #0
  10008364c  mov     x0, x20
  100083650  bl      _objc_msgSend                            ; [self setMenu_music_playing:0]
  100083654  adrp    x8, #0x10041f000
  100083658  ldrsw   x21, [x8, #0xe84]                        ; ivar offset ADAppDelegate.fadeOutTimer (+0x18)
  10008365c  ldr     x0, [x20, x21]                           ; x0 = self->fadeOutTimer
  100083660  adrp    x8, #0x100417000
  100083664  nop
  100083668  ldr     x1, [x8, #0x730]
  10008366c  bl      _objc_msgSend                            ; [self->fadeOutTimer invalidate]
  100083670  ldr     x0, [x20, x21]                           ; x0 = self->fadeOutTimer
  100083674  str     xzr, [x20, x21]                          ; self->fadeOutTimer = 0
  100083678  bl      _objc_release
  10008367c  adrp    x8, #0x100417000
  100083680  nop
  100083684  ldr     x1, [x8, #0x618]
  100083688  mov     x0, x19
  10008368c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"main_menu"] deactivate]
  100083690  adrp    x21, #0x10041f000
  100083694  ldrsw   x8, [x21, #0xe80]                        ; ivar offset ADAppDelegate.start_theme_after_fade (+0x10)
  100083698  ldrb    w9, [x20, x8]                            ; w9 = self->start_theme_after_fade
  10008369c  cbz     w9, loc_1000836c0                        ; if (self->start_theme_after_fade == 0)
  1000836a0  adrp    x8, #0x100419000
  1000836a4  nop
  1000836a8  ldr     x1, [x8, #0xd88]
  1000836ac  adrp    x2, #0x1003bf000
  1000836b0  add     x2, x2, #0x870                           ; @"main_menu_theme"
  1000836b4  mov     x0, x20
  1000836b8  bl      _objc_msgSend                            ; [self startMenuMusic:@"main_menu_theme"]
  1000836bc  ldr     w8, [x21, #0xe80]                        ; ivar offset ADAppDelegate.start_theme_after_fade (+0x10)
loc_1000836c0:
  1000836c0  strb    wzr, [x20, w8, sxtw]                     ; self->start_theme_after_fade = 0
loc_1000836c4:
  1000836c4  mov     x0, x19
  1000836c8  ldp     x29, x30, [sp, #0x50]
  1000836cc  ldp     x20, x19, [sp, #0x40]
  1000836d0  ldp     x22, x21, [sp, #0x30]
  1000836d4  ldp     x24, x23, [sp, #0x20]
  1000836d8  ldp     x26, x25, [sp, #0x10]
  1000836dc  ldp     d9, d8, [sp], #0x60
  1000836e0  b       _objc_release
  1000836e4  mov     x20, x0
  1000836e8  b       loc_100083728
  1000836ec  b       loc_1000836f0
loc_1000836f0:
  1000836f0  mov     x20, x0
  1000836f4  mov     x0, x24
  1000836f8  bl      _objc_release
  1000836fc  b       loc_100083728
  100083700  mov     x20, x0
  100083704  mov     x0, x21
  100083708  b       loc_10008372c
  10008370c  mov     x20, x0
  100083710  mov     x0, x23
  100083714  bl      _objc_release
  100083718  b       loc_100083728
  10008371c  mov     x20, x0
  100083720  mov     x0, x21
  100083724  bl      _objc_release
loc_100083728:
  100083728  mov     x0, x19
loc_10008372c:
  10008372c  bl      _objc_release
  100083730  mov     x0, x20
  100083734  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate pauseGame]
; address 0x100083738  size 228  kind objc
; ======================================================================
  100083738  stp     x22, x21, [sp, #-0x30]!
  10008373c  stp     x20, x19, [sp, #0x10]
  100083740  stp     x29, x30, [sp, #0x20]
  100083744  add     x29, sp, #0x20
  100083748  mov     x19, x0
  10008374c  adrp    x8, #0x100419000
  100083750  nop
  100083754  ldr     x20, [x8, #0xd50]
  100083758  mov     x1, x20
  10008375c  bl      _objc_msgSend                            ; [self viewController]
  100083760  mov     x29, x29
  100083764  bl      _objc_retainAutoreleasedReturnValue
  100083768  mov     x21, x0
  10008376c  adrp    x8, #0x10041e000
  100083770  ldr     x0, [x8, #0xc0]                          ; class ADGameplayViewController
  100083774  adrp    x8, #0x100417000
  100083778  nop
  10008377c  ldr     x1, [x8, #0x2e0]
  100083780  bl      _objc_msgSend                            ; [ADGameplayViewController class]
  100083784  mov     x2, x0
  100083788  adrp    x8, #0x100417000
  10008378c  nop
  100083790  ldr     x1, [x8, #0x3b8]
  100083794  mov     x0, x21
  100083798  bl      _objc_msgSend                            ; [[self viewController] isKindOfClass:[ADGameplayViewController class]]
  10008379c  mov     x22, x0
  1000837a0  mov     x0, x21
  1000837a4  bl      _objc_release
  1000837a8  cbz     w22, loc_1000837ec                       ; if ([[self viewController] isKindOfClass:[ADGameplayViewController class]] == 0)
  1000837ac  mov     x0, x19
  1000837b0  mov     x1, x20
  1000837b4  bl      _objc_msgSend                            ; [self viewController]
  1000837b8  mov     x29, x29
  1000837bc  bl      _objc_retainAutoreleasedReturnValue
  1000837c0  mov     x19, x0
  1000837c4  adrp    x8, #0x100419000
  1000837c8  nop
  1000837cc  ldr     x1, [x8, #0xe30]
  1000837d0  mov     x2, #0
  1000837d4  bl      _objc_msgSend                            ; [[self viewController] pauseButtonTouched:0]
  1000837d8  mov     x0, x19
  1000837dc  ldp     x29, x30, [sp, #0x20]
  1000837e0  ldp     x20, x19, [sp, #0x10]
  1000837e4  ldp     x22, x21, [sp], #0x30
  1000837e8  b       _objc_release
loc_1000837ec:
  1000837ec  ldp     x29, x30, [sp, #0x20]
  1000837f0  ldp     x20, x19, [sp, #0x10]
  1000837f4  ldp     x22, x21, [sp], #0x30
  1000837f8  ret
  1000837fc  mov     x20, x0
  100083800  mov     x0, x21
  100083804  b       loc_100083810
  100083808  mov     x20, x0
  10008380c  mov     x0, x19
loc_100083810:
  100083810  bl      _objc_release
  100083814  mov     x0, x20
  100083818  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAppDelegate applicationWillResignActive:]
; address 0x10008381c  size 32  kind objc
; ======================================================================
  10008381c  stp     x29, x30, [sp, #-0x10]!
  100083820  mov     x29, sp
  100083824  adrp    x8, #0x100419000
  100083828  nop
  10008382c  ldr     x1, [x8, #0xf0]
  100083830  bl      _objc_msgSend                            ; [self pauseGame]
  100083834  ldp     x29, x30, [sp], #0x10
  100083838  ret

; ======================================================================
; -[ADAppDelegate applicationDidEnterBackground:]
; address 0x10008383c  size 32  kind objc
; ======================================================================
  10008383c  stp     x29, x30, [sp, #-0x10]!
  100083840  mov     x29, sp
  100083844  adrp    x8, #0x100419000
  100083848  nop
  10008384c  ldr     x1, [x8, #0xf0]
  100083850  bl      _objc_msgSend                            ; [self pauseGame]
  100083854  ldp     x29, x30, [sp], #0x10
  100083858  ret

; ======================================================================
; -[ADAppDelegate applicationWillEnterForeground:]
; address 0x10008385c  size 4  kind objc
; ======================================================================
  10008385c  ret

; ======================================================================
; -[ADAppDelegate applicationDidBecomeActive:]
; address 0x100083860  size 4  kind objc
; ======================================================================
  100083860  ret

; ======================================================================
; -[ADAppDelegate applicationWillTerminate:]
; address 0x100083864  size 4  kind objc
; ======================================================================
  100083864  ret

; ======================================================================
; -[ADAppDelegate window]
; address 0x100083868  size 16  kind objc
; ======================================================================
  100083868  adrp    x8, #0x10041f000
  10008386c  ldrsw   x8, [x8, #0xe88]                         ; ivar offset ADAppDelegate._window (+0x38)
  100083870  ldr     x0, [x0, x8]                             ; x0 = self->_window
  100083874  ret

; ======================================================================
; -[ADAppDelegate setWindow:]
; address 0x100083878  size 56  kind objc
; ======================================================================
  100083878  stp     x20, x19, [sp, #-0x20]!
  10008387c  stp     x29, x30, [sp, #0x10]
  100083880  add     x29, sp, #0x10
  100083884  mov     x19, x0
  100083888  adrp    x8, #0x10041f000
  10008388c  ldrsw   x20, [x8, #0xe88]                        ; ivar offset ADAppDelegate._window (+0x38)
  100083890  mov     x0, x2
  100083894  bl      _objc_retain
  100083898  ldr     x8, [x19, x20]                           ; x8 = self->_window
  10008389c  str     x0, [x19, x20]                           ; self->_window = arg1
  1000838a0  mov     x0, x8
  1000838a4  ldp     x29, x30, [sp, #0x10]
  1000838a8  ldp     x20, x19, [sp], #0x20
  1000838ac  b       _objc_release

; ======================================================================
; -[ADAppDelegate viewController]
; address 0x1000838b0  size 16  kind objc
; ======================================================================
  1000838b0  adrp    x8, #0x10041f000
  1000838b4  ldrsw   x8, [x8, #0xe8c]                         ; ivar offset ADAppDelegate._viewController (+0x40)
  1000838b8  ldr     x0, [x0, x8]                             ; x0 = self->_viewController
  1000838bc  ret

; ======================================================================
; -[ADAppDelegate setViewController:]
; address 0x1000838c0  size 56  kind objc
; ======================================================================
  1000838c0  stp     x20, x19, [sp, #-0x20]!
  1000838c4  stp     x29, x30, [sp, #0x10]
  1000838c8  add     x29, sp, #0x10
  1000838cc  mov     x19, x0
  1000838d0  adrp    x8, #0x10041f000
  1000838d4  ldrsw   x20, [x8, #0xe8c]                        ; ivar offset ADAppDelegate._viewController (+0x40)
  1000838d8  mov     x0, x2
  1000838dc  bl      _objc_retain
  1000838e0  ldr     x8, [x19, x20]                           ; x8 = self->_viewController
  1000838e4  str     x0, [x19, x20]                           ; self->_viewController = arg1
  1000838e8  mov     x0, x8
  1000838ec  ldp     x29, x30, [sp, #0x10]
  1000838f0  ldp     x20, x19, [sp], #0x20
  1000838f4  b       _objc_release

; ======================================================================
; -[ADAppDelegate statusBar]
; address 0x1000838f8  size 16  kind objc
; ======================================================================
  1000838f8  adrp    x8, #0x10041f000
  1000838fc  ldrsw   x8, [x8, #0xe78]                         ; ivar offset ADAppDelegate._statusBar (+0x48)
  100083900  ldr     x0, [x0, x8]                             ; x0 = self->_statusBar
  100083904  ret

; ======================================================================
; -[ADAppDelegate menu_music_playing]
; address 0x100083908  size 16  kind objc
; ======================================================================
  100083908  adrp    x8, #0x10041f000
  10008390c  ldrsw   x8, [x8, #0xe90]                         ; ivar offset ADAppDelegate._menu_music_playing (+0x30)
  100083910  ldrb    w0, [x0, x8]                             ; w0 = self->_menu_music_playing
  100083914  ret

; ======================================================================
; -[ADAppDelegate setMenu_music_playing:]
; address 0x100083918  size 16  kind objc
; ======================================================================
  100083918  adrp    x8, #0x10041f000
  10008391c  ldrsw   x8, [x8, #0xe90]                         ; ivar offset ADAppDelegate._menu_music_playing (+0x30)
  100083920  strb    w2, [x0, x8]                             ; self->_menu_music_playing = arg1
  100083924  ret

; ======================================================================
; -[ADAppDelegate currentMenuMusic]
; address 0x100083928  size 16  kind objc
; ======================================================================
  100083928  adrp    x8, #0x10041f000
  10008392c  ldrsw   x8, [x8, #0xe94]                         ; ivar offset ADAppDelegate._currentMenuMusic (+0x50)
  100083930  ldr     x0, [x0, x8]                             ; x0 = self->_currentMenuMusic
  100083934  ret

; ======================================================================
; -[ADAppDelegate setCurrentMenuMusic:]
; address 0x100083938  size 56  kind objc
; ======================================================================
  100083938  stp     x20, x19, [sp, #-0x20]!
  10008393c  stp     x29, x30, [sp, #0x10]
  100083940  add     x29, sp, #0x10
  100083944  mov     x19, x0
  100083948  adrp    x8, #0x10041f000
  10008394c  ldrsw   x20, [x8, #0xe94]                        ; ivar offset ADAppDelegate._currentMenuMusic (+0x50)
  100083950  mov     x0, x2
  100083954  bl      _objc_retain
  100083958  ldr     x8, [x19, x20]                           ; x8 = self->_currentMenuMusic
  10008395c  str     x0, [x19, x20]                           ; self->_currentMenuMusic = arg1
  100083960  mov     x0, x8
  100083964  ldp     x29, x30, [sp, #0x10]
  100083968  ldp     x20, x19, [sp], #0x20
  10008396c  b       _objc_release

; ======================================================================
; -[ADAppDelegate .cxx_destruct]
; address 0x100083970  size 184  kind objc
; ======================================================================
  100083970  stp     x20, x19, [sp, #-0x20]!
  100083974  stp     x29, x30, [sp, #0x10]
  100083978  add     x29, sp, #0x10
  10008397c  mov     x19, x0
  100083980  adrp    x8, #0x10041f000
  100083984  ldrsw   x8, [x8, #0xe94]                         ; ivar offset ADAppDelegate._currentMenuMusic (+0x50)
  100083988  add     x0, x19, x8
  10008398c  mov     x1, #0
  100083990  bl      _objc_storeStrong
  100083994  adrp    x8, #0x10041f000
  100083998  ldrsw   x8, [x8, #0xe78]                         ; ivar offset ADAppDelegate._statusBar (+0x48)
  10008399c  add     x0, x19, x8
  1000839a0  mov     x1, #0
  1000839a4  bl      _objc_storeStrong
  1000839a8  adrp    x8, #0x10041f000
  1000839ac  ldrsw   x8, [x8, #0xe8c]                         ; ivar offset ADAppDelegate._viewController (+0x40)
  1000839b0  add     x0, x19, x8
  1000839b4  mov     x1, #0
  1000839b8  bl      _objc_storeStrong
  1000839bc  adrp    x8, #0x10041f000
  1000839c0  ldrsw   x8, [x8, #0xe88]                         ; ivar offset ADAppDelegate._window (+0x38)
  1000839c4  add     x0, x19, x8
  1000839c8  mov     x1, #0
  1000839cc  bl      _objc_storeStrong
  1000839d0  adrp    x8, #0x10041f000
  1000839d4  ldrsw   x8, [x8, #0xe98]                         ; ivar offset ADAppDelegate.currentViewController (+0x28)
  1000839d8  add     x0, x19, x8
  1000839dc  mov     x1, #0
  1000839e0  bl      _objc_storeStrong
  1000839e4  adrp    x8, #0x10041f000
  1000839e8  ldrsw   x8, [x8, #0xe7c]                         ; ivar offset ADAppDelegate.openSound (+0x20)
  1000839ec  add     x0, x19, x8
  1000839f0  mov     x1, #0
  1000839f4  bl      _objc_storeStrong
  1000839f8  adrp    x8, #0x10041f000
  1000839fc  ldrsw   x8, [x8, #0xe84]                         ; ivar offset ADAppDelegate.fadeOutTimer (+0x18)
  100083a00  add     x0, x19, x8
  100083a04  mov     x1, #0
  100083a08  bl      _objc_storeStrong
  100083a0c  mov     x1, #0
  100083a10  adrp    x8, #0x10041f000
  100083a14  ldrsw   x8, [x8, #0xe74]                         ; ivar offset ADAppDelegate.metricsViewController (+0x8)
  100083a18  add     x0, x19, x8
  100083a1c  ldp     x29, x30, [sp, #0x10]
  100083a20  ldp     x20, x19, [sp], #0x20
  100083a24  b       _objc_storeStrong
