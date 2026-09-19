// unit ADGameOverWithStatsViewController — 75 functions
//   0x100041958    2552  -[ADGameOverWithStatsViewController viewDidLoad]
//   0x100042350      92  -[ADGameOverWithStatsViewController awakeFromNib]
//   0x1000423ac     452  -[ADGameOverWithStatsViewController animateCoinsAndDiamonds]
//   0x100042570      60  -[ADGameOverWithStatsViewController viewDidLayoutSubviews]
//   0x1000425ac     200  -[ADGameOverWithStatsViewController checkAllAnimationsAreComplete]
//   0x100042674     232  -[ADGameOverWithStatsViewController formattedScoreFromInt:]
//   0x10004275c       4  -[ADGameOverWithStatsViewController checkUnlocksAndPopups]
//   0x100042760      92  -[ADGameOverWithStatsViewController viewDidAppear:]
//   0x1000427bc     900  -[ADGameOverWithStatsViewController initScrollView]
//   0x100042b40     192  -[ADGameOverWithStatsViewController initScrollView]_block_invoke
//   0x100042c00       8  sub_100042c00
//   0x100042c08       8  sub_100042c08
//   0x100042c10    1740  -[ADGameOverWithStatsViewController loadMissions]
//   0x1000432dc     224  -[ADGameOverWithStatsViewController timeStringFromSeconds:]
//   0x1000433bc       4  -[ADGameOverWithStatsViewController animateButtonsInAndrestoreControl]
//   0x1000433c0      80  -[ADGameOverWithStatsViewController swipeLeft]
//   0x100043410      20  -[ADGameOverWithStatsViewController swipeRight]
//   0x100043424       4  -[ADGameOverWithStatsViewController goToMissionsButtonPressed:]
//   0x100043428     196  -[ADGameOverWithStatsViewController goToScoreButtonPressed:]
//   0x1000434ec     164  -[ADGameOverWithStatsViewController dealloc]
//   0x100043590      16  -[ADGameOverWithStatsViewController challengeTitle]
//   0x1000435a0      56  -[ADGameOverWithStatsViewController setChallengeTitle:]
//   0x1000435d8      16  -[ADGameOverWithStatsViewController missionsTitle]
//   0x1000435e8      56  -[ADGameOverWithStatsViewController setMissionsTitle:]
//   0x100043620      16  -[ADGameOverWithStatsViewController missionsButton]
//   0x100043630      56  -[ADGameOverWithStatsViewController setMissionsButton:]
//   0x100043668      16  -[ADGameOverWithStatsViewController scoreLabel]
//   0x100043678      56  -[ADGameOverWithStatsViewController setScoreLabel:]
//   0x1000436b0      16  -[ADGameOverWithStatsViewController comboLabel]
//   0x1000436c0      56  -[ADGameOverWithStatsViewController setComboLabel:]
//   0x1000436f8      16  -[ADGameOverWithStatsViewController killsLabel]
//   0x100043708      56  -[ADGameOverWithStatsViewController setKillsLabel:]
//   0x100043740      16  -[ADGameOverWithStatsViewController accuracyLabel]
//   0x100043750      56  -[ADGameOverWithStatsViewController setAccuracyLabel:]
//   0x100043788      16  -[ADGameOverWithStatsViewController timeLabel]
//   0x100043798      56  -[ADGameOverWithStatsViewController setTimeLabel:]
//   0x1000437d0      16  -[ADGameOverWithStatsViewController coinsTotal]
//   0x1000437e0      56  -[ADGameOverWithStatsViewController setCoinsTotal:]
//   0x100043818      16  -[ADGameOverWithStatsViewController diamondsTotal]
//   0x100043828      56  -[ADGameOverWithStatsViewController setDiamondsTotal:]
//   0x100043860      16  -[ADGameOverWithStatsViewController diamondsLoot]
//   0x100043870      56  -[ADGameOverWithStatsViewController setDiamondsLoot:]
//   0x1000438a8      16  -[ADGameOverWithStatsViewController missionView]
//   0x1000438b8      56  -[ADGameOverWithStatsViewController setMissionView:]
//   0x1000438f0      16  -[ADGameOverWithStatsViewController contentView]
//   0x100043900      56  -[ADGameOverWithStatsViewController setContentView:]
//   0x100043938      16  -[ADGameOverWithStatsViewController buttonsView]
//   0x100043948      56  -[ADGameOverWithStatsViewController setButtonsView:]
//   0x100043980      16  -[ADGameOverWithStatsViewController contentScrollView]
//   0x100043990      56  -[ADGameOverWithStatsViewController setContentScrollView:]
//   0x1000439c8      20  -[ADGameOverWithStatsViewController ignoreRewards]
//   0x1000439dc      16  -[ADGameOverWithStatsViewController setIgnoreRewards:]
//   0x1000439ec      20  -[ADGameOverWithStatsViewController delayForDisplayingScore]
//   0x100043a00      20  -[ADGameOverWithStatsViewController setDelayForDisplayingScore:]
//   0x100043a14      16  -[ADGameOverWithStatsViewController killsTitleLabel]
//   0x100043a24      56  -[ADGameOverWithStatsViewController setKillsTitleLabel:]
//   0x100043a5c      16  -[ADGameOverWithStatsViewController accuracyTitleLabel]
//   0x100043a6c      56  -[ADGameOverWithStatsViewController setAccuracyTitleLabel:]
//   0x100043aa4      16  -[ADGameOverWithStatsViewController timeTitleLabel]
//   0x100043ab4      56  -[ADGameOverWithStatsViewController setTimeTitleLabel:]
//   0x100043aec      16  -[ADGameOverWithStatsViewController missionPlaceholder1]
//   0x100043afc      56  -[ADGameOverWithStatsViewController setMissionPlaceholder1:]
//   0x100043b34      16  -[ADGameOverWithStatsViewController missionPlaceholder2]
//   0x100043b44      56  -[ADGameOverWithStatsViewController setMissionPlaceholder2:]
//   0x100043b7c      16  -[ADGameOverWithStatsViewController missionPlaceholder3]
//   0x100043b8c      56  -[ADGameOverWithStatsViewController setMissionPlaceholder3:]
//   0x100043bc4      16  -[ADGameOverWithStatsViewController starPlaceholder1]
//   0x100043bd4      56  -[ADGameOverWithStatsViewController setStarPlaceholder1:]
//   0x100043c0c      16  -[ADGameOverWithStatsViewController starPlaceholder2]
//   0x100043c1c      56  -[ADGameOverWithStatsViewController setStarPlaceholder2:]
//   0x100043c54      16  -[ADGameOverWithStatsViewController starPlaceholder3]
//   0x100043c64      56  -[ADGameOverWithStatsViewController setStarPlaceholder3:]
//   0x100043c9c      16  -[ADGameOverWithStatsViewController starCoins]
//   0x100043cac      16  -[ADGameOverWithStatsViewController setStarCoins:]
//   0x100043cbc     524  -[ADGameOverWithStatsViewController .cxx_destruct]

