// unit ADChallengeCompletedViewController — 37 functions
//   0x10004699c    1708  -[ADChallengeCompletedViewController viewDidLoad]
//   0x100047048      20  -[ADChallengeCompletedViewController viewDidLoad]_block_invoke
//   0x10004705c     220  -[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2
//   0x100047138     468  -[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke
//   0x10004730c       8  sub_10004730c
//   0x100047314       8  sub_100047314
//   0x10004731c      96  -[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke_2
//   0x10004737c       8  sub_10004737c
//   0x100047384       8  sub_100047384
//   0x10004738c       8  sub_10004738c
//   0x100047394       8  sub_100047394
//   0x10004739c     876  -[ADChallengeCompletedViewController loadView]
//   0x100047708     224  -[ADChallengeCompletedViewController timeStringFromSeconds:]
//   0x1000477e8      60  -[ADChallengeCompletedViewController viewDidLayoutSubviews]
//   0x100047824    1452  -[ADChallengeCompletedViewController checkCompletion]
//   0x100047dd0      80  -[ADChallengeCompletedViewController swipeLeft]
//   0x100047e20       4  -[ADChallengeCompletedViewController swipeRight]
//   0x100047e24       4  -[ADChallengeCompletedViewController scoreButtonPressed:]
//   0x100047e28       4  -[ADChallengeCompletedViewController missionButtonPressed:]
//   0x100047e2c     276  -[ADChallengeCompletedViewController unlockTimeLimitStarWithGlow:]
//   0x100047f40     276  -[ADChallengeCompletedViewController unlockAccuracyStarWithGlow:]
//   0x100048054     276  -[ADChallengeCompletedViewController unlockMissionStarWithGlow:]
//   0x100048168     248  -[ADChallengeCompletedViewController viewWillAppear:]
//   0x100048260     196  -[ADChallengeCompletedViewController resumeFromStats]
//   0x100048324     936  -[ADChallengeCompletedViewController checkAllAnimationsAreComplete]
//   0x1000486cc      92  -[ADChallengeCompletedViewController stopAnimations]
//   0x100048728     316  -[ADChallengeCompletedViewController backButtonPressed]
//   0x100048864     344  -[ADChallengeCompletedViewController missionSelectButtonPressed:]
//   0x1000489bc     484  -[ADChallengeCompletedViewController nextMissionButtonPressed:]
//   0x100048ba0     412  -[ADChallengeCompletedViewController retryButtonPressed:]
//   0x100048d3c     308  -[ADChallengeCompletedViewController showGameStatistics:]
//   0x100048e70     308  -[ADChallengeCompletedViewController moreStatsButtonPressed:]
//   0x100048fa4     852  -[ADChallengeCompletedViewController reportScoreToGameCenter]
//   0x1000492f8       4  -[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke
//   0x1000492fc       4  -[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2
//   0x100049300     252  -[ADChallengeCompletedViewController playButtonSound]
//   0x1000493fc      20  -[ADChallengeCompletedViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeCompletedViewController viewDidLoad]
; address 0x10004699c  size 1708  kind objc
; ======================================================================
  10004699c  stp     x28, x27, [sp, #-0x60]!
  1000469a0  stp     x26, x25, [sp, #0x10]
  1000469a4  stp     x24, x23, [sp, #0x20]
  1000469a8  stp     x22, x21, [sp, #0x30]
  1000469ac  stp     x20, x19, [sp, #0x40]
  1000469b0  stp     x29, x30, [sp, #0x50]
  1000469b4  add     x29, sp, #0x50
  1000469b8  sub     sp, sp, #0x130
  1000469bc  mov     x19, x0
  1000469c0  adrp    x25, #0x1003b0000
  1000469c4  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000469c8  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000469cc  stur    x25, [x29, #-0x58]
  1000469d0  str     x19, [sp, #0x98]
  1000469d4  adrp    x8, #0x10041e000
  1000469d8  ldr     x8, [x8, #0xd18]
  1000469dc  str     x8, [sp, #0xa0]
  1000469e0  adrp    x8, #0x100416000
  1000469e4  nop
  1000469e8  ldr     x1, [x8, #0xb48]
  1000469ec  add     x0, sp, #0x98
  1000469f0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000469f4  adrp    x8, #0x100417000
  1000469f8  nop
  1000469fc  ldr     x20, [x8, #0x2a8]
  100046a00  mov     x0, x19
  100046a04  mov     x1, x20
  100046a08  bl      _objc_msgSend                            ; [self statusBarViewController]
  100046a0c  mov     x29, x29
  100046a10  bl      _objc_retainAutoreleasedReturnValue
  100046a14  mov     x21, x0
  100046a18  adrp    x8, #0x100417000
  100046a1c  nop
  100046a20  ldr     x1, [x8, #0x2b0]
  100046a24  mov     w2, #1
  100046a28  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  100046a2c  mov     x0, x21
  100046a30  bl      _objc_release
  100046a34  mov     x0, x19
  100046a38  mov     x1, x20
  100046a3c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100046a40  mov     x29, x29
  100046a44  bl      _objc_retainAutoreleasedReturnValue
  100046a48  mov     x21, x0
  100046a4c  adrp    x8, #0x100417000
  100046a50  nop
  100046a54  ldr     x1, [x8, #0x2b8]
  100046a58  mov     w2, #1
  100046a5c  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:1]
  100046a60  mov     x0, x21
  100046a64  bl      _objc_release
  100046a68  mov     x0, x19
  100046a6c  mov     x1, x20
  100046a70  bl      _objc_msgSend                            ; [self statusBarViewController]
  100046a74  mov     x29, x29
  100046a78  bl      _objc_retainAutoreleasedReturnValue
  100046a7c  mov     x21, x0
  100046a80  adrp    x8, #0x100417000
  100046a84  nop
  100046a88  ldr     x1, [x8, #0x2c0]
  100046a8c  mov     w2, #1
  100046a90  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:1]
  100046a94  mov     x0, x21
  100046a98  bl      _objc_release
  100046a9c  mov     x0, x19
  100046aa0  mov     x1, x20
  100046aa4  bl      _objc_msgSend                            ; [self statusBarViewController]
  100046aa8  mov     x29, x29
  100046aac  bl      _objc_retainAutoreleasedReturnValue
  100046ab0  mov     x21, x0
  100046ab4  adrp    x8, #0x100417000
  100046ab8  nop
  100046abc  ldr     x1, [x8, #0x7c8]
  100046ac0  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  100046ac4  mov     x29, x29
  100046ac8  bl      _objc_retainAutoreleasedReturnValue
  100046acc  mov     x22, x0
  100046ad0  adrp    x8, #0x100417000
  100046ad4  nop
  100046ad8  ldr     x1, [x8, #0x920]
  100046adc  mov     x3, #0
  100046ae0  adrp    x2, #0x1003bc000
  100046ae4  add     x2, x2, #0xff0                           ; @"Main Menu"
  100046ae8  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setTitle:@"Main Menu" forState:0]
  100046aec  mov     x0, x22
  100046af0  bl      _objc_release
  100046af4  mov     x0, x21
  100046af8  bl      _objc_release
  100046afc  adrp    x8, #0x100418000
  100046b00  nop
  100046b04  ldr     x1, [x8, #0x7a0]
  100046b08  mov     x0, x19
  100046b0c  bl      _objc_msgSend                            ; [self timeLabel]
  100046b10  mov     x29, x29
  100046b14  bl      _objc_retainAutoreleasedReturnValue
  100046b18  mov     x22, x0
  100046b1c  adrp    x8, #0x10041d000
  100046b20  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100046b24  adrp    x8, #0x100417000
  100046b28  nop
  100046b2c  ldr     x1, [x8, #0x228]
  100046b30  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100046b34  mov     x29, x29
  100046b38  bl      _objc_retainAutoreleasedReturnValue
  100046b3c  mov     x23, x0
  100046b40  adrp    x8, #0x100418000
  100046b44  nop
  100046b48  ldr     x1, [x8, #0x9a0]
  100046b4c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] challengeTimeElapsed]
  100046b50  fcvtzs  w2, d0
  100046b54  adrp    x8, #0x100418000
  100046b58  nop
  100046b5c  ldr     x1, [x8, #0x7a8]
  100046b60  mov     x0, x19
  100046b64  bl      _objc_msgSend                            ; [self timeStringFromSeconds:(int)[[ADInGameStats singleton] challengeTimeElapsed]]
  100046b68  mov     x29, x29
  100046b6c  bl      _objc_retainAutoreleasedReturnValue
  100046b70  mov     x24, x0
  100046b74  adrp    x8, #0x100416000
  100046b78  nop
  100046b7c  ldr     x21, [x8, #0xb68]
  100046b80  mov     x0, x22
  100046b84  mov     x1, x21
  100046b88  mov     x2, x24
  100046b8c  bl      _objc_msgSend                            ; [[self timeLabel] setText:[self timeStringFromSeconds:(int)[[ADInGameStats singleton] challengeTimeElapsed]]]
  100046b90  mov     x0, x24
  100046b94  bl      _objc_release
  100046b98  mov     x0, x23
  100046b9c  bl      _objc_release
  100046ba0  mov     x0, x22
  100046ba4  bl      _objc_release
  100046ba8  adrp    x24, #0x10041e000
  100046bac  ldr     x0, [x24, #8]                            ; class ADTracker
  100046bb0  adrp    x8, #0x100416000
  100046bb4  nop
  100046bb8  ldr     x22, [x8, #0xac0]
  100046bbc  mov     x1, x22
  100046bc0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100046bc4  mov     x29, x29
  100046bc8  bl      _objc_retainAutoreleasedReturnValue
  100046bcc  mov     x23, x0
  100046bd0  adrp    x8, #0x100418000
  100046bd4  nop
  100046bd8  ldr     x1, [x8, #0x9a8]
  100046bdc  mov     w2, #1
  100046be0  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] challengeCompleted:1]
  100046be4  mov     x0, x23
  100046be8  bl      _objc_release
  100046bec  ldr     x0, [x24, #8]                            ; class ADTracker
  100046bf0  mov     x1, x22
  100046bf4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100046bf8  mov     x29, x29
  100046bfc  bl      _objc_retainAutoreleasedReturnValue
  100046c00  mov     x23, x0
  100046c04  adrp    x8, #0x100418000
  100046c08  nop
  100046c0c  ldr     x1, [x8, #0x9b0]
  100046c10  mov     w2, #1
  100046c14  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] accuracyObjectiveReached:1]
  100046c18  mov     x0, x23
  100046c1c  bl      _objc_release
  100046c20  ldr     x0, [x24, #8]                            ; class ADTracker
  100046c24  mov     x1, x22
  100046c28  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100046c2c  mov     x29, x29
  100046c30  bl      _objc_retainAutoreleasedReturnValue
  100046c34  mov     x22, x0
  100046c38  adrp    x8, #0x100418000
  100046c3c  nop
  100046c40  ldr     x1, [x8, #0x9b8]
  100046c44  mov     w2, #1
  100046c48  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] timeObjectiveReached:1]
  100046c4c  mov     x0, x22
  100046c50  bl      _objc_release
  100046c54  mov     x0, x19
  100046c58  mov     x1, x20
  100046c5c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100046c60  mov     x29, x29
  100046c64  bl      _objc_retainAutoreleasedReturnValue
  100046c68  mov     x22, x0
  100046c6c  adrp    x8, #0x100417000
  100046c70  nop
  100046c74  ldr     x1, [x8, #0x2c8]
  100046c78  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100046c7c  mov     x29, x29
  100046c80  bl      _objc_retainAutoreleasedReturnValue
  100046c84  mov     x23, x0
  100046c88  adrp    x2, #0x1003bd000
  100046c8c  add     x2, x2, #0x10                            ; @"Challenge completed"
  100046c90  mov     x1, x21
  100046c94  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"Challenge completed"]
  100046c98  mov     x0, x23
  100046c9c  bl      _objc_release
  100046ca0  mov     x0, x22
  100046ca4  bl      _objc_release
  100046ca8  adrp    x8, #0x100418000
  100046cac  nop
  100046cb0  ldr     x1, [x8, #0x838]
  100046cb4  mov     x0, x19
  100046cb8  bl      _objc_msgSend                            ; [self contentScrollView]
  100046cbc  mov     x29, x29
  100046cc0  bl      _objc_retainAutoreleasedReturnValue
  100046cc4  mov     x21, x0
  100046cc8  adrp    x8, #0x100418000
  100046ccc  nop
  100046cd0  ldr     x1, [x8, #0x760]
  100046cd4  mov     x0, x19
  100046cd8  bl      _objc_msgSend                            ; [self contentView]
  100046cdc  mov     x29, x29
  100046ce0  bl      _objc_retainAutoreleasedReturnValue
  100046ce4  mov     x22, x0
  100046ce8  adrp    x8, #0x100416000
  100046cec  nop
  100046cf0  ldr     x1, [x8, #0xf38]
  100046cf4  bl      _objc_msgSend                            ; [[self contentView] frame]
  100046cf8  adrp    x8, #0x100417000
  100046cfc  nop
  100046d00  ldr     x1, [x8, #0x758]
  100046d04  movi    v1.16b, #0
  100046d08  mov     x0, x21
  100046d0c  mov     v0.16b, v2.16b
  100046d10  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{[[self contentView] frame].2, 0}]
  100046d14  mov     x0, x22
  100046d18  bl      _objc_release
  100046d1c  mov     x0, x21
  100046d20  bl      _objc_release
  100046d24  adrp    x8, #0x100418000
  100046d28  nop
  100046d2c  ldr     x1, [x8, #0x9c0]
  100046d30  mov     x0, x19
  100046d34  bl      _objc_msgSend                            ; [self checkCompletion]
  100046d38  mov     x2, x0
  100046d3c  adrp    x8, #0x100418000
  100046d40  nop
  100046d44  ldr     x1, [x8, #0x9c8]
  100046d48  mov     x0, x19
  100046d4c  bl      _objc_msgSend                            ; [self setStarCoins:[self checkCompletion]]
  100046d50  mov     x0, x19
  100046d54  mov     x1, x20
  100046d58  bl      _objc_msgSend                            ; [self statusBarViewController]
  100046d5c  mov     x29, x29
  100046d60  bl      _objc_retainAutoreleasedReturnValue
  100046d64  mov     x21, x0
  100046d68  adrp    x26, #0x1003b0000
  100046d6c  ldr     x26, [x26, #0x118]                       ; __NSConcreteStackBlock
  100046d70  adr     x8, #0x100047048                         ; &-[ADChallengeCompletedViewController viewDidLoad]_block_invoke
  100046d74  nop
  100046d78  mov     w9, #-0x40000000
  100046d7c  adrp    x10, #0x1003b1000
  100046d80  add     x10, x10, #0x700                         ; &d_1003b1700
  100046d84  str     x26, [sp, #0x70]
  100046d88  stp     w9, wzr, [sp, #0x78]
  100046d8c  stp     x8, x10, [sp, #0x80]
  100046d90  str     x19, [sp, #0x90]
  100046d94  adrp    x8, #0x100418000
  100046d98  nop
  100046d9c  ldr     x1, [x8, #0x9d8]
  100046da0  add     x2, sp, #0x70
  100046da4  bl      _objc_msgSend                            ; [[self statusBarViewController] setSlideViewCallBack:^{-[ADChallengeCompletedViewController viewDidLoad]_block_invoke captures +0x20=self, +0x28=self, +0x30=ADChallengeCompletedViewController}]
  100046da8  mov     x0, x21
  100046dac  bl      _objc_release
  100046db0  mov     x0, x19
  100046db4  mov     x1, x20
  100046db8  bl      _objc_msgSend                            ; [self statusBarViewController]
  100046dbc  mov     x29, x29
  100046dc0  bl      _objc_retainAutoreleasedReturnValue
  100046dc4  mov     x20, x0
  100046dc8  adrp    x8, #0x100418000
  100046dcc  nop
  100046dd0  ldr     x1, [x8, #0x3a8]
  100046dd4  bl      _objc_msgSend                            ; [[self statusBarViewController] deactivateButtons]
  100046dd8  mov     x0, x20
  100046ddc  bl      _objc_release
  100046de0  stp     xzr, xzr, [sp, #0x60]
  100046de4  stp     xzr, xzr, [sp, #0x50]
  100046de8  stp     xzr, xzr, [sp, #0x40]
  100046dec  stp     xzr, xzr, [sp, #0x30]
  100046df0  adrp    x8, #0x100418000
  100046df4  nop
  100046df8  ldr     x20, [x8, #0x9e0]
  100046dfc  mov     x0, x19
  100046e00  mov     x1, x20
  100046e04  bl      _objc_msgSend                            ; [self buttonsView]
  100046e08  mov     x29, x29
  100046e0c  bl      _objc_retainAutoreleasedReturnValue
  100046e10  mov     x22, x0
  100046e14  adrp    x8, #0x100417000
  100046e18  nop
  100046e1c  ldr     x1, [x8, #0x1c8]
  100046e20  bl      _objc_msgSend                            ; [[self buttonsView] subviews]
  100046e24  mov     x29, x29
  100046e28  bl      _objc_retainAutoreleasedReturnValue
  100046e2c  mov     x21, x0
  100046e30  mov     x0, x22
  100046e34  bl      _objc_release
  100046e38  adrp    x8, #0x100416000
  100046e3c  nop
  100046e40  ldr     x22, [x8, #0xe00]
  100046e44  add     x2, sp, #0x30
  100046e48  add     x3, sp, #0xa8
  100046e4c  mov     w4, #0x10
  100046e50  mov     x0, x21
  100046e54  mov     x1, x22
  100046e58  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x30] objects:&sp[0xa8] count:16]
  100046e5c  mov     x23, x0
  100046e60  cbz     x23, loc_100046ed4                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x30] objects:&sp[0xa8] count:16] == 0)
  100046e64  ldr     x8, [sp, #0x40]
  100046e68  ldr     x27, [x8]
  100046e6c  adrp    x8, #0x100417000
  100046e70  add     x8, x8, #0x828                           ; &@selector(setAlpha:)
  100046e74  ldr     x24, [x8]
loc_100046e78:
  100046e78  mov     x28, #0
loc_100046e7c:
  100046e7c  ldr     x8, [sp, #0x40]
  100046e80  ldr     x8, [x8]
  100046e84  cmp     x8, x27
  100046e88  b.eq    loc_100046e94                            ; if (x8 == x27)
  100046e8c  mov     x0, x21
  100046e90  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self buttonsView] subviews])
loc_100046e94:
  100046e94  ldr     x8, [sp, #0x38]
  100046e98  ldr     x0, [x8, x28, lsl #3]
  100046e9c  movi    v0.16b, #0
  100046ea0  mov     x1, x24
  100046ea4  bl      _objc_msgSend                            ; [x0 setAlpha:0]
  100046ea8  add     x28, x28, #1
  100046eac  cmp     x28, x23
  100046eb0  b.lo    loc_100046e7c                            ; if ((x28 + 1) <u [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x30] objects:&sp[0xa8] count:16])
  100046eb4  add     x2, sp, #0x30
  100046eb8  add     x3, sp, #0xa8
  100046ebc  mov     w4, #0x10
  100046ec0  mov     x0, x21
  100046ec4  mov     x1, x22
  100046ec8  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x30] objects:&sp[0xa8] count:16]
  100046ecc  mov     x23, x0
  100046ed0  cbnz    x23, loc_100046e78                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x30] objects:&sp[0xa8] count:16] != 0)
loc_100046ed4:
  100046ed4  mov     x0, x21
  100046ed8  bl      _objc_release
  100046edc  mov     x0, x19
  100046ee0  mov     x1, x20
  100046ee4  bl      _objc_msgSend                            ; [self buttonsView]
  100046ee8  mov     x29, x29
  100046eec  bl      _objc_retainAutoreleasedReturnValue
  100046ef0  mov     x20, x0
  100046ef4  adrp    x8, #0x100417000
  100046ef8  nop
  100046efc  ldr     x1, [x8, #0x828]
  100046f00  movi    v0.16b, #0
  100046f04  bl      _objc_msgSend                            ; [[self buttonsView] setAlpha:0]
  100046f08  mov     x0, x20
  100046f0c  bl      _objc_release
  100046f10  mov     w1, #-0x76e90000
  100046f14  movk    w1, #0x3700
  100046f18  mov     x0, #0
  100046f1c  bl      _dispatch_time                           ; dispatch_time(0, 0x89173700)
  100046f20  mov     x20, x0
  100046f24  str     x26, [sp, #8]
  100046f28  mov     w8, #-0x3e000000
  100046f2c  stp     w8, wzr, [sp, #0x10]
  100046f30  adr     x8, #0x10004705c                         ; &-[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2
  100046f34  nop
  100046f38  str     x8, [sp, #0x18]
  100046f3c  adrp    x8, #0x1003b1000
  100046f40  add     x8, x8, #0x780                           ; &d_1003b1780
  100046f44  str     x8, [sp, #0x20]
  100046f48  mov     x0, x19
  100046f4c  bl      _objc_retain
  100046f50  str     x0, [sp, #0x28]
  100046f54  adrp    x1, #0x1003b0000
  100046f58  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  100046f5c  add     x2, sp, #8
  100046f60  mov     x0, x20
  100046f64  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x89173700), __dispatch_main_q, ^{-[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2 captures +0x20=self, +0x68=__NSConcreteStackBlock, +0x70=0xc0000000, +0x78=&-[ADChallengeCompletedViewController vi…})
  100046f68  ldr     x0, [sp, #0x28]
  100046f6c  bl      _objc_release
  100046f70  ldur    x8, [x29, #-0x58]
  100046f74  sub     x8, x25, x8
  100046f78  cbnz    x8, loc_100046f9c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100046f7c  sub     sp, x29, #0x50
  100046f80  ldp     x29, x30, [sp, #0x50]
  100046f84  ldp     x20, x19, [sp, #0x40]
  100046f88  ldp     x22, x21, [sp, #0x30]
  100046f8c  ldp     x24, x23, [sp, #0x20]
  100046f90  ldp     x26, x25, [sp, #0x10]
  100046f94  ldp     x28, x27, [sp], #0x60
  100046f98  ret
loc_100046f9c:
  100046f9c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100046fa0:
  100046fa0  mov     x19, x0
loc_100046fa4:
  100046fa4  mov     x0, x21
loc_100046fa8:
  100046fa8  bl      _objc_release
  100046fac  mov     x0, x19
  100046fb0  bl      __Unwind_Resume                          ; Unwind_Resume()
  100046fb4  b       loc_100046fa0
  100046fb8  mov     x19, x0
  100046fbc  b       loc_100047014
  100046fc0  b       loc_100046fd4
  100046fc4  b       loc_100046fa0
  100046fc8  b       loc_100046fa0
  100046fcc  b       loc_100046fa0
  100046fd0  b       loc_100046fa0
loc_100046fd4:
  100046fd4  mov     x19, x0
  100046fd8  mov     x0, x22
  100046fdc  bl      _objc_release
  100046fe0  b       loc_100046fa4
  100046fe4  b       loc_10004702c
  100046fe8  mov     x19, x0
  100046fec  mov     x0, x24
  100046ff0  bl      _objc_release
  100046ff4  b       loc_100047014
  100046ff8  b       loc_100046ffc
loc_100046ffc:
  100046ffc  mov     x19, x0
  100047000  mov     x0, x23
  100047004  b       loc_100046fa8
  100047008  b       loc_10004702c
  10004700c  b       loc_10004702c
  100047010  mov     x19, x0
loc_100047014:
  100047014  mov     x0, x23
  100047018  bl      _objc_release
  10004701c  b       loc_100047030
  100047020  b       loc_100046fa0
  100047024  b       loc_100046fa0
  100047028  b       loc_10004703c
loc_10004702c:
  10004702c  mov     x19, x0
loc_100047030:
  100047030  mov     x0, x22
  100047034  b       loc_100046fa8
  100047038  b       loc_100046fa0
loc_10004703c:
  10004703c  mov     x19, x0
  100047040  mov     x0, x20
  100047044  b       loc_100046fa8

; ======================================================================
; -[ADChallengeCompletedViewController viewDidLoad]_block_invoke
; address 0x100047048  size 20  kind block
; ======================================================================
  100047048  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10004704c  adrp    x8, #0x100418000
  100047050  nop
  100047054  ldr     x1, [x8, #0x9d0]
  100047058  b       _objc_msgSend                            ; [self animateCoinsAndDiamonds]

; ======================================================================
; -[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2
; address 0x10004705c  size 220  kind block
; ======================================================================
  10004705c  stp     x22, x21, [sp, #-0x30]!
  100047060  stp     x20, x19, [sp, #0x10]
  100047064  stp     x29, x30, [sp, #0x20]
  100047068  add     x29, sp, #0x20
  10004706c  sub     sp, sp, #0x50
  100047070  adrp    x8, #0x10041d000
  100047074  adrp    x20, #0x1003b0000
  100047078  ldr     x20, [x20, #0x118]                       ; __NSConcreteStackBlock
  10004707c  ldr     x19, [x8, #0xf98]                        ; class UIView
  100047080  str     x20, [sp, #0x28]
  100047084  mov     w21, #-0x3e000000
  100047088  stp     w21, wzr, [sp, #0x30]
  10004708c  adr     x8, #0x100047138                         ; &-[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke
  100047090  nop
  100047094  str     x8, [sp, #0x38]
  100047098  adrp    x8, #0x1003b1000
  10004709c  add     x8, x8, #0x720                           ; &d_1003b1720
  1000470a0  str     x8, [sp, #0x40]
  1000470a4  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000470a8  bl      _objc_retain
  1000470ac  str     x0, [sp, #0x48]
  1000470b0  str     x20, [sp]
  1000470b4  stp     w21, wzr, [sp, #8]
  1000470b8  adr     x8, #0x10004731c                         ; &-[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke_2
  1000470bc  nop
  1000470c0  str     x8, [sp, #0x10]
  1000470c4  adrp    x8, #0x1003b1000
  1000470c8  add     x8, x8, #0x750                           ; &d_1003b1750
  1000470cc  str     x8, [sp, #0x18]
  1000470d0  bl      _objc_retain
  1000470d4  str     x0, [sp, #0x20]
  1000470d8  adrp    x8, #0x100417000
  1000470dc  nop
  1000470e0  ldr     x1, [x8, #0x880]
  1000470e4  fmov    d0, #0.50000000
  1000470e8  add     x2, sp, #0x28
  1000470ec  mov     x3, sp
  1000470f0  mov     x0, x19
  1000470f4  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke captures +0x20=self} completion:^{-[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADChallengeCompletedViewController vi…, +0x40=&d_1003b1720, +0x48=self}]
  1000470f8  ldr     x0, [sp, #0x20]
  1000470fc  bl      _objc_release
  100047100  ldr     x0, [sp, #0x48]
  100047104  bl      _objc_release
  100047108  sub     sp, x29, #0x20
  10004710c  ldp     x29, x30, [sp, #0x20]
  100047110  ldp     x20, x19, [sp, #0x10]
  100047114  ldp     x22, x21, [sp], #0x30
  100047118  ret
  10004711c  mov     x19, x0
  100047120  ldr     x0, [sp, #0x20]
  100047124  bl      _objc_release
  100047128  ldr     x0, [sp, #0x48]
  10004712c  bl      _objc_release
  100047130  mov     x0, x19
  100047134  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke
; address 0x100047138  size 468  kind block
; ======================================================================
  100047138  stp     d9, d8, [sp, #-0x70]!
  10004713c  stp     x28, x27, [sp, #0x10]
  100047140  stp     x26, x25, [sp, #0x20]
  100047144  stp     x24, x23, [sp, #0x30]
  100047148  stp     x22, x21, [sp, #0x40]
  10004714c  stp     x20, x19, [sp, #0x50]
  100047150  stp     x29, x30, [sp, #0x60]
  100047154  add     x29, sp, #0x60
  100047158  sub     sp, sp, #0xd0
  10004715c  mov     x19, x0
  100047160  adrp    x25, #0x1003b0000
  100047164  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100047168  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  10004716c  stur    x25, [x29, #-0x68]
  100047170  stp     xzr, xzr, [sp, #0x38]
  100047174  stp     xzr, xzr, [sp, #0x28]
  100047178  stp     xzr, xzr, [sp, #0x18]
  10004717c  stp     xzr, xzr, [sp, #8]
  100047180  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100047184  adrp    x8, #0x100418000
  100047188  nop
  10004718c  ldr     x20, [x8, #0x9e0]
  100047190  mov     x1, x20
  100047194  bl      _objc_msgSend                            ; [self buttonsView]
  100047198  mov     x29, x29
  10004719c  bl      _objc_retainAutoreleasedReturnValue
  1000471a0  mov     x22, x0
  1000471a4  adrp    x8, #0x100417000
  1000471a8  nop
  1000471ac  ldr     x1, [x8, #0x1c8]
  1000471b0  bl      _objc_msgSend                            ; [[self buttonsView] subviews]
  1000471b4  mov     x29, x29
  1000471b8  bl      _objc_retainAutoreleasedReturnValue
  1000471bc  mov     x21, x0
  1000471c0  mov     x0, x22
  1000471c4  bl      _objc_release
  1000471c8  adrp    x8, #0x100416000
  1000471cc  nop
  1000471d0  ldr     x22, [x8, #0xe00]
  1000471d4  add     x2, sp, #8
  1000471d8  add     x3, sp, #0x48
  1000471dc  mov     w4, #0x10
  1000471e0  mov     x0, x21
  1000471e4  mov     x1, x22
  1000471e8  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000471ec  mov     x23, x0
  1000471f0  cbz     x23, loc_100047268                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000471f4  ldr     x8, [sp, #0x18]
  1000471f8  ldr     x26, [x8]
  1000471fc  adrp    x8, #0x100417000
  100047200  add     x8, x8, #0x828                           ; &@selector(setAlpha:)
  100047204  ldr     x24, [x8]
  100047208  fmov    d8, #1.00000000
loc_10004720c:
  10004720c  mov     x27, #0
loc_100047210:
  100047210  ldr     x8, [sp, #0x18]
  100047214  ldr     x8, [x8]
  100047218  cmp     x8, x26
  10004721c  b.eq    loc_100047228                            ; if (x8 == x26)
  100047220  mov     x0, x21
  100047224  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self buttonsView] subviews])
loc_100047228:
  100047228  ldr     x8, [sp, #0x10]
  10004722c  ldr     x0, [x8, x27, lsl #3]
  100047230  mov     x1, x24
  100047234  mov     v0.16b, v8.16b
  100047238  bl      _objc_msgSend                            ; [x0 setAlpha:1]
  10004723c  add     x27, x27, #1
  100047240  cmp     x27, x23
  100047244  b.lo    loc_100047210                            ; if ((x27 + 1) <u [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100047248  add     x2, sp, #8
  10004724c  add     x3, sp, #0x48
  100047250  mov     w4, #0x10
  100047254  mov     x0, x21
  100047258  mov     x1, x22
  10004725c  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100047260  mov     x23, x0
  100047264  cbnz    x23, loc_10004720c                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100047268:
  100047268  mov     x0, x21
  10004726c  bl      _objc_release
  100047270  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100047274  mov     x1, x20
  100047278  bl      _objc_msgSend                            ; [self buttonsView]
  10004727c  mov     x29, x29
  100047280  bl      _objc_retainAutoreleasedReturnValue
  100047284  mov     x20, x0
  100047288  adrp    x8, #0x100417000
  10004728c  nop
  100047290  ldr     x1, [x8, #0x828]
  100047294  fmov    d0, #1.00000000
  100047298  bl      _objc_msgSend                            ; [[self buttonsView] setAlpha:1]
  10004729c  mov     x0, x20
  1000472a0  bl      _objc_release
  1000472a4  ldur    x8, [x29, #-0x68]
  1000472a8  sub     x8, x25, x8
  1000472ac  cbnz    x8, loc_1000472d4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000472b0  sub     sp, x29, #0x60
  1000472b4  ldp     x29, x30, [sp, #0x60]
  1000472b8  ldp     x20, x19, [sp, #0x50]
  1000472bc  ldp     x22, x21, [sp, #0x40]
  1000472c0  ldp     x24, x23, [sp, #0x30]
  1000472c4  ldp     x26, x25, [sp, #0x20]
  1000472c8  ldp     x28, x27, [sp, #0x10]
  1000472cc  ldp     d9, d8, [sp], #0x70
  1000472d0  ret
loc_1000472d4:
  1000472d4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000472d8:
  1000472d8  mov     x19, x0
  1000472dc  mov     x0, x21
loc_1000472e0:
  1000472e0  bl      _objc_release
  1000472e4  mov     x0, x19
  1000472e8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000472ec  b       loc_1000472d8
  1000472f0  mov     x19, x0
  1000472f4  mov     x0, x22
  1000472f8  b       loc_1000472e0
  1000472fc  b       loc_1000472d8
  100047300  mov     x19, x0
  100047304  mov     x0, x20
  100047308  b       loc_1000472e0

; ======================================================================
; sub_10004730c
; address 0x10004730c  size 8  kind sub
; ======================================================================
  10004730c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100047310  b       _objc_retain

; ======================================================================
; sub_100047314
; address 0x100047314  size 8  kind sub
; ======================================================================
  100047314  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100047318  b       _objc_release

; ======================================================================
; -[ADChallengeCompletedViewController viewDidLoad]_block_invoke_2_block_invoke_2
; address 0x10004731c  size 96  kind block
; ======================================================================
  10004731c  stp     x20, x19, [sp, #-0x20]!
  100047320  stp     x29, x30, [sp, #0x10]
  100047324  add     x29, sp, #0x10
  100047328  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10004732c  adrp    x8, #0x100417000
  100047330  nop
  100047334  ldr     x1, [x8, #0x2a8]
  100047338  bl      _objc_msgSend                            ; [self statusBarViewController]
  10004733c  mov     x29, x29
  100047340  bl      _objc_retainAutoreleasedReturnValue
  100047344  mov     x19, x0
  100047348  adrp    x8, #0x100418000
  10004734c  nop
  100047350  ldr     x1, [x8, #0x3c0]
  100047354  bl      _objc_msgSend                            ; [[self statusBarViewController] activateButtons]
  100047358  mov     x0, x19
  10004735c  ldp     x29, x30, [sp, #0x10]
  100047360  ldp     x20, x19, [sp], #0x20
  100047364  b       _objc_release
  100047368  mov     x20, x0
  10004736c  mov     x0, x19
  100047370  bl      _objc_release
  100047374  mov     x0, x20
  100047378  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10004737c
; address 0x10004737c  size 8  kind sub
; ======================================================================
  10004737c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100047380  b       _objc_retain

; ======================================================================
; sub_100047384
; address 0x100047384  size 8  kind sub
; ======================================================================
  100047384  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100047388  b       _objc_release

; ======================================================================
; sub_10004738c
; address 0x10004738c  size 8  kind sub
; ======================================================================
  10004738c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100047390  b       _objc_retain

; ======================================================================
; sub_100047394
; address 0x100047394  size 8  kind sub
; ======================================================================
  100047394  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100047398  b       _objc_release

; ======================================================================
; -[ADChallengeCompletedViewController loadView]
; address 0x10004739c  size 876  kind objc
; ======================================================================
  10004739c  stp     d9, d8, [sp, #-0x60]!
  1000473a0  stp     x26, x25, [sp, #0x10]
  1000473a4  stp     x24, x23, [sp, #0x20]
  1000473a8  stp     x22, x21, [sp, #0x30]
  1000473ac  stp     x20, x19, [sp, #0x40]
  1000473b0  stp     x29, x30, [sp, #0x50]
  1000473b4  add     x29, sp, #0x50
  1000473b8  mov     x19, x0
  1000473bc  adrp    x25, #0x10041e000
  1000473c0  ldr     x0, [x25, #0x50]                         ; class UIDevice
  1000473c4  adrp    x8, #0x100417000
  1000473c8  nop
  1000473cc  ldr     x24, [x8, #0x788]
  1000473d0  mov     x1, x24
  1000473d4  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000473d8  mov     x29, x29
  1000473dc  bl      _objc_retainAutoreleasedReturnValue
  1000473e0  mov     x20, x0
  1000473e4  adrp    x8, #0x100418000
  1000473e8  nop
  1000473ec  ldr     x22, [x8, #0x9e8]
  1000473f0  mov     x1, x22
  1000473f4  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000473f8  mov     x29, x29
  1000473fc  bl      _objc_retainAutoreleasedReturnValue
  100047400  mov     x21, x0
  100047404  adrp    x8, #0x100416000
  100047408  nop
  10004740c  ldr     x23, [x8, #0xf58]
  100047410  adrp    x2, #0x1003bd000
  100047414  add     x2, x2, #0x30                            ; @"iPhone"
  100047418  mov     x1, x23
  10004741c  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  100047420  tbz     w0, #0, loc_100047438                    ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] & 1))
  100047424  mov     x0, x21
  100047428  bl      _objc_release
  10004742c  mov     x0, x20
  100047430  bl      _objc_release
  100047434  b       loc_10004749c
loc_100047438:
  100047438  ldr     x0, [x25, #0x50]                         ; class UIDevice
  10004743c  mov     x1, x24
  100047440  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100047444  mov     x29, x29
  100047448  bl      _objc_retainAutoreleasedReturnValue
  10004744c  mov     x24, x0
  100047450  mov     x1, x22
  100047454  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  100047458  mov     x29, x29
  10004745c  bl      _objc_retainAutoreleasedReturnValue
  100047460  mov     x22, x0
  100047464  adrp    x2, #0x1003bd000
  100047468  add     x2, x2, #0x50                            ; @"iPod touch"
  10004746c  mov     x1, x23
  100047470  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  100047474  mov     x23, x0
  100047478  mov     x0, x22
  10004747c  bl      _objc_release
  100047480  mov     x0, x24
  100047484  bl      _objc_release
  100047488  mov     x0, x21
  10004748c  bl      _objc_release
  100047490  mov     x0, x20
  100047494  bl      _objc_release
  100047498  tbz     w23, #0, loc_10004757c                   ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] & 1))
loc_10004749c:
  10004749c  adrp    x24, #0x10041e000
  1000474a0  ldr     x0, [x24, #0x28]                         ; class UIScreen
  1000474a4  adrp    x8, #0x100417000
  1000474a8  nop
  1000474ac  ldr     x22, [x8, #0x6e8]
  1000474b0  mov     x1, x22
  1000474b4  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000474b8  mov     x29, x29
  1000474bc  bl      _objc_retainAutoreleasedReturnValue
  1000474c0  mov     x20, x0
  1000474c4  adrp    x8, #0x100418000
  1000474c8  nop
  1000474cc  ldr     x23, [x8, #0x9f0]
  1000474d0  adrp    x8, #0x100417000
  1000474d4  nop
  1000474d8  ldr     x1, [x8, #0xe90]
  1000474dc  mov     x2, x23
  1000474e0  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  1000474e4  mov     x8, x0
  1000474e8  ldr     x0, [x24, #0x28]                         ; class UIScreen
  1000474ec  cbz     w8, loc_100047534                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  1000474f0  mov     x1, x22
  1000474f4  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000474f8  mov     x29, x29
  1000474fc  bl      _objc_retainAutoreleasedReturnValue
  100047500  mov     x21, x0
  100047504  mov     x1, x23
  100047508  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  10004750c  adrp    x8, #0x100181000
  100047510  ldr     d0, [x8, #0xbd0]                         ; d0 = -1704.0
  100047514  fadd    d0, d3, d0
  100047518  fabs    d0, d0
  10004751c  nop
  100047520  ldr     d8, [x8, #0xbc8]                         ; d8 = 2.22044605e-16
  100047524  fcmp    d0, d8
  100047528  b.pl    loc_1000475b0                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  10004752c  mov     w23, #1
  100047530  b       loc_1000475f0
loc_100047534:
  100047534  mov     x1, x22
  100047538  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  10004753c  mov     x29, x29
  100047540  bl      _objc_retainAutoreleasedReturnValue
  100047544  mov     x21, x0
  100047548  adrp    x8, #0x100417000
  10004754c  nop
  100047550  ldr     x1, [x8, #0x748]
  100047554  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  100047558  adrp    x8, #0x100181000
  10004755c  ldr     d0, [x8, #0xbc0]                         ; d0 = -568.0
  100047560  fadd    d0, d3, d0
  100047564  fabs    d0, d0
  100047568  nop
  10004756c  ldr     d1, [x8, #0xbc8]                         ; d1 = 2.22044605e-16
  100047570  fcmp    d0, d1
  100047574  cset    w23, mi
  100047578  b       loc_1000475f0
loc_10004757c:
  10004757c  adrp    x8, #0x100418000
  100047580  nop
  100047584  ldr     x1, [x8, #0xa00]
  100047588  adrp    x2, #0x1003bd000
  10004758c  add     x2, x2, #0xb0                            ; @"ADChallengeCompletedViewController"
  100047590  mov     x0, x19
  100047594  ldp     x29, x30, [sp, #0x50]
  100047598  ldp     x20, x19, [sp, #0x40]
  10004759c  ldp     x22, x21, [sp, #0x30]
  1000475a0  ldp     x24, x23, [sp, #0x20]
  1000475a4  ldp     x26, x25, [sp, #0x10]
  1000475a8  ldp     d9, d8, [sp], #0x60
  1000475ac  b       _objc_msgSend                            ; [self loADIPadNib:@"ADChallengeCompletedViewController"]
loc_1000475b0:
  1000475b0  ldr     x0, [x24, #0x28]                         ; class UIScreen
  1000475b4  mov     x1, x22
  1000475b8  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000475bc  mov     x29, x29
  1000475c0  bl      _objc_retainAutoreleasedReturnValue
  1000475c4  mov     x22, x0
  1000475c8  mov     x1, x23
  1000475cc  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000475d0  adrp    x8, #0x100181000
  1000475d4  ldr     d0, [x8, #0xbd8]                         ; d0 = -1136.0
  1000475d8  fadd    d0, d3, d0
  1000475dc  fabs    d0, d0
  1000475e0  fcmp    d0, d8
  1000475e4  cset    w23, mi
  1000475e8  mov     x0, x22
  1000475ec  bl      _objc_release
loc_1000475f0:
  1000475f0  mov     x0, x21
  1000475f4  bl      _objc_release
  1000475f8  mov     x0, x20
  1000475fc  bl      _objc_release
  100047600  adrp    x8, #0x10041d000
  100047604  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100047608  adrp    x8, #0x100416000
  10004760c  nop
  100047610  ldr     x1, [x8, #0xb58]
  100047614  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100047618  mov     x29, x29
  10004761c  bl      _objc_retainAutoreleasedReturnValue
  100047620  mov     x20, x0
  100047624  adrp    x8, #0x100418000
  100047628  add     x8, x8, #0x9f8                           ; &@selector(loadNibNamed:owner:options:)
  10004762c  ldr     x1, [x8]
  100047630  cbz     w23, loc_100047654                       ; if (w23 == 0)
  100047634  mov     x4, #0
  100047638  adrp    x2, #0x1003bd000
  10004763c  add     x2, x2, #0x70                            ; @"ADChallengeCompletedViewController_iPhone5"
  100047640  mov     x0, x20
  100047644  mov     x3, x19
  100047648  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADChallengeCompletedViewController_iPhone5" owner:self options:0]
  10004764c  mov     x29, x29
  100047650  b       loc_100047670
loc_100047654:
  100047654  mov     x4, #0
  100047658  adrp    x2, #0x1003bd000
  10004765c  add     x2, x2, #0x90                            ; @"ADChallengeCompletedViewController_iPhone4S"
  100047660  mov     x0, x20
  100047664  mov     x3, x19
  100047668  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADChallengeCompletedViewController_iPhone4S" owner:self options:0]
  10004766c  mov     x29, x29
loc_100047670:
  100047670  bl      _objc_retainAutoreleasedReturnValue
  100047674  bl      _objc_release
  100047678  mov     x0, x20
  10004767c  ldp     x29, x30, [sp, #0x50]
  100047680  ldp     x20, x19, [sp, #0x40]
  100047684  ldp     x22, x21, [sp, #0x30]
  100047688  ldp     x24, x23, [sp, #0x20]
  10004768c  ldp     x26, x25, [sp, #0x10]
  100047690  ldp     d9, d8, [sp], #0x60
  100047694  b       _objc_release
  100047698  mov     x19, x0
  10004769c  b       loc_1000476f0
  1000476a0  b       loc_1000476dc
  1000476a4  b       loc_1000476dc
  1000476a8  mov     x19, x0
  1000476ac  b       loc_1000476f0
  1000476b0  mov     x19, x0
  1000476b4  b       loc_1000476c4
  1000476b8  mov     x19, x0
  1000476bc  mov     x0, x22
  1000476c0  bl      _objc_release
loc_1000476c4:
  1000476c4  mov     x0, x24
  1000476c8  b       loc_1000476ec
  1000476cc  b       loc_1000476dc
  1000476d0  mov     x19, x0
  1000476d4  b       loc_1000476f0
  1000476d8  b       loc_1000476dc
loc_1000476dc:
  1000476dc  mov     x19, x0
  1000476e0  b       loc_1000476f8
  1000476e4  mov     x19, x0
  1000476e8  mov     x0, x22
loc_1000476ec:
  1000476ec  bl      _objc_release
loc_1000476f0:
  1000476f0  mov     x0, x21
  1000476f4  bl      _objc_release
loc_1000476f8:
  1000476f8  mov     x0, x20
  1000476fc  bl      _objc_release
  100047700  mov     x0, x19
  100047704  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController timeStringFromSeconds:]
; address 0x100047708  size 224  kind objc
; ======================================================================
  100047708  stp     x22, x21, [sp, #-0x30]!
  10004770c  stp     x20, x19, [sp, #0x10]
  100047710  stp     x29, x30, [sp, #0x20]
  100047714  add     x29, sp, #0x20
  100047718  sub     sp, sp, #0x10
  10004771c  sxtw    x8, w2
  100047720  mov     x9, #-0x77770001
  100047724  movk    x9, #0x8889
  100047728  mul     x8, x8, x9
  10004772c  lsr     x8, x8, #0x20
  100047730  add     w8, w8, w2
  100047734  asr     w9, w8, #5
  100047738  add     w21, w9, w8, lsr #31                     ; t1 = (((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >> 5) + ((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >>> 31))
  10004773c  mov     w8, #0x3c
  100047740  msub    w8, w21, w8, w2
  100047744  adrp    x22, #0x10041d000
  100047748  adrp    x9, #0x1003b9000
  10004774c  add     x9, x9, #0x870                           ; @""
  100047750  adrp    x10, #0x1003bb000
  100047754  add     x10, x10, #0xe30                         ; @"0"
  100047758  ldr     x0, [x22, #0xf78]                        ; class NSString
  10004775c  cmp     w8, #0xa
  100047760  csel    x9, x10, x9, lt
  100047764  adrp    x10, #0x100416000
  100047768  nop
  10004776c  ldr     x20, [x10, #0xee8]
  100047770  stp     x9, x8, [sp]
  100047774  adrp    x2, #0x1003bc000
  100047778  add     x2, x2, #0xd30                           ; @"%@%i"
  10004777c  mov     x1, x20
  100047780  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 - t1 * 60)]
  100047784  mov     x29, x29
  100047788  bl      _objc_retainAutoreleasedReturnValue
  10004778c  mov     x19, x0
  100047790  ldr     x0, [x22, #0xf78]                        ; class NSString
  100047794  stp     x21, x19, [sp]
  100047798  adrp    x2, #0x1003bc000
  10004779c  add     x2, x2, #0xd50                           ; @"%i:%@"
  1000477a0  mov     x1, x20
  1000477a4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i:%@", t1, [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 …]
  1000477a8  mov     x29, x29
  1000477ac  bl      _objc_retainAutoreleasedReturnValue
  1000477b0  mov     x20, x0
  1000477b4  mov     x0, x19
  1000477b8  bl      _objc_release
  1000477bc  mov     x0, x20
  1000477c0  sub     sp, x29, #0x20
  1000477c4  ldp     x29, x30, [sp, #0x20]
  1000477c8  ldp     x20, x19, [sp, #0x10]
  1000477cc  ldp     x22, x21, [sp], #0x30
  1000477d0  b       _objc_autoreleaseReturnValue
  1000477d4  mov     x20, x0
  1000477d8  mov     x0, x19
  1000477dc  bl      _objc_release
  1000477e0  mov     x0, x20
  1000477e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController viewDidLayoutSubviews]
; address 0x1000477e8  size 60  kind objc
; ======================================================================
  1000477e8  stp     x29, x30, [sp, #-0x10]!
  1000477ec  mov     x29, sp
  1000477f0  sub     sp, sp, #0x10
  1000477f4  str     x0, [sp]
  1000477f8  adrp    x8, #0x10041e000
  1000477fc  ldr     x8, [x8, #0xd18]
  100047800  str     x8, [sp, #8]
  100047804  adrp    x8, #0x100417000
  100047808  nop
  10004780c  ldr     x1, [x8, #0x7f0]
  100047810  mov     x0, sp
  100047814  bl      _objc_msgSendSuper2                      ; [super viewDidLayoutSubviews]
  100047818  mov     sp, x29
  10004781c  ldp     x29, x30, [sp], #0x10
  100047820  ret

; ======================================================================
; -[ADChallengeCompletedViewController checkCompletion]
; address 0x100047824  size 1452  kind objc
; ======================================================================
  100047824  stp     d9, d8, [sp, #-0x70]!
  100047828  stp     x28, x27, [sp, #0x10]
  10004782c  stp     x26, x25, [sp, #0x20]
  100047830  stp     x24, x23, [sp, #0x30]
  100047834  stp     x22, x21, [sp, #0x40]
  100047838  stp     x20, x19, [sp, #0x50]
  10004783c  stp     x29, x30, [sp, #0x60]
  100047840  add     x29, sp, #0x60
  100047844  sub     sp, sp, #0x10
  100047848  mov     x19, x0
  10004784c  adrp    x8, #0x10041d000
  100047850  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100047854  adrp    x8, #0x100416000
  100047858  nop
  10004785c  ldr     x1, [x8, #0xdf0]
  100047860  str     x1, [sp, #8]
  100047864  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100047868  mov     x29, x29
  10004786c  bl      _objc_retainAutoreleasedReturnValue
  100047870  mov     x24, x0
  100047874  adrp    x8, #0x100417000
  100047878  nop
  10004787c  ldr     x22, [x8, #0x150]
  100047880  mov     x0, x19
  100047884  mov     x1, x22
  100047888  bl      _objc_msgSend                            ; [self challengeDict]
  10004788c  mov     x29, x29
  100047890  bl      _objc_retainAutoreleasedReturnValue
  100047894  mov     x25, x0
  100047898  adrp    x8, #0x100417000
  10004789c  nop
  1000478a0  ldr     x23, [x8, #0x40]
  1000478a4  adrp    x2, #0x1003b9000
  1000478a8  add     x2, x2, #0xef0                           ; @"challenge_id"
  1000478ac  mov     x1, x23
  1000478b0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  1000478b4  mov     x29, x29
  1000478b8  bl      _objc_retainAutoreleasedReturnValue
  1000478bc  mov     x26, x0
  1000478c0  adrp    x8, #0x100416000
  1000478c4  nop
  1000478c8  ldr     x1, [x8, #0xdf8]
  1000478cc  mov     x0, x24
  1000478d0  mov     x2, x26
  1000478d4  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  1000478d8  eor     w2, w0, #1                               ; t1 = ([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] ^ 1)
  1000478dc  adrp    x8, #0x100418000
  1000478e0  nop
  1000478e4  ldr     x1, [x8, #0xa08]
  1000478e8  mov     x0, x19
  1000478ec  bl      _objc_msgSend                            ; [self unlockMissionStarWithGlow:t1]
  1000478f0  mov     x20, x0
  1000478f4  mov     x0, x26
  1000478f8  bl      _objc_release
  1000478fc  mov     x0, x25
  100047900  bl      _objc_release
  100047904  mov     x0, x24
  100047908  bl      _objc_release
  10004790c  mov     x0, x19
  100047910  mov     x1, x22
  100047914  bl      _objc_msgSend                            ; [self challengeDict]
  100047918  mov     x29, x29
  10004791c  bl      _objc_retainAutoreleasedReturnValue
  100047920  mov     x24, x0
  100047924  adrp    x2, #0x1003bc000
  100047928  add     x2, x2, #0xb90                           ; @"time_limit_star"
  10004792c  mov     x1, x23
  100047930  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  100047934  mov     x29, x29
  100047938  bl      _objc_retainAutoreleasedReturnValue
  10004793c  mov     x27, x0
  100047940  adrp    x2, #0x1003bc000
  100047944  add     x2, x2, #0x990                           ; @"objective"
  100047948  mov     x1, x23
  10004794c  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"]
  100047950  mov     x21, x20
  100047954  mov     x29, x29
  100047958  bl      _objc_retainAutoreleasedReturnValue
  10004795c  mov     x28, x0
  100047960  adrp    x8, #0x100417000
  100047964  nop
  100047968  ldr     x25, [x8, #0x48]
  10004796c  mov     x1, x25
  100047970  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"] floatValue]
  100047974  mov     v8.16b, v0.16b
  100047978  adrp    x8, #0x10041d000
  10004797c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100047980  adrp    x8, #0x100417000
  100047984  nop
  100047988  ldr     x26, [x8, #0x228]
  10004798c  mov     x1, x26
  100047990  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100047994  mov     x29, x29
  100047998  bl      _objc_retainAutoreleasedReturnValue
  10004799c  mov     x20, x0
  1000479a0  adrp    x8, #0x100418000
  1000479a4  nop
  1000479a8  ldr     x1, [x8, #0x9a0]
  1000479ac  bl      _objc_msgSend                            ; [[ADInGameStats singleton] challengeTimeElapsed]
  1000479b0  mov     v9.16b, v0.16b
  1000479b4  fcvt    d8, s8
  1000479b8  mov     x0, x20
  1000479bc  bl      _objc_release
  1000479c0  mov     x0, x28
  1000479c4  bl      _objc_release
  1000479c8  mov     x0, x27
  1000479cc  bl      _objc_release
  1000479d0  mov     x0, x24
  1000479d4  bl      _objc_release
  1000479d8  fcmp    d8, d9
  1000479dc  b.ge    loc_1000479ec                            ; if ([[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"] floatValue] >= [[ADInGameStats singleton] challengeTimeElapsed])
  1000479e0  str     wzr, [sp, #4]
  1000479e4  mov     x20, x21
  1000479e8  b       loc_100047a94
loc_1000479ec:
  1000479ec  adrp    x8, #0x10041d000
  1000479f0  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000479f4  ldr     x1, [sp, #8]
  1000479f8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000479fc  mov     x29, x29
  100047a00  bl      _objc_retainAutoreleasedReturnValue
  100047a04  mov     x24, x0
  100047a08  mov     x0, x19
  100047a0c  mov     x1, x22
  100047a10  bl      _objc_msgSend                            ; [self challengeDict]
  100047a14  mov     x29, x29
  100047a18  bl      _objc_retainAutoreleasedReturnValue
  100047a1c  mov     x27, x0
  100047a20  adrp    x2, #0x1003b9000
  100047a24  add     x2, x2, #0xef0                           ; @"challenge_id"
  100047a28  mov     x1, x23
  100047a2c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100047a30  mov     x20, x21
  100047a34  mov     x29, x29
  100047a38  bl      _objc_retainAutoreleasedReturnValue
  100047a3c  mov     x28, x0
  100047a40  adrp    x8, #0x100417000
  100047a44  nop
  100047a48  ldr     x1, [x8, #0xa10]
  100047a4c  mov     x0, x24
  100047a50  mov     x2, x28
  100047a54  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  100047a58  eor     w2, w0, #1                               ; t2 = ([[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] ^ 1)
  100047a5c  adrp    x8, #0x100418000
  100047a60  nop
  100047a64  ldr     x1, [x8, #0xa10]
  100047a68  mov     x0, x19
  100047a6c  bl      _objc_msgSend                            ; [self unlockTimeLimitStarWithGlow:t2]
  100047a70  add     w20, w0, w20
  100047a74  mov     x0, x28
  100047a78  bl      _objc_release
  100047a7c  mov     x0, x27
  100047a80  bl      _objc_release
  100047a84  mov     x0, x24
  100047a88  bl      _objc_release
  100047a8c  mov     w8, #1
  100047a90  str     w8, [sp, #4]
loc_100047a94:
  100047a94  mov     x0, x19
  100047a98  mov     x1, x22
  100047a9c  bl      _objc_msgSend                            ; [self challengeDict]
  100047aa0  mov     x29, x29
  100047aa4  bl      _objc_retainAutoreleasedReturnValue
  100047aa8  mov     x27, x0
  100047aac  adrp    x2, #0x1003bc000
  100047ab0  add     x2, x2, #0xb30                           ; @"accuracy_star"
  100047ab4  mov     x1, x23
  100047ab8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  100047abc  mov     x29, x29
  100047ac0  bl      _objc_retainAutoreleasedReturnValue
  100047ac4  mov     x28, x0
  100047ac8  adrp    x2, #0x1003bc000
  100047acc  add     x2, x2, #0x990                           ; @"objective"
  100047ad0  mov     x1, x23
  100047ad4  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"]
  100047ad8  mov     x29, x29
  100047adc  bl      _objc_retainAutoreleasedReturnValue
  100047ae0  mov     x24, x0
  100047ae4  mov     x1, x25
  100047ae8  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"] floatValue]
  100047aec  mov     v8.16b, v0.16b
  100047af0  adrp    x8, #0x10041d000
  100047af4  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100047af8  mov     x1, x26
  100047afc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100047b00  mov     x29, x29
  100047b04  bl      _objc_retainAutoreleasedReturnValue
  100047b08  mov     x25, x0
  100047b0c  adrp    x8, #0x100417000
  100047b10  nop
  100047b14  ldr     x1, [x8, #0xdc8]
  100047b18  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  100047b1c  adrp    x8, #0x100181000
  100047b20  ldr     s1, [x8, #0xa10]                         ; s1 = 100.0
  100047b24  fmul    s9, s0, s1
  100047b28  mov     x0, x25
  100047b2c  bl      _objc_release
  100047b30  mov     x0, x24
  100047b34  bl      _objc_release
  100047b38  mov     x0, x28
  100047b3c  bl      _objc_release
  100047b40  mov     x0, x27
  100047b44  bl      _objc_release
  100047b48  fcmp    s8, s9
  100047b4c  b.ls    loc_100047b58                            ; if ([[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"] floatValue] <= ([[ADInGameStats singleton] currentAccuracy] * 100))
  100047b50  mov     w25, #0
  100047b54  b       loc_100047bf8
loc_100047b58:
  100047b58  adrp    x8, #0x10041d000
  100047b5c  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100047b60  ldr     x1, [sp, #8]
  100047b64  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100047b68  mov     x29, x29
  100047b6c  bl      _objc_retainAutoreleasedReturnValue
  100047b70  mov     x25, x0
  100047b74  mov     x0, x19
  100047b78  mov     x1, x22
  100047b7c  bl      _objc_msgSend                            ; [self challengeDict]
  100047b80  mov     x29, x29
  100047b84  bl      _objc_retainAutoreleasedReturnValue
  100047b88  mov     x26, x0
  100047b8c  adrp    x2, #0x1003b9000
  100047b90  add     x2, x2, #0xef0                           ; @"challenge_id"
  100047b94  mov     x1, x23
  100047b98  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100047b9c  mov     x29, x29
  100047ba0  bl      _objc_retainAutoreleasedReturnValue
  100047ba4  mov     x24, x0
  100047ba8  adrp    x8, #0x100417000
  100047bac  nop
  100047bb0  ldr     x1, [x8, #0xa08]
  100047bb4  mov     x0, x25
  100047bb8  mov     x2, x24
  100047bbc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  100047bc0  eor     w2, w0, #1                               ; t3 = ([[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] ^ 1)
  100047bc4  adrp    x8, #0x100418000
  100047bc8  nop
  100047bcc  ldr     x1, [x8, #0xa18]
  100047bd0  mov     x0, x19
  100047bd4  bl      _objc_msgSend                            ; [self unlockAccuracyStarWithGlow:t3]
  100047bd8  add     w20, w0, w20
  100047bdc  mov     x0, x24
  100047be0  bl      _objc_release
  100047be4  mov     x0, x26
  100047be8  bl      _objc_release
  100047bec  mov     x0, x25
  100047bf0  bl      _objc_release
  100047bf4  mov     w25, #1
loc_100047bf8:
  100047bf8  adrp    x8, #0x10041d000
  100047bfc  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100047c00  ldr     x1, [sp, #8]
  100047c04  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100047c08  mov     x29, x29
  100047c0c  bl      _objc_retainAutoreleasedReturnValue
  100047c10  mov     x21, x0
  100047c14  mov     x0, x19
  100047c18  mov     x1, x22
  100047c1c  bl      _objc_msgSend                            ; [self challengeDict]
  100047c20  mov     x29, x29
  100047c24  bl      _objc_retainAutoreleasedReturnValue
  100047c28  mov     x22, x0
  100047c2c  adrp    x2, #0x1003b9000
  100047c30  add     x2, x2, #0xef0                           ; @"challenge_id"
  100047c34  mov     x1, x23
  100047c38  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100047c3c  mov     x29, x29
  100047c40  bl      _objc_retainAutoreleasedReturnValue
  100047c44  mov     x23, x0
  100047c48  adrp    x8, #0x100418000
  100047c4c  nop
  100047c50  ldr     x1, [x8, #0xa20]
  100047c54  mov     x0, x21
  100047c58  mov     x2, x23
  100047c5c  mov     x3, x25
  100047c60  ldr     w4, [sp, #4]
  100047c64  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] playerDidCompleteChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"] accuracyUnlocked:one of {0, 1} timeLimitUnlocked:x4]
  100047c68  mov     x0, x23
  100047c6c  bl      _objc_release
  100047c70  mov     x0, x22
  100047c74  bl      _objc_release
  100047c78  mov     x0, x21
  100047c7c  bl      _objc_release
  100047c80  adrp    x8, #0x100418000
  100047c84  nop
  100047c88  ldr     x1, [x8, #0xa28]
  100047c8c  mov     x0, x19
  100047c90  bl      _objc_msgSend                            ; [self reportScoreToGameCenter]
  100047c94  mov     x0, x20
  100047c98  sub     sp, x29, #0x60
  100047c9c  ldp     x29, x30, [sp, #0x60]
  100047ca0  ldp     x20, x19, [sp, #0x50]
  100047ca4  ldp     x22, x21, [sp, #0x40]
  100047ca8  ldp     x24, x23, [sp, #0x30]
  100047cac  ldp     x26, x25, [sp, #0x20]
  100047cb0  ldp     x28, x27, [sp, #0x10]
  100047cb4  ldp     d9, d8, [sp], #0x70
  100047cb8  ret
  100047cbc  mov     x19, x0
  100047cc0  mov     x0, x26
  100047cc4  bl      _objc_release
  100047cc8  b       loc_100047ce8
  100047ccc  mov     x19, x0
  100047cd0  b       loc_100047d14
  100047cd4  mov     x19, x0
  100047cd8  b       loc_100047d48
  100047cdc  mov     x19, x0
  100047ce0  b       loc_100047d24
  100047ce4  mov     x19, x0
loc_100047ce8:
  100047ce8  mov     x0, x25
  100047cec  b       loc_100047d20
  100047cf0  mov     x19, x0
  100047cf4  b       loc_100047d24
  100047cf8  mov     x19, x0
  100047cfc  b       loc_100047d1c
  100047d00  mov     x19, x0
  100047d04  mov     x0, x20
  100047d08  bl      _objc_release
  100047d0c  b       loc_100047d14
  100047d10  mov     x19, x0
loc_100047d14:
  100047d14  mov     x0, x28
  100047d18  bl      _objc_release
loc_100047d1c:
  100047d1c  mov     x0, x27
loc_100047d20:
  100047d20  bl      _objc_release
loc_100047d24:
  100047d24  mov     x0, x24
  100047d28  b       loc_100047dc4
  100047d2c  mov     x19, x0
  100047d30  b       loc_100047d58
  100047d34  mov     x19, x0
  100047d38  b       loc_100047d50
  100047d3c  mov     x19, x0
  100047d40  mov     x0, x25
  100047d44  bl      _objc_release
loc_100047d48:
  100047d48  mov     x0, x24
  100047d4c  bl      _objc_release
loc_100047d50:
  100047d50  mov     x0, x28
  100047d54  bl      _objc_release
loc_100047d58:
  100047d58  mov     x0, x27
  100047d5c  b       loc_100047dc4
  100047d60  mov     x19, x0
  100047d64  mov     x0, x24
  100047d68  bl      _objc_release
  100047d6c  b       loc_100047db8
  100047d70  mov     x19, x0
  100047d74  b       loc_100047d94
  100047d78  mov     x19, x0
  100047d7c  b       loc_100047d8c
  100047d80  mov     x19, x0
  100047d84  mov     x0, x23
  100047d88  bl      _objc_release
loc_100047d8c:
  100047d8c  mov     x0, x22
  100047d90  bl      _objc_release
loc_100047d94:
  100047d94  mov     x0, x21
  100047d98  b       loc_100047dc4
  100047d9c  mov     x19, x0
  100047da0  b       loc_100047d24
  100047da4  mov     x19, x0
  100047da8  b       loc_100047d1c
  100047dac  mov     x19, x0
  100047db0  b       loc_100047dc0
  100047db4  mov     x19, x0
loc_100047db8:
  100047db8  mov     x0, x26
  100047dbc  bl      _objc_release
loc_100047dc0:
  100047dc0  mov     x0, x25
loc_100047dc4:
  100047dc4  bl      _objc_release
  100047dc8  mov     x0, x19
  100047dcc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController swipeLeft]
; address 0x100047dd0  size 80  kind objc
; ======================================================================
  100047dd0  stp     x20, x19, [sp, #-0x20]!
  100047dd4  stp     x29, x30, [sp, #0x10]
  100047dd8  add     x29, sp, #0x10
  100047ddc  mov     x19, x0
  100047de0  adrp    x8, #0x100418000
  100047de4  nop
  100047de8  ldr     x1, [x8, #0x870]
  100047dec  bl      _objc_msgSend                            ; [self checkAllAnimationsAreComplete]
  100047df0  cbz     w0, loc_100047e14                        ; if ([self checkAllAnimationsAreComplete] == 0)
  100047df4  mov     x2, #0
  100047df8  adrp    x8, #0x100418000
  100047dfc  nop
  100047e00  ldr     x1, [x8, #0xa30]
  100047e04  mov     x0, x19
  100047e08  ldp     x29, x30, [sp, #0x10]
  100047e0c  ldp     x20, x19, [sp], #0x20
  100047e10  b       _objc_msgSend                            ; [self scoreButtonPressed:0]
loc_100047e14:
  100047e14  ldp     x29, x30, [sp, #0x10]
  100047e18  ldp     x20, x19, [sp], #0x20
  100047e1c  ret

; ======================================================================
; -[ADChallengeCompletedViewController swipeRight]
; address 0x100047e20  size 4  kind objc
; ======================================================================
  100047e20  ret

; ======================================================================
; -[ADChallengeCompletedViewController scoreButtonPressed:]
; address 0x100047e24  size 4  kind objc
; ======================================================================
  100047e24  ret

; ======================================================================
; -[ADChallengeCompletedViewController missionButtonPressed:]
; address 0x100047e28  size 4  kind objc
; ======================================================================
  100047e28  ret

; ======================================================================
; -[ADChallengeCompletedViewController unlockTimeLimitStarWithGlow:]
; address 0x100047e2c  size 276  kind objc
; ======================================================================
  100047e2c  stp     x22, x21, [sp, #-0x30]!
  100047e30  stp     x20, x19, [sp, #0x10]
  100047e34  stp     x29, x30, [sp, #0x20]
  100047e38  add     x29, sp, #0x20
  100047e3c  mov     x19, x0
  100047e40  cbz     w2, loc_100047ecc                        ; if (arg1 == 0)
  100047e44  adrp    x8, #0x10041f000
  100047e48  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset ADChallengeCompletedViewController.starGlows (+0x148)
  100047e4c  ldr     w9, [x19, x8]                            ; w9 = self->starGlows
  100047e50  add     w9, w9, #1
  100047e54  str     w9, [x19, x8]                            ; self->starGlows = (self->starGlows + 1)
  100047e58  adrp    x8, #0x100418000
  100047e5c  nop
  100047e60  ldr     x20, [x8, #0xa38]
  100047e64  mov     x0, x19
  100047e68  mov     x1, x20
  100047e6c  bl      _objc_msgSend                            ; [self timeStar]
  100047e70  mov     x29, x29
  100047e74  bl      _objc_retainAutoreleasedReturnValue
  100047e78  mov     x21, x0
  100047e7c  adrp    x8, #0x100418000
  100047e80  nop
  100047e84  ldr     x1, [x8, #0xa40]
  100047e88  bl      _objc_msgSend                            ; [[self timeStar] glow]
  100047e8c  mov     x0, x21
  100047e90  bl      _objc_release
  100047e94  mov     x0, x19
  100047e98  mov     x1, x20
  100047e9c  bl      _objc_msgSend                            ; [self timeStar]
  100047ea0  mov     x29, x29
  100047ea4  bl      _objc_retainAutoreleasedReturnValue
  100047ea8  mov     x20, x0
  100047eac  adrp    x8, #0x100418000
  100047eb0  nop
  100047eb4  ldr     x1, [x8, #0xa48]
  100047eb8  bl      _objc_msgSend                            ; [[self timeStar] rewardValue]
  100047ebc  mov     x19, x0
  100047ec0  mov     x0, x20
  100047ec4  bl      _objc_release
  100047ec8  b       loc_100047f08
loc_100047ecc:
  100047ecc  adrp    x8, #0x100418000
  100047ed0  nop
  100047ed4  ldr     x1, [x8, #0xa38]
  100047ed8  mov     x0, x19
  100047edc  bl      _objc_msgSend                            ; [self timeStar]
  100047ee0  mov     x29, x29
  100047ee4  bl      _objc_retainAutoreleasedReturnValue
  100047ee8  mov     x20, x0
  100047eec  adrp    x8, #0x100418000
  100047ef0  nop
  100047ef4  ldr     x1, [x8, #0xa50]
  100047ef8  bl      _objc_msgSend                            ; [[self timeStar] unlockStar]
  100047efc  mov     x0, x20
  100047f00  bl      _objc_release
  100047f04  mov     w19, #0
loc_100047f08:
  100047f08  mov     x0, x19
  100047f0c  ldp     x29, x30, [sp, #0x20]
  100047f10  ldp     x20, x19, [sp, #0x10]
  100047f14  ldp     x22, x21, [sp], #0x30
  100047f18  ret
  100047f1c  mov     x19, x0
  100047f20  mov     x0, x21
  100047f24  b       loc_100047f34
  100047f28  b       loc_100047f2c
loc_100047f2c:
  100047f2c  mov     x19, x0
  100047f30  mov     x0, x20
loc_100047f34:
  100047f34  bl      _objc_release
  100047f38  mov     x0, x19
  100047f3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController unlockAccuracyStarWithGlow:]
; address 0x100047f40  size 276  kind objc
; ======================================================================
  100047f40  stp     x22, x21, [sp, #-0x30]!
  100047f44  stp     x20, x19, [sp, #0x10]
  100047f48  stp     x29, x30, [sp, #0x20]
  100047f4c  add     x29, sp, #0x20
  100047f50  mov     x19, x0
  100047f54  cbz     w2, loc_100047fe0                        ; if (arg1 == 0)
  100047f58  adrp    x8, #0x10041f000
  100047f5c  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset ADChallengeCompletedViewController.starGlows (+0x148)
  100047f60  ldr     w9, [x19, x8]                            ; w9 = self->starGlows
  100047f64  add     w9, w9, #1
  100047f68  str     w9, [x19, x8]                            ; self->starGlows = (self->starGlows + 1)
  100047f6c  adrp    x8, #0x100418000
  100047f70  nop
  100047f74  ldr     x20, [x8, #0xa58]
  100047f78  mov     x0, x19
  100047f7c  mov     x1, x20
  100047f80  bl      _objc_msgSend                            ; [self accuracyStar]
  100047f84  mov     x29, x29
  100047f88  bl      _objc_retainAutoreleasedReturnValue
  100047f8c  mov     x21, x0
  100047f90  adrp    x8, #0x100418000
  100047f94  nop
  100047f98  ldr     x1, [x8, #0xa40]
  100047f9c  bl      _objc_msgSend                            ; [[self accuracyStar] glow]
  100047fa0  mov     x0, x21
  100047fa4  bl      _objc_release
  100047fa8  mov     x0, x19
  100047fac  mov     x1, x20
  100047fb0  bl      _objc_msgSend                            ; [self accuracyStar]
  100047fb4  mov     x29, x29
  100047fb8  bl      _objc_retainAutoreleasedReturnValue
  100047fbc  mov     x20, x0
  100047fc0  adrp    x8, #0x100418000
  100047fc4  nop
  100047fc8  ldr     x1, [x8, #0xa48]
  100047fcc  bl      _objc_msgSend                            ; [[self accuracyStar] rewardValue]
  100047fd0  mov     x19, x0
  100047fd4  mov     x0, x20
  100047fd8  bl      _objc_release
  100047fdc  b       loc_10004801c
loc_100047fe0:
  100047fe0  adrp    x8, #0x100418000
  100047fe4  nop
  100047fe8  ldr     x1, [x8, #0xa58]
  100047fec  mov     x0, x19
  100047ff0  bl      _objc_msgSend                            ; [self accuracyStar]
  100047ff4  mov     x29, x29
  100047ff8  bl      _objc_retainAutoreleasedReturnValue
  100047ffc  mov     x20, x0
  100048000  adrp    x8, #0x100418000
  100048004  nop
  100048008  ldr     x1, [x8, #0xa50]
  10004800c  bl      _objc_msgSend                            ; [[self accuracyStar] unlockStar]
  100048010  mov     x0, x20
  100048014  bl      _objc_release
  100048018  mov     w19, #0
loc_10004801c:
  10004801c  mov     x0, x19
  100048020  ldp     x29, x30, [sp, #0x20]
  100048024  ldp     x20, x19, [sp, #0x10]
  100048028  ldp     x22, x21, [sp], #0x30
  10004802c  ret
  100048030  mov     x19, x0
  100048034  mov     x0, x21
  100048038  b       loc_100048048
  10004803c  b       loc_100048040
loc_100048040:
  100048040  mov     x19, x0
  100048044  mov     x0, x20
loc_100048048:
  100048048  bl      _objc_release
  10004804c  mov     x0, x19
  100048050  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController unlockMissionStarWithGlow:]
; address 0x100048054  size 276  kind objc
; ======================================================================
  100048054  stp     x22, x21, [sp, #-0x30]!
  100048058  stp     x20, x19, [sp, #0x10]
  10004805c  stp     x29, x30, [sp, #0x20]
  100048060  add     x29, sp, #0x20
  100048064  mov     x19, x0
  100048068  cbz     w2, loc_1000480f4                        ; if (arg1 == 0)
  10004806c  adrp    x8, #0x10041f000
  100048070  ldrsw   x8, [x8, #0x9c8]                         ; ivar offset ADChallengeCompletedViewController.starGlows (+0x148)
  100048074  ldr     w9, [x19, x8]                            ; w9 = self->starGlows
  100048078  add     w9, w9, #1
  10004807c  str     w9, [x19, x8]                            ; self->starGlows = (self->starGlows + 1)
  100048080  adrp    x8, #0x100418000
  100048084  nop
  100048088  ldr     x20, [x8, #0xa60]
  10004808c  mov     x0, x19
  100048090  mov     x1, x20
  100048094  bl      _objc_msgSend                            ; [self missionStar]
  100048098  mov     x29, x29
  10004809c  bl      _objc_retainAutoreleasedReturnValue
  1000480a0  mov     x21, x0
  1000480a4  adrp    x8, #0x100418000
  1000480a8  nop
  1000480ac  ldr     x1, [x8, #0xa40]
  1000480b0  bl      _objc_msgSend                            ; [[self missionStar] glow]
  1000480b4  mov     x0, x21
  1000480b8  bl      _objc_release
  1000480bc  mov     x0, x19
  1000480c0  mov     x1, x20
  1000480c4  bl      _objc_msgSend                            ; [self missionStar]
  1000480c8  mov     x29, x29
  1000480cc  bl      _objc_retainAutoreleasedReturnValue
  1000480d0  mov     x20, x0
  1000480d4  adrp    x8, #0x100418000
  1000480d8  nop
  1000480dc  ldr     x1, [x8, #0xa48]
  1000480e0  bl      _objc_msgSend                            ; [[self missionStar] rewardValue]
  1000480e4  mov     x19, x0
  1000480e8  mov     x0, x20
  1000480ec  bl      _objc_release
  1000480f0  b       loc_100048130
loc_1000480f4:
  1000480f4  adrp    x8, #0x100418000
  1000480f8  nop
  1000480fc  ldr     x1, [x8, #0xa60]
  100048100  mov     x0, x19
  100048104  bl      _objc_msgSend                            ; [self missionStar]
  100048108  mov     x29, x29
  10004810c  bl      _objc_retainAutoreleasedReturnValue
  100048110  mov     x20, x0
  100048114  adrp    x8, #0x100418000
  100048118  nop
  10004811c  ldr     x1, [x8, #0xa50]
  100048120  bl      _objc_msgSend                            ; [[self missionStar] unlockStar]
  100048124  mov     x0, x20
  100048128  bl      _objc_release
  10004812c  mov     w19, #0
loc_100048130:
  100048130  mov     x0, x19
  100048134  ldp     x29, x30, [sp, #0x20]
  100048138  ldp     x20, x19, [sp, #0x10]
  10004813c  ldp     x22, x21, [sp], #0x30
  100048140  ret
  100048144  mov     x19, x0
  100048148  mov     x0, x21
  10004814c  b       loc_10004815c
  100048150  b       loc_100048154
loc_100048154:
  100048154  mov     x19, x0
  100048158  mov     x0, x20
loc_10004815c:
  10004815c  bl      _objc_release
  100048160  mov     x0, x19
  100048164  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController viewWillAppear:]
; address 0x100048168  size 248  kind objc
; ======================================================================
  100048168  stp     x22, x21, [sp, #-0x30]!
  10004816c  stp     x20, x19, [sp, #0x10]
  100048170  stp     x29, x30, [sp, #0x20]
  100048174  add     x29, sp, #0x20
  100048178  sub     sp, sp, #0x10
  10004817c  mov     x20, x0
  100048180  str     x20, [sp]
  100048184  adrp    x8, #0x10041e000
  100048188  ldr     x8, [x8, #0xd18]
  10004818c  str     x8, [sp, #8]
  100048190  adrp    x8, #0x100417000
  100048194  nop
  100048198  ldr     x1, [x8, #0x928]
  10004819c  mov     x0, sp
  1000481a0  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  1000481a4  adrp    x8, #0x100418000
  1000481a8  nop
  1000481ac  ldr     x1, [x8, #0x838]
  1000481b0  mov     x0, x20
  1000481b4  bl      _objc_msgSend                            ; [self contentScrollView]
  1000481b8  mov     x29, x29
  1000481bc  bl      _objc_retainAutoreleasedReturnValue
  1000481c0  mov     x19, x0
  1000481c4  adrp    x8, #0x100418000
  1000481c8  nop
  1000481cc  ldr     x1, [x8, #0x760]
  1000481d0  mov     x0, x20
  1000481d4  bl      _objc_msgSend                            ; [self contentView]
  1000481d8  mov     x29, x29
  1000481dc  bl      _objc_retainAutoreleasedReturnValue
  1000481e0  mov     x20, x0
  1000481e4  adrp    x8, #0x100417000
  1000481e8  nop
  1000481ec  ldr     x1, [x8, #0x748]
  1000481f0  bl      _objc_msgSend                            ; [[self contentView] bounds]
  1000481f4  fmov    d0, #0.50000000
  1000481f8  fmul    d0, d2, d0
  1000481fc  adrp    x8, #0x100418000
  100048200  nop
  100048204  ldr     x1, [x8, #0x4f8]
  100048208  movi    v1.16b, #0
  10004820c  mov     w2, #1
  100048210  mov     x0, x19
  100048214  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{([[self contentView] bounds].2 * 0.5), 0} animated:1]
  100048218  mov     x0, x20
  10004821c  bl      _objc_release
  100048220  mov     x0, x19
  100048224  bl      _objc_release
  100048228  sub     sp, x29, #0x20
  10004822c  ldp     x29, x30, [sp, #0x20]
  100048230  ldp     x20, x19, [sp, #0x10]
  100048234  ldp     x22, x21, [sp], #0x30
  100048238  ret
  10004823c  mov     x21, x0
  100048240  mov     x0, x20
  100048244  bl      _objc_release
  100048248  b       loc_100048250
  10004824c  mov     x21, x0
loc_100048250:
  100048250  mov     x0, x19
  100048254  bl      _objc_release
  100048258  mov     x0, x21
  10004825c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController resumeFromStats]
; address 0x100048260  size 196  kind objc
; ======================================================================
  100048260  stp     x22, x21, [sp, #-0x30]!
  100048264  stp     x20, x19, [sp, #0x10]
  100048268  stp     x29, x30, [sp, #0x20]
  10004826c  add     x29, sp, #0x20
  100048270  mov     x20, x0
  100048274  adrp    x8, #0x100418000
  100048278  nop
  10004827c  ldr     x1, [x8, #0x838]
  100048280  bl      _objc_msgSend                            ; [self contentScrollView]
  100048284  mov     x29, x29
  100048288  bl      _objc_retainAutoreleasedReturnValue
  10004828c  mov     x19, x0
  100048290  adrp    x8, #0x100418000
  100048294  nop
  100048298  ldr     x1, [x8, #0x760]
  10004829c  mov     x0, x20
  1000482a0  bl      _objc_msgSend                            ; [self contentView]
  1000482a4  mov     x29, x29
  1000482a8  bl      _objc_retainAutoreleasedReturnValue
  1000482ac  mov     x20, x0
  1000482b0  adrp    x8, #0x100417000
  1000482b4  nop
  1000482b8  ldr     x1, [x8, #0x748]
  1000482bc  bl      _objc_msgSend                            ; [[self contentView] bounds]
  1000482c0  fmov    d0, #0.50000000
  1000482c4  fmul    d0, d2, d0
  1000482c8  adrp    x8, #0x100418000
  1000482cc  nop
  1000482d0  ldr     x1, [x8, #0x4f8]
  1000482d4  movi    v1.16b, #0
  1000482d8  mov     w2, #1
  1000482dc  mov     x0, x19
  1000482e0  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{([[self contentView] bounds].2 * 0.5), 0} animated:1]
  1000482e4  mov     x0, x20
  1000482e8  bl      _objc_release
  1000482ec  mov     x0, x19
  1000482f0  ldp     x29, x30, [sp, #0x20]
  1000482f4  ldp     x20, x19, [sp, #0x10]
  1000482f8  ldp     x22, x21, [sp], #0x30
  1000482fc  b       _objc_release
  100048300  mov     x21, x0
  100048304  mov     x0, x20
  100048308  bl      _objc_release
  10004830c  b       loc_100048314
  100048310  mov     x21, x0
loc_100048314:
  100048314  mov     x0, x19
  100048318  bl      _objc_release
  10004831c  mov     x0, x21
  100048320  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController checkAllAnimationsAreComplete]
; address 0x100048324  size 936  kind objc
; ======================================================================
  100048324  stp     x26, x25, [sp, #-0x50]!
  100048328  stp     x24, x23, [sp, #0x10]
  10004832c  stp     x22, x21, [sp, #0x20]
  100048330  stp     x20, x19, [sp, #0x30]
  100048334  stp     x29, x30, [sp, #0x40]
  100048338  add     x29, sp, #0x40
  10004833c  mov     x19, x0
  100048340  adrp    x8, #0x100418000
  100048344  nop
  100048348  ldr     x24, [x8, #0xa38]
  10004834c  mov     x1, x24
  100048350  bl      _objc_msgSend                            ; [self timeStar]
  100048354  mov     x29, x29
  100048358  bl      _objc_retainAutoreleasedReturnValue
  10004835c  mov     x22, x0
  100048360  adrp    x8, #0x100418000
  100048364  nop
  100048368  ldr     x21, [x8, #0x678]
  10004836c  mov     x1, x21
  100048370  bl      _objc_msgSend                            ; [[self timeStar] rewardLabel]
  100048374  mov     x29, x29
  100048378  bl      _objc_retainAutoreleasedReturnValue
  10004837c  mov     x23, x0
  100048380  adrp    x8, #0x100418000
  100048384  nop
  100048388  ldr     x20, [x8, #0x800]
  10004838c  mov     x1, x20
  100048390  bl      _objc_msgSend                            ; [[[self timeStar] rewardLabel] value]
  100048394  cmp     w0, #1
  100048398  b.lt    loc_100048404                            ; if ([[[self timeStar] rewardLabel] value] < 1)
  10004839c  mov     x0, x19
  1000483a0  mov     x1, x24
  1000483a4  bl      _objc_msgSend                            ; [self timeStar]
  1000483a8  mov     x29, x29
  1000483ac  bl      _objc_retainAutoreleasedReturnValue
  1000483b0  mov     x24, x0
  1000483b4  mov     x1, x21
  1000483b8  bl      _objc_msgSend                            ; [[self timeStar] rewardLabel]
  1000483bc  mov     x29, x29
  1000483c0  bl      _objc_retainAutoreleasedReturnValue
  1000483c4  mov     x25, x0
  1000483c8  adrp    x8, #0x100418000
  1000483cc  nop
  1000483d0  ldr     x1, [x8, #0x808]
  1000483d4  bl      _objc_msgSend                            ; [[[self timeStar] rewardLabel] didAnimate]
  1000483d8  mov     x26, x0
  1000483dc  mov     x0, x25
  1000483e0  bl      _objc_release
  1000483e4  mov     x0, x24
  1000483e8  bl      _objc_release
  1000483ec  mov     x0, x23
  1000483f0  bl      _objc_release
  1000483f4  mov     x0, x22
  1000483f8  bl      _objc_release
  1000483fc  tbnz    w26, #0, loc_100048414                   ; if (([[[self timeStar] rewardLabel] didAnimate] & 1))
  100048400  b       loc_100048580
loc_100048404:
  100048404  mov     x0, x23
  100048408  bl      _objc_release
  10004840c  mov     x0, x22
  100048410  bl      _objc_release
loc_100048414:
  100048414  adrp    x8, #0x100418000
  100048418  nop
  10004841c  ldr     x24, [x8, #0xa58]
  100048420  mov     x0, x19
  100048424  mov     x1, x24
  100048428  bl      _objc_msgSend                            ; [self accuracyStar]
  10004842c  mov     x29, x29
  100048430  bl      _objc_retainAutoreleasedReturnValue
  100048434  mov     x22, x0
  100048438  mov     x1, x21
  10004843c  bl      _objc_msgSend                            ; [[self accuracyStar] rewardLabel]
  100048440  mov     x29, x29
  100048444  bl      _objc_retainAutoreleasedReturnValue
  100048448  mov     x23, x0
  10004844c  mov     x1, x20
  100048450  bl      _objc_msgSend                            ; [[[self accuracyStar] rewardLabel] value]
  100048454  cmp     w0, #1
  100048458  b.lt    loc_1000484c4                            ; if ([[[self accuracyStar] rewardLabel] value] < 1)
  10004845c  mov     x0, x19
  100048460  mov     x1, x24
  100048464  bl      _objc_msgSend                            ; [self accuracyStar]
  100048468  mov     x29, x29
  10004846c  bl      _objc_retainAutoreleasedReturnValue
  100048470  mov     x24, x0
  100048474  mov     x1, x21
  100048478  bl      _objc_msgSend                            ; [[self accuracyStar] rewardLabel]
  10004847c  mov     x29, x29
  100048480  bl      _objc_retainAutoreleasedReturnValue
  100048484  mov     x25, x0
  100048488  adrp    x8, #0x100418000
  10004848c  nop
  100048490  ldr     x1, [x8, #0x808]
  100048494  bl      _objc_msgSend                            ; [[[self accuracyStar] rewardLabel] didAnimate]
  100048498  mov     x26, x0
  10004849c  mov     x0, x25
  1000484a0  bl      _objc_release
  1000484a4  mov     x0, x24
  1000484a8  bl      _objc_release
  1000484ac  mov     x0, x23
  1000484b0  bl      _objc_release
  1000484b4  mov     x0, x22
  1000484b8  bl      _objc_release
  1000484bc  tbz     w26, #0, loc_100048580                   ; if (!([[[self accuracyStar] rewardLabel] didAnimate] & 1))
  1000484c0  b       loc_1000484d4
loc_1000484c4:
  1000484c4  mov     x0, x23
  1000484c8  bl      _objc_release
  1000484cc  mov     x0, x22
  1000484d0  bl      _objc_release
loc_1000484d4:
  1000484d4  adrp    x8, #0x100418000
  1000484d8  nop
  1000484dc  ldr     x24, [x8, #0xa60]
  1000484e0  mov     x0, x19
  1000484e4  mov     x1, x24
  1000484e8  bl      _objc_msgSend                            ; [self missionStar]
  1000484ec  mov     x29, x29
  1000484f0  bl      _objc_retainAutoreleasedReturnValue
  1000484f4  mov     x22, x0
  1000484f8  mov     x1, x21
  1000484fc  bl      _objc_msgSend                            ; [[self missionStar] rewardLabel]
  100048500  mov     x29, x29
  100048504  bl      _objc_retainAutoreleasedReturnValue
  100048508  mov     x23, x0
  10004850c  mov     x1, x20
  100048510  bl      _objc_msgSend                            ; [[[self missionStar] rewardLabel] value]
  100048514  cmp     w0, #1
  100048518  b.lt    loc_100048588                            ; if ([[[self missionStar] rewardLabel] value] < 1)
  10004851c  mov     x0, x19
  100048520  mov     x1, x24
  100048524  bl      _objc_msgSend                            ; [self missionStar]
  100048528  mov     x29, x29
  10004852c  bl      _objc_retainAutoreleasedReturnValue
  100048530  mov     x24, x0
  100048534  mov     x1, x21
  100048538  bl      _objc_msgSend                            ; [[self missionStar] rewardLabel]
  10004853c  mov     x29, x29
  100048540  bl      _objc_retainAutoreleasedReturnValue
  100048544  mov     x21, x0
  100048548  adrp    x8, #0x100418000
  10004854c  nop
  100048550  ldr     x1, [x8, #0x808]
  100048554  bl      _objc_msgSend                            ; [[[self missionStar] rewardLabel] didAnimate]
  100048558  mov     x25, x0
  10004855c  mov     x0, x21
  100048560  bl      _objc_release
  100048564  mov     x0, x24
  100048568  bl      _objc_release
  10004856c  mov     x0, x23
  100048570  bl      _objc_release
  100048574  mov     x0, x22
  100048578  bl      _objc_release
  10004857c  tbnz    w25, #0, loc_100048598                   ; if (([[[self missionStar] rewardLabel] didAnimate] & 1))
loc_100048580:
  100048580  mov     w19, #0
  100048584  b       loc_100048610
loc_100048588:
  100048588  mov     x0, x23
  10004858c  bl      _objc_release
  100048590  mov     x0, x22
  100048594  bl      _objc_release
loc_100048598:
  100048598  adrp    x8, #0x100418000
  10004859c  nop
  1000485a0  ldr     x22, [x8, #0x7e0]
  1000485a4  mov     x0, x19
  1000485a8  mov     x1, x22
  1000485ac  bl      _objc_msgSend                            ; [self coinsTotal]
  1000485b0  mov     x29, x29
  1000485b4  bl      _objc_retainAutoreleasedReturnValue
  1000485b8  mov     x21, x0
  1000485bc  mov     x1, x20
  1000485c0  bl      _objc_msgSend                            ; [[self coinsTotal] value]
  1000485c4  cmp     w0, #1
  1000485c8  b.lt    loc_100048604                            ; if ([[self coinsTotal] value] < 1)
  1000485cc  mov     x0, x19
  1000485d0  mov     x1, x22
  1000485d4  bl      _objc_msgSend                            ; [self coinsTotal]
  1000485d8  mov     x29, x29
  1000485dc  bl      _objc_retainAutoreleasedReturnValue
  1000485e0  mov     x20, x0
  1000485e4  adrp    x8, #0x100418000
  1000485e8  nop
  1000485ec  ldr     x1, [x8, #0x808]
  1000485f0  bl      _objc_msgSend                            ; [[self coinsTotal] didAnimate]
  1000485f4  mov     x19, x0
  1000485f8  mov     x0, x20
  1000485fc  bl      _objc_release
  100048600  b       loc_100048608
loc_100048604:
  100048604  mov     w19, #1
loc_100048608:
  100048608  mov     x0, x21
  10004860c  bl      _objc_release
loc_100048610:
  100048610  mov     x0, x19
  100048614  ldp     x29, x30, [sp, #0x40]
  100048618  ldp     x20, x19, [sp, #0x30]
  10004861c  ldp     x22, x21, [sp, #0x20]
  100048620  ldp     x24, x23, [sp, #0x10]
  100048624  ldp     x26, x25, [sp], #0x50
  100048628  ret
  10004862c  mov     x19, x0
  100048630  b       loc_1000486a0
  100048634  mov     x19, x0
  100048638  b       loc_1000486a0
  10004863c  mov     x19, x0
  100048640  b       loc_1000486a8
  100048644  mov     x19, x0
  100048648  b       loc_1000486a0
  10004864c  mov     x19, x0
  100048650  b       loc_1000486a8
  100048654  mov     x19, x0
  100048658  b       loc_100048698
  10004865c  b       loc_100048678
  100048660  mov     x19, x0
  100048664  b       loc_1000486c4
  100048668  mov     x19, x0
  10004866c  b       loc_1000486a8
  100048670  mov     x19, x0
  100048674  b       loc_100048698
loc_100048678:
  100048678  mov     x19, x0
  10004867c  mov     x0, x25
  100048680  b       loc_100048694
  100048684  mov     x19, x0
  100048688  b       loc_100048698
  10004868c  mov     x19, x0
  100048690  mov     x0, x21
loc_100048694:
  100048694  bl      _objc_release
loc_100048698:
  100048698  mov     x0, x24
  10004869c  bl      _objc_release
loc_1000486a0:
  1000486a0  mov     x0, x23
  1000486a4  bl      _objc_release
loc_1000486a8:
  1000486a8  mov     x0, x22
loc_1000486ac:
  1000486ac  bl      _objc_release
  1000486b0  mov     x0, x19
  1000486b4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000486b8  mov     x19, x0
  1000486bc  mov     x0, x20
  1000486c0  bl      _objc_release
loc_1000486c4:
  1000486c4  mov     x0, x21
  1000486c8  b       loc_1000486ac

; ======================================================================
; -[ADChallengeCompletedViewController stopAnimations]
; address 0x1000486cc  size 92  kind objc
; ======================================================================
  1000486cc  stp     x20, x19, [sp, #-0x20]!
  1000486d0  stp     x29, x30, [sp, #0x10]
  1000486d4  add     x29, sp, #0x10
  1000486d8  adrp    x8, #0x100417000
  1000486dc  nop
  1000486e0  ldr     x1, [x8, #0x2a8]
  1000486e4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000486e8  mov     x29, x29
  1000486ec  bl      _objc_retainAutoreleasedReturnValue
  1000486f0  mov     x19, x0
  1000486f4  adrp    x8, #0x100418000
  1000486f8  nop
  1000486fc  ldr     x1, [x8, #0xa68]
  100048700  bl      _objc_msgSend                            ; [[self statusBarViewController] stopAllAnimations]
  100048704  mov     x0, x19
  100048708  ldp     x29, x30, [sp, #0x10]
  10004870c  ldp     x20, x19, [sp], #0x20
  100048710  b       _objc_release
  100048714  mov     x20, x0
  100048718  mov     x0, x19
  10004871c  bl      _objc_release
  100048720  mov     x0, x20
  100048724  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController backButtonPressed]
; address 0x100048728  size 316  kind objc
; ======================================================================
  100048728  stp     x22, x21, [sp, #-0x30]!
  10004872c  stp     x20, x19, [sp, #0x10]
  100048730  stp     x29, x30, [sp, #0x20]
  100048734  add     x29, sp, #0x20
  100048738  mov     x19, x0
  10004873c  adrp    x8, #0x100418000
  100048740  nop
  100048744  ldr     x20, [x8, #0xa70]
  100048748  mov     x1, x20
  10004874c  bl      _objc_msgSend                            ; [self stopAnimations]
  100048750  adrp    x8, #0x100416000
  100048754  nop
  100048758  ldr     x1, [x8, #0xf18]
  10004875c  mov     x0, x19
  100048760  bl      _objc_msgSend                            ; [self view]
  100048764  mov     x29, x29
  100048768  bl      _objc_retainAutoreleasedReturnValue
  10004876c  mov     x21, x0
  100048770  adrp    x8, #0x100417000
  100048774  nop
  100048778  ldr     x1, [x8, #0x8f8]
  10004877c  bl      _objc_msgSend                            ; [[self view] layer]
  100048780  mov     x29, x29
  100048784  bl      _objc_retainAutoreleasedReturnValue
  100048788  mov     x22, x0
  10004878c  adrp    x8, #0x100417000
  100048790  nop
  100048794  ldr     x1, [x8, #0x900]
  100048798  bl      _objc_msgSend                            ; [[[self view] layer] removeAllAnimations]
  10004879c  mov     x0, x22
  1000487a0  bl      _objc_release
  1000487a4  mov     x0, x21
  1000487a8  bl      _objc_release
  1000487ac  mov     x0, x19
  1000487b0  mov     x1, x20
  1000487b4  bl      _objc_msgSend                            ; [self stopAnimations]
  1000487b8  adrp    x8, #0x10041d000
  1000487bc  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000487c0  adrp    x8, #0x100416000
  1000487c4  nop
  1000487c8  ldr     x1, [x8, #0xb28]
  1000487cc  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000487d0  mov     x29, x29
  1000487d4  bl      _objc_retainAutoreleasedReturnValue
  1000487d8  mov     x19, x0
  1000487dc  adrp    x8, #0x100416000
  1000487e0  nop
  1000487e4  ldr     x1, [x8, #0xc18]
  1000487e8  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000487ec  mov     x29, x29
  1000487f0  bl      _objc_retainAutoreleasedReturnValue
  1000487f4  mov     x21, x0
  1000487f8  adrp    x8, #0x100416000
  1000487fc  nop
  100048800  ldr     x1, [x8, #0xc10]
  100048804  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  100048808  mov     x0, x21
  10004880c  bl      _objc_release
  100048810  mov     x0, x19
  100048814  ldp     x29, x30, [sp, #0x20]
  100048818  ldp     x20, x19, [sp, #0x10]
  10004881c  ldp     x22, x21, [sp], #0x30
  100048820  b       _objc_release
  100048824  mov     x20, x0
  100048828  b       loc_100048838
  10004882c  mov     x20, x0
  100048830  mov     x0, x22
  100048834  bl      _objc_release
loc_100048838:
  100048838  mov     x0, x21
  10004883c  b       loc_100048858
  100048840  mov     x20, x0
  100048844  b       loc_100048854
  100048848  mov     x20, x0
  10004884c  mov     x0, x21
  100048850  bl      _objc_release
loc_100048854:
  100048854  mov     x0, x19
loc_100048858:
  100048858  bl      _objc_release
  10004885c  mov     x0, x20
  100048860  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController missionSelectButtonPressed:]
; address 0x100048864  size 344  kind objc
; ======================================================================
  100048864  stp     x22, x21, [sp, #-0x30]!
  100048868  stp     x20, x19, [sp, #0x10]
  10004886c  stp     x29, x30, [sp, #0x20]
  100048870  add     x29, sp, #0x20
  100048874  mov     x19, x0
  100048878  adrp    x8, #0x100418000
  10004887c  nop
  100048880  ldr     x1, [x8, #0xa78]
  100048884  bl      _objc_msgSend                            ; [self playButtonSound]
  100048888  adrp    x8, #0x100418000
  10004888c  nop
  100048890  ldr     x20, [x8, #0xa70]
  100048894  mov     x0, x19
  100048898  mov     x1, x20
  10004889c  bl      _objc_msgSend                            ; [self stopAnimations]
  1000488a0  adrp    x8, #0x100416000
  1000488a4  nop
  1000488a8  ldr     x1, [x8, #0xf18]
  1000488ac  mov     x0, x19
  1000488b0  bl      _objc_msgSend                            ; [self view]
  1000488b4  mov     x29, x29
  1000488b8  bl      _objc_retainAutoreleasedReturnValue
  1000488bc  mov     x21, x0
  1000488c0  adrp    x8, #0x100417000
  1000488c4  nop
  1000488c8  ldr     x1, [x8, #0x8f8]
  1000488cc  bl      _objc_msgSend                            ; [[self view] layer]
  1000488d0  mov     x29, x29
  1000488d4  bl      _objc_retainAutoreleasedReturnValue
  1000488d8  mov     x22, x0
  1000488dc  adrp    x8, #0x100417000
  1000488e0  nop
  1000488e4  ldr     x1, [x8, #0x900]
  1000488e8  bl      _objc_msgSend                            ; [[[self view] layer] removeAllAnimations]
  1000488ec  mov     x0, x22
  1000488f0  bl      _objc_release
  1000488f4  mov     x0, x21
  1000488f8  bl      _objc_release
  1000488fc  mov     x0, x19
  100048900  mov     x1, x20
  100048904  bl      _objc_msgSend                            ; [self stopAnimations]
  100048908  adrp    x8, #0x10041d000
  10004890c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100048910  adrp    x8, #0x100416000
  100048914  nop
  100048918  ldr     x1, [x8, #0xb28]
  10004891c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100048920  mov     x29, x29
  100048924  bl      _objc_retainAutoreleasedReturnValue
  100048928  mov     x19, x0
  10004892c  adrp    x8, #0x100416000
  100048930  nop
  100048934  ldr     x1, [x8, #0xc18]
  100048938  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10004893c  mov     x29, x29
  100048940  bl      _objc_retainAutoreleasedReturnValue
  100048944  mov     x21, x0
  100048948  adrp    x8, #0x100417000
  10004894c  nop
  100048950  ldr     x1, [x8, #0x148]
  100048954  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeSelector]
  100048958  mov     x0, x21
  10004895c  bl      _objc_release
  100048960  mov     x0, x19
  100048964  ldp     x29, x30, [sp, #0x20]
  100048968  ldp     x20, x19, [sp, #0x10]
  10004896c  ldp     x22, x21, [sp], #0x30
  100048970  b       _objc_release
  100048974  mov     x20, x0
  100048978  b       loc_1000489b4
  10004897c  mov     x20, x0
  100048980  b       loc_100048990
  100048984  mov     x20, x0
  100048988  mov     x0, x22
  10004898c  bl      _objc_release
loc_100048990:
  100048990  mov     x0, x21
  100048994  b       loc_1000489b0
  100048998  mov     x20, x0
  10004899c  b       loc_1000489ac
  1000489a0  mov     x20, x0
  1000489a4  mov     x0, x21
  1000489a8  bl      _objc_release
loc_1000489ac:
  1000489ac  mov     x0, x19
loc_1000489b0:
  1000489b0  bl      _objc_release
loc_1000489b4:
  1000489b4  mov     x0, x20
  1000489b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController nextMissionButtonPressed:]
; address 0x1000489bc  size 484  kind objc
; ======================================================================
  1000489bc  stp     x22, x21, [sp, #-0x30]!
  1000489c0  stp     x20, x19, [sp, #0x10]
  1000489c4  stp     x29, x30, [sp, #0x20]
  1000489c8  add     x29, sp, #0x20
  1000489cc  sub     sp, sp, #0x10
  1000489d0  mov     x19, x0
  1000489d4  adrp    x8, #0x100418000
  1000489d8  nop
  1000489dc  ldr     x1, [x8, #0xa78]
  1000489e0  bl      _objc_msgSend                            ; [self playButtonSound]
  1000489e4  adrp    x8, #0x100418000
  1000489e8  nop
  1000489ec  ldr     x20, [x8, #0xa70]
  1000489f0  mov     x0, x19
  1000489f4  mov     x1, x20
  1000489f8  bl      _objc_msgSend                            ; [self stopAnimations]
  1000489fc  adrp    x8, #0x100416000
  100048a00  nop
  100048a04  ldr     x1, [x8, #0xf18]
  100048a08  mov     x0, x19
  100048a0c  bl      _objc_msgSend                            ; [self view]
  100048a10  mov     x29, x29
  100048a14  bl      _objc_retainAutoreleasedReturnValue
  100048a18  mov     x21, x0
  100048a1c  adrp    x8, #0x100417000
  100048a20  nop
  100048a24  ldr     x1, [x8, #0x8f8]
  100048a28  bl      _objc_msgSend                            ; [[self view] layer]
  100048a2c  mov     x29, x29
  100048a30  bl      _objc_retainAutoreleasedReturnValue
  100048a34  mov     x22, x0
  100048a38  adrp    x8, #0x100417000
  100048a3c  nop
  100048a40  ldr     x1, [x8, #0x900]
  100048a44  bl      _objc_msgSend                            ; [[[self view] layer] removeAllAnimations]
  100048a48  mov     x0, x22
  100048a4c  bl      _objc_release
  100048a50  mov     x0, x21
  100048a54  bl      _objc_release
  100048a58  mov     x0, x19
  100048a5c  mov     x1, x20
  100048a60  bl      _objc_msgSend                            ; [self stopAnimations]
  100048a64  adrp    x8, #0x10041d000
  100048a68  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100048a6c  adrp    x8, #0x100416000
  100048a70  nop
  100048a74  ldr     x1, [x8, #0xb28]
  100048a78  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100048a7c  mov     x29, x29
  100048a80  bl      _objc_retainAutoreleasedReturnValue
  100048a84  mov     x20, x0
  100048a88  adrp    x8, #0x100416000
  100048a8c  nop
  100048a90  ldr     x1, [x8, #0xc18]
  100048a94  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100048a98  mov     x29, x29
  100048a9c  bl      _objc_retainAutoreleasedReturnValue
  100048aa0  mov     x21, x0
  100048aa4  adrp    x8, #0x100417000
  100048aa8  nop
  100048aac  ldr     x1, [x8, #0x150]
  100048ab0  mov     x0, x19
  100048ab4  bl      _objc_msgSend                            ; [self challengeDict]
  100048ab8  mov     x29, x29
  100048abc  bl      _objc_retainAutoreleasedReturnValue
  100048ac0  mov     x19, x0
  100048ac4  adrp    x8, #0x100417000
  100048ac8  nop
  100048acc  ldr     x1, [x8, #0x40]
  100048ad0  adrp    x2, #0x1003b9000
  100048ad4  add     x2, x2, #0xef0                           ; @"challenge_id"
  100048ad8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100048adc  mov     x29, x29
  100048ae0  bl      _objc_retainAutoreleasedReturnValue
  100048ae4  mov     x22, x0
  100048ae8  adrp    x8, #0x100418000
  100048aec  nop
  100048af0  ldr     x1, [x8, #0xa80]
  100048af4  mov     x0, x21
  100048af8  mov     x2, x22
  100048afc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeAfter:[[self challengeDict] objectForKey:@"challenge_id"]]
  100048b00  mov     x0, x22
  100048b04  bl      _objc_release
  100048b08  mov     x0, x19
  100048b0c  bl      _objc_release
  100048b10  mov     x0, x21
  100048b14  bl      _objc_release
  100048b18  mov     x0, x20
  100048b1c  sub     sp, x29, #0x20
  100048b20  ldp     x29, x30, [sp, #0x20]
  100048b24  ldp     x20, x19, [sp, #0x10]
  100048b28  ldp     x22, x21, [sp], #0x30
  100048b2c  b       _objc_release
  100048b30  mov     x19, x0
  100048b34  b       loc_100048b98
  100048b38  mov     x19, x0
  100048b3c  b       loc_100048b4c
  100048b40  mov     x19, x0
  100048b44  mov     x0, x22
  100048b48  bl      _objc_release
loc_100048b4c:
  100048b4c  mov     x0, x21
  100048b50  b       loc_100048b94
  100048b54  mov     x19, x0
  100048b58  b       loc_100048b90
  100048b5c  mov     x19, x0
  100048b60  b       loc_100048b88
  100048b64  str     x19, [sp, #8]
  100048b68  mov     x19, x0
  100048b6c  b       loc_100048b80
  100048b70  str     x19, [sp, #8]
  100048b74  mov     x19, x0
  100048b78  mov     x0, x22
  100048b7c  bl      _objc_release
loc_100048b80:
  100048b80  ldr     x0, [sp, #8]
  100048b84  bl      _objc_release
loc_100048b88:
  100048b88  mov     x0, x21
  100048b8c  bl      _objc_release
loc_100048b90:
  100048b90  mov     x0, x20
loc_100048b94:
  100048b94  bl      _objc_release
loc_100048b98:
  100048b98  mov     x0, x19
  100048b9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController retryButtonPressed:]
; address 0x100048ba0  size 412  kind objc
; ======================================================================
  100048ba0  stp     x22, x21, [sp, #-0x30]!
  100048ba4  stp     x20, x19, [sp, #0x10]
  100048ba8  stp     x29, x30, [sp, #0x20]
  100048bac  add     x29, sp, #0x20
  100048bb0  mov     x19, x0
  100048bb4  adrp    x8, #0x100418000
  100048bb8  nop
  100048bbc  ldr     x1, [x8, #0xa78]
  100048bc0  bl      _objc_msgSend                            ; [self playButtonSound]
  100048bc4  adrp    x8, #0x100418000
  100048bc8  nop
  100048bcc  ldr     x20, [x8, #0xa70]
  100048bd0  mov     x0, x19
  100048bd4  mov     x1, x20
  100048bd8  bl      _objc_msgSend                            ; [self stopAnimations]
  100048bdc  adrp    x8, #0x100416000
  100048be0  nop
  100048be4  ldr     x1, [x8, #0xf18]
  100048be8  mov     x0, x19
  100048bec  bl      _objc_msgSend                            ; [self view]
  100048bf0  mov     x29, x29
  100048bf4  bl      _objc_retainAutoreleasedReturnValue
  100048bf8  mov     x21, x0
  100048bfc  adrp    x8, #0x100417000
  100048c00  nop
  100048c04  ldr     x1, [x8, #0x8f8]
  100048c08  bl      _objc_msgSend                            ; [[self view] layer]
  100048c0c  mov     x29, x29
  100048c10  bl      _objc_retainAutoreleasedReturnValue
  100048c14  mov     x22, x0
  100048c18  adrp    x8, #0x100417000
  100048c1c  nop
  100048c20  ldr     x1, [x8, #0x900]
  100048c24  bl      _objc_msgSend                            ; [[[self view] layer] removeAllAnimations]
  100048c28  mov     x0, x22
  100048c2c  bl      _objc_release
  100048c30  mov     x0, x21
  100048c34  bl      _objc_release
  100048c38  mov     x0, x19
  100048c3c  mov     x1, x20
  100048c40  bl      _objc_msgSend                            ; [self stopAnimations]
  100048c44  adrp    x8, #0x10041d000
  100048c48  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100048c4c  adrp    x8, #0x100416000
  100048c50  nop
  100048c54  ldr     x1, [x8, #0xb28]
  100048c58  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100048c5c  mov     x29, x29
  100048c60  bl      _objc_retainAutoreleasedReturnValue
  100048c64  mov     x20, x0
  100048c68  adrp    x8, #0x100416000
  100048c6c  nop
  100048c70  ldr     x1, [x8, #0xc18]
  100048c74  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100048c78  mov     x29, x29
  100048c7c  bl      _objc_retainAutoreleasedReturnValue
  100048c80  mov     x21, x0
  100048c84  adrp    x8, #0x100417000
  100048c88  nop
  100048c8c  ldr     x1, [x8, #0x150]
  100048c90  mov     x0, x19
  100048c94  bl      _objc_msgSend                            ; [self challengeDict]
  100048c98  mov     x29, x29
  100048c9c  bl      _objc_retainAutoreleasedReturnValue
  100048ca0  mov     x19, x0
  100048ca4  adrp    x8, #0x100418000
  100048ca8  nop
  100048cac  ldr     x1, [x8, #0xa88]
  100048cb0  mov     x0, x21
  100048cb4  mov     x2, x19
  100048cb8  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeWithDict:[self challengeDict]]
  100048cbc  mov     x0, x19
  100048cc0  bl      _objc_release
  100048cc4  mov     x0, x21
  100048cc8  bl      _objc_release
  100048ccc  mov     x0, x20
  100048cd0  ldp     x29, x30, [sp, #0x20]
  100048cd4  ldp     x20, x19, [sp, #0x10]
  100048cd8  ldp     x22, x21, [sp], #0x30
  100048cdc  b       _objc_release
  100048ce0  mov     x19, x0
  100048ce4  b       loc_100048d34
  100048ce8  mov     x19, x0
  100048cec  b       loc_100048cfc
  100048cf0  mov     x19, x0
  100048cf4  mov     x0, x22
  100048cf8  bl      _objc_release
loc_100048cfc:
  100048cfc  mov     x0, x21
  100048d00  b       loc_100048d30
  100048d04  mov     x19, x0
  100048d08  b       loc_100048d2c
  100048d0c  mov     x19, x0
  100048d10  b       loc_100048d24
  100048d14  mov     x1, x19
  100048d18  mov     x19, x0
  100048d1c  mov     x0, x1
  100048d20  bl      _objc_release
loc_100048d24:
  100048d24  mov     x0, x21
  100048d28  bl      _objc_release
loc_100048d2c:
  100048d2c  mov     x0, x20
loc_100048d30:
  100048d30  bl      _objc_release
loc_100048d34:
  100048d34  mov     x0, x19
  100048d38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController showGameStatistics:]
; address 0x100048d3c  size 308  kind objc
; ======================================================================
  100048d3c  stp     x22, x21, [sp, #-0x30]!
  100048d40  stp     x20, x19, [sp, #0x10]
  100048d44  stp     x29, x30, [sp, #0x20]
  100048d48  add     x29, sp, #0x20
  100048d4c  mov     x19, x0
  100048d50  adrp    x8, #0x100418000
  100048d54  nop
  100048d58  ldr     x20, [x8, #0xa70]
  100048d5c  mov     x1, x20
  100048d60  bl      _objc_msgSend                            ; [self stopAnimations]
  100048d64  adrp    x8, #0x100416000
  100048d68  nop
  100048d6c  ldr     x1, [x8, #0xf18]
  100048d70  mov     x0, x19
  100048d74  bl      _objc_msgSend                            ; [self view]
  100048d78  mov     x29, x29
  100048d7c  bl      _objc_retainAutoreleasedReturnValue
  100048d80  mov     x21, x0
  100048d84  adrp    x8, #0x100417000
  100048d88  nop
  100048d8c  ldr     x1, [x8, #0x8f8]
  100048d90  bl      _objc_msgSend                            ; [[self view] layer]
  100048d94  mov     x29, x29
  100048d98  bl      _objc_retainAutoreleasedReturnValue
  100048d9c  mov     x22, x0
  100048da0  adrp    x8, #0x100417000
  100048da4  nop
  100048da8  ldr     x1, [x8, #0x900]
  100048dac  bl      _objc_msgSend                            ; [[[self view] layer] removeAllAnimations]
  100048db0  mov     x0, x22
  100048db4  bl      _objc_release
  100048db8  mov     x0, x21
  100048dbc  bl      _objc_release
  100048dc0  mov     x0, x19
  100048dc4  mov     x1, x20
  100048dc8  bl      _objc_msgSend                            ; [self stopAnimations]
  100048dcc  adrp    x8, #0x10041e000
  100048dd0  ldr     x0, [x8, #0x1a0]                         ; class ADGameOverEndlessStatsViewController
  100048dd4  adrp    x8, #0x100416000
  100048dd8  nop
  100048ddc  ldr     x1, [x8, #0xac8]
  100048de0  bl      _objc_msgSend                            ; [ADGameOverEndlessStatsViewController alloc]
  100048de4  adrp    x8, #0x100416000
  100048de8  nop
  100048dec  ldr     x1, [x8, #0xb40]
  100048df0  mov     x3, #0
  100048df4  adrp    x2, #0x1003bd000
  100048df8  add     x2, x2, #0xd0                            ; @"ADGameOverEndlessStatsViewController"
  100048dfc  bl      _objc_msgSend                            ; [[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0]
  100048e00  mov     x20, x0
  100048e04  adrp    x8, #0x100417000
  100048e08  nop
  100048e0c  ldr     x1, [x8, #0x208]
  100048e10  mov     w3, #1
  100048e14  mov     x0, x19
  100048e18  mov     x2, x20
  100048e1c  mov     x4, #0
  100048e20  bl      _objc_msgSend                            ; [self presentViewController:[[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0] animated:1 completion:0]
  100048e24  mov     x0, x20
  100048e28  ldp     x29, x30, [sp, #0x20]
  100048e2c  ldp     x20, x19, [sp, #0x10]
  100048e30  ldp     x22, x21, [sp], #0x30
  100048e34  b       _objc_release
  100048e38  mov     x19, x0
  100048e3c  b       loc_100048e68
  100048e40  mov     x19, x0
  100048e44  b       loc_100048e54
  100048e48  mov     x19, x0
  100048e4c  mov     x0, x22
  100048e50  bl      _objc_release
loc_100048e54:
  100048e54  mov     x0, x21
  100048e58  b       loc_100048e64
  100048e5c  mov     x19, x0
  100048e60  mov     x0, x20
loc_100048e64:
  100048e64  bl      _objc_release
loc_100048e68:
  100048e68  mov     x0, x19
  100048e6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController moreStatsButtonPressed:]
; address 0x100048e70  size 308  kind objc
; ======================================================================
  100048e70  stp     x22, x21, [sp, #-0x30]!
  100048e74  stp     x20, x19, [sp, #0x10]
  100048e78  stp     x29, x30, [sp, #0x20]
  100048e7c  add     x29, sp, #0x20
  100048e80  mov     x19, x0
  100048e84  adrp    x8, #0x100418000
  100048e88  nop
  100048e8c  ldr     x1, [x8, #0xa70]
  100048e90  bl      _objc_msgSend                            ; [self stopAnimations]
  100048e94  adrp    x8, #0x100416000
  100048e98  nop
  100048e9c  ldr     x1, [x8, #0xf18]
  100048ea0  mov     x0, x19
  100048ea4  bl      _objc_msgSend                            ; [self view]
  100048ea8  mov     x29, x29
  100048eac  bl      _objc_retainAutoreleasedReturnValue
  100048eb0  mov     x20, x0
  100048eb4  adrp    x8, #0x100417000
  100048eb8  nop
  100048ebc  ldr     x1, [x8, #0x8f8]
  100048ec0  bl      _objc_msgSend                            ; [[self view] layer]
  100048ec4  mov     x29, x29
  100048ec8  bl      _objc_retainAutoreleasedReturnValue
  100048ecc  mov     x21, x0
  100048ed0  adrp    x8, #0x100417000
  100048ed4  nop
  100048ed8  ldr     x1, [x8, #0x900]
  100048edc  bl      _objc_msgSend                            ; [[[self view] layer] removeAllAnimations]
  100048ee0  mov     x0, x21
  100048ee4  bl      _objc_release
  100048ee8  mov     x0, x20
  100048eec  bl      _objc_release
  100048ef0  adrp    x8, #0x10041e000
  100048ef4  ldr     x0, [x8, #0x1a0]                         ; class ADGameOverEndlessStatsViewController
  100048ef8  adrp    x8, #0x100416000
  100048efc  nop
  100048f00  ldr     x1, [x8, #0xac8]
  100048f04  bl      _objc_msgSend                            ; [ADGameOverEndlessStatsViewController alloc]
  100048f08  adrp    x8, #0x100416000
  100048f0c  nop
  100048f10  ldr     x1, [x8, #0xb40]
  100048f14  mov     x3, #0
  100048f18  adrp    x2, #0x1003bd000
  100048f1c  add     x2, x2, #0xd0                            ; @"ADGameOverEndlessStatsViewController"
  100048f20  bl      _objc_msgSend                            ; [[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0]
  100048f24  mov     x20, x0
  100048f28  adrp    x8, #0x100417000
  100048f2c  nop
  100048f30  ldr     x1, [x8, #0x7d8]
  100048f34  mov     x0, x20
  100048f38  mov     x2, x19
  100048f3c  bl      _objc_msgSend                            ; [[[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0] setDelegate:self]
  100048f40  adrp    x8, #0x100417000
  100048f44  nop
  100048f48  ldr     x1, [x8, #0x208]
  100048f4c  mov     w3, #0
  100048f50  mov     x4, #0
  100048f54  mov     x0, x19
  100048f58  mov     x2, x20
  100048f5c  bl      _objc_msgSend                            ; [self presentViewController:[[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0] animated:0 completion:0]
  100048f60  mov     x0, x20
  100048f64  ldp     x29, x30, [sp, #0x20]
  100048f68  ldp     x20, x19, [sp, #0x10]
  100048f6c  ldp     x22, x21, [sp], #0x30
  100048f70  b       _objc_release
  100048f74  mov     x19, x0
  100048f78  b       loc_100048f9c
  100048f7c  b       loc_100048f80
loc_100048f80:
  100048f80  mov     x19, x0
  100048f84  b       loc_100048f94
  100048f88  mov     x19, x0
  100048f8c  mov     x0, x21
  100048f90  bl      _objc_release
loc_100048f94:
  100048f94  mov     x0, x20
  100048f98  bl      _objc_release
loc_100048f9c:
  100048f9c  mov     x0, x19
  100048fa0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController reportScoreToGameCenter]
; address 0x100048fa4  size 852  kind objc
; ======================================================================
  100048fa4  stp     x26, x25, [sp, #-0x50]!
  100048fa8  stp     x24, x23, [sp, #0x10]
  100048fac  stp     x22, x21, [sp, #0x20]
  100048fb0  stp     x20, x19, [sp, #0x30]
  100048fb4  stp     x29, x30, [sp, #0x40]
  100048fb8  add     x29, sp, #0x40
  100048fbc  sub     sp, sp, #0x20
  100048fc0  adrp    x23, #0x1003b0000
  100048fc4  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100048fc8  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100048fcc  str     x23, [sp, #0x18]
  100048fd0  adrp    x8, #0x10041e000
  100048fd4  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100048fd8  adrp    x8, #0x100417000
  100048fdc  nop
  100048fe0  ldr     x1, [x8, #0x788]
  100048fe4  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100048fe8  mov     x29, x29
  100048fec  bl      _objc_retainAutoreleasedReturnValue
  100048ff0  mov     x19, x0
  100048ff4  adrp    x8, #0x100418000
  100048ff8  nop
  100048ffc  ldr     x1, [x8, #0xa90]
  100049000  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  100049004  mov     x29, x29
  100049008  bl      _objc_retainAutoreleasedReturnValue
  10004900c  mov     x21, x0
  100049010  adrp    x8, #0x100418000
  100049014  nop
  100049018  ldr     x1, [x8, #0xa98]
  10004901c  adrp    x2, #0x1003bd000
  100049020  add     x2, x2, #0xf0                            ; @"7.0.0"
  100049024  mov     w3, #0x40
  100049028  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64]
  10004902c  mov     x20, x0
  100049030  mov     x0, x21
  100049034  bl      _objc_release
  100049038  mov     x0, x19
  10004903c  bl      _objc_release
  100049040  cmn     x20, #1
  100049044  b.eq    loc_100049274                            ; if ([[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64] == -1)
  100049048  adrp    x24, #0x10041e000
  10004904c  ldr     x0, [x24, #0x1a8]                        ; class GKLocalPlayer
  100049050  adrp    x8, #0x100418000
  100049054  nop
  100049058  ldr     x19, [x8, #0xaa0]
  10004905c  mov     x1, x19
  100049060  bl      _objc_msgSend                            ; [GKLocalPlayer localPlayer]
  100049064  mov     x29, x29
  100049068  bl      _objc_retainAutoreleasedReturnValue
  10004906c  mov     x21, x0
  100049070  adrp    x8, #0x100418000
  100049074  nop
  100049078  ldr     x20, [x8, #0xaa8]
  10004907c  mov     x1, x20
  100049080  bl      _objc_msgSend                            ; [[GKLocalPlayer localPlayer] isAuthenticated]
  100049084  mov     x22, x0
  100049088  mov     x0, x21
  10004908c  bl      _objc_release
  100049090  cbz     w22, loc_10004916c                       ; if ([[GKLocalPlayer localPlayer] isAuthenticated] == 0)
  100049094  adrp    x25, #0x10041e000
  100049098  ldr     x0, [x25, #0x1b0]                        ; class GKScore
  10004909c  adrp    x8, #0x100416000
  1000490a0  nop
  1000490a4  ldr     x1, [x8, #0xac8]
  1000490a8  bl      _objc_msgSend                            ; [GKScore alloc]
  1000490ac  adrp    x8, #0x100418000
  1000490b0  nop
  1000490b4  ldr     x1, [x8, #0xab0]
  1000490b8  adrp    x2, #0x1003bd000
  1000490bc  add     x2, x2, #0x110                           ; @"TotalStarsUnlocked"
  1000490c0  bl      _objc_msgSend                            ; [[GKScore alloc] initWithLeaderboardIdentifier:@"TotalStarsUnlocked"]
  1000490c4  mov     x21, x0
  1000490c8  adrp    x8, #0x10041d000
  1000490cc  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000490d0  adrp    x8, #0x100416000
  1000490d4  nop
  1000490d8  ldr     x1, [x8, #0xdf0]
  1000490dc  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000490e0  mov     x29, x29
  1000490e4  bl      _objc_retainAutoreleasedReturnValue
  1000490e8  mov     x22, x0
  1000490ec  adrp    x8, #0x100418000
  1000490f0  nop
  1000490f4  ldr     x1, [x8, #0xab8]
  1000490f8  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] computeTotalChallengesWon]
  1000490fc  mov     x2, x0
  100049100  adrp    x8, #0x100418000
  100049104  nop
  100049108  ldr     x1, [x8, #0x658]
  10004910c  mov     x0, x21
  100049110  bl      _objc_msgSend                            ; [[[GKScore alloc] initWithLeaderboardIdentifier:@"TotalStarsUnlocked"] setValue:[[ADChallengeData sharedChallengeData] computeTotalChallengesWon]]
  100049114  mov     x0, x22
  100049118  bl      _objc_release
  10004911c  ldr     x22, [x25, #0x1b0]                       ; class GKScore
  100049120  str     x21, [sp, #0x10]
  100049124  adrp    x8, #0x10041d000
  100049128  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10004912c  adrp    x8, #0x100417000
  100049130  nop
  100049134  ldr     x1, [x8, #0x3c8]
  100049138  add     x2, sp, #0x10
  10004913c  mov     w3, #1
  100049140  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:1]
  100049144  mov     x2, x0
  100049148  adrp    x8, #0x100418000
  10004914c  nop
  100049150  ldr     x1, [x8, #0xac0]
  100049154  adrp    x3, #0x1003b1000
  100049158  add     x3, x3, #0x7d0                           ; ^{-[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke}
  10004915c  mov     x0, x22
  100049160  bl      _objc_msgSend                            ; [GKScore reportScores:[NSArray arrayWithObjects:&sp[0x10] count:1] withCompletionHandler:^{-[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke}]
  100049164  mov     x0, x21
  100049168  bl      _objc_release
loc_10004916c:
  10004916c  ldr     x0, [x24, #0x1a8]                        ; class GKLocalPlayer
  100049170  mov     x1, x19
  100049174  bl      _objc_msgSend                            ; [GKLocalPlayer localPlayer]
  100049178  mov     x29, x29
  10004917c  bl      _objc_retainAutoreleasedReturnValue
  100049180  mov     x19, x0
  100049184  mov     x1, x20
  100049188  bl      _objc_msgSend                            ; [[GKLocalPlayer localPlayer] isAuthenticated]
  10004918c  mov     x20, x0
  100049190  mov     x0, x19
  100049194  bl      _objc_release
  100049198  cbz     w20, loc_100049274                       ; if ([[GKLocalPlayer localPlayer] isAuthenticated] == 0)
  10004919c  adrp    x20, #0x10041e000
  1000491a0  ldr     x0, [x20, #0x1b0]                        ; class GKScore
  1000491a4  adrp    x8, #0x100416000
  1000491a8  nop
  1000491ac  ldr     x1, [x8, #0xac8]
  1000491b0  bl      _objc_msgSend                            ; [GKScore alloc]
  1000491b4  adrp    x8, #0x100418000
  1000491b8  nop
  1000491bc  ldr     x1, [x8, #0xab0]
  1000491c0  adrp    x2, #0x1003bd000
  1000491c4  add     x2, x2, #0x130                           ; @"TotalZombiesKilled"
  1000491c8  bl      _objc_msgSend                            ; [[GKScore alloc] initWithLeaderboardIdentifier:@"TotalZombiesKilled"]
  1000491cc  mov     x19, x0
  1000491d0  adrp    x8, #0x10041d000
  1000491d4  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000491d8  adrp    x8, #0x100416000
  1000491dc  nop
  1000491e0  ldr     x1, [x8, #0xe10]
  1000491e4  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000491e8  mov     x29, x29
  1000491ec  bl      _objc_retainAutoreleasedReturnValue
  1000491f0  mov     x21, x0
  1000491f4  adrp    x8, #0x100418000
  1000491f8  nop
  1000491fc  ldr     x1, [x8, #0xac8]
  100049200  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] computeTotalEnemyKillCount]
  100049204  mov     x2, x0
  100049208  adrp    x8, #0x100418000
  10004920c  nop
  100049210  ldr     x1, [x8, #0x658]
  100049214  mov     x0, x19
  100049218  bl      _objc_msgSend                            ; [[[GKScore alloc] initWithLeaderboardIdentifier:@"TotalZombiesKilled"] setValue:[[ADPersistentStats persistentStats] computeTotalEnemyKillCount]]
  10004921c  mov     x0, x21
  100049220  bl      _objc_release
  100049224  ldr     x20, [x20, #0x1b0]                       ; class GKScore
  100049228  str     x19, [sp, #8]
  10004922c  adrp    x8, #0x10041d000
  100049230  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100049234  adrp    x8, #0x100417000
  100049238  nop
  10004923c  ldr     x1, [x8, #0x3c8]
  100049240  add     x2, sp, #8
  100049244  mov     w3, #1
  100049248  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:1]
  10004924c  mov     x2, x0
  100049250  adrp    x8, #0x100418000
  100049254  nop
  100049258  ldr     x1, [x8, #0xac0]
  10004925c  adrp    x3, #0x1003b1000
  100049260  add     x3, x3, #0x810                           ; ^{-[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2}
  100049264  mov     x0, x20
  100049268  bl      _objc_msgSend                            ; [GKScore reportScores:[NSArray arrayWithObjects:&sp[0x8] count:1] withCompletionHandler:^{-[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2}]
  10004926c  mov     x0, x19
  100049270  bl      _objc_release
loc_100049274:
  100049274  ldr     x8, [sp, #0x18]
  100049278  sub     x8, x23, x8
  10004927c  cbnz    x8, loc_10004929c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100049280  sub     sp, x29, #0x40
  100049284  ldp     x29, x30, [sp, #0x40]
  100049288  ldp     x20, x19, [sp, #0x30]
  10004928c  ldp     x22, x21, [sp, #0x20]
  100049290  ldp     x24, x23, [sp, #0x10]
  100049294  ldp     x26, x25, [sp], #0x50
  100049298  ret
loc_10004929c:
  10004929c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000492a0  b       loc_1000492e4
  1000492a4  b       loc_1000492c4
  1000492a8  b       loc_1000492d8
  1000492ac  mov     x20, x0
  1000492b0  mov     x0, x22
  1000492b4  bl      _objc_release
  1000492b8  b       loc_1000492dc
  1000492bc  b       loc_1000492d8
  1000492c0  b       loc_1000492e4
loc_1000492c4:
  1000492c4  mov     x20, x0
  1000492c8  mov     x0, x21
  1000492cc  bl      _objc_release
  1000492d0  b       loc_1000492e8
  1000492d4  b       loc_1000492e4
loc_1000492d8:
  1000492d8  mov     x20, x0
loc_1000492dc:
  1000492dc  mov     x0, x21
  1000492e0  b       loc_1000492ec
loc_1000492e4:
  1000492e4  mov     x20, x0
loc_1000492e8:
  1000492e8  mov     x0, x19
loc_1000492ec:
  1000492ec  bl      _objc_release
  1000492f0  mov     x0, x20
  1000492f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke
; address 0x1000492f8  size 4  kind block
; ======================================================================
  1000492f8  ret

; ======================================================================
; -[ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2
; address 0x1000492fc  size 4  kind block
; ======================================================================
  1000492fc  ret

; ======================================================================
; -[ADChallengeCompletedViewController playButtonSound]
; address 0x100049300  size 252  kind objc
; ======================================================================
  100049300  stp     x22, x21, [sp, #-0x30]!
  100049304  stp     x20, x19, [sp, #0x10]
  100049308  stp     x29, x30, [sp, #0x20]
  10004930c  add     x29, sp, #0x20
  100049310  adrp    x8, #0x10041d000
  100049314  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100049318  adrp    x8, #0x100417000
  10004931c  nop
  100049320  ldr     x1, [x8, #0x4f0]
  100049324  bl      _objc_msgSend                            ; [S3DEngine engine]
  100049328  mov     x29, x29
  10004932c  bl      _objc_retainAutoreleasedReturnValue
  100049330  mov     x19, x0
  100049334  adrp    x8, #0x100417000
  100049338  nop
  10004933c  ldr     x1, [x8, #0x4f8]
  100049340  adrp    x2, #0x1003ba000
  100049344  add     x2, x2, #0xcb0                           ; @"buttons"
  100049348  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  10004934c  mov     x29, x29
  100049350  bl      _objc_retainAutoreleasedReturnValue
  100049354  mov     x21, x0
  100049358  adrp    x8, #0x100417000
  10004935c  nop
  100049360  ldr     x1, [x8, #0x990]
  100049364  adrp    x2, #0x1003ba000
  100049368  add     x2, x2, #0xcd0                           ; @"click_button"
  10004936c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  100049370  mov     x29, x29
  100049374  bl      _objc_retainAutoreleasedReturnValue
  100049378  mov     x20, x0
  10004937c  mov     x0, x21
  100049380  bl      _objc_release
  100049384  mov     x0, x19
  100049388  bl      _objc_release
  10004938c  adrp    x8, #0x100416000
  100049390  nop
  100049394  ldr     x1, [x8, #0xcb0]
  100049398  fmov    s0, #3.00000000
  10004939c  mov     x0, x20
  1000493a0  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  1000493a4  adrp    x8, #0x100417000
  1000493a8  nop
  1000493ac  ldr     x1, [x8, #0x600]
  1000493b0  mov     x0, x20
  1000493b4  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  1000493b8  mov     x0, x20
  1000493bc  ldp     x29, x30, [sp, #0x20]
  1000493c0  ldp     x20, x19, [sp, #0x10]
  1000493c4  ldp     x22, x21, [sp], #0x30
  1000493c8  b       _objc_release
  1000493cc  mov     x22, x0
  1000493d0  mov     x0, x20
  1000493d4  b       loc_1000493f0
  1000493d8  mov     x22, x0
  1000493dc  b       loc_1000493ec
  1000493e0  mov     x22, x0
  1000493e4  mov     x0, x21
  1000493e8  bl      _objc_release
loc_1000493ec:
  1000493ec  mov     x0, x19
loc_1000493f0:
  1000493f0  bl      _objc_release
  1000493f4  mov     x0, x22
  1000493f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeCompletedViewController .cxx_destruct]
; address 0x1000493fc  size 20  kind objc
; ======================================================================
  1000493fc  mov     x1, #0
  100049400  adrp    x8, #0x10041f000
  100049404  ldrsw   x8, [x8, #0x9cc]                         ; ivar offset ADChallengeCompletedViewController.missionsViewControllerArray (+0x140)
  100049408  add     x0, x0, x8
  10004940c  b       _objc_storeStrong