; ======================================================================
; -[ADGameOverWithStatsViewController viewDidLoad]
; address 0x100041958  size 2552  kind objc
; ======================================================================
  100041958  stp     x28, x27, [sp, #-0x60]!
  10004195c  stp     x26, x25, [sp, #0x10]
  100041960  stp     x24, x23, [sp, #0x20]
  100041964  stp     x22, x21, [sp, #0x30]
  100041968  stp     x20, x19, [sp, #0x40]
  10004196c  stp     x29, x30, [sp, #0x50]
  100041970  add     x29, sp, #0x50
  100041974  sub     sp, sp, #0x40
  100041978  mov     x20, x0
  10004197c  str     x20, [sp, #0x30]
  100041980  adrp    x8, #0x10041e000
  100041984  ldr     x8, [x8, #0xd00]
  100041988  str     x8, [sp, #0x38]
  10004198c  adrp    x8, #0x100416000
  100041990  nop
  100041994  ldr     x1, [x8, #0xb48]
  100041998  add     x0, sp, #0x30
  10004199c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000419a0  adrp    x8, #0x100418000
  1000419a4  nop
  1000419a8  ldr     x1, [x8, #0x780]
  1000419ac  mov     x0, x20
  1000419b0  bl      _objc_msgSend                            ; [self initScrollView]
  1000419b4  adrp    x8, #0x100416000
  1000419b8  nop
  1000419bc  ldr     x26, [x8, #0xc50]
  1000419c0  mov     x0, x20
  1000419c4  mov     x1, x26
  1000419c8  bl      _objc_msgSend                            ; [self accuracyLabel]
  1000419cc  mov     x29, x29
  1000419d0  bl      _objc_retainAutoreleasedReturnValue
  1000419d4  mov     x24, x0
  1000419d8  adrp    x21, #0x10041d000
  1000419dc  ldr     x22, [x21, #0xf78]                       ; class NSString
  1000419e0  adrp    x28, #0x10041d000
  1000419e4  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  1000419e8  adrp    x8, #0x100417000
  1000419ec  nop
  1000419f0  ldr     x19, [x8, #0x228]
  1000419f4  mov     x1, x19
  1000419f8  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000419fc  mov     x29, x29
  100041a00  bl      _objc_retainAutoreleasedReturnValue
  100041a04  mov     x25, x0
  100041a08  adrp    x8, #0x100417000
  100041a0c  nop
  100041a10  ldr     x1, [x8, #0xdc8]
  100041a14  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  100041a18  adrp    x8, #0x100181000
  100041a1c  ldr     s1, [x8, #0xa10]                         ; s1 = 100.0
  100041a20  fmul    s0, s0, s1
  100041a24  fcvtzs  w8, s0
  100041a28  adrp    x9, #0x100416000
  100041a2c  nop
  100041a30  ldr     x27, [x9, #0xee8]
  100041a34  str     x8, [sp]
  100041a38  adrp    x2, #0x1003bc000
  100041a3c  add     x2, x2, #0xcf0                           ; @"%i %%"
  100041a40  mov     x0, x22
  100041a44  mov     x1, x27
  100041a48  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i %%", (int)([[ADInGameStats singleton] currentAccuracy] * 100)]
  100041a4c  mov     x29, x29
  100041a50  bl      _objc_retainAutoreleasedReturnValue
  100041a54  mov     x23, x0
  100041a58  adrp    x8, #0x100416000
  100041a5c  nop
  100041a60  ldr     x1, [x8, #0xb68]
  100041a64  str     x1, [sp, #0x28]
  100041a68  mov     x0, x24
  100041a6c  mov     x2, x23
  100041a70  bl      _objc_msgSend                            ; [[self accuracyLabel] setText:[NSString stringWithFormat:@"%i %%", (int)([[ADInGameStats singleton] currentAccuracy] * 100)]]
  100041a74  str     x26, [sp, #0x18]
  100041a78  mov     x0, x23
  100041a7c  bl      _objc_release
  100041a80  mov     x0, x25
  100041a84  bl      _objc_release
  100041a88  mov     x0, x24
  100041a8c  bl      _objc_release
  100041a90  adrp    x8, #0x100416000
  100041a94  nop
  100041a98  ldr     x24, [x8, #0xc40]
  100041a9c  mov     x0, x20
  100041aa0  mov     x1, x24
  100041aa4  bl      _objc_msgSend                            ; [self killsLabel]
  100041aa8  mov     x29, x29
  100041aac  bl      _objc_retainAutoreleasedReturnValue
  100041ab0  mov     x25, x0
  100041ab4  ldr     x23, [x21, #0xf78]                       ; class NSString
  100041ab8  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100041abc  mov     x1, x19
  100041ac0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100041ac4  mov     x29, x29
  100041ac8  bl      _objc_retainAutoreleasedReturnValue
  100041acc  mov     x26, x0
  100041ad0  adrp    x8, #0x100418000
  100041ad4  nop
  100041ad8  ldr     x1, [x8, #0x788]
  100041adc  bl      _objc_msgSend                            ; [[ADInGameStats singleton] computeCurrentEnemyKillCount]
  100041ae0  str     x0, [sp]
  100041ae4  adrp    x2, #0x1003ba000
  100041ae8  add     x2, x2, #0xc50                           ; @"%i"
  100041aec  mov     x0, x23
  100041af0  mov     x1, x27
  100041af4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] computeCurrentEnemyKillCount]]
  100041af8  mov     x29, x29
  100041afc  bl      _objc_retainAutoreleasedReturnValue
  100041b00  mov     x23, x0
  100041b04  mov     x0, x25
  100041b08  ldr     x1, [sp, #0x28]
  100041b0c  mov     x2, x23
  100041b10  bl      _objc_msgSend                            ; [[self killsLabel] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] computeCurrentEnemyKillCount]]]
  100041b14  mov     x0, x23
  100041b18  bl      _objc_release
  100041b1c  mov     x0, x26
  100041b20  bl      _objc_release
  100041b24  mov     x0, x25
  100041b28  bl      _objc_release
  100041b2c  adrp    x8, #0x100418000
  100041b30  nop
  100041b34  ldr     x1, [x8, #0x790]
  100041b38  mov     x0, x20
  100041b3c  bl      _objc_msgSend                            ; [self comboLabel]
  100041b40  mov     x29, x29
  100041b44  bl      _objc_retainAutoreleasedReturnValue
  100041b48  mov     x25, x0
  100041b4c  ldr     x23, [x21, #0xf78]                       ; class NSString
  100041b50  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100041b54  mov     x1, x19
  100041b58  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100041b5c  mov     x29, x29
  100041b60  bl      _objc_retainAutoreleasedReturnValue
  100041b64  mov     x26, x0
  100041b68  adrp    x8, #0x100418000
  100041b6c  nop
  100041b70  ldr     x1, [x8, #0x798]
  100041b74  bl      _objc_msgSend                            ; [[ADInGameStats singleton] highestCombo]
  100041b78  str     x0, [sp]
  100041b7c  adrp    x2, #0x1003ba000
  100041b80  add     x2, x2, #0xc50                           ; @"%i"
  100041b84  mov     x0, x23
  100041b88  mov     x1, x27
  100041b8c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] highestCombo]]
  100041b90  mov     x29, x29
  100041b94  bl      _objc_retainAutoreleasedReturnValue
  100041b98  mov     x23, x0
  100041b9c  mov     x0, x25
  100041ba0  ldr     x1, [sp, #0x28]
  100041ba4  mov     x2, x23
  100041ba8  bl      _objc_msgSend                            ; [[self comboLabel] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] highestCombo]]]
  100041bac  mov     x22, x27
  100041bb0  mov     x0, x23
  100041bb4  bl      _objc_release
  100041bb8  mov     x0, x26
  100041bbc  bl      _objc_release
  100041bc0  mov     x0, x25
  100041bc4  bl      _objc_release
  100041bc8  adrp    x8, #0x100418000
  100041bcc  nop
  100041bd0  ldr     x26, [x8, #0x7a0]
  100041bd4  mov     x0, x20
  100041bd8  mov     x1, x26
  100041bdc  bl      _objc_msgSend                            ; [self timeLabel]
  100041be0  mov     x29, x29
  100041be4  bl      _objc_retainAutoreleasedReturnValue
  100041be8  mov     x25, x0
  100041bec  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100041bf0  mov     x1, x19
  100041bf4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100041bf8  str     x19, [sp, #0x20]
  100041bfc  mov     x29, x29
  100041c00  bl      _objc_retainAutoreleasedReturnValue
  100041c04  mov     x27, x0
  100041c08  adrp    x8, #0x100417000
  100041c0c  nop
  100041c10  ldr     x1, [x8, #0xdc0]
  100041c14  bl      _objc_msgSend                            ; [[ADInGameStats singleton] timeElapsed]
  100041c18  fcvtzs  w2, d0
  100041c1c  adrp    x8, #0x100418000
  100041c20  nop
  100041c24  ldr     x1, [x8, #0x7a8]
  100041c28  mov     x0, x20
  100041c2c  bl      _objc_msgSend                            ; [self timeStringFromSeconds:(int)[[ADInGameStats singleton] timeElapsed]]
  100041c30  mov     x29, x29
  100041c34  bl      _objc_retainAutoreleasedReturnValue
  100041c38  mov     x23, x0
  100041c3c  mov     x0, x25
  100041c40  ldr     x1, [sp, #0x28]
  100041c44  mov     x2, x23
  100041c48  bl      _objc_msgSend                            ; [[self timeLabel] setText:[self timeStringFromSeconds:(int)[[ADInGameStats singleton] timeElapsed]]]
  100041c4c  mov     x0, x23
  100041c50  bl      _objc_release
  100041c54  mov     x0, x27
  100041c58  bl      _objc_release
  100041c5c  mov     x0, x25
  100041c60  bl      _objc_release
  100041c64  adrp    x8, #0x100418000
  100041c68  nop
  100041c6c  ldr     x1, [x8, #0x7b0]
  100041c70  str     x1, [sp, #0x10]
  100041c74  mov     x0, x20
  100041c78  bl      _objc_msgSend                            ; [self scoreLabel]
  100041c7c  mov     x29, x29
  100041c80  bl      _objc_retainAutoreleasedReturnValue
  100041c84  mov     x27, x0
  100041c88  ldr     x23, [x21, #0xf78]                       ; class NSString
  100041c8c  mov     x19, x21
  100041c90  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100041c94  mov     x21, x28
  100041c98  ldr     x1, [sp, #0x20]
  100041c9c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100041ca0  mov     x25, x24
  100041ca4  mov     x29, x29
  100041ca8  bl      _objc_retainAutoreleasedReturnValue
  100041cac  mov     x28, x0
  100041cb0  adrp    x8, #0x100417000
  100041cb4  nop
  100041cb8  ldr     x1, [x8, #0xda0]
  100041cbc  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  100041cc0  mov     x2, x0
  100041cc4  adrp    x8, #0x100418000
  100041cc8  nop
  100041ccc  ldr     x1, [x8, #0x7b8]
  100041cd0  mov     x0, x20
  100041cd4  bl      _objc_msgSend                            ; [self formattedScoreFromInt:[[ADInGameStats singleton] gameScore]]
  100041cd8  mov     x29, x29
  100041cdc  bl      _objc_retainAutoreleasedReturnValue
  100041ce0  mov     x24, x0
  100041ce4  str     x24, [sp]
  100041ce8  adrp    x2, #0x1003ba000
  100041cec  add     x2, x2, #0x190                           ; @"%@"
  100041cf0  mov     x0, x23
  100041cf4  mov     x1, x22
  100041cf8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@", [self formattedScoreFromInt:[[ADInGameStats singleton] gameScore]]]
  100041cfc  mov     x29, x29
  100041d00  bl      _objc_retainAutoreleasedReturnValue
  100041d04  mov     x23, x0
  100041d08  mov     x0, x27
  100041d0c  ldr     x1, [sp, #0x28]
  100041d10  mov     x2, x23
  100041d14  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[NSString stringWithFormat:@"%@", [self formattedScoreFromInt:[[ADInGameStats singleton] gameScore]]]]
  100041d18  mov     x0, x23
  100041d1c  bl      _objc_release
  100041d20  mov     x0, x24
  100041d24  bl      _objc_release
  100041d28  mov     x0, x28
  100041d2c  bl      _objc_release
  100041d30  mov     x0, x27
  100041d34  bl      _objc_release
  100041d38  mov     x0, x20
  100041d3c  mov     x1, x25
  100041d40  bl      _objc_msgSend                            ; [self killsLabel]
  100041d44  mov     x29, x29
  100041d48  bl      _objc_retainAutoreleasedReturnValue
  100041d4c  mov     x23, x0
  100041d50  adrp    x8, #0x100416000
  100041d54  nop
  100041d58  ldr     x24, [x8, #0xeb8]
  100041d5c  mov     x1, x24
  100041d60  bl      _objc_msgSend                            ; [[self killsLabel] setupAsInfo]
  100041d64  mov     x0, x23
  100041d68  bl      _objc_release
  100041d6c  mov     x0, x20
  100041d70  ldr     x1, [sp, #0x18]
  100041d74  bl      _objc_msgSend                            ; [self accuracyLabel]
  100041d78  mov     x29, x29
  100041d7c  bl      _objc_retainAutoreleasedReturnValue
  100041d80  mov     x23, x0
  100041d84  mov     x1, x24
  100041d88  bl      _objc_msgSend                            ; [[self accuracyLabel] setupAsInfo]
  100041d8c  mov     x28, x21
  100041d90  mov     x0, x23
  100041d94  bl      _objc_release
  100041d98  mov     x0, x20
  100041d9c  mov     x1, x26
  100041da0  bl      _objc_msgSend                            ; [self timeLabel]
  100041da4  mov     x29, x29
  100041da8  bl      _objc_retainAutoreleasedReturnValue
  100041dac  mov     x23, x0
  100041db0  mov     x1, x24
  100041db4  bl      _objc_msgSend                            ; [[self timeLabel] setupAsInfo]
  100041db8  mov     x21, x19
  100041dbc  mov     x0, x23
  100041dc0  bl      _objc_release
  100041dc4  adrp    x8, #0x100418000
  100041dc8  nop
  100041dcc  ldr     x1, [x8, #0x7c0]
  100041dd0  mov     x0, x20
  100041dd4  bl      _objc_msgSend                            ; [self killsTitleLabel]
  100041dd8  mov     x29, x29
  100041ddc  bl      _objc_retainAutoreleasedReturnValue
  100041de0  mov     x23, x0
  100041de4  mov     x1, x24
  100041de8  bl      _objc_msgSend                            ; [[self killsTitleLabel] setupAsInfo]
  100041dec  ldr     x19, [sp, #0x20]
  100041df0  mov     x0, x23
  100041df4  bl      _objc_release
  100041df8  adrp    x8, #0x100418000
  100041dfc  nop
  100041e00  ldr     x1, [x8, #0x7c8]
  100041e04  mov     x0, x20
  100041e08  bl      _objc_msgSend                            ; [self accuracyTitleLabel]
  100041e0c  mov     x29, x29
  100041e10  bl      _objc_retainAutoreleasedReturnValue
  100041e14  mov     x23, x0
  100041e18  mov     x1, x24
  100041e1c  bl      _objc_msgSend                            ; [[self accuracyTitleLabel] setupAsInfo]
  100041e20  mov     x0, x23
  100041e24  bl      _objc_release
  100041e28  adrp    x8, #0x100418000
  100041e2c  nop
  100041e30  ldr     x1, [x8, #0x7d0]
  100041e34  mov     x0, x20
  100041e38  bl      _objc_msgSend                            ; [self timeTitleLabel]
  100041e3c  mov     x29, x29
  100041e40  bl      _objc_retainAutoreleasedReturnValue
  100041e44  mov     x23, x0
  100041e48  mov     x1, x24
  100041e4c  bl      _objc_msgSend                            ; [[self timeTitleLabel] setupAsInfo]
  100041e50  mov     x0, x23
  100041e54  bl      _objc_release
  100041e58  mov     x0, x20
  100041e5c  ldr     x1, [sp, #0x10]
  100041e60  bl      _objc_msgSend                            ; [self scoreLabel]
  100041e64  mov     x29, x29
  100041e68  bl      _objc_retainAutoreleasedReturnValue
  100041e6c  mov     x23, x0
  100041e70  mov     x1, x24
  100041e74  bl      _objc_msgSend                            ; [[self scoreLabel] setupAsInfo]
  100041e78  mov     x0, x23
  100041e7c  bl      _objc_release
  100041e80  adrp    x8, #0x100418000
  100041e84  nop
  100041e88  ldr     x23, [x8, #0x7d8]
  100041e8c  mov     x0, x20
  100041e90  mov     x1, x23
  100041e94  bl      _objc_msgSend                            ; [self diamondsLoot]
  100041e98  mov     x29, x29
  100041e9c  bl      _objc_retainAutoreleasedReturnValue
  100041ea0  mov     x25, x0
  100041ea4  mov     x1, x24
  100041ea8  bl      _objc_msgSend                            ; [[self diamondsLoot] setupAsInfo]
  100041eac  mov     x0, x25
  100041eb0  bl      _objc_release
  100041eb4  mov     x0, x20
  100041eb8  mov     x1, x23
  100041ebc  bl      _objc_msgSend                            ; [self diamondsLoot]
  100041ec0  mov     x29, x29
  100041ec4  bl      _objc_retainAutoreleasedReturnValue
  100041ec8  mov     x24, x0
  100041ecc  ldr     x26, [x21, #0xf78]                       ; class NSString
  100041ed0  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100041ed4  mov     x1, x19
  100041ed8  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100041edc  mov     x29, x29
  100041ee0  bl      _objc_retainAutoreleasedReturnValue
  100041ee4  mov     x25, x0
  100041ee8  adrp    x8, #0x100417000
  100041eec  nop
  100041ef0  ldr     x23, [x8, #0xdb8]
  100041ef4  mov     x1, x23
  100041ef8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] diamondLoot]
  100041efc  str     x0, [sp]
  100041f00  adrp    x2, #0x1003ba000
  100041f04  add     x2, x2, #0xc50                           ; @"%i"
  100041f08  mov     x0, x26
  100041f0c  mov     x1, x22
  100041f10  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] diamondLoot]]
  100041f14  mov     x29, x29
  100041f18  bl      _objc_retainAutoreleasedReturnValue
  100041f1c  mov     x26, x0
  100041f20  mov     x0, x24
  100041f24  ldr     x1, [sp, #0x28]
  100041f28  mov     x2, x26
  100041f2c  bl      _objc_msgSend                            ; [[self diamondsLoot] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] diamondLoot]]]
  100041f30  mov     x0, x26
  100041f34  bl      _objc_release
  100041f38  mov     x0, x25
  100041f3c  bl      _objc_release
  100041f40  mov     x0, x24
  100041f44  bl      _objc_release
  100041f48  adrp    x8, #0x100418000
  100041f4c  nop
  100041f50  ldr     x1, [x8, #0x7e0]
  100041f54  mov     x0, x20
  100041f58  bl      _objc_msgSend                            ; [self coinsTotal]
  100041f5c  mov     x29, x29
  100041f60  bl      _objc_retainAutoreleasedReturnValue
  100041f64  mov     x25, x0
  100041f68  ldr     x27, [x21, #0xf78]                       ; class NSString
  100041f6c  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100041f70  mov     x1, x19
  100041f74  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100041f78  mov     x29, x29
  100041f7c  bl      _objc_retainAutoreleasedReturnValue
  100041f80  mov     x26, x0
  100041f84  adrp    x8, #0x100417000
  100041f88  nop
  100041f8c  ldr     x24, [x8, #0xdb0]
  100041f90  mov     x1, x24
  100041f94  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  100041f98  str     x0, [sp]
  100041f9c  adrp    x2, #0x1003ba000
  100041fa0  add     x2, x2, #0xc50                           ; @"%i"
  100041fa4  mov     x0, x27
  100041fa8  mov     x1, x22
  100041fac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] totalCoins]]
  100041fb0  mov     x29, x29
  100041fb4  bl      _objc_retainAutoreleasedReturnValue
  100041fb8  mov     x21, x0
  100041fbc  mov     x0, x25
  100041fc0  ldr     x1, [sp, #0x28]
  100041fc4  mov     x2, x21
  100041fc8  bl      _objc_msgSend                            ; [[self coinsTotal] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] totalCoins]]]
  100041fcc  mov     x0, x21
  100041fd0  bl      _objc_release
  100041fd4  mov     x0, x26
  100041fd8  bl      _objc_release
  100041fdc  mov     x0, x25
  100041fe0  bl      _objc_release
  100041fe4  adrp    x8, #0x10041e000
  100041fe8  ldr     x0, [x8]                                 ; class ADGameModifiers
  100041fec  adrp    x8, #0x100417000
  100041ff0  nop
  100041ff4  ldr     x1, [x8, #0x510]
  100041ff8  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100041ffc  mov     x29, x29
  100042000  bl      _objc_retainAutoreleasedReturnValue
  100042004  mov     x21, x0
  100042008  adrp    x8, #0x100418000
  10004200c  nop
  100042010  ldr     x1, [x8, #0x430]
  100042014  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] resetModifiers]
  100042018  mov     x0, x21
  10004201c  bl      _objc_release
  100042020  adrp    x8, #0x100418000
  100042024  nop
  100042028  ldr     x1, [x8, #0x7e8]
  10004202c  mov     x0, x20
  100042030  bl      _objc_msgSend                            ; [self ignoreRewards]
  100042034  adrp    x8, #0x100417000
  100042038  nop
  10004203c  ldr     x21, [x8, #0x2a8]
  100042040  mov     x0, x20
  100042044  mov     x1, x21
  100042048  bl      _objc_msgSend                            ; [self statusBarViewController]
  10004204c  mov     x29, x29
  100042050  bl      _objc_retainAutoreleasedReturnValue
  100042054  mov     x22, x0
  100042058  adrp    x8, #0x100417000
  10004205c  nop
  100042060  ldr     x1, [x8, #0x7d8]
  100042064  mov     x2, x20
  100042068  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:self]
  10004206c  mov     x0, x22
  100042070  bl      _objc_release
  100042074  mov     x0, x20
  100042078  mov     x1, x21
  10004207c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100042080  mov     x29, x29
  100042084  bl      _objc_retainAutoreleasedReturnValue
  100042088  mov     x20, x0
  10004208c  adrp    x8, #0x100418000
  100042090  nop
  100042094  ldr     x1, [x8, #0x390]
  100042098  mov     w2, #1
  10004209c  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryLoadoutEnabled:1]
  1000420a0  mov     x0, x20
  1000420a4  bl      _objc_release
  1000420a8  adrp    x25, #0x10041d000
  1000420ac  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  1000420b0  adrp    x8, #0x100416000
  1000420b4  nop
  1000420b8  ldr     x21, [x8, #0xec8]
  1000420bc  mov     x1, x21
  1000420c0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000420c4  mov     x29, x29
  1000420c8  bl      _objc_retainAutoreleasedReturnValue
  1000420cc  mov     x20, x0
  1000420d0  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  1000420d4  mov     x1, x19
  1000420d8  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000420dc  mov     x29, x29
  1000420e0  bl      _objc_retainAutoreleasedReturnValue
  1000420e4  mov     x22, x0
  1000420e8  mov     x1, x24
  1000420ec  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  1000420f0  mov     x24, x0
  1000420f4  adrp    x8, #0x100417000
  1000420f8  nop
  1000420fc  ldr     x1, [x8, #0x958]
  100042100  mov     x0, x20
  100042104  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100042108  add     w2, w0, w24
  10004210c  adrp    x8, #0x100417000
  100042110  nop
  100042114  ldr     x1, [x8, #0x90]
  100042118  mov     x0, x20
  10004211c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + [[ADInGameStats singleton] totalCoins])]
  100042120  mov     x0, x22
  100042124  bl      _objc_release
  100042128  mov     x0, x20
  10004212c  bl      _objc_release
  100042130  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100042134  mov     x1, x21
  100042138  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004213c  mov     x29, x29
  100042140  bl      _objc_retainAutoreleasedReturnValue
  100042144  mov     x20, x0
  100042148  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  10004214c  mov     x1, x19
  100042150  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100042154  mov     x29, x29
  100042158  bl      _objc_retainAutoreleasedReturnValue
  10004215c  mov     x21, x0
  100042160  mov     x1, x23
  100042164  bl      _objc_msgSend                            ; [[ADInGameStats singleton] diamondLoot]
  100042168  mov     x19, x0
  10004216c  adrp    x8, #0x100417000
  100042170  nop
  100042174  ldr     x1, [x8, #0x960]
  100042178  mov     x0, x20
  10004217c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100042180  add     w2, w0, w19
  100042184  adrp    x8, #0x100417000
  100042188  nop
  10004218c  ldr     x1, [x8, #0x98]
  100042190  mov     x0, x20
  100042194  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] + [[ADInGameStats singleton] diamondLoot])]
  100042198  mov     x0, x21
  10004219c  bl      _objc_release
  1000421a0  mov     x0, x20
  1000421a4  bl      _objc_release
  1000421a8  sub     sp, x29, #0x50
  1000421ac  ldp     x29, x30, [sp, #0x50]
  1000421b0  ldp     x20, x19, [sp, #0x40]
  1000421b4  ldp     x22, x21, [sp, #0x30]
  1000421b8  ldp     x24, x23, [sp, #0x20]
  1000421bc  ldp     x26, x25, [sp, #0x10]
  1000421c0  ldp     x28, x27, [sp], #0x60
  1000421c4  ret
  1000421c8  mov     x19, x0
  1000421cc  mov     x0, x22
  1000421d0  b       loc_1000421dc
  1000421d4  mov     x19, x0
  1000421d8  mov     x0, x21
loc_1000421dc:
  1000421dc  bl      _objc_release
loc_1000421e0:
  1000421e0  mov     x0, x20
  1000421e4  b       loc_100042314
  1000421e8  mov     x19, x0
  1000421ec  b       loc_1000422e4
  1000421f0  mov     x19, x0
  1000421f4  b       loc_100042308
  1000421f8  mov     x19, x0
  1000421fc  b       loc_100042308
  100042200  mov     x19, x0
  100042204  b       loc_100042268
  100042208  mov     x19, x0
  10004220c  b       loc_100042294
  100042210  mov     x19, x0
  100042214  b       loc_1000422e4
  100042218  mov     x19, x0
  10004221c  b       loc_100042308
  100042220  mov     x19, x0
  100042224  b       loc_1000422ec
  100042228  mov     x19, x0
  10004222c  mov     x0, x23
  100042230  b       loc_1000422e0
  100042234  mov     x19, x0
  100042238  b       loc_100042310
  10004223c  b       loc_100042248
  100042240  mov     x19, x0
  100042244  b       loc_100042310
loc_100042248:
  100042248  mov     x19, x0
  10004224c  mov     x0, x23
  100042250  b       loc_100042304
  100042254  mov     x19, x0
  100042258  b       loc_100042310
  10004225c  mov     x19, x0
  100042260  mov     x0, x23
  100042264  bl      _objc_release
loc_100042268:
  100042268  mov     x0, x27
  10004226c  b       loc_10004230c
  100042270  mov     x19, x0
  100042274  b       loc_10004229c
  100042278  mov     x19, x0
  10004227c  b       loc_10004228c
  100042280  mov     x19, x0
  100042284  mov     x0, x23
  100042288  bl      _objc_release
loc_10004228c:
  10004228c  mov     x0, x24
  100042290  bl      _objc_release
loc_100042294:
  100042294  mov     x0, x28
  100042298  bl      _objc_release
loc_10004229c:
  10004229c  mov     x0, x27
  1000422a0  b       loc_100042314
  1000422a4  b       loc_1000422bc
  1000422a8  b       loc_1000422bc
  1000422ac  b       loc_1000422bc
  1000422b0  b       loc_1000422bc
  1000422b4  b       loc_1000422bc
  1000422b8  b       loc_1000422bc
loc_1000422bc:
  1000422bc  mov     x19, x0
  1000422c0  mov     x0, x23
  1000422c4  b       loc_100042314
  1000422c8  mov     x19, x0
  1000422cc  b       loc_100042310
  1000422d0  mov     x19, x0
  1000422d4  b       loc_1000422ec
  1000422d8  mov     x19, x0
  1000422dc  mov     x0, x26
loc_1000422e0:
  1000422e0  bl      _objc_release
loc_1000422e4:
  1000422e4  mov     x0, x25
  1000422e8  bl      _objc_release
loc_1000422ec:
  1000422ec  mov     x0, x24
  1000422f0  b       loc_100042314
  1000422f4  mov     x19, x0
  1000422f8  b       loc_100042310
  1000422fc  mov     x19, x0
  100042300  mov     x0, x21
loc_100042304:
  100042304  bl      _objc_release
loc_100042308:
  100042308  mov     x0, x26
loc_10004230c:
  10004230c  bl      _objc_release
loc_100042310:
  100042310  mov     x0, x25
loc_100042314:
  100042314  bl      _objc_release
  100042318  mov     x0, x19
  10004231c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100042320  mov     x19, x0
  100042324  mov     x0, x21
  100042328  b       loc_100042314
  10004232c  mov     x19, x0
  100042330  mov     x0, x22
  100042334  b       loc_100042314
  100042338  mov     x19, x0
  10004233c  b       loc_1000421e0
  100042340  mov     x19, x0
  100042344  b       loc_1000421e0
  100042348  mov     x19, x0
  10004234c  b       loc_1000421e0

; ======================================================================
; -[ADGameOverWithStatsViewController awakeFromNib]
; address 0x100042350  size 92  kind objc
; ======================================================================
  100042350  stp     x20, x19, [sp, #-0x20]!
  100042354  stp     x29, x30, [sp, #0x10]
  100042358  add     x29, sp, #0x10
  10004235c  adrp    x8, #0x100416000
  100042360  nop
  100042364  ldr     x1, [x8, #0xf18]
  100042368  bl      _objc_msgSend                            ; [self view]
  10004236c  mov     x29, x29
  100042370  bl      _objc_retainAutoreleasedReturnValue
  100042374  mov     x19, x0
  100042378  adrp    x8, #0x100418000
  10004237c  nop
  100042380  ldr     x1, [x8, #0x640]
  100042384  bl      _objc_msgSend                            ; [[self view] layoutIfNeeded]
  100042388  mov     x0, x19
  10004238c  ldp     x29, x30, [sp, #0x10]
  100042390  ldp     x20, x19, [sp], #0x20
  100042394  b       _objc_release
  100042398  mov     x20, x0
  10004239c  mov     x0, x19
  1000423a0  bl      _objc_release
  1000423a4  mov     x0, x20
  1000423a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController animateCoinsAndDiamonds]
; address 0x1000423ac  size 452  kind objc
; ======================================================================
  1000423ac  stp     x26, x25, [sp, #-0x50]!
  1000423b0  stp     x24, x23, [sp, #0x10]
  1000423b4  stp     x22, x21, [sp, #0x20]
  1000423b8  stp     x20, x19, [sp, #0x30]
  1000423bc  stp     x29, x30, [sp, #0x40]
  1000423c0  add     x29, sp, #0x40
  1000423c4  mov     x20, x0
  1000423c8  adrp    x25, #0x10041d000
  1000423cc  ldr     x0, [x25, #0xfc0]                        ; class ADInGameStats
  1000423d0  adrp    x8, #0x100417000
  1000423d4  nop
  1000423d8  ldr     x19, [x8, #0x228]
  1000423dc  mov     x1, x19
  1000423e0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000423e4  mov     x29, x29
  1000423e8  bl      _objc_retainAutoreleasedReturnValue
  1000423ec  mov     x21, x0
  1000423f0  adrp    x8, #0x100418000
  1000423f4  nop
  1000423f8  ldr     x1, [x8, #0x7f0]
  1000423fc  mov     x0, x20
  100042400  bl      _objc_msgSend                            ; [self starCoins]
  100042404  mov     x22, x0
  100042408  adrp    x8, #0x100417000
  10004240c  nop
  100042410  ldr     x23, [x8, #0xdb0]
  100042414  mov     x0, x21
  100042418  mov     x1, x23
  10004241c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  100042420  add     x2, x0, w22, sxtw
  100042424  adrp    x8, #0x100418000
  100042428  nop
  10004242c  ldr     x1, [x8, #0x7f8]
  100042430  mov     x0, x21
  100042434  bl      _objc_msgSend                            ; [[ADInGameStats singleton] setTotalCoins:([[ADInGameStats singleton] totalCoins] + [self starCoins])]
  100042438  mov     x0, x21
  10004243c  bl      _objc_release
  100042440  adrp    x8, #0x100417000
  100042444  nop
  100042448  ldr     x22, [x8, #0x2a8]
  10004244c  mov     x0, x20
  100042450  mov     x1, x22
  100042454  bl      _objc_msgSend                            ; [self statusBarViewController]
  100042458  mov     x29, x29
  10004245c  bl      _objc_retainAutoreleasedReturnValue
  100042460  mov     x21, x0
  100042464  ldr     x0, [x25, #0xfc0]                        ; class ADInGameStats
  100042468  mov     x1, x19
  10004246c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100042470  mov     x29, x29
  100042474  bl      _objc_retainAutoreleasedReturnValue
  100042478  mov     x24, x0
  10004247c  mov     x1, x23
  100042480  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  100042484  mov     x2, x0
  100042488  adrp    x8, #0x100417000
  10004248c  nop
  100042490  ldr     x1, [x8, #0x968]
  100042494  mov     x0, x21
  100042498  bl      _objc_msgSend                            ; [[self statusBarViewController] animateCoins:[[ADInGameStats singleton] totalCoins]]
  10004249c  mov     x0, x24
  1000424a0  bl      _objc_release
  1000424a4  mov     x0, x21
  1000424a8  bl      _objc_release
  1000424ac  mov     x0, x20
  1000424b0  mov     x1, x22
  1000424b4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000424b8  mov     x29, x29
  1000424bc  bl      _objc_retainAutoreleasedReturnValue
  1000424c0  mov     x20, x0
  1000424c4  ldr     x0, [x25, #0xfc0]                        ; class ADInGameStats
  1000424c8  mov     x1, x19
  1000424cc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000424d0  mov     x29, x29
  1000424d4  bl      _objc_retainAutoreleasedReturnValue
  1000424d8  mov     x21, x0
  1000424dc  adrp    x8, #0x100417000
  1000424e0  nop
  1000424e4  ldr     x1, [x8, #0xdb8]
  1000424e8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] diamondLoot]
  1000424ec  mov     x2, x0
  1000424f0  adrp    x8, #0x100418000
  1000424f4  nop
  1000424f8  ldr     x1, [x8, #0x6b8]
  1000424fc  mov     x0, x20
  100042500  bl      _objc_msgSend                            ; [[self statusBarViewController] animateDiamonds:[[ADInGameStats singleton] diamondLoot]]
  100042504  mov     x0, x21
  100042508  bl      _objc_release
  10004250c  mov     x0, x20
  100042510  ldp     x29, x30, [sp, #0x40]
  100042514  ldp     x20, x19, [sp, #0x30]
  100042518  ldp     x22, x21, [sp, #0x20]
  10004251c  ldp     x24, x23, [sp, #0x10]
  100042520  ldp     x26, x25, [sp], #0x50
  100042524  b       _objc_release
  100042528  mov     x19, x0
  10004252c  b       loc_100042554
  100042530  mov     x19, x0
  100042534  mov     x0, x24
  100042538  bl      _objc_release
  10004253c  b       loc_100042554
  100042540  mov     x19, x0
  100042544  mov     x0, x21
  100042548  bl      _objc_release
  10004254c  b       loc_100042560
  100042550  mov     x19, x0
loc_100042554:
  100042554  mov     x0, x21
  100042558  b       loc_100042564
  10004255c  mov     x19, x0
loc_100042560:
  100042560  mov     x0, x20
loc_100042564:
  100042564  bl      _objc_release
  100042568  mov     x0, x19
  10004256c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController viewDidLayoutSubviews]
; address 0x100042570  size 60  kind objc
; ======================================================================
  100042570  stp     x29, x30, [sp, #-0x10]!
  100042574  mov     x29, sp
  100042578  sub     sp, sp, #0x10
  10004257c  str     x0, [sp]
  100042580  adrp    x8, #0x10041e000
  100042584  ldr     x8, [x8, #0xd00]
  100042588  str     x8, [sp, #8]
  10004258c  adrp    x8, #0x100417000
  100042590  nop
  100042594  ldr     x1, [x8, #0x7f0]
  100042598  mov     x0, sp
  10004259c  bl      _objc_msgSendSuper2                      ; [super viewDidLayoutSubviews]
  1000425a0  mov     sp, x29
  1000425a4  ldp     x29, x30, [sp], #0x10
  1000425a8  ret

; ======================================================================
; -[ADGameOverWithStatsViewController checkAllAnimationsAreComplete]
; address 0x1000425ac  size 200  kind objc
; ======================================================================
  1000425ac  stp     x22, x21, [sp, #-0x30]!
  1000425b0  stp     x20, x19, [sp, #0x10]
  1000425b4  stp     x29, x30, [sp, #0x20]
  1000425b8  add     x29, sp, #0x20
  1000425bc  mov     x20, x0
  1000425c0  adrp    x8, #0x100418000
  1000425c4  nop
  1000425c8  ldr     x21, [x8, #0x7e0]
  1000425cc  mov     x1, x21
  1000425d0  bl      _objc_msgSend                            ; [self coinsTotal]
  1000425d4  mov     x29, x29
  1000425d8  bl      _objc_retainAutoreleasedReturnValue
  1000425dc  mov     x19, x0
  1000425e0  adrp    x8, #0x100418000
  1000425e4  nop
  1000425e8  ldr     x1, [x8, #0x800]
  1000425ec  bl      _objc_msgSend                            ; [[self coinsTotal] value]
  1000425f0  cmp     w0, #1
  1000425f4  b.lt    loc_100042630                            ; if ([[self coinsTotal] value] < 1)
  1000425f8  mov     x0, x20
  1000425fc  mov     x1, x21
  100042600  bl      _objc_msgSend                            ; [self coinsTotal]
  100042604  mov     x29, x29
  100042608  bl      _objc_retainAutoreleasedReturnValue
  10004260c  mov     x20, x0
  100042610  adrp    x8, #0x100418000
  100042614  nop
  100042618  ldr     x1, [x8, #0x808]
  10004261c  bl      _objc_msgSend                            ; [[self coinsTotal] didAnimate]
  100042620  mov     x21, x0
  100042624  mov     x0, x20
  100042628  bl      _objc_release
  10004262c  b       loc_100042634
loc_100042630:
  100042630  mov     w21, #1
loc_100042634:
  100042634  mov     x0, x19
  100042638  bl      _objc_release
  10004263c  mov     x0, x21
  100042640  ldp     x29, x30, [sp, #0x20]
  100042644  ldp     x20, x19, [sp, #0x10]
  100042648  ldp     x22, x21, [sp], #0x30
  10004264c  ret
  100042650  mov     x21, x0
  100042654  b       loc_100042664
  100042658  mov     x21, x0
  10004265c  mov     x0, x20
  100042660  bl      _objc_release
loc_100042664:
  100042664  mov     x0, x19
  100042668  bl      _objc_release
  10004266c  mov     x0, x21
  100042670  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController formattedScoreFromInt:]
; address 0x100042674  size 232  kind objc
; ======================================================================
  100042674  stp     x22, x21, [sp, #-0x30]!
  100042678  stp     x20, x19, [sp, #0x10]
  10004267c  stp     x29, x30, [sp, #0x20]
  100042680  add     x29, sp, #0x20
  100042684  mov     x20, x2
  100042688  adrp    x8, #0x10041e000
  10004268c  ldr     x0, [x8, #0x190]                         ; class NSNumberFormatter
  100042690  adrp    x8, #0x100416000
  100042694  nop
  100042698  ldr     x1, [x8, #0xac8]
  10004269c  bl      _objc_msgSend                            ; [NSNumberFormatter alloc]
  1000426a0  adrp    x8, #0x100416000
  1000426a4  nop
  1000426a8  ldr     x1, [x8, #0xab8]
  1000426ac  bl      _objc_msgSend                            ; [[NSNumberFormatter alloc] init]
  1000426b0  mov     x19, x0
  1000426b4  adrp    x8, #0x100418000
  1000426b8  nop
  1000426bc  ldr     x1, [x8, #0x810]
  1000426c0  mov     w2, #1
  1000426c4  bl      _objc_msgSend                            ; [[[NSNumberFormatter alloc] init] setNumberStyle:1]
  1000426c8  adrp    x8, #0x10041d000
  1000426cc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000426d0  adrp    x8, #0x100416000
  1000426d4  nop
  1000426d8  ldr     x1, [x8, #0xec0]
  1000426dc  mov     x2, x20
  1000426e0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:arg1]
  1000426e4  mov     x29, x29
  1000426e8  bl      _objc_retainAutoreleasedReturnValue
  1000426ec  mov     x20, x0
  1000426f0  adrp    x8, #0x100418000
  1000426f4  nop
  1000426f8  ldr     x1, [x8, #0x818]
  1000426fc  mov     x0, x19
  100042700  mov     x2, x20
  100042704  bl      _objc_msgSend                            ; [[[NSNumberFormatter alloc] init] stringFromNumber:[NSNumber numberWithInt:arg1]]
  100042708  mov     x29, x29
  10004270c  bl      _objc_retainAutoreleasedReturnValue
  100042710  mov     x21, x0
  100042714  mov     x0, x20
  100042718  bl      _objc_release
  10004271c  mov     x0, x19
  100042720  bl      _objc_release
  100042724  mov     x0, x21
  100042728  ldp     x29, x30, [sp, #0x20]
  10004272c  ldp     x20, x19, [sp, #0x10]
  100042730  ldp     x22, x21, [sp], #0x30
  100042734  b       _objc_autoreleaseReturnValue
  100042738  mov     x21, x0
  10004273c  b       loc_10004274c
  100042740  mov     x21, x0
  100042744  mov     x0, x20
  100042748  bl      _objc_release
loc_10004274c:
  10004274c  mov     x0, x19
  100042750  bl      _objc_release
  100042754  mov     x0, x21
  100042758  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController checkUnlocksAndPopups]
; address 0x10004275c  size 4  kind objc
; ======================================================================
  10004275c  ret

; ======================================================================
; -[ADGameOverWithStatsViewController viewDidAppear:]
; address 0x100042760  size 92  kind objc
; ======================================================================
  100042760  stp     x20, x19, [sp, #-0x20]!
  100042764  stp     x29, x30, [sp, #0x10]
  100042768  add     x29, sp, #0x10
  10004276c  sub     sp, sp, #0x10
  100042770  mov     x19, x0
  100042774  str     x19, [sp]
  100042778  adrp    x8, #0x10041e000
  10004277c  ldr     x8, [x8, #0xd00]
  100042780  str     x8, [sp, #8]
  100042784  adrp    x8, #0x100417000
  100042788  nop
  10004278c  ldr     x1, [x8, #0x938]
  100042790  mov     x0, sp
  100042794  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  100042798  adrp    x8, #0x100418000
  10004279c  nop
  1000427a0  ldr     x1, [x8, #0x820]
  1000427a4  mov     x0, x19
  1000427a8  bl      _objc_msgSend                            ; [self checkUnlocksAndPopups]
  1000427ac  sub     sp, x29, #0x10
  1000427b0  ldp     x29, x30, [sp, #0x10]
  1000427b4  ldp     x20, x19, [sp], #0x20
  1000427b8  ret

; ======================================================================
; -[ADGameOverWithStatsViewController initScrollView]
; address 0x1000427bc  size 900  kind objc
; ======================================================================
  1000427bc  stp     x28, x27, [sp, #-0x60]!
  1000427c0  stp     x26, x25, [sp, #0x10]
  1000427c4  stp     x24, x23, [sp, #0x20]
  1000427c8  stp     x22, x21, [sp, #0x30]
  1000427cc  stp     x20, x19, [sp, #0x40]
  1000427d0  stp     x29, x30, [sp, #0x50]
  1000427d4  add     x29, sp, #0x50
  1000427d8  sub     sp, sp, #0x30
  1000427dc  mov     x21, x0
  1000427e0  adrp    x27, #0x10041e000
  1000427e4  ldr     x0, [x27, #0x178]                        ; class UISwipeGestureRecognizer
  1000427e8  adrp    x8, #0x100416000
  1000427ec  nop
  1000427f0  ldr     x25, [x8, #0xac8]
  1000427f4  mov     x1, x25
  1000427f8  bl      _objc_msgSend                            ; [UISwipeGestureRecognizer alloc]
  1000427fc  adrp    x8, #0x100418000
  100042800  nop
  100042804  ldr     x3, [x8, #0x828]
  100042808  adrp    x8, #0x100417000
  10004280c  nop
  100042810  ldr     x20, [x8, #0x638]
  100042814  mov     x1, x20
  100042818  mov     x2, x21
  10004281c  bl      _objc_msgSend                            ; [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)]
  100042820  mov     x19, x0
  100042824  adrp    x8, #0x100418000
  100042828  nop
  10004282c  ldr     x22, [x8, #0x708]
  100042830  mov     w2, #2
  100042834  mov     x1, x22
  100042838  bl      _objc_msgSend                            ; [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)] setDirection:2]
  10004283c  adrp    x8, #0x100416000
  100042840  nop
  100042844  ldr     x23, [x8, #0xf18]
  100042848  mov     x0, x21
  10004284c  mov     x1, x23
  100042850  bl      _objc_msgSend                            ; [self view]
  100042854  mov     x29, x29
  100042858  bl      _objc_retainAutoreleasedReturnValue
  10004285c  mov     x26, x0
  100042860  adrp    x8, #0x100417000
  100042864  nop
  100042868  ldr     x24, [x8, #0x668]
  10004286c  mov     x1, x24
  100042870  mov     x2, x19
  100042874  bl      _objc_msgSend                            ; [[self view] addGestureRecognizer:[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)]]
  100042878  mov     x0, x26
  10004287c  bl      _objc_release
  100042880  ldr     x0, [x27, #0x178]                        ; class UISwipeGestureRecognizer
  100042884  mov     x1, x25
  100042888  bl      _objc_msgSend                            ; [UISwipeGestureRecognizer alloc]
  10004288c  adrp    x8, #0x100418000
  100042890  nop
  100042894  ldr     x3, [x8, #0x830]
  100042898  mov     x1, x20
  10004289c  mov     x2, x21
  1000428a0  bl      _objc_msgSend                            ; [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)]
  1000428a4  mov     x20, x0
  1000428a8  mov     w2, #1
  1000428ac  mov     x0, x20
  1000428b0  mov     x1, x22
  1000428b4  bl      _objc_msgSend                            ; [[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)] setDirection:1]
  1000428b8  mov     x0, x21
  1000428bc  mov     x1, x23
  1000428c0  bl      _objc_msgSend                            ; [self view]
  1000428c4  mov     x29, x29
  1000428c8  bl      _objc_retainAutoreleasedReturnValue
  1000428cc  mov     x22, x0
  1000428d0  mov     x1, x24
  1000428d4  mov     x2, x20
  1000428d8  bl      _objc_msgSend                            ; [[self view] addGestureRecognizer:[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)]]
  1000428dc  mov     x0, x22
  1000428e0  bl      _objc_release
  1000428e4  adrp    x8, #0x100418000
  1000428e8  nop
  1000428ec  ldr     x22, [x8, #0x838]
  1000428f0  mov     x0, x21
  1000428f4  mov     x1, x22
  1000428f8  bl      _objc_msgSend                            ; [self contentScrollView]
  1000428fc  mov     x29, x29
  100042900  bl      _objc_retainAutoreleasedReturnValue
  100042904  mov     x23, x0
  100042908  adrp    x8, #0x100418000
  10004290c  nop
  100042910  ldr     x1, [x8, #0x760]
  100042914  mov     x0, x21
  100042918  bl      _objc_msgSend                            ; [self contentView]
  10004291c  mov     x29, x29
  100042920  bl      _objc_retainAutoreleasedReturnValue
  100042924  mov     x24, x0
  100042928  adrp    x8, #0x100416000
  10004292c  nop
  100042930  ldr     x1, [x8, #0xf20]
  100042934  mov     x0, x23
  100042938  mov     x2, x24
  10004293c  bl      _objc_msgSend                            ; [[self contentScrollView] addSubview:[self contentView]]
  100042940  mov     x0, x24
  100042944  bl      _objc_release
  100042948  mov     x0, x23
  10004294c  bl      _objc_release
  100042950  mov     x0, x21
  100042954  mov     x1, x22
  100042958  bl      _objc_msgSend                            ; [self contentScrollView]
  10004295c  mov     x29, x29
  100042960  bl      _objc_retainAutoreleasedReturnValue
  100042964  mov     x23, x0
  100042968  mov     x0, x21
  10004296c  mov     x1, x22
  100042970  bl      _objc_msgSend                            ; [self contentScrollView]
  100042974  mov     x29, x29
  100042978  bl      _objc_retainAutoreleasedReturnValue
  10004297c  mov     x22, x0
  100042980  adrp    x8, #0x100416000
  100042984  nop
  100042988  ldr     x1, [x8, #0xf38]
  10004298c  bl      _objc_msgSend                            ; [[self contentScrollView] frame]
  100042990  adrp    x8, #0x100418000
  100042994  nop
  100042998  ldr     x1, [x8, #0x4f8]
  10004299c  movi    v1.16b, #0
  1000429a0  mov     x0, x23
  1000429a4  mov     v0.16b, v2.16b
  1000429a8  mov     w2, #0
  1000429ac  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{[[self contentScrollView] frame].2, 0} animated:0]
  1000429b0  mov     x0, x22
  1000429b4  bl      _objc_release
  1000429b8  mov     x0, x23
  1000429bc  bl      _objc_release
  1000429c0  adrp    x8, #0x1003b0000
  1000429c4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000429c8  mov     w9, #-0x3e000000
  1000429cc  str     x8, [sp, #8]
  1000429d0  stp     w9, wzr, [sp, #0x10]
  1000429d4  adr     x8, #0x100042b40                         ; &-[ADGameOverWithStatsViewController initScrollView]_block_invoke
  1000429d8  nop
  1000429dc  str     x8, [sp, #0x18]
  1000429e0  adrp    x8, #0x1003b1000
  1000429e4  add     x8, x8, #0x670                           ; &d_1003b1670
  1000429e8  str     x8, [sp, #0x20]
  1000429ec  mov     x0, x21
  1000429f0  bl      _objc_retain
  1000429f4  mov     x21, x0
  1000429f8  str     x21, [sp, #0x28]
  1000429fc  adrp    x0, #0x1003b0000
  100042a00  ldr     x0, [x0, #0x1e8]                         ; __dispatch_main_q
  100042a04  add     x1, sp, #8
  100042a08  bl      _dispatch_async                          ; dispatch_async(__dispatch_main_q, ^{-[ADGameOverWithStatsViewController initScrollView]_block_invoke captures +0x20=self})
  100042a0c  adrp    x8, #0x100418000
  100042a10  nop
  100042a14  ldr     x1, [x8, #0x840]
  100042a18  mov     x0, x21
  100042a1c  bl      _objc_msgSend                            ; [self missionsTitle]
  100042a20  mov     x29, x29
  100042a24  bl      _objc_retainAutoreleasedReturnValue
  100042a28  mov     x23, x0
  100042a2c  adrp    x8, #0x100416000
  100042a30  nop
  100042a34  ldr     x22, [x8, #0xb88]
  100042a38  mov     x1, x22
  100042a3c  bl      _objc_msgSend                            ; [[self missionsTitle] setupAsTitle]
  100042a40  mov     x0, x23
  100042a44  bl      _objc_release
  100042a48  adrp    x8, #0x100418000
  100042a4c  nop
  100042a50  ldr     x1, [x8, #0x848]
  100042a54  mov     x0, x21
  100042a58  bl      _objc_msgSend                            ; [self challengeTitle]
  100042a5c  mov     x29, x29
  100042a60  bl      _objc_retainAutoreleasedReturnValue
  100042a64  mov     x23, x0
  100042a68  mov     x1, x22
  100042a6c  bl      _objc_msgSend                            ; [[self challengeTitle] setupAsTitle]
  100042a70  mov     x0, x23
  100042a74  bl      _objc_release
  100042a78  ldr     x0, [sp, #0x28]
  100042a7c  bl      _objc_release
  100042a80  mov     x0, x20
  100042a84  bl      _objc_release
  100042a88  mov     x0, x19
  100042a8c  bl      _objc_release
  100042a90  sub     sp, x29, #0x50
  100042a94  ldp     x29, x30, [sp, #0x50]
  100042a98  ldp     x20, x19, [sp, #0x40]
  100042a9c  ldp     x22, x21, [sp, #0x30]
  100042aa0  ldp     x24, x23, [sp, #0x20]
  100042aa4  ldp     x26, x25, [sp, #0x10]
  100042aa8  ldp     x28, x27, [sp], #0x60
  100042aac  ret
  100042ab0  mov     x21, x0
  100042ab4  b       loc_100042b30
  100042ab8  mov     x21, x0
  100042abc  b       loc_100042b28
  100042ac0  mov     x21, x0
  100042ac4  mov     x0, x22
  100042ac8  b       loc_100042afc
  100042acc  mov     x21, x0
  100042ad0  b       loc_100042b20
  100042ad4  mov     x21, x0
  100042ad8  mov     x0, x26
  100042adc  b       loc_100042b2c
  100042ae0  mov     x21, x0
  100042ae4  mov     x0, x22
  100042ae8  b       loc_100042b24
  100042aec  mov     x21, x0
  100042af0  b       loc_100042b08
  100042af4  mov     x21, x0
  100042af8  mov     x0, x24
loc_100042afc:
  100042afc  bl      _objc_release
  100042b00  b       loc_100042b08
  100042b04  mov     x21, x0
loc_100042b08:
  100042b08  mov     x0, x23
  100042b0c  b       loc_100042b24
  100042b10  b       loc_100042b14
loc_100042b14:
  100042b14  mov     x21, x0
  100042b18  mov     x0, x23
  100042b1c  bl      _objc_release
loc_100042b20:
  100042b20  ldr     x0, [sp, #0x28]
loc_100042b24:
  100042b24  bl      _objc_release
loc_100042b28:
  100042b28  mov     x0, x20
loc_100042b2c:
  100042b2c  bl      _objc_release
loc_100042b30:
  100042b30  mov     x0, x19
  100042b34  bl      _objc_release
  100042b38  mov     x0, x21
  100042b3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController initScrollView]_block_invoke
; address 0x100042b40  size 192  kind block
; ======================================================================
  100042b40  stp     x22, x21, [sp, #-0x30]!
  100042b44  stp     x20, x19, [sp, #0x10]
  100042b48  stp     x29, x30, [sp, #0x20]
  100042b4c  add     x29, sp, #0x20
  100042b50  mov     x20, x0
  100042b54  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100042b58  adrp    x8, #0x100418000
  100042b5c  nop
  100042b60  ldr     x21, [x8, #0x838]
  100042b64  mov     x1, x21
  100042b68  bl      _objc_msgSend                            ; [self contentScrollView]
  100042b6c  mov     x29, x29
  100042b70  bl      _objc_retainAutoreleasedReturnValue
  100042b74  mov     x19, x0
  100042b78  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100042b7c  mov     x1, x21
  100042b80  bl      _objc_msgSend                            ; [self contentScrollView]
  100042b84  mov     x29, x29
  100042b88  bl      _objc_retainAutoreleasedReturnValue
  100042b8c  mov     x20, x0
  100042b90  adrp    x8, #0x100416000
  100042b94  nop
  100042b98  ldr     x1, [x8, #0xf38]
  100042b9c  bl      _objc_msgSend                            ; [[self contentScrollView] frame]
  100042ba0  adrp    x8, #0x100418000
  100042ba4  nop
  100042ba8  ldr     x1, [x8, #0x4f8]
  100042bac  movi    v1.16b, #0
  100042bb0  mov     x0, x19
  100042bb4  mov     v0.16b, v2.16b
  100042bb8  mov     w2, #0
  100042bbc  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{[[self contentScrollView] frame].2, 0} animated:0]
  100042bc0  mov     x0, x20
  100042bc4  bl      _objc_release
  100042bc8  mov     x0, x19
  100042bcc  ldp     x29, x30, [sp, #0x20]
  100042bd0  ldp     x20, x19, [sp, #0x10]
  100042bd4  ldp     x22, x21, [sp], #0x30
  100042bd8  b       _objc_release
  100042bdc  mov     x21, x0
  100042be0  mov     x0, x20
  100042be4  bl      _objc_release
  100042be8  b       loc_100042bf0
  100042bec  mov     x21, x0
loc_100042bf0:
  100042bf0  mov     x0, x19
  100042bf4  bl      _objc_release
  100042bf8  mov     x0, x21
  100042bfc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100042c00
; address 0x100042c00  size 8  kind sub
; ======================================================================
  100042c00  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100042c04  b       _objc_retain

; ======================================================================
; sub_100042c08
; address 0x100042c08  size 8  kind sub
; ======================================================================
  100042c08  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100042c0c  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController loadMissions]
; address 0x100042c10  size 1740  kind objc
; ======================================================================
  100042c10  stp     x28, x27, [sp, #-0x60]!
  100042c14  stp     x26, x25, [sp, #0x10]
  100042c18  stp     x24, x23, [sp, #0x20]
  100042c1c  stp     x22, x21, [sp, #0x30]
  100042c20  stp     x20, x19, [sp, #0x40]
  100042c24  stp     x29, x30, [sp, #0x50]
  100042c28  add     x29, sp, #0x50
  100042c2c  sub     sp, sp, #0x40
  100042c30  mov     x21, x0
  100042c34  adrp    x8, #0x100418000
  100042c38  nop
  100042c3c  ldr     x23, [x8, #0x850]
  100042c40  mov     x1, x23
  100042c44  bl      _objc_msgSend                            ; [self missionView]
  100042c48  mov     x29, x29
  100042c4c  bl      _objc_retainAutoreleasedReturnValue
  100042c50  mov     x19, x0
  100042c54  bl      _objc_release
  100042c58  cbz     x19, loc_10004318c                       ; if ([self missionView] == 0)
  100042c5c  adrp    x8, #0x10041d000
  100042c60  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100042c64  adrp    x8, #0x100416000
  100042c68  nop
  100042c6c  ldr     x24, [x8, #0xac8]
  100042c70  mov     x1, x24
  100042c74  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100042c78  adrp    x8, #0x100416000
  100042c7c  nop
  100042c80  ldr     x1, [x8, #0xab8]
  100042c84  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100042c88  adrp    x8, #0x10041f000
  100042c8c  ldrsw   x25, [x8, #0x908]                        ; ivar offset ADGameOverWithStatsViewController.missionsViewControllerArray (+0x140)
  100042c90  ldr     x8, [x21, x25]                           ; x8 = self->missionsViewControllerArray
  100042c94  str     x0, [x21, x25]                           ; self->missionsViewControllerArray = [[NSMutableArray alloc] init]
  100042c98  mov     x0, x8
  100042c9c  bl      _objc_release
  100042ca0  adrp    x8, #0x10041d000
  100042ca4  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100042ca8  adrp    x8, #0x100417000
  100042cac  nop
  100042cb0  ldr     x1, [x8, #0x848]
  100042cb4  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  100042cb8  mov     x29, x29
  100042cbc  bl      _objc_retainAutoreleasedReturnValue
  100042cc0  mov     x20, x0
  100042cc4  adrp    x8, #0x100416000
  100042cc8  nop
  100042ccc  ldr     x1, [x8, #0xd88]
  100042cd0  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] activeMissions]
  100042cd4  mov     x29, x29
  100042cd8  bl      _objc_retainAutoreleasedReturnValue
  100042cdc  mov     x19, x0
  100042ce0  str     x19, [sp, #0x38]
  100042ce4  mov     x0, x20
  100042ce8  bl      _objc_release
  100042cec  adrp    x8, #0x100416000
  100042cf0  nop
  100042cf4  ldr     x1, [x8, #0xe30]
  100042cf8  mov     x0, x19
  100042cfc  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] count]
  100042d00  cmp     x0, #4
  100042d04  b.lo    loc_100042d2c                            ; if ([[[ADMissionManager sharedMissionManager] activeMissions] count] <u 4)
  100042d08  adrp    x8, #0x10041d000
  100042d0c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100042d10  adrp    x8, #0x100417000
  100042d14  nop
  100042d18  ldr     x1, [x8, #0x260]
  100042d1c  mov     x3, #0
  100042d20  adrp    x2, #0x1003bc000
  100042d24  add     x2, x2, #0xd10                           ; @"There should never be more than 3 missions active at any one time!!"
  100042d28  bl      _objc_msgSend                            ; [NSException raise:@"There should never be more than 3 missions active at any one time!!" format:0]
loc_100042d2c:
  100042d2c  adrp    x8, #0x10041e000
  100042d30  ldr     x0, [x8, #0x88]                          ; class ADMissionForTopbarViewController
  100042d34  mov     x1, x24
  100042d38  bl      _objc_msgSend                            ; [ADMissionForTopbarViewController alloc]
  100042d3c  mov     x19, x0
  100042d40  adrp    x8, #0x100416000
  100042d44  nop
  100042d48  ldr     x1, [x8, #0xc30]
  100042d4c  str     x1, [sp, #0x28]
  100042d50  mov     x2, #0
  100042d54  ldr     x0, [sp, #0x38]
  100042d58  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:0]
  100042d5c  mov     x29, x29
  100042d60  bl      _objc_retainAutoreleasedReturnValue
  100042d64  mov     x20, x0
  100042d68  adrp    x8, #0x100417000
  100042d6c  nop
  100042d70  ldr     x1, [x8, #0x850]
  100042d74  str     x1, [sp, #0x20]
  100042d78  mov     w3, #1
  100042d7c  mov     x0, x19
  100042d80  mov     x2, x20
  100042d84  bl      _objc_msgSend                            ; [[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:0] skippable:1]
  100042d88  mov     x27, x0
  100042d8c  mov     x0, x20
  100042d90  bl      _objc_release
  100042d94  ldr     x0, [x21, x25]                           ; x0 = self->missionsViewControllerArray
  100042d98  adrp    x8, #0x100416000
  100042d9c  nop
  100042da0  ldr     x1, [x8, #0xd90]
  100042da4  str     x1, [sp, #0x18]
  100042da8  mov     x2, x27
  100042dac  bl      _objc_msgSend                            ; [self->missionsViewControllerArray addObject:[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:0] skippable:1]]
  100042db0  mov     x0, x21
  100042db4  mov     x1, x23
  100042db8  bl      _objc_msgSend                            ; [self missionView]
  100042dbc  mov     x29, x29
  100042dc0  bl      _objc_retainAutoreleasedReturnValue
  100042dc4  mov     x22, x0
  100042dc8  adrp    x8, #0x100416000
  100042dcc  nop
  100042dd0  ldr     x26, [x8, #0xf18]
  100042dd4  mov     x0, x27
  100042dd8  mov     x1, x26
  100042ddc  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:0] skippable:1] view]
  100042de0  mov     x29, x29
  100042de4  bl      _objc_retainAutoreleasedReturnValue
  100042de8  mov     x20, x0
  100042dec  adrp    x8, #0x100416000
  100042df0  nop
  100042df4  ldr     x19, [x8, #0xf20]
  100042df8  mov     x0, x22
  100042dfc  mov     x1, x19
  100042e00  mov     x2, x20
  100042e04  bl      _objc_msgSend                            ; [[self missionView] addSubview:[[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:0] skippable:1] view]]
  100042e08  mov     x0, x20
  100042e0c  bl      _objc_release
  100042e10  mov     x0, x22
  100042e14  bl      _objc_release
  100042e18  mov     x0, x27
  100042e1c  mov     x1, x26
  100042e20  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:0] skippable:1] view]
  100042e24  str     x27, [sp, #0x30]
  100042e28  mov     x29, x29
  100042e2c  bl      _objc_retainAutoreleasedReturnValue
  100042e30  mov     x27, x0
  100042e34  adrp    x8, #0x100418000
  100042e38  nop
  100042e3c  ldr     x20, [x8, #0x858]
  100042e40  mov     x0, x21
  100042e44  mov     x1, x20
  100042e48  bl      _objc_msgSend                            ; [self missionPlaceholder1]
  100042e4c  str     x20, [sp]
  100042e50  mov     x29, x29
  100042e54  bl      _objc_retainAutoreleasedReturnValue
  100042e58  mov     x28, x0
  100042e5c  adrp    x8, #0x100416000
  100042e60  nop
  100042e64  ldr     x1, [x8, #0xf38]
  100042e68  str     x1, [sp, #8]
  100042e6c  bl      _objc_msgSend                            ; [[self missionPlaceholder1] frame]
  100042e70  adrp    x8, #0x100417000
  100042e74  nop
  100042e78  ldr     x22, [x8, #0x7b8]
  100042e7c  mov     x0, x27
  100042e80  mov     x1, x22
  100042e84  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:0] skippable:1] view] setFrame:{[[self missionPlaceholder1] frame].0, [[self missionPlaceholder1] frame].1, [[self missionPlaceholder1] frame].2, [[self missionPlaceholder1] frame].3}]
  100042e88  mov     x0, x28
  100042e8c  bl      _objc_release
  100042e90  mov     x0, x27
  100042e94  bl      _objc_release
  100042e98  adrp    x8, #0x10041e000
  100042e9c  ldr     x0, [x8, #0x88]                          ; class ADMissionForTopbarViewController
  100042ea0  mov     x1, x24
  100042ea4  ldr     x27, [sp, #0x30]
  100042ea8  bl      _objc_msgSend                            ; [ADMissionForTopbarViewController alloc]
  100042eac  mov     x20, x0
  100042eb0  mov     w2, #1
  100042eb4  ldr     x0, [sp, #0x38]
  100042eb8  ldr     x1, [sp, #0x28]
  100042ebc  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:1]
  100042ec0  mov     x29, x29
  100042ec4  bl      _objc_retainAutoreleasedReturnValue
  100042ec8  mov     x27, x0
  100042ecc  mov     w3, #1
  100042ed0  mov     x0, x20
  100042ed4  ldr     x1, [sp, #0x20]
  100042ed8  mov     x2, x27
  100042edc  bl      _objc_msgSend                            ; [[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:1] skippable:1]
  100042ee0  mov     x20, x0
  100042ee4  mov     x0, x27
  100042ee8  bl      _objc_release
  100042eec  ldr     x0, [x21, x25]                           ; x0 = self->missionsViewControllerArray
  100042ef0  ldr     x1, [sp, #0x18]
  100042ef4  mov     x2, x20
  100042ef8  str     x20, [sp, #0x10]
  100042efc  bl      _objc_msgSend                            ; [self->missionsViewControllerArray addObject:[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:1] skippable:1]]
  100042f00  mov     x0, x21
  100042f04  mov     x1, x23
  100042f08  bl      _objc_msgSend                            ; [self missionView]
  100042f0c  mov     x29, x29
  100042f10  bl      _objc_retainAutoreleasedReturnValue
  100042f14  mov     x27, x0
  100042f18  ldr     x28, [sp, #0x10]
  100042f1c  mov     x0, x28
  100042f20  mov     x1, x26
  100042f24  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:1] skippable:1] view]
  100042f28  mov     x29, x29
  100042f2c  bl      _objc_retainAutoreleasedReturnValue
  100042f30  mov     x20, x0
  100042f34  mov     x0, x27
  100042f38  mov     x1, x19
  100042f3c  mov     x2, x20
  100042f40  bl      _objc_msgSend                            ; [[self missionView] addSubview:[[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:1] skippable:1] view]]
  100042f44  mov     x0, x20
  100042f48  bl      _objc_release
  100042f4c  mov     x0, x27
  100042f50  bl      _objc_release
  100042f54  mov     x0, x28
  100042f58  mov     x1, x26
  100042f5c  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:1] skippable:1] view]
  100042f60  mov     x29, x29
  100042f64  bl      _objc_retainAutoreleasedReturnValue
  100042f68  mov     x28, x0
  100042f6c  adrp    x8, #0x100418000
  100042f70  nop
  100042f74  ldr     x27, [x8, #0x860]
  100042f78  mov     x0, x21
  100042f7c  mov     x1, x27
  100042f80  bl      _objc_msgSend                            ; [self missionPlaceholder2]
  100042f84  mov     x29, x29
  100042f88  bl      _objc_retainAutoreleasedReturnValue
  100042f8c  mov     x20, x0
  100042f90  ldr     x1, [sp, #8]
  100042f94  bl      _objc_msgSend                            ; [[self missionPlaceholder2] frame]
  100042f98  mov     x0, x28
  100042f9c  mov     x1, x22
  100042fa0  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:1] skippable:1] view] setFrame:{[[self missionPlaceholder2] frame].0, [[self missionPlaceholder2] frame].1, [[self missionPlaceholder2] frame].2, [[self missionPlaceholder2] frame].3}]
  100042fa4  mov     x0, x20
  100042fa8  bl      _objc_release
  100042fac  mov     x0, x28
  100042fb0  bl      _objc_release
  100042fb4  adrp    x8, #0x10041e000
  100042fb8  ldr     x0, [x8, #0x88]                          ; class ADMissionForTopbarViewController
  100042fbc  mov     x1, x24
  100042fc0  bl      _objc_msgSend                            ; [ADMissionForTopbarViewController alloc]
  100042fc4  mov     x20, x0
  100042fc8  mov     w2, #2
  100042fcc  ldr     x0, [sp, #0x38]
  100042fd0  ldr     x1, [sp, #0x28]
  100042fd4  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:2]
  100042fd8  mov     x29, x29
  100042fdc  bl      _objc_retainAutoreleasedReturnValue
  100042fe0  mov     x28, x0
  100042fe4  mov     w3, #1
  100042fe8  mov     x0, x20
  100042fec  ldr     x1, [sp, #0x20]
  100042ff0  mov     x2, x28
  100042ff4  bl      _objc_msgSend                            ; [[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:2] skippable:1]
  100042ff8  mov     x24, x0
  100042ffc  mov     x0, x28
  100043000  bl      _objc_release
  100043004  ldr     x0, [x21, x25]                           ; x0 = self->missionsViewControllerArray
  100043008  ldr     x1, [sp, #0x18]
  10004300c  mov     x2, x24
  100043010  bl      _objc_msgSend                            ; [self->missionsViewControllerArray addObject:[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:2] skippable:1]]
  100043014  mov     x0, x21
  100043018  mov     x1, x23
  10004301c  bl      _objc_msgSend                            ; [self missionView]
  100043020  mov     x29, x29
  100043024  bl      _objc_retainAutoreleasedReturnValue
  100043028  mov     x20, x0
  10004302c  mov     x0, x24
  100043030  mov     x1, x26
  100043034  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:2] skippable:1] view]
  100043038  mov     x29, x29
  10004303c  bl      _objc_retainAutoreleasedReturnValue
  100043040  mov     x23, x0
  100043044  mov     x0, x20
  100043048  mov     x1, x19
  10004304c  mov     x2, x23
  100043050  bl      _objc_msgSend                            ; [[self missionView] addSubview:[[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:2] skippable:1] view]]
  100043054  mov     x0, x23
  100043058  bl      _objc_release
  10004305c  mov     x0, x20
  100043060  bl      _objc_release
  100043064  mov     x0, x24
  100043068  mov     x1, x26
  10004306c  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:2] skippable:1] view]
  100043070  mov     x29, x29
  100043074  bl      _objc_retainAutoreleasedReturnValue
  100043078  mov     x20, x0
  10004307c  adrp    x8, #0x100418000
  100043080  nop
  100043084  ldr     x19, [x8, #0x868]
  100043088  mov     x0, x21
  10004308c  mov     x1, x19
  100043090  bl      _objc_msgSend                            ; [self missionPlaceholder3]
  100043094  mov     x29, x29
  100043098  bl      _objc_retainAutoreleasedReturnValue
  10004309c  mov     x23, x0
  1000430a0  ldr     x1, [sp, #8]
  1000430a4  bl      _objc_msgSend                            ; [[self missionPlaceholder3] frame]
  1000430a8  mov     x0, x20
  1000430ac  mov     x1, x22
  1000430b0  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:2] skippable:1] view] setFrame:{[[self missionPlaceholder3] frame].0, [[self missionPlaceholder3] frame].1, [[self missionPlaceholder3] frame].2, [[self missionPlaceholder3] frame].3}]
  1000430b4  mov     x0, x23
  1000430b8  bl      _objc_release
  1000430bc  mov     x0, x20
  1000430c0  bl      _objc_release
  1000430c4  mov     x0, x21
  1000430c8  ldr     x1, [sp]
  1000430cc  bl      _objc_msgSend                            ; [self missionPlaceholder1]
  1000430d0  mov     x29, x29
  1000430d4  bl      _objc_retainAutoreleasedReturnValue
  1000430d8  mov     x22, x0
  1000430dc  adrp    x8, #0x100417000
  1000430e0  nop
  1000430e4  ldr     x20, [x8, #0x1d0]
  1000430e8  mov     x1, x20
  1000430ec  bl      _objc_msgSend                            ; [[self missionPlaceholder1] removeFromSuperview]
  1000430f0  mov     x0, x22
  1000430f4  bl      _objc_release
  1000430f8  mov     x0, x21
  1000430fc  mov     x1, x27
  100043100  bl      _objc_msgSend                            ; [self missionPlaceholder2]
  100043104  mov     x29, x29
  100043108  bl      _objc_retainAutoreleasedReturnValue
  10004310c  mov     x22, x0
  100043110  mov     x1, x20
  100043114  bl      _objc_msgSend                            ; [[self missionPlaceholder2] removeFromSuperview]
  100043118  mov     x0, x22
  10004311c  bl      _objc_release
  100043120  mov     x0, x21
  100043124  mov     x1, x19
  100043128  bl      _objc_msgSend                            ; [self missionPlaceholder3]
  10004312c  mov     x29, x29
  100043130  bl      _objc_retainAutoreleasedReturnValue
  100043134  mov     x21, x0
  100043138  mov     x1, x20
  10004313c  ldr     x19, [sp, #0x30]
  100043140  ldr     x20, [sp, #0x10]
  100043144  bl      _objc_msgSend                            ; [[self missionPlaceholder3] removeFromSuperview]
  100043148  mov     x0, x21
  10004314c  bl      _objc_release
  100043150  mov     x0, x24
  100043154  bl      _objc_release
  100043158  mov     x0, x20
  10004315c  bl      _objc_release
  100043160  mov     x0, x19
  100043164  bl      _objc_release
  100043168  ldr     x0, [sp, #0x38]
  10004316c  sub     sp, x29, #0x50
  100043170  ldp     x29, x30, [sp, #0x50]
  100043174  ldp     x20, x19, [sp, #0x40]
  100043178  ldp     x22, x21, [sp, #0x30]
  10004317c  ldp     x24, x23, [sp, #0x20]
  100043180  ldp     x26, x25, [sp, #0x10]
  100043184  ldp     x28, x27, [sp], #0x60
  100043188  b       _objc_release
loc_10004318c:
  10004318c  sub     sp, x29, #0x50
  100043190  ldp     x29, x30, [sp, #0x50]
  100043194  ldp     x20, x19, [sp, #0x40]
  100043198  ldp     x22, x21, [sp, #0x30]
  10004319c  ldp     x24, x23, [sp, #0x20]
  1000431a0  ldp     x26, x25, [sp, #0x10]
  1000431a4  ldp     x28, x27, [sp], #0x60
  1000431a8  ret
  1000431ac  mov     x19, x0
  1000431b0  b       loc_1000432b4
  1000431b4  str     x27, [sp, #0x30]
  1000431b8  mov     x19, x0
  1000431bc  b       loc_1000432c4
  1000431c0  mov     x19, x0
  1000431c4  b       loc_1000432bc
  1000431c8  mov     x19, x0
  1000431cc  b       loc_1000432cc
  1000431d0  mov     x19, x0
  1000431d4  mov     x0, x28
  1000431d8  bl      _objc_release
  1000431dc  b       loc_10004323c
  1000431e0  mov     x19, x0
  1000431e4  mov     x0, x20
  1000431e8  bl      _objc_release
  1000431ec  b       loc_10004326c
  1000431f0  b       loc_10004327c
  1000431f4  mov     x19, x0
  1000431f8  mov     x0, x20
  1000431fc  b       loc_1000432d0
  100043200  mov     x19, x0
  100043204  mov     x0, x20
  100043208  b       loc_1000432c8
  10004320c  str     x27, [sp, #0x30]
  100043210  mov     x19, x0
  100043214  b       loc_100043228
  100043218  str     x27, [sp, #0x30]
  10004321c  mov     x19, x0
  100043220  mov     x0, x20
  100043224  bl      _objc_release
loc_100043228:
  100043228  mov     x0, x22
  10004322c  b       loc_1000432c0
  100043230  mov     x19, x0
  100043234  b       loc_10004323c
  100043238  mov     x19, x0
loc_10004323c:
  10004323c  mov     x0, x27
  100043240  b       loc_1000432c0
  100043244  mov     x19, x0
  100043248  b       loc_100043258
  10004324c  mov     x19, x0
  100043250  mov     x0, x20
  100043254  bl      _objc_release
loc_100043258:
  100043258  mov     x0, x27
  10004325c  b       loc_1000432b8
  100043260  mov     x19, x0
  100043264  b       loc_10004326c
  100043268  mov     x19, x0
loc_10004326c:
  10004326c  mov     x0, x28
  100043270  b       loc_1000432b8
  100043274  mov     x19, x0
  100043278  b       loc_100043290
loc_10004327c:
  10004327c  mov     x19, x0
  100043280  mov     x0, x23
  100043284  bl      _objc_release
  100043288  b       loc_100043290
  10004328c  mov     x19, x0
loc_100043290:
  100043290  mov     x0, x20
  100043294  b       loc_1000432b0
  100043298  b       loc_10004329c
loc_10004329c:
  10004329c  mov     x19, x0
  1000432a0  mov     x0, x22
  1000432a4  b       loc_1000432b0
  1000432a8  mov     x19, x0
  1000432ac  mov     x0, x21
loc_1000432b0:
  1000432b0  bl      _objc_release
loc_1000432b4:
  1000432b4  mov     x0, x24
loc_1000432b8:
  1000432b8  bl      _objc_release
loc_1000432bc:
  1000432bc  ldr     x0, [sp, #0x10]
loc_1000432c0:
  1000432c0  bl      _objc_release
loc_1000432c4:
  1000432c4  ldr     x0, [sp, #0x30]
loc_1000432c8:
  1000432c8  bl      _objc_release
loc_1000432cc:
  1000432cc  ldr     x0, [sp, #0x38]
loc_1000432d0:
  1000432d0  bl      _objc_release
  1000432d4  mov     x0, x19
  1000432d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController timeStringFromSeconds:]
; address 0x1000432dc  size 224  kind objc
; ======================================================================
  1000432dc  stp     x22, x21, [sp, #-0x30]!
  1000432e0  stp     x20, x19, [sp, #0x10]
  1000432e4  stp     x29, x30, [sp, #0x20]
  1000432e8  add     x29, sp, #0x20
  1000432ec  sub     sp, sp, #0x10
  1000432f0  sxtw    x8, w2
  1000432f4  mov     x9, #-0x77770001
  1000432f8  movk    x9, #0x8889
  1000432fc  mul     x8, x8, x9
  100043300  lsr     x8, x8, #0x20
  100043304  add     w8, w8, w2
  100043308  asr     w9, w8, #5
  10004330c  add     w21, w9, w8, lsr #31                     ; t1 = (((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >> 5) + ((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >>> 31))
  100043310  mov     w8, #0x3c
  100043314  msub    w8, w21, w8, w2
  100043318  adrp    x22, #0x10041d000
  10004331c  adrp    x9, #0x1003b9000
  100043320  add     x9, x9, #0x870                           ; @""
  100043324  adrp    x10, #0x1003bb000
  100043328  add     x10, x10, #0xe30                         ; @"0"
  10004332c  ldr     x0, [x22, #0xf78]                        ; class NSString
  100043330  cmp     w8, #0xa
  100043334  csel    x9, x10, x9, lt
  100043338  adrp    x10, #0x100416000
  10004333c  nop
  100043340  ldr     x20, [x10, #0xee8]
  100043344  stp     x9, x8, [sp]
  100043348  adrp    x2, #0x1003bc000
  10004334c  add     x2, x2, #0xd30                           ; @"%@%i"
  100043350  mov     x1, x20
  100043354  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 - t1 * 60)]
  100043358  mov     x29, x29
  10004335c  bl      _objc_retainAutoreleasedReturnValue
  100043360  mov     x19, x0
  100043364  ldr     x0, [x22, #0xf78]                        ; class NSString
  100043368  stp     x21, x19, [sp]
  10004336c  adrp    x2, #0x1003bc000
  100043370  add     x2, x2, #0xd50                           ; @"%i:%@"
  100043374  mov     x1, x20
  100043378  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i:%@", t1, [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 …]
  10004337c  mov     x29, x29
  100043380  bl      _objc_retainAutoreleasedReturnValue
  100043384  mov     x20, x0
  100043388  mov     x0, x19
  10004338c  bl      _objc_release
  100043390  mov     x0, x20
  100043394  sub     sp, x29, #0x20
  100043398  ldp     x29, x30, [sp, #0x20]
  10004339c  ldp     x20, x19, [sp, #0x10]
  1000433a0  ldp     x22, x21, [sp], #0x30
  1000433a4  b       _objc_autoreleaseReturnValue
  1000433a8  mov     x20, x0
  1000433ac  mov     x0, x19
  1000433b0  bl      _objc_release
  1000433b4  mov     x0, x20
  1000433b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController animateButtonsInAndrestoreControl]
; address 0x1000433bc  size 4  kind objc
; ======================================================================
  1000433bc  ret

; ======================================================================
; -[ADGameOverWithStatsViewController swipeLeft]
; address 0x1000433c0  size 80  kind objc
; ======================================================================
  1000433c0  stp     x20, x19, [sp, #-0x20]!
  1000433c4  stp     x29, x30, [sp, #0x10]
  1000433c8  add     x29, sp, #0x10
  1000433cc  mov     x19, x0
  1000433d0  adrp    x8, #0x100418000
  1000433d4  nop
  1000433d8  ldr     x1, [x8, #0x870]
  1000433dc  bl      _objc_msgSend                            ; [self checkAllAnimationsAreComplete]
  1000433e0  cbz     w0, loc_100043404                        ; if ([self checkAllAnimationsAreComplete] == 0)
  1000433e4  mov     x2, #0
  1000433e8  adrp    x8, #0x100418000
  1000433ec  nop
  1000433f0  ldr     x1, [x8, #0x878]
  1000433f4  mov     x0, x19
  1000433f8  ldp     x29, x30, [sp, #0x10]
  1000433fc  ldp     x20, x19, [sp], #0x20
  100043400  b       _objc_msgSend                            ; [self goToScoreButtonPressed:0]
loc_100043404:
  100043404  ldp     x29, x30, [sp, #0x10]
  100043408  ldp     x20, x19, [sp], #0x20
  10004340c  ret

; ======================================================================
; -[ADGameOverWithStatsViewController swipeRight]
; address 0x100043410  size 20  kind objc
; ======================================================================
  100043410  mov     x2, #0
  100043414  adrp    x8, #0x100418000
  100043418  nop
  10004341c  ldr     x1, [x8, #0x880]
  100043420  b       _objc_msgSend                            ; [self goToMissionsButtonPressed:0]

; ======================================================================
; -[ADGameOverWithStatsViewController goToMissionsButtonPressed:]
; address 0x100043424  size 4  kind objc
; ======================================================================
  100043424  ret

; ======================================================================
; -[ADGameOverWithStatsViewController goToScoreButtonPressed:]
; address 0x100043428  size 196  kind objc
; ======================================================================
  100043428  stp     x22, x21, [sp, #-0x30]!
  10004342c  stp     x20, x19, [sp, #0x10]
  100043430  stp     x29, x30, [sp, #0x20]
  100043434  add     x29, sp, #0x20
  100043438  mov     x20, x0
  10004343c  adrp    x8, #0x100418000
  100043440  nop
  100043444  ldr     x21, [x8, #0x838]
  100043448  mov     x1, x21
  10004344c  bl      _objc_msgSend                            ; [self contentScrollView]
  100043450  mov     x29, x29
  100043454  bl      _objc_retainAutoreleasedReturnValue
  100043458  mov     x19, x0
  10004345c  mov     x0, x20
  100043460  mov     x1, x21
  100043464  bl      _objc_msgSend                            ; [self contentScrollView]
  100043468  mov     x29, x29
  10004346c  bl      _objc_retainAutoreleasedReturnValue
  100043470  mov     x20, x0
  100043474  adrp    x8, #0x100416000
  100043478  nop
  10004347c  ldr     x1, [x8, #0xf38]
  100043480  bl      _objc_msgSend                            ; [[self contentScrollView] frame]
  100043484  adrp    x8, #0x100418000
  100043488  nop
  10004348c  ldr     x1, [x8, #0x4f8]
  100043490  movi    v1.16b, #0
  100043494  mov     w2, #1
  100043498  mov     x0, x19
  10004349c  mov     v0.16b, v2.16b
  1000434a0  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{[[self contentScrollView] frame].2, 0} animated:1]
  1000434a4  mov     x0, x20
  1000434a8  bl      _objc_release
  1000434ac  mov     x0, x19
  1000434b0  ldp     x29, x30, [sp, #0x20]
  1000434b4  ldp     x20, x19, [sp, #0x10]
  1000434b8  ldp     x22, x21, [sp], #0x30
  1000434bc  b       _objc_release
  1000434c0  mov     x21, x0
  1000434c4  mov     x0, x20
  1000434c8  bl      _objc_release
  1000434cc  b       loc_1000434dc
  1000434d0  mov     x21, x0
  1000434d4  b       loc_1000434e4
  1000434d8  mov     x21, x0
loc_1000434dc:
  1000434dc  mov     x0, x19
  1000434e0  bl      _objc_release
loc_1000434e4:
  1000434e4  mov     x0, x21
  1000434e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverWithStatsViewController dealloc]
; address 0x1000434ec  size 164  kind objc
; ======================================================================
  1000434ec  stp     x20, x19, [sp, #-0x20]!
  1000434f0  stp     x29, x30, [sp, #0x10]
  1000434f4  add     x29, sp, #0x10
  1000434f8  sub     sp, sp, #0x20
  1000434fc  mov     x19, x0
  100043500  adrp    x8, #0x10041f000
  100043504  ldrsw   x20, [x8, #0x908]                        ; ivar offset ADGameOverWithStatsViewController.missionsViewControllerArray (+0x140)
  100043508  ldr     x0, [x19, x20]                           ; x0 = self->missionsViewControllerArray
  10004350c  adrp    x8, #0x100417000
  100043510  nop
  100043514  ldr     x1, [x8, #0x1b8]
  100043518  bl      _objc_msgSend                            ; [self->missionsViewControllerArray removeAllObjects]
  10004351c  ldr     x0, [x19, x20]                           ; x0 = self->missionsViewControllerArray
  100043520  str     xzr, [x19, x20]                          ; self->missionsViewControllerArray = 0
  100043524  bl      _objc_release
  100043528  str     x19, [sp, #0x10]
  10004352c  adrp    x8, #0x10041e000
  100043530  ldr     x8, [x8, #0xd00]
  100043534  str     x8, [sp, #0x18]
  100043538  adrp    x8, #0x100416000
  10004353c  nop
  100043540  ldr     x1, [x8, #0xfc8]
  100043544  add     x0, sp, #0x10
  100043548  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10004354c  sub     sp, x29, #0x10
  100043550  ldp     x29, x30, [sp, #0x10]
  100043554  ldp     x20, x19, [sp], #0x20
  100043558  ret
  10004355c  mov     x20, x0
  100043560  str     x19, [sp]
  100043564  adrp    x8, #0x10041e000
  100043568  ldr     x8, [x8, #0xd00]
  10004356c  str     x8, [sp, #8]
  100043570  adrp    x8, #0x100416000
  100043574  nop
  100043578  ldr     x1, [x8, #0xfc8]
  10004357c  mov     x0, sp
  100043580  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100043584  mov     x0, x20
  100043588  bl      __Unwind_Resume                          ; Unwind_Resume()
  10004358c  bl      sub_10000b760

; ======================================================================
; -[ADGameOverWithStatsViewController challengeTitle]
; address 0x100043590  size 16  kind objc
; ======================================================================
  100043590  adrp    x8, #0x10041f000
  100043594  ldrsw   x8, [x8, #0x90c]                         ; ivar offset ADGameOverWithStatsViewController._challengeTitle (+0x158)
  100043598  ldr     x0, [x0, x8]                             ; x0 = self->_challengeTitle
  10004359c  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setChallengeTitle:]
; address 0x1000435a0  size 56  kind objc
; ======================================================================
  1000435a0  stp     x20, x19, [sp, #-0x20]!
  1000435a4  stp     x29, x30, [sp, #0x10]
  1000435a8  add     x29, sp, #0x10
  1000435ac  mov     x19, x0
  1000435b0  adrp    x8, #0x10041f000
  1000435b4  ldrsw   x20, [x8, #0x90c]                        ; ivar offset ADGameOverWithStatsViewController._challengeTitle (+0x158)
  1000435b8  mov     x0, x2
  1000435bc  bl      _objc_retain
  1000435c0  ldr     x8, [x19, x20]                           ; x8 = self->_challengeTitle
  1000435c4  str     x0, [x19, x20]                           ; self->_challengeTitle = arg1
  1000435c8  mov     x0, x8
  1000435cc  ldp     x29, x30, [sp, #0x10]
  1000435d0  ldp     x20, x19, [sp], #0x20
  1000435d4  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController missionsTitle]
; address 0x1000435d8  size 16  kind objc
; ======================================================================
  1000435d8  adrp    x8, #0x10041f000
  1000435dc  ldrsw   x8, [x8, #0x910]                         ; ivar offset ADGameOverWithStatsViewController._missionsTitle (+0x160)
  1000435e0  ldr     x0, [x0, x8]                             ; x0 = self->_missionsTitle
  1000435e4  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setMissionsTitle:]
; address 0x1000435e8  size 56  kind objc
; ======================================================================
  1000435e8  stp     x20, x19, [sp, #-0x20]!
  1000435ec  stp     x29, x30, [sp, #0x10]
  1000435f0  add     x29, sp, #0x10
  1000435f4  mov     x19, x0
  1000435f8  adrp    x8, #0x10041f000
  1000435fc  ldrsw   x20, [x8, #0x910]                        ; ivar offset ADGameOverWithStatsViewController._missionsTitle (+0x160)
  100043600  mov     x0, x2
  100043604  bl      _objc_retain
  100043608  ldr     x8, [x19, x20]                           ; x8 = self->_missionsTitle
  10004360c  str     x0, [x19, x20]                           ; self->_missionsTitle = arg1
  100043610  mov     x0, x8
  100043614  ldp     x29, x30, [sp, #0x10]
  100043618  ldp     x20, x19, [sp], #0x20
  10004361c  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController missionsButton]
; address 0x100043620  size 16  kind objc
; ======================================================================
  100043620  adrp    x8, #0x10041f000
  100043624  ldrsw   x8, [x8, #0x914]                         ; ivar offset ADGameOverWithStatsViewController._missionsButton (+0x168)
  100043628  ldr     x0, [x0, x8]                             ; x0 = self->_missionsButton
  10004362c  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setMissionsButton:]
; address 0x100043630  size 56  kind objc
; ======================================================================
  100043630  stp     x20, x19, [sp, #-0x20]!
  100043634  stp     x29, x30, [sp, #0x10]
  100043638  add     x29, sp, #0x10
  10004363c  mov     x19, x0
  100043640  adrp    x8, #0x10041f000
  100043644  ldrsw   x20, [x8, #0x914]                        ; ivar offset ADGameOverWithStatsViewController._missionsButton (+0x168)
  100043648  mov     x0, x2
  10004364c  bl      _objc_retain
  100043650  ldr     x8, [x19, x20]                           ; x8 = self->_missionsButton
  100043654  str     x0, [x19, x20]                           ; self->_missionsButton = arg1
  100043658  mov     x0, x8
  10004365c  ldp     x29, x30, [sp, #0x10]
  100043660  ldp     x20, x19, [sp], #0x20
  100043664  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController scoreLabel]
; address 0x100043668  size 16  kind objc
; ======================================================================
  100043668  adrp    x8, #0x10041f000
  10004366c  ldrsw   x8, [x8, #0x918]                         ; ivar offset ADGameOverWithStatsViewController._scoreLabel (+0x170)
  100043670  ldr     x0, [x0, x8]                             ; x0 = self->_scoreLabel
  100043674  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setScoreLabel:]
; address 0x100043678  size 56  kind objc
; ======================================================================
  100043678  stp     x20, x19, [sp, #-0x20]!
  10004367c  stp     x29, x30, [sp, #0x10]
  100043680  add     x29, sp, #0x10
  100043684  mov     x19, x0
  100043688  adrp    x8, #0x10041f000
  10004368c  ldrsw   x20, [x8, #0x918]                        ; ivar offset ADGameOverWithStatsViewController._scoreLabel (+0x170)
  100043690  mov     x0, x2
  100043694  bl      _objc_retain
  100043698  ldr     x8, [x19, x20]                           ; x8 = self->_scoreLabel
  10004369c  str     x0, [x19, x20]                           ; self->_scoreLabel = arg1
  1000436a0  mov     x0, x8
  1000436a4  ldp     x29, x30, [sp, #0x10]
  1000436a8  ldp     x20, x19, [sp], #0x20
  1000436ac  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController comboLabel]
; address 0x1000436b0  size 16  kind objc
; ======================================================================
  1000436b0  adrp    x8, #0x10041f000
  1000436b4  ldrsw   x8, [x8, #0x91c]                         ; ivar offset ADGameOverWithStatsViewController._comboLabel (+0x178)
  1000436b8  ldr     x0, [x0, x8]                             ; x0 = self->_comboLabel
  1000436bc  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setComboLabel:]
; address 0x1000436c0  size 56  kind objc
; ======================================================================
  1000436c0  stp     x20, x19, [sp, #-0x20]!
  1000436c4  stp     x29, x30, [sp, #0x10]
  1000436c8  add     x29, sp, #0x10
  1000436cc  mov     x19, x0
  1000436d0  adrp    x8, #0x10041f000
  1000436d4  ldrsw   x20, [x8, #0x91c]                        ; ivar offset ADGameOverWithStatsViewController._comboLabel (+0x178)
  1000436d8  mov     x0, x2
  1000436dc  bl      _objc_retain
  1000436e0  ldr     x8, [x19, x20]                           ; x8 = self->_comboLabel
  1000436e4  str     x0, [x19, x20]                           ; self->_comboLabel = arg1
  1000436e8  mov     x0, x8
  1000436ec  ldp     x29, x30, [sp, #0x10]
  1000436f0  ldp     x20, x19, [sp], #0x20
  1000436f4  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController killsLabel]
; address 0x1000436f8  size 16  kind objc
; ======================================================================
  1000436f8  adrp    x8, #0x10041f000
  1000436fc  ldrsw   x8, [x8, #0x920]                         ; ivar offset ADGameOverWithStatsViewController._killsLabel (+0x180)
  100043700  ldr     x0, [x0, x8]                             ; x0 = self->_killsLabel
  100043704  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setKillsLabel:]
; address 0x100043708  size 56  kind objc
; ======================================================================
  100043708  stp     x20, x19, [sp, #-0x20]!
  10004370c  stp     x29, x30, [sp, #0x10]
  100043710  add     x29, sp, #0x10
  100043714  mov     x19, x0
  100043718  adrp    x8, #0x10041f000
  10004371c  ldrsw   x20, [x8, #0x920]                        ; ivar offset ADGameOverWithStatsViewController._killsLabel (+0x180)
  100043720  mov     x0, x2
  100043724  bl      _objc_retain
  100043728  ldr     x8, [x19, x20]                           ; x8 = self->_killsLabel
  10004372c  str     x0, [x19, x20]                           ; self->_killsLabel = arg1
  100043730  mov     x0, x8
  100043734  ldp     x29, x30, [sp, #0x10]
  100043738  ldp     x20, x19, [sp], #0x20
  10004373c  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController accuracyLabel]
; address 0x100043740  size 16  kind objc
; ======================================================================
  100043740  adrp    x8, #0x10041f000
  100043744  ldrsw   x8, [x8, #0x924]                         ; ivar offset ADGameOverWithStatsViewController._accuracyLabel (+0x188)
  100043748  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyLabel
  10004374c  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setAccuracyLabel:]
; address 0x100043750  size 56  kind objc
; ======================================================================
  100043750  stp     x20, x19, [sp, #-0x20]!
  100043754  stp     x29, x30, [sp, #0x10]
  100043758  add     x29, sp, #0x10
  10004375c  mov     x19, x0
  100043760  adrp    x8, #0x10041f000
  100043764  ldrsw   x20, [x8, #0x924]                        ; ivar offset ADGameOverWithStatsViewController._accuracyLabel (+0x188)
  100043768  mov     x0, x2
  10004376c  bl      _objc_retain
  100043770  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyLabel
  100043774  str     x0, [x19, x20]                           ; self->_accuracyLabel = arg1
  100043778  mov     x0, x8
  10004377c  ldp     x29, x30, [sp, #0x10]
  100043780  ldp     x20, x19, [sp], #0x20
  100043784  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController timeLabel]
; address 0x100043788  size 16  kind objc
; ======================================================================
  100043788  adrp    x8, #0x10041f000
  10004378c  ldrsw   x8, [x8, #0x928]                         ; ivar offset ADGameOverWithStatsViewController._timeLabel (+0x190)
  100043790  ldr     x0, [x0, x8]                             ; x0 = self->_timeLabel
  100043794  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setTimeLabel:]
; address 0x100043798  size 56  kind objc
; ======================================================================
  100043798  stp     x20, x19, [sp, #-0x20]!
  10004379c  stp     x29, x30, [sp, #0x10]
  1000437a0  add     x29, sp, #0x10
  1000437a4  mov     x19, x0
  1000437a8  adrp    x8, #0x10041f000
  1000437ac  ldrsw   x20, [x8, #0x928]                        ; ivar offset ADGameOverWithStatsViewController._timeLabel (+0x190)
  1000437b0  mov     x0, x2
  1000437b4  bl      _objc_retain
  1000437b8  ldr     x8, [x19, x20]                           ; x8 = self->_timeLabel
  1000437bc  str     x0, [x19, x20]                           ; self->_timeLabel = arg1
  1000437c0  mov     x0, x8
  1000437c4  ldp     x29, x30, [sp, #0x10]
  1000437c8  ldp     x20, x19, [sp], #0x20
  1000437cc  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController coinsTotal]
; address 0x1000437d0  size 16  kind objc
; ======================================================================
  1000437d0  adrp    x8, #0x10041f000
  1000437d4  ldrsw   x8, [x8, #0x92c]                         ; ivar offset ADGameOverWithStatsViewController._coinsTotal (+0x198)
  1000437d8  ldr     x0, [x0, x8]                             ; x0 = self->_coinsTotal
  1000437dc  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setCoinsTotal:]
; address 0x1000437e0  size 56  kind objc
; ======================================================================
  1000437e0  stp     x20, x19, [sp, #-0x20]!
  1000437e4  stp     x29, x30, [sp, #0x10]
  1000437e8  add     x29, sp, #0x10
  1000437ec  mov     x19, x0
  1000437f0  adrp    x8, #0x10041f000
  1000437f4  ldrsw   x20, [x8, #0x92c]                        ; ivar offset ADGameOverWithStatsViewController._coinsTotal (+0x198)
  1000437f8  mov     x0, x2
  1000437fc  bl      _objc_retain
  100043800  ldr     x8, [x19, x20]                           ; x8 = self->_coinsTotal
  100043804  str     x0, [x19, x20]                           ; self->_coinsTotal = arg1
  100043808  mov     x0, x8
  10004380c  ldp     x29, x30, [sp, #0x10]
  100043810  ldp     x20, x19, [sp], #0x20
  100043814  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController diamondsTotal]
; address 0x100043818  size 16  kind objc
; ======================================================================
  100043818  adrp    x8, #0x10041f000
  10004381c  ldrsw   x8, [x8, #0x930]                         ; ivar offset ADGameOverWithStatsViewController._diamondsTotal (+0x1a0)
  100043820  ldr     x0, [x0, x8]                             ; x0 = self->_diamondsTotal
  100043824  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setDiamondsTotal:]
; address 0x100043828  size 56  kind objc
; ======================================================================
  100043828  stp     x20, x19, [sp, #-0x20]!
  10004382c  stp     x29, x30, [sp, #0x10]
  100043830  add     x29, sp, #0x10
  100043834  mov     x19, x0
  100043838  adrp    x8, #0x10041f000
  10004383c  ldrsw   x20, [x8, #0x930]                        ; ivar offset ADGameOverWithStatsViewController._diamondsTotal (+0x1a0)
  100043840  mov     x0, x2
  100043844  bl      _objc_retain
  100043848  ldr     x8, [x19, x20]                           ; x8 = self->_diamondsTotal
  10004384c  str     x0, [x19, x20]                           ; self->_diamondsTotal = arg1
  100043850  mov     x0, x8
  100043854  ldp     x29, x30, [sp, #0x10]
  100043858  ldp     x20, x19, [sp], #0x20
  10004385c  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController diamondsLoot]
; address 0x100043860  size 16  kind objc
; ======================================================================
  100043860  adrp    x8, #0x10041f000
  100043864  ldrsw   x8, [x8, #0x934]                         ; ivar offset ADGameOverWithStatsViewController._diamondsLoot (+0x1a8)
  100043868  ldr     x0, [x0, x8]                             ; x0 = self->_diamondsLoot
  10004386c  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setDiamondsLoot:]
; address 0x100043870  size 56  kind objc
; ======================================================================
  100043870  stp     x20, x19, [sp, #-0x20]!
  100043874  stp     x29, x30, [sp, #0x10]
  100043878  add     x29, sp, #0x10
  10004387c  mov     x19, x0
  100043880  adrp    x8, #0x10041f000
  100043884  ldrsw   x20, [x8, #0x934]                        ; ivar offset ADGameOverWithStatsViewController._diamondsLoot (+0x1a8)
  100043888  mov     x0, x2
  10004388c  bl      _objc_retain
  100043890  ldr     x8, [x19, x20]                           ; x8 = self->_diamondsLoot
  100043894  str     x0, [x19, x20]                           ; self->_diamondsLoot = arg1
  100043898  mov     x0, x8
  10004389c  ldp     x29, x30, [sp, #0x10]
  1000438a0  ldp     x20, x19, [sp], #0x20
  1000438a4  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController missionView]
; address 0x1000438a8  size 16  kind objc
; ======================================================================
  1000438a8  adrp    x8, #0x10041f000
  1000438ac  ldrsw   x8, [x8, #0x938]                         ; ivar offset ADGameOverWithStatsViewController._missionView (+0x1b0)
  1000438b0  ldr     x0, [x0, x8]                             ; x0 = self->_missionView
  1000438b4  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setMissionView:]
; address 0x1000438b8  size 56  kind objc
; ======================================================================
  1000438b8  stp     x20, x19, [sp, #-0x20]!
  1000438bc  stp     x29, x30, [sp, #0x10]
  1000438c0  add     x29, sp, #0x10
  1000438c4  mov     x19, x0
  1000438c8  adrp    x8, #0x10041f000
  1000438cc  ldrsw   x20, [x8, #0x938]                        ; ivar offset ADGameOverWithStatsViewController._missionView (+0x1b0)
  1000438d0  mov     x0, x2
  1000438d4  bl      _objc_retain
  1000438d8  ldr     x8, [x19, x20]                           ; x8 = self->_missionView
  1000438dc  str     x0, [x19, x20]                           ; self->_missionView = arg1
  1000438e0  mov     x0, x8
  1000438e4  ldp     x29, x30, [sp, #0x10]
  1000438e8  ldp     x20, x19, [sp], #0x20
  1000438ec  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController contentView]
; address 0x1000438f0  size 16  kind objc
; ======================================================================
  1000438f0  adrp    x8, #0x10041f000
  1000438f4  ldrsw   x8, [x8, #0x93c]                         ; ivar offset ADGameOverWithStatsViewController._contentView (+0x1b8)
  1000438f8  ldr     x0, [x0, x8]                             ; x0 = self->_contentView
  1000438fc  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setContentView:]
; address 0x100043900  size 56  kind objc
; ======================================================================
  100043900  stp     x20, x19, [sp, #-0x20]!
  100043904  stp     x29, x30, [sp, #0x10]
  100043908  add     x29, sp, #0x10
  10004390c  mov     x19, x0
  100043910  adrp    x8, #0x10041f000
  100043914  ldrsw   x20, [x8, #0x93c]                        ; ivar offset ADGameOverWithStatsViewController._contentView (+0x1b8)
  100043918  mov     x0, x2
  10004391c  bl      _objc_retain
  100043920  ldr     x8, [x19, x20]                           ; x8 = self->_contentView
  100043924  str     x0, [x19, x20]                           ; self->_contentView = arg1
  100043928  mov     x0, x8
  10004392c  ldp     x29, x30, [sp, #0x10]
  100043930  ldp     x20, x19, [sp], #0x20
  100043934  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController buttonsView]
; address 0x100043938  size 16  kind objc
; ======================================================================
  100043938  adrp    x8, #0x10041f000
  10004393c  ldrsw   x8, [x8, #0x940]                         ; ivar offset ADGameOverWithStatsViewController._buttonsView (+0x1c0)
  100043940  ldr     x0, [x0, x8]                             ; x0 = self->_buttonsView
  100043944  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setButtonsView:]
; address 0x100043948  size 56  kind objc
; ======================================================================
  100043948  stp     x20, x19, [sp, #-0x20]!
  10004394c  stp     x29, x30, [sp, #0x10]
  100043950  add     x29, sp, #0x10
  100043954  mov     x19, x0
  100043958  adrp    x8, #0x10041f000
  10004395c  ldrsw   x20, [x8, #0x940]                        ; ivar offset ADGameOverWithStatsViewController._buttonsView (+0x1c0)
  100043960  mov     x0, x2
  100043964  bl      _objc_retain
  100043968  ldr     x8, [x19, x20]                           ; x8 = self->_buttonsView
  10004396c  str     x0, [x19, x20]                           ; self->_buttonsView = arg1
  100043970  mov     x0, x8
  100043974  ldp     x29, x30, [sp, #0x10]
  100043978  ldp     x20, x19, [sp], #0x20
  10004397c  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController contentScrollView]
; address 0x100043980  size 16  kind objc
; ======================================================================
  100043980  adrp    x8, #0x10041f000
  100043984  ldrsw   x8, [x8, #0x944]                         ; ivar offset ADGameOverWithStatsViewController._contentScrollView (+0x1c8)
  100043988  ldr     x0, [x0, x8]                             ; x0 = self->_contentScrollView
  10004398c  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setContentScrollView:]
; address 0x100043990  size 56  kind objc
; ======================================================================
  100043990  stp     x20, x19, [sp, #-0x20]!
  100043994  stp     x29, x30, [sp, #0x10]
  100043998  add     x29, sp, #0x10
  10004399c  mov     x19, x0
  1000439a0  adrp    x8, #0x10041f000
  1000439a4  ldrsw   x20, [x8, #0x944]                        ; ivar offset ADGameOverWithStatsViewController._contentScrollView (+0x1c8)
  1000439a8  mov     x0, x2
  1000439ac  bl      _objc_retain
  1000439b0  ldr     x8, [x19, x20]                           ; x8 = self->_contentScrollView
  1000439b4  str     x0, [x19, x20]                           ; self->_contentScrollView = arg1
  1000439b8  mov     x0, x8
  1000439bc  ldp     x29, x30, [sp, #0x10]
  1000439c0  ldp     x20, x19, [sp], #0x20
  1000439c4  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController ignoreRewards]
; address 0x1000439c8  size 20  kind objc
; ======================================================================
  1000439c8  adrp    x8, #0x10041f000
  1000439cc  ldrsw   x8, [x8, #0x948]                         ; ivar offset ADGameOverWithStatsViewController._ignoreRewards (+0x148)
  1000439d0  ldrb    w8, [x0, x8]                             ; w8 = self->_ignoreRewards
  1000439d4  and     w0, w8, #1
  1000439d8  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setIgnoreRewards:]
; address 0x1000439dc  size 16  kind objc
; ======================================================================
  1000439dc  adrp    x8, #0x10041f000
  1000439e0  ldrsw   x8, [x8, #0x948]                         ; ivar offset ADGameOverWithStatsViewController._ignoreRewards (+0x148)
  1000439e4  strb    w2, [x0, x8]                             ; self->_ignoreRewards = arg1
  1000439e8  ret

; ======================================================================
; -[ADGameOverWithStatsViewController delayForDisplayingScore]
; address 0x1000439ec  size 20  kind objc
; ======================================================================
  1000439ec  adrp    x8, #0x10041f000
  1000439f0  ldrsw   x8, [x8, #0x94c]                         ; ivar offset ADGameOverWithStatsViewController._delayForDisplayingScore (+0x14c)
  1000439f4  ldr     w8, [x0, x8]                             ; w8 = self->_delayForDisplayingScore
  1000439f8  fmov    s0, w8
  1000439fc  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setDelayForDisplayingScore:]
; address 0x100043a00  size 20  kind objc
; ======================================================================
  100043a00  fmov    w8, s0
  100043a04  adrp    x9, #0x10041f000
  100043a08  ldrsw   x9, [x9, #0x94c]                         ; ivar offset ADGameOverWithStatsViewController._delayForDisplayingScore (+0x14c)
  100043a0c  str     w8, [x0, x9]                             ; self->_delayForDisplayingScore = arg1
  100043a10  ret

; ======================================================================
; -[ADGameOverWithStatsViewController killsTitleLabel]
; address 0x100043a14  size 16  kind objc
; ======================================================================
  100043a14  adrp    x8, #0x10041f000
  100043a18  ldrsw   x8, [x8, #0x950]                         ; ivar offset ADGameOverWithStatsViewController._killsTitleLabel (+0x1d0)
  100043a1c  ldr     x0, [x0, x8]                             ; x0 = self->_killsTitleLabel
  100043a20  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setKillsTitleLabel:]
; address 0x100043a24  size 56  kind objc
; ======================================================================
  100043a24  stp     x20, x19, [sp, #-0x20]!
  100043a28  stp     x29, x30, [sp, #0x10]
  100043a2c  add     x29, sp, #0x10
  100043a30  mov     x19, x0
  100043a34  adrp    x8, #0x10041f000
  100043a38  ldrsw   x20, [x8, #0x950]                        ; ivar offset ADGameOverWithStatsViewController._killsTitleLabel (+0x1d0)
  100043a3c  mov     x0, x2
  100043a40  bl      _objc_retain
  100043a44  ldr     x8, [x19, x20]                           ; x8 = self->_killsTitleLabel
  100043a48  str     x0, [x19, x20]                           ; self->_killsTitleLabel = arg1
  100043a4c  mov     x0, x8
  100043a50  ldp     x29, x30, [sp, #0x10]
  100043a54  ldp     x20, x19, [sp], #0x20
  100043a58  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController accuracyTitleLabel]
; address 0x100043a5c  size 16  kind objc
; ======================================================================
  100043a5c  adrp    x8, #0x10041f000
  100043a60  ldrsw   x8, [x8, #0x954]                         ; ivar offset ADGameOverWithStatsViewController._accuracyTitleLabel (+0x1d8)
  100043a64  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyTitleLabel
  100043a68  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setAccuracyTitleLabel:]
; address 0x100043a6c  size 56  kind objc
; ======================================================================
  100043a6c  stp     x20, x19, [sp, #-0x20]!
  100043a70  stp     x29, x30, [sp, #0x10]
  100043a74  add     x29, sp, #0x10
  100043a78  mov     x19, x0
  100043a7c  adrp    x8, #0x10041f000
  100043a80  ldrsw   x20, [x8, #0x954]                        ; ivar offset ADGameOverWithStatsViewController._accuracyTitleLabel (+0x1d8)
  100043a84  mov     x0, x2
  100043a88  bl      _objc_retain
  100043a8c  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyTitleLabel
  100043a90  str     x0, [x19, x20]                           ; self->_accuracyTitleLabel = arg1
  100043a94  mov     x0, x8
  100043a98  ldp     x29, x30, [sp, #0x10]
  100043a9c  ldp     x20, x19, [sp], #0x20
  100043aa0  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController timeTitleLabel]
; address 0x100043aa4  size 16  kind objc
; ======================================================================
  100043aa4  adrp    x8, #0x10041f000
  100043aa8  ldrsw   x8, [x8, #0x958]                         ; ivar offset ADGameOverWithStatsViewController._timeTitleLabel (+0x1e0)
  100043aac  ldr     x0, [x0, x8]                             ; x0 = self->_timeTitleLabel
  100043ab0  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setTimeTitleLabel:]
; address 0x100043ab4  size 56  kind objc
; ======================================================================
  100043ab4  stp     x20, x19, [sp, #-0x20]!
  100043ab8  stp     x29, x30, [sp, #0x10]
  100043abc  add     x29, sp, #0x10
  100043ac0  mov     x19, x0
  100043ac4  adrp    x8, #0x10041f000
  100043ac8  ldrsw   x20, [x8, #0x958]                        ; ivar offset ADGameOverWithStatsViewController._timeTitleLabel (+0x1e0)
  100043acc  mov     x0, x2
  100043ad0  bl      _objc_retain
  100043ad4  ldr     x8, [x19, x20]                           ; x8 = self->_timeTitleLabel
  100043ad8  str     x0, [x19, x20]                           ; self->_timeTitleLabel = arg1
  100043adc  mov     x0, x8
  100043ae0  ldp     x29, x30, [sp, #0x10]
  100043ae4  ldp     x20, x19, [sp], #0x20
  100043ae8  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController missionPlaceholder1]
; address 0x100043aec  size 16  kind objc
; ======================================================================
  100043aec  adrp    x8, #0x10041f000
  100043af0  ldrsw   x8, [x8, #0x95c]                         ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder1 (+0x1e8)
  100043af4  ldr     x0, [x0, x8]                             ; x0 = self->_missionPlaceholder1
  100043af8  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setMissionPlaceholder1:]
; address 0x100043afc  size 56  kind objc
; ======================================================================
  100043afc  stp     x20, x19, [sp, #-0x20]!
  100043b00  stp     x29, x30, [sp, #0x10]
  100043b04  add     x29, sp, #0x10
  100043b08  mov     x19, x0
  100043b0c  adrp    x8, #0x10041f000
  100043b10  ldrsw   x20, [x8, #0x95c]                        ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder1 (+0x1e8)
  100043b14  mov     x0, x2
  100043b18  bl      _objc_retain
  100043b1c  ldr     x8, [x19, x20]                           ; x8 = self->_missionPlaceholder1
  100043b20  str     x0, [x19, x20]                           ; self->_missionPlaceholder1 = arg1
  100043b24  mov     x0, x8
  100043b28  ldp     x29, x30, [sp, #0x10]
  100043b2c  ldp     x20, x19, [sp], #0x20
  100043b30  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController missionPlaceholder2]
; address 0x100043b34  size 16  kind objc
; ======================================================================
  100043b34  adrp    x8, #0x10041f000
  100043b38  ldrsw   x8, [x8, #0x960]                         ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder2 (+0x1f0)
  100043b3c  ldr     x0, [x0, x8]                             ; x0 = self->_missionPlaceholder2
  100043b40  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setMissionPlaceholder2:]
; address 0x100043b44  size 56  kind objc
; ======================================================================
  100043b44  stp     x20, x19, [sp, #-0x20]!
  100043b48  stp     x29, x30, [sp, #0x10]
  100043b4c  add     x29, sp, #0x10
  100043b50  mov     x19, x0
  100043b54  adrp    x8, #0x10041f000
  100043b58  ldrsw   x20, [x8, #0x960]                        ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder2 (+0x1f0)
  100043b5c  mov     x0, x2
  100043b60  bl      _objc_retain
  100043b64  ldr     x8, [x19, x20]                           ; x8 = self->_missionPlaceholder2
  100043b68  str     x0, [x19, x20]                           ; self->_missionPlaceholder2 = arg1
  100043b6c  mov     x0, x8
  100043b70  ldp     x29, x30, [sp, #0x10]
  100043b74  ldp     x20, x19, [sp], #0x20
  100043b78  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController missionPlaceholder3]
; address 0x100043b7c  size 16  kind objc
; ======================================================================
  100043b7c  adrp    x8, #0x10041f000
  100043b80  ldrsw   x8, [x8, #0x964]                         ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder3 (+0x1f8)
  100043b84  ldr     x0, [x0, x8]                             ; x0 = self->_missionPlaceholder3
  100043b88  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setMissionPlaceholder3:]
; address 0x100043b8c  size 56  kind objc
; ======================================================================
  100043b8c  stp     x20, x19, [sp, #-0x20]!
  100043b90  stp     x29, x30, [sp, #0x10]
  100043b94  add     x29, sp, #0x10
  100043b98  mov     x19, x0
  100043b9c  adrp    x8, #0x10041f000
  100043ba0  ldrsw   x20, [x8, #0x964]                        ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder3 (+0x1f8)
  100043ba4  mov     x0, x2
  100043ba8  bl      _objc_retain
  100043bac  ldr     x8, [x19, x20]                           ; x8 = self->_missionPlaceholder3
  100043bb0  str     x0, [x19, x20]                           ; self->_missionPlaceholder3 = arg1
  100043bb4  mov     x0, x8
  100043bb8  ldp     x29, x30, [sp, #0x10]
  100043bbc  ldp     x20, x19, [sp], #0x20
  100043bc0  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController starPlaceholder1]
; address 0x100043bc4  size 16  kind objc
; ======================================================================
  100043bc4  adrp    x8, #0x10041f000
  100043bc8  ldrsw   x8, [x8, #0x968]                         ; ivar offset ADGameOverWithStatsViewController._starPlaceholder1 (+0x200)
  100043bcc  ldr     x0, [x0, x8]                             ; x0 = self->_starPlaceholder1
  100043bd0  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setStarPlaceholder1:]
; address 0x100043bd4  size 56  kind objc
; ======================================================================
  100043bd4  stp     x20, x19, [sp, #-0x20]!
  100043bd8  stp     x29, x30, [sp, #0x10]
  100043bdc  add     x29, sp, #0x10
  100043be0  mov     x19, x0
  100043be4  adrp    x8, #0x10041f000
  100043be8  ldrsw   x20, [x8, #0x968]                        ; ivar offset ADGameOverWithStatsViewController._starPlaceholder1 (+0x200)
  100043bec  mov     x0, x2
  100043bf0  bl      _objc_retain
  100043bf4  ldr     x8, [x19, x20]                           ; x8 = self->_starPlaceholder1
  100043bf8  str     x0, [x19, x20]                           ; self->_starPlaceholder1 = arg1
  100043bfc  mov     x0, x8
  100043c00  ldp     x29, x30, [sp, #0x10]
  100043c04  ldp     x20, x19, [sp], #0x20
  100043c08  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController starPlaceholder2]
; address 0x100043c0c  size 16  kind objc
; ======================================================================
  100043c0c  adrp    x8, #0x10041f000
  100043c10  ldrsw   x8, [x8, #0x96c]                         ; ivar offset ADGameOverWithStatsViewController._starPlaceholder2 (+0x208)
  100043c14  ldr     x0, [x0, x8]                             ; x0 = self->_starPlaceholder2
  100043c18  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setStarPlaceholder2:]
; address 0x100043c1c  size 56  kind objc
; ======================================================================
  100043c1c  stp     x20, x19, [sp, #-0x20]!
  100043c20  stp     x29, x30, [sp, #0x10]
  100043c24  add     x29, sp, #0x10
  100043c28  mov     x19, x0
  100043c2c  adrp    x8, #0x10041f000
  100043c30  ldrsw   x20, [x8, #0x96c]                        ; ivar offset ADGameOverWithStatsViewController._starPlaceholder2 (+0x208)
  100043c34  mov     x0, x2
  100043c38  bl      _objc_retain
  100043c3c  ldr     x8, [x19, x20]                           ; x8 = self->_starPlaceholder2
  100043c40  str     x0, [x19, x20]                           ; self->_starPlaceholder2 = arg1
  100043c44  mov     x0, x8
  100043c48  ldp     x29, x30, [sp, #0x10]
  100043c4c  ldp     x20, x19, [sp], #0x20
  100043c50  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController starPlaceholder3]
; address 0x100043c54  size 16  kind objc
; ======================================================================
  100043c54  adrp    x8, #0x10041f000
  100043c58  ldrsw   x8, [x8, #0x970]                         ; ivar offset ADGameOverWithStatsViewController._starPlaceholder3 (+0x210)
  100043c5c  ldr     x0, [x0, x8]                             ; x0 = self->_starPlaceholder3
  100043c60  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setStarPlaceholder3:]
; address 0x100043c64  size 56  kind objc
; ======================================================================
  100043c64  stp     x20, x19, [sp, #-0x20]!
  100043c68  stp     x29, x30, [sp, #0x10]
  100043c6c  add     x29, sp, #0x10
  100043c70  mov     x19, x0
  100043c74  adrp    x8, #0x10041f000
  100043c78  ldrsw   x20, [x8, #0x970]                        ; ivar offset ADGameOverWithStatsViewController._starPlaceholder3 (+0x210)
  100043c7c  mov     x0, x2
  100043c80  bl      _objc_retain
  100043c84  ldr     x8, [x19, x20]                           ; x8 = self->_starPlaceholder3
  100043c88  str     x0, [x19, x20]                           ; self->_starPlaceholder3 = arg1
  100043c8c  mov     x0, x8
  100043c90  ldp     x29, x30, [sp, #0x10]
  100043c94  ldp     x20, x19, [sp], #0x20
  100043c98  b       _objc_release

; ======================================================================
; -[ADGameOverWithStatsViewController starCoins]
; address 0x100043c9c  size 16  kind objc
; ======================================================================
  100043c9c  adrp    x8, #0x10041f000
  100043ca0  ldrsw   x8, [x8, #0x974]                         ; ivar offset ADGameOverWithStatsViewController._starCoins (+0x150)
  100043ca4  ldr     w0, [x0, x8]                             ; w0 = self->_starCoins
  100043ca8  ret

; ======================================================================
; -[ADGameOverWithStatsViewController setStarCoins:]
; address 0x100043cac  size 16  kind objc
; ======================================================================
  100043cac  adrp    x8, #0x10041f000
  100043cb0  ldrsw   x8, [x8, #0x974]                         ; ivar offset ADGameOverWithStatsViewController._starCoins (+0x150)
  100043cb4  str     w2, [x0, x8]                             ; self->_starCoins = arg1
  100043cb8  ret

; ======================================================================
; -[ADGameOverWithStatsViewController .cxx_destruct]
; address 0x100043cbc  size 524  kind objc
; ======================================================================
  100043cbc  stp     x20, x19, [sp, #-0x20]!
  100043cc0  stp     x29, x30, [sp, #0x10]
  100043cc4  add     x29, sp, #0x10
  100043cc8  mov     x19, x0
  100043ccc  adrp    x8, #0x10041f000
  100043cd0  ldrsw   x8, [x8, #0x970]                         ; ivar offset ADGameOverWithStatsViewController._starPlaceholder3 (+0x210)
  100043cd4  add     x0, x19, x8
  100043cd8  mov     x1, #0
  100043cdc  bl      _objc_storeStrong
  100043ce0  adrp    x8, #0x10041f000
  100043ce4  ldrsw   x8, [x8, #0x96c]                         ; ivar offset ADGameOverWithStatsViewController._starPlaceholder2 (+0x208)
  100043ce8  add     x0, x19, x8
  100043cec  mov     x1, #0
  100043cf0  bl      _objc_storeStrong
  100043cf4  adrp    x8, #0x10041f000
  100043cf8  ldrsw   x8, [x8, #0x968]                         ; ivar offset ADGameOverWithStatsViewController._starPlaceholder1 (+0x200)
  100043cfc  add     x0, x19, x8
  100043d00  mov     x1, #0
  100043d04  bl      _objc_storeStrong
  100043d08  adrp    x8, #0x10041f000
  100043d0c  ldrsw   x8, [x8, #0x964]                         ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder3 (+0x1f8)
  100043d10  add     x0, x19, x8
  100043d14  mov     x1, #0
  100043d18  bl      _objc_storeStrong
  100043d1c  adrp    x8, #0x10041f000
  100043d20  ldrsw   x8, [x8, #0x960]                         ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder2 (+0x1f0)
  100043d24  add     x0, x19, x8
  100043d28  mov     x1, #0
  100043d2c  bl      _objc_storeStrong
  100043d30  adrp    x8, #0x10041f000
  100043d34  ldrsw   x8, [x8, #0x95c]                         ; ivar offset ADGameOverWithStatsViewController._missionPlaceholder1 (+0x1e8)
  100043d38  add     x0, x19, x8
  100043d3c  mov     x1, #0
  100043d40  bl      _objc_storeStrong
  100043d44  adrp    x8, #0x10041f000
  100043d48  ldrsw   x8, [x8, #0x958]                         ; ivar offset ADGameOverWithStatsViewController._timeTitleLabel (+0x1e0)
  100043d4c  add     x0, x19, x8
  100043d50  mov     x1, #0
  100043d54  bl      _objc_storeStrong
  100043d58  adrp    x8, #0x10041f000
  100043d5c  ldrsw   x8, [x8, #0x954]                         ; ivar offset ADGameOverWithStatsViewController._accuracyTitleLabel (+0x1d8)
  100043d60  add     x0, x19, x8
  100043d64  mov     x1, #0
  100043d68  bl      _objc_storeStrong
  100043d6c  adrp    x8, #0x10041f000
  100043d70  ldrsw   x8, [x8, #0x950]                         ; ivar offset ADGameOverWithStatsViewController._killsTitleLabel (+0x1d0)
  100043d74  add     x0, x19, x8
  100043d78  mov     x1, #0
  100043d7c  bl      _objc_storeStrong
  100043d80  adrp    x8, #0x10041f000
  100043d84  ldrsw   x8, [x8, #0x944]                         ; ivar offset ADGameOverWithStatsViewController._contentScrollView (+0x1c8)
  100043d88  add     x0, x19, x8
  100043d8c  mov     x1, #0
  100043d90  bl      _objc_storeStrong
  100043d94  adrp    x8, #0x10041f000
  100043d98  ldrsw   x8, [x8, #0x940]                         ; ivar offset ADGameOverWithStatsViewController._buttonsView (+0x1c0)
  100043d9c  add     x0, x19, x8
  100043da0  mov     x1, #0
  100043da4  bl      _objc_storeStrong
  100043da8  adrp    x8, #0x10041f000
  100043dac  ldrsw   x8, [x8, #0x93c]                         ; ivar offset ADGameOverWithStatsViewController._contentView (+0x1b8)
  100043db0  add     x0, x19, x8
  100043db4  mov     x1, #0
  100043db8  bl      _objc_storeStrong
  100043dbc  adrp    x8, #0x10041f000
  100043dc0  ldrsw   x8, [x8, #0x938]                         ; ivar offset ADGameOverWithStatsViewController._missionView (+0x1b0)
  100043dc4  add     x0, x19, x8
  100043dc8  mov     x1, #0
  100043dcc  bl      _objc_storeStrong
  100043dd0  adrp    x8, #0x10041f000
  100043dd4  ldrsw   x8, [x8, #0x934]                         ; ivar offset ADGameOverWithStatsViewController._diamondsLoot (+0x1a8)
  100043dd8  add     x0, x19, x8
  100043ddc  mov     x1, #0
  100043de0  bl      _objc_storeStrong
  100043de4  adrp    x8, #0x10041f000
  100043de8  ldrsw   x8, [x8, #0x930]                         ; ivar offset ADGameOverWithStatsViewController._diamondsTotal (+0x1a0)
  100043dec  add     x0, x19, x8
  100043df0  mov     x1, #0
  100043df4  bl      _objc_storeStrong
  100043df8  adrp    x8, #0x10041f000
  100043dfc  ldrsw   x8, [x8, #0x92c]                         ; ivar offset ADGameOverWithStatsViewController._coinsTotal (+0x198)
  100043e00  add     x0, x19, x8
  100043e04  mov     x1, #0
  100043e08  bl      _objc_storeStrong
  100043e0c  adrp    x8, #0x10041f000
  100043e10  ldrsw   x8, [x8, #0x928]                         ; ivar offset ADGameOverWithStatsViewController._timeLabel (+0x190)
  100043e14  add     x0, x19, x8
  100043e18  mov     x1, #0
  100043e1c  bl      _objc_storeStrong
  100043e20  adrp    x8, #0x10041f000
  100043e24  ldrsw   x8, [x8, #0x924]                         ; ivar offset ADGameOverWithStatsViewController._accuracyLabel (+0x188)
  100043e28  add     x0, x19, x8
  100043e2c  mov     x1, #0
  100043e30  bl      _objc_storeStrong
  100043e34  adrp    x8, #0x10041f000
  100043e38  ldrsw   x8, [x8, #0x920]                         ; ivar offset ADGameOverWithStatsViewController._killsLabel (+0x180)
  100043e3c  add     x0, x19, x8
  100043e40  mov     x1, #0
  100043e44  bl      _objc_storeStrong
  100043e48  adrp    x8, #0x10041f000
  100043e4c  ldrsw   x8, [x8, #0x91c]                         ; ivar offset ADGameOverWithStatsViewController._comboLabel (+0x178)
  100043e50  add     x0, x19, x8
  100043e54  mov     x1, #0
  100043e58  bl      _objc_storeStrong
  100043e5c  adrp    x8, #0x10041f000
  100043e60  ldrsw   x8, [x8, #0x918]                         ; ivar offset ADGameOverWithStatsViewController._scoreLabel (+0x170)
  100043e64  add     x0, x19, x8
  100043e68  mov     x1, #0
  100043e6c  bl      _objc_storeStrong
  100043e70  adrp    x8, #0x10041f000
  100043e74  ldrsw   x8, [x8, #0x914]                         ; ivar offset ADGameOverWithStatsViewController._missionsButton (+0x168)
  100043e78  add     x0, x19, x8
  100043e7c  mov     x1, #0
  100043e80  bl      _objc_storeStrong
  100043e84  adrp    x8, #0x10041f000
  100043e88  ldrsw   x8, [x8, #0x910]                         ; ivar offset ADGameOverWithStatsViewController._missionsTitle (+0x160)
  100043e8c  add     x0, x19, x8
  100043e90  mov     x1, #0
  100043e94  bl      _objc_storeStrong
  100043e98  adrp    x8, #0x10041f000
  100043e9c  ldrsw   x8, [x8, #0x90c]                         ; ivar offset ADGameOverWithStatsViewController._challengeTitle (+0x158)
  100043ea0  add     x0, x19, x8
  100043ea4  mov     x1, #0
  100043ea8  bl      _objc_storeStrong
  100043eac  mov     x1, #0
  100043eb0  adrp    x8, #0x10041f000
  100043eb4  ldrsw   x8, [x8, #0x908]                         ; ivar offset ADGameOverWithStatsViewController.missionsViewControllerArray (+0x140)
  100043eb8  add     x0, x19, x8
  100043ebc  ldp     x29, x30, [sp, #0x10]
  100043ec0  ldp     x20, x19, [sp], #0x20
  100043ec4  b       _objc_storeStrong
