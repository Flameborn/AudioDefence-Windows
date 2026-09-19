// unit ADGameplayViewController — 97 functions
//   0x100056da0     140  -[ADGameplayViewController initWithNibName:bundle:]
//   0x100056e2c     468  -[ADGameplayViewController initDebugMap]
//   0x100057000     296  -[ADGameplayViewController initAmbiantManager]
//   0x100057128       4  -[ADGameplayViewController ambiantManagerDidActivatePlaylist]
//   0x10005712c     424  -[ADGameplayViewController initBrickManager]
//   0x1000572d4     276  -[ADGameplayViewController initStats]
//   0x1000573e8    1828  -[ADGameplayViewController initGATrackerStats]
//   0x100057b0c     252  -[ADGameplayViewController initAnnouncer]
//   0x100057c08    2688  -[ADGameplayViewController viewDidLoad]
//   0x100058688    1624  -[ADGameplayViewController loadView]
//   0x100058ce0       4  -[ADGameplayViewController viewWillDisappear:]
//   0x100058ce4     124  -[ADGameplayViewController setGameModeDimension]
//   0x100058d60       4  -[ADGameplayViewController goToChallengeFailedScreen]
//   0x100058d64     956  -[ADGameplayViewController viewWillAppear:]
//   0x100059120     172  -[ADGameplayViewController handleLongPress:]
//   0x1000591cc     704  -[ADGameplayViewController initWeaponManager]
//   0x10005948c     580  -[ADGameplayViewController startUpdateTimers]
//   0x1000596d0     888  -[ADGameplayViewController updateStats]
//   0x100059a48     264  -[ADGameplayViewController updateWeapons]
//   0x100059b50    1464  -[ADGameplayViewController update]
//   0x10005a108     244  -[ADGameplayViewController motionEnded:withEvent:]
//   0x10005a1fc       8  -[ADGameplayViewController canBecomeFirstResponder]
//   0x10005a204      16  -[ADGameplayViewController viewDidAppear:]
//   0x10005a214     460  -[ADGameplayViewController initButtonMode]
//   0x10005a3e0     872  -[ADGameplayViewController touchesMoveDetected:justStarted:]
//   0x10005a748     292  -[ADGameplayViewController panDetected:]
//   0x10005a86c     100  -[ADGameplayViewController switchWeaponButtonPressed:]
//   0x10005a8d0     100  -[ADGameplayViewController reloadButtonPressed:]
//   0x10005a934     100  -[ADGameplayViewController meleeButtonPressed:]
//   0x10005a998     100  -[ADGameplayViewController powerUpButtonPressed:]
//   0x10005a9fc       4  -[ADGameplayViewController playerKilledEnemy:withCombo:]
//   0x10005aa00       4  -[ADGameplayViewController playerDidACriticalHit]
//   0x10005aa04    2628  -[ADGameplayViewController updateScoreViewWithAnimation:]
//   0x10005b448      60  -[ADGameplayViewController formattedScoreFromInt:]
//   0x10005b484     180  -[ADGameplayViewController pauseButtonTouched:]
//   0x10005b538       4  -[ADGameplayViewController skipButtonPressed:]
//   0x10005b53c      16  -[ADGameplayViewController quitGameplayWithFail]
//   0x10005b54c     176  -[ADGameplayViewController goToScoreScreen]
//   0x10005b5fc     284  -[ADGameplayViewController pauseGame]
//   0x10005b718     612  -[ADGameplayViewController resumeGame]
//   0x10005b97c     252  -[ADGameplayViewController showDeathOverlay]
//   0x10005ba78     968  -[ADGameplayViewController showReviveView]
//   0x10005be40     112  -[ADGameplayViewController showReviveView]_block_invoke
//   0x10005beb0       8  sub_10005beb0
//   0x10005beb8       8  sub_10005beb8
//   0x10005bec0     588  -[ADGameplayViewController revive]
//   0x10005c10c     100  -[ADGameplayViewController gameOver]
//   0x10005c170    1536  -[ADGameplayViewController killGameplay]
//   0x10005c770     328  -[ADGameplayViewController killGameplay]_block_invoke
//   0x10005c8b8       8  sub_10005c8b8
//   0x10005c8c0       8  sub_10005c8c0
//   0x10005c8c8      60  -[ADGameplayViewController didReceiveMemoryWarning]
//   0x10005c904     148  -[ADGameplayViewController stopTimers]
//   0x10005c998     140  -[ADGameplayViewController dealloc]
//   0x10005ca24      16  -[ADGameplayViewController deathOverlay]
//   0x10005ca34      56  -[ADGameplayViewController setDeathOverlay:]
//   0x10005ca6c      16  -[ADGameplayViewController buttonsView]
//   0x10005ca7c      56  -[ADGameplayViewController setButtonsView:]
//   0x10005cab4      16  -[ADGameplayViewController weaponTouchArea]
//   0x10005cac4      56  -[ADGameplayViewController setWeaponTouchArea:]
//   0x10005cafc      16  -[ADGameplayViewController weaponButton]
//   0x10005cb0c      56  -[ADGameplayViewController setWeaponButton:]
//   0x10005cb44      16  -[ADGameplayViewController infiniteScrollViews]
//   0x10005cb54      56  -[ADGameplayViewController setInfiniteScrollViews:]
//   0x10005cb8c      16  -[ADGameplayViewController weaponManager]
//   0x10005cb9c      56  -[ADGameplayViewController setWeaponManager:]
//   0x10005cbd4      16  -[ADGameplayViewController shakeDetector]
//   0x10005cbe4      56  -[ADGameplayViewController setShakeDetector:]
//   0x10005cc1c      16  -[ADGameplayViewController player]
//   0x10005cc2c      56  -[ADGameplayViewController setPlayer:]
//   0x10005cc64      16  -[ADGameplayViewController meleeButton]
//   0x10005cc74      56  -[ADGameplayViewController setMeleeButton:]
//   0x10005ccac      16  -[ADGameplayViewController switchWeaponButton]
//   0x10005ccbc      56  -[ADGameplayViewController setSwitchWeaponButton:]
//   0x10005ccf4      16  -[ADGameplayViewController scoreView]
//   0x10005cd04      56  -[ADGameplayViewController setScoreView:]
//   0x10005cd3c      16  -[ADGameplayViewController comboLabel]
//   0x10005cd4c      56  -[ADGameplayViewController setComboLabel:]
//   0x10005cd84      16  -[ADGameplayViewController scoreLabel]
//   0x10005cd94      56  -[ADGameplayViewController setScoreLabel:]
//   0x10005cdcc      16  -[ADGameplayViewController comboMeter]
//   0x10005cddc      56  -[ADGameplayViewController setComboMeter:]
//   0x10005ce14      16  -[ADGameplayViewController timerView]
//   0x10005ce24      56  -[ADGameplayViewController setTimerView:]
//   0x10005ce5c      16  -[ADGameplayViewController timerLabel]
//   0x10005ce6c      56  -[ADGameplayViewController setTimerLabel:]
//   0x10005cea4      16  -[ADGameplayViewController skipButton]
//   0x10005ceb4      56  -[ADGameplayViewController setSkipButton:]
//   0x10005ceec      16  -[ADGameplayViewController pauseButton]
//   0x10005cefc      56  -[ADGameplayViewController setPauseButton:]
//   0x10005cf34      16  -[ADGameplayViewController paused]
//   0x10005cf44      16  -[ADGameplayViewController setPaused:]
//   0x10005cf54      16  -[ADGameplayViewController scoreTitle]
//   0x10005cf64      56  -[ADGameplayViewController setScoreTitle:]
//   0x10005cf9c      16  -[ADGameplayViewController comboTitle]
//   0x10005cfac      56  -[ADGameplayViewController setComboTitle:]
//   0x10005cfe4     584  -[ADGameplayViewController .cxx_destruct]

; ======================================================================
; -[ADGameplayViewController initWithNibName:bundle:]
; address 0x100056da0  size 140  kind objc
; ======================================================================
  100056da0  stp     x22, x21, [sp, #-0x30]!
  100056da4  stp     x20, x19, [sp, #0x10]
  100056da8  stp     x29, x30, [sp, #0x20]
  100056dac  add     x29, sp, #0x20
  100056db0  sub     sp, sp, #0x10
  100056db4  mov     x20, x3
  100056db8  mov     x21, x0
  100056dbc  mov     x0, x2
  100056dc0  bl      _objc_retain
  100056dc4  mov     x19, x0
  100056dc8  str     x21, [sp]
  100056dcc  adrp    x8, #0x10041e000
  100056dd0  ldr     x8, [x8, #0xd78]
  100056dd4  str     x8, [sp, #8]
  100056dd8  adrp    x8, #0x100416000
  100056ddc  nop
  100056de0  ldr     x1, [x8, #0xb40]
  100056de4  mov     x0, sp
  100056de8  mov     x2, x19
  100056dec  mov     x3, x20
  100056df0  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100056df4  mov     x20, x0
  100056df8  mov     x0, x19
  100056dfc  bl      _objc_release
  100056e00  mov     x0, x20
  100056e04  sub     sp, x29, #0x20
  100056e08  ldp     x29, x30, [sp, #0x20]
  100056e0c  ldp     x20, x19, [sp, #0x10]
  100056e10  ldp     x22, x21, [sp], #0x30
  100056e14  ret
  100056e18  mov     x20, x0
  100056e1c  mov     x0, x19
  100056e20  bl      _objc_release
  100056e24  mov     x0, x20
  100056e28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController initDebugMap]
; address 0x100056e2c  size 468  kind objc
; ======================================================================
  100056e2c  stp     x24, x23, [sp, #-0x40]!
  100056e30  stp     x22, x21, [sp, #0x10]
  100056e34  stp     x20, x19, [sp, #0x20]
  100056e38  stp     x29, x30, [sp, #0x30]
  100056e3c  add     x29, sp, #0x30
  100056e40  mov     x19, x0
  100056e44  adrp    x8, #0x10041d000
  100056e48  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100056e4c  adrp    x8, #0x100416000
  100056e50  nop
  100056e54  ldr     x1, [x8, #0xc00]
  100056e58  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100056e5c  mov     x29, x29
  100056e60  bl      _objc_retainAutoreleasedReturnValue
  100056e64  mov     x20, x0
  100056e68  adrp    x8, #0x100418000
  100056e6c  nop
  100056e70  ldr     x1, [x8, #0xf50]
  100056e74  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] debugMapVisible]
  100056e78  mov     x21, x0
  100056e7c  mov     x0, x20
  100056e80  bl      _objc_release
  100056e84  cbz     w21, loc_100056fac                       ; if ([[ADGameParameters sharedParameters] debugMapVisible] == 0)
  100056e88  adrp    x8, #0x10041e000
  100056e8c  ldr     x0, [x8, #0x1d8]                         ; class ADDebugMapViewController
  100056e90  adrp    x8, #0x100416000
  100056e94  nop
  100056e98  ldr     x1, [x8, #0xac8]
  100056e9c  bl      _objc_msgSend                            ; [ADDebugMapViewController alloc]
  100056ea0  adrp    x8, #0x100416000
  100056ea4  nop
  100056ea8  ldr     x1, [x8, #0xb40]
  100056eac  mov     x3, #0
  100056eb0  adrp    x2, #0x1003bd000
  100056eb4  add     x2, x2, #0xcf0                           ; @"ADDebugMapViewController"
  100056eb8  bl      _objc_msgSend                            ; [[ADDebugMapViewController alloc] initWithNibName:@"ADDebugMapViewController" bundle:0]
  100056ebc  adrp    x8, #0x10041f000
  100056ec0  ldrsw   x23, [x8, #0xaec]                        ; ivar offset ADGameplayViewController.debugMap (+0x158)
  100056ec4  ldr     x8, [x19, x23]                           ; x8 = self->debugMap
  100056ec8  str     x0, [x19, x23]                           ; self->debugMap = [[ADDebugMapViewController alloc] initWithNibName:@"ADDebugMapViewController" bundle:0]
  100056ecc  mov     x0, x8
  100056ed0  bl      _objc_release
  100056ed4  adrp    x8, #0x100416000
  100056ed8  nop
  100056edc  ldr     x21, [x8, #0xf18]
  100056ee0  mov     x0, x19
  100056ee4  mov     x1, x21
  100056ee8  bl      _objc_msgSend                            ; [self view]
  100056eec  mov     x29, x29
  100056ef0  bl      _objc_retainAutoreleasedReturnValue
  100056ef4  mov     x20, x0
  100056ef8  ldr     x0, [x19, x23]                           ; x0 = self->debugMap
  100056efc  mov     x1, x21
  100056f00  bl      _objc_msgSend                            ; [self->debugMap view]
  100056f04  mov     x29, x29
  100056f08  bl      _objc_retainAutoreleasedReturnValue
  100056f0c  mov     x22, x0
  100056f10  adrp    x8, #0x100416000
  100056f14  nop
  100056f18  ldr     x1, [x8, #0xf20]
  100056f1c  mov     x0, x20
  100056f20  mov     x2, x22
  100056f24  bl      _objc_msgSend                            ; [[self view] addSubview:[self->debugMap view]]
  100056f28  mov     x0, x22
  100056f2c  bl      _objc_release
  100056f30  mov     x0, x20
  100056f34  bl      _objc_release
  100056f38  ldr     x0, [x19, x23]                           ; x0 = self->debugMap
  100056f3c  mov     x1, x21
  100056f40  bl      _objc_msgSend                            ; [self->debugMap view]
  100056f44  mov     x29, x29
  100056f48  bl      _objc_retainAutoreleasedReturnValue
  100056f4c  mov     x20, x0
  100056f50  mov     x0, x19
  100056f54  mov     x1, x21
  100056f58  bl      _objc_msgSend                            ; [self view]
  100056f5c  mov     x29, x29
  100056f60  bl      _objc_retainAutoreleasedReturnValue
  100056f64  mov     x21, x0
  100056f68  adrp    x8, #0x100417000
  100056f6c  nop
  100056f70  ldr     x1, [x8, #0x688]
  100056f74  bl      _objc_msgSend                            ; [[self view] center]
  100056f78  adrp    x8, #0x100417000
  100056f7c  nop
  100056f80  ldr     x1, [x8, #0x1f8]
  100056f84  mov     x0, x20
  100056f88  bl      _objc_msgSend                            ; [[self->debugMap view] setCenter:{[[self view] center].0, [[self view] center].1}]
  100056f8c  mov     x0, x21
  100056f90  bl      _objc_release
  100056f94  mov     x0, x20
  100056f98  ldp     x29, x30, [sp, #0x30]
  100056f9c  ldp     x20, x19, [sp, #0x20]
  100056fa0  ldp     x22, x21, [sp, #0x10]
  100056fa4  ldp     x24, x23, [sp], #0x40
  100056fa8  b       _objc_release
loc_100056fac:
  100056fac  ldp     x29, x30, [sp, #0x30]
  100056fb0  ldp     x20, x19, [sp, #0x20]
  100056fb4  ldp     x22, x21, [sp, #0x10]
  100056fb8  ldp     x24, x23, [sp], #0x40
  100056fbc  ret
  100056fc0  mov     x19, x0
  100056fc4  b       loc_100056ff0
  100056fc8  mov     x19, x0
  100056fcc  mov     x0, x21
  100056fd0  b       loc_100056fe4
  100056fd4  mov     x19, x0
  100056fd8  b       loc_100056ff0
  100056fdc  mov     x19, x0
  100056fe0  mov     x0, x22
loc_100056fe4:
  100056fe4  bl      _objc_release
  100056fe8  b       loc_100056ff0
  100056fec  mov     x19, x0
loc_100056ff0:
  100056ff0  mov     x0, x20
  100056ff4  bl      _objc_release
  100056ff8  mov     x0, x19
  100056ffc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController initAmbiantManager]
; address 0x100057000  size 296  kind objc
; ======================================================================
  100057000  stp     x22, x21, [sp, #-0x30]!
  100057004  stp     x20, x19, [sp, #0x10]
  100057008  stp     x29, x30, [sp, #0x20]
  10005700c  add     x29, sp, #0x20
  100057010  adrp    x8, #0x10041e000
  100057014  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  100057018  adrp    x8, #0x100418000
  10005701c  nop
  100057020  ldr     x1, [x8, #0xf58]
  100057024  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  100057028  mov     x29, x29
  10005702c  bl      _objc_retainAutoreleasedReturnValue
  100057030  mov     x20, x0
  100057034  adrp    x8, #0x100418000
  100057038  nop
  10005703c  ldr     x1, [x8, #0xf60]
  100057040  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] startWithRandomAmbient]
  100057044  mov     x0, x20
  100057048  bl      _objc_release
  10005704c  adrp    x21, #0x10041d000
  100057050  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  100057054  adrp    x8, #0x100417000
  100057058  nop
  10005705c  ldr     x19, [x8, #0x4f0]
  100057060  mov     x1, x19
  100057064  bl      _objc_msgSend                            ; [S3DEngine engine]
  100057068  mov     x29, x29
  10005706c  bl      _objc_retainAutoreleasedReturnValue
  100057070  mov     x20, x0
  100057074  adrp    x8, #0x100417000
  100057078  nop
  10005707c  ldr     x1, [x8, #0xd18]
  100057080  fmov    s0, #1.50000000
  100057084  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbRoomSize:1.5]
  100057088  mov     x0, x20
  10005708c  bl      _objc_release
  100057090  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  100057094  mov     x1, x19
  100057098  bl      _objc_msgSend                            ; [S3DEngine engine]
  10005709c  mov     x29, x29
  1000570a0  bl      _objc_retainAutoreleasedReturnValue
  1000570a4  mov     x20, x0
  1000570a8  adrp    x8, #0x100417000
  1000570ac  nop
  1000570b0  ldr     x1, [x8, #0xd20]
  1000570b4  adrp    x8, #0x100181000
  1000570b8  ldr     s0, [x8, #0xac0]                         ; s0 = 50.0
  1000570bc  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbDampening:50]
  1000570c0  mov     x0, x20
  1000570c4  bl      _objc_release
  1000570c8  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  1000570cc  mov     x1, x19
  1000570d0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000570d4  mov     x29, x29
  1000570d8  bl      _objc_retainAutoreleasedReturnValue
  1000570dc  mov     x20, x0
  1000570e0  adrp    x8, #0x100417000
  1000570e4  nop
  1000570e8  ldr     x1, [x8, #0xd28]
  1000570ec  fmov    s0, #1.00000000
  1000570f0  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbVolume:1]
  1000570f4  mov     x0, x20
  1000570f8  ldp     x29, x30, [sp, #0x20]
  1000570fc  ldp     x20, x19, [sp, #0x10]
  100057100  ldp     x22, x21, [sp], #0x30
  100057104  b       _objc_release
  100057108  b       loc_100057114
  10005710c  b       loc_100057114
  100057110  b       loc_100057114
loc_100057114:
  100057114  mov     x19, x0
  100057118  mov     x0, x20
  10005711c  bl      _objc_release
  100057120  mov     x0, x19
  100057124  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController ambiantManagerDidActivatePlaylist]
; address 0x100057128  size 4  kind objc
; ======================================================================
  100057128  ret

; ======================================================================
; -[ADGameplayViewController initBrickManager]
; address 0x10005712c  size 424  kind objc
; ======================================================================
  10005712c  stp     x22, x21, [sp, #-0x30]!
  100057130  stp     x20, x19, [sp, #0x10]
  100057134  stp     x29, x30, [sp, #0x20]
  100057138  add     x29, sp, #0x20
  10005713c  mov     x20, x0
  100057140  adrp    x8, #0x10041f000
  100057144  ldrsw   x8, [x8, #0xaf0]                         ; ivar offset ADGameplayViewController.nbRevives (+0x180)
  100057148  str     wzr, [x20, x8]                           ; self->nbRevives = 0
  10005714c  adrp    x22, #0x10041e000
  100057150  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  100057154  adrp    x8, #0x100417000
  100057158  nop
  10005715c  ldr     x19, [x8, #0xaa8]
  100057160  mov     x1, x19
  100057164  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100057168  mov     x29, x29
  10005716c  bl      _objc_retainAutoreleasedReturnValue
  100057170  mov     x21, x0
  100057174  adrp    x8, #0x100417000
  100057178  nop
  10005717c  ldr     x1, [x8, #0xd30]
  100057180  mov     w2, #1
  100057184  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] setMode:1]
  100057188  mov     x0, x21
  10005718c  bl      _objc_release
  100057190  adrp    x8, #0x10041d000
  100057194  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100057198  adrp    x8, #0x100417000
  10005719c  nop
  1000571a0  ldr     x1, [x8, #0x848]
  1000571a4  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  1000571a8  mov     x29, x29
  1000571ac  bl      _objc_retainAutoreleasedReturnValue
  1000571b0  mov     x21, x0
  1000571b4  adrp    x8, #0x100416000
  1000571b8  nop
  1000571bc  ldr     x1, [x8, #0xe50]
  1000571c0  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] startGameplay]
  1000571c4  mov     x0, x21
  1000571c8  bl      _objc_release
  1000571cc  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000571d0  mov     x1, x19
  1000571d4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000571d8  mov     x29, x29
  1000571dc  bl      _objc_retainAutoreleasedReturnValue
  1000571e0  mov     x21, x0
  1000571e4  adrp    x8, #0x100417000
  1000571e8  nop
  1000571ec  ldr     x1, [x8, #0xd38]
  1000571f0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] reset]
  1000571f4  mov     x0, x21
  1000571f8  bl      _objc_release
  1000571fc  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  100057200  mov     x1, x19
  100057204  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100057208  mov     x29, x29
  10005720c  bl      _objc_retainAutoreleasedReturnValue
  100057210  mov     x21, x0
  100057214  adrp    x8, #0x100417000
  100057218  nop
  10005721c  ldr     x1, [x8, #0xc10]
  100057220  mov     x2, x20
  100057224  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] setGameplayViewController:self]
  100057228  mov     x0, x21
  10005722c  bl      _objc_release
  100057230  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  100057234  mov     x1, x19
  100057238  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005723c  mov     x29, x29
  100057240  bl      _objc_retainAutoreleasedReturnValue
  100057244  mov     x20, x0
  100057248  adrp    x8, #0x100418000
  10005724c  nop
  100057250  ldr     x1, [x8, #0xf68]
  100057254  adrp    x2, #0x1003bd000
  100057258  add     x2, x2, #0xd10                           ; @"brick_chance"
  10005725c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] loadBrickChancePlist:@"brick_chance"]
  100057260  mov     x0, x20
  100057264  bl      _objc_release
  100057268  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  10005726c  mov     x1, x19
  100057270  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100057274  mov     x29, x29
  100057278  bl      _objc_retainAutoreleasedReturnValue
  10005727c  mov     x20, x0
  100057280  adrp    x8, #0x100418000
  100057284  nop
  100057288  ldr     x1, [x8, #0xf70]
  10005728c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] loadNextBrick]
  100057290  mov     x0, x20
  100057294  ldp     x29, x30, [sp, #0x20]
  100057298  ldp     x20, x19, [sp, #0x10]
  10005729c  ldp     x22, x21, [sp], #0x30
  1000572a0  b       _objc_release
  1000572a4  b       loc_1000572b0
  1000572a8  b       loc_1000572b0
  1000572ac  b       loc_1000572b0
loc_1000572b0:
  1000572b0  mov     x19, x0
  1000572b4  mov     x0, x21
  1000572b8  b       loc_1000572c8
  1000572bc  b       loc_1000572c0
loc_1000572c0:
  1000572c0  mov     x19, x0
  1000572c4  mov     x0, x20
loc_1000572c8:
  1000572c8  bl      _objc_release
  1000572cc  mov     x0, x19
  1000572d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController initStats]
; address 0x1000572d4  size 276  kind objc
; ======================================================================
  1000572d4  stp     x20, x19, [sp, #-0x20]!
  1000572d8  stp     x29, x30, [sp, #0x10]
  1000572dc  add     x29, sp, #0x10
  1000572e0  sub     sp, sp, #0x10
  1000572e4  mov     x19, x0
  1000572e8  adrp    x8, #0x10041d000
  1000572ec  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000572f0  adrp    x8, #0x100417000
  1000572f4  nop
  1000572f8  ldr     x1, [x8, #0x228]
  1000572fc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100057300  mov     x29, x29
  100057304  bl      _objc_retainAutoreleasedReturnValue
  100057308  mov     x20, x0
  10005730c  adrp    x8, #0x100418000
  100057310  nop
  100057314  ldr     x1, [x8, #0xf78]
  100057318  adrp    x2, #0x1003bd000
  10005731c  add     x2, x2, #0xd30                           ; @"ENDLESS"
  100057320  bl      _objc_msgSend                            ; [[ADInGameStats singleton] startNewLevel:@"ENDLESS"]
  100057324  mov     x0, x20
  100057328  bl      _objc_release
  10005732c  adrp    x8, #0x100418000
  100057330  nop
  100057334  ldr     x1, [x8, #0x7b0]
  100057338  mov     x0, x19
  10005733c  bl      _objc_msgSend                            ; [self scoreLabel]
  100057340  mov     x29, x29
  100057344  bl      _objc_retainAutoreleasedReturnValue
  100057348  mov     x19, x0
  10005734c  adrp    x8, #0x10041d000
  100057350  ldr     x0, [x8, #0xf78]                         ; class NSString
  100057354  adrp    x8, #0x100416000
  100057358  nop
  10005735c  ldr     x1, [x8, #0xee8]
  100057360  str     xzr, [sp]
  100057364  adrp    x2, #0x1003ba000
  100057368  add     x2, x2, #0xc50                           ; @"%i"
  10005736c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", 0]
  100057370  mov     x29, x29
  100057374  bl      _objc_retainAutoreleasedReturnValue
  100057378  mov     x20, x0
  10005737c  adrp    x8, #0x100416000
  100057380  nop
  100057384  ldr     x1, [x8, #0xb68]
  100057388  mov     x0, x19
  10005738c  mov     x2, x20
  100057390  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[NSString stringWithFormat:@"%i", 0]]
  100057394  mov     x0, x20
  100057398  bl      _objc_release
  10005739c  mov     x0, x19
  1000573a0  sub     sp, x29, #0x10
  1000573a4  ldp     x29, x30, [sp, #0x10]
  1000573a8  ldp     x20, x19, [sp], #0x20
  1000573ac  b       _objc_release
  1000573b0  mov     x1, x20
  1000573b4  mov     x20, x0
  1000573b8  mov     x0, x1
  1000573bc  b       loc_1000573dc
  1000573c0  mov     x20, x0
  1000573c4  b       loc_1000573d8
  1000573c8  mov     x1, x20
  1000573cc  mov     x20, x0
  1000573d0  mov     x0, x1
  1000573d4  bl      _objc_release
loc_1000573d8:
  1000573d8  mov     x0, x19
loc_1000573dc:
  1000573dc  bl      _objc_release
  1000573e0  mov     x0, x20
  1000573e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController initGATrackerStats]
; address 0x1000573e8  size 1828  kind objc
; ======================================================================
  1000573e8  stp     x28, x27, [sp, #-0x60]!
  1000573ec  stp     x26, x25, [sp, #0x10]
  1000573f0  stp     x24, x23, [sp, #0x20]
  1000573f4  stp     x22, x21, [sp, #0x30]
  1000573f8  stp     x20, x19, [sp, #0x40]
  1000573fc  stp     x29, x30, [sp, #0x50]
  100057400  add     x29, sp, #0x50
  100057404  sub     sp, sp, #0x10
  100057408  mov     x21, x0
  10005740c  adrp    x8, #0x10041d000
  100057410  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100057414  adrp    x8, #0x100416000
  100057418  nop
  10005741c  ldr     x20, [x8, #0xac0]
  100057420  mov     x1, x20
  100057424  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100057428  mov     x29, x29
  10005742c  bl      _objc_retainAutoreleasedReturnValue
  100057430  mov     x22, x0
  100057434  adrp    x8, #0x100417000
  100057438  nop
  10005743c  ldr     x1, [x8, #0x2f8]
  100057440  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100057444  mov     x29, x29
  100057448  bl      _objc_retainAutoreleasedReturnValue
  10005744c  mov     x19, x0
  100057450  mov     x0, x22
  100057454  bl      _objc_release
  100057458  adrp    x28, #0x10041d000
  10005745c  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100057460  adrp    x8, #0x100417000
  100057464  nop
  100057468  ldr     x22, [x8, #0x228]
  10005746c  mov     x1, x22
  100057470  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100057474  mov     x29, x29
  100057478  bl      _objc_retainAutoreleasedReturnValue
  10005747c  mov     x25, x0
  100057480  adrp    x8, #0x100418000
  100057484  nop
  100057488  ldr     x23, [x8, #0xf80]
  10005748c  mov     x1, x23
  100057490  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameMode]
  100057494  mov     x29, x29
  100057498  bl      _objc_retainAutoreleasedReturnValue
  10005749c  mov     x26, x0
  1000574a0  adrp    x8, #0x100416000
  1000574a4  nop
  1000574a8  ldr     x24, [x8, #0xf58]
  1000574ac  adrp    x2, #0x1003bd000
  1000574b0  add     x2, x2, #0xd30                           ; @"ENDLESS"
  1000574b4  mov     x1, x24
  1000574b8  bl      _objc_msgSend                            ; [[[ADInGameStats singleton] gameMode] isEqualToString:@"ENDLESS"]
  1000574bc  mov     x27, x0
  1000574c0  mov     x0, x26
  1000574c4  bl      _objc_release
  1000574c8  mov     x0, x25
  1000574cc  bl      _objc_release
  1000574d0  cbz     w27, loc_100057500                       ; if ([[[ADInGameStats singleton] gameMode] isEqualToString:@"ENDLESS"] == 0)
  1000574d4  adrp    x8, #0x1003b8000
  1000574d8  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  1000574dc  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  1000574e0  adrp    x8, #0x100417000
  1000574e4  nop
  1000574e8  ldr     x1, [x8, #0x300]
  1000574ec  adrp    x3, #0x1003bd000
  1000574f0  add     x3, x3, #0xd50                           ; @"Endless mode game"
  1000574f4  mov     x0, x19
  1000574f8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:@"Endless mode game"]
  1000574fc  b       loc_10005757c
loc_100057500:
  100057500  ldr     x0, [x28, #0xfc0]                        ; class ADInGameStats
  100057504  mov     x1, x22
  100057508  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005750c  mov     x29, x29
  100057510  bl      _objc_retainAutoreleasedReturnValue
  100057514  mov     x22, x0
  100057518  mov     x1, x23
  10005751c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameMode]
  100057520  mov     x29, x29
  100057524  bl      _objc_retainAutoreleasedReturnValue
  100057528  mov     x23, x0
  10005752c  adrp    x2, #0x1003bd000
  100057530  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  100057534  mov     x1, x24
  100057538  bl      _objc_msgSend                            ; [[[ADInGameStats singleton] gameMode] isEqualToString:@"CHALLENGE"]
  10005753c  mov     x24, x0
  100057540  mov     x0, x23
  100057544  bl      _objc_release
  100057548  mov     x0, x22
  10005754c  bl      _objc_release
  100057550  cbz     w24, loc_10005757c                       ; if ([[[ADInGameStats singleton] gameMode] isEqualToString:@"CHALLENGE"] == 0)
  100057554  adrp    x8, #0x1003b8000
  100057558  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  10005755c  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  100057560  adrp    x8, #0x100417000
  100057564  nop
  100057568  ldr     x1, [x8, #0x300]
  10005756c  adrp    x3, #0x1003bd000
  100057570  add     x3, x3, #0xd70                           ; @"Challenge mode game"
  100057574  mov     x0, x19
  100057578  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:@"Challenge mode game"]
loc_10005757c:
  10005757c  adrp    x8, #0x10041d000
  100057580  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100057584  adrp    x8, #0x100417000
  100057588  nop
  10005758c  ldr     x1, [x8, #0x308]
  100057590  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createAppView]
  100057594  mov     x29, x29
  100057598  bl      _objc_retainAutoreleasedReturnValue
  10005759c  mov     x22, x0
  1000575a0  adrp    x8, #0x100417000
  1000575a4  nop
  1000575a8  ldr     x1, [x8, #0x310]
  1000575ac  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createAppView] build]
  1000575b0  mov     x29, x29
  1000575b4  bl      _objc_retainAutoreleasedReturnValue
  1000575b8  mov     x23, x0
  1000575bc  adrp    x8, #0x100417000
  1000575c0  nop
  1000575c4  ldr     x1, [x8, #0x318]
  1000575c8  mov     x0, x19
  1000575cc  mov     x2, x23
  1000575d0  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createAppView] build]]
  1000575d4  mov     x0, x23
  1000575d8  bl      _objc_release
  1000575dc  mov     x0, x22
  1000575e0  bl      _objc_release
  1000575e4  adrp    x8, #0x100418000
  1000575e8  nop
  1000575ec  ldr     x1, [x8, #0xf88]
  1000575f0  mov     x0, x21
  1000575f4  bl      _objc_msgSend                            ; [self setGameModeDimension]
  1000575f8  adrp    x26, #0x10041d000
  1000575fc  ldr     x0, [x26, #0xef0]                        ; class ADGameParameters
  100057600  adrp    x8, #0x100416000
  100057604  nop
  100057608  ldr     x22, [x8, #0xc00]
  10005760c  mov     x1, x22
  100057610  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100057614  mov     x29, x29
  100057618  bl      _objc_retainAutoreleasedReturnValue
  10005761c  mov     x23, x0
  100057620  adrp    x8, #0x100417000
  100057624  nop
  100057628  ldr     x1, [x8, #0xc90]
  10005762c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  100057630  mov     x24, x0
  100057634  mov     x0, x23
  100057638  bl      _objc_release
  10005763c  adrp    x25, #0x10041e000
  100057640  ldr     x0, [x25, #8]                            ; class ADTracker
  100057644  cbz     w24, loc_10005767c                       ; if ([[ADGameParameters sharedParameters] buttonMode] == 0)
  100057648  mov     x1, x20
  10005764c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100057650  mov     x29, x29
  100057654  bl      _objc_retainAutoreleasedReturnValue
  100057658  mov     x23, x0
  10005765c  adrp    x8, #0x100418000
  100057660  nop
  100057664  ldr     x1, [x8, #0xde0]
  100057668  adrp    x2, #0x1003bd000
  10005766c  add     x2, x2, #0x8d0                           ; @"button"
  100057670  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setButtonMode:@"button"]
  100057674  b       loc_1000576a8
  100057678  b       loc_100057acc
loc_10005767c:
  10005767c  mov     x1, x20
  100057680  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100057684  mov     x29, x29
  100057688  bl      _objc_retainAutoreleasedReturnValue
  10005768c  mov     x23, x0
  100057690  adrp    x8, #0x100418000
  100057694  nop
  100057698  ldr     x1, [x8, #0xde0]
  10005769c  adrp    x2, #0x1003bd000
  1000576a0  add     x2, x2, #0x8f0                           ; @"gesture"
  1000576a4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setButtonMode:@"gesture"]
loc_1000576a8:
  1000576a8  mov     x0, x23
  1000576ac  bl      _objc_release
  1000576b0  ldr     x0, [x26, #0xef0]                        ; class ADGameParameters
  1000576b4  mov     x1, x22
  1000576b8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000576bc  mov     x29, x29
  1000576c0  bl      _objc_retainAutoreleasedReturnValue
  1000576c4  mov     x22, x0
  1000576c8  adrp    x8, #0x100417000
  1000576cc  nop
  1000576d0  ldr     x1, [x8, #0xc80]
  1000576d4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000576d8  mov     x23, x0
  1000576dc  mov     x0, x22
  1000576e0  bl      _objc_release
  1000576e4  cmp     w23, #2
  1000576e8  b.ne    loc_100057724                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  1000576ec  ldr     x0, [x25, #8]                            ; class ADTracker
  1000576f0  mov     x1, x20
  1000576f4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000576f8  mov     x29, x29
  1000576fc  bl      _objc_retainAutoreleasedReturnValue
  100057700  mov     x22, x0
  100057704  adrp    x8, #0x100418000
  100057708  nop
  10005770c  ldr     x1, [x8, #0xdd0]
  100057710  adrp    x2, #0x1003bd000
  100057714  add     x2, x2, #0x8b0                           ; @"swipe"
  100057718  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setControlMode:@"swipe"]
  10005771c  b       loc_1000577d0
  100057720  b       loc_100057af0
loc_100057724:
  100057724  cmp     w23, #1
  100057728  b.ne    loc_100057764                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 1)
  10005772c  ldr     x0, [x25, #8]                            ; class ADTracker
  100057730  mov     x1, x20
  100057734  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100057738  mov     x29, x29
  10005773c  bl      _objc_retainAutoreleasedReturnValue
  100057740  mov     x22, x0
  100057744  adrp    x8, #0x100418000
  100057748  nop
  10005774c  ldr     x1, [x8, #0xdd0]
  100057750  adrp    x2, #0x1003bd000
  100057754  add     x2, x2, #0x870                           ; @"gyro"
  100057758  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setControlMode:@"gyro"]
  10005775c  b       loc_1000577d0
  100057760  b       loc_100057af0
loc_100057764:
  100057764  ldr     x0, [x25, #8]                            ; class ADTracker
  100057768  cmp     w23, #3
  10005776c  b.ne    loc_1000577a4                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  100057770  mov     x1, x20
  100057774  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100057778  mov     x29, x29
  10005777c  bl      _objc_retainAutoreleasedReturnValue
  100057780  mov     x22, x0
  100057784  adrp    x8, #0x100418000
  100057788  nop
  10005778c  ldr     x1, [x8, #0xdd0]
  100057790  adrp    x2, #0x1003bd000
  100057794  add     x2, x2, #0x890                           ; @"tilt"
  100057798  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setControlMode:@"tilt"]
  10005779c  b       loc_1000577d0
  1000577a0  b       loc_100057af0
loc_1000577a4:
  1000577a4  mov     x1, x20
  1000577a8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000577ac  mov     x29, x29
  1000577b0  bl      _objc_retainAutoreleasedReturnValue
  1000577b4  mov     x22, x0
  1000577b8  adrp    x8, #0x100418000
  1000577bc  nop
  1000577c0  ldr     x1, [x8, #0xdd0]
  1000577c4  adrp    x2, #0x1003bd000
  1000577c8  add     x2, x2, #0xd90                           ; @"undefined"
  1000577cc  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setControlMode:@"undefined"]
loc_1000577d0:
  1000577d0  mov     x0, x22
  1000577d4  bl      _objc_release
  1000577d8  adrp    x8, #0x10041e000
  1000577dc  ldr     x0, [x8, #0x1e8]                         ; class ADChallengeGameplayViewController
  1000577e0  adrp    x8, #0x100417000
  1000577e4  nop
  1000577e8  ldr     x1, [x8, #0x2e0]
  1000577ec  bl      _objc_msgSend                            ; [ADChallengeGameplayViewController class]
  1000577f0  mov     x2, x0
  1000577f4  adrp    x8, #0x100417000
  1000577f8  nop
  1000577fc  ldr     x1, [x8, #0x3b8]
  100057800  mov     x0, x21
  100057804  bl      _objc_msgSend                            ; [self isKindOfClass:[ADChallengeGameplayViewController class]]
  100057808  cbz     w0, loc_1000578a8                        ; if ([self isKindOfClass:[ADChallengeGameplayViewController class]] == 0)
  10005780c  adrp    x8, #0x100418000
  100057810  nop
  100057814  ldr     x1, [x8, #0xf90]
  100057818  mov     x0, x21
  10005781c  bl      _objc_msgSend                            ; [self getChallengeID]
  100057820  mov     x29, x29
  100057824  bl      _objc_retainAutoreleasedReturnValue
  100057828  mov     x21, x0
  10005782c  ldr     x0, [x25, #8]                            ; class ADTracker
  100057830  mov     x1, x20
  100057834  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100057838  mov     x29, x29
  10005783c  bl      _objc_retainAutoreleasedReturnValue
  100057840  mov     x22, x0
  100057844  adrp    x8, #0x100417000
  100057848  nop
  10005784c  ldr     x1, [x8, #0x9b8]
  100057850  mov     x4, #0
  100057854  mov     x5, #0
  100057858  adrp    x3, #0x1003bb000
  10005785c  add     x3, x3, #0x710                           ; @"Challenge name"
  100057860  mov     x2, x21
  100057864  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:[self getChallengeID] ForDimension:@"Challenge name" AndValue:0 ForMetric:0]
  100057868  mov     x0, x22
  10005786c  bl      _objc_release
  100057870  ldr     x0, [x25, #8]                            ; class ADTracker
  100057874  mov     x1, x20
  100057878  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10005787c  mov     x29, x29
  100057880  bl      _objc_retainAutoreleasedReturnValue
  100057884  mov     x22, x0
  100057888  adrp    x8, #0x100418000
  10005788c  nop
  100057890  ldr     x1, [x8, #0xf98]
  100057894  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] challengeStarted]
  100057898  mov     x0, x22
  10005789c  bl      _objc_release
  1000578a0  mov     x0, x21
  1000578a4  bl      _objc_release
loc_1000578a8:
  1000578a8  adrp    x8, #0x10041d000
  1000578ac  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000578b0  adrp    x8, #0x100416000
  1000578b4  nop
  1000578b8  ldr     x1, [x8, #0xec8]
  1000578bc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000578c0  mov     x29, x29
  1000578c4  bl      _objc_retainAutoreleasedReturnValue
  1000578c8  mov     x21, x0
  1000578cc  adrp    x8, #0x100418000
  1000578d0  nop
  1000578d4  ldr     x1, [x8, #0xfa0]
  1000578d8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] getNumberOfWeaponsUnlocked]
  1000578dc  mov     x22, x0
  1000578e0  mov     x0, x21
  1000578e4  bl      _objc_release
  1000578e8  ldr     x0, [x25, #8]                            ; class ADTracker
  1000578ec  mov     x1, x20
  1000578f0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000578f4  mov     x29, x29
  1000578f8  bl      _objc_retainAutoreleasedReturnValue
  1000578fc  mov     x23, x0
  100057900  adrp    x26, #0x10041d000
  100057904  ldr     x0, [x26, #0xf78]                        ; class NSString
  100057908  adrp    x8, #0x100416000
  10005790c  nop
  100057910  ldr     x21, [x8, #0xee8]
  100057914  str     x22, [sp]
  100057918  adrp    x2, #0x1003ba000
  10005791c  add     x2, x2, #0x1f0                           ; @"%d"
  100057920  mov     x1, x21
  100057924  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[ADInventory sharedInventory] getNumberOfWeaponsUnlocked]]
  100057928  mov     x29, x29
  10005792c  bl      _objc_retainAutoreleasedReturnValue
  100057930  mov     x24, x0
  100057934  adrp    x8, #0x100417000
  100057938  nop
  10005793c  ldr     x22, [x8, #0x9b8]
  100057940  mov     x4, #0
  100057944  mov     x5, #0
  100057948  adrp    x3, #0x1003bd000
  10005794c  add     x3, x3, #0xdb0                           ; @"Number of unlocked weapons"
  100057950  mov     x0, x23
  100057954  mov     x1, x22
  100057958  mov     x2, x24
  10005795c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:[NSString stringWithFormat:@"%d", [[ADInventory sharedInventory] getNumberOfWeaponsUnlocked]] ForDimension:@"Number of unlocked weapons" AndValue:0 ForMetric:0]
  100057960  mov     x0, x24
  100057964  bl      _objc_release
  100057968  mov     x0, x23
  10005796c  bl      _objc_release
  100057970  adrp    x8, #0x10041d000
  100057974  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  100057978  adrp    x8, #0x100416000
  10005797c  nop
  100057980  ldr     x1, [x8, #0xe10]
  100057984  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  100057988  mov     x29, x29
  10005798c  bl      _objc_retainAutoreleasedReturnValue
  100057990  mov     x23, x0
  100057994  adrp    x8, #0x100418000
  100057998  nop
  10005799c  ldr     x1, [x8, #0xfa8]
  1000579a0  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getNumberOfZombiesUnlocked]
  1000579a4  mov     x24, x0
  1000579a8  mov     x0, x23
  1000579ac  bl      _objc_release
  1000579b0  ldr     x0, [x25, #8]                            ; class ADTracker
  1000579b4  mov     x1, x20
  1000579b8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000579bc  mov     x29, x29
  1000579c0  bl      _objc_retainAutoreleasedReturnValue
  1000579c4  mov     x23, x0
  1000579c8  ldr     x0, [x26, #0xf78]                        ; class NSString
  1000579cc  str     x24, [sp]
  1000579d0  adrp    x2, #0x1003ba000
  1000579d4  add     x2, x2, #0x1f0                           ; @"%d"
  1000579d8  mov     x1, x21
  1000579dc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [[ADPersistentStats persistentStats] getNumberOfZombiesUnlocked]]
  1000579e0  mov     x29, x29
  1000579e4  bl      _objc_retainAutoreleasedReturnValue
  1000579e8  mov     x21, x0
  1000579ec  mov     x4, #0
  1000579f0  mov     x5, #0
  1000579f4  adrp    x3, #0x1003bd000
  1000579f8  add     x3, x3, #0xdd0                           ; @"Number of unlocked zombies"
  1000579fc  mov     x0, x23
  100057a00  mov     x1, x22
  100057a04  mov     x2, x21
  100057a08  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:[NSString stringWithFormat:@"%d", [[ADPersistentStats persistentStats] getNumberOfZombiesUnlocked]] ForDimension:@"Number of unlocked zombies" AndValue:0 ForMetric:0]
  100057a0c  mov     x0, x21
  100057a10  bl      _objc_release
  100057a14  mov     x0, x23
  100057a18  bl      _objc_release
  100057a1c  mov     x0, x19
  100057a20  sub     sp, x29, #0x50
  100057a24  ldp     x29, x30, [sp, #0x50]
  100057a28  ldp     x20, x19, [sp, #0x40]
  100057a2c  ldp     x22, x21, [sp, #0x30]
  100057a30  ldp     x24, x23, [sp, #0x20]
  100057a34  ldp     x26, x25, [sp, #0x10]
  100057a38  ldp     x28, x27, [sp], #0x60
  100057a3c  b       _objc_release
  100057a40  mov     x20, x0
  100057a44  b       loc_100057afc
  100057a48  mov     x20, x0
  100057a4c  mov     x0, x22
  100057a50  b       loc_100057b00
  100057a54  mov     x20, x0
  100057a58  b       loc_100057a68
  100057a5c  mov     x20, x0
  100057a60  mov     x0, x26
  100057a64  bl      _objc_release
loc_100057a68:
  100057a68  mov     x0, x25
  100057a6c  b       loc_100057af8
  100057a70  b       loc_100057af0
  100057a74  b       loc_100057abc
  100057a78  b       loc_100057acc
  100057a7c  b       loc_100057af0
  100057a80  mov     x20, x0
  100057a84  b       loc_100057ae8
  100057a88  mov     x20, x0
  100057a8c  b       loc_100057ae8
  100057a90  b       loc_100057acc
  100057a94  mov     x20, x0
  100057a98  mov     x0, x24
  100057a9c  b       loc_100057ab0
  100057aa0  b       loc_100057acc
  100057aa4  b       loc_100057acc
  100057aa8  mov     x20, x0
  100057aac  mov     x0, x21
loc_100057ab0:
  100057ab0  bl      _objc_release
  100057ab4  b       loc_100057ad0
  100057ab8  b       loc_100057af0
loc_100057abc:
  100057abc  mov     x20, x0
  100057ac0  mov     x0, x23
  100057ac4  bl      _objc_release
  100057ac8  b       loc_100057af4
loc_100057acc:
  100057acc  mov     x20, x0
loc_100057ad0:
  100057ad0  mov     x0, x23
  100057ad4  b       loc_100057af8
  100057ad8  b       loc_100057adc
loc_100057adc:
  100057adc  mov     x20, x0
  100057ae0  mov     x0, x22
  100057ae4  bl      _objc_release
loc_100057ae8:
  100057ae8  mov     x0, x21
  100057aec  b       loc_100057af8
loc_100057af0:
  100057af0  mov     x20, x0
loc_100057af4:
  100057af4  mov     x0, x22
loc_100057af8:
  100057af8  bl      _objc_release
loc_100057afc:
  100057afc  mov     x0, x19
loc_100057b00:
  100057b00  bl      _objc_release
  100057b04  mov     x0, x20
  100057b08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController initAnnouncer]
; address 0x100057b0c  size 252  kind objc
; ======================================================================
  100057b0c  stp     x20, x19, [sp, #-0x20]!
  100057b10  stp     x29, x30, [sp, #0x10]
  100057b14  add     x29, sp, #0x10
  100057b18  adrp    x8, #0x10041d000
  100057b1c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100057b20  adrp    x8, #0x100416000
  100057b24  nop
  100057b28  ldr     x1, [x8, #0xc00]
  100057b2c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100057b30  mov     x29, x29
  100057b34  bl      _objc_retainAutoreleasedReturnValue
  100057b38  mov     x19, x0
  100057b3c  adrp    x8, #0x100417000
  100057b40  nop
  100057b44  ldr     x1, [x8, #0x5f8]
  100057b48  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  100057b4c  mov     x20, x0
  100057b50  mov     x0, x19
  100057b54  bl      _objc_release
  100057b58  cbz     w20, loc_100057bcc                       ; if ([[ADGameParameters sharedParameters] lastAnnouncerValue] == 0)
  100057b5c  adrp    x8, #0x10041d000
  100057b60  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100057b64  adrp    x8, #0x100417000
  100057b68  nop
  100057b6c  ldr     x1, [x8, #0x4f0]
  100057b70  bl      _objc_msgSend                            ; [S3DEngine engine]
  100057b74  mov     x29, x29
  100057b78  bl      _objc_retainAutoreleasedReturnValue
  100057b7c  mov     x19, x0
  100057b80  adrp    x8, #0x100417000
  100057b84  nop
  100057b88  ldr     x1, [x8, #0x4f8]
  100057b8c  adrp    x2, #0x1003ba000
  100057b90  add     x2, x2, #0x830                           ; @"announcer"
  100057b94  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"announcer"]
  100057b98  mov     x29, x29
  100057b9c  bl      _objc_retainAutoreleasedReturnValue
  100057ba0  mov     x20, x0
  100057ba4  adrp    x8, #0x100417000
  100057ba8  nop
  100057bac  ldr     x1, [x8, #0x508]
  100057bb0  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"announcer"] activate]
  100057bb4  mov     x0, x20
  100057bb8  bl      _objc_release
  100057bbc  mov     x0, x19
  100057bc0  ldp     x29, x30, [sp, #0x10]
  100057bc4  ldp     x20, x19, [sp], #0x20
  100057bc8  b       _objc_release
loc_100057bcc:
  100057bcc  ldp     x29, x30, [sp, #0x10]
  100057bd0  ldp     x20, x19, [sp], #0x20
  100057bd4  ret
  100057bd8  mov     x20, x0
  100057bdc  b       loc_100057bf8
  100057be0  mov     x20, x0
  100057be4  b       loc_100057bf8
  100057be8  mov     x1, x20
  100057bec  mov     x20, x0
  100057bf0  mov     x0, x1
  100057bf4  bl      _objc_release
loc_100057bf8:
  100057bf8  mov     x0, x19
  100057bfc  bl      _objc_release
  100057c00  mov     x0, x20
  100057c04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController viewDidLoad]
; address 0x100057c08  size 2688  kind objc
; ======================================================================
  100057c08  stp     d9, d8, [sp, #-0x70]!
  100057c0c  stp     x28, x27, [sp, #0x10]
  100057c10  stp     x26, x25, [sp, #0x20]
  100057c14  stp     x24, x23, [sp, #0x30]
  100057c18  stp     x22, x21, [sp, #0x40]
  100057c1c  stp     x20, x19, [sp, #0x50]
  100057c20  stp     x29, x30, [sp, #0x60]
  100057c24  add     x29, sp, #0x60
  100057c28  sub     sp, sp, #0x1c0
  100057c2c  mov     x19, x0
  100057c30  adrp    x8, #0x1003b0000
  100057c34  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100057c38  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100057c3c  stur    x8, [x29, #-0x68]
  100057c40  str     x19, [sp, #0xa8]
  100057c44  adrp    x8, #0x10041e000
  100057c48  ldr     x8, [x8, #0xd78]
  100057c4c  str     x8, [sp, #0xb0]
  100057c50  adrp    x8, #0x100416000
  100057c54  nop
  100057c58  ldr     x1, [x8, #0xb48]
  100057c5c  add     x0, sp, #0xa8
  100057c60  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100057c64  adrp    x8, #0x100418000
  100057c68  nop
  100057c6c  ldr     x1, [x8, #0xfb0]
  100057c70  mov     x0, x19
  100057c74  bl      _objc_msgSend                            ; [self initWeaponManager]
  100057c78  adrp    x8, #0x100417000
  100057c7c  nop
  100057c80  ldr     x1, [x8, #0xca8]
  100057c84  mov     x0, x19
  100057c88  bl      _objc_msgSend                            ; [self initAmbiantManager]
  100057c8c  adrp    x8, #0x100417000
  100057c90  nop
  100057c94  ldr     x1, [x8, #0xcb0]
  100057c98  mov     x0, x19
  100057c9c  bl      _objc_msgSend                            ; [self initBrickManager]
  100057ca0  adrp    x8, #0x100418000
  100057ca4  nop
  100057ca8  ldr     x1, [x8, #0xfb8]
  100057cac  mov     x0, x19
  100057cb0  bl      _objc_msgSend                            ; [self initDebugMap]
  100057cb4  adrp    x8, #0x100417000
  100057cb8  nop
  100057cbc  ldr     x1, [x8, #0xcb8]
  100057cc0  mov     x0, x19
  100057cc4  bl      _objc_msgSend                            ; [self startUpdateTimers]
  100057cc8  adrp    x8, #0x100418000
  100057ccc  nop
  100057cd0  ldr     x1, [x8, #0xfc0]
  100057cd4  mov     x0, x19
  100057cd8  bl      _objc_msgSend                            ; [self initButtonMode]
  100057cdc  adrp    x8, #0x100418000
  100057ce0  nop
  100057ce4  ldr     x24, [x8, #0xfc8]
  100057ce8  mov     x0, x19
  100057cec  mov     x1, x24
  100057cf0  bl      _objc_msgSend                            ; [self comboMeter]
  100057cf4  mov     x29, x29
  100057cf8  bl      _objc_retainAutoreleasedReturnValue
  100057cfc  mov     x20, x0
  100057d00  mov     x0, x19
  100057d04  mov     x1, x24
  100057d08  bl      _objc_msgSend                            ; [self comboMeter]
  100057d0c  mov     x29, x29
  100057d10  bl      _objc_retainAutoreleasedReturnValue
  100057d14  mov     x22, x0
  100057d18  adrp    x8, #0x100416000
  100057d1c  nop
  100057d20  ldr     x21, [x8, #0xf38]
  100057d24  mov     x1, x21
  100057d28  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  100057d2c  mov     v8.16b, v0.16b
  100057d30  mov     x0, x19
  100057d34  mov     x1, x24
  100057d38  bl      _objc_msgSend                            ; [self comboMeter]
  100057d3c  mov     x29, x29
  100057d40  bl      _objc_retainAutoreleasedReturnValue
  100057d44  mov     x23, x0
  100057d48  mov     x1, x21
  100057d4c  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  100057d50  mov     v9.16b, v1.16b
  100057d54  mov     x0, x19
  100057d58  mov     x1, x24
  100057d5c  bl      _objc_msgSend                            ; [self comboMeter]
  100057d60  mov     x29, x29
  100057d64  bl      _objc_retainAutoreleasedReturnValue
  100057d68  mov     x24, x0
  100057d6c  mov     x1, x21
  100057d70  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  100057d74  adrp    x8, #0x100417000
  100057d78  nop
  100057d7c  ldr     x1, [x8, #0x7b8]
  100057d80  fmov    d2, #1.00000000
  100057d84  mov     x0, x20
  100057d88  mov     v0.16b, v8.16b
  100057d8c  mov     v1.16b, v9.16b
  100057d90  bl      _objc_msgSend                            ; [[self comboMeter] setFrame:{[[self comboMeter] frame].0, [[self comboMeter] frame].1, 1, [[self comboMeter] frame].3}]
  100057d94  mov     x0, x24
  100057d98  bl      _objc_release
  100057d9c  mov     x0, x23
  100057da0  bl      _objc_release
  100057da4  mov     x0, x22
  100057da8  bl      _objc_release
  100057dac  mov     x0, x20
  100057db0  bl      _objc_release
  100057db4  adrp    x8, #0x10041e000
  100057db8  ldr     x0, [x8, #0x1f0]                         ; class ADPlayer
  100057dbc  adrp    x8, #0x100416000
  100057dc0  nop
  100057dc4  ldr     x24, [x8, #0xac8]
  100057dc8  mov     x1, x24
  100057dcc  bl      _objc_msgSend                            ; [ADPlayer alloc]
  100057dd0  adrp    x8, #0x100416000
  100057dd4  nop
  100057dd8  ldr     x1, [x8, #0xab8]
  100057ddc  bl      _objc_msgSend                            ; [[ADPlayer alloc] init]
  100057de0  mov     x20, x0
  100057de4  adrp    x8, #0x100418000
  100057de8  nop
  100057dec  ldr     x1, [x8, #0xfd0]
  100057df0  mov     x0, x19
  100057df4  mov     x2, x20
  100057df8  bl      _objc_msgSend                            ; [self setPlayer:[[ADPlayer alloc] init]]
  100057dfc  mov     x0, x20
  100057e00  bl      _objc_release
  100057e04  stp     xzr, xzr, [sp, #0x98]
  100057e08  stp     xzr, xzr, [sp, #0x88]
  100057e0c  stp     xzr, xzr, [sp, #0x78]
  100057e10  stp     xzr, xzr, [sp, #0x68]
  100057e14  adrp    x8, #0x100417000
  100057e18  nop
  100057e1c  ldr     x1, [x8, #0xcd0]
  100057e20  mov     x0, x19
  100057e24  mov     x28, x19
  100057e28  bl      _objc_msgSend                            ; [self infiniteScrollViews]
  100057e2c  mov     x29, x29
  100057e30  bl      _objc_retainAutoreleasedReturnValue
  100057e34  mov     x22, x0
  100057e38  adrp    x8, #0x100416000
  100057e3c  nop
  100057e40  ldr     x1, [x8, #0xe00]
  100057e44  str     x1, [sp, #0x18]
  100057e48  add     x2, sp, #0x68
  100057e4c  sub     x3, x29, #0xe8
  100057e50  mov     w4, #0x10
  100057e54  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x68] objects:&x29[-0xe8] count:16]
  100057e58  mov     x23, x0
  100057e5c  cbz     x23, loc_100057ef0                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x68] objects:&x29[-0xe8] count:16] == 0)
  100057e60  ldr     x8, [sp, #0x78]
  100057e64  ldr     x19, [x8]
  100057e68  adrp    x8, #0x100417000
  100057e6c  nop
  100057e70  ldr     x25, [x8, #0xcd8]
  100057e74  adrp    x8, #0x100417000
  100057e78  add     x8, x8, #0x998                           ; &@selector(setUserInteractionEnabled:)
  100057e7c  ldr     x26, [x8]
loc_100057e80:
  100057e80  mov     x20, #0
loc_100057e84:
  100057e84  ldr     x8, [sp, #0x78]
  100057e88  ldr     x8, [x8]
  100057e8c  cmp     x8, x19
  100057e90  b.eq    loc_100057e9c                            ; if (x8 == x19)
  100057e94  mov     x0, x22
  100057e98  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self infiniteScrollViews])
loc_100057e9c:
  100057e9c  ldr     x8, [sp, #0x70]
  100057ea0  ldr     x27, [x8, x20, lsl #3]
  100057ea4  mov     w2, #0
  100057ea8  mov     x0, x27
  100057eac  mov     x1, x25
  100057eb0  bl      _objc_msgSend                            ; [x0 setScrollEnabled:0]
  100057eb4  mov     w2, #0
  100057eb8  mov     x0, x27
  100057ebc  mov     x1, x26
  100057ec0  bl      _objc_msgSend                            ; [x0 setUserInteractionEnabled:0]
  100057ec4  add     x20, x20, #1
  100057ec8  cmp     x20, x23
  100057ecc  b.lo    loc_100057e84                            ; if ((x20 + 1) <u [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x68] objects:&x29[-0xe8] count:16])
  100057ed0  add     x2, sp, #0x68
  100057ed4  sub     x3, x29, #0xe8
  100057ed8  mov     w4, #0x10
  100057edc  mov     x0, x22
  100057ee0  ldr     x1, [sp, #0x18]
  100057ee4  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x68] objects:&x29[-0xe8] count:16]
  100057ee8  mov     x23, x0
  100057eec  cbnz    x23, loc_100057e80                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x68] objects:&x29[-0xe8] count:16] != 0)
loc_100057ef0:
  100057ef0  mov     x0, x22
  100057ef4  bl      _objc_release
  100057ef8  adrp    x8, #0x100417000
  100057efc  nop
  100057f00  ldr     x1, [x8, #0xcc0]
  100057f04  mov     x27, x28
  100057f08  mov     x0, x27
  100057f0c  bl      _objc_msgSend                            ; [self skipButton]
  100057f10  mov     x29, x29
  100057f14  bl      _objc_retainAutoreleasedReturnValue
  100057f18  mov     x23, x0
  100057f1c  adrp    x8, #0x100416000
  100057f20  nop
  100057f24  ldr     x22, [x8, #0xba8]
  100057f28  mov     w2, #1
  100057f2c  mov     x1, x22
  100057f30  bl      _objc_msgSend                            ; [[self skipButton] setHidden:1]
  100057f34  mov     x0, x23
  100057f38  bl      _objc_release
  100057f3c  adrp    x8, #0x100417000
  100057f40  nop
  100057f44  ldr     x1, [x8, #0xce8]
  100057f48  mov     x0, x27
  100057f4c  bl      _objc_msgSend                            ; [self timerView]
  100057f50  mov     x29, x29
  100057f54  bl      _objc_retainAutoreleasedReturnValue
  100057f58  mov     x23, x0
  100057f5c  mov     w2, #1
  100057f60  mov     x1, x22
  100057f64  bl      _objc_msgSend                            ; [[self timerView] setHidden:1]
  100057f68  adrp    x28, #0x1003b0000
  100057f6c  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  100057f70  ldr     x28, [x28]                               ; x28 = ___stack_chk_guard[+0x0]
  100057f74  mov     x0, x23
  100057f78  bl      _objc_release
  100057f7c  adrp    x8, #0x10041e000
  100057f80  ldr     x0, [x8, #0xc8]                          ; class ADOpenerGameplayViewController
  100057f84  adrp    x8, #0x100417000
  100057f88  nop
  100057f8c  ldr     x1, [x8, #0x2e0]
  100057f90  str     x1, [sp, #0x20]
  100057f94  bl      _objc_msgSend                            ; [ADOpenerGameplayViewController class]
  100057f98  mov     x2, x0
  100057f9c  adrp    x8, #0x100417000
  100057fa0  nop
  100057fa4  ldr     x23, [x8, #0x3b8]
  100057fa8  mov     x0, x27
  100057fac  mov     x1, x23
  100057fb0  bl      _objc_msgSend                            ; [self isKindOfClass:[ADOpenerGameplayViewController class]]
  100057fb4  tbnz    w0, #0, loc_100057fe0                    ; if (([self isKindOfClass:[ADOpenerGameplayViewController class]] & 1))
  100057fb8  adrp    x8, #0x100418000
  100057fbc  nop
  100057fc0  ldr     x1, [x8, #0xfd8]
  100057fc4  mov     x0, x27
  100057fc8  bl      _objc_msgSend                            ; [self initStats]
  100057fcc  adrp    x8, #0x100418000
  100057fd0  nop
  100057fd4  ldr     x1, [x8, #0xfe0]
  100057fd8  mov     x0, x27
  100057fdc  bl      _objc_msgSend                            ; [self initGATrackerStats]
loc_100057fe0:
  100057fe0  adrp    x8, #0x100418000
  100057fe4  nop
  100057fe8  ldr     x1, [x8, #0xfe8]
  100057fec  mov     w2, #0
  100057ff0  mov     x0, x27
  100057ff4  bl      _objc_msgSend                            ; [self updateScoreViewWithAnimation:0]
  100057ff8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100057ffc  cbz     w0, loc_1000582fc                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100058000  adrp    x8, #0x10041e000
  100058004  ldr     x0, [x8, #0x1f8]                         ; class ADAccessibleGameView
  100058008  mov     x1, x24
  10005800c  bl      _objc_msgSend                            ; [ADAccessibleGameView alloc]
  100058010  mov     x26, x0
  100058014  adrp    x8, #0x100416000
  100058018  nop
  10005801c  ldr     x24, [x8, #0xf18]
  100058020  mov     x0, x27
  100058024  mov     x1, x24
  100058028  bl      _objc_msgSend                            ; [self view]
  10005802c  mov     x29, x29
  100058030  bl      _objc_retainAutoreleasedReturnValue
  100058034  mov     x25, x0
  100058038  mov     x1, x21
  10005803c  bl      _objc_msgSend                            ; [[self view] frame]
  100058040  adrp    x8, #0x100417000
  100058044  nop
  100058048  ldr     x1, [x8, #0x178]
  10005804c  mov     x0, x26
  100058050  bl      _objc_msgSend                            ; [[ADAccessibleGameView alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}]
  100058054  adrp    x8, #0x10041f000
  100058058  ldrsw   x19, [x8, #0xaf4]                        ; ivar offset ADGameplayViewController.accessibleGameView (+0x188)
  10005805c  ldr     x8, [x27, x19]                           ; x8 = self->accessibleGameView
  100058060  str     x0, [x27, x19]                           ; self->accessibleGameView = [[ADAccessibleGameView alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}]
  100058064  mov     x0, x8
  100058068  bl      _objc_release
  10005806c  mov     x0, x25
  100058070  bl      _objc_release
  100058074  mov     x0, x27
  100058078  mov     x1, x24
  10005807c  bl      _objc_msgSend                            ; [self view]
  100058080  mov     x29, x29
  100058084  bl      _objc_retainAutoreleasedReturnValue
  100058088  mov     x21, x0
  10005808c  ldr     x2, [x27, x19]                           ; x2 = self->accessibleGameView
  100058090  adrp    x8, #0x100416000
  100058094  nop
  100058098  ldr     x1, [x8, #0xf20]
  10005809c  bl      _objc_msgSend                            ; [[self view] addSubview:self->accessibleGameView]
  1000580a0  mov     x0, x21
  1000580a4  bl      _objc_release
  1000580a8  ldr     x24, [x27, x19]                          ; x24 = self->accessibleGameView
  1000580ac  adrp    x8, #0x100416000
  1000580b0  nop
  1000580b4  ldr     x1, [x8, #0xc88]
  1000580b8  mov     x0, x27
  1000580bc  bl      _objc_msgSend                            ; [self weaponManager]
  1000580c0  mov     x29, x29
  1000580c4  bl      _objc_retainAutoreleasedReturnValue
  1000580c8  mov     x21, x0
  1000580cc  adrp    x8, #0x100418000
  1000580d0  nop
  1000580d4  ldr     x1, [x8, #0xff0]
  1000580d8  mov     x0, x24
  1000580dc  mov     x2, x21
  1000580e0  bl      _objc_msgSend                            ; [self->accessibleGameView setWeaponManager:[self weaponManager]]
  1000580e4  mov     x0, x21
  1000580e8  bl      _objc_release
  1000580ec  ldr     x0, [x27, x19]                           ; x0 = self->accessibleGameView
  1000580f0  adrp    x8, #0x100417000
  1000580f4  nop
  1000580f8  ldr     x1, [x8, #0xc10]
  1000580fc  mov     x2, x27
  100058100  bl      _objc_msgSend                            ; [self->accessibleGameView setGameplayViewController:self]
  100058104  stp     xzr, xzr, [sp, #0x58]
  100058108  stp     xzr, xzr, [sp, #0x48]
  10005810c  stp     xzr, xzr, [sp, #0x38]
  100058110  stp     xzr, xzr, [sp, #0x28]
  100058114  adrp    x8, #0x100418000
  100058118  nop
  10005811c  ldr     x1, [x8, #0x9e0]
  100058120  mov     x0, x27
  100058124  bl      _objc_msgSend                            ; [self buttonsView]
  100058128  mov     x29, x29
  10005812c  bl      _objc_retainAutoreleasedReturnValue
  100058130  mov     x24, x0
  100058134  adrp    x8, #0x100417000
  100058138  nop
  10005813c  ldr     x1, [x8, #0x1c8]
  100058140  bl      _objc_msgSend                            ; [[self buttonsView] subviews]
  100058144  stp     x19, x27, [sp, #8]
  100058148  mov     x29, x29
  10005814c  bl      _objc_retainAutoreleasedReturnValue
  100058150  mov     x21, x0
  100058154  mov     x0, x24
  100058158  bl      _objc_release
  10005815c  add     x2, sp, #0x28
  100058160  add     x3, sp, #0xb8
  100058164  mov     w4, #0x10
  100058168  mov     x0, x21
  10005816c  ldr     x1, [sp, #0x18]
  100058170  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16]
  100058174  mov     x24, x0
  100058178  cbz     x24, loc_10005824c                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16] == 0)
  10005817c  ldr     x8, [sp, #0x38]
  100058180  ldr     x19, [x8]
  100058184  adrp    x8, #0x100417000
  100058188  nop
  10005818c  adrp    x9, #0x100417000
  100058190  add     x9, x9, #0x878                           ; &@selector(setEnabled:)
  100058194  ldr     x25, [x8, #0x998]
  100058198  ldr     x26, [x9]
  10005819c  adrp    x8, #0x100417000
  1000581a0  add     x8, x8, #0xbc0                           ; &@selector(setIsAccessibilityElement:)
  1000581a4  ldr     x27, [x8]
  1000581a8  adrp    x20, #0x10041e000
loc_1000581ac:
  1000581ac  mov     x22, #0
loc_1000581b0:
  1000581b0  ldr     x8, [sp, #0x38]
  1000581b4  ldr     x8, [x8]
  1000581b8  cmp     x8, x19
  1000581bc  b.eq    loc_1000581c8                            ; if (x8 == x19)
  1000581c0  mov     x0, x21
  1000581c4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self buttonsView] subviews])
loc_1000581c8:
  1000581c8  ldr     x8, [sp, #0x30]
  1000581cc  ldr     x28, [x8, x22, lsl #3]
  1000581d0  ldr     x0, [x20, #0x200]                        ; class ADButtonWithSwipe
  1000581d4  ldr     x1, [sp, #0x20]
  1000581d8  bl      _objc_msgSend                            ; [ADButtonWithSwipe class]
  1000581dc  mov     x2, x0
  1000581e0  mov     x0, x28
  1000581e4  mov     x1, x23
  1000581e8  bl      _objc_msgSend                            ; [x0 isKindOfClass:[ADButtonWithSwipe class]]
  1000581ec  cbz     w0, loc_100058220                        ; if ([x0 isKindOfClass:[ADButtonWithSwipe class]] == 0)
  1000581f0  mov     w2, #0
  1000581f4  mov     x0, x28
  1000581f8  mov     x1, x25
  1000581fc  bl      _objc_msgSend                            ; [x0 setUserInteractionEnabled:0]
  100058200  mov     w2, #0
  100058204  mov     x0, x28
  100058208  mov     x1, x26
  10005820c  bl      _objc_msgSend                            ; [x0 setEnabled:0]
  100058210  mov     w2, #0
  100058214  mov     x0, x28
  100058218  mov     x1, x27
  10005821c  bl      _objc_msgSend                            ; [x0 setIsAccessibilityElement:0]
loc_100058220:
  100058220  add     x22, x22, #1
  100058224  cmp     x22, x24
  100058228  b.lo    loc_1000581b0                            ; if ((x22 + 1) <u [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16])
  10005822c  add     x2, sp, #0x28
  100058230  add     x3, sp, #0xb8
  100058234  mov     w4, #0x10
  100058238  mov     x0, x21
  10005823c  ldr     x1, [sp, #0x18]
  100058240  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16]
  100058244  mov     x24, x0
  100058248  cbnz    x24, loc_1000581ac                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x28] objects:&sp[0xb8] count:16] != 0)
loc_10005824c:
  10005824c  mov     x0, x21
  100058250  bl      _objc_release
  100058254  adrp    x8, #0x10041d000
  100058258  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10005825c  adrp    x8, #0x100416000
  100058260  nop
  100058264  ldr     x1, [x8, #0xc00]
  100058268  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005826c  mov     x29, x29
  100058270  bl      _objc_retainAutoreleasedReturnValue
  100058274  mov     x20, x0
  100058278  adrp    x8, #0x100417000
  10005827c  nop
  100058280  ldr     x1, [x8, #0xc90]
  100058284  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  100058288  mov     x21, x0
  10005828c  mov     x0, x20
  100058290  bl      _objc_release
  100058294  adrp    x8, #0x1003b0000
  100058298  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  10005829c  ldr     w20, [x8]                                ; w20 = _UIAccessibilityScreenChangedNotification[+0x0]
  1000582a0  adrp    x28, #0x1003b0000
  1000582a4  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  1000582a8  ldr     x28, [x28]                               ; x28 = ___stack_chk_guard[+0x0]
  1000582ac  ldr     x27, [sp, #0x10]
  1000582b0  tbz     w21, #0, loc_1000582c8                   ; if (!([[ADGameParameters sharedParameters] buttonMode] & 1))
  1000582b4  ldr     x8, [sp, #8]
  1000582b8  ldr     x1, [x27, x8]                            ; x1 = self->accessibleGameView
  1000582bc  mov     x0, x20
  1000582c0  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], self->accessibleGameView)
  1000582c4  b       loc_1000582fc
loc_1000582c8:
  1000582c8  adrp    x8, #0x100417000
  1000582cc  nop
  1000582d0  ldr     x1, [x8, #0xce0]
  1000582d4  mov     x0, x27
  1000582d8  bl      _objc_msgSend                            ; [self weaponTouchArea]
  1000582dc  mov     x29, x29
  1000582e0  bl      _objc_retainAutoreleasedReturnValue
  1000582e4  mov     x21, x0
  1000582e8  mov     x0, x20
  1000582ec  mov     x1, x21
  1000582f0  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [self weaponTouchArea])
  1000582f4  mov     x0, x21
  1000582f8  bl      _objc_release
loc_1000582fc:
  1000582fc  adrp    x8, #0x100416000
  100058300  nop
  100058304  ldr     x1, [x8, #0xf18]
  100058308  mov     x0, x27
  10005830c  bl      _objc_msgSend                            ; [self view]
  100058310  mov     x29, x29
  100058314  bl      _objc_retainAutoreleasedReturnValue
  100058318  mov     x20, x0
  10005831c  adrp    x8, #0x100418000
  100058320  nop
  100058324  ldr     x1, [x8, #0xff8]
  100058328  mov     x0, x27
  10005832c  bl      _objc_msgSend                            ; [self pauseButton]
  100058330  mov     x29, x29
  100058334  bl      _objc_retainAutoreleasedReturnValue
  100058338  mov     x21, x0
  10005833c  adrp    x8, #0x100417000
  100058340  nop
  100058344  ldr     x1, [x8, #0x190]
  100058348  mov     x0, x20
  10005834c  mov     x2, x21
  100058350  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self pauseButton]]
  100058354  mov     x0, x21
  100058358  bl      _objc_release
  10005835c  mov     x0, x20
  100058360  bl      _objc_release
  100058364  adrp    x8, #0x100419000
  100058368  nop
  10005836c  ldr     x23, [x8]
  100058370  mov     x0, x27
  100058374  mov     x1, x23
  100058378  bl      _objc_msgSend                            ; [self scoreTitle]
  10005837c  mov     x29, x29
  100058380  bl      _objc_retainAutoreleasedReturnValue
  100058384  mov     x22, x0
  100058388  adrp    x19, #0x10041d000
  10005838c  ldr     x0, [x19, #0xf08]                        ; class UIFont
  100058390  adrp    x8, #0x100416000
  100058394  nop
  100058398  ldr     x20, [x8, #0xd20]
  10005839c  adrp    x2, #0x1003b9000
  1000583a0  add     x2, x2, #0xf10                           ; @"Monstro"
  1000583a4  fmov    d0, #30.00000000
  1000583a8  mov     x1, x20
  1000583ac  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:30]
  1000583b0  mov     x29, x29
  1000583b4  bl      _objc_retainAutoreleasedReturnValue
  1000583b8  mov     x24, x0
  1000583bc  adrp    x8, #0x100416000
  1000583c0  nop
  1000583c4  ldr     x21, [x8, #0xd28]
  1000583c8  mov     x0, x22
  1000583cc  mov     x1, x21
  1000583d0  mov     x2, x24
  1000583d4  bl      _objc_msgSend                            ; [[self scoreTitle] setFont:[UIFont fontWithName:@"Monstro" size:30]]
  1000583d8  mov     x0, x24
  1000583dc  bl      _objc_release
  1000583e0  mov     x0, x22
  1000583e4  bl      _objc_release
  1000583e8  mov     x0, x27
  1000583ec  mov     x1, x23
  1000583f0  bl      _objc_msgSend                            ; [self scoreTitle]
  1000583f4  mov     x29, x29
  1000583f8  bl      _objc_retainAutoreleasedReturnValue
  1000583fc  mov     x24, x0
  100058400  adrp    x26, #0x10041d000
  100058404  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  100058408  adrp    x8, #0x100417000
  10005840c  nop
  100058410  ldr     x22, [x8, #0x328]
  100058414  mov     x1, x22
  100058418  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10005841c  mov     x29, x29
  100058420  bl      _objc_retainAutoreleasedReturnValue
  100058424  mov     x25, x0
  100058428  adrp    x8, #0x100417000
  10005842c  nop
  100058430  ldr     x23, [x8, #0x330]
  100058434  mov     x0, x24
  100058438  mov     x1, x23
  10005843c  mov     x2, x25
  100058440  bl      _objc_msgSend                            ; [[self scoreTitle] setTextColor:[UIColor whiteColor]]
  100058444  mov     x0, x25
  100058448  bl      _objc_release
  10005844c  mov     x0, x24
  100058450  bl      _objc_release
  100058454  adrp    x8, #0x100419000
  100058458  nop
  10005845c  ldr     x25, [x8, #8]
  100058460  mov     x0, x27
  100058464  mov     x1, x25
  100058468  bl      _objc_msgSend                            ; [self comboTitle]
  10005846c  mov     x29, x29
  100058470  bl      _objc_retainAutoreleasedReturnValue
  100058474  mov     x24, x0
  100058478  ldr     x0, [x19, #0xf08]                        ; class UIFont
  10005847c  adrp    x2, #0x1003b9000
  100058480  add     x2, x2, #0xf10                           ; @"Monstro"
  100058484  fmov    d0, #30.00000000
  100058488  mov     x1, x20
  10005848c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:30]
  100058490  mov     x29, x29
  100058494  bl      _objc_retainAutoreleasedReturnValue
  100058498  mov     x20, x0
  10005849c  mov     x0, x24
  1000584a0  mov     x1, x21
  1000584a4  mov     x2, x20
  1000584a8  bl      _objc_msgSend                            ; [[self comboTitle] setFont:[UIFont fontWithName:@"Monstro" size:30]]
  1000584ac  mov     x0, x20
  1000584b0  bl      _objc_release
  1000584b4  mov     x0, x24
  1000584b8  bl      _objc_release
  1000584bc  mov     x0, x27
  1000584c0  mov     x1, x25
  1000584c4  bl      _objc_msgSend                            ; [self comboTitle]
  1000584c8  mov     x29, x29
  1000584cc  bl      _objc_retainAutoreleasedReturnValue
  1000584d0  mov     x20, x0
  1000584d4  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  1000584d8  mov     x1, x22
  1000584dc  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000584e0  mov     x29, x29
  1000584e4  bl      _objc_retainAutoreleasedReturnValue
  1000584e8  mov     x21, x0
  1000584ec  mov     x0, x20
  1000584f0  mov     x1, x23
  1000584f4  mov     x2, x21
  1000584f8  bl      _objc_msgSend                            ; [[self comboTitle] setTextColor:[UIColor whiteColor]]
  1000584fc  mov     x0, x21
  100058500  bl      _objc_release
  100058504  mov     x0, x20
  100058508  bl      _objc_release
  10005850c  adrp    x8, #0x10041d000
  100058510  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100058514  adrp    x8, #0x100416000
  100058518  nop
  10005851c  ldr     x1, [x8, #0xb28]
  100058520  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100058524  mov     x29, x29
  100058528  bl      _objc_retainAutoreleasedReturnValue
  10005852c  mov     x20, x0
  100058530  adrp    x8, #0x100417000
  100058534  nop
  100058538  ldr     x1, [x8, #0xcf8]
  10005853c  mov     w2, #1
  100058540  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] setIdleTimerDisabled:1]
  100058544  mov     x0, x20
  100058548  bl      _objc_release
  10005854c  ldur    x8, [x29, #-0x68]
  100058550  sub     x8, x28, x8
  100058554  cbnz    x8, loc_10005857c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100058558  sub     sp, x29, #0x60
  10005855c  ldp     x29, x30, [sp, #0x60]
  100058560  ldp     x20, x19, [sp, #0x50]
  100058564  ldp     x22, x21, [sp, #0x40]
  100058568  ldp     x24, x23, [sp, #0x30]
  10005856c  ldp     x26, x25, [sp, #0x20]
  100058570  ldp     x28, x27, [sp, #0x10]
  100058574  ldp     d9, d8, [sp], #0x70
  100058578  ret
loc_10005857c:
  10005857c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100058580:
  100058580  mov     x19, x0
loc_100058584:
  100058584  mov     x0, x22
  100058588  b       loc_100058594
loc_10005858c:
  10005858c  mov     x19, x0
  100058590  mov     x0, x21
loc_100058594:
  100058594  bl      _objc_release
  100058598  mov     x0, x19
  10005859c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000585a0  b       loc_100058580
  1000585a4  b       loc_10005858c
  1000585a8  mov     x19, x0
  1000585ac  b       loc_1000585cc
  1000585b0  mov     x19, x0
  1000585b4  b       loc_1000585c4
  1000585b8  mov     x19, x0
  1000585bc  mov     x0, x24
  1000585c0  bl      _objc_release
loc_1000585c4:
  1000585c4  mov     x0, x23
  1000585c8  bl      _objc_release
loc_1000585cc:
  1000585cc  mov     x0, x22
  1000585d0  bl      _objc_release
  1000585d4  b       loc_10005867c
  1000585d8  b       loc_100058678
  1000585dc  b       loc_100058678
  1000585e0  b       loc_100058580
  1000585e4  b       loc_1000585e8
loc_1000585e8:
  1000585e8  mov     x19, x0
  1000585ec  mov     x0, x23
  1000585f0  b       loc_100058594
  1000585f4  mov     x19, x0
  1000585f8  mov     x0, x25
  1000585fc  b       loc_100058594
  100058600  b       loc_100058678
  100058604  b       loc_10005864c
  100058608  b       loc_100058580
  10005860c  mov     x19, x0
  100058610  mov     x0, x24
  100058614  bl      _objc_release
  100058618  b       loc_100058584
  10005861c  mov     x19, x0
  100058620  b       loc_10005866c
  100058624  mov     x19, x0
  100058628  mov     x0, x25
  10005862c  b       loc_100058640
  100058630  mov     x19, x0
  100058634  b       loc_10005866c
  100058638  mov     x19, x0
  10005863c  mov     x0, x20
loc_100058640:
  100058640  bl      _objc_release
  100058644  b       loc_10005866c
  100058648  b       loc_100058678
loc_10005864c:
  10005864c  mov     x19, x0
  100058650  mov     x0, x21
  100058654  bl      _objc_release
  100058658  b       loc_10005867c
  10005865c  b       loc_100058678
  100058660  b       loc_10005858c
  100058664  b       loc_10005858c
  100058668  mov     x19, x0
loc_10005866c:
  10005866c  mov     x0, x24
  100058670  b       loc_100058594
  100058674  b       loc_10005858c
loc_100058678:
  100058678  mov     x19, x0
loc_10005867c:
  10005867c  mov     x0, x20
  100058680  b       loc_100058594
  100058684  b       loc_10005858c

; ======================================================================
; -[ADGameplayViewController loadView]
; address 0x100058688  size 1624  kind objc
; ======================================================================
  100058688  stp     x28, x27, [sp, #-0x60]!
  10005868c  stp     x26, x25, [sp, #0x10]
  100058690  stp     x24, x23, [sp, #0x20]
  100058694  stp     x22, x21, [sp, #0x30]
  100058698  stp     x20, x19, [sp, #0x40]
  10005869c  stp     x29, x30, [sp, #0x50]
  1000586a0  add     x29, sp, #0x50
  1000586a4  sub     sp, sp, #0x130
  1000586a8  mov     x19, x0
  1000586ac  adrp    x8, #0x1003b0000
  1000586b0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000586b4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000586b8  stur    x8, [x29, #-0x58]
  1000586bc  adrp    x8, #0x1003bd000
  1000586c0  add     x8, x8, #0xdf0                           ; @"deathOverlay"
  1000586c4  str     x8, [sp, #0x58]
  1000586c8  adrp    x25, #0x10041d000
  1000586cc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000586d0  adrp    x8, #0x100416000
  1000586d4  nop
  1000586d8  ldr     x22, [x8, #0xec0]
  1000586dc  mov     w2, #1
  1000586e0  mov     x1, x22
  1000586e4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000586e8  mov     x29, x29
  1000586ec  bl      _objc_retainAutoreleasedReturnValue
  1000586f0  str     x0, [sp, #0x30]
  1000586f4  str     x0, [sp, #0xc0]
  1000586f8  adrp    x8, #0x1003bd000
  1000586fc  add     x8, x8, #0xe10                           ; @"buttonsView"
  100058700  str     x8, [sp, #0x60]
  100058704  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058708  mov     w2, #2
  10005870c  mov     x1, x22
  100058710  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100058714  bl      _objc_retain
  100058718  str     x0, [sp, #0x28]
  10005871c  str     x0, [sp, #0xc8]
  100058720  adrp    x8, #0x1003bb000
  100058724  add     x8, x8, #0x650                           ; @"weaponTouchArea"
  100058728  str     x8, [sp, #0x68]
  10005872c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058730  mov     w2, #3
  100058734  mov     x1, x22
  100058738  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  10005873c  bl      _objc_retain
  100058740  str     x0, [sp, #0x20]
  100058744  str     x0, [sp, #0xd0]
  100058748  adrp    x8, #0x1003bd000
  10005874c  add     x8, x8, #0xe30                           ; @"weaponButton"
  100058750  str     x8, [sp, #0x70]
  100058754  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058758  mov     w2, #4
  10005875c  mov     x1, x22
  100058760  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  100058764  bl      _objc_retain
  100058768  str     x0, [sp, #0x18]
  10005876c  str     x0, [sp, #0xd8]
  100058770  adrp    x8, #0x1003bd000
  100058774  add     x8, x8, #0xe50                           ; @"meleeButton"
  100058778  str     x8, [sp, #0x78]
  10005877c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058780  mov     w2, #5
  100058784  mov     x1, x22
  100058788  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  10005878c  bl      _objc_retain
  100058790  str     x0, [sp, #0x10]
  100058794  str     x0, [sp, #0xe0]
  100058798  adrp    x8, #0x1003bd000
  10005879c  add     x8, x8, #0xe70                           ; @"switchWeaponButton"
  1000587a0  str     x8, [sp, #0x80]
  1000587a4  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000587a8  mov     w2, #6
  1000587ac  mov     x1, x22
  1000587b0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  1000587b4  bl      _objc_retain
  1000587b8  mov     x26, x0
  1000587bc  str     x26, [sp, #0xe8]
  1000587c0  adrp    x8, #0x1003bd000
  1000587c4  add     x8, x8, #0xe90                           ; @"scoreView"
  1000587c8  str     x8, [sp, #0x88]
  1000587cc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000587d0  mov     w2, #7
  1000587d4  mov     x1, x22
  1000587d8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  1000587dc  bl      _objc_retain
  1000587e0  mov     x27, x0
  1000587e4  str     x27, [sp, #0xf0]
  1000587e8  adrp    x8, #0x1003bd000
  1000587ec  add     x8, x8, #0xeb0                           ; @"scoreLabel"
  1000587f0  str     x8, [sp, #0x90]
  1000587f4  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000587f8  mov     w2, #8
  1000587fc  mov     x1, x22
  100058800  bl      _objc_msgSend                            ; [NSNumber numberWithInt:8]
  100058804  bl      _objc_retain
  100058808  mov     x28, x0
  10005880c  str     x28, [sp, #0xf8]
  100058810  adrp    x8, #0x1003bd000
  100058814  add     x8, x8, #0xed0                           ; @"comboMeter"
  100058818  str     x8, [sp, #0x98]
  10005881c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058820  mov     w2, #9
  100058824  mov     x1, x22
  100058828  bl      _objc_msgSend                            ; [NSNumber numberWithInt:9]
  10005882c  bl      _objc_retain
  100058830  mov     x20, x0
  100058834  str     x20, [sp, #0x100]
  100058838  adrp    x8, #0x1003bd000
  10005883c  add     x8, x8, #0xef0                           ; @"timerView"
  100058840  str     x8, [sp, #0xa0]
  100058844  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058848  mov     w2, #0xa
  10005884c  mov     x1, x22
  100058850  bl      _objc_msgSend                            ; [NSNumber numberWithInt:10]
  100058854  bl      _objc_retain
  100058858  mov     x21, x0
  10005885c  str     x21, [sp, #0x108]
  100058860  adrp    x8, #0x1003bd000
  100058864  add     x8, x8, #0xf10                           ; @"timerLabel"
  100058868  str     x8, [sp, #0xa8]
  10005886c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058870  mov     w2, #0xb
  100058874  mov     x1, x22
  100058878  bl      _objc_msgSend                            ; [NSNumber numberWithInt:11]
  10005887c  bl      _objc_retain
  100058880  mov     x23, x0
  100058884  str     x23, [sp, #0x110]
  100058888  adrp    x8, #0x1003bb000
  10005888c  add     x8, x8, #0x630                           ; @"skipButton"
  100058890  str     x8, [sp, #0xb0]
  100058894  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100058898  mov     w2, #0xc
  10005889c  mov     x1, x22
  1000588a0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:12]
  1000588a4  bl      _objc_retain
  1000588a8  mov     x24, x0
  1000588ac  str     x24, [sp, #0x118]
  1000588b0  adrp    x8, #0x1003bd000
  1000588b4  add     x8, x8, #0xf30                           ; @"pauseButton"
  1000588b8  str     x8, [sp, #0xb8]
  1000588bc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000588c0  mov     w2, #0xd
  1000588c4  mov     x1, x22
  1000588c8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:13]
  1000588cc  bl      _objc_retain
  1000588d0  mov     x22, x0
  1000588d4  str     x22, [sp, #0x120]
  1000588d8  adrp    x8, #0x10041d000
  1000588dc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000588e0  adrp    x8, #0x100416000
  1000588e4  nop
  1000588e8  ldr     x1, [x8, #0xcd0]
  1000588ec  add     x2, sp, #0xc0
  1000588f0  add     x3, sp, #0x58
  1000588f4  mov     w4, #0xd
  1000588f8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xc0] forKeys:&sp[0x58] count:13]
  1000588fc  mov     x29, x29
  100058900  bl      _objc_retainAutoreleasedReturnValue
  100058904  mov     x1, x0
  100058908  mov     x0, x22
  10005890c  mov     x22, x1
  100058910  bl      _objc_release
  100058914  mov     x0, x24
  100058918  bl      _objc_release
  10005891c  mov     x0, x23
  100058920  bl      _objc_release
  100058924  mov     x0, x21
  100058928  bl      _objc_release
  10005892c  mov     x0, x20
  100058930  bl      _objc_release
  100058934  mov     x0, x28
  100058938  bl      _objc_release
  10005893c  mov     x0, x27
  100058940  bl      _objc_release
  100058944  mov     x0, x26
  100058948  bl      _objc_release
  10005894c  ldr     x0, [sp, #0x10]
  100058950  bl      _objc_release
  100058954  ldr     x0, [sp, #0x18]
  100058958  bl      _objc_release
  10005895c  ldr     x0, [sp, #0x20]
  100058960  bl      _objc_release
  100058964  ldr     x0, [sp, #0x28]
  100058968  bl      _objc_release
  10005896c  ldr     x0, [sp, #0x30]
  100058970  bl      _objc_release
  100058974  adrp    x8, #0x100416000
  100058978  nop
  10005897c  ldr     x1, [x8, #0xbf0]
  100058980  adrp    x2, #0x1003bd000
  100058984  add     x2, x2, #0xf50                           ; @"ADGameplayViewController"
  100058988  mov     x0, x19
  10005898c  mov     x3, x22
  100058990  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADGameplayViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0xc0] forKeys:&sp[0x58] count:13]]
  100058994  adrp    x8, #0x100416000
  100058998  nop
  10005899c  ldr     x25, [x8, #0xf18]
  1000589a0  mov     x0, x19
  1000589a4  mov     x1, x25
  1000589a8  bl      _objc_msgSend                            ; [self view]
  1000589ac  mov     x29, x29
  1000589b0  bl      _objc_retainAutoreleasedReturnValue
  1000589b4  mov     x20, x0
  1000589b8  adrp    x8, #0x100417000
  1000589bc  nop
  1000589c0  ldr     x1, [x8, #0x6b0]
  1000589c4  bl      _objc_msgSend                            ; [[self view] tag]
  1000589c8  mov     x21, x0
  1000589cc  mov     x0, x20
  1000589d0  bl      _objc_release
  1000589d4  cmp     x21, #0xade
  1000589d8  b.ne    loc_100058b30                            ; if ([[self view] tag] != 2782)
  1000589dc  mov     x0, x19
  1000589e0  mov     x1, x25
  1000589e4  bl      _objc_msgSend                            ; [self view]
  1000589e8  mov     x29, x29
  1000589ec  bl      _objc_retainAutoreleasedReturnValue
  1000589f0  mov     x20, x0
  1000589f4  adrp    x8, #0x100417000
  1000589f8  nop
  1000589fc  ldr     x27, [x8, #0xd08]
  100058a00  mov     w2, #0x14
  100058a04  mov     x1, x27
  100058a08  bl      _objc_msgSend                            ; [[self view] viewWithTag:20]
  100058a0c  mov     x29, x29
  100058a10  bl      _objc_retainAutoreleasedReturnValue
  100058a14  mov     x21, x0
  100058a18  str     x21, [sp, #0x38]
  100058a1c  mov     x0, x19
  100058a20  mov     x1, x25
  100058a24  bl      _objc_msgSend                            ; [self view]
  100058a28  mov     x29, x29
  100058a2c  bl      _objc_retainAutoreleasedReturnValue
  100058a30  mov     x23, x0
  100058a34  mov     w2, #0x15
  100058a38  mov     x1, x27
  100058a3c  bl      _objc_msgSend                            ; [[self view] viewWithTag:21]
  100058a40  mov     x29, x29
  100058a44  bl      _objc_retainAutoreleasedReturnValue
  100058a48  mov     x24, x0
  100058a4c  str     x24, [sp, #0x40]
  100058a50  mov     x0, x19
  100058a54  mov     x1, x25
  100058a58  bl      _objc_msgSend                            ; [self view]
  100058a5c  mov     x29, x29
  100058a60  bl      _objc_retainAutoreleasedReturnValue
  100058a64  mov     x26, x0
  100058a68  mov     w2, #0x16
  100058a6c  mov     x1, x27
  100058a70  bl      _objc_msgSend                            ; [[self view] viewWithTag:22]
  100058a74  mov     x29, x29
  100058a78  bl      _objc_retainAutoreleasedReturnValue
  100058a7c  mov     x28, x0
  100058a80  str     x28, [sp, #0x48]
  100058a84  mov     x0, x19
  100058a88  mov     x1, x25
  100058a8c  bl      _objc_msgSend                            ; [self view]
  100058a90  mov     x29, x29
  100058a94  bl      _objc_retainAutoreleasedReturnValue
  100058a98  mov     x25, x0
  100058a9c  mov     w2, #0x17
  100058aa0  mov     x1, x27
  100058aa4  bl      _objc_msgSend                            ; [[self view] viewWithTag:23]
  100058aa8  mov     x29, x29
  100058aac  bl      _objc_retainAutoreleasedReturnValue
  100058ab0  mov     x27, x0
  100058ab4  str     x27, [sp, #0x50]
  100058ab8  adrp    x8, #0x10041d000
  100058abc  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100058ac0  adrp    x8, #0x100417000
  100058ac4  nop
  100058ac8  ldr     x1, [x8, #0x3c8]
  100058acc  add     x2, sp, #0x38
  100058ad0  mov     w3, #4
  100058ad4  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x38] count:4]
  100058ad8  mov     x2, x0
  100058adc  adrp    x8, #0x100417000
  100058ae0  nop
  100058ae4  ldr     x1, [x8, #0xd10]
  100058ae8  mov     x0, x19
  100058aec  bl      _objc_msgSend                            ; [self setInfiniteScrollViews:[NSArray arrayWithObjects:&sp[0x38] count:4]]
  100058af0  mov     x0, x27
  100058af4  bl      _objc_release
  100058af8  mov     x0, x25
  100058afc  bl      _objc_release
  100058b00  mov     x0, x28
  100058b04  bl      _objc_release
  100058b08  mov     x0, x26
  100058b0c  bl      _objc_release
  100058b10  mov     x0, x24
  100058b14  bl      _objc_release
  100058b18  mov     x0, x23
  100058b1c  bl      _objc_release
  100058b20  mov     x0, x21
  100058b24  bl      _objc_release
  100058b28  mov     x0, x20
  100058b2c  bl      _objc_release
loc_100058b30:
  100058b30  mov     x0, x22
  100058b34  bl      _objc_release
  100058b38  ldur    x8, [x29, #-0x58]
  100058b3c  adrp    x9, #0x1003b0000
  100058b40  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100058b44  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100058b48  sub     x8, x9, x8
  100058b4c  cbnz    x8, loc_100058b70                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100058b50  sub     sp, x29, #0x50
  100058b54  ldp     x29, x30, [sp, #0x50]
  100058b58  ldp     x20, x19, [sp, #0x40]
  100058b5c  ldp     x22, x21, [sp, #0x30]
  100058b60  ldp     x24, x23, [sp, #0x20]
  100058b64  ldp     x26, x25, [sp, #0x10]
  100058b68  ldp     x28, x27, [sp], #0x60
  100058b6c  ret
loc_100058b70:
  100058b70  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100058b74  mov     x19, x0
  100058b78  b       loc_100058cd0
  100058b7c  mov     x19, x0
  100058b80  b       loc_100058c40
  100058b84  mov     x19, x0
  100058b88  b       loc_100058c38
  100058b8c  mov     x19, x0
  100058b90  b       loc_100058c30
  100058b94  mov     x19, x0
  100058b98  b       loc_100058c28
  100058b9c  mov     x19, x0
  100058ba0  b       loc_100058c20
  100058ba4  mov     x19, x0
  100058ba8  b       loc_100058c18
  100058bac  mov     x19, x0
  100058bb0  b       loc_100058c10
  100058bb4  mov     x19, x0
  100058bb8  b       loc_100058c08
  100058bbc  mov     x19, x0
  100058bc0  b       loc_100058c00
  100058bc4  mov     x19, x0
  100058bc8  b       loc_100058bf8
  100058bcc  mov     x19, x0
  100058bd0  b       loc_100058bf0
  100058bd4  mov     x19, x0
  100058bd8  b       loc_100058be8
  100058bdc  mov     x19, x0
  100058be0  mov     x0, x22
  100058be4  bl      _objc_release
loc_100058be8:
  100058be8  mov     x0, x24
  100058bec  bl      _objc_release
loc_100058bf0:
  100058bf0  mov     x0, x23
  100058bf4  bl      _objc_release
loc_100058bf8:
  100058bf8  mov     x0, x21
  100058bfc  bl      _objc_release
loc_100058c00:
  100058c00  mov     x0, x20
  100058c04  bl      _objc_release
loc_100058c08:
  100058c08  mov     x0, x28
  100058c0c  bl      _objc_release
loc_100058c10:
  100058c10  mov     x0, x27
  100058c14  bl      _objc_release
loc_100058c18:
  100058c18  mov     x0, x26
  100058c1c  bl      _objc_release
loc_100058c20:
  100058c20  ldr     x0, [sp, #0x10]
  100058c24  bl      _objc_release
loc_100058c28:
  100058c28  ldr     x0, [sp, #0x18]
  100058c2c  bl      _objc_release
loc_100058c30:
  100058c30  ldr     x0, [sp, #0x20]
  100058c34  bl      _objc_release
loc_100058c38:
  100058c38  ldr     x0, [sp, #0x28]
  100058c3c  bl      _objc_release
loc_100058c40:
  100058c40  ldr     x0, [sp, #0x30]
  100058c44  b       loc_100058cd4
  100058c48  mov     x19, x0
  100058c4c  b       loc_100058cc8
  100058c50  mov     x19, x0
  100058c54  b       loc_100058cc8
  100058c58  mov     x19, x0
  100058c5c  b       loc_100058cc0
  100058c60  mov     x19, x0
  100058c64  b       loc_100058cb8
  100058c68  mov     x19, x0
  100058c6c  b       loc_100058cb0
  100058c70  mov     x19, x0
  100058c74  b       loc_100058ca8
  100058c78  mov     x19, x0
  100058c7c  b       loc_100058ca0
  100058c80  mov     x19, x0
  100058c84  b       loc_100058c98
  100058c88  b       loc_100058c8c
loc_100058c8c:
  100058c8c  mov     x19, x0
  100058c90  mov     x0, x27
  100058c94  bl      _objc_release
loc_100058c98:
  100058c98  mov     x0, x25
  100058c9c  bl      _objc_release
loc_100058ca0:
  100058ca0  mov     x0, x28
  100058ca4  bl      _objc_release
loc_100058ca8:
  100058ca8  mov     x0, x26
  100058cac  bl      _objc_release
loc_100058cb0:
  100058cb0  mov     x0, x24
  100058cb4  bl      _objc_release
loc_100058cb8:
  100058cb8  mov     x0, x23
  100058cbc  bl      _objc_release
loc_100058cc0:
  100058cc0  mov     x0, x21
  100058cc4  bl      _objc_release
loc_100058cc8:
  100058cc8  mov     x0, x20
  100058ccc  bl      _objc_release
loc_100058cd0:
  100058cd0  mov     x0, x22
loc_100058cd4:
  100058cd4  bl      _objc_release
  100058cd8  mov     x0, x19
  100058cdc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController viewWillDisappear:]
; address 0x100058ce0  size 4  kind objc
; ======================================================================
  100058ce0  ret

; ======================================================================
; -[ADGameplayViewController setGameModeDimension]
; address 0x100058ce4  size 124  kind objc
; ======================================================================
  100058ce4  stp     x20, x19, [sp, #-0x20]!
  100058ce8  stp     x29, x30, [sp, #0x10]
  100058cec  add     x29, sp, #0x10
  100058cf0  adrp    x8, #0x10041e000
  100058cf4  ldr     x0, [x8, #8]                             ; class ADTracker
  100058cf8  adrp    x8, #0x100416000
  100058cfc  nop
  100058d00  ldr     x1, [x8, #0xac0]
  100058d04  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100058d08  mov     x29, x29
  100058d0c  bl      _objc_retainAutoreleasedReturnValue
  100058d10  mov     x19, x0
  100058d14  adrp    x8, #0x100417000
  100058d18  nop
  100058d1c  ldr     x1, [x8, #0x9b8]
  100058d20  mov     x4, #0
  100058d24  mov     x5, #0
  100058d28  adrp    x2, #0x1003bd000
  100058d2c  add     x2, x2, #0xf70                           ; @"Endless mode"
  100058d30  adrp    x3, #0x1003bb000
  100058d34  add     x3, x3, #0x770                           ; @"Game mode"
  100058d38  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:@"Endless mode" ForDimension:@"Game mode" AndValue:0 ForMetric:0]
  100058d3c  mov     x0, x19
  100058d40  ldp     x29, x30, [sp, #0x10]
  100058d44  ldp     x20, x19, [sp], #0x20
  100058d48  b       _objc_release
  100058d4c  mov     x20, x0
  100058d50  mov     x0, x19
  100058d54  bl      _objc_release
  100058d58  mov     x0, x20
  100058d5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController goToChallengeFailedScreen]
; address 0x100058d60  size 4  kind objc
; ======================================================================
  100058d60  ret

; ======================================================================
; -[ADGameplayViewController viewWillAppear:]
; address 0x100058d64  size 956  kind objc
; ======================================================================
  100058d64  stp     x24, x23, [sp, #-0x40]!
  100058d68  stp     x22, x21, [sp, #0x10]
  100058d6c  stp     x20, x19, [sp, #0x20]
  100058d70  stp     x29, x30, [sp, #0x30]
  100058d74  add     x29, sp, #0x30
  100058d78  sub     sp, sp, #0x20
  100058d7c  mov     x19, x0
  100058d80  str     x19, [sp, #0x10]
  100058d84  adrp    x8, #0x10041e000
  100058d88  ldr     x8, [x8, #0xd78]
  100058d8c  str     x8, [sp, #0x18]
  100058d90  adrp    x8, #0x100417000
  100058d94  nop
  100058d98  ldr     x1, [x8, #0x928]
  100058d9c  add     x0, sp, #0x10
  100058da0  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  100058da4  adrp    x8, #0x100419000
  100058da8  nop
  100058dac  ldr     x1, [x8, #0x10]
  100058db0  mov     x0, x19
  100058db4  bl      _objc_msgSend                            ; [self meleeButton]
  100058db8  mov     x29, x29
  100058dbc  bl      _objc_retainAutoreleasedReturnValue
  100058dc0  mov     x20, x0
  100058dc4  adrp    x8, #0x10041d000
  100058dc8  ldr     x23, [x8, #0xf10]                        ; class UIImage
  100058dcc  nop
  100058dd0  ldr     x24, [x8, #0xf78]                        ; class NSString
  100058dd4  adrp    x8, #0x100416000
  100058dd8  nop
  100058ddc  ldr     x1, [x8, #0xc88]
  100058de0  mov     x0, x19
  100058de4  bl      _objc_msgSend                            ; [self weaponManager]
  100058de8  mov     x29, x29
  100058dec  bl      _objc_retainAutoreleasedReturnValue
  100058df0  mov     x21, x0
  100058df4  adrp    x8, #0x100419000
  100058df8  nop
  100058dfc  ldr     x1, [x8, #0x18]
  100058e00  bl      _objc_msgSend                            ; [[self weaponManager] meleeWeaponName]
  100058e04  mov     x29, x29
  100058e08  bl      _objc_retainAutoreleasedReturnValue
  100058e0c  mov     x22, x0
  100058e10  adrp    x8, #0x100416000
  100058e14  nop
  100058e18  ldr     x1, [x8, #0xee8]
  100058e1c  str     x22, [sp]
  100058e20  adrp    x2, #0x1003bb000
  100058e24  add     x2, x2, #0x550                           ; @"%@_icon_game"
  100058e28  mov     x0, x24
  100058e2c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon_game", [[self weaponManager] meleeWeaponName]]
  100058e30  mov     x29, x29
  100058e34  bl      _objc_retainAutoreleasedReturnValue
  100058e38  mov     x24, x0
  100058e3c  adrp    x8, #0x100416000
  100058e40  nop
  100058e44  ldr     x1, [x8, #0xd40]
  100058e48  mov     x0, x23
  100058e4c  mov     x2, x24
  100058e50  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon_game", [[self weaponManager] meleeWeaponName]]]
  100058e54  mov     x29, x29
  100058e58  bl      _objc_retainAutoreleasedReturnValue
  100058e5c  mov     x23, x0
  100058e60  adrp    x8, #0x100416000
  100058e64  nop
  100058e68  ldr     x1, [x8, #0xce8]
  100058e6c  mov     x3, #0
  100058e70  mov     x0, x20
  100058e74  mov     x2, x23
  100058e78  bl      _objc_msgSend                            ; [[self meleeButton] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon_game", [[self weaponManager] meleeWeaponName]]] forState:0]
  100058e7c  mov     x0, x23
  100058e80  bl      _objc_release
  100058e84  mov     x0, x24
  100058e88  bl      _objc_release
  100058e8c  mov     x0, x22
  100058e90  bl      _objc_release
  100058e94  mov     x0, x21
  100058e98  bl      _objc_release
  100058e9c  mov     x0, x20
  100058ea0  bl      _objc_release
  100058ea4  adrp    x8, #0x10041d000
  100058ea8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100058eac  adrp    x8, #0x100416000
  100058eb0  nop
  100058eb4  ldr     x1, [x8, #0xc00]
  100058eb8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100058ebc  mov     x29, x29
  100058ec0  bl      _objc_retainAutoreleasedReturnValue
  100058ec4  mov     x20, x0
  100058ec8  adrp    x8, #0x100417000
  100058ecc  nop
  100058ed0  ldr     x1, [x8, #0xc90]
  100058ed4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  100058ed8  mov     x23, x0
  100058edc  mov     x0, x20
  100058ee0  bl      _objc_release
  100058ee4  adrp    x8, #0x100418000
  100058ee8  nop
  100058eec  ldr     x21, [x8, #0x9e0]
  100058ef0  mov     x0, x19
  100058ef4  mov     x1, x21
  100058ef8  bl      _objc_msgSend                            ; [self buttonsView]
  100058efc  mov     x29, x29
  100058f00  bl      _objc_retainAutoreleasedReturnValue
  100058f04  mov     x22, x0
  100058f08  adrp    x8, #0x100416000
  100058f0c  add     x8, x8, #0xba8                           ; &@selector(setHidden:)
  100058f10  ldr     x20, [x8]
  100058f14  cbz     w23, loc_100058fcc                       ; if ([[ADGameParameters sharedParameters] buttonMode] == 0)
  100058f18  mov     w2, #0
  100058f1c  mov     x0, x22
  100058f20  mov     x1, x20
  100058f24  bl      _objc_msgSend                            ; [[self buttonsView] setHidden:0]
  100058f28  mov     x0, x22
  100058f2c  bl      _objc_release
  100058f30  mov     x0, x19
  100058f34  mov     x1, x21
  100058f38  bl      _objc_msgSend                            ; [self buttonsView]
  100058f3c  mov     x29, x29
  100058f40  bl      _objc_retainAutoreleasedReturnValue
  100058f44  mov     x21, x0
  100058f48  adrp    x8, #0x100417000
  100058f4c  nop
  100058f50  ldr     x1, [x8, #0x998]
  100058f54  mov     w2, #1
  100058f58  bl      _objc_msgSend                            ; [[self buttonsView] setUserInteractionEnabled:1]
  100058f5c  mov     x0, x21
  100058f60  bl      _objc_release
  100058f64  adrp    x8, #0x100419000
  100058f68  nop
  100058f6c  ldr     x1, [x8]
  100058f70  mov     x0, x19
  100058f74  bl      _objc_msgSend                            ; [self scoreTitle]
  100058f78  mov     x29, x29
  100058f7c  bl      _objc_retainAutoreleasedReturnValue
  100058f80  mov     x21, x0
  100058f84  mov     w2, #0
  100058f88  mov     x1, x20
  100058f8c  bl      _objc_msgSend                            ; [[self scoreTitle] setHidden:0]
  100058f90  mov     x0, x21
  100058f94  bl      _objc_release
  100058f98  adrp    x8, #0x100419000
  100058f9c  nop
  100058fa0  ldr     x1, [x8, #8]
  100058fa4  mov     x0, x19
  100058fa8  bl      _objc_msgSend                            ; [self comboTitle]
  100058fac  mov     x29, x29
  100058fb0  bl      _objc_retainAutoreleasedReturnValue
  100058fb4  mov     x21, x0
  100058fb8  mov     w2, #0
  100058fbc  mov     x1, x20
  100058fc0  bl      _objc_msgSend                            ; [[self comboTitle] setHidden:0]
  100058fc4  b       loc_100059078
  100058fc8  b       loc_10005910c
loc_100058fcc:
  100058fcc  mov     w2, #1
  100058fd0  mov     x0, x22
  100058fd4  mov     x1, x20
  100058fd8  bl      _objc_msgSend                            ; [[self buttonsView] setHidden:1]
  100058fdc  mov     x0, x22
  100058fe0  bl      _objc_release
  100058fe4  mov     x0, x19
  100058fe8  mov     x1, x21
  100058fec  bl      _objc_msgSend                            ; [self buttonsView]
  100058ff0  mov     x29, x29
  100058ff4  bl      _objc_retainAutoreleasedReturnValue
  100058ff8  mov     x21, x0
  100058ffc  adrp    x8, #0x100417000
  100059000  nop
  100059004  ldr     x1, [x8, #0x998]
  100059008  mov     w2, #0
  10005900c  bl      _objc_msgSend                            ; [[self buttonsView] setUserInteractionEnabled:0]
  100059010  mov     x0, x21
  100059014  bl      _objc_release
  100059018  adrp    x8, #0x100419000
  10005901c  nop
  100059020  ldr     x1, [x8]
  100059024  mov     x0, x19
  100059028  bl      _objc_msgSend                            ; [self scoreTitle]
  10005902c  mov     x29, x29
  100059030  bl      _objc_retainAutoreleasedReturnValue
  100059034  mov     x21, x0
  100059038  mov     w2, #1
  10005903c  mov     x1, x20
  100059040  bl      _objc_msgSend                            ; [[self scoreTitle] setHidden:1]
  100059044  mov     x0, x21
  100059048  bl      _objc_release
  10005904c  adrp    x8, #0x100419000
  100059050  nop
  100059054  ldr     x1, [x8, #8]
  100059058  mov     x0, x19
  10005905c  bl      _objc_msgSend                            ; [self comboTitle]
  100059060  mov     x29, x29
  100059064  bl      _objc_retainAutoreleasedReturnValue
  100059068  mov     x21, x0
  10005906c  mov     w2, #1
  100059070  mov     x1, x20
  100059074  bl      _objc_msgSend                            ; [[self comboTitle] setHidden:1]
loc_100059078:
  100059078  mov     x0, x21
  10005907c  bl      _objc_release
  100059080  sub     sp, x29, #0x30
  100059084  ldp     x29, x30, [sp, #0x30]
  100059088  ldp     x20, x19, [sp, #0x20]
  10005908c  ldp     x22, x21, [sp, #0x10]
  100059090  ldp     x24, x23, [sp], #0x40
  100059094  ret
  100059098  mov     x19, x0
  10005909c  b       loc_1000590e4
  1000590a0  mov     x19, x0
  1000590a4  b       loc_1000590d4
  1000590a8  mov     x19, x0
  1000590ac  b       loc_1000590cc
  1000590b0  mov     x19, x0
  1000590b4  b       loc_1000590c4
  1000590b8  mov     x19, x0
  1000590bc  mov     x0, x23
  1000590c0  bl      _objc_release
loc_1000590c4:
  1000590c4  mov     x0, x24
  1000590c8  bl      _objc_release
loc_1000590cc:
  1000590cc  mov     x0, x22
  1000590d0  bl      _objc_release
loc_1000590d4:
  1000590d4  mov     x0, x21
  1000590d8  bl      _objc_release
  1000590dc  b       loc_1000590e4
  1000590e0  mov     x19, x0
loc_1000590e4:
  1000590e4  mov     x0, x20
  1000590e8  b       loc_100059114
  1000590ec  b       loc_1000590f8
  1000590f0  b       loc_10005910c
  1000590f4  b       loc_10005910c
loc_1000590f8:
  1000590f8  mov     x19, x0
  1000590fc  mov     x0, x22
  100059100  b       loc_100059114
  100059104  b       loc_10005910c
  100059108  b       loc_10005910c
loc_10005910c:
  10005910c  mov     x19, x0
  100059110  mov     x0, x21
loc_100059114:
  100059114  bl      _objc_release
  100059118  mov     x0, x19
  10005911c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController handleLongPress:]
; address 0x100059120  size 172  kind objc
; ======================================================================
  100059120  stp     x22, x21, [sp, #-0x30]!
  100059124  stp     x20, x19, [sp, #0x10]
  100059128  stp     x29, x30, [sp, #0x20]
  10005912c  add     x29, sp, #0x20
  100059130  mov     x20, x0
  100059134  mov     x0, x2
  100059138  bl      _objc_retain
  10005913c  mov     x19, x0
  100059140  adrp    x8, #0x100416000
  100059144  nop
  100059148  ldr     x1, [x8, #0xf18]
  10005914c  bl      _objc_msgSend                            ; [arg1 view]
  100059150  mov     x29, x29
  100059154  bl      _objc_retainAutoreleasedReturnValue
  100059158  mov     x21, x0
  10005915c  adrp    x8, #0x100417000
  100059160  nop
  100059164  ldr     x1, [x8, #0x6b0]
  100059168  bl      _objc_msgSend                            ; [[arg1 view] tag]
  10005916c  mov     x22, x0
  100059170  mov     x0, x21
  100059174  bl      _objc_release
  100059178  cmp     x22, #0xbb8
  10005917c  b.ne    loc_100059194                            ; if ([[arg1 view] tag] != 3000)
  100059180  adrp    x8, #0x100419000
  100059184  nop
  100059188  ldr     x1, [x8, #0x20]
  10005918c  mov     x0, x20
  100059190  bl      _objc_msgSend                            ; [self goToScoreScreen]
loc_100059194:
  100059194  mov     x0, x19
  100059198  ldp     x29, x30, [sp, #0x20]
  10005919c  ldp     x20, x19, [sp, #0x10]
  1000591a0  ldp     x22, x21, [sp], #0x30
  1000591a4  b       _objc_release
  1000591a8  mov     x20, x0
  1000591ac  b       loc_1000591bc
  1000591b0  mov     x20, x0
  1000591b4  mov     x0, x21
  1000591b8  bl      _objc_release
loc_1000591bc:
  1000591bc  mov     x0, x19
  1000591c0  bl      _objc_release
  1000591c4  mov     x0, x20
  1000591c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController initWeaponManager]
; address 0x1000591cc  size 704  kind objc
; ======================================================================
  1000591cc  stp     x26, x25, [sp, #-0x50]!
  1000591d0  stp     x24, x23, [sp, #0x10]
  1000591d4  stp     x22, x21, [sp, #0x20]
  1000591d8  stp     x20, x19, [sp, #0x30]
  1000591dc  stp     x29, x30, [sp, #0x40]
  1000591e0  add     x29, sp, #0x40
  1000591e4  mov     x19, x0
  1000591e8  adrp    x8, #0x10041d000
  1000591ec  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000591f0  adrp    x8, #0x100416000
  1000591f4  nop
  1000591f8  ldr     x21, [x8, #0xac8]
  1000591fc  mov     x1, x21
  100059200  bl      _objc_msgSend                            ; [ADWeaponManager alloc]
  100059204  adrp    x8, #0x100419000
  100059208  nop
  10005920c  ldr     x1, [x8, #0x28]
  100059210  bl      _objc_msgSend                            ; [[ADWeaponManager alloc] initWithWeaponsFromArmory]
  100059214  mov     x22, x0
  100059218  adrp    x8, #0x100418000
  10005921c  nop
  100059220  ldr     x20, [x8, #0xff0]
  100059224  mov     x0, x19
  100059228  mov     x1, x20
  10005922c  mov     x2, x22
  100059230  bl      _objc_msgSend                            ; [self setWeaponManager:[[ADWeaponManager alloc] initWithWeaponsFromArmory]]
  100059234  mov     x0, x22
  100059238  bl      _objc_release
  10005923c  adrp    x8, #0x100417000
  100059240  nop
  100059244  ldr     x24, [x8, #0xce0]
  100059248  mov     x0, x19
  10005924c  mov     x1, x24
  100059250  bl      _objc_msgSend                            ; [self weaponTouchArea]
  100059254  mov     x29, x29
  100059258  bl      _objc_retainAutoreleasedReturnValue
  10005925c  mov     x23, x0
  100059260  adrp    x8, #0x100416000
  100059264  nop
  100059268  ldr     x22, [x8, #0xc88]
  10005926c  mov     x0, x19
  100059270  mov     x1, x22
  100059274  bl      _objc_msgSend                            ; [self weaponManager]
  100059278  mov     x29, x29
  10005927c  bl      _objc_retainAutoreleasedReturnValue
  100059280  mov     x25, x0
  100059284  mov     x0, x23
  100059288  mov     x1, x20
  10005928c  mov     x2, x25
  100059290  bl      _objc_msgSend                            ; [[self weaponTouchArea] setWeaponManager:[self weaponManager]]
  100059294  mov     x0, x25
  100059298  bl      _objc_release
  10005929c  mov     x0, x23
  1000592a0  bl      _objc_release
  1000592a4  mov     x0, x19
  1000592a8  mov     x1, x24
  1000592ac  bl      _objc_msgSend                            ; [self weaponTouchArea]
  1000592b0  mov     x29, x29
  1000592b4  bl      _objc_retainAutoreleasedReturnValue
  1000592b8  mov     x24, x0
  1000592bc  adrp    x8, #0x100417000
  1000592c0  nop
  1000592c4  ldr     x23, [x8, #0xc10]
  1000592c8  mov     x1, x23
  1000592cc  mov     x2, x19
  1000592d0  bl      _objc_msgSend                            ; [[self weaponTouchArea] setGameplayViewController:self]
  1000592d4  mov     x0, x24
  1000592d8  bl      _objc_release
  1000592dc  adrp    x8, #0x100417000
  1000592e0  nop
  1000592e4  ldr     x25, [x8, #0xa58]
  1000592e8  mov     x0, x19
  1000592ec  mov     x1, x25
  1000592f0  bl      _objc_msgSend                            ; [self weaponButton]
  1000592f4  mov     x29, x29
  1000592f8  bl      _objc_retainAutoreleasedReturnValue
  1000592fc  mov     x24, x0
  100059300  mov     x0, x19
  100059304  mov     x1, x22
  100059308  bl      _objc_msgSend                            ; [self weaponManager]
  10005930c  mov     x29, x29
  100059310  bl      _objc_retainAutoreleasedReturnValue
  100059314  mov     x26, x0
  100059318  mov     x0, x24
  10005931c  mov     x1, x20
  100059320  mov     x2, x26
  100059324  bl      _objc_msgSend                            ; [[self weaponButton] setWeaponManager:[self weaponManager]]
  100059328  mov     x0, x26
  10005932c  bl      _objc_release
  100059330  mov     x0, x24
  100059334  bl      _objc_release
  100059338  mov     x0, x19
  10005933c  mov     x1, x25
  100059340  bl      _objc_msgSend                            ; [self weaponButton]
  100059344  mov     x29, x29
  100059348  bl      _objc_retainAutoreleasedReturnValue
  10005934c  mov     x24, x0
  100059350  mov     x1, x23
  100059354  mov     x2, x19
  100059358  bl      _objc_msgSend                            ; [[self weaponButton] setGameplayViewController:self]
  10005935c  mov     x0, x24
  100059360  bl      _objc_release
  100059364  adrp    x8, #0x10041e000
  100059368  ldr     x0, [x8, #0x208]                         ; class ADShakeDetector
  10005936c  mov     x1, x21
  100059370  bl      _objc_msgSend                            ; [ADShakeDetector alloc]
  100059374  adrp    x8, #0x100416000
  100059378  nop
  10005937c  ldr     x1, [x8, #0xab8]
  100059380  bl      _objc_msgSend                            ; [[ADShakeDetector alloc] init]
  100059384  mov     x21, x0
  100059388  adrp    x8, #0x100419000
  10005938c  nop
  100059390  ldr     x1, [x8, #0x30]
  100059394  mov     x0, x19
  100059398  mov     x2, x21
  10005939c  bl      _objc_msgSend                            ; [self setShakeDetector:[[ADShakeDetector alloc] init]]
  1000593a0  mov     x0, x21
  1000593a4  bl      _objc_release
  1000593a8  adrp    x8, #0x100419000
  1000593ac  nop
  1000593b0  ldr     x1, [x8, #0x38]
  1000593b4  mov     x0, x19
  1000593b8  bl      _objc_msgSend                            ; [self shakeDetector]
  1000593bc  mov     x29, x29
  1000593c0  bl      _objc_retainAutoreleasedReturnValue
  1000593c4  mov     x21, x0
  1000593c8  mov     x0, x19
  1000593cc  mov     x1, x22
  1000593d0  bl      _objc_msgSend                            ; [self weaponManager]
  1000593d4  mov     x29, x29
  1000593d8  bl      _objc_retainAutoreleasedReturnValue
  1000593dc  mov     x22, x0
  1000593e0  mov     x0, x21
  1000593e4  mov     x1, x20
  1000593e8  mov     x2, x22
  1000593ec  bl      _objc_msgSend                            ; [[self shakeDetector] setWeaponManager:[self weaponManager]]
  1000593f0  mov     x0, x22
  1000593f4  bl      _objc_release
  1000593f8  mov     x0, x21
  1000593fc  ldp     x29, x30, [sp, #0x40]
  100059400  ldp     x20, x19, [sp, #0x30]
  100059404  ldp     x22, x21, [sp, #0x20]
  100059408  ldp     x24, x23, [sp, #0x10]
  10005940c  ldp     x26, x25, [sp], #0x50
  100059410  b       _objc_release
  100059414  mov     x19, x0
  100059418  mov     x0, x22
  10005941c  b       loc_100059480
  100059420  mov     x19, x0
  100059424  b       loc_100059434
  100059428  mov     x19, x0
  10005942c  mov     x0, x25
  100059430  bl      _objc_release
loc_100059434:
  100059434  mov     x0, x23
  100059438  b       loc_100059480
  10005943c  b       loc_100059454
  100059440  b       loc_100059454
  100059444  mov     x19, x0
  100059448  mov     x0, x26
  10005944c  bl      _objc_release
  100059450  b       loc_100059458
loc_100059454:
  100059454  mov     x19, x0
loc_100059458:
  100059458  mov     x0, x24
  10005945c  b       loc_100059480
  100059460  mov     x19, x0
  100059464  b       loc_10005947c
  100059468  mov     x19, x0
  10005946c  b       loc_10005947c
  100059470  mov     x19, x0
  100059474  mov     x0, x22
  100059478  bl      _objc_release
loc_10005947c:
  10005947c  mov     x0, x21
loc_100059480:
  100059480  bl      _objc_release
  100059484  mov     x0, x19
  100059488  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController startUpdateTimers]
; address 0x10005948c  size 580  kind objc
; ======================================================================
  10005948c  stp     x26, x25, [sp, #-0x50]!
  100059490  stp     x24, x23, [sp, #0x10]
  100059494  stp     x22, x21, [sp, #0x20]
  100059498  stp     x20, x19, [sp, #0x30]
  10005949c  stp     x29, x30, [sp, #0x40]
  1000594a0  add     x29, sp, #0x40
  1000594a4  mov     x19, x0
  1000594a8  adrp    x8, #0x10041f000
  1000594ac  ldrsw   x22, [x8, #0xaf8]                        ; ivar offset ADGameplayViewController.updateTimer (+0x148)
  1000594b0  ldr     x0, [x19, x22]                           ; x0 = self->updateTimer
  1000594b4  cbz     x0, loc_1000594c8                        ; if (self->updateTimer == 0)
  1000594b8  adrp    x8, #0x100417000
  1000594bc  nop
  1000594c0  ldr     x1, [x8, #0x730]
  1000594c4  bl      _objc_msgSend                            ; [self->updateTimer invalidate]
loc_1000594c8:
  1000594c8  adrp    x8, #0x10041f000
  1000594cc  ldrsw   x25, [x8, #0xafc]                        ; ivar offset ADGameplayViewController.weaponUpdateTimer (+0x140)
  1000594d0  ldr     x0, [x19, x25]                           ; x0 = self->weaponUpdateTimer
  1000594d4  cbz     x0, loc_1000594e8                        ; if (self->weaponUpdateTimer == 0)
  1000594d8  adrp    x8, #0x100417000
  1000594dc  nop
  1000594e0  ldr     x1, [x8, #0x730]
  1000594e4  bl      _objc_msgSend                            ; [self->weaponUpdateTimer invalidate]
loc_1000594e8:
  1000594e8  adrp    x8, #0x10041f000
  1000594ec  ldrsw   x24, [x8, #0xb00]                        ; ivar offset ADGameplayViewController.statsUpdateTimer (+0x150)
  1000594f0  ldr     x0, [x19, x24]                           ; x0 = self->statsUpdateTimer
  1000594f4  cbz     x0, loc_100059508                        ; if (self->statsUpdateTimer == 0)
  1000594f8  adrp    x8, #0x100417000
  1000594fc  nop
  100059500  ldr     x1, [x8, #0x730]
  100059504  bl      _objc_msgSend                            ; [self->statsUpdateTimer invalidate]
loc_100059508:
  100059508  adrp    x21, #0x10041e000
  10005950c  ldr     x0, [x21, #0x30]                         ; class NSTimer
  100059510  adrp    x8, #0x100417000
  100059514  nop
  100059518  ldr     x3, [x8, #0x888]
  10005951c  adrp    x8, #0x100417000
  100059520  nop
  100059524  ldr     x20, [x8, #0x890]
  100059528  adrp    x8, #0x100181000
  10005952c  ldr     d0, [x8, #0xa20]                         ; d0 = 0.05
  100059530  mov     w5, #1
  100059534  mov     x1, x20
  100059538  mov     x2, x19
  10005953c  mov     x4, #0
  100059540  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(update) userInfo:0 repeats:1]
  100059544  mov     x29, x29
  100059548  bl      _objc_retainAutoreleasedReturnValue
  10005954c  ldr     x8, [x19, x22]                           ; x8 = self->updateTimer
  100059550  str     x0, [x19, x22]                           ; self->updateTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(update) userInfo:0 repeats:1]
  100059554  mov     x0, x8
  100059558  bl      _objc_release
  10005955c  ldr     x0, [x21, #0x30]                         ; class NSTimer
  100059560  adrp    x8, #0x100419000
  100059564  nop
  100059568  ldr     x3, [x8, #0x40]
  10005956c  adrp    x8, #0x100181000
  100059570  ldr     d0, [x8, #0xae0]                         ; d0 = 0.01
  100059574  mov     w5, #1
  100059578  mov     x1, x20
  10005957c  mov     x2, x19
  100059580  mov     x4, #0
  100059584  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateWeapons) userInfo:0 repeats:1]
  100059588  mov     x29, x29
  10005958c  bl      _objc_retainAutoreleasedReturnValue
  100059590  ldr     x8, [x19, x25]                           ; x8 = self->weaponUpdateTimer
  100059594  str     x0, [x19, x25]                           ; self->weaponUpdateTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateWeapons) userInfo:0 repeats:1]
  100059598  mov     x0, x8
  10005959c  bl      _objc_release
  1000595a0  ldr     x0, [x21, #0x30]                         ; class NSTimer
  1000595a4  adrp    x8, #0x100419000
  1000595a8  nop
  1000595ac  ldr     x3, [x8, #0x48]
  1000595b0  fmov    d0, #0.25000000
  1000595b4  mov     w5, #1
  1000595b8  mov     x1, x20
  1000595bc  mov     x2, x19
  1000595c0  mov     x4, #0
  1000595c4  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(updateStats) userInfo:0 repeats:1]
  1000595c8  mov     x29, x29
  1000595cc  bl      _objc_retainAutoreleasedReturnValue
  1000595d0  ldr     x8, [x19, x24]                           ; x8 = self->statsUpdateTimer
  1000595d4  str     x0, [x19, x24]                           ; self->statsUpdateTimer = [NSTimer scheduledTimerWithTimeInterval:0.25 target:self selector:@selector(updateStats) userInfo:0 repeats:1]
  1000595d8  mov     x0, x8
  1000595dc  bl      _objc_release
  1000595e0  adrp    x26, #0x10041e000
  1000595e4  ldr     x0, [x26, #0x40]                         ; class NSRunLoop
  1000595e8  adrp    x8, #0x100417000
  1000595ec  nop
  1000595f0  ldr     x21, [x8, #0x718]
  1000595f4  mov     x1, x21
  1000595f8  bl      _objc_msgSend                            ; [NSRunLoop mainRunLoop]
  1000595fc  mov     x29, x29
  100059600  bl      _objc_retainAutoreleasedReturnValue
  100059604  mov     x23, x0
  100059608  ldr     x2, [x19, x22]                           ; x2 = self->updateTimer
  10005960c  adrp    x8, #0x1003b0000
  100059610  ldr     x8, [x8, #0x80]                          ; _NSRunLoopCommonModes
  100059614  ldr     x20, [x8]                                ; x20 = _NSRunLoopCommonModes[+0x0]
  100059618  adrp    x8, #0x100417000
  10005961c  nop
  100059620  ldr     x22, [x8, #0x728]
  100059624  mov     x1, x22
  100059628  mov     x3, x20
  10005962c  bl      _objc_msgSend                            ; [[NSRunLoop mainRunLoop] addTimer:self->updateTimer forMode:_NSRunLoopCommonModes[+0x0]]
  100059630  mov     x0, x23
  100059634  bl      _objc_release
  100059638  ldr     x0, [x26, #0x40]                         ; class NSRunLoop
  10005963c  mov     x1, x21
  100059640  bl      _objc_msgSend                            ; [NSRunLoop mainRunLoop]
  100059644  mov     x29, x29
  100059648  bl      _objc_retainAutoreleasedReturnValue
  10005964c  mov     x23, x0
  100059650  ldr     x2, [x19, x25]                           ; x2 = self->weaponUpdateTimer
  100059654  mov     x1, x22
  100059658  mov     x3, x20
  10005965c  bl      _objc_msgSend                            ; [[NSRunLoop mainRunLoop] addTimer:self->weaponUpdateTimer forMode:_NSRunLoopCommonModes[+0x0]]
  100059660  mov     x0, x23
  100059664  bl      _objc_release
  100059668  ldr     x0, [x26, #0x40]                         ; class NSRunLoop
  10005966c  mov     x1, x21
  100059670  bl      _objc_msgSend                            ; [NSRunLoop mainRunLoop]
  100059674  mov     x29, x29
  100059678  bl      _objc_retainAutoreleasedReturnValue
  10005967c  mov     x21, x0
  100059680  ldr     x2, [x19, x24]                           ; x2 = self->statsUpdateTimer
  100059684  mov     x1, x22
  100059688  mov     x3, x20
  10005968c  bl      _objc_msgSend                            ; [[NSRunLoop mainRunLoop] addTimer:self->statsUpdateTimer forMode:_NSRunLoopCommonModes[+0x0]]
  100059690  mov     x0, x21
  100059694  ldp     x29, x30, [sp, #0x40]
  100059698  ldp     x20, x19, [sp, #0x30]
  10005969c  ldp     x22, x21, [sp, #0x20]
  1000596a0  ldp     x24, x23, [sp, #0x10]
  1000596a4  ldp     x26, x25, [sp], #0x50
  1000596a8  b       _objc_release
  1000596ac  b       loc_1000596b0
loc_1000596b0:
  1000596b0  mov     x19, x0
  1000596b4  mov     x0, x23
  1000596b8  b       loc_1000596c4
  1000596bc  mov     x19, x0
  1000596c0  mov     x0, x21
loc_1000596c4:
  1000596c4  bl      _objc_release
  1000596c8  mov     x0, x19
  1000596cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController updateStats]
; address 0x1000596d0  size 888  kind objc
; ======================================================================
  1000596d0  stp     x28, x27, [sp, #-0x60]!
  1000596d4  stp     x26, x25, [sp, #0x10]
  1000596d8  stp     x24, x23, [sp, #0x20]
  1000596dc  stp     x22, x21, [sp, #0x30]
  1000596e0  stp     x20, x19, [sp, #0x40]
  1000596e4  stp     x29, x30, [sp, #0x50]
  1000596e8  add     x29, sp, #0x50
  1000596ec  sub     sp, sp, #0x40
  1000596f0  mov     x19, x0
  1000596f4  adrp    x8, #0x10041e000
  1000596f8  ldr     x0, [x8, #0xc8]                          ; class ADOpenerGameplayViewController
  1000596fc  adrp    x8, #0x100417000
  100059700  nop
  100059704  ldr     x1, [x8, #0x2e0]
  100059708  bl      _objc_msgSend                            ; [ADOpenerGameplayViewController class]
  10005970c  mov     x2, x0
  100059710  adrp    x8, #0x100417000
  100059714  nop
  100059718  ldr     x1, [x8, #0x3b8]
  10005971c  mov     x0, x19
  100059720  bl      _objc_msgSend                            ; [self isKindOfClass:[ADOpenerGameplayViewController class]]
  100059724  tbnz    w0, #0, loc_100059784                    ; if (([self isKindOfClass:[ADOpenerGameplayViewController class]] & 1))
  100059728  adrp    x8, #0x100419000
  10005972c  nop
  100059730  ldr     x1, [x8, #0x50]
  100059734  mov     x0, x19
  100059738  bl      _objc_msgSend                            ; [self paused]
  10005973c  tbnz    w0, #0, loc_100059784                    ; if (([self paused] & 1))
  100059740  adrp    x8, #0x10041e000
  100059744  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100059748  adrp    x8, #0x100417000
  10005974c  nop
  100059750  ldr     x1, [x8, #0xaa8]
  100059754  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100059758  mov     x29, x29
  10005975c  bl      _objc_retainAutoreleasedReturnValue
  100059760  mov     x20, x0
  100059764  adrp    x8, #0x100419000
  100059768  nop
  10005976c  ldr     x1, [x8, #0x58]
  100059770  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying]
  100059774  mov     x21, x0
  100059778  mov     x0, x20
  10005977c  bl      _objc_release
  100059780  tbz     w21, #0, loc_1000597a4                   ; if (!([[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying] & 1))
loc_100059784:
  100059784  sub     sp, x29, #0x50
  100059788  ldp     x29, x30, [sp, #0x50]
  10005978c  ldp     x20, x19, [sp, #0x40]
  100059790  ldp     x22, x21, [sp, #0x30]
  100059794  ldp     x24, x23, [sp, #0x20]
  100059798  ldp     x26, x25, [sp, #0x10]
  10005979c  ldp     x28, x27, [sp], #0x60
  1000597a0  ret
loc_1000597a4:
  1000597a4  adrp    x21, #0x10041d000
  1000597a8  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000597ac  adrp    x8, #0x100419000
  1000597b0  nop
  1000597b4  ldr     x24, [x8, #0x60]
  1000597b8  fmov    d0, #0.25000000
  1000597bc  mov     x1, x24
  1000597c0  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:0.25]
  1000597c4  mov     x29, x29
  1000597c8  bl      _objc_retainAutoreleasedReturnValue
  1000597cc  mov     x20, x0
  1000597d0  adrp    x8, #0x100417000
  1000597d4  nop
  1000597d8  ldr     x22, [x8, #0xad8]
  1000597dc  str     xzr, [sp]
  1000597e0  adrp    x2, #0x1003bd000
  1000597e4  add     x2, x2, #0xb70                           ; @"TIME_ELAPSED"
  1000597e8  mov     x0, x19
  1000597ec  mov     x1, x22
  1000597f0  mov     x3, x20
  1000597f4  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"TIME_ELAPSED" AndData:[NSNumber numberWithDouble:0.25]]
  1000597f8  mov     x0, x20
  1000597fc  bl      _objc_release
  100059800  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100059804  fmov    d0, #0.25000000
  100059808  mov     x1, x24
  10005980c  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:0.25]
  100059810  mov     x29, x29
  100059814  bl      _objc_retainAutoreleasedReturnValue
  100059818  mov     x20, x0
  10005981c  str     xzr, [sp]
  100059820  adrp    x2, #0x1003bd000
  100059824  add     x2, x2, #0xb90                           ; @"BRICK_TIME_ELAPSED"
  100059828  mov     x0, x19
  10005982c  mov     x1, x22
  100059830  mov     x3, x20
  100059834  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"BRICK_TIME_ELAPSED" AndData:[NSNumber numberWithDouble:0.25]]
  100059838  mov     x0, x20
  10005983c  bl      _objc_release
  100059840  adrp    x8, #0x100416000
  100059844  nop
  100059848  ldr     x1, [x8, #0xc88]
  10005984c  mov     x0, x19
  100059850  bl      _objc_msgSend                            ; [self weaponManager]
  100059854  mov     x29, x29
  100059858  bl      _objc_retainAutoreleasedReturnValue
  10005985c  str     x0, [sp, #0x38]
  100059860  adrp    x8, #0x100417000
  100059864  nop
  100059868  ldr     x1, [x8, #0xc50]
  10005986c  bl      _objc_msgSend                            ; [[self weaponManager] currentWeapon]
  100059870  mov     x29, x29
  100059874  bl      _objc_retainAutoreleasedReturnValue
  100059878  mov     x20, x0
  10005987c  adrp    x8, #0x100417000
  100059880  nop
  100059884  ldr     x1, [x8, #0x450]
  100059888  bl      _objc_msgSend                            ; [[[self weaponManager] currentWeapon] name]
  10005988c  mov     x29, x29
  100059890  bl      _objc_retainAutoreleasedReturnValue
  100059894  mov     x23, x0
  100059898  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  10005989c  adrp    x8, #0x100417000
  1000598a0  nop
  1000598a4  ldr     x28, [x8, #0xb8]
  1000598a8  mov     w2, #0
  1000598ac  mov     x1, x28
  1000598b0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000598b4  mov     x29, x29
  1000598b8  bl      _objc_retainAutoreleasedReturnValue
  1000598bc  mov     x25, x0
  1000598c0  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000598c4  mov     w2, #0
  1000598c8  mov     x1, x28
  1000598cc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000598d0  mov     x29, x29
  1000598d4  bl      _objc_retainAutoreleasedReturnValue
  1000598d8  mov     x26, x0
  1000598dc  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000598e0  mov     w2, #0
  1000598e4  mov     x1, x28
  1000598e8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000598ec  mov     x29, x29
  1000598f0  bl      _objc_retainAutoreleasedReturnValue
  1000598f4  mov     x27, x0
  1000598f8  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  1000598fc  mov     w2, #0
  100059900  mov     x1, x28
  100059904  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  100059908  mov     x29, x29
  10005990c  bl      _objc_retainAutoreleasedReturnValue
  100059910  mov     x28, x0
  100059914  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100059918  fmov    d0, #0.25000000
  10005991c  mov     x1, x24
  100059920  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:0.25]
  100059924  mov     x29, x29
  100059928  bl      _objc_retainAutoreleasedReturnValue
  10005992c  mov     x24, x0
  100059930  stp     x24, xzr, [sp, #0x20]
  100059934  stp     x27, x28, [sp, #0x10]
  100059938  stp     x25, x26, [sp]
  10005993c  adrp    x2, #0x1003bd000
  100059940  add     x2, x2, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  100059944  mov     x0, x19
  100059948  mov     x1, x22
  10005994c  mov     x3, x23
  100059950  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_WEAPON_DATA" AndData:[[[self weaponManager] currentWeapon] name]]
  100059954  mov     x0, x24
  100059958  bl      _objc_release
  10005995c  mov     x0, x28
  100059960  bl      _objc_release
  100059964  mov     x0, x27
  100059968  bl      _objc_release
  10005996c  mov     x0, x26
  100059970  bl      _objc_release
  100059974  mov     x0, x25
  100059978  bl      _objc_release
  10005997c  mov     x0, x23
  100059980  bl      _objc_release
  100059984  mov     x0, x20
  100059988  bl      _objc_release
  10005998c  ldr     x0, [sp, #0x38]
  100059990  sub     sp, x29, #0x50
  100059994  ldp     x29, x30, [sp, #0x50]
  100059998  ldp     x20, x19, [sp, #0x40]
  10005999c  ldp     x22, x21, [sp, #0x30]
  1000599a0  ldp     x24, x23, [sp, #0x20]
  1000599a4  ldp     x26, x25, [sp, #0x10]
  1000599a8  ldp     x28, x27, [sp], #0x60
  1000599ac  b       _objc_release
  1000599b0  b       loc_1000599b8
  1000599b4  b       loc_1000599b8
loc_1000599b8:
  1000599b8  mov     x19, x0
  1000599bc  mov     x0, x20
  1000599c0  b       loc_100059a3c
  1000599c4  mov     x19, x0
  1000599c8  b       loc_100059a38
  1000599cc  mov     x19, x0
  1000599d0  b       loc_100059a30
  1000599d4  mov     x19, x0
  1000599d8  b       loc_100059a28
  1000599dc  mov     x19, x0
  1000599e0  b       loc_100059a20
  1000599e4  mov     x19, x0
  1000599e8  b       loc_100059a18
  1000599ec  mov     x19, x0
  1000599f0  b       loc_100059a10
  1000599f4  mov     x19, x0
  1000599f8  b       loc_100059a08
  1000599fc  mov     x19, x0
  100059a00  mov     x0, x24
  100059a04  bl      _objc_release
loc_100059a08:
  100059a08  mov     x0, x28
  100059a0c  bl      _objc_release
loc_100059a10:
  100059a10  mov     x0, x27
  100059a14  bl      _objc_release
loc_100059a18:
  100059a18  mov     x0, x26
  100059a1c  bl      _objc_release
loc_100059a20:
  100059a20  mov     x0, x25
  100059a24  bl      _objc_release
loc_100059a28:
  100059a28  mov     x0, x23
  100059a2c  bl      _objc_release
loc_100059a30:
  100059a30  mov     x0, x20
  100059a34  bl      _objc_release
loc_100059a38:
  100059a38  ldr     x0, [sp, #0x38]
loc_100059a3c:
  100059a3c  bl      _objc_release
  100059a40  mov     x0, x19
  100059a44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController updateWeapons]
; address 0x100059a48  size 264  kind objc
; ======================================================================
  100059a48  stp     d9, d8, [sp, #-0x40]!
  100059a4c  stp     x22, x21, [sp, #0x10]
  100059a50  stp     x20, x19, [sp, #0x20]
  100059a54  stp     x29, x30, [sp, #0x30]
  100059a58  add     x29, sp, #0x30
  100059a5c  mov     x19, x0
  100059a60  adrp    x8, #0x100417000
  100059a64  nop
  100059a68  ldr     x1, [x8, #0xce0]
  100059a6c  bl      _objc_msgSend                            ; [self weaponTouchArea]
  100059a70  mov     x29, x29
  100059a74  bl      _objc_retainAutoreleasedReturnValue
  100059a78  mov     x21, x0
  100059a7c  adrp    x8, #0x100419000
  100059a80  nop
  100059a84  ldr     x20, [x8, #0x68]
  100059a88  adrp    x8, #0x100181000
  100059a8c  ldr     s8, [x8, #0xbf8]                         ; s8 = 0.00999999978
  100059a90  mov     x1, x20
  100059a94  mov     v0.16b, v8.16b
  100059a98  bl      _objc_msgSend                            ; [[self weaponTouchArea] update:0.01]
  100059a9c  mov     x0, x21
  100059aa0  bl      _objc_release
  100059aa4  adrp    x8, #0x100416000
  100059aa8  nop
  100059aac  ldr     x1, [x8, #0xc88]
  100059ab0  mov     x0, x19
  100059ab4  bl      _objc_msgSend                            ; [self weaponManager]
  100059ab8  mov     x29, x29
  100059abc  bl      _objc_retainAutoreleasedReturnValue
  100059ac0  mov     x21, x0
  100059ac4  mov     x1, x20
  100059ac8  mov     v0.16b, v8.16b
  100059acc  bl      _objc_msgSend                            ; [[self weaponManager] update:0.01]
  100059ad0  mov     x0, x21
  100059ad4  bl      _objc_release
  100059ad8  adrp    x8, #0x100417000
  100059adc  nop
  100059ae0  ldr     x1, [x8, #0xa58]
  100059ae4  mov     x0, x19
  100059ae8  bl      _objc_msgSend                            ; [self weaponButton]
  100059aec  mov     x29, x29
  100059af0  bl      _objc_retainAutoreleasedReturnValue
  100059af4  mov     x21, x0
  100059af8  mov     x1, x20
  100059afc  mov     v0.16b, v8.16b
  100059b00  bl      _objc_msgSend                            ; [[self weaponButton] update:0.01]
  100059b04  mov     x0, x21
  100059b08  bl      _objc_release
  100059b0c  adrp    x8, #0x100418000
  100059b10  nop
  100059b14  ldr     x1, [x8, #0xfe8]
  100059b18  mov     w2, #1
  100059b1c  mov     x0, x19
  100059b20  ldp     x29, x30, [sp, #0x30]
  100059b24  ldp     x20, x19, [sp, #0x20]
  100059b28  ldp     x22, x21, [sp, #0x10]
  100059b2c  ldp     d9, d8, [sp], #0x40
  100059b30  b       _objc_msgSend                            ; [self updateScoreViewWithAnimation:1]
  100059b34  b       loc_100059b3c
  100059b38  b       loc_100059b3c
loc_100059b3c:
  100059b3c  mov     x19, x0
  100059b40  mov     x0, x21
  100059b44  bl      _objc_release
  100059b48  mov     x0, x19
  100059b4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController update]
; address 0x100059b50  size 1464  kind objc
; ======================================================================
  100059b50  stp     d9, d8, [sp, #-0x70]!
  100059b54  stp     x28, x27, [sp, #0x10]
  100059b58  stp     x26, x25, [sp, #0x20]
  100059b5c  stp     x24, x23, [sp, #0x30]
  100059b60  stp     x22, x21, [sp, #0x40]
  100059b64  stp     x20, x19, [sp, #0x50]
  100059b68  stp     x29, x30, [sp, #0x60]
  100059b6c  add     x29, sp, #0x60
  100059b70  sub     sp, sp, #0xd0
  100059b74  mov     x19, x0
  100059b78  adrp    x25, #0x1003b0000
  100059b7c  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100059b80  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  100059b84  stur    x25, [x29, #-0x68]
  100059b88  adrp    x8, #0x10041e000
  100059b8c  ldr     x0, [x8, #0xc8]                          ; class ADOpenerGameplayViewController
  100059b90  adrp    x8, #0x100417000
  100059b94  nop
  100059b98  ldr     x1, [x8, #0x2e0]
  100059b9c  bl      _objc_msgSend                            ; [ADOpenerGameplayViewController class]
  100059ba0  mov     x2, x0
  100059ba4  adrp    x8, #0x100417000
  100059ba8  nop
  100059bac  ldr     x1, [x8, #0x3b8]
  100059bb0  mov     x0, x19
  100059bb4  bl      _objc_msgSend                            ; [self isKindOfClass:[ADOpenerGameplayViewController class]]
  100059bb8  tbnz    w0, #0, loc_100059c00                    ; if (([self isKindOfClass:[ADOpenerGameplayViewController class]] & 1))
  100059bbc  adrp    x8, #0x10041e000
  100059bc0  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  100059bc4  adrp    x8, #0x100418000
  100059bc8  nop
  100059bcc  ldr     x1, [x8, #0xf58]
  100059bd0  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  100059bd4  mov     x29, x29
  100059bd8  bl      _objc_retainAutoreleasedReturnValue
  100059bdc  mov     x20, x0
  100059be0  adrp    x8, #0x100419000
  100059be4  nop
  100059be8  ldr     x1, [x8, #0x68]
  100059bec  adrp    x8, #0x100181000
  100059bf0  ldr     s0, [x8, #0xbfc]                         ; s0 = 0.0500000007
  100059bf4  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] update:0.05]
  100059bf8  mov     x0, x20
  100059bfc  bl      _objc_release
loc_100059c00:
  100059c00  adrp    x26, #0x10041d000
  100059c04  ldr     x0, [x26, #0xef0]                        ; class ADGameParameters
  100059c08  adrp    x8, #0x100416000
  100059c0c  nop
  100059c10  ldr     x20, [x8, #0xc00]
  100059c14  mov     x1, x20
  100059c18  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100059c1c  mov     x29, x29
  100059c20  bl      _objc_retainAutoreleasedReturnValue
  100059c24  mov     x22, x0
  100059c28  adrp    x8, #0x100417000
  100059c2c  nop
  100059c30  ldr     x21, [x8, #0xc80]
  100059c34  mov     x1, x21
  100059c38  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  100059c3c  mov     x23, x0
  100059c40  mov     x0, x22
  100059c44  bl      _objc_release
  100059c48  cmp     w23, #1
  100059c4c  b.ne    loc_100059cc8                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 1)
  100059c50  adrp    x23, #0x10041e000
  100059c54  ldr     x0, [x23, #0x210]                        ; class ADMotionManager
  100059c58  adrp    x8, #0x100416000
  100059c5c  nop
  100059c60  ldr     x21, [x8, #0xac0]
  100059c64  mov     x1, x21
  100059c68  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  100059c6c  mov     x29, x29
  100059c70  bl      _objc_retainAutoreleasedReturnValue
  100059c74  mov     x22, x0
  100059c78  adrp    x8, #0x100419000
  100059c7c  nop
  100059c80  ldr     x1, [x8, #0x70]
  100059c84  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] getYawDifference]
  100059c88  mov     v8.16b, v0.16b
  100059c8c  mov     x0, x22
  100059c90  bl      _objc_release
  100059c94  ldr     x0, [x23, #0x210]                        ; class ADMotionManager
  100059c98  mov     x1, x21
  100059c9c  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  100059ca0  mov     x29, x29
  100059ca4  bl      _objc_retainAutoreleasedReturnValue
  100059ca8  mov     x21, x0
  100059cac  adrp    x8, #0x100419000
  100059cb0  nop
  100059cb4  ldr     x1, [x8, #0x78]
  100059cb8  mov     v0.16b, v8.16b
  100059cbc  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] setLastGyroAngle:[[ADMotionManager sharedInstance] getYawDifference]]
  100059cc0  b       loc_100059d6c
  100059cc4  b       loc_10005a084
loc_100059cc8:
  100059cc8  ldr     x0, [x26, #0xef0]                        ; class ADGameParameters
  100059ccc  mov     x1, x20
  100059cd0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100059cd4  mov     x29, x29
  100059cd8  bl      _objc_retainAutoreleasedReturnValue
  100059cdc  mov     x22, x0
  100059ce0  mov     x1, x21
  100059ce4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  100059ce8  mov     x21, x0
  100059cec  mov     x0, x22
  100059cf0  bl      _objc_release
  100059cf4  cmp     w21, #3
  100059cf8  b.ne    loc_100059d74                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  100059cfc  adrp    x23, #0x10041e000
  100059d00  ldr     x0, [x23, #0x210]                        ; class ADMotionManager
  100059d04  adrp    x8, #0x100416000
  100059d08  nop
  100059d0c  ldr     x21, [x8, #0xac0]
  100059d10  mov     x1, x21
  100059d14  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  100059d18  mov     x29, x29
  100059d1c  bl      _objc_retainAutoreleasedReturnValue
  100059d20  mov     x22, x0
  100059d24  adrp    x8, #0x100419000
  100059d28  nop
  100059d2c  ldr     x1, [x8, #0x80]
  100059d30  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] getTiltAngle]
  100059d34  mov     v8.16b, v0.16b
  100059d38  mov     x0, x22
  100059d3c  bl      _objc_release
  100059d40  ldr     x0, [x23, #0x210]                        ; class ADMotionManager
  100059d44  mov     x1, x21
  100059d48  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  100059d4c  mov     x29, x29
  100059d50  bl      _objc_retainAutoreleasedReturnValue
  100059d54  mov     x21, x0
  100059d58  adrp    x8, #0x100419000
  100059d5c  nop
  100059d60  ldr     x1, [x8, #0x88]
  100059d64  mov     v0.16b, v8.16b
  100059d68  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] setLastTiltAngle:[[ADMotionManager sharedInstance] getTiltAngle]]
loc_100059d6c:
  100059d6c  mov     x0, x21
  100059d70  bl      _objc_release
loc_100059d74:
  100059d74  stp     xzr, xzr, [sp, #0x38]
  100059d78  stp     xzr, xzr, [sp, #0x28]
  100059d7c  stp     xzr, xzr, [sp, #0x18]
  100059d80  stp     xzr, xzr, [sp, #8]
  100059d84  adrp    x8, #0x100417000
  100059d88  nop
  100059d8c  ldr     x1, [x8, #0xcd0]
  100059d90  mov     x0, x19
  100059d94  bl      _objc_msgSend                            ; [self infiniteScrollViews]
  100059d98  mov     x29, x29
  100059d9c  bl      _objc_retainAutoreleasedReturnValue
  100059da0  mov     x21, x0
  100059da4  adrp    x8, #0x100416000
  100059da8  nop
  100059dac  ldr     x22, [x8, #0xe00]
  100059db0  add     x2, sp, #8
  100059db4  add     x3, sp, #0x48
  100059db8  mov     w4, #0x10
  100059dbc  mov     x1, x22
  100059dc0  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100059dc4  mov     x23, x0
  100059dc8  cbz     x23, loc_100059e38                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100059dcc  ldr     x8, [sp, #0x18]
  100059dd0  ldr     x27, [x8]
  100059dd4  adrp    x8, #0x100417000
  100059dd8  add     x8, x8, #0x888                           ; &@selector(update)
  100059ddc  ldr     x24, [x8]
loc_100059de0:
  100059de0  mov     x28, #0
loc_100059de4:
  100059de4  ldr     x8, [sp, #0x18]
  100059de8  ldr     x8, [x8]
  100059dec  cmp     x8, x27
  100059df0  b.eq    loc_100059dfc                            ; if (x8 == x27)
  100059df4  mov     x0, x21
  100059df8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self infiniteScrollViews])
loc_100059dfc:
  100059dfc  ldr     x8, [sp, #0x10]
  100059e00  ldr     x0, [x8, x28, lsl #3]
  100059e04  mov     x1, x24
  100059e08  bl      _objc_msgSend                            ; [x0 update]
  100059e0c  add     x28, x28, #1
  100059e10  cmp     x28, x23
  100059e14  b.lo    loc_100059de4                            ; if ((x28 + 1) <u [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100059e18  add     x2, sp, #8
  100059e1c  add     x3, sp, #0x48
  100059e20  mov     w4, #0x10
  100059e24  mov     x0, x21
  100059e28  mov     x1, x22
  100059e2c  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100059e30  mov     x23, x0
  100059e34  cbnz    x23, loc_100059de0                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100059e38:
  100059e38  mov     x0, x21
  100059e3c  bl      _objc_release
  100059e40  adrp    x8, #0x10041e000
  100059e44  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100059e48  adrp    x8, #0x100417000
  100059e4c  nop
  100059e50  ldr     x1, [x8, #0xaa8]
  100059e54  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100059e58  mov     x29, x29
  100059e5c  bl      _objc_retainAutoreleasedReturnValue
  100059e60  mov     x22, x0
  100059e64  adrp    x8, #0x100419000
  100059e68  nop
  100059e6c  ldr     x21, [x8, #0x68]
  100059e70  adrp    x8, #0x100181000
  100059e74  ldr     s8, [x8, #0xbfc]                         ; s8 = 0.0500000007
  100059e78  mov     x1, x21
  100059e7c  mov     v0.16b, v8.16b
  100059e80  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] update:0.05]
  100059e84  mov     x0, x22
  100059e88  bl      _objc_release
  100059e8c  adrp    x8, #0x100419000
  100059e90  nop
  100059e94  ldr     x1, [x8, #0x90]
  100059e98  mov     x0, x19
  100059e9c  bl      _objc_msgSend                            ; [self player]
  100059ea0  mov     x29, x29
  100059ea4  bl      _objc_retainAutoreleasedReturnValue
  100059ea8  mov     x22, x0
  100059eac  mov     x1, x21
  100059eb0  mov     v0.16b, v8.16b
  100059eb4  bl      _objc_msgSend                            ; [[self player] update:0.05]
  100059eb8  mov     x0, x22
  100059ebc  bl      _objc_release
  100059ec0  adrp    x8, #0x10041f000
  100059ec4  ldrsw   x8, [x8, #0xaf4]                         ; ivar offset ADGameplayViewController.accessibleGameView (+0x188)
  100059ec8  ldr     x0, [x19, x8]                            ; x0 = self->accessibleGameView
  100059ecc  cbz     x0, loc_100059edc                        ; if (self->accessibleGameView == 0)
  100059ed0  mov     x1, x21
  100059ed4  mov     v0.16b, v8.16b
  100059ed8  bl      _objc_msgSend                            ; [self->accessibleGameView update:0.05]
loc_100059edc:
  100059edc  ldr     x0, [x26, #0xef0]                        ; class ADGameParameters
  100059ee0  mov     x1, x20
  100059ee4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100059ee8  mov     x29, x29
  100059eec  bl      _objc_retainAutoreleasedReturnValue
  100059ef0  mov     x20, x0
  100059ef4  adrp    x8, #0x100418000
  100059ef8  nop
  100059efc  ldr     x1, [x8, #0xf50]
  100059f00  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] debugMapVisible]
  100059f04  mov     x21, x0
  100059f08  mov     x0, x20
  100059f0c  bl      _objc_release
  100059f10  cbz     w21, loc_10005a038                       ; if ([[ADGameParameters sharedParameters] debugMapVisible] == 0)
  100059f14  adrp    x8, #0x10041f000
  100059f18  ldrsw   x26, [x8, #0xaec]                        ; ivar offset ADGameplayViewController.debugMap (+0x158)
  100059f1c  ldr     x0, [x19, x26]                           ; x0 = self->debugMap
  100059f20  adrp    x8, #0x100417000
  100059f24  nop
  100059f28  ldr     x1, [x8, #0x888]
  100059f2c  bl      _objc_msgSend                            ; [self->debugMap update]
  100059f30  ldr     x22, [x19, x26]                          ; x22 = self->debugMap
  100059f34  adrp    x8, #0x100416000
  100059f38  nop
  100059f3c  ldr     x21, [x8, #0xc88]
  100059f40  mov     x0, x19
  100059f44  mov     x1, x21
  100059f48  bl      _objc_msgSend                            ; [self weaponManager]
  100059f4c  mov     x29, x29
  100059f50  bl      _objc_retainAutoreleasedReturnValue
  100059f54  mov     x20, x0
  100059f58  adrp    x8, #0x100417000
  100059f5c  nop
  100059f60  ldr     x1, [x8, #0xc50]
  100059f64  bl      _objc_msgSend                            ; [[self weaponManager] currentWeapon]
  100059f68  mov     x29, x29
  100059f6c  bl      _objc_retainAutoreleasedReturnValue
  100059f70  mov     x23, x0
  100059f74  adrp    x8, #0x10041d000
  100059f78  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100059f7c  adrp    x8, #0x100417000
  100059f80  nop
  100059f84  ldr     x1, [x8, #0x4f0]
  100059f88  bl      _objc_msgSend                            ; [S3DEngine engine]
  100059f8c  mov     x29, x29
  100059f90  bl      _objc_retainAutoreleasedReturnValue
  100059f94  mov     x24, x0
  100059f98  adrp    x8, #0x100419000
  100059f9c  nop
  100059fa0  ldr     x1, [x8, #0x98]
  100059fa4  bl      _objc_msgSend                            ; [[S3DEngine engine] headOrientation]
  100059fa8  adrp    x8, #0x100419000
  100059fac  nop
  100059fb0  ldr     x1, [x8, #0xa0]
  100059fb4  mov     x0, x22
  100059fb8  mov     x2, x23
  100059fbc  bl      _objc_msgSend                            ; [self->debugMap updateWeaponRange:[[self weaponManager] currentWeapon] angle:[[S3DEngine engine] headOrientation]]
  100059fc0  mov     x0, x24
  100059fc4  bl      _objc_release
  100059fc8  mov     x0, x23
  100059fcc  bl      _objc_release
  100059fd0  mov     x0, x20
  100059fd4  bl      _objc_release
  100059fd8  ldr     x22, [x19, x26]                          ; x22 = self->debugMap
  100059fdc  mov     x0, x19
  100059fe0  mov     x1, x21
  100059fe4  bl      _objc_msgSend                            ; [self weaponManager]
  100059fe8  mov     x29, x29
  100059fec  bl      _objc_retainAutoreleasedReturnValue
  100059ff0  mov     x20, x0
  100059ff4  adrp    x8, #0x100419000
  100059ff8  nop
  100059ffc  ldr     x1, [x8, #0xa8]
  10005a000  bl      _objc_msgSend                            ; [[self weaponManager] projectiles]
  10005a004  mov     x29, x29
  10005a008  bl      _objc_retainAutoreleasedReturnValue
  10005a00c  mov     x21, x0
  10005a010  adrp    x8, #0x100419000
  10005a014  nop
  10005a018  ldr     x1, [x8, #0xb0]
  10005a01c  mov     x0, x22
  10005a020  mov     x2, x21
  10005a024  bl      _objc_msgSend                            ; [self->debugMap updateProjectiles:[[self weaponManager] projectiles]]
  10005a028  mov     x0, x21
  10005a02c  bl      _objc_release
  10005a030  mov     x0, x20
  10005a034  bl      _objc_release
loc_10005a038:
  10005a038  adrp    x8, #0x100418000
  10005a03c  nop
  10005a040  ldr     x1, [x8, #0xfe8]
  10005a044  mov     w2, #1
  10005a048  mov     x0, x19
  10005a04c  bl      _objc_msgSend                            ; [self updateScoreViewWithAnimation:1]
  10005a050  ldur    x8, [x29, #-0x68]
  10005a054  sub     x8, x25, x8
  10005a058  cbnz    x8, loc_10005a080                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10005a05c  sub     sp, x29, #0x60
  10005a060  ldp     x29, x30, [sp, #0x60]
  10005a064  ldp     x20, x19, [sp, #0x50]
  10005a068  ldp     x22, x21, [sp, #0x40]
  10005a06c  ldp     x24, x23, [sp, #0x30]
  10005a070  ldp     x26, x25, [sp, #0x20]
  10005a074  ldp     x28, x27, [sp, #0x10]
  10005a078  ldp     d9, d8, [sp], #0x70
  10005a07c  ret
loc_10005a080:
  10005a080  bl      ___stack_chk_fail                        ; stack_chk_fail([self updateScoreViewWithAnimation:1])
loc_10005a084:
  10005a084  mov     x19, x0
  10005a088  mov     x0, x21
loc_10005a08c:
  10005a08c  bl      _objc_release
  10005a090  mov     x0, x19
  10005a094  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005a098  b       loc_10005a084
  10005a09c  b       loc_10005a0f8
  10005a0a0  b       loc_10005a084
  10005a0a4  b       loc_10005a0f8
  10005a0a8  b       loc_10005a0f8
  10005a0ac  b       loc_10005a0dc
  10005a0b0  mov     x19, x0
  10005a0b4  mov     x0, x24
  10005a0b8  bl      _objc_release
  10005a0bc  b       loc_10005a0d4
  10005a0c0  b       loc_10005a0dc
  10005a0c4  b       loc_10005a0f8
  10005a0c8  b       loc_10005a0f8
  10005a0cc  b       loc_10005a0dc
  10005a0d0  mov     x19, x0
loc_10005a0d4:
  10005a0d4  mov     x0, x23
  10005a0d8  b       loc_10005a0ec
loc_10005a0dc:
  10005a0dc  mov     x19, x0
  10005a0e0  b       loc_10005a0f0
  10005a0e4  mov     x19, x0
  10005a0e8  mov     x0, x21
loc_10005a0ec:
  10005a0ec  bl      _objc_release
loc_10005a0f0:
  10005a0f0  mov     x0, x20
  10005a0f4  b       loc_10005a08c
loc_10005a0f8:
  10005a0f8  mov     x19, x0
  10005a0fc  mov     x0, x22
  10005a100  b       loc_10005a08c
  10005a104  b       loc_10005a084

; ======================================================================
; -[ADGameplayViewController motionEnded:withEvent:]
; address 0x10005a108  size 244  kind objc
; ======================================================================
  10005a108  stp     x22, x21, [sp, #-0x30]!
  10005a10c  stp     x20, x19, [sp, #0x10]
  10005a110  stp     x29, x30, [sp, #0x20]
  10005a114  add     x29, sp, #0x20
  10005a118  mov     x20, x0
  10005a11c  mov     x0, x3
  10005a120  bl      _objc_retain
  10005a124  mov     x19, x0
  10005a128  adrp    x8, #0x10041d000
  10005a12c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10005a130  adrp    x8, #0x100416000
  10005a134  nop
  10005a138  ldr     x1, [x8, #0xc00]
  10005a13c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005a140  mov     x29, x29
  10005a144  bl      _objc_retainAutoreleasedReturnValue
  10005a148  mov     x21, x0
  10005a14c  adrp    x8, #0x100417000
  10005a150  nop
  10005a154  ldr     x1, [x8, #0xc90]
  10005a158  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  10005a15c  mov     x22, x0
  10005a160  mov     x0, x21
  10005a164  bl      _objc_release
  10005a168  tbnz    w22, #0, loc_10005a1c0                   ; if (([[ADGameParameters sharedParameters] buttonMode] & 1))
  10005a16c  adrp    x8, #0x100417000
  10005a170  nop
  10005a174  ldr     x1, [x8, #0x9a8]
  10005a178  mov     x0, x19
  10005a17c  bl      _objc_msgSend                            ; [arg2 type]
  10005a180  cmp     x0, #1
  10005a184  b.ne    loc_10005a1c0                            ; if ([arg2 type] != 1)
  10005a188  adrp    x8, #0x100416000
  10005a18c  nop
  10005a190  ldr     x1, [x8, #0xc88]
  10005a194  mov     x0, x20
  10005a198  bl      _objc_msgSend                            ; [self weaponManager]
  10005a19c  mov     x29, x29
  10005a1a0  bl      _objc_retainAutoreleasedReturnValue
  10005a1a4  mov     x21, x0
  10005a1a8  adrp    x8, #0x100417000
  10005a1ac  nop
  10005a1b0  ldr     x1, [x8, #0xc98]
  10005a1b4  bl      _objc_msgSend                            ; [[self weaponManager] shootWithMelee]
  10005a1b8  mov     x0, x21
  10005a1bc  bl      _objc_release
loc_10005a1c0:
  10005a1c0  mov     x0, x19
  10005a1c4  ldp     x29, x30, [sp, #0x20]
  10005a1c8  ldp     x20, x19, [sp, #0x10]
  10005a1cc  ldp     x22, x21, [sp], #0x30
  10005a1d0  b       _objc_release
  10005a1d4  mov     x20, x0
  10005a1d8  b       loc_10005a1ec
  10005a1dc  b       loc_10005a1e0
loc_10005a1e0:
  10005a1e0  mov     x20, x0
  10005a1e4  mov     x0, x21
  10005a1e8  bl      _objc_release
loc_10005a1ec:
  10005a1ec  mov     x0, x19
  10005a1f0  bl      _objc_release
  10005a1f4  mov     x0, x20
  10005a1f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController canBecomeFirstResponder]
; address 0x10005a1fc  size 8  kind objc
; ======================================================================
  10005a1fc  mov     w0, #1
  10005a200  ret

; ======================================================================
; -[ADGameplayViewController viewDidAppear:]
; address 0x10005a204  size 16  kind objc
; ======================================================================
  10005a204  adrp    x8, #0x100419000
  10005a208  nop
  10005a20c  ldr     x1, [x8, #0xb8]
  10005a210  b       _objc_msgSend                            ; [self becomeFirstResponder]

; ======================================================================
; -[ADGameplayViewController initButtonMode]
; address 0x10005a214  size 460  kind objc
; ======================================================================
  10005a214  stp     x28, x27, [sp, #-0x60]!
  10005a218  stp     x26, x25, [sp, #0x10]
  10005a21c  stp     x24, x23, [sp, #0x20]
  10005a220  stp     x22, x21, [sp, #0x30]
  10005a224  stp     x20, x19, [sp, #0x40]
  10005a228  stp     x29, x30, [sp, #0x50]
  10005a22c  add     x29, sp, #0x50
  10005a230  sub     sp, sp, #0xe0
  10005a234  mov     x19, x0
  10005a238  adrp    x8, #0x1003b0000
  10005a23c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10005a240  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10005a244  stur    x8, [x29, #-0x58]
  10005a248  stp     xzr, xzr, [sp, #0x48]
  10005a24c  stp     xzr, xzr, [sp, #0x38]
  10005a250  stp     xzr, xzr, [sp, #0x28]
  10005a254  stp     xzr, xzr, [sp, #0x18]
  10005a258  adrp    x8, #0x100418000
  10005a25c  nop
  10005a260  ldr     x1, [x8, #0x9e0]
  10005a264  bl      _objc_msgSend                            ; [self buttonsView]
  10005a268  mov     x29, x29
  10005a26c  bl      _objc_retainAutoreleasedReturnValue
  10005a270  mov     x21, x0
  10005a274  adrp    x8, #0x100417000
  10005a278  nop
  10005a27c  ldr     x1, [x8, #0x1c8]
  10005a280  bl      _objc_msgSend                            ; [[self buttonsView] subviews]
  10005a284  mov     x29, x29
  10005a288  bl      _objc_retainAutoreleasedReturnValue
  10005a28c  mov     x20, x0
  10005a290  mov     x0, x21
  10005a294  bl      _objc_release
  10005a298  adrp    x8, #0x100416000
  10005a29c  nop
  10005a2a0  ldr     x1, [x8, #0xe00]
  10005a2a4  str     x1, [sp, #0x10]
  10005a2a8  add     x2, sp, #0x18
  10005a2ac  add     x3, sp, #0x58
  10005a2b0  mov     w4, #0x10
  10005a2b4  mov     x0, x20
  10005a2b8  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10005a2bc  mov     x22, x0
  10005a2c0  cbz     x22, loc_10005a374                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10005a2c4  ldr     x8, [sp, #0x28]
  10005a2c8  ldr     x28, [x8]
  10005a2cc  adrp    x8, #0x100417000
  10005a2d0  nop
  10005a2d4  adrp    x9, #0x100417000
  10005a2d8  add     x9, x9, #0x3b8                           ; &@selector(isKindOfClass:)
  10005a2dc  ldr     x23, [x8, #0x2e0]
  10005a2e0  ldr     x24, [x9]
  10005a2e4  adrp    x8, #0x100417000
  10005a2e8  add     x8, x8, #0xc10                           ; &@selector(setGameplayViewController:)
  10005a2ec  ldr     x25, [x8]
  10005a2f0  adrp    x27, #0x10041e000
loc_10005a2f4:
  10005a2f4  mov     x21, #0
loc_10005a2f8:
  10005a2f8  ldr     x8, [sp, #0x28]
  10005a2fc  ldr     x8, [x8]
  10005a300  cmp     x8, x28
  10005a304  b.eq    loc_10005a310                            ; if (x8 == x28)
  10005a308  mov     x0, x20
  10005a30c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self buttonsView] subviews])
loc_10005a310:
  10005a310  ldr     x8, [sp, #0x20]
  10005a314  ldr     x26, [x8, x21, lsl #3]
  10005a318  ldr     x0, [x27, #0x200]                        ; class ADButtonWithSwipe
  10005a31c  mov     x1, x23
  10005a320  bl      _objc_msgSend                            ; [ADButtonWithSwipe class]
  10005a324  mov     x2, x0
  10005a328  mov     x0, x26
  10005a32c  mov     x1, x24
  10005a330  bl      _objc_msgSend                            ; [x0 isKindOfClass:[ADButtonWithSwipe class]]
  10005a334  cbz     w0, loc_10005a348                        ; if ([x0 isKindOfClass:[ADButtonWithSwipe class]] == 0)
  10005a338  mov     x0, x26
  10005a33c  mov     x1, x25
  10005a340  mov     x2, x19
  10005a344  bl      _objc_msgSend                            ; [x0 setGameplayViewController:self]
loc_10005a348:
  10005a348  add     x21, x21, #1
  10005a34c  cmp     x21, x22
  10005a350  b.lo    loc_10005a2f8                            ; if ((x21 + 1) <u [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10005a354  add     x2, sp, #0x18
  10005a358  add     x3, sp, #0x58
  10005a35c  mov     w4, #0x10
  10005a360  mov     x0, x20
  10005a364  ldr     x1, [sp, #0x10]
  10005a368  bl      _objc_msgSend                            ; [[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10005a36c  mov     x22, x0
  10005a370  cbnz    x22, loc_10005a2f4                       ; if ([[[self buttonsView] subviews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_10005a374:
  10005a374  mov     x0, x20
  10005a378  bl      _objc_release
  10005a37c  ldur    x8, [x29, #-0x58]
  10005a380  adrp    x9, #0x1003b0000
  10005a384  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10005a388  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10005a38c  sub     x8, x9, x8
  10005a390  cbnz    x8, loc_10005a3b4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10005a394  sub     sp, x29, #0x50
  10005a398  ldp     x29, x30, [sp, #0x50]
  10005a39c  ldp     x20, x19, [sp, #0x40]
  10005a3a0  ldp     x22, x21, [sp, #0x30]
  10005a3a4  ldp     x24, x23, [sp, #0x20]
  10005a3a8  ldp     x26, x25, [sp, #0x10]
  10005a3ac  ldp     x28, x27, [sp], #0x60
  10005a3b0  ret
loc_10005a3b4:
  10005a3b4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10005a3b8:
  10005a3b8  mov     x19, x0
  10005a3bc  mov     x0, x20
loc_10005a3c0:
  10005a3c0  bl      _objc_release
  10005a3c4  mov     x0, x19
  10005a3c8  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005a3cc  b       loc_10005a3b8
  10005a3d0  mov     x19, x0
  10005a3d4  mov     x0, x21
  10005a3d8  b       loc_10005a3c0
  10005a3dc  b       loc_10005a3b8

; ======================================================================
; -[ADGameplayViewController touchesMoveDetected:justStarted:]
; address 0x10005a3e0  size 872  kind objc
; ======================================================================
  10005a3e0  stp     d9, d8, [sp, #-0x70]!
  10005a3e4  stp     x28, x27, [sp, #0x10]
  10005a3e8  stp     x26, x25, [sp, #0x20]
  10005a3ec  stp     x24, x23, [sp, #0x30]
  10005a3f0  stp     x22, x21, [sp, #0x40]
  10005a3f4  stp     x20, x19, [sp, #0x50]
  10005a3f8  stp     x29, x30, [sp, #0x60]
  10005a3fc  add     x29, sp, #0x60
  10005a400  sub     sp, sp, #0x1a0
  10005a404  mov     x21, x2
  10005a408  mov     v8.16b, v0.16b
  10005a40c  mov     x19, x0
  10005a410  adrp    x8, #0x1003b0000
  10005a414  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10005a418  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10005a41c  stur    x8, [x29, #-0x68]
  10005a420  stp     xzr, xzr, [sp, #0x88]
  10005a424  stp     xzr, xzr, [sp, #0x78]
  10005a428  stp     xzr, xzr, [sp, #0x68]
  10005a42c  stp     xzr, xzr, [sp, #0x58]
  10005a430  adrp    x8, #0x100418000
  10005a434  nop
  10005a438  ldr     x1, [x8, #0x9e0]
  10005a43c  bl      _objc_msgSend                            ; [self buttonsView]
  10005a440  mov     x29, x29
  10005a444  bl      _objc_retainAutoreleasedReturnValue
  10005a448  mov     x20, x0
  10005a44c  adrp    x8, #0x100417000
  10005a450  nop
  10005a454  ldr     x1, [x8, #0x818]
  10005a458  bl      _objc_msgSend                            ; [[self buttonsView] superview]
  10005a45c  str     w21, [sp, #0xc]
  10005a460  mov     x29, x29
  10005a464  bl      _objc_retainAutoreleasedReturnValue
  10005a468  mov     x23, x0
  10005a46c  adrp    x8, #0x100417000
  10005a470  nop
  10005a474  ldr     x1, [x8, #0x1c8]
  10005a478  bl      _objc_msgSend                            ; [[[self buttonsView] superview] subviews]
  10005a47c  mov     x29, x29
  10005a480  bl      _objc_retainAutoreleasedReturnValue
  10005a484  mov     x22, x0
  10005a488  mov     x0, x23
  10005a48c  bl      _objc_release
  10005a490  mov     x0, x20
  10005a494  bl      _objc_release
  10005a498  adrp    x8, #0x100416000
  10005a49c  nop
  10005a4a0  ldr     x27, [x8, #0xe00]
  10005a4a4  str     x27, [sp, #0x10]
  10005a4a8  add     x2, sp, #0x58
  10005a4ac  sub     x3, x29, #0xe8
  10005a4b0  mov     w4, #0x10
  10005a4b4  mov     x0, x22
  10005a4b8  mov     x1, x27
  10005a4bc  bl      _objc_msgSend                            ; [[[[self buttonsView] superview] subviews] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xe8] count:16]
  10005a4c0  mov     x23, x0
  10005a4c4  cbz     x23, loc_10005a57c                       ; if ([[[[self buttonsView] superview] subviews] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xe8] count:16] == 0)
  10005a4c8  ldr     x8, [sp, #0x68]
  10005a4cc  ldr     x28, [x8]
  10005a4d0  adrp    x8, #0x100417000
  10005a4d4  nop
  10005a4d8  adrp    x9, #0x100417000
  10005a4dc  add     x9, x9, #0x3b8                           ; &@selector(isKindOfClass:)
  10005a4e0  ldr     x24, [x8, #0x2e0]
  10005a4e4  ldr     x25, [x9]
  10005a4e8  adrp    x8, #0x100419000
  10005a4ec  add     x8, x8, #0xc0                            ; &@selector(setHighlighted:)
  10005a4f0  ldr     x26, [x8]
  10005a4f4  adrp    x21, #0x10041e000
loc_10005a4f8:
  10005a4f8  mov     x20, #0
loc_10005a4fc:
  10005a4fc  ldr     x8, [sp, #0x68]
  10005a500  ldr     x8, [x8]
  10005a504  cmp     x8, x28
  10005a508  b.eq    loc_10005a514                            ; if (x8 == x28)
  10005a50c  mov     x0, x22
  10005a510  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[self buttonsView] superview] subviews])
loc_10005a514:
  10005a514  ldr     x8, [sp, #0x60]
  10005a518  ldr     x27, [x8, x20, lsl #3]
  10005a51c  ldr     x0, [x21, #0x218]                        ; class UIButton
  10005a520  mov     x1, x24
  10005a524  bl      _objc_msgSend                            ; [UIButton class]
  10005a528  mov     x2, x0
  10005a52c  mov     x0, x27
  10005a530  mov     x1, x25
  10005a534  bl      _objc_msgSend                            ; [x0 isKindOfClass:[UIButton class]]
  10005a538  cbz     w0, loc_10005a54c                        ; if ([x0 isKindOfClass:[UIButton class]] == 0)
  10005a53c  mov     w2, #0
  10005a540  mov     x0, x27
  10005a544  mov     x1, x26
  10005a548  bl      _objc_msgSend                            ; [x0 setHighlighted:0]
loc_10005a54c:
  10005a54c  add     x20, x20, #1
  10005a550  cmp     x20, x23
  10005a554  b.lo    loc_10005a4fc                            ; if ((x20 + 1) <u [[[[self buttonsView] superview] subviews] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xe8] count:16])
  10005a558  add     x2, sp, #0x58
  10005a55c  sub     x3, x29, #0xe8
  10005a560  mov     w4, #0x10
  10005a564  mov     x0, x22
  10005a568  ldr     x27, [sp, #0x10]
  10005a56c  mov     x1, x27
  10005a570  bl      _objc_msgSend                            ; [[[[self buttonsView] superview] subviews] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xe8] count:16]
  10005a574  mov     x23, x0
  10005a578  cbnz    x23, loc_10005a4f8                       ; if ([[[[self buttonsView] superview] subviews] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xe8] count:16] != 0)
loc_10005a57c:
  10005a57c  mov     x0, x22
  10005a580  bl      _objc_release
  10005a584  ldr     w8, [sp, #0xc]
  10005a588  cbz     w8, loc_10005a598                        ; if (arg2 == 0)
  10005a58c  adrp    x8, #0x10041f000
  10005a590  ldrsw   x8, [x8, #0xb04]                         ; ivar offset ADGameplayViewController.movementOnLastFrame (+0x160)
  10005a594  str     wzr, [x19, x8]                           ; self->movementOnLastFrame = 0
loc_10005a598:
  10005a598  adrp    x8, #0x10041d000
  10005a59c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10005a5a0  adrp    x8, #0x100416000
  10005a5a4  nop
  10005a5a8  ldr     x1, [x8, #0xc00]
  10005a5ac  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005a5b0  mov     x29, x29
  10005a5b4  bl      _objc_retainAutoreleasedReturnValue
  10005a5b8  mov     x21, x0
  10005a5bc  adrp    x8, #0x100418000
  10005a5c0  nop
  10005a5c4  ldr     x1, [x8, #0xd68]
  10005a5c8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] sensivity]
  10005a5cc  mov     v9.16b, v0.16b
  10005a5d0  mov     x0, x21
  10005a5d4  bl      _objc_release
  10005a5d8  stp     xzr, xzr, [sp, #0x48]
  10005a5dc  stp     xzr, xzr, [sp, #0x38]
  10005a5e0  stp     xzr, xzr, [sp, #0x28]
  10005a5e4  stp     xzr, xzr, [sp, #0x18]
  10005a5e8  adrp    x8, #0x100417000
  10005a5ec  nop
  10005a5f0  ldr     x1, [x8, #0xcd0]
  10005a5f4  mov     x0, x19
  10005a5f8  bl      _objc_msgSend                            ; [self infiniteScrollViews]
  10005a5fc  mov     x29, x29
  10005a600  bl      _objc_retainAutoreleasedReturnValue
  10005a604  mov     x21, x0
  10005a608  add     x2, sp, #0x18
  10005a60c  add     x3, sp, #0x98
  10005a610  mov     w4, #0x10
  10005a614  mov     x1, x27
  10005a618  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16]
  10005a61c  mov     x22, x0
  10005a620  fnmul   s8, s9, s8
  10005a624  cbz     x22, loc_10005a6a4                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16] == 0)
  10005a628  ldr     x8, [sp, #0x28]
  10005a62c  ldr     x24, [x8]
  10005a630  adrp    x8, #0x10041f000
  10005a634  ldrsw   x25, [x8, #0xb04]                        ; ivar offset ADGameplayViewController.movementOnLastFrame (+0x160)
  10005a638  adrp    x8, #0x100419000
  10005a63c  add     x8, x8, #0xc8                            ; &@selector(playerSwiped:)
  10005a640  ldr     x23, [x8]
loc_10005a644:
  10005a644  mov     x20, #0
loc_10005a648:
  10005a648  ldr     x8, [sp, #0x28]
  10005a64c  ldr     x8, [x8]
  10005a650  cmp     x8, x24
  10005a654  b.eq    loc_10005a660                            ; if (x8 == x24)
  10005a658  mov     x0, x21
  10005a65c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self infiniteScrollViews])
loc_10005a660:
  10005a660  ldr     x8, [sp, #0x20]
  10005a664  ldr     x0, [x8, x20, lsl #3]
  10005a668  ldr     s0, [x19, x25]                           ; s0 = self->movementOnLastFrame
  10005a66c  fsub    s0, s8, s0
  10005a670  mov     x1, x23
  10005a674  bl      _objc_msgSend                            ; [x0 playerSwiped:(-([[ADGameParameters sharedParameters] sensivity] * arg1) - self->movementOnLastFrame)]
  10005a678  add     x20, x20, #1
  10005a67c  cmp     x20, x22
  10005a680  b.lo    loc_10005a648                            ; if ((x20 + 1) <u [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16])
  10005a684  add     x2, sp, #0x18
  10005a688  add     x3, sp, #0x98
  10005a68c  mov     w4, #0x10
  10005a690  mov     x0, x21
  10005a694  mov     x1, x27
  10005a698  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16]
  10005a69c  mov     x22, x0
  10005a6a0  cbnz    x22, loc_10005a644                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16] != 0)
loc_10005a6a4:
  10005a6a4  mov     x0, x21
  10005a6a8  bl      _objc_release
  10005a6ac  adrp    x8, #0x10041f000
  10005a6b0  ldrsw   x8, [x8, #0xb04]                         ; ivar offset ADGameplayViewController.movementOnLastFrame (+0x160)
  10005a6b4  str     s8, [x19, x8]                            ; self->movementOnLastFrame = -([[ADGameParameters sharedParameters] sensivity] * arg1)
  10005a6b8  ldur    x8, [x29, #-0x68]
  10005a6bc  adrp    x9, #0x1003b0000
  10005a6c0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10005a6c4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10005a6c8  sub     x8, x9, x8
  10005a6cc  cbnz    x8, loc_10005a6f4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10005a6d0  sub     sp, x29, #0x60
  10005a6d4  ldp     x29, x30, [sp, #0x60]
  10005a6d8  ldp     x20, x19, [sp, #0x50]
  10005a6dc  ldp     x22, x21, [sp, #0x40]
  10005a6e0  ldp     x24, x23, [sp, #0x30]
  10005a6e4  ldp     x26, x25, [sp, #0x20]
  10005a6e8  ldp     x28, x27, [sp, #0x10]
  10005a6ec  ldp     d9, d8, [sp], #0x70
  10005a6f0  ret
loc_10005a6f4:
  10005a6f4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10005a6f8:
  10005a6f8  mov     x19, x0
  10005a6fc  mov     x0, x22
  10005a700  b       loc_10005a70c
loc_10005a704:
  10005a704  mov     x19, x0
  10005a708  mov     x0, x21
loc_10005a70c:
  10005a70c  bl      _objc_release
  10005a710  mov     x0, x19
  10005a714  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005a718  b       loc_10005a6f8
  10005a71c  b       loc_10005a704
  10005a720  mov     x19, x0
  10005a724  b       loc_10005a734
  10005a728  mov     x19, x0
  10005a72c  mov     x0, x23
  10005a730  bl      _objc_release
loc_10005a734:
  10005a734  mov     x0, x20
  10005a738  b       loc_10005a70c
  10005a73c  b       loc_10005a6f8
  10005a740  b       loc_10005a704
  10005a744  b       loc_10005a704

; ======================================================================
; -[ADGameplayViewController panDetected:]
; address 0x10005a748  size 292  kind objc
; ======================================================================
  10005a748  stp     d9, d8, [sp, #-0x40]!
  10005a74c  stp     x22, x21, [sp, #0x10]
  10005a750  stp     x20, x19, [sp, #0x20]
  10005a754  stp     x29, x30, [sp, #0x30]
  10005a758  add     x29, sp, #0x30
  10005a75c  mov     x20, x0
  10005a760  mov     x0, x2
  10005a764  bl      _objc_retain
  10005a768  mov     x19, x0
  10005a76c  adrp    x8, #0x10041d000
  10005a770  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10005a774  adrp    x8, #0x100416000
  10005a778  nop
  10005a77c  ldr     x1, [x8, #0xc00]
  10005a780  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005a784  mov     x29, x29
  10005a788  bl      _objc_retainAutoreleasedReturnValue
  10005a78c  mov     x21, x0
  10005a790  adrp    x8, #0x100417000
  10005a794  nop
  10005a798  ldr     x1, [x8, #0xc80]
  10005a79c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10005a7a0  mov     x22, x0
  10005a7a4  mov     x0, x21
  10005a7a8  bl      _objc_release
  10005a7ac  cmp     w22, #2
  10005a7b0  b.ne    loc_10005a82c                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  10005a7b4  adrp    x8, #0x100416000
  10005a7b8  nop
  10005a7bc  ldr     x1, [x8, #0xf18]
  10005a7c0  mov     x0, x20
  10005a7c4  bl      _objc_msgSend                            ; [self view]
  10005a7c8  mov     x29, x29
  10005a7cc  bl      _objc_retainAutoreleasedReturnValue
  10005a7d0  mov     x21, x0
  10005a7d4  adrp    x8, #0x100419000
  10005a7d8  nop
  10005a7dc  ldr     x1, [x8, #0xd0]
  10005a7e0  mov     x0, x19
  10005a7e4  mov     x2, x21
  10005a7e8  bl      _objc_msgSend                            ; [arg1 translationInView:[self view]]
  10005a7ec  mov     v8.16b, v0.16b
  10005a7f0  adrp    x8, #0x100416000
  10005a7f4  nop
  10005a7f8  ldr     x1, [x8, #0xc60]
  10005a7fc  mov     x0, x19
  10005a800  bl      _objc_msgSend                            ; [arg1 state]
  10005a804  fcvt    s0, d8
  10005a808  cmp     x0, #1
  10005a80c  cset    w2, eq
  10005a810  adrp    x8, #0x100419000
  10005a814  nop
  10005a818  ldr     x1, [x8, #0xd8]
  10005a81c  mov     x0, x20
  10005a820  bl      _objc_msgSend                            ; [self touchesMoveDetected:[arg1 translationInView:[self view]].0 justStarted:([arg1 state] == 1)]
  10005a824  mov     x0, x21
  10005a828  bl      _objc_release
loc_10005a82c:
  10005a82c  mov     x0, x19
  10005a830  ldp     x29, x30, [sp, #0x30]
  10005a834  ldp     x20, x19, [sp, #0x20]
  10005a838  ldp     x22, x21, [sp, #0x10]
  10005a83c  ldp     d9, d8, [sp], #0x40
  10005a840  b       _objc_release
  10005a844  mov     x20, x0
  10005a848  b       loc_10005a85c
  10005a84c  b       loc_10005a850
loc_10005a850:
  10005a850  mov     x20, x0
  10005a854  mov     x0, x21
  10005a858  bl      _objc_release
loc_10005a85c:
  10005a85c  mov     x0, x19
  10005a860  bl      _objc_release
  10005a864  mov     x0, x20
  10005a868  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController switchWeaponButtonPressed:]
; address 0x10005a86c  size 100  kind objc
; ======================================================================
  10005a86c  stp     x20, x19, [sp, #-0x20]!
  10005a870  stp     x29, x30, [sp, #0x10]
  10005a874  add     x29, sp, #0x10
  10005a878  adrp    x8, #0x100416000
  10005a87c  nop
  10005a880  ldr     x1, [x8, #0xc88]
  10005a884  bl      _objc_msgSend                            ; [self weaponManager]
  10005a888  mov     x29, x29
  10005a88c  bl      _objc_retainAutoreleasedReturnValue
  10005a890  mov     x19, x0
  10005a894  adrp    x8, #0x100418000
  10005a898  nop
  10005a89c  ldr     x1, [x8, #0x720]
  10005a8a0  bl      _objc_msgSend                            ; [[self weaponManager] selectNextWeapon]
  10005a8a4  mov     x0, x19
  10005a8a8  ldp     x29, x30, [sp, #0x10]
  10005a8ac  ldp     x20, x19, [sp], #0x20
  10005a8b0  b       _objc_release
  10005a8b4  mov     x20, x0
  10005a8b8  b       loc_10005a8c8
  10005a8bc  mov     x20, x0
  10005a8c0  mov     x0, x19
  10005a8c4  bl      _objc_release
loc_10005a8c8:
  10005a8c8  mov     x0, x20
  10005a8cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController reloadButtonPressed:]
; address 0x10005a8d0  size 100  kind objc
; ======================================================================
  10005a8d0  stp     x20, x19, [sp, #-0x20]!
  10005a8d4  stp     x29, x30, [sp, #0x10]
  10005a8d8  add     x29, sp, #0x10
  10005a8dc  adrp    x8, #0x100416000
  10005a8e0  nop
  10005a8e4  ldr     x1, [x8, #0xc88]
  10005a8e8  bl      _objc_msgSend                            ; [self weaponManager]
  10005a8ec  mov     x29, x29
  10005a8f0  bl      _objc_retainAutoreleasedReturnValue
  10005a8f4  mov     x19, x0
  10005a8f8  adrp    x8, #0x100418000
  10005a8fc  nop
  10005a900  ldr     x1, [x8, #0x728]
  10005a904  bl      _objc_msgSend                            ; [[self weaponManager] reloadGestureDown]
  10005a908  mov     x0, x19
  10005a90c  ldp     x29, x30, [sp, #0x10]
  10005a910  ldp     x20, x19, [sp], #0x20
  10005a914  b       _objc_release
  10005a918  mov     x20, x0
  10005a91c  b       loc_10005a92c
  10005a920  mov     x20, x0
  10005a924  mov     x0, x19
  10005a928  bl      _objc_release
loc_10005a92c:
  10005a92c  mov     x0, x20
  10005a930  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController meleeButtonPressed:]
; address 0x10005a934  size 100  kind objc
; ======================================================================
  10005a934  stp     x20, x19, [sp, #-0x20]!
  10005a938  stp     x29, x30, [sp, #0x10]
  10005a93c  add     x29, sp, #0x10
  10005a940  adrp    x8, #0x100416000
  10005a944  nop
  10005a948  ldr     x1, [x8, #0xc88]
  10005a94c  bl      _objc_msgSend                            ; [self weaponManager]
  10005a950  mov     x29, x29
  10005a954  bl      _objc_retainAutoreleasedReturnValue
  10005a958  mov     x19, x0
  10005a95c  adrp    x8, #0x100417000
  10005a960  nop
  10005a964  ldr     x1, [x8, #0xc98]
  10005a968  bl      _objc_msgSend                            ; [[self weaponManager] shootWithMelee]
  10005a96c  mov     x0, x19
  10005a970  ldp     x29, x30, [sp, #0x10]
  10005a974  ldp     x20, x19, [sp], #0x20
  10005a978  b       _objc_release
  10005a97c  mov     x20, x0
  10005a980  b       loc_10005a990
  10005a984  mov     x20, x0
  10005a988  mov     x0, x19
  10005a98c  bl      _objc_release
loc_10005a990:
  10005a990  mov     x0, x20
  10005a994  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController powerUpButtonPressed:]
; address 0x10005a998  size 100  kind objc
; ======================================================================
  10005a998  stp     x20, x19, [sp, #-0x20]!
  10005a99c  stp     x29, x30, [sp, #0x10]
  10005a9a0  add     x29, sp, #0x10
  10005a9a4  adrp    x8, #0x100416000
  10005a9a8  nop
  10005a9ac  ldr     x1, [x8, #0xc88]
  10005a9b0  bl      _objc_msgSend                            ; [self weaponManager]
  10005a9b4  mov     x29, x29
  10005a9b8  bl      _objc_retainAutoreleasedReturnValue
  10005a9bc  mov     x19, x0
  10005a9c0  adrp    x8, #0x100419000
  10005a9c4  nop
  10005a9c8  ldr     x1, [x8, #0xe0]
  10005a9cc  bl      _objc_msgSend                            ; [[self weaponManager] usePowerUp]
  10005a9d0  mov     x0, x19
  10005a9d4  ldp     x29, x30, [sp, #0x10]
  10005a9d8  ldp     x20, x19, [sp], #0x20
  10005a9dc  b       _objc_release
  10005a9e0  mov     x20, x0
  10005a9e4  b       loc_10005a9f4
  10005a9e8  mov     x20, x0
  10005a9ec  mov     x0, x19
  10005a9f0  bl      _objc_release
loc_10005a9f4:
  10005a9f4  mov     x0, x20
  10005a9f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController playerKilledEnemy:withCombo:]
; address 0x10005a9fc  size 4  kind objc
; ======================================================================
  10005a9fc  ret

; ======================================================================
; -[ADGameplayViewController playerDidACriticalHit]
; address 0x10005aa00  size 4  kind objc
; ======================================================================
  10005aa00  ret

; ======================================================================
; -[ADGameplayViewController updateScoreViewWithAnimation:]
; address 0x10005aa04  size 2628  kind objc
; ======================================================================
  10005aa04  stp     d11, d10, [sp, #-0x80]!
  10005aa08  stp     d9, d8, [sp, #0x10]
  10005aa0c  stp     x28, x27, [sp, #0x20]
  10005aa10  stp     x26, x25, [sp, #0x30]
  10005aa14  stp     x24, x23, [sp, #0x40]
  10005aa18  stp     x22, x21, [sp, #0x50]
  10005aa1c  stp     x20, x19, [sp, #0x60]
  10005aa20  stp     x29, x30, [sp, #0x70]
  10005aa24  add     x29, sp, #0x70
  10005aa28  sub     sp, sp, #0x20
  10005aa2c  str     w2, [sp, #0x1c]
  10005aa30  mov     x19, x0
  10005aa34  adrp    x8, #0x100418000
  10005aa38  nop
  10005aa3c  ldr     x1, [x8, #0x790]
  10005aa40  bl      _objc_msgSend                            ; [self comboLabel]
  10005aa44  mov     x29, x29
  10005aa48  bl      _objc_retainAutoreleasedReturnValue
  10005aa4c  mov     x24, x0
  10005aa50  adrp    x8, #0x10041d000
  10005aa54  ldr     x23, [x8, #0xf78]                        ; class NSString
  10005aa58  adrp    x20, #0x10041d000
  10005aa5c  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005aa60  adrp    x8, #0x100417000
  10005aa64  nop
  10005aa68  ldr     x21, [x8, #0x228]
  10005aa6c  mov     x1, x21
  10005aa70  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005aa74  mov     x29, x29
  10005aa78  bl      _objc_retainAutoreleasedReturnValue
  10005aa7c  mov     x25, x0
  10005aa80  adrp    x8, #0x100419000
  10005aa84  nop
  10005aa88  ldr     x22, [x8, #0xe8]
  10005aa8c  mov     x1, x22
  10005aa90  bl      _objc_msgSend                            ; [[ADInGameStats singleton] combo]
  10005aa94  adrp    x8, #0x100416000
  10005aa98  nop
  10005aa9c  ldr     x1, [x8, #0xee8]
  10005aaa0  str     x0, [sp]
  10005aaa4  adrp    x2, #0x1003bc000
  10005aaa8  add     x2, x2, #0xd70                           ; @"x %i"
  10005aaac  mov     x0, x23
  10005aab0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"x %i", [[ADInGameStats singleton] combo]]
  10005aab4  mov     x29, x29
  10005aab8  bl      _objc_retainAutoreleasedReturnValue
  10005aabc  mov     x26, x0
  10005aac0  adrp    x8, #0x100416000
  10005aac4  nop
  10005aac8  ldr     x23, [x8, #0xb68]
  10005aacc  mov     x0, x24
  10005aad0  mov     x1, x23
  10005aad4  mov     x2, x26
  10005aad8  bl      _objc_msgSend                            ; [[self comboLabel] setText:[NSString stringWithFormat:@"x %i", [[ADInGameStats singleton] combo]]]
  10005aadc  mov     x0, x26
  10005aae0  bl      _objc_release
  10005aae4  mov     x0, x25
  10005aae8  bl      _objc_release
  10005aaec  mov     x0, x24
  10005aaf0  bl      _objc_release
  10005aaf4  adrp    x8, #0x100418000
  10005aaf8  nop
  10005aafc  ldr     x24, [x8, #0x7b0]
  10005ab00  mov     x0, x19
  10005ab04  mov     x1, x24
  10005ab08  bl      _objc_msgSend                            ; [self scoreLabel]
  10005ab0c  mov     x29, x29
  10005ab10  bl      _objc_retainAutoreleasedReturnValue
  10005ab14  mov     x26, x0
  10005ab18  adrp    x8, #0x100418000
  10005ab1c  nop
  10005ab20  ldr     x1, [x8, #0x290]
  10005ab24  bl      _objc_msgSend                            ; [[self scoreLabel] text]
  10005ab28  mov     x29, x29
  10005ab2c  bl      _objc_retainAutoreleasedReturnValue
  10005ab30  mov     x27, x0
  10005ab34  adrp    x8, #0x100417000
  10005ab38  nop
  10005ab3c  ldr     x1, [x8, #0x110]
  10005ab40  bl      _objc_msgSend                            ; [[[self scoreLabel] text] intValue]
  10005ab44  mov     x25, x0
  10005ab48  mov     x0, x27
  10005ab4c  bl      _objc_release
  10005ab50  mov     x0, x26
  10005ab54  bl      _objc_release
  10005ab58  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005ab5c  mov     x1, x21
  10005ab60  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005ab64  mov     x29, x29
  10005ab68  bl      _objc_retainAutoreleasedReturnValue
  10005ab6c  mov     x27, x0
  10005ab70  adrp    x8, #0x100417000
  10005ab74  nop
  10005ab78  ldr     x26, [x8, #0xda0]
  10005ab7c  mov     x1, x26
  10005ab80  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005ab84  mov     x28, x0
  10005ab88  mov     x0, x27
  10005ab8c  bl      _objc_release
  10005ab90  cmp     x28, w25, sxtw
  10005ab94  b.eq    loc_10005aff0                            ; if ([[ADInGameStats singleton] gameScore] == [[[self scoreLabel] text] intValue])
  10005ab98  ldr     w8, [sp, #0x1c]
  10005ab9c  cbz     w8, loc_10005ae9c                        ; if (arg1 == 0)
  10005aba0  str     x23, [sp, #8]
  10005aba4  mov     x23, x22
  10005aba8  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005abac  mov     x22, x20
  10005abb0  mov     x1, x21
  10005abb4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005abb8  mov     x29, x29
  10005abbc  bl      _objc_retainAutoreleasedReturnValue
  10005abc0  mov     x27, x0
  10005abc4  mov     x1, x26
  10005abc8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005abcc  mov     x28, x0
  10005abd0  sxtw    x20, w25
  10005abd4  str     x20, [sp, #0x10]
  10005abd8  mov     x0, x27
  10005abdc  bl      _objc_release
  10005abe0  cmp     x28, x20
  10005abe4  mov     x20, x22
  10005abe8  mov     x22, x23
  10005abec  b.ls    loc_10005af20                            ; if ([[ADInGameStats singleton] gameScore] <=u [[[self scoreLabel] text] intValue])
  10005abf0  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005abf4  mov     x1, x21
  10005abf8  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005abfc  mov     x29, x29
  10005ac00  bl      _objc_retainAutoreleasedReturnValue
  10005ac04  mov     x27, x0
  10005ac08  mov     x1, x26
  10005ac0c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005ac10  ldr     x8, [sp, #0x10]
  10005ac14  sub     x28, x0, x8
  10005ac18  mov     x0, x27
  10005ac1c  bl      _objc_release
  10005ac20  cmp     x28, #0x3e9
  10005ac24  ldr     x23, [sp, #8]
  10005ac28  b.lo    loc_10005ac88                            ; if (([[ADInGameStats singleton] gameScore] - [[[self scoreLabel] text] intValue]) <u 1001)
  10005ac2c  mov     x0, x19
  10005ac30  mov     x1, x24
  10005ac34  bl      _objc_msgSend                            ; [self scoreLabel]
  10005ac38  mov     x29, x29
  10005ac3c  bl      _objc_retainAutoreleasedReturnValue
  10005ac40  mov     x27, x0
  10005ac44  add     w2, w25, #0x3e8
  10005ac48  adrp    x8, #0x100418000
  10005ac4c  nop
  10005ac50  ldr     x1, [x8, #0x7b8]
  10005ac54  mov     x0, x19
  10005ac58  bl      _objc_msgSend                            ; [self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 1000)]
  10005ac5c  mov     x29, x29
  10005ac60  bl      _objc_retainAutoreleasedReturnValue
  10005ac64  mov     x28, x0
  10005ac68  mov     x0, x27
  10005ac6c  mov     x1, x23
  10005ac70  mov     x2, x28
  10005ac74  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 1000)]]
  10005ac78  mov     x0, x28
  10005ac7c  bl      _objc_release
  10005ac80  mov     x0, x27
  10005ac84  bl      _objc_release
loc_10005ac88:
  10005ac88  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005ac8c  mov     x1, x21
  10005ac90  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005ac94  mov     x29, x29
  10005ac98  bl      _objc_retainAutoreleasedReturnValue
  10005ac9c  mov     x27, x0
  10005aca0  mov     x1, x26
  10005aca4  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005aca8  ldr     x8, [sp, #0x10]
  10005acac  sub     x8, x0, x8
  10005acb0  lsr     x9, x8, #3
  10005acb4  mov     x10, #0x20c4000000000000
  10005acb8  movk    x10, #0x9ba5, lsl #32
  10005acbc  movk    x10, #0xe353, lsl #16
  10005acc0  movk    x10, #0xf7cf
  10005acc4  umulh   x9, x9, x10                              ; t1 = ((([[ADInGameStats singleton] gameScore] - [[[self scoreLabel] text] intValue]) >>> 3) *h 0x20c49ba5e353f7cf)
  10005acc8  lsr     x9, x9, #4
  10005accc  mov     w10, #0x3e8
  10005acd0  msub    x28, x9, x10, x8                         ; t2 = (([[ADInGameStats singleton] gameScore] - [[[self scoreLabel] text] intValue]) - (t1 >>> 4) * 1000)
  10005acd4  mov     x0, x27
  10005acd8  bl      _objc_release
  10005acdc  cmp     x28, #0x65
  10005ace0  b.lo    loc_10005ad40                            ; if (t2 <u 101)
  10005ace4  mov     x0, x19
  10005ace8  mov     x1, x24
  10005acec  bl      _objc_msgSend                            ; [self scoreLabel]
  10005acf0  mov     x29, x29
  10005acf4  bl      _objc_retainAutoreleasedReturnValue
  10005acf8  mov     x27, x0
  10005acfc  add     w2, w25, #0x64
  10005ad00  adrp    x8, #0x100418000
  10005ad04  nop
  10005ad08  ldr     x1, [x8, #0x7b8]
  10005ad0c  mov     x0, x19
  10005ad10  bl      _objc_msgSend                            ; [self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 100)]
  10005ad14  mov     x29, x29
  10005ad18  bl      _objc_retainAutoreleasedReturnValue
  10005ad1c  mov     x28, x0
  10005ad20  mov     x0, x27
  10005ad24  mov     x1, x23
  10005ad28  mov     x2, x28
  10005ad2c  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 100)]]
  10005ad30  mov     x0, x28
  10005ad34  bl      _objc_release
  10005ad38  mov     x0, x27
  10005ad3c  bl      _objc_release
loc_10005ad40:
  10005ad40  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005ad44  mov     x1, x21
  10005ad48  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005ad4c  mov     x29, x29
  10005ad50  bl      _objc_retainAutoreleasedReturnValue
  10005ad54  mov     x27, x0
  10005ad58  mov     x1, x26
  10005ad5c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005ad60  ldr     x8, [sp, #0x10]
  10005ad64  sub     x8, x0, x8
  10005ad68  lsr     x9, x8, #2
  10005ad6c  mov     x10, #0x28f5000000000000
  10005ad70  movk    x10, #0xc28f, lsl #32
  10005ad74  movk    x10, #0x5c28, lsl #16
  10005ad78  movk    x10, #0xf5c3
  10005ad7c  umulh   x9, x9, x10                              ; t3 = ((([[ADInGameStats singleton] gameScore] - [[[self scoreLabel] text] intValue]) >>> 2) *h 0x28f5c28f5c28f5c3)
  10005ad80  lsr     x9, x9, #2
  10005ad84  mov     w10, #0x64
  10005ad88  msub    x28, x9, x10, x8                         ; t4 = (([[ADInGameStats singleton] gameScore] - [[[self scoreLabel] text] intValue]) - (t3 >>> 2) * 100)
  10005ad8c  mov     x0, x27
  10005ad90  bl      _objc_release
  10005ad94  cmp     x28, #0xb
  10005ad98  b.lo    loc_10005adf8                            ; if (t4 <u 11)
  10005ad9c  mov     x0, x19
  10005ada0  mov     x1, x24
  10005ada4  bl      _objc_msgSend                            ; [self scoreLabel]
  10005ada8  mov     x29, x29
  10005adac  bl      _objc_retainAutoreleasedReturnValue
  10005adb0  mov     x27, x0
  10005adb4  add     w2, w25, #0xa
  10005adb8  adrp    x8, #0x100418000
  10005adbc  nop
  10005adc0  ldr     x1, [x8, #0x7b8]
  10005adc4  mov     x0, x19
  10005adc8  bl      _objc_msgSend                            ; [self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 10)]
  10005adcc  mov     x29, x29
  10005add0  bl      _objc_retainAutoreleasedReturnValue
  10005add4  mov     x28, x0
  10005add8  mov     x0, x27
  10005addc  mov     x1, x23
  10005ade0  mov     x2, x28
  10005ade4  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 10)]]
  10005ade8  mov     x0, x28
  10005adec  bl      _objc_release
  10005adf0  mov     x0, x27
  10005adf4  bl      _objc_release
loc_10005adf8:
  10005adf8  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005adfc  mov     x1, x21
  10005ae00  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005ae04  mov     x29, x29
  10005ae08  bl      _objc_retainAutoreleasedReturnValue
  10005ae0c  mov     x27, x0
  10005ae10  mov     x1, x26
  10005ae14  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005ae18  ldr     x8, [sp, #0x10]
  10005ae1c  sub     x8, x0, x8
  10005ae20  mov     x9, #-0x3333333333333334
  10005ae24  movk    x9, #0xcccd
  10005ae28  umulh   x9, x8, x9                               ; t5 = (([[ADInGameStats singleton] gameScore] - [[[self scoreLabel] text] intValue]) *h 0xcccccccccccccccd)
  10005ae2c  lsr     x9, x9, #3
  10005ae30  mov     w10, #0xa
  10005ae34  msub    x26, x9, x10, x8                         ; t6 = (([[ADInGameStats singleton] gameScore] - [[[self scoreLabel] text] intValue]) - (t5 >>> 3) * 10)
  10005ae38  mov     x0, x27
  10005ae3c  bl      _objc_release
  10005ae40  cbz     x26, loc_10005af20                       ; if (t6 == 0)
  10005ae44  mov     x0, x19
  10005ae48  mov     x1, x24
  10005ae4c  bl      _objc_msgSend                            ; [self scoreLabel]
  10005ae50  mov     x29, x29
  10005ae54  bl      _objc_retainAutoreleasedReturnValue
  10005ae58  mov     x24, x0
  10005ae5c  add     w2, w25, #1
  10005ae60  adrp    x8, #0x100418000
  10005ae64  nop
  10005ae68  ldr     x1, [x8, #0x7b8]
  10005ae6c  mov     x0, x19
  10005ae70  bl      _objc_msgSend                            ; [self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 1)]
  10005ae74  mov     x29, x29
  10005ae78  bl      _objc_retainAutoreleasedReturnValue
  10005ae7c  mov     x25, x0
  10005ae80  mov     x0, x24
  10005ae84  mov     x1, x23
  10005ae88  mov     x2, x25
  10005ae8c  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[self formattedScoreFromInt:([[[self scoreLabel] text] intValue] + 1)]]
  10005ae90  b       loc_10005af10
  10005ae94  mov     x19, x0
  10005ae98  b       loc_10005b368
loc_10005ae9c:
  10005ae9c  mov     x0, x19
  10005aea0  mov     x1, x24
  10005aea4  bl      _objc_msgSend                            ; [self scoreLabel]
  10005aea8  mov     x29, x29
  10005aeac  bl      _objc_retainAutoreleasedReturnValue
  10005aeb0  mov     x24, x0
  10005aeb4  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005aeb8  mov     x1, x21
  10005aebc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005aec0  mov     x29, x29
  10005aec4  bl      _objc_retainAutoreleasedReturnValue
  10005aec8  mov     x25, x0
  10005aecc  mov     x1, x26
  10005aed0  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005aed4  mov     x2, x0
  10005aed8  adrp    x8, #0x100418000
  10005aedc  nop
  10005aee0  ldr     x1, [x8, #0x7b8]
  10005aee4  mov     x0, x19
  10005aee8  bl      _objc_msgSend                            ; [self formattedScoreFromInt:[[ADInGameStats singleton] gameScore]]
  10005aeec  mov     x29, x29
  10005aef0  bl      _objc_retainAutoreleasedReturnValue
  10005aef4  mov     x26, x0
  10005aef8  mov     x0, x24
  10005aefc  mov     x1, x23
  10005af00  mov     x2, x26
  10005af04  bl      _objc_msgSend                            ; [[self scoreLabel] setText:[self formattedScoreFromInt:[[ADInGameStats singleton] gameScore]]]
  10005af08  mov     x0, x26
  10005af0c  bl      _objc_release
loc_10005af10:
  10005af10  mov     x0, x25
  10005af14  bl      _objc_release
  10005af18  mov     x0, x24
  10005af1c  bl      _objc_release
loc_10005af20:
  10005af20  adrp    x8, #0x100417000
  10005af24  nop
  10005af28  ldr     x1, [x8, #0xca0]
  10005af2c  mov     x0, x19
  10005af30  bl      _objc_msgSend                            ; [self scoreView]
  10005af34  mov     x29, x29
  10005af38  bl      _objc_retainAutoreleasedReturnValue
  10005af3c  mov     x24, x0
  10005af40  adrp    x8, #0x100416000
  10005af44  nop
  10005af48  ldr     x23, [x8, #0xf38]
  10005af4c  mov     x1, x23
  10005af50  bl      _objc_msgSend                            ; [[self scoreView] frame]
  10005af54  mov     v8.16b, v2.16b
  10005af58  ldr     x0, [x20, #0xfc0]                        ; class ADInGameStats
  10005af5c  mov     x1, x21
  10005af60  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005af64  mov     x29, x29
  10005af68  bl      _objc_retainAutoreleasedReturnValue
  10005af6c  mov     x21, x0
  10005af70  mov     x1, x22
  10005af74  bl      _objc_msgSend                            ; [[ADInGameStats singleton] combo]
  10005af78  ucvtf   d0, x0
  10005af7c  adrp    x8, #0x100181000
  10005af80  ldr     d1, [x8, #0xc00]                         ; d1 = 200.0
  10005af84  fdiv    d0, d0, d1
  10005af88  fmul    d0, d8, d0
  10005af8c  fcvt    s10, d0
  10005af90  mov     x0, x21
  10005af94  bl      _objc_release
  10005af98  mov     x0, x24
  10005af9c  bl      _objc_release
  10005afa0  adrp    x8, #0x100418000
  10005afa4  nop
  10005afa8  ldr     x21, [x8, #0xfc8]
  10005afac  mov     x0, x19
  10005afb0  mov     x1, x21
  10005afb4  bl      _objc_msgSend                            ; [self comboMeter]
  10005afb8  mov     x29, x29
  10005afbc  bl      _objc_retainAutoreleasedReturnValue
  10005afc0  mov     x22, x0
  10005afc4  ldr     w8, [sp, #0x1c]
  10005afc8  cbz     w8, loc_10005b018                        ; if (arg1 == 0)
  10005afcc  mov     x0, x22
  10005afd0  mov     x1, x23
  10005afd4  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005afd8  fcvtzs  w20, s10
  10005afdc  fcvtzs  w24, d2
  10005afe0  mov     x0, x22
  10005afe4  bl      _objc_release
  10005afe8  cmp     w20, w24
  10005afec  b.ne    loc_10005b0c0                            ; if ((int)([[self scoreView] frame].2 * ((float)[[ADInGameStats singleton] combo] / 200)) != (int)[[self comboMeter] frame].2)
loc_10005aff0:
  10005aff0  sub     sp, x29, #0x70
  10005aff4  ldp     x29, x30, [sp, #0x70]
  10005aff8  ldp     x20, x19, [sp, #0x60]
  10005affc  ldp     x22, x21, [sp, #0x50]
  10005b000  ldp     x24, x23, [sp, #0x40]
  10005b004  ldp     x26, x25, [sp, #0x30]
  10005b008  ldp     x28, x27, [sp, #0x20]
  10005b00c  ldp     d9, d8, [sp, #0x10]
  10005b010  ldp     d11, d10, [sp], #0x80
  10005b014  ret
loc_10005b018:
  10005b018  mov     x0, x19
  10005b01c  mov     x1, x21
  10005b020  bl      _objc_msgSend                            ; [self comboMeter]
  10005b024  mov     x29, x29
  10005b028  bl      _objc_retainAutoreleasedReturnValue
  10005b02c  mov     x20, x0
  10005b030  mov     x1, x23
  10005b034  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b038  mov     v8.16b, v0.16b
  10005b03c  mov     x0, x19
  10005b040  mov     x1, x21
  10005b044  bl      _objc_msgSend                            ; [self comboMeter]
  10005b048  mov     x29, x29
  10005b04c  bl      _objc_retainAutoreleasedReturnValue
  10005b050  mov     x24, x0
  10005b054  mov     x1, x23
  10005b058  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b05c  mov     v9.16b, v1.16b
  10005b060  mov     x0, x19
  10005b064  mov     x1, x21
  10005b068  bl      _objc_msgSend                            ; [self comboMeter]
  10005b06c  mov     x29, x29
  10005b070  bl      _objc_retainAutoreleasedReturnValue
  10005b074  mov     x21, x0
  10005b078  mov     x1, x23
  10005b07c  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b080  fcvt    d2, s10
  10005b084  adrp    x8, #0x100417000
  10005b088  nop
  10005b08c  ldr     x1, [x8, #0x7b8]
  10005b090  mov     x0, x22
  10005b094  mov     v0.16b, v8.16b
  10005b098  mov     v1.16b, v9.16b
  10005b09c  bl      _objc_msgSend                            ; [[self comboMeter] setFrame:{[[self comboMeter] frame].0, [[self comboMeter] frame].1, ([[self scoreView] frame].2 * ((float)[[ADInGameStats singleton] combo] / 200)), [[self comboMeter] frame].3}]
  10005b0a0  mov     x0, x21
  10005b0a4  bl      _objc_release
  10005b0a8  mov     x0, x24
  10005b0ac  bl      _objc_release
  10005b0b0  mov     x0, x20
  10005b0b4  bl      _objc_release
  10005b0b8  mov     x0, x22
  10005b0bc  b       loc_10005b2a4
loc_10005b0c0:
  10005b0c0  mov     x0, x19
  10005b0c4  mov     x1, x21
  10005b0c8  bl      _objc_msgSend                            ; [self comboMeter]
  10005b0cc  mov     x29, x29
  10005b0d0  bl      _objc_retainAutoreleasedReturnValue
  10005b0d4  mov     x20, x0
  10005b0d8  mov     x1, x23
  10005b0dc  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b0e0  mov     v8.16b, v2.16b
  10005b0e4  fcvt    d9, s10
  10005b0e8  mov     x0, x20
  10005b0ec  bl      _objc_release
  10005b0f0  mov     x0, x19
  10005b0f4  mov     x1, x21
  10005b0f8  bl      _objc_msgSend                            ; [self comboMeter]
  10005b0fc  mov     x29, x29
  10005b100  bl      _objc_retainAutoreleasedReturnValue
  10005b104  mov     x20, x0
  10005b108  fcmp    d9, d8
  10005b10c  b.le    loc_10005b1cc                            ; if (([[self scoreView] frame].2 * ((float)[[ADInGameStats singleton] combo] / 200)) <= (or unordered) [[self comboMeter] frame].2)
  10005b110  mov     x0, x19
  10005b114  mov     x1, x21
  10005b118  bl      _objc_msgSend                            ; [self comboMeter]
  10005b11c  mov     x29, x29
  10005b120  bl      _objc_retainAutoreleasedReturnValue
  10005b124  mov     x22, x0
  10005b128  mov     x1, x23
  10005b12c  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b130  mov     v8.16b, v0.16b
  10005b134  mov     x0, x19
  10005b138  mov     x1, x21
  10005b13c  bl      _objc_msgSend                            ; [self comboMeter]
  10005b140  mov     x29, x29
  10005b144  bl      _objc_retainAutoreleasedReturnValue
  10005b148  mov     x24, x0
  10005b14c  mov     x1, x23
  10005b150  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b154  mov     v9.16b, v1.16b
  10005b158  mov     x0, x19
  10005b15c  mov     x1, x21
  10005b160  bl      _objc_msgSend                            ; [self comboMeter]
  10005b164  mov     x29, x29
  10005b168  bl      _objc_retainAutoreleasedReturnValue
  10005b16c  mov     x25, x0
  10005b170  mov     x1, x23
  10005b174  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b178  mov     v10.16b, v2.16b
  10005b17c  mov     x0, x19
  10005b180  mov     x1, x21
  10005b184  bl      _objc_msgSend                            ; [self comboMeter]
  10005b188  mov     x29, x29
  10005b18c  bl      _objc_retainAutoreleasedReturnValue
  10005b190  mov     x21, x0
  10005b194  mov     x1, x23
  10005b198  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b19c  adrp    x8, #0x100181000
  10005b1a0  ldr     d0, [x8, #0xa98]                         ; d0 = 0.4
  10005b1a4  fadd    d2, d10, d0
  10005b1a8  adrp    x8, #0x100417000
  10005b1ac  nop
  10005b1b0  ldr     x1, [x8, #0x7b8]
  10005b1b4  mov     x0, x20
  10005b1b8  mov     v0.16b, v8.16b
  10005b1bc  mov     v1.16b, v9.16b
  10005b1c0  bl      _objc_msgSend                            ; [[self comboMeter] setFrame:{[[self comboMeter] frame].0, [[self comboMeter] frame].1, ([[self comboMeter] frame].2 + 0.4), [[self comboMeter] frame].3}]
  10005b1c4  b       loc_10005b280
  10005b1c8  b       loc_10005b3d0
loc_10005b1cc:
  10005b1cc  mov     x0, x19
  10005b1d0  mov     x1, x21
  10005b1d4  bl      _objc_msgSend                            ; [self comboMeter]
  10005b1d8  mov     x29, x29
  10005b1dc  bl      _objc_retainAutoreleasedReturnValue
  10005b1e0  mov     x22, x0
  10005b1e4  mov     x1, x23
  10005b1e8  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b1ec  mov     v8.16b, v0.16b
  10005b1f0  mov     x0, x19
  10005b1f4  mov     x1, x21
  10005b1f8  bl      _objc_msgSend                            ; [self comboMeter]
  10005b1fc  mov     x29, x29
  10005b200  bl      _objc_retainAutoreleasedReturnValue
  10005b204  mov     x24, x0
  10005b208  mov     x1, x23
  10005b20c  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b210  mov     v9.16b, v1.16b
  10005b214  mov     x0, x19
  10005b218  mov     x1, x21
  10005b21c  bl      _objc_msgSend                            ; [self comboMeter]
  10005b220  mov     x29, x29
  10005b224  bl      _objc_retainAutoreleasedReturnValue
  10005b228  mov     x25, x0
  10005b22c  mov     x1, x23
  10005b230  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b234  mov     v10.16b, v2.16b
  10005b238  mov     x0, x19
  10005b23c  mov     x1, x21
  10005b240  bl      _objc_msgSend                            ; [self comboMeter]
  10005b244  mov     x29, x29
  10005b248  bl      _objc_retainAutoreleasedReturnValue
  10005b24c  mov     x21, x0
  10005b250  mov     x1, x23
  10005b254  bl      _objc_msgSend                            ; [[self comboMeter] frame]
  10005b258  adrp    x8, #0x100181000
  10005b25c  ldr     d0, [x8, #0xc08]                         ; d0 = -0.4
  10005b260  fadd    d2, d10, d0
  10005b264  adrp    x8, #0x100417000
  10005b268  nop
  10005b26c  ldr     x1, [x8, #0x7b8]
  10005b270  mov     x0, x20
  10005b274  mov     v0.16b, v8.16b
  10005b278  mov     v1.16b, v9.16b
  10005b27c  bl      _objc_msgSend                            ; [[self comboMeter] setFrame:{[[self comboMeter] frame].0, [[self comboMeter] frame].1, ([[self comboMeter] frame].2 + -0.4), [[self comboMeter] frame].3}]
loc_10005b280:
  10005b280  mov     x0, x21
  10005b284  bl      _objc_release
  10005b288  mov     x0, x25
  10005b28c  bl      _objc_release
  10005b290  mov     x0, x24
  10005b294  bl      _objc_release
  10005b298  mov     x0, x22
  10005b29c  bl      _objc_release
  10005b2a0  mov     x0, x20
loc_10005b2a4:
  10005b2a4  sub     sp, x29, #0x70
  10005b2a8  ldp     x29, x30, [sp, #0x70]
  10005b2ac  ldp     x20, x19, [sp, #0x60]
  10005b2b0  ldp     x22, x21, [sp, #0x50]
  10005b2b4  ldp     x24, x23, [sp, #0x40]
  10005b2b8  ldp     x26, x25, [sp, #0x30]
  10005b2bc  ldp     x28, x27, [sp, #0x20]
  10005b2c0  ldp     d9, d8, [sp, #0x10]
  10005b2c4  ldp     d11, d10, [sp], #0x80
  10005b2c8  b       _objc_release
  10005b2cc  mov     x19, x0
  10005b2d0  b       loc_10005b368
  10005b2d4  mov     x19, x0
  10005b2d8  b       loc_10005b370
  10005b2dc  b       loc_10005b35c
  10005b2e0  mov     x19, x0
  10005b2e4  b       loc_10005b2f4
  10005b2e8  mov     x19, x0
  10005b2ec  mov     x0, x27
  10005b2f0  bl      _objc_release
loc_10005b2f4:
  10005b2f4  mov     x0, x26
  10005b2f8  b       loc_10005b41c
  10005b2fc  b       loc_10005b414
  10005b300  mov     x19, x0
  10005b304  b       loc_10005b370
  10005b308  mov     x19, x0
  10005b30c  b       loc_10005b368
  10005b310  mov     x19, x0
  10005b314  mov     x0, x21
  10005b318  b       loc_10005b36c
  10005b31c  mov     x19, x0
  10005b320  b       loc_10005b340
  10005b324  mov     x19, x0
  10005b328  b       loc_10005b338
  10005b32c  mov     x19, x0
  10005b330  mov     x0, x21
  10005b334  bl      _objc_release
loc_10005b338:
  10005b338  mov     x0, x24
  10005b33c  bl      _objc_release
loc_10005b340:
  10005b340  mov     x0, x20
  10005b344  bl      _objc_release
loc_10005b348:
  10005b348  mov     x0, x22
  10005b34c  b       loc_10005b41c
  10005b350  b       loc_10005b414
  10005b354  mov     x19, x0
  10005b358  b       loc_10005b370
loc_10005b35c:
  10005b35c  mov     x19, x0
  10005b360  mov     x0, x26
  10005b364  bl      _objc_release
loc_10005b368:
  10005b368  mov     x0, x25
loc_10005b36c:
  10005b36c  bl      _objc_release
loc_10005b370:
  10005b370  mov     x0, x24
  10005b374  b       loc_10005b41c
  10005b378  mov     x19, x0
  10005b37c  b       loc_10005b348
  10005b380  mov     x19, x0
  10005b384  b       loc_10005b348
  10005b388  b       loc_10005b414
  10005b38c  b       loc_10005b414
  10005b390  b       loc_10005b414
  10005b394  b       loc_10005b414
  10005b398  mov     x19, x0
  10005b39c  b       loc_10005b3f4
  10005b3a0  mov     x19, x0
  10005b3a4  b       loc_10005b3ec
  10005b3a8  mov     x19, x0
  10005b3ac  b       loc_10005b3e4
  10005b3b0  mov     x19, x0
  10005b3b4  b       loc_10005b3dc
  10005b3b8  mov     x19, x0
  10005b3bc  b       loc_10005b3ec
  10005b3c0  mov     x19, x0
  10005b3c4  b       loc_10005b3e4
  10005b3c8  mov     x19, x0
  10005b3cc  b       loc_10005b3dc
loc_10005b3d0:
  10005b3d0  mov     x19, x0
  10005b3d4  mov     x0, x21
  10005b3d8  bl      _objc_release
loc_10005b3dc:
  10005b3dc  mov     x0, x25
  10005b3e0  bl      _objc_release
loc_10005b3e4:
  10005b3e4  mov     x0, x24
  10005b3e8  bl      _objc_release
loc_10005b3ec:
  10005b3ec  mov     x0, x22
  10005b3f0  bl      _objc_release
loc_10005b3f4:
  10005b3f4  mov     x0, x20
  10005b3f8  b       loc_10005b41c
  10005b3fc  mov     x19, x0
  10005b400  b       loc_10005b370
  10005b404  b       loc_10005b414
  10005b408  b       loc_10005b428
  10005b40c  b       loc_10005b414
  10005b410  b       loc_10005b428
loc_10005b414:
  10005b414  mov     x19, x0
loc_10005b418:
  10005b418  mov     x0, x27
loc_10005b41c:
  10005b41c  bl      _objc_release
  10005b420  mov     x0, x19
  10005b424  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_10005b428:
  10005b428  mov     x19, x0
  10005b42c  mov     x0, x28
  10005b430  bl      _objc_release
  10005b434  b       loc_10005b418
  10005b438  mov     x19, x0
  10005b43c  b       loc_10005b3f4
  10005b440  mov     x19, x0
  10005b444  b       loc_10005b3f4

; ======================================================================
; -[ADGameplayViewController formattedScoreFromInt:]
; address 0x10005b448  size 60  kind objc
; ======================================================================
  10005b448  stp     x29, x30, [sp, #-0x10]!
  10005b44c  mov     x29, sp
  10005b450  sub     sp, sp, #0x10
  10005b454  adrp    x8, #0x10041d000
  10005b458  ldr     x0, [x8, #0xf78]                         ; class NSString
  10005b45c  adrp    x8, #0x100416000
  10005b460  nop
  10005b464  ldr     x1, [x8, #0xee8]
  10005b468  str     x2, [sp]
  10005b46c  adrp    x2, #0x1003ba000
  10005b470  add     x2, x2, #0xc50                           ; @"%i"
  10005b474  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", arg1]
  10005b478  mov     sp, x29
  10005b47c  ldp     x29, x30, [sp], #0x10
  10005b480  ret

; ======================================================================
; -[ADGameplayViewController pauseButtonTouched:]
; address 0x10005b484  size 180  kind objc
; ======================================================================
  10005b484  stp     x20, x19, [sp, #-0x20]!
  10005b488  stp     x29, x30, [sp, #0x10]
  10005b48c  add     x29, sp, #0x10
  10005b490  mov     x19, x0
  10005b494  adrp    x8, #0x10041e000
  10005b498  ldr     x0, [x8, #0x58]                          ; class ADPauseViewController
  10005b49c  adrp    x8, #0x100416000
  10005b4a0  nop
  10005b4a4  ldr     x1, [x8, #0xac8]
  10005b4a8  bl      _objc_msgSend                            ; [ADPauseViewController alloc]
  10005b4ac  adrp    x8, #0x100416000
  10005b4b0  nop
  10005b4b4  ldr     x1, [x8, #0xb40]
  10005b4b8  mov     x3, #0
  10005b4bc  adrp    x2, #0x1003bd000
  10005b4c0  add     x2, x2, #0xa90                           ; @"ADPauseViewController"
  10005b4c4  bl      _objc_msgSend                            ; [[ADPauseViewController alloc] initWithNibName:@"ADPauseViewController" bundle:0]
  10005b4c8  adrp    x8, #0x10041f000
  10005b4cc  ldrsw   x20, [x8, #0xb08]                        ; ivar offset ADGameplayViewController.pauseView (+0x170)
  10005b4d0  ldr     x8, [x19, x20]                           ; x8 = self->pauseView
  10005b4d4  str     x0, [x19, x20]                           ; self->pauseView = [[ADPauseViewController alloc] initWithNibName:@"ADPauseViewController" bundle:0]
  10005b4d8  mov     x0, x8
  10005b4dc  bl      _objc_release
  10005b4e0  ldr     x0, [x19, x20]                           ; x0 = self->pauseView
  10005b4e4  adrp    x8, #0x100417000
  10005b4e8  nop
  10005b4ec  ldr     x1, [x8, #0xc10]
  10005b4f0  mov     x2, x19
  10005b4f4  bl      _objc_msgSend                            ; [self->pauseView setGameplayViewController:self]
  10005b4f8  adrp    x8, #0x100419000
  10005b4fc  nop
  10005b500  ldr     x1, [x8, #0xf0]
  10005b504  mov     x0, x19
  10005b508  bl      _objc_msgSend                            ; [self pauseGame]
  10005b50c  ldr     x2, [x19, x20]                           ; x2 = self->pauseView
  10005b510  adrp    x8, #0x100417000
  10005b514  nop
  10005b518  ldr     x1, [x8, #0x208]
  10005b51c  mov     w3, #0
  10005b520  mov     x4, #0
  10005b524  mov     x0, x19
  10005b528  bl      _objc_msgSend                            ; [self presentViewController:self->pauseView animated:0 completion:0]
  10005b52c  ldp     x29, x30, [sp, #0x10]
  10005b530  ldp     x20, x19, [sp], #0x20
  10005b534  ret

; ======================================================================
; -[ADGameplayViewController skipButtonPressed:]
; address 0x10005b538  size 4  kind objc
; ======================================================================
  10005b538  ret

; ======================================================================
; -[ADGameplayViewController quitGameplayWithFail]
; address 0x10005b53c  size 16  kind objc
; ======================================================================
  10005b53c  adrp    x8, #0x100419000
  10005b540  nop
  10005b544  ldr     x1, [x8, #0x20]
  10005b548  b       _objc_msgSend                            ; [self goToScoreScreen]

; ======================================================================
; -[ADGameplayViewController goToScoreScreen]
; address 0x10005b54c  size 176  kind objc
; ======================================================================
  10005b54c  stp     x22, x21, [sp, #-0x30]!
  10005b550  stp     x20, x19, [sp, #0x10]
  10005b554  stp     x29, x30, [sp, #0x20]
  10005b558  add     x29, sp, #0x20
  10005b55c  adrp    x8, #0x100417000
  10005b560  nop
  10005b564  ldr     x1, [x8, #0xd48]
  10005b568  bl      _objc_msgSend                            ; [self killGameplay]
  10005b56c  adrp    x8, #0x10041d000
  10005b570  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10005b574  adrp    x8, #0x100416000
  10005b578  nop
  10005b57c  ldr     x1, [x8, #0xb28]
  10005b580  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10005b584  mov     x29, x29
  10005b588  bl      _objc_retainAutoreleasedReturnValue
  10005b58c  mov     x19, x0
  10005b590  adrp    x8, #0x100416000
  10005b594  nop
  10005b598  ldr     x1, [x8, #0xc18]
  10005b59c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10005b5a0  mov     x29, x29
  10005b5a4  bl      _objc_retainAutoreleasedReturnValue
  10005b5a8  mov     x20, x0
  10005b5ac  adrp    x8, #0x100419000
  10005b5b0  nop
  10005b5b4  ldr     x1, [x8, #0xf8]
  10005b5b8  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToGameOverEndless]
  10005b5bc  mov     x0, x20
  10005b5c0  bl      _objc_release
  10005b5c4  mov     x0, x19
  10005b5c8  ldp     x29, x30, [sp, #0x20]
  10005b5cc  ldp     x20, x19, [sp, #0x10]
  10005b5d0  ldp     x22, x21, [sp], #0x30
  10005b5d4  b       _objc_release
  10005b5d8  mov     x21, x0
  10005b5dc  b       loc_10005b5ec
  10005b5e0  mov     x21, x0
  10005b5e4  mov     x0, x20
  10005b5e8  bl      _objc_release
loc_10005b5ec:
  10005b5ec  mov     x0, x19
  10005b5f0  bl      _objc_release
  10005b5f4  mov     x0, x21
  10005b5f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController pauseGame]
; address 0x10005b5fc  size 284  kind objc
; ======================================================================
  10005b5fc  stp     x20, x19, [sp, #-0x20]!
  10005b600  stp     x29, x30, [sp, #0x10]
  10005b604  add     x29, sp, #0x10
  10005b608  mov     x19, x0
  10005b60c  adrp    x8, #0x100419000
  10005b610  nop
  10005b614  ldr     x1, [x8, #0x100]
  10005b618  bl      _objc_msgSend                            ; [self stopTimers]
  10005b61c  adrp    x8, #0x10041e000
  10005b620  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005b624  adrp    x8, #0x100417000
  10005b628  nop
  10005b62c  ldr     x1, [x8, #0xaa8]
  10005b630  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005b634  mov     x29, x29
  10005b638  bl      _objc_retainAutoreleasedReturnValue
  10005b63c  mov     x20, x0
  10005b640  adrp    x8, #0x100419000
  10005b644  nop
  10005b648  ldr     x1, [x8, #0x108]
  10005b64c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] pauseAllBricks]
  10005b650  mov     x0, x20
  10005b654  bl      _objc_release
  10005b658  adrp    x8, #0x10041e000
  10005b65c  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  10005b660  adrp    x8, #0x100418000
  10005b664  nop
  10005b668  ldr     x1, [x8, #0xf58]
  10005b66c  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  10005b670  mov     x29, x29
  10005b674  bl      _objc_retainAutoreleasedReturnValue
  10005b678  mov     x20, x0
  10005b67c  adrp    x8, #0x100419000
  10005b680  nop
  10005b684  ldr     x1, [x8, #0x110]
  10005b688  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] pause]
  10005b68c  mov     x0, x20
  10005b690  bl      _objc_release
  10005b694  adrp    x8, #0x100419000
  10005b698  nop
  10005b69c  ldr     x1, [x8, #0x118]
  10005b6a0  mov     w2, #1
  10005b6a4  mov     x0, x19
  10005b6a8  bl      _objc_msgSend                            ; [self setPaused:1]
  10005b6ac  adrp    x8, #0x10041d000
  10005b6b0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10005b6b4  adrp    x8, #0x100416000
  10005b6b8  nop
  10005b6bc  ldr     x1, [x8, #0xc00]
  10005b6c0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005b6c4  mov     x29, x29
  10005b6c8  bl      _objc_retainAutoreleasedReturnValue
  10005b6cc  mov     x20, x0
  10005b6d0  adrp    x8, #0x100417000
  10005b6d4  nop
  10005b6d8  ldr     x1, [x8, #0x5f8]
  10005b6dc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  10005b6e0  adrp    x8, #0x10041f000
  10005b6e4  ldrsw   x8, [x8, #0xb0c]                         ; ivar offset ADGameplayViewController.announcerValueOnEnteringPause (+0x184)
  10005b6e8  strb    w0, [x19, x8]                            ; self->announcerValueOnEnteringPause = [[ADGameParameters sharedParameters] lastAnnouncerValue]
  10005b6ec  mov     x0, x20
  10005b6f0  ldp     x29, x30, [sp, #0x10]
  10005b6f4  ldp     x20, x19, [sp], #0x20
  10005b6f8  b       _objc_release
  10005b6fc  b       loc_10005b704
  10005b700  b       loc_10005b704
loc_10005b704:
  10005b704  mov     x19, x0
  10005b708  mov     x0, x20
  10005b70c  bl      _objc_release
  10005b710  mov     x0, x19
  10005b714  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController resumeGame]
; address 0x10005b718  size 612  kind objc
; ======================================================================
  10005b718  stp     x24, x23, [sp, #-0x40]!
  10005b71c  stp     x22, x21, [sp, #0x10]
  10005b720  stp     x20, x19, [sp, #0x20]
  10005b724  stp     x29, x30, [sp, #0x30]
  10005b728  add     x29, sp, #0x30
  10005b72c  mov     x19, x0
  10005b730  adrp    x8, #0x100417000
  10005b734  nop
  10005b738  ldr     x1, [x8, #0xcb8]
  10005b73c  bl      _objc_msgSend                            ; [self startUpdateTimers]
  10005b740  adrp    x8, #0x10041e000
  10005b744  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005b748  adrp    x8, #0x100417000
  10005b74c  nop
  10005b750  ldr     x1, [x8, #0xaa8]
  10005b754  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005b758  mov     x29, x29
  10005b75c  bl      _objc_retainAutoreleasedReturnValue
  10005b760  mov     x21, x0
  10005b764  adrp    x8, #0x100419000
  10005b768  nop
  10005b76c  ldr     x1, [x8, #0x120]
  10005b770  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] resumeAllBricks]
  10005b774  mov     x0, x21
  10005b778  bl      _objc_release
  10005b77c  adrp    x8, #0x10041e000
  10005b780  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  10005b784  adrp    x8, #0x100418000
  10005b788  nop
  10005b78c  ldr     x1, [x8, #0xf58]
  10005b790  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  10005b794  mov     x29, x29
  10005b798  bl      _objc_retainAutoreleasedReturnValue
  10005b79c  mov     x21, x0
  10005b7a0  adrp    x8, #0x100419000
  10005b7a4  nop
  10005b7a8  ldr     x1, [x8, #0x128]
  10005b7ac  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] resume]
  10005b7b0  mov     x0, x21
  10005b7b4  bl      _objc_release
  10005b7b8  adrp    x8, #0x10041f000
  10005b7bc  ldrsw   x8, [x8, #0xb08]                         ; ivar offset ADGameplayViewController.pauseView (+0x170)
  10005b7c0  ldr     x0, [x19, x8]                            ; x0 = self->pauseView
  10005b7c4  str     xzr, [x19, x8]                           ; self->pauseView = 0
  10005b7c8  bl      _objc_release
  10005b7cc  adrp    x8, #0x100419000
  10005b7d0  nop
  10005b7d4  ldr     x1, [x8, #0x118]
  10005b7d8  mov     w2, #0
  10005b7dc  mov     x0, x19
  10005b7e0  bl      _objc_msgSend                            ; [self setPaused:0]
  10005b7e4  adrp    x8, #0x10041f000
  10005b7e8  ldrsw   x8, [x8, #0xb0c]                         ; ivar offset ADGameplayViewController.announcerValueOnEnteringPause (+0x184)
  10005b7ec  ldrb    w24, [x19, x8]                           ; w24 = self->announcerValueOnEnteringPause
  10005b7f0  adrp    x23, #0x10041d000
  10005b7f4  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  10005b7f8  adrp    x8, #0x100416000
  10005b7fc  nop
  10005b800  ldr     x19, [x8, #0xc00]
  10005b804  mov     x1, x19
  10005b808  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005b80c  mov     x29, x29
  10005b810  bl      _objc_retainAutoreleasedReturnValue
  10005b814  mov     x21, x0
  10005b818  adrp    x8, #0x100417000
  10005b81c  nop
  10005b820  ldr     x20, [x8, #0x5f8]
  10005b824  mov     x1, x20
  10005b828  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  10005b82c  mov     x22, x0
  10005b830  mov     x0, x21
  10005b834  bl      _objc_release
  10005b838  cmp     w24, w22
  10005b83c  b.ne    loc_10005b854                            ; if (self->announcerValueOnEnteringPause != [[ADGameParameters sharedParameters] lastAnnouncerValue])
  10005b840  ldp     x29, x30, [sp, #0x30]
  10005b844  ldp     x20, x19, [sp, #0x20]
  10005b848  ldp     x22, x21, [sp, #0x10]
  10005b84c  ldp     x24, x23, [sp], #0x40
  10005b850  ret
loc_10005b854:
  10005b854  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  10005b858  mov     x1, x19
  10005b85c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005b860  mov     x29, x29
  10005b864  bl      _objc_retainAutoreleasedReturnValue
  10005b868  mov     x19, x0
  10005b86c  mov     x1, x20
  10005b870  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  10005b874  mov     x20, x0
  10005b878  mov     x0, x19
  10005b87c  bl      _objc_release
  10005b880  adrp    x8, #0x10041d000
  10005b884  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10005b888  adrp    x8, #0x100417000
  10005b88c  nop
  10005b890  ldr     x1, [x8, #0x4f0]
  10005b894  bl      _objc_msgSend                            ; [S3DEngine engine]
  10005b898  mov     x29, x29
  10005b89c  bl      _objc_retainAutoreleasedReturnValue
  10005b8a0  mov     x19, x0
  10005b8a4  adrp    x8, #0x100417000
  10005b8a8  add     x8, x8, #0x4f8                           ; &@selector(playListWithName:)
  10005b8ac  ldr     x1, [x8]
  10005b8b0  cbz     w20, loc_10005b8e8                       ; if ([[ADGameParameters sharedParameters] lastAnnouncerValue] == 0)
  10005b8b4  adrp    x2, #0x1003ba000
  10005b8b8  add     x2, x2, #0x830                           ; @"announcer"
  10005b8bc  mov     x0, x19
  10005b8c0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"announcer"]
  10005b8c4  mov     x29, x29
  10005b8c8  bl      _objc_retainAutoreleasedReturnValue
  10005b8cc  mov     x21, x0
  10005b8d0  adrp    x8, #0x100417000
  10005b8d4  nop
  10005b8d8  ldr     x1, [x8, #0x508]
  10005b8dc  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"announcer"] activate]
  10005b8e0  b       loc_10005b914
  10005b8e4  b       loc_10005b960
loc_10005b8e8:
  10005b8e8  adrp    x2, #0x1003ba000
  10005b8ec  add     x2, x2, #0x830                           ; @"announcer"
  10005b8f0  mov     x0, x19
  10005b8f4  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"announcer"]
  10005b8f8  mov     x29, x29
  10005b8fc  bl      _objc_retainAutoreleasedReturnValue
  10005b900  mov     x21, x0
  10005b904  adrp    x8, #0x100417000
  10005b908  nop
  10005b90c  ldr     x1, [x8, #0x618]
  10005b910  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"announcer"] deactivate]
loc_10005b914:
  10005b914  mov     x0, x21
  10005b918  bl      _objc_release
  10005b91c  mov     x0, x19
  10005b920  ldp     x29, x30, [sp, #0x30]
  10005b924  ldp     x20, x19, [sp, #0x20]
  10005b928  ldp     x22, x21, [sp, #0x10]
  10005b92c  ldp     x24, x23, [sp], #0x40
  10005b930  b       _objc_release
  10005b934  b       loc_10005b93c
  10005b938  b       loc_10005b93c
loc_10005b93c:
  10005b93c  mov     x20, x0
  10005b940  mov     x0, x21
  10005b944  b       loc_10005b970
  10005b948  mov     x20, x0
  10005b94c  b       loc_10005b96c
  10005b950  mov     x20, x0
  10005b954  b       loc_10005b96c
  10005b958  mov     x20, x0
  10005b95c  b       loc_10005b96c
loc_10005b960:
  10005b960  mov     x20, x0
  10005b964  mov     x0, x21
  10005b968  bl      _objc_release
loc_10005b96c:
  10005b96c  mov     x0, x19
loc_10005b970:
  10005b970  bl      _objc_release
  10005b974  mov     x0, x20
  10005b978  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController showDeathOverlay]
; address 0x10005b97c  size 252  kind objc
; ======================================================================
  10005b97c  stp     x22, x21, [sp, #-0x30]!
  10005b980  stp     x20, x19, [sp, #0x10]
  10005b984  stp     x29, x30, [sp, #0x20]
  10005b988  add     x29, sp, #0x20
  10005b98c  mov     x19, x0
  10005b990  adrp    x8, #0x100416000
  10005b994  nop
  10005b998  ldr     x1, [x8, #0xf18]
  10005b99c  bl      _objc_msgSend                            ; [self view]
  10005b9a0  mov     x29, x29
  10005b9a4  bl      _objc_retainAutoreleasedReturnValue
  10005b9a8  mov     x20, x0
  10005b9ac  adrp    x8, #0x100419000
  10005b9b0  nop
  10005b9b4  ldr     x21, [x8, #0x130]
  10005b9b8  mov     x0, x19
  10005b9bc  mov     x1, x21
  10005b9c0  bl      _objc_msgSend                            ; [self deathOverlay]
  10005b9c4  mov     x29, x29
  10005b9c8  bl      _objc_retainAutoreleasedReturnValue
  10005b9cc  mov     x22, x0
  10005b9d0  adrp    x8, #0x100417000
  10005b9d4  nop
  10005b9d8  ldr     x1, [x8, #0x190]
  10005b9dc  mov     x0, x20
  10005b9e0  mov     x2, x22
  10005b9e4  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self deathOverlay]]
  10005b9e8  mov     x0, x22
  10005b9ec  bl      _objc_release
  10005b9f0  mov     x0, x20
  10005b9f4  bl      _objc_release
  10005b9f8  mov     x0, x19
  10005b9fc  mov     x1, x21
  10005ba00  bl      _objc_msgSend                            ; [self deathOverlay]
  10005ba04  mov     x29, x29
  10005ba08  bl      _objc_retainAutoreleasedReturnValue
  10005ba0c  mov     x20, x0
  10005ba10  adrp    x8, #0x100417000
  10005ba14  nop
  10005ba18  ldr     x1, [x8, #0x998]
  10005ba1c  mov     w2, #1
  10005ba20  bl      _objc_msgSend                            ; [[self deathOverlay] setUserInteractionEnabled:1]
  10005ba24  mov     x0, x20
  10005ba28  bl      _objc_release
  10005ba2c  adrp    x8, #0x100419000
  10005ba30  nop
  10005ba34  ldr     x1, [x8, #0x118]
  10005ba38  mov     w2, #1
  10005ba3c  mov     x0, x19
  10005ba40  ldp     x29, x30, [sp, #0x20]
  10005ba44  ldp     x20, x19, [sp, #0x10]
  10005ba48  ldp     x22, x21, [sp], #0x30
  10005ba4c  b       _objc_msgSend                            ; [self setPaused:1]
  10005ba50  b       loc_10005ba64
  10005ba54  mov     x19, x0
  10005ba58  mov     x0, x22
  10005ba5c  bl      _objc_release
  10005ba60  b       loc_10005ba68
loc_10005ba64:
  10005ba64  mov     x19, x0
loc_10005ba68:
  10005ba68  mov     x0, x20
  10005ba6c  bl      _objc_release
  10005ba70  mov     x0, x19
  10005ba74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController showReviveView]
; address 0x10005ba78  size 968  kind objc
; ======================================================================
  10005ba78  stp     x24, x23, [sp, #-0x40]!
  10005ba7c  stp     x22, x21, [sp, #0x10]
  10005ba80  stp     x20, x19, [sp, #0x20]
  10005ba84  stp     x29, x30, [sp, #0x30]
  10005ba88  add     x29, sp, #0x30
  10005ba8c  sub     sp, sp, #0x30
  10005ba90  mov     x19, x0
  10005ba94  adrp    x8, #0x10041e000
  10005ba98  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  10005ba9c  adrp    x8, #0x100418000
  10005baa0  nop
  10005baa4  ldr     x1, [x8, #0xf58]
  10005baa8  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  10005baac  mov     x29, x29
  10005bab0  bl      _objc_retainAutoreleasedReturnValue
  10005bab4  mov     x20, x0
  10005bab8  adrp    x8, #0x100419000
  10005babc  nop
  10005bac0  ldr     x1, [x8, #0x138]
  10005bac4  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] stopAmbient]
  10005bac8  mov     x0, x20
  10005bacc  bl      _objc_release
  10005bad0  adrp    x8, #0x10041e000
  10005bad4  ldr     x0, [x8]                                 ; class ADGameModifiers
  10005bad8  adrp    x8, #0x100417000
  10005badc  nop
  10005bae0  ldr     x1, [x8, #0x510]
  10005bae4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10005bae8  mov     x29, x29
  10005baec  bl      _objc_retainAutoreleasedReturnValue
  10005baf0  mov     x21, x0
  10005baf4  adrp    x8, #0x100419000
  10005baf8  nop
  10005bafc  ldr     x1, [x8, #0x140]
  10005bb00  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] freeRevive]
  10005bb04  mov     x20, x0
  10005bb08  mov     x0, x21
  10005bb0c  bl      _objc_release
  10005bb10  adrp    x8, #0x10041e000
  10005bb14  ldr     x0, [x8, #0x220]                         ; class ADReviveViewController
  10005bb18  adrp    x8, #0x100416000
  10005bb1c  nop
  10005bb20  ldr     x1, [x8, #0xac8]
  10005bb24  bl      _objc_msgSend                            ; [ADReviveViewController alloc]
  10005bb28  mov     x21, x0
  10005bb2c  adrp    x8, #0x10041f000
  10005bb30  ldrsw   x23, [x8, #0xaf0]                        ; ivar offset ADGameplayViewController.nbRevives (+0x180)
  10005bb34  ldr     w8, [x19, x23]                           ; w8 = self->nbRevives
  10005bb38  sub     w0, w8, w20
  10005bb3c  fmov    d0, #1.00000000
  10005bb40  bl      _ldexp                                   ; ldexp(1)
  10005bb44  fcvtzs  w2, d0
  10005bb48  adrp    x8, #0x100419000
  10005bb4c  nop
  10005bb50  ldr     x1, [x8, #0x148]
  10005bb54  mov     x0, x21
  10005bb58  bl      _objc_msgSend                            ; [[ADReviveViewController alloc] initWithCost:(int)ldexp(1)]
  10005bb5c  adrp    x8, #0x10041f000
  10005bb60  ldrsw   x24, [x8, #0xb10]                        ; ivar offset ADGameplayViewController.reviveViewController (+0x178)
  10005bb64  ldr     x8, [x19, x24]                           ; x8 = self->reviveViewController
  10005bb68  str     x0, [x19, x24]                           ; self->reviveViewController = [[ADReviveViewController alloc] initWithCost:(int)ldexp(1)]
  10005bb6c  mov     x0, x8
  10005bb70  bl      _objc_release
  10005bb74  ldr     x0, [x19, x24]                           ; x0 = self->reviveViewController
  10005bb78  adrp    x8, #0x100417000
  10005bb7c  nop
  10005bb80  ldr     x1, [x8, #0xc10]
  10005bb84  mov     x2, x19
  10005bb88  bl      _objc_msgSend                            ; [self->reviveViewController setGameplayViewController:self]
  10005bb8c  adrp    x8, #0x100416000
  10005bb90  nop
  10005bb94  ldr     x20, [x8, #0xf18]
  10005bb98  mov     x0, x19
  10005bb9c  mov     x1, x20
  10005bba0  bl      _objc_msgSend                            ; [self view]
  10005bba4  mov     x29, x29
  10005bba8  bl      _objc_retainAutoreleasedReturnValue
  10005bbac  mov     x21, x0
  10005bbb0  ldr     x0, [x19, x24]                           ; x0 = self->reviveViewController
  10005bbb4  mov     x1, x20
  10005bbb8  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005bbbc  mov     x29, x29
  10005bbc0  bl      _objc_retainAutoreleasedReturnValue
  10005bbc4  mov     x22, x0
  10005bbc8  adrp    x8, #0x100416000
  10005bbcc  nop
  10005bbd0  ldr     x1, [x8, #0xf20]
  10005bbd4  mov     x0, x21
  10005bbd8  mov     x2, x22
  10005bbdc  bl      _objc_msgSend                            ; [[self view] addSubview:[self->reviveViewController view]]
  10005bbe0  mov     x0, x22
  10005bbe4  bl      _objc_release
  10005bbe8  mov     x0, x21
  10005bbec  bl      _objc_release
  10005bbf0  ldr     x0, [x19, x24]                           ; x0 = self->reviveViewController
  10005bbf4  mov     x1, x20
  10005bbf8  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005bbfc  mov     x29, x29
  10005bc00  bl      _objc_retainAutoreleasedReturnValue
  10005bc04  mov     x21, x0
  10005bc08  adrp    x8, #0x100419000
  10005bc0c  nop
  10005bc10  ldr     x1, [x8, #0x130]
  10005bc14  mov     x0, x19
  10005bc18  bl      _objc_msgSend                            ; [self deathOverlay]
  10005bc1c  mov     x29, x29
  10005bc20  bl      _objc_retainAutoreleasedReturnValue
  10005bc24  mov     x22, x0
  10005bc28  adrp    x8, #0x100417000
  10005bc2c  nop
  10005bc30  ldr     x1, [x8, #0x688]
  10005bc34  bl      _objc_msgSend                            ; [[self deathOverlay] center]
  10005bc38  adrp    x8, #0x100417000
  10005bc3c  nop
  10005bc40  ldr     x1, [x8, #0x1f8]
  10005bc44  mov     x0, x21
  10005bc48  bl      _objc_msgSend                            ; [[self->reviveViewController view] setCenter:{[[self deathOverlay] center].0, [[self deathOverlay] center].1}]
  10005bc4c  mov     x0, x22
  10005bc50  bl      _objc_release
  10005bc54  mov     x0, x21
  10005bc58  bl      _objc_release
  10005bc5c  mov     x0, x19
  10005bc60  mov     x1, x20
  10005bc64  bl      _objc_msgSend                            ; [self view]
  10005bc68  mov     x29, x29
  10005bc6c  bl      _objc_retainAutoreleasedReturnValue
  10005bc70  mov     x21, x0
  10005bc74  ldr     x0, [x19, x24]                           ; x0 = self->reviveViewController
  10005bc78  mov     x1, x20
  10005bc7c  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005bc80  mov     x29, x29
  10005bc84  bl      _objc_retainAutoreleasedReturnValue
  10005bc88  mov     x22, x0
  10005bc8c  adrp    x8, #0x100417000
  10005bc90  nop
  10005bc94  ldr     x1, [x8, #0x190]
  10005bc98  mov     x0, x21
  10005bc9c  mov     x2, x22
  10005bca0  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self->reviveViewController view]]
  10005bca4  mov     x0, x22
  10005bca8  bl      _objc_release
  10005bcac  mov     x0, x21
  10005bcb0  bl      _objc_release
  10005bcb4  ldr     x0, [x19, x24]                           ; x0 = self->reviveViewController
  10005bcb8  mov     x1, x20
  10005bcbc  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005bcc0  mov     x29, x29
  10005bcc4  bl      _objc_retainAutoreleasedReturnValue
  10005bcc8  mov     x21, x0
  10005bccc  adrp    x8, #0x100418000
  10005bcd0  nop
  10005bcd4  ldr     x1, [x8, #0x618]
  10005bcd8  mov     w2, #1
  10005bcdc  bl      _objc_msgSend                            ; [[self->reviveViewController view] setAccessibilityViewIsModal:1]
  10005bce0  mov     x0, x21
  10005bce4  bl      _objc_release
  10005bce8  adrp    x8, #0x1003b0000
  10005bcec  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  10005bcf0  ldr     w22, [x8]                                ; w22 = _UIAccessibilityScreenChangedNotification[+0x0]
  10005bcf4  ldr     x0, [x19, x24]                           ; x0 = self->reviveViewController
  10005bcf8  mov     x1, x20
  10005bcfc  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005bd00  mov     x29, x29
  10005bd04  bl      _objc_retainAutoreleasedReturnValue
  10005bd08  mov     x21, x0
  10005bd0c  mov     x0, x22
  10005bd10  mov     x1, x21
  10005bd14  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [self->reviveViewController view])
  10005bd18  mov     x0, x21
  10005bd1c  bl      _objc_release
  10005bd20  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10005bd24  tbnz    w0, #0, loc_10005bdc0                    ; if ((UIAccessibilityIsVoiceOverRunning() & 1))
  10005bd28  ldr     x0, [x19, x24]                           ; x0 = self->reviveViewController
  10005bd2c  mov     x1, x20
  10005bd30  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005bd34  mov     x29, x29
  10005bd38  bl      _objc_retainAutoreleasedReturnValue
  10005bd3c  mov     x20, x0
  10005bd40  adrp    x8, #0x100417000
  10005bd44  nop
  10005bd48  ldr     x1, [x8, #0x828]
  10005bd4c  movi    v0.16b, #0
  10005bd50  bl      _objc_msgSend                            ; [[self->reviveViewController view] setAlpha:0]
  10005bd54  mov     x0, x20
  10005bd58  bl      _objc_release
  10005bd5c  adrp    x8, #0x1003b0000
  10005bd60  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10005bd64  adrp    x9, #0x10041d000
  10005bd68  ldr     x20, [x9, #0xf98]                        ; class UIView
  10005bd6c  mov     w9, #-0x3e000000
  10005bd70  str     x8, [sp, #8]
  10005bd74  stp     w9, wzr, [sp, #0x10]
  10005bd78  adr     x8, #0x10005be40                         ; &-[ADGameplayViewController showReviveView]_block_invoke
  10005bd7c  nop
  10005bd80  str     x8, [sp, #0x18]
  10005bd84  adrp    x8, #0x1003b1000
  10005bd88  add     x8, x8, #0xa80                           ; &d_1003b1a80
  10005bd8c  str     x8, [sp, #0x20]
  10005bd90  mov     x0, x19
  10005bd94  bl      _objc_retain
  10005bd98  str     x0, [sp, #0x28]
  10005bd9c  adrp    x8, #0x100418000
  10005bda0  nop
  10005bda4  ldr     x1, [x8, #0x3b8]
  10005bda8  fmov    d0, #1.00000000
  10005bdac  add     x2, sp, #8
  10005bdb0  mov     x0, x20
  10005bdb4  bl      _objc_msgSend                            ; [UIView animateWithDuration:1 animations:^{-[ADGameplayViewController showReviveView]_block_invoke captures +0x20=self}]
  10005bdb8  ldr     x0, [sp, #0x28]
  10005bdbc  bl      _objc_release
loc_10005bdc0:
  10005bdc0  ldr     w8, [x19, x23]                           ; w8 = self->nbRevives
  10005bdc4  add     w8, w8, #1
  10005bdc8  str     w8, [x19, x23]                           ; self->nbRevives = (self->nbRevives + 1)
  10005bdcc  sub     sp, x29, #0x30
  10005bdd0  ldp     x29, x30, [sp, #0x30]
  10005bdd4  ldp     x20, x19, [sp, #0x20]
  10005bdd8  ldp     x22, x21, [sp, #0x10]
  10005bddc  ldp     x24, x23, [sp], #0x40
  10005bde0  ret
  10005bde4  b       loc_10005be00
  10005bde8  b       loc_10005be28
  10005bdec  b       loc_10005be14
  10005bdf0  b       loc_10005be14
  10005bdf4  b       loc_10005be00
  10005bdf8  b       loc_10005be14
  10005bdfc  b       loc_10005be14
loc_10005be00:
  10005be00  mov     x19, x0
  10005be04  mov     x0, x22
  10005be08  bl      _objc_release
  10005be0c  b       loc_10005be18
  10005be10  b       loc_10005be14
loc_10005be14:
  10005be14  mov     x19, x0
loc_10005be18:
  10005be18  mov     x0, x21
loc_10005be1c:
  10005be1c  bl      _objc_release
  10005be20  mov     x0, x19
  10005be24  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_10005be28:
  10005be28  mov     x19, x0
  10005be2c  mov     x0, x20
  10005be30  b       loc_10005be1c
  10005be34  mov     x19, x0
  10005be38  ldr     x0, [sp, #0x28]
  10005be3c  b       loc_10005be1c

; ======================================================================
; -[ADGameplayViewController showReviveView]_block_invoke
; address 0x10005be40  size 112  kind block
; ======================================================================
  10005be40  stp     x20, x19, [sp, #-0x20]!
  10005be44  stp     x29, x30, [sp, #0x10]
  10005be48  add     x29, sp, #0x10
  10005be4c  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  10005be50  adrp    x9, #0x10041f000
  10005be54  ldrsw   x9, [x9, #0xb10]                         ; ivar offset ADGameplayViewController.reviveViewController (+0x178)
  10005be58  ldr     x0, [x8, x9]                             ; x0 = self->reviveViewController
  10005be5c  adrp    x8, #0x100416000
  10005be60  nop
  10005be64  ldr     x1, [x8, #0xf18]
  10005be68  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005be6c  mov     x29, x29
  10005be70  bl      _objc_retainAutoreleasedReturnValue
  10005be74  mov     x19, x0
  10005be78  adrp    x8, #0x100417000
  10005be7c  nop
  10005be80  ldr     x1, [x8, #0x828]
  10005be84  fmov    d0, #1.00000000
  10005be88  bl      _objc_msgSend                            ; [[self->reviveViewController view] setAlpha:1]
  10005be8c  mov     x0, x19
  10005be90  ldp     x29, x30, [sp, #0x10]
  10005be94  ldp     x20, x19, [sp], #0x20
  10005be98  b       _objc_release
  10005be9c  mov     x20, x0
  10005bea0  mov     x0, x19
  10005bea4  bl      _objc_release
  10005bea8  mov     x0, x20
  10005beac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10005beb0
; address 0x10005beb0  size 8  kind sub
; ======================================================================
  10005beb0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10005beb4  b       _objc_retain

; ======================================================================
; sub_10005beb8
; address 0x10005beb8  size 8  kind sub
; ======================================================================
  10005beb8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10005bebc  b       _objc_release

; ======================================================================
; -[ADGameplayViewController revive]
; address 0x10005bec0  size 588  kind objc
; ======================================================================
  10005bec0  stp     x24, x23, [sp, #-0x40]!
  10005bec4  stp     x22, x21, [sp, #0x10]
  10005bec8  stp     x20, x19, [sp, #0x20]
  10005becc  stp     x29, x30, [sp, #0x30]
  10005bed0  add     x29, sp, #0x30
  10005bed4  mov     x19, x0
  10005bed8  adrp    x8, #0x10041d000
  10005bedc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10005bee0  adrp    x8, #0x100417000
  10005bee4  nop
  10005bee8  ldr     x1, [x8, #0x228]
  10005beec  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005bef0  mov     x29, x29
  10005bef4  bl      _objc_retainAutoreleasedReturnValue
  10005bef8  mov     x20, x0
  10005befc  adrp    x8, #0x100419000
  10005bf00  nop
  10005bf04  ldr     x1, [x8, #0x150]
  10005bf08  mov     w2, #0xa
  10005bf0c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] setCombo:10]
  10005bf10  mov     x0, x20
  10005bf14  bl      _objc_release
  10005bf18  adrp    x8, #0x100418000
  10005bf1c  nop
  10005bf20  ldr     x1, [x8, #0xfe8]
  10005bf24  mov     w2, #0
  10005bf28  mov     x0, x19
  10005bf2c  bl      _objc_msgSend                            ; [self updateScoreViewWithAnimation:0]
  10005bf30  adrp    x8, #0x100419000
  10005bf34  nop
  10005bf38  ldr     x21, [x8, #0x130]
  10005bf3c  mov     x0, x19
  10005bf40  mov     x1, x21
  10005bf44  bl      _objc_msgSend                            ; [self deathOverlay]
  10005bf48  mov     x29, x29
  10005bf4c  bl      _objc_retainAutoreleasedReturnValue
  10005bf50  mov     x20, x0
  10005bf54  adrp    x8, #0x100418000
  10005bf58  nop
  10005bf5c  ldr     x1, [x8, #0x618]
  10005bf60  mov     w2, #0
  10005bf64  bl      _objc_msgSend                            ; [[self deathOverlay] setAccessibilityViewIsModal:0]
  10005bf68  mov     x0, x20
  10005bf6c  bl      _objc_release
  10005bf70  adrp    x8, #0x100416000
  10005bf74  nop
  10005bf78  ldr     x20, [x8, #0xf18]
  10005bf7c  mov     x0, x19
  10005bf80  mov     x1, x20
  10005bf84  bl      _objc_msgSend                            ; [self view]
  10005bf88  mov     x29, x29
  10005bf8c  bl      _objc_retainAutoreleasedReturnValue
  10005bf90  mov     x22, x0
  10005bf94  mov     x0, x19
  10005bf98  mov     x1, x21
  10005bf9c  bl      _objc_msgSend                            ; [self deathOverlay]
  10005bfa0  mov     x29, x29
  10005bfa4  bl      _objc_retainAutoreleasedReturnValue
  10005bfa8  mov     x23, x0
  10005bfac  adrp    x8, #0x100417000
  10005bfb0  nop
  10005bfb4  ldr     x1, [x8, #0x820]
  10005bfb8  mov     x0, x22
  10005bfbc  mov     x2, x23
  10005bfc0  bl      _objc_msgSend                            ; [[self view] sendSubviewToBack:[self deathOverlay]]
  10005bfc4  mov     x0, x23
  10005bfc8  bl      _objc_release
  10005bfcc  mov     x0, x22
  10005bfd0  bl      _objc_release
  10005bfd4  mov     x0, x19
  10005bfd8  mov     x1, x21
  10005bfdc  bl      _objc_msgSend                            ; [self deathOverlay]
  10005bfe0  mov     x29, x29
  10005bfe4  bl      _objc_retainAutoreleasedReturnValue
  10005bfe8  mov     x21, x0
  10005bfec  adrp    x8, #0x100417000
  10005bff0  nop
  10005bff4  ldr     x1, [x8, #0x998]
  10005bff8  mov     w2, #0
  10005bffc  bl      _objc_msgSend                            ; [[self deathOverlay] setUserInteractionEnabled:0]
  10005c000  mov     x0, x21
  10005c004  bl      _objc_release
  10005c008  adrp    x8, #0x10041f000
  10005c00c  ldrsw   x21, [x8, #0xb10]                        ; ivar offset ADGameplayViewController.reviveViewController (+0x178)
  10005c010  ldr     x0, [x19, x21]                           ; x0 = self->reviveViewController
  10005c014  mov     x1, x20
  10005c018  bl      _objc_msgSend                            ; [self->reviveViewController view]
  10005c01c  mov     x29, x29
  10005c020  bl      _objc_retainAutoreleasedReturnValue
  10005c024  mov     x20, x0
  10005c028  adrp    x8, #0x100417000
  10005c02c  nop
  10005c030  ldr     x1, [x8, #0x1d0]
  10005c034  bl      _objc_msgSend                            ; [[self->reviveViewController view] removeFromSuperview]
  10005c038  mov     x0, x20
  10005c03c  bl      _objc_release
  10005c040  ldr     x0, [x19, x21]                           ; x0 = self->reviveViewController
  10005c044  str     xzr, [x19, x21]                          ; self->reviveViewController = 0
  10005c048  bl      _objc_release
  10005c04c  adrp    x8, #0x100419000
  10005c050  nop
  10005c054  ldr     x1, [x8, #0x118]
  10005c058  mov     w2, #0
  10005c05c  mov     x0, x19
  10005c060  bl      _objc_msgSend                            ; [self setPaused:0]
  10005c064  adrp    x8, #0x10041e000
  10005c068  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005c06c  adrp    x8, #0x100417000
  10005c070  nop
  10005c074  ldr     x1, [x8, #0xaa8]
  10005c078  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005c07c  mov     x29, x29
  10005c080  bl      _objc_retainAutoreleasedReturnValue
  10005c084  mov     x20, x0
  10005c088  adrp    x8, #0x100417000
  10005c08c  nop
  10005c090  ldr     x1, [x8, #0xac8]
  10005c094  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] revive]
  10005c098  mov     x0, x20
  10005c09c  bl      _objc_release
  10005c0a0  adrp    x8, #0x100417000
  10005c0a4  nop
  10005c0a8  ldr     x1, [x8, #0xca8]
  10005c0ac  mov     x0, x19
  10005c0b0  ldp     x29, x30, [sp, #0x30]
  10005c0b4  ldp     x20, x19, [sp, #0x20]
  10005c0b8  ldp     x22, x21, [sp, #0x10]
  10005c0bc  ldp     x24, x23, [sp], #0x40
  10005c0c0  b       _objc_msgSend                            ; [self initAmbiantManager]
  10005c0c4  b       loc_10005c0f8
  10005c0c8  b       loc_10005c0f8
  10005c0cc  mov     x19, x0
  10005c0d0  b       loc_10005c0e0
  10005c0d4  mov     x19, x0
  10005c0d8  mov     x0, x23
  10005c0dc  bl      _objc_release
loc_10005c0e0:
  10005c0e0  mov     x0, x22
  10005c0e4  b       loc_10005c100
  10005c0e8  mov     x19, x0
  10005c0ec  mov     x0, x21
  10005c0f0  b       loc_10005c100
  10005c0f4  b       loc_10005c0f8
loc_10005c0f8:
  10005c0f8  mov     x19, x0
  10005c0fc  mov     x0, x20
loc_10005c100:
  10005c100  bl      _objc_release
  10005c104  mov     x0, x19
  10005c108  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController gameOver]
; address 0x10005c10c  size 100  kind objc
; ======================================================================
  10005c10c  stp     x20, x19, [sp, #-0x20]!
  10005c110  stp     x29, x30, [sp, #0x10]
  10005c114  add     x29, sp, #0x10
  10005c118  adrp    x8, #0x10041e000
  10005c11c  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005c120  adrp    x8, #0x100417000
  10005c124  nop
  10005c128  ldr     x1, [x8, #0xaa8]
  10005c12c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005c130  mov     x29, x29
  10005c134  bl      _objc_retainAutoreleasedReturnValue
  10005c138  mov     x19, x0
  10005c13c  adrp    x8, #0x100417000
  10005c140  nop
  10005c144  ldr     x1, [x8, #0xaf0]
  10005c148  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] gameOver]
  10005c14c  mov     x0, x19
  10005c150  ldp     x29, x30, [sp, #0x10]
  10005c154  ldp     x20, x19, [sp], #0x20
  10005c158  b       _objc_release
  10005c15c  mov     x20, x0
  10005c160  mov     x0, x19
  10005c164  bl      _objc_release
  10005c168  mov     x0, x20
  10005c16c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameplayViewController killGameplay]
; address 0x10005c170  size 1536  kind objc
; ======================================================================
  10005c170  stp     x28, x27, [sp, #-0x60]!
  10005c174  stp     x26, x25, [sp, #0x10]
  10005c178  stp     x24, x23, [sp, #0x20]
  10005c17c  stp     x22, x21, [sp, #0x30]
  10005c180  stp     x20, x19, [sp, #0x40]
  10005c184  stp     x29, x30, [sp, #0x50]
  10005c188  add     x29, sp, #0x50
  10005c18c  sub     sp, sp, #0x100
  10005c190  mov     x19, x0
  10005c194  adrp    x24, #0x1003b0000
  10005c198  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10005c19c  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10005c1a0  stur    x24, [x29, #-0x58]
  10005c1a4  adrp    x8, #0x100419000
  10005c1a8  nop
  10005c1ac  ldr     x1, [x8, #0x100]
  10005c1b0  bl      _objc_msgSend                            ; [self stopTimers]
  10005c1b4  adrp    x8, #0x10041e000
  10005c1b8  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  10005c1bc  adrp    x8, #0x100418000
  10005c1c0  nop
  10005c1c4  ldr     x1, [x8, #0xf58]
  10005c1c8  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  10005c1cc  mov     x29, x29
  10005c1d0  bl      _objc_retainAutoreleasedReturnValue
  10005c1d4  mov     x20, x0
  10005c1d8  adrp    x8, #0x100419000
  10005c1dc  nop
  10005c1e0  ldr     x1, [x8, #0x138]
  10005c1e4  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] stopAmbient]
  10005c1e8  mov     x0, x20
  10005c1ec  bl      _objc_release
  10005c1f0  mov     w1, #0x5f50000
  10005c1f4  movk    w1, #0xe100
  10005c1f8  mov     x0, #0
  10005c1fc  bl      _dispatch_time                           ; dispatch_time(0, 0x5f5e100)
  10005c200  mov     x20, x0
  10005c204  adrp    x8, #0x1003b0000
  10005c208  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10005c20c  mov     w9, #-0x3e000000
  10005c210  adr     x10, #0x10005c770                        ; &-[ADGameplayViewController killGameplay]_block_invoke
  10005c214  nop
  10005c218  str     x8, [sp, #0x48]
  10005c21c  stp     w9, wzr, [sp, #0x50]
  10005c220  adrp    x8, #0x1003b1000
  10005c224  add     x8, x8, #0xab0                           ; &d_1003b1ab0
  10005c228  stp     x10, x8, [sp, #0x58]
  10005c22c  str     x19, [sp, #0x70]
  10005c230  mov     x0, x19
  10005c234  bl      _objc_retain
  10005c238  mov     x19, x0
  10005c23c  str     x19, [sp, #0x68]
  10005c240  adrp    x1, #0x1003b0000
  10005c244  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10005c248  add     x2, sp, #0x48
  10005c24c  mov     x0, x20
  10005c250  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x5f5e100), __dispatch_main_q, ^{-[ADGameplayViewController killGameplay]_block_invoke captures +0x20=self, +0x28=self})
  10005c254  adrp    x8, #0x100417000
  10005c258  nop
  10005c25c  ldr     x1, [x8, #0xce0]
  10005c260  mov     x0, x19
  10005c264  bl      _objc_msgSend                            ; [self weaponTouchArea]
  10005c268  mov     x29, x29
  10005c26c  bl      _objc_retainAutoreleasedReturnValue
  10005c270  mov     x21, x0
  10005c274  adrp    x8, #0x100417000
  10005c278  nop
  10005c27c  ldr     x20, [x8, #0xc10]
  10005c280  mov     x2, #0
  10005c284  mov     x1, x20
  10005c288  bl      _objc_msgSend                            ; [[self weaponTouchArea] setGameplayViewController:0]
  10005c28c  mov     x0, x21
  10005c290  bl      _objc_release
  10005c294  adrp    x8, #0x100417000
  10005c298  nop
  10005c29c  ldr     x1, [x8, #0xa58]
  10005c2a0  mov     x0, x19
  10005c2a4  bl      _objc_msgSend                            ; [self weaponButton]
  10005c2a8  mov     x29, x29
  10005c2ac  bl      _objc_retainAutoreleasedReturnValue
  10005c2b0  mov     x21, x0
  10005c2b4  mov     x2, #0
  10005c2b8  mov     x1, x20
  10005c2bc  bl      _objc_msgSend                            ; [[self weaponButton] setGameplayViewController:0]
  10005c2c0  mov     x0, x21
  10005c2c4  bl      _objc_release
  10005c2c8  adrp    x8, #0x100418000
  10005c2cc  nop
  10005c2d0  ldr     x1, [x8, #0xfd0]
  10005c2d4  mov     x2, #0
  10005c2d8  mov     x0, x19
  10005c2dc  bl      _objc_msgSend                            ; [self setPlayer:0]
  10005c2e0  adrp    x8, #0x10041e000
  10005c2e4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005c2e8  adrp    x8, #0x100417000
  10005c2ec  nop
  10005c2f0  ldr     x1, [x8, #0xaa8]
  10005c2f4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005c2f8  mov     x29, x29
  10005c2fc  bl      _objc_retainAutoreleasedReturnValue
  10005c300  mov     x21, x0
  10005c304  mov     x2, #0
  10005c308  mov     x1, x20
  10005c30c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] setGameplayViewController:0]
  10005c310  mov     x0, x21
  10005c314  bl      _objc_release
  10005c318  adrp    x8, #0x10041f000
  10005c31c  ldrsw   x8, [x8, #0xb14]                         ; ivar offset ADGameplayViewController.panArray (+0x168)
  10005c320  ldr     x0, [x19, x8]                            ; x0 = self->panArray
  10005c324  adrp    x8, #0x100417000
  10005c328  nop
  10005c32c  ldr     x1, [x8, #0x1b8]
  10005c330  bl      _objc_msgSend                            ; [self->panArray removeAllObjects]
  10005c334  stp     xzr, xzr, [sp, #0x38]
  10005c338  stp     xzr, xzr, [sp, #0x28]
  10005c33c  stp     xzr, xzr, [sp, #0x18]
  10005c340  stp     xzr, xzr, [sp, #8]
  10005c344  adrp    x8, #0x100417000
  10005c348  nop
  10005c34c  ldr     x1, [x8, #0xcd0]
  10005c350  mov     x0, x19
  10005c354  bl      _objc_msgSend                            ; [self infiniteScrollViews]
  10005c358  mov     x29, x29
  10005c35c  bl      _objc_retainAutoreleasedReturnValue
  10005c360  mov     x20, x0
  10005c364  adrp    x8, #0x100416000
  10005c368  nop
  10005c36c  ldr     x21, [x8, #0xe00]
  10005c370  add     x2, sp, #8
  10005c374  add     x3, sp, #0x78
  10005c378  mov     w4, #0x10
  10005c37c  mov     x1, x21
  10005c380  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x78] count:16]
  10005c384  mov     x22, x0
  10005c388  cbz     x22, loc_10005c3f8                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x78] count:16] == 0)
  10005c38c  ldr     x8, [sp, #0x18]
  10005c390  ldr     x25, [x8]
  10005c394  adrp    x8, #0x100417000
  10005c398  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  10005c39c  ldr     x23, [x8]
loc_10005c3a0:
  10005c3a0  mov     x26, #0
loc_10005c3a4:
  10005c3a4  ldr     x8, [sp, #0x18]
  10005c3a8  ldr     x8, [x8]
  10005c3ac  cmp     x8, x25
  10005c3b0  b.eq    loc_10005c3bc                            ; if (x8 == x25)
  10005c3b4  mov     x0, x20
  10005c3b8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self infiniteScrollViews])
loc_10005c3bc:
  10005c3bc  ldr     x8, [sp, #0x10]
  10005c3c0  ldr     x0, [x8, x26, lsl #3]
  10005c3c4  mov     x1, x23
  10005c3c8  bl      _objc_msgSend                            ; [x0 removeFromSuperview]
  10005c3cc  add     x26, x26, #1
  10005c3d0  cmp     x26, x22
  10005c3d4  b.lo    loc_10005c3a4                            ; if ((x26 + 1) <u [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x78] count:16])
  10005c3d8  add     x2, sp, #8
  10005c3dc  add     x3, sp, #0x78
  10005c3e0  mov     w4, #0x10
  10005c3e4  mov     x0, x20
  10005c3e8  mov     x1, x21
  10005c3ec  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x78] count:16]
  10005c3f0  mov     x22, x0
  10005c3f4  cbnz    x22, loc_10005c3a0                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x78] count:16] != 0)
loc_10005c3f8:
  10005c3f8  mov     x0, x20
  10005c3fc  bl      _objc_release
  10005c400  adrp    x8, #0x10041d000
  10005c404  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10005c408  adrp    x8, #0x100416000
  10005c40c  nop
  10005c410  ldr     x1, [x8, #0xb28]
  10005c414  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10005c418  mov     x29, x29
  10005c41c  bl      _objc_retainAutoreleasedReturnValue
  10005c420  mov     x20, x0
  10005c424  adrp    x8, #0x100417000
  10005c428  nop
  10005c42c  ldr     x1, [x8, #0xcf8]
  10005c430  mov     w2, #0
  10005c434  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] setIdleTimerDisabled:0]
  10005c438  mov     x0, x20
  10005c43c  bl      _objc_release
  10005c440  adrp    x8, #0x10041d000
  10005c444  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10005c448  adrp    x8, #0x100416000
  10005c44c  nop
  10005c450  ldr     x1, [x8, #0xc00]
  10005c454  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10005c458  mov     x29, x29
  10005c45c  bl      _objc_retainAutoreleasedReturnValue
  10005c460  mov     x20, x0
  10005c464  adrp    x8, #0x100417000
  10005c468  nop
  10005c46c  ldr     x1, [x8, #0x5f8]
  10005c470  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  10005c474  mov     x21, x0
  10005c478  mov     x0, x20
  10005c47c  bl      _objc_release
  10005c480  cbz     w21, loc_10005c4ec                       ; if ([[ADGameParameters sharedParameters] lastAnnouncerValue] == 0)
  10005c484  adrp    x8, #0x10041d000
  10005c488  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10005c48c  adrp    x8, #0x100417000
  10005c490  nop
  10005c494  ldr     x1, [x8, #0x4f0]
  10005c498  bl      _objc_msgSend                            ; [S3DEngine engine]
  10005c49c  mov     x29, x29
  10005c4a0  bl      _objc_retainAutoreleasedReturnValue
  10005c4a4  mov     x20, x0
  10005c4a8  adrp    x8, #0x100417000
  10005c4ac  nop
  10005c4b0  ldr     x1, [x8, #0x4f8]
  10005c4b4  adrp    x2, #0x1003ba000
  10005c4b8  add     x2, x2, #0x830                           ; @"announcer"
  10005c4bc  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"announcer"]
  10005c4c0  mov     x29, x29
  10005c4c4  bl      _objc_retainAutoreleasedReturnValue
  10005c4c8  mov     x21, x0
  10005c4cc  adrp    x8, #0x100417000
  10005c4d0  nop
  10005c4d4  ldr     x1, [x8, #0x618]
  10005c4d8  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"announcer"] deactivate]
  10005c4dc  mov     x0, x21
  10005c4e0  bl      _objc_release
  10005c4e4  mov     x0, x20
  10005c4e8  bl      _objc_release
loc_10005c4ec:
  10005c4ec  adrp    x8, #0x10041e000
  10005c4f0  ldr     x0, [x8, #0xc8]                          ; class ADOpenerGameplayViewController
  10005c4f4  adrp    x8, #0x100417000
  10005c4f8  nop
  10005c4fc  ldr     x1, [x8, #0x2e0]
  10005c500  bl      _objc_msgSend                            ; [ADOpenerGameplayViewController class]
  10005c504  mov     x2, x0
  10005c508  adrp    x8, #0x100417000
  10005c50c  nop
  10005c510  ldr     x1, [x8, #0x3b8]
  10005c514  mov     x0, x19
  10005c518  bl      _objc_msgSend                            ; [self isKindOfClass:[ADOpenerGameplayViewController class]]
  10005c51c  tbnz    w0, #0, loc_10005c6b0                    ; if (([self isKindOfClass:[ADOpenerGameplayViewController class]] & 1))
  10005c520  adrp    x21, #0x10041d000
  10005c524  ldr     x0, [x21, #0xfc0]                        ; class ADInGameStats
  10005c528  adrp    x8, #0x100417000
  10005c52c  nop
  10005c530  ldr     x19, [x8, #0x228]
  10005c534  mov     x1, x19
  10005c538  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005c53c  mov     x29, x29
  10005c540  bl      _objc_retainAutoreleasedReturnValue
  10005c544  mov     x20, x0
  10005c548  adrp    x8, #0x100419000
  10005c54c  nop
  10005c550  ldr     x1, [x8, #0x160]
  10005c554  bl      _objc_msgSend                            ; [[ADInGameStats singleton] endLevel]
  10005c558  mov     x0, x20
  10005c55c  bl      _objc_release
  10005c560  ldr     x0, [x21, #0xfc0]                        ; class ADInGameStats
  10005c564  mov     x1, x19
  10005c568  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005c56c  mov     x29, x29
  10005c570  bl      _objc_retainAutoreleasedReturnValue
  10005c574  mov     x20, x0
  10005c578  adrp    x8, #0x100419000
  10005c57c  nop
  10005c580  ldr     x1, [x8, #0x168]
  10005c584  bl      _objc_msgSend                            ; [[ADInGameStats singleton] saveStats]
  10005c588  mov     x0, x20
  10005c58c  bl      _objc_release
  10005c590  adrp    x8, #0x10041d000
  10005c594  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  10005c598  adrp    x8, #0x100416000
  10005c59c  nop
  10005c5a0  ldr     x1, [x8, #0xe10]
  10005c5a4  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  10005c5a8  mov     x29, x29
  10005c5ac  bl      _objc_retainAutoreleasedReturnValue
  10005c5b0  mov     x20, x0
  10005c5b4  ldr     x0, [x21, #0xfc0]                        ; class ADInGameStats
  10005c5b8  mov     x1, x19
  10005c5bc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10005c5c0  mov     x29, x29
  10005c5c4  bl      _objc_retainAutoreleasedReturnValue
  10005c5c8  mov     x21, x0
  10005c5cc  adrp    x8, #0x100417000
  10005c5d0  nop
  10005c5d4  ldr     x1, [x8, #0xda0]
  10005c5d8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10005c5dc  mov     x2, x0
  10005c5e0  adrp    x8, #0x100419000
  10005c5e4  nop
  10005c5e8  ldr     x1, [x8, #0x170]
  10005c5ec  mov     x0, x20
  10005c5f0  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveScore:[[ADInGameStats singleton] gameScore]]
  10005c5f4  mov     x0, x21
  10005c5f8  bl      _objc_release
  10005c5fc  mov     x0, x20
  10005c600  bl      _objc_release
  10005c604  adrp    x8, #0x10041e000
  10005c608  ldr     x0, [x8, #8]                             ; class ADTracker
  10005c60c  adrp    x8, #0x100416000
  10005c610  nop
  10005c614  ldr     x19, [x8, #0xac0]
  10005c618  mov     x1, x19
  10005c61c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10005c620  mov     x29, x29
  10005c624  bl      _objc_retainAutoreleasedReturnValue
  10005c628  mov     x20, x0
  10005c62c  adrp    x8, #0x100419000
  10005c630  nop
  10005c634  ldr     x1, [x8, #0x178]
  10005c638  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordEndOfGameData]
  10005c63c  mov     x0, x20
  10005c640  bl      _objc_release
  10005c644  adrp    x8, #0x10041d000
  10005c648  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10005c64c  mov     x1, x19
  10005c650  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10005c654  mov     x29, x29
  10005c658  bl      _objc_retainAutoreleasedReturnValue
  10005c65c  mov     x20, x0
  10005c660  adrp    x8, #0x100417000
  10005c664  nop
  10005c668  ldr     x1, [x8, #0x2f8]
  10005c66c  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10005c670  mov     x29, x29
  10005c674  bl      _objc_retainAutoreleasedReturnValue
  10005c678  mov     x21, x0
  10005c67c  mov     x0, x20
  10005c680  bl      _objc_release
  10005c684  adrp    x8, #0x1003b8000
  10005c688  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  10005c68c  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  10005c690  adrp    x8, #0x100417000
  10005c694  nop
  10005c698  ldr     x1, [x8, #0x300]
  10005c69c  mov     x3, #0
  10005c6a0  mov     x0, x21
  10005c6a4  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:0]
  10005c6a8  mov     x0, x21
  10005c6ac  bl      _objc_release
loc_10005c6b0:
  10005c6b0  ldr     x0, [sp, #0x68]
  10005c6b4  bl      _objc_release
  10005c6b8  ldur    x8, [x29, #-0x58]
  10005c6bc  sub     x8, x24, x8
  10005c6c0  cbnz    x8, loc_10005c6e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10005c6c4  sub     sp, x29, #0x50
  10005c6c8  ldp     x29, x30, [sp, #0x50]
  10005c6cc  ldp     x20, x19, [sp, #0x40]
  10005c6d0  ldp     x22, x21, [sp, #0x30]
  10005c6d4  ldp     x24, x23, [sp, #0x20]
  10005c6d8  ldp     x26, x25, [sp, #0x10]
  10005c6dc  ldp     x28, x27, [sp], #0x60
  10005c6e0  ret
loc_10005c6e4:
  10005c6e4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10005c6e8:
  10005c6e8  mov     x19, x0
loc_10005c6ec:
  10005c6ec  mov     x0, x20
  10005c6f0  bl      _objc_release
loc_10005c6f4:
  10005c6f4  ldr     x0, [sp, #0x68]
loc_10005c6f8:
  10005c6f8  bl      _objc_release
  10005c6fc  mov     x0, x19
  10005c700  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005c704  b       loc_10005c6e8
  10005c708  mov     x19, x0
  10005c70c  b       loc_10005c6f4
  10005c710  mov     x19, x0
  10005c714  mov     x0, x20
  10005c718  b       loc_10005c6f8
  10005c71c  b       loc_10005c760
  10005c720  b       loc_10005c760
  10005c724  b       loc_10005c760
  10005c728  b       loc_10005c6e8
  10005c72c  b       loc_10005c6e8
  10005c730  b       loc_10005c6e8
  10005c734  b       loc_10005c73c
  10005c738  b       loc_10005c6e8
loc_10005c73c:
  10005c73c  mov     x19, x0
  10005c740  mov     x0, x21
  10005c744  bl      _objc_release
  10005c748  b       loc_10005c6ec
  10005c74c  b       loc_10005c6e8
  10005c750  b       loc_10005c6e8
  10005c754  b       loc_10005c6e8
  10005c758  b       loc_10005c6e8
  10005c75c  b       loc_10005c6e8
loc_10005c760:
  10005c760  mov     x19, x0
  10005c764  mov     x0, x21
  10005c768  bl      _objc_release
  10005c76c  b       loc_10005c6f4

; ======================================================================
; -[ADGameplayViewController killGameplay]_block_invoke
; address 0x10005c770  size 328  kind block
; ======================================================================
  10005c770  stp     x22, x21, [sp, #-0x30]!
  10005c774  stp     x20, x19, [sp, #0x10]
  10005c778  stp     x29, x30, [sp, #0x20]
  10005c77c  add     x29, sp, #0x20
  10005c780  mov     x19, x0
  10005c784  adrp    x8, #0x10041e000
  10005c788  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  10005c78c  adrp    x8, #0x100418000
  10005c790  nop
  10005c794  ldr     x1, [x8, #0xf58]
  10005c798  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  10005c79c  mov     x29, x29
  10005c7a0  bl      _objc_retainAutoreleasedReturnValue
  10005c7a4  mov     x20, x0
  10005c7a8  adrp    x8, #0x100419000
  10005c7ac  nop
  10005c7b0  ldr     x1, [x8, #0x138]
  10005c7b4  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] stopAmbient]
  10005c7b8  mov     x0, x20
  10005c7bc  bl      _objc_release
  10005c7c0  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  10005c7c4  adrp    x8, #0x100416000
  10005c7c8  nop
  10005c7cc  ldr     x1, [x8, #0xc88]
  10005c7d0  bl      _objc_msgSend                            ; [self weaponManager]
  10005c7d4  mov     x29, x29
  10005c7d8  bl      _objc_retainAutoreleasedReturnValue
  10005c7dc  mov     x21, x0
  10005c7e0  adrp    x8, #0x100419000
  10005c7e4  nop
  10005c7e8  ldr     x20, [x8, #0x158]
  10005c7ec  mov     x1, x20
  10005c7f0  bl      _objc_msgSend                            ; [[self weaponManager] clean]
  10005c7f4  mov     x0, x21
  10005c7f8  bl      _objc_release
  10005c7fc  adrp    x8, #0x10041e000
  10005c800  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005c804  adrp    x8, #0x100417000
  10005c808  nop
  10005c80c  ldr     x1, [x8, #0xaa8]
  10005c810  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005c814  mov     x29, x29
  10005c818  bl      _objc_retainAutoreleasedReturnValue
  10005c81c  mov     x21, x0
  10005c820  mov     x1, x20
  10005c824  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] clean]
  10005c828  mov     x0, x21
  10005c82c  bl      _objc_release
  10005c830  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  10005c834  adrp    x9, #0x10041f000
  10005c838  ldrsw   x21, [x9, #0xaec]                        ; ivar offset ADGameplayViewController.debugMap (+0x158)
  10005c83c  ldr     x0, [x8, x21]                            ; x0 = self->debugMap
  10005c840  adrp    x8, #0x100416000
  10005c844  nop
  10005c848  ldr     x1, [x8, #0xf18]
  10005c84c  bl      _objc_msgSend                            ; [self->debugMap view]
  10005c850  mov     x29, x29
  10005c854  bl      _objc_retainAutoreleasedReturnValue
  10005c858  mov     x20, x0
  10005c85c  adrp    x8, #0x100417000
  10005c860  nop
  10005c864  ldr     x1, [x8, #0x1d0]
  10005c868  bl      _objc_msgSend                            ; [[self->debugMap view] removeFromSuperview]
  10005c86c  mov     x0, x20
  10005c870  bl      _objc_release
  10005c874  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  10005c878  ldr     x0, [x8, x21]                            ; x0 = self->debugMap
  10005c87c  str     xzr, [x8, x21]                           ; self->debugMap = 0
  10005c880  ldp     x29, x30, [sp, #0x20]
  10005c884  ldp     x20, x19, [sp, #0x10]
  10005c888  ldp     x22, x21, [sp], #0x30
  10005c88c  b       _objc_release
  10005c890  b       loc_10005c8a4
  10005c894  b       loc_10005c898
loc_10005c898:
  10005c898  mov     x19, x0
  10005c89c  mov     x0, x21
  10005c8a0  b       loc_10005c8ac
loc_10005c8a4:
  10005c8a4  mov     x19, x0
  10005c8a8  mov     x0, x20
loc_10005c8ac:
  10005c8ac  bl      _objc_release
  10005c8b0  mov     x0, x19
  10005c8b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10005c8b8
; address 0x10005c8b8  size 8  kind sub
; ======================================================================
  10005c8b8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10005c8bc  b       _objc_retain

; ======================================================================
; sub_10005c8c0
; address 0x10005c8c0  size 8  kind sub
; ======================================================================
  10005c8c0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10005c8c4  b       _objc_release

; ======================================================================
; -[ADGameplayViewController didReceiveMemoryWarning]
; address 0x10005c8c8  size 60  kind objc
; ======================================================================
  10005c8c8  stp     x29, x30, [sp, #-0x10]!
  10005c8cc  mov     x29, sp
  10005c8d0  sub     sp, sp, #0x10
  10005c8d4  str     x0, [sp]
  10005c8d8  adrp    x8, #0x10041e000
  10005c8dc  ldr     x8, [x8, #0xd78]
  10005c8e0  str     x8, [sp, #8]
  10005c8e4  adrp    x8, #0x100416000
  10005c8e8  nop
  10005c8ec  ldr     x1, [x8, #0xbf8]
  10005c8f0  mov     x0, sp
  10005c8f4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10005c8f8  mov     sp, x29
  10005c8fc  ldp     x29, x30, [sp], #0x10
  10005c900  ret

; ======================================================================
; -[ADGameplayViewController stopTimers]
; address 0x10005c904  size 148  kind objc
; ======================================================================
  10005c904  stp     x24, x23, [sp, #-0x40]!
  10005c908  stp     x22, x21, [sp, #0x10]
  10005c90c  stp     x20, x19, [sp, #0x20]
  10005c910  stp     x29, x30, [sp, #0x30]
  10005c914  add     x29, sp, #0x30
  10005c918  mov     x19, x0
  10005c91c  adrp    x8, #0x10041f000
  10005c920  ldrsw   x21, [x8, #0xaf8]                        ; ivar offset ADGameplayViewController.updateTimer (+0x148)
  10005c924  ldr     x0, [x19, x21]                           ; x0 = self->updateTimer
  10005c928  adrp    x8, #0x100417000
  10005c92c  nop
  10005c930  ldr     x20, [x8, #0x730]
  10005c934  mov     x1, x20
  10005c938  bl      _objc_msgSend                            ; [self->updateTimer invalidate]
  10005c93c  adrp    x8, #0x10041f000
  10005c940  ldrsw   x22, [x8, #0xafc]                        ; ivar offset ADGameplayViewController.weaponUpdateTimer (+0x140)
  10005c944  ldr     x0, [x19, x22]                           ; x0 = self->weaponUpdateTimer
  10005c948  mov     x1, x20
  10005c94c  bl      _objc_msgSend                            ; [self->weaponUpdateTimer invalidate]
  10005c950  adrp    x8, #0x10041f000
  10005c954  ldrsw   x23, [x8, #0xb00]                        ; ivar offset ADGameplayViewController.statsUpdateTimer (+0x150)
  10005c958  ldr     x0, [x19, x23]                           ; x0 = self->statsUpdateTimer
  10005c95c  mov     x1, x20
  10005c960  bl      _objc_msgSend                            ; [self->statsUpdateTimer invalidate]
  10005c964  ldr     x0, [x19, x21]                           ; x0 = self->updateTimer
  10005c968  str     xzr, [x19, x21]                          ; self->updateTimer = 0
  10005c96c  bl      _objc_release
  10005c970  ldr     x0, [x19, x22]                           ; x0 = self->weaponUpdateTimer
  10005c974  str     xzr, [x19, x22]                          ; self->weaponUpdateTimer = 0
  10005c978  bl      _objc_release
  10005c97c  ldr     x0, [x19, x23]                           ; x0 = self->statsUpdateTimer
  10005c980  str     xzr, [x19, x23]                          ; self->statsUpdateTimer = 0
  10005c984  ldp     x29, x30, [sp, #0x30]
  10005c988  ldp     x20, x19, [sp, #0x20]
  10005c98c  ldp     x22, x21, [sp, #0x10]
  10005c990  ldp     x24, x23, [sp], #0x40
  10005c994  b       _objc_release

; ======================================================================
; -[ADGameplayViewController dealloc]
; address 0x10005c998  size 140  kind objc
; ======================================================================
  10005c998  stp     x20, x19, [sp, #-0x20]!
  10005c99c  stp     x29, x30, [sp, #0x10]
  10005c9a0  add     x29, sp, #0x10
  10005c9a4  sub     sp, sp, #0x20
  10005c9a8  mov     x19, x0
  10005c9ac  adrp    x0, #0x1003bd000
  10005c9b0  add     x0, x0, #0xf90                           ; @"Dealloc gameplay VC"
  10005c9b4  bl      _NSLog                                   ; NSLog(@"Dealloc gameplay VC", _cmd)
  10005c9b8  str     x19, [sp, #0x10]
  10005c9bc  adrp    x8, #0x10041e000
  10005c9c0  ldr     x8, [x8, #0xd78]
  10005c9c4  str     x8, [sp, #0x18]
  10005c9c8  adrp    x8, #0x100416000
  10005c9cc  nop
  10005c9d0  ldr     x1, [x8, #0xfc8]
  10005c9d4  add     x0, sp, #0x10
  10005c9d8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10005c9dc  sub     sp, x29, #0x10
  10005c9e0  ldp     x29, x30, [sp, #0x10]
  10005c9e4  ldp     x20, x19, [sp], #0x20
  10005c9e8  ret
  10005c9ec  mov     x8, x19
  10005c9f0  mov     x19, x0
  10005c9f4  str     x8, [sp]
  10005c9f8  adrp    x8, #0x10041e000
  10005c9fc  ldr     x8, [x8, #0xd78]
  10005ca00  str     x8, [sp, #8]
  10005ca04  adrp    x8, #0x100416000
  10005ca08  nop
  10005ca0c  ldr     x1, [x8, #0xfc8]
  10005ca10  mov     x0, sp
  10005ca14  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10005ca18  mov     x0, x19
  10005ca1c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005ca20  bl      sub_10000b760

; ======================================================================
; -[ADGameplayViewController deathOverlay]
; address 0x10005ca24  size 16  kind objc
; ======================================================================
  10005ca24  adrp    x8, #0x10041f000
  10005ca28  ldrsw   x8, [x8, #0xb18]                         ; ivar offset ADGameplayViewController._deathOverlay (+0x198)
  10005ca2c  ldr     x0, [x0, x8]                             ; x0 = self->_deathOverlay
  10005ca30  ret

; ======================================================================
; -[ADGameplayViewController setDeathOverlay:]
; address 0x10005ca34  size 56  kind objc
; ======================================================================
  10005ca34  stp     x20, x19, [sp, #-0x20]!
  10005ca38  stp     x29, x30, [sp, #0x10]
  10005ca3c  add     x29, sp, #0x10
  10005ca40  mov     x19, x0
  10005ca44  adrp    x8, #0x10041f000
  10005ca48  ldrsw   x20, [x8, #0xb18]                        ; ivar offset ADGameplayViewController._deathOverlay (+0x198)
  10005ca4c  mov     x0, x2
  10005ca50  bl      _objc_retain
  10005ca54  ldr     x8, [x19, x20]                           ; x8 = self->_deathOverlay
  10005ca58  str     x0, [x19, x20]                           ; self->_deathOverlay = arg1
  10005ca5c  mov     x0, x8
  10005ca60  ldp     x29, x30, [sp, #0x10]
  10005ca64  ldp     x20, x19, [sp], #0x20
  10005ca68  b       _objc_release

; ======================================================================
; -[ADGameplayViewController buttonsView]
; address 0x10005ca6c  size 16  kind objc
; ======================================================================
  10005ca6c  adrp    x8, #0x10041f000
  10005ca70  ldrsw   x8, [x8, #0xb1c]                         ; ivar offset ADGameplayViewController._buttonsView (+0x1a0)
  10005ca74  ldr     x0, [x0, x8]                             ; x0 = self->_buttonsView
  10005ca78  ret

; ======================================================================
; -[ADGameplayViewController setButtonsView:]
; address 0x10005ca7c  size 56  kind objc
; ======================================================================
  10005ca7c  stp     x20, x19, [sp, #-0x20]!
  10005ca80  stp     x29, x30, [sp, #0x10]
  10005ca84  add     x29, sp, #0x10
  10005ca88  mov     x19, x0
  10005ca8c  adrp    x8, #0x10041f000
  10005ca90  ldrsw   x20, [x8, #0xb1c]                        ; ivar offset ADGameplayViewController._buttonsView (+0x1a0)
  10005ca94  mov     x0, x2
  10005ca98  bl      _objc_retain
  10005ca9c  ldr     x8, [x19, x20]                           ; x8 = self->_buttonsView
  10005caa0  str     x0, [x19, x20]                           ; self->_buttonsView = arg1
  10005caa4  mov     x0, x8
  10005caa8  ldp     x29, x30, [sp, #0x10]
  10005caac  ldp     x20, x19, [sp], #0x20
  10005cab0  b       _objc_release

; ======================================================================
; -[ADGameplayViewController weaponTouchArea]
; address 0x10005cab4  size 16  kind objc
; ======================================================================
  10005cab4  adrp    x8, #0x10041f000
  10005cab8  ldrsw   x8, [x8, #0xb20]                         ; ivar offset ADGameplayViewController._weaponTouchArea (+0x1a8)
  10005cabc  ldr     x0, [x0, x8]                             ; x0 = self->_weaponTouchArea
  10005cac0  ret

; ======================================================================
; -[ADGameplayViewController setWeaponTouchArea:]
; address 0x10005cac4  size 56  kind objc
; ======================================================================
  10005cac4  stp     x20, x19, [sp, #-0x20]!
  10005cac8  stp     x29, x30, [sp, #0x10]
  10005cacc  add     x29, sp, #0x10
  10005cad0  mov     x19, x0
  10005cad4  adrp    x8, #0x10041f000
  10005cad8  ldrsw   x20, [x8, #0xb20]                        ; ivar offset ADGameplayViewController._weaponTouchArea (+0x1a8)
  10005cadc  mov     x0, x2
  10005cae0  bl      _objc_retain
  10005cae4  ldr     x8, [x19, x20]                           ; x8 = self->_weaponTouchArea
  10005cae8  str     x0, [x19, x20]                           ; self->_weaponTouchArea = arg1
  10005caec  mov     x0, x8
  10005caf0  ldp     x29, x30, [sp, #0x10]
  10005caf4  ldp     x20, x19, [sp], #0x20
  10005caf8  b       _objc_release

; ======================================================================
; -[ADGameplayViewController weaponButton]
; address 0x10005cafc  size 16  kind objc
; ======================================================================
  10005cafc  adrp    x8, #0x10041f000
  10005cb00  ldrsw   x8, [x8, #0xb24]                         ; ivar offset ADGameplayViewController._weaponButton (+0x1b0)
  10005cb04  ldr     x0, [x0, x8]                             ; x0 = self->_weaponButton
  10005cb08  ret

; ======================================================================
; -[ADGameplayViewController setWeaponButton:]
; address 0x10005cb0c  size 56  kind objc
; ======================================================================
  10005cb0c  stp     x20, x19, [sp, #-0x20]!
  10005cb10  stp     x29, x30, [sp, #0x10]
  10005cb14  add     x29, sp, #0x10
  10005cb18  mov     x19, x0
  10005cb1c  adrp    x8, #0x10041f000
  10005cb20  ldrsw   x20, [x8, #0xb24]                        ; ivar offset ADGameplayViewController._weaponButton (+0x1b0)
  10005cb24  mov     x0, x2
  10005cb28  bl      _objc_retain
  10005cb2c  ldr     x8, [x19, x20]                           ; x8 = self->_weaponButton
  10005cb30  str     x0, [x19, x20]                           ; self->_weaponButton = arg1
  10005cb34  mov     x0, x8
  10005cb38  ldp     x29, x30, [sp, #0x10]
  10005cb3c  ldp     x20, x19, [sp], #0x20
  10005cb40  b       _objc_release

; ======================================================================
; -[ADGameplayViewController infiniteScrollViews]
; address 0x10005cb44  size 16  kind objc
; ======================================================================
  10005cb44  adrp    x8, #0x10041f000
  10005cb48  ldrsw   x8, [x8, #0xb28]                         ; ivar offset ADGameplayViewController._infiniteScrollViews (+0x1b8)
  10005cb4c  ldr     x0, [x0, x8]                             ; x0 = self->_infiniteScrollViews
  10005cb50  ret

; ======================================================================
; -[ADGameplayViewController setInfiniteScrollViews:]
; address 0x10005cb54  size 56  kind objc
; ======================================================================
  10005cb54  stp     x20, x19, [sp, #-0x20]!
  10005cb58  stp     x29, x30, [sp, #0x10]
  10005cb5c  add     x29, sp, #0x10
  10005cb60  mov     x19, x0
  10005cb64  adrp    x8, #0x10041f000
  10005cb68  ldrsw   x20, [x8, #0xb28]                        ; ivar offset ADGameplayViewController._infiniteScrollViews (+0x1b8)
  10005cb6c  mov     x0, x2
  10005cb70  bl      _objc_retain
  10005cb74  ldr     x8, [x19, x20]                           ; x8 = self->_infiniteScrollViews
  10005cb78  str     x0, [x19, x20]                           ; self->_infiniteScrollViews = arg1
  10005cb7c  mov     x0, x8
  10005cb80  ldp     x29, x30, [sp, #0x10]
  10005cb84  ldp     x20, x19, [sp], #0x20
  10005cb88  b       _objc_release

; ======================================================================
; -[ADGameplayViewController weaponManager]
; address 0x10005cb8c  size 16  kind objc
; ======================================================================
  10005cb8c  adrp    x8, #0x10041f000
  10005cb90  ldrsw   x8, [x8, #0xb2c]                         ; ivar offset ADGameplayViewController._weaponManager (+0x1c0)
  10005cb94  ldr     x0, [x0, x8]                             ; x0 = self->_weaponManager
  10005cb98  ret

; ======================================================================
; -[ADGameplayViewController setWeaponManager:]
; address 0x10005cb9c  size 56  kind objc
; ======================================================================
  10005cb9c  stp     x20, x19, [sp, #-0x20]!
  10005cba0  stp     x29, x30, [sp, #0x10]
  10005cba4  add     x29, sp, #0x10
  10005cba8  mov     x19, x0
  10005cbac  adrp    x8, #0x10041f000
  10005cbb0  ldrsw   x20, [x8, #0xb2c]                        ; ivar offset ADGameplayViewController._weaponManager (+0x1c0)
  10005cbb4  mov     x0, x2
  10005cbb8  bl      _objc_retain
  10005cbbc  ldr     x8, [x19, x20]                           ; x8 = self->_weaponManager
  10005cbc0  str     x0, [x19, x20]                           ; self->_weaponManager = arg1
  10005cbc4  mov     x0, x8
  10005cbc8  ldp     x29, x30, [sp, #0x10]
  10005cbcc  ldp     x20, x19, [sp], #0x20
  10005cbd0  b       _objc_release

; ======================================================================
; -[ADGameplayViewController shakeDetector]
; address 0x10005cbd4  size 16  kind objc
; ======================================================================
  10005cbd4  adrp    x8, #0x10041f000
  10005cbd8  ldrsw   x8, [x8, #0xb30]                         ; ivar offset ADGameplayViewController._shakeDetector (+0x1c8)
  10005cbdc  ldr     x0, [x0, x8]                             ; x0 = self->_shakeDetector
  10005cbe0  ret

; ======================================================================
; -[ADGameplayViewController setShakeDetector:]
; address 0x10005cbe4  size 56  kind objc
; ======================================================================
  10005cbe4  stp     x20, x19, [sp, #-0x20]!
  10005cbe8  stp     x29, x30, [sp, #0x10]
  10005cbec  add     x29, sp, #0x10
  10005cbf0  mov     x19, x0
  10005cbf4  adrp    x8, #0x10041f000
  10005cbf8  ldrsw   x20, [x8, #0xb30]                        ; ivar offset ADGameplayViewController._shakeDetector (+0x1c8)
  10005cbfc  mov     x0, x2
  10005cc00  bl      _objc_retain
  10005cc04  ldr     x8, [x19, x20]                           ; x8 = self->_shakeDetector
  10005cc08  str     x0, [x19, x20]                           ; self->_shakeDetector = arg1
  10005cc0c  mov     x0, x8
  10005cc10  ldp     x29, x30, [sp, #0x10]
  10005cc14  ldp     x20, x19, [sp], #0x20
  10005cc18  b       _objc_release

; ======================================================================
; -[ADGameplayViewController player]
; address 0x10005cc1c  size 16  kind objc
; ======================================================================
  10005cc1c  adrp    x8, #0x10041f000
  10005cc20  ldrsw   x8, [x8, #0xb34]                         ; ivar offset ADGameplayViewController._player (+0x1d0)
  10005cc24  ldr     x0, [x0, x8]                             ; x0 = self->_player
  10005cc28  ret

; ======================================================================
; -[ADGameplayViewController setPlayer:]
; address 0x10005cc2c  size 56  kind objc
; ======================================================================
  10005cc2c  stp     x20, x19, [sp, #-0x20]!
  10005cc30  stp     x29, x30, [sp, #0x10]
  10005cc34  add     x29, sp, #0x10
  10005cc38  mov     x19, x0
  10005cc3c  adrp    x8, #0x10041f000
  10005cc40  ldrsw   x20, [x8, #0xb34]                        ; ivar offset ADGameplayViewController._player (+0x1d0)
  10005cc44  mov     x0, x2
  10005cc48  bl      _objc_retain
  10005cc4c  ldr     x8, [x19, x20]                           ; x8 = self->_player
  10005cc50  str     x0, [x19, x20]                           ; self->_player = arg1
  10005cc54  mov     x0, x8
  10005cc58  ldp     x29, x30, [sp, #0x10]
  10005cc5c  ldp     x20, x19, [sp], #0x20
  10005cc60  b       _objc_release

; ======================================================================
; -[ADGameplayViewController meleeButton]
; address 0x10005cc64  size 16  kind objc
; ======================================================================
  10005cc64  adrp    x8, #0x10041f000
  10005cc68  ldrsw   x8, [x8, #0xb38]                         ; ivar offset ADGameplayViewController._meleeButton (+0x1d8)
  10005cc6c  ldr     x0, [x0, x8]                             ; x0 = self->_meleeButton
  10005cc70  ret

; ======================================================================
; -[ADGameplayViewController setMeleeButton:]
; address 0x10005cc74  size 56  kind objc
; ======================================================================
  10005cc74  stp     x20, x19, [sp, #-0x20]!
  10005cc78  stp     x29, x30, [sp, #0x10]
  10005cc7c  add     x29, sp, #0x10
  10005cc80  mov     x19, x0
  10005cc84  adrp    x8, #0x10041f000
  10005cc88  ldrsw   x20, [x8, #0xb38]                        ; ivar offset ADGameplayViewController._meleeButton (+0x1d8)
  10005cc8c  mov     x0, x2
  10005cc90  bl      _objc_retain
  10005cc94  ldr     x8, [x19, x20]                           ; x8 = self->_meleeButton
  10005cc98  str     x0, [x19, x20]                           ; self->_meleeButton = arg1
  10005cc9c  mov     x0, x8
  10005cca0  ldp     x29, x30, [sp, #0x10]
  10005cca4  ldp     x20, x19, [sp], #0x20
  10005cca8  b       _objc_release

; ======================================================================
; -[ADGameplayViewController switchWeaponButton]
; address 0x10005ccac  size 16  kind objc
; ======================================================================
  10005ccac  adrp    x8, #0x10041f000
  10005ccb0  ldrsw   x8, [x8, #0xb3c]                         ; ivar offset ADGameplayViewController._switchWeaponButton (+0x1e0)
  10005ccb4  ldr     x0, [x0, x8]                             ; x0 = self->_switchWeaponButton
  10005ccb8  ret

; ======================================================================
; -[ADGameplayViewController setSwitchWeaponButton:]
; address 0x10005ccbc  size 56  kind objc
; ======================================================================
  10005ccbc  stp     x20, x19, [sp, #-0x20]!
  10005ccc0  stp     x29, x30, [sp, #0x10]
  10005ccc4  add     x29, sp, #0x10
  10005ccc8  mov     x19, x0
  10005cccc  adrp    x8, #0x10041f000
  10005ccd0  ldrsw   x20, [x8, #0xb3c]                        ; ivar offset ADGameplayViewController._switchWeaponButton (+0x1e0)
  10005ccd4  mov     x0, x2
  10005ccd8  bl      _objc_retain
  10005ccdc  ldr     x8, [x19, x20]                           ; x8 = self->_switchWeaponButton
  10005cce0  str     x0, [x19, x20]                           ; self->_switchWeaponButton = arg1
  10005cce4  mov     x0, x8
  10005cce8  ldp     x29, x30, [sp, #0x10]
  10005ccec  ldp     x20, x19, [sp], #0x20
  10005ccf0  b       _objc_release

; ======================================================================
; -[ADGameplayViewController scoreView]
; address 0x10005ccf4  size 16  kind objc
; ======================================================================
  10005ccf4  adrp    x8, #0x10041f000
  10005ccf8  ldrsw   x8, [x8, #0xb40]                         ; ivar offset ADGameplayViewController._scoreView (+0x1e8)
  10005ccfc  ldr     x0, [x0, x8]                             ; x0 = self->_scoreView
  10005cd00  ret

; ======================================================================
; -[ADGameplayViewController setScoreView:]
; address 0x10005cd04  size 56  kind objc
; ======================================================================
  10005cd04  stp     x20, x19, [sp, #-0x20]!
  10005cd08  stp     x29, x30, [sp, #0x10]
  10005cd0c  add     x29, sp, #0x10
  10005cd10  mov     x19, x0
  10005cd14  adrp    x8, #0x10041f000
  10005cd18  ldrsw   x20, [x8, #0xb40]                        ; ivar offset ADGameplayViewController._scoreView (+0x1e8)
  10005cd1c  mov     x0, x2
  10005cd20  bl      _objc_retain
  10005cd24  ldr     x8, [x19, x20]                           ; x8 = self->_scoreView
  10005cd28  str     x0, [x19, x20]                           ; self->_scoreView = arg1
  10005cd2c  mov     x0, x8
  10005cd30  ldp     x29, x30, [sp, #0x10]
  10005cd34  ldp     x20, x19, [sp], #0x20
  10005cd38  b       _objc_release

; ======================================================================
; -[ADGameplayViewController comboLabel]
; address 0x10005cd3c  size 16  kind objc
; ======================================================================
  10005cd3c  adrp    x8, #0x10041f000
  10005cd40  ldrsw   x8, [x8, #0xb44]                         ; ivar offset ADGameplayViewController._comboLabel (+0x1f0)
  10005cd44  ldr     x0, [x0, x8]                             ; x0 = self->_comboLabel
  10005cd48  ret

; ======================================================================
; -[ADGameplayViewController setComboLabel:]
; address 0x10005cd4c  size 56  kind objc
; ======================================================================
  10005cd4c  stp     x20, x19, [sp, #-0x20]!
  10005cd50  stp     x29, x30, [sp, #0x10]
  10005cd54  add     x29, sp, #0x10
  10005cd58  mov     x19, x0
  10005cd5c  adrp    x8, #0x10041f000
  10005cd60  ldrsw   x20, [x8, #0xb44]                        ; ivar offset ADGameplayViewController._comboLabel (+0x1f0)
  10005cd64  mov     x0, x2
  10005cd68  bl      _objc_retain
  10005cd6c  ldr     x8, [x19, x20]                           ; x8 = self->_comboLabel
  10005cd70  str     x0, [x19, x20]                           ; self->_comboLabel = arg1
  10005cd74  mov     x0, x8
  10005cd78  ldp     x29, x30, [sp, #0x10]
  10005cd7c  ldp     x20, x19, [sp], #0x20
  10005cd80  b       _objc_release

; ======================================================================
; -[ADGameplayViewController scoreLabel]
; address 0x10005cd84  size 16  kind objc
; ======================================================================
  10005cd84  adrp    x8, #0x10041f000
  10005cd88  ldrsw   x8, [x8, #0xb48]                         ; ivar offset ADGameplayViewController._scoreLabel (+0x1f8)
  10005cd8c  ldr     x0, [x0, x8]                             ; x0 = self->_scoreLabel
  10005cd90  ret

; ======================================================================
; -[ADGameplayViewController setScoreLabel:]
; address 0x10005cd94  size 56  kind objc
; ======================================================================
  10005cd94  stp     x20, x19, [sp, #-0x20]!
  10005cd98  stp     x29, x30, [sp, #0x10]
  10005cd9c  add     x29, sp, #0x10
  10005cda0  mov     x19, x0
  10005cda4  adrp    x8, #0x10041f000
  10005cda8  ldrsw   x20, [x8, #0xb48]                        ; ivar offset ADGameplayViewController._scoreLabel (+0x1f8)
  10005cdac  mov     x0, x2
  10005cdb0  bl      _objc_retain
  10005cdb4  ldr     x8, [x19, x20]                           ; x8 = self->_scoreLabel
  10005cdb8  str     x0, [x19, x20]                           ; self->_scoreLabel = arg1
  10005cdbc  mov     x0, x8
  10005cdc0  ldp     x29, x30, [sp, #0x10]
  10005cdc4  ldp     x20, x19, [sp], #0x20
  10005cdc8  b       _objc_release

; ======================================================================
; -[ADGameplayViewController comboMeter]
; address 0x10005cdcc  size 16  kind objc
; ======================================================================
  10005cdcc  adrp    x8, #0x10041f000
  10005cdd0  ldrsw   x8, [x8, #0xb4c]                         ; ivar offset ADGameplayViewController._comboMeter (+0x200)
  10005cdd4  ldr     x0, [x0, x8]                             ; x0 = self->_comboMeter
  10005cdd8  ret

; ======================================================================
; -[ADGameplayViewController setComboMeter:]
; address 0x10005cddc  size 56  kind objc
; ======================================================================
  10005cddc  stp     x20, x19, [sp, #-0x20]!
  10005cde0  stp     x29, x30, [sp, #0x10]
  10005cde4  add     x29, sp, #0x10
  10005cde8  mov     x19, x0
  10005cdec  adrp    x8, #0x10041f000
  10005cdf0  ldrsw   x20, [x8, #0xb4c]                        ; ivar offset ADGameplayViewController._comboMeter (+0x200)
  10005cdf4  mov     x0, x2
  10005cdf8  bl      _objc_retain
  10005cdfc  ldr     x8, [x19, x20]                           ; x8 = self->_comboMeter
  10005ce00  str     x0, [x19, x20]                           ; self->_comboMeter = arg1
  10005ce04  mov     x0, x8
  10005ce08  ldp     x29, x30, [sp, #0x10]
  10005ce0c  ldp     x20, x19, [sp], #0x20
  10005ce10  b       _objc_release

; ======================================================================
; -[ADGameplayViewController timerView]
; address 0x10005ce14  size 16  kind objc
; ======================================================================
  10005ce14  adrp    x8, #0x10041f000
  10005ce18  ldrsw   x8, [x8, #0xb50]                         ; ivar offset ADGameplayViewController._timerView (+0x208)
  10005ce1c  ldr     x0, [x0, x8]                             ; x0 = self->_timerView
  10005ce20  ret

; ======================================================================
; -[ADGameplayViewController setTimerView:]
; address 0x10005ce24  size 56  kind objc
; ======================================================================
  10005ce24  stp     x20, x19, [sp, #-0x20]!
  10005ce28  stp     x29, x30, [sp, #0x10]
  10005ce2c  add     x29, sp, #0x10
  10005ce30  mov     x19, x0
  10005ce34  adrp    x8, #0x10041f000
  10005ce38  ldrsw   x20, [x8, #0xb50]                        ; ivar offset ADGameplayViewController._timerView (+0x208)
  10005ce3c  mov     x0, x2
  10005ce40  bl      _objc_retain
  10005ce44  ldr     x8, [x19, x20]                           ; x8 = self->_timerView
  10005ce48  str     x0, [x19, x20]                           ; self->_timerView = arg1
  10005ce4c  mov     x0, x8
  10005ce50  ldp     x29, x30, [sp, #0x10]
  10005ce54  ldp     x20, x19, [sp], #0x20
  10005ce58  b       _objc_release

; ======================================================================
; -[ADGameplayViewController timerLabel]
; address 0x10005ce5c  size 16  kind objc
; ======================================================================
  10005ce5c  adrp    x8, #0x10041f000
  10005ce60  ldrsw   x8, [x8, #0xb54]                         ; ivar offset ADGameplayViewController._timerLabel (+0x210)
  10005ce64  ldr     x0, [x0, x8]                             ; x0 = self->_timerLabel
  10005ce68  ret

; ======================================================================
; -[ADGameplayViewController setTimerLabel:]
; address 0x10005ce6c  size 56  kind objc
; ======================================================================
  10005ce6c  stp     x20, x19, [sp, #-0x20]!
  10005ce70  stp     x29, x30, [sp, #0x10]
  10005ce74  add     x29, sp, #0x10
  10005ce78  mov     x19, x0
  10005ce7c  adrp    x8, #0x10041f000
  10005ce80  ldrsw   x20, [x8, #0xb54]                        ; ivar offset ADGameplayViewController._timerLabel (+0x210)
  10005ce84  mov     x0, x2
  10005ce88  bl      _objc_retain
  10005ce8c  ldr     x8, [x19, x20]                           ; x8 = self->_timerLabel
  10005ce90  str     x0, [x19, x20]                           ; self->_timerLabel = arg1
  10005ce94  mov     x0, x8
  10005ce98  ldp     x29, x30, [sp, #0x10]
  10005ce9c  ldp     x20, x19, [sp], #0x20
  10005cea0  b       _objc_release

; ======================================================================
; -[ADGameplayViewController skipButton]
; address 0x10005cea4  size 16  kind objc
; ======================================================================
  10005cea4  adrp    x8, #0x10041f000
  10005cea8  ldrsw   x8, [x8, #0xb58]                         ; ivar offset ADGameplayViewController._skipButton (+0x218)
  10005ceac  ldr     x0, [x0, x8]                             ; x0 = self->_skipButton
  10005ceb0  ret

; ======================================================================
; -[ADGameplayViewController setSkipButton:]
; address 0x10005ceb4  size 56  kind objc
; ======================================================================
  10005ceb4  stp     x20, x19, [sp, #-0x20]!
  10005ceb8  stp     x29, x30, [sp, #0x10]
  10005cebc  add     x29, sp, #0x10
  10005cec0  mov     x19, x0
  10005cec4  adrp    x8, #0x10041f000
  10005cec8  ldrsw   x20, [x8, #0xb58]                        ; ivar offset ADGameplayViewController._skipButton (+0x218)
  10005cecc  mov     x0, x2
  10005ced0  bl      _objc_retain
  10005ced4  ldr     x8, [x19, x20]                           ; x8 = self->_skipButton
  10005ced8  str     x0, [x19, x20]                           ; self->_skipButton = arg1
  10005cedc  mov     x0, x8
  10005cee0  ldp     x29, x30, [sp, #0x10]
  10005cee4  ldp     x20, x19, [sp], #0x20
  10005cee8  b       _objc_release

; ======================================================================
; -[ADGameplayViewController pauseButton]
; address 0x10005ceec  size 16  kind objc
; ======================================================================
  10005ceec  adrp    x8, #0x10041f000
  10005cef0  ldrsw   x8, [x8, #0xb5c]                         ; ivar offset ADGameplayViewController._pauseButton (+0x220)
  10005cef4  ldr     x0, [x0, x8]                             ; x0 = self->_pauseButton
  10005cef8  ret

; ======================================================================
; -[ADGameplayViewController setPauseButton:]
; address 0x10005cefc  size 56  kind objc
; ======================================================================
  10005cefc  stp     x20, x19, [sp, #-0x20]!
  10005cf00  stp     x29, x30, [sp, #0x10]
  10005cf04  add     x29, sp, #0x10
  10005cf08  mov     x19, x0
  10005cf0c  adrp    x8, #0x10041f000
  10005cf10  ldrsw   x20, [x8, #0xb5c]                        ; ivar offset ADGameplayViewController._pauseButton (+0x220)
  10005cf14  mov     x0, x2
  10005cf18  bl      _objc_retain
  10005cf1c  ldr     x8, [x19, x20]                           ; x8 = self->_pauseButton
  10005cf20  str     x0, [x19, x20]                           ; self->_pauseButton = arg1
  10005cf24  mov     x0, x8
  10005cf28  ldp     x29, x30, [sp, #0x10]
  10005cf2c  ldp     x20, x19, [sp], #0x20
  10005cf30  b       _objc_release

; ======================================================================
; -[ADGameplayViewController paused]
; address 0x10005cf34  size 16  kind objc
; ======================================================================
  10005cf34  adrp    x8, #0x10041f000
  10005cf38  ldrsw   x8, [x8, #0xb60]                         ; ivar offset ADGameplayViewController._paused (+0x190)
  10005cf3c  ldrb    w0, [x0, x8]                             ; w0 = self->_paused
  10005cf40  ret

; ======================================================================
; -[ADGameplayViewController setPaused:]
; address 0x10005cf44  size 16  kind objc
; ======================================================================
  10005cf44  adrp    x8, #0x10041f000
  10005cf48  ldrsw   x8, [x8, #0xb60]                         ; ivar offset ADGameplayViewController._paused (+0x190)
  10005cf4c  strb    w2, [x0, x8]                             ; self->_paused = arg1
  10005cf50  ret

; ======================================================================
; -[ADGameplayViewController scoreTitle]
; address 0x10005cf54  size 16  kind objc
; ======================================================================
  10005cf54  adrp    x8, #0x10041f000
  10005cf58  ldrsw   x8, [x8, #0xb64]                         ; ivar offset ADGameplayViewController._scoreTitle (+0x228)
  10005cf5c  ldr     x0, [x0, x8]                             ; x0 = self->_scoreTitle
  10005cf60  ret

; ======================================================================
; -[ADGameplayViewController setScoreTitle:]
; address 0x10005cf64  size 56  kind objc
; ======================================================================
  10005cf64  stp     x20, x19, [sp, #-0x20]!
  10005cf68  stp     x29, x30, [sp, #0x10]
  10005cf6c  add     x29, sp, #0x10
  10005cf70  mov     x19, x0
  10005cf74  adrp    x8, #0x10041f000
  10005cf78  ldrsw   x20, [x8, #0xb64]                        ; ivar offset ADGameplayViewController._scoreTitle (+0x228)
  10005cf7c  mov     x0, x2
  10005cf80  bl      _objc_retain
  10005cf84  ldr     x8, [x19, x20]                           ; x8 = self->_scoreTitle
  10005cf88  str     x0, [x19, x20]                           ; self->_scoreTitle = arg1
  10005cf8c  mov     x0, x8
  10005cf90  ldp     x29, x30, [sp, #0x10]
  10005cf94  ldp     x20, x19, [sp], #0x20
  10005cf98  b       _objc_release

; ======================================================================
; -[ADGameplayViewController comboTitle]
; address 0x10005cf9c  size 16  kind objc
; ======================================================================
  10005cf9c  adrp    x8, #0x10041f000
  10005cfa0  ldrsw   x8, [x8, #0xb68]                         ; ivar offset ADGameplayViewController._comboTitle (+0x230)
  10005cfa4  ldr     x0, [x0, x8]                             ; x0 = self->_comboTitle
  10005cfa8  ret

; ======================================================================
; -[ADGameplayViewController setComboTitle:]
; address 0x10005cfac  size 56  kind objc
; ======================================================================
  10005cfac  stp     x20, x19, [sp, #-0x20]!
  10005cfb0  stp     x29, x30, [sp, #0x10]
  10005cfb4  add     x29, sp, #0x10
  10005cfb8  mov     x19, x0
  10005cfbc  adrp    x8, #0x10041f000
  10005cfc0  ldrsw   x20, [x8, #0xb68]                        ; ivar offset ADGameplayViewController._comboTitle (+0x230)
  10005cfc4  mov     x0, x2
  10005cfc8  bl      _objc_retain
  10005cfcc  ldr     x8, [x19, x20]                           ; x8 = self->_comboTitle
  10005cfd0  str     x0, [x19, x20]                           ; self->_comboTitle = arg1
  10005cfd4  mov     x0, x8
  10005cfd8  ldp     x29, x30, [sp, #0x10]
  10005cfdc  ldp     x20, x19, [sp], #0x20
  10005cfe0  b       _objc_release

; ======================================================================
; -[ADGameplayViewController .cxx_destruct]
; address 0x10005cfe4  size 584  kind objc
; ======================================================================
  10005cfe4  stp     x20, x19, [sp, #-0x20]!
  10005cfe8  stp     x29, x30, [sp, #0x10]
  10005cfec  add     x29, sp, #0x10
  10005cff0  mov     x19, x0
  10005cff4  adrp    x8, #0x10041f000
  10005cff8  ldrsw   x8, [x8, #0xb68]                         ; ivar offset ADGameplayViewController._comboTitle (+0x230)
  10005cffc  add     x0, x19, x8
  10005d000  mov     x1, #0
  10005d004  bl      _objc_storeStrong
  10005d008  adrp    x8, #0x10041f000
  10005d00c  ldrsw   x8, [x8, #0xb64]                         ; ivar offset ADGameplayViewController._scoreTitle (+0x228)
  10005d010  add     x0, x19, x8
  10005d014  mov     x1, #0
  10005d018  bl      _objc_storeStrong
  10005d01c  adrp    x8, #0x10041f000
  10005d020  ldrsw   x8, [x8, #0xb5c]                         ; ivar offset ADGameplayViewController._pauseButton (+0x220)
  10005d024  add     x0, x19, x8
  10005d028  mov     x1, #0
  10005d02c  bl      _objc_storeStrong
  10005d030  adrp    x8, #0x10041f000
  10005d034  ldrsw   x8, [x8, #0xb58]                         ; ivar offset ADGameplayViewController._skipButton (+0x218)
  10005d038  add     x0, x19, x8
  10005d03c  mov     x1, #0
  10005d040  bl      _objc_storeStrong
  10005d044  adrp    x8, #0x10041f000
  10005d048  ldrsw   x8, [x8, #0xb54]                         ; ivar offset ADGameplayViewController._timerLabel (+0x210)
  10005d04c  add     x0, x19, x8
  10005d050  mov     x1, #0
  10005d054  bl      _objc_storeStrong
  10005d058  adrp    x8, #0x10041f000
  10005d05c  ldrsw   x8, [x8, #0xb50]                         ; ivar offset ADGameplayViewController._timerView (+0x208)
  10005d060  add     x0, x19, x8
  10005d064  mov     x1, #0
  10005d068  bl      _objc_storeStrong
  10005d06c  adrp    x8, #0x10041f000
  10005d070  ldrsw   x8, [x8, #0xb4c]                         ; ivar offset ADGameplayViewController._comboMeter (+0x200)
  10005d074  add     x0, x19, x8
  10005d078  mov     x1, #0
  10005d07c  bl      _objc_storeStrong
  10005d080  adrp    x8, #0x10041f000
  10005d084  ldrsw   x8, [x8, #0xb48]                         ; ivar offset ADGameplayViewController._scoreLabel (+0x1f8)
  10005d088  add     x0, x19, x8
  10005d08c  mov     x1, #0
  10005d090  bl      _objc_storeStrong
  10005d094  adrp    x8, #0x10041f000
  10005d098  ldrsw   x8, [x8, #0xb44]                         ; ivar offset ADGameplayViewController._comboLabel (+0x1f0)
  10005d09c  add     x0, x19, x8
  10005d0a0  mov     x1, #0
  10005d0a4  bl      _objc_storeStrong
  10005d0a8  adrp    x8, #0x10041f000
  10005d0ac  ldrsw   x8, [x8, #0xb40]                         ; ivar offset ADGameplayViewController._scoreView (+0x1e8)
  10005d0b0  add     x0, x19, x8
  10005d0b4  mov     x1, #0
  10005d0b8  bl      _objc_storeStrong
  10005d0bc  adrp    x8, #0x10041f000
  10005d0c0  ldrsw   x8, [x8, #0xb3c]                         ; ivar offset ADGameplayViewController._switchWeaponButton (+0x1e0)
  10005d0c4  add     x0, x19, x8
  10005d0c8  mov     x1, #0
  10005d0cc  bl      _objc_storeStrong
  10005d0d0  adrp    x8, #0x10041f000
  10005d0d4  ldrsw   x8, [x8, #0xb38]                         ; ivar offset ADGameplayViewController._meleeButton (+0x1d8)
  10005d0d8  add     x0, x19, x8
  10005d0dc  mov     x1, #0
  10005d0e0  bl      _objc_storeStrong
  10005d0e4  adrp    x8, #0x10041f000
  10005d0e8  ldrsw   x8, [x8, #0xb34]                         ; ivar offset ADGameplayViewController._player (+0x1d0)
  10005d0ec  add     x0, x19, x8
  10005d0f0  mov     x1, #0
  10005d0f4  bl      _objc_storeStrong
  10005d0f8  adrp    x8, #0x10041f000
  10005d0fc  ldrsw   x8, [x8, #0xb30]                         ; ivar offset ADGameplayViewController._shakeDetector (+0x1c8)
  10005d100  add     x0, x19, x8
  10005d104  mov     x1, #0
  10005d108  bl      _objc_storeStrong
  10005d10c  adrp    x8, #0x10041f000
  10005d110  ldrsw   x8, [x8, #0xb2c]                         ; ivar offset ADGameplayViewController._weaponManager (+0x1c0)
  10005d114  add     x0, x19, x8
  10005d118  mov     x1, #0
  10005d11c  bl      _objc_storeStrong
  10005d120  adrp    x8, #0x10041f000
  10005d124  ldrsw   x8, [x8, #0xb28]                         ; ivar offset ADGameplayViewController._infiniteScrollViews (+0x1b8)
  10005d128  add     x0, x19, x8
  10005d12c  mov     x1, #0
  10005d130  bl      _objc_storeStrong
  10005d134  adrp    x8, #0x10041f000
  10005d138  ldrsw   x8, [x8, #0xb24]                         ; ivar offset ADGameplayViewController._weaponButton (+0x1b0)
  10005d13c  add     x0, x19, x8
  10005d140  mov     x1, #0
  10005d144  bl      _objc_storeStrong
  10005d148  adrp    x8, #0x10041f000
  10005d14c  ldrsw   x8, [x8, #0xb20]                         ; ivar offset ADGameplayViewController._weaponTouchArea (+0x1a8)
  10005d150  add     x0, x19, x8
  10005d154  mov     x1, #0
  10005d158  bl      _objc_storeStrong
  10005d15c  adrp    x8, #0x10041f000
  10005d160  ldrsw   x8, [x8, #0xb1c]                         ; ivar offset ADGameplayViewController._buttonsView (+0x1a0)
  10005d164  add     x0, x19, x8
  10005d168  mov     x1, #0
  10005d16c  bl      _objc_storeStrong
  10005d170  adrp    x8, #0x10041f000
  10005d174  ldrsw   x8, [x8, #0xb18]                         ; ivar offset ADGameplayViewController._deathOverlay (+0x198)
  10005d178  add     x0, x19, x8
  10005d17c  mov     x1, #0
  10005d180  bl      _objc_storeStrong
  10005d184  adrp    x8, #0x10041f000
  10005d188  ldrsw   x8, [x8, #0xaf4]                         ; ivar offset ADGameplayViewController.accessibleGameView (+0x188)
  10005d18c  add     x0, x19, x8
  10005d190  mov     x1, #0
  10005d194  bl      _objc_storeStrong
  10005d198  adrp    x8, #0x10041f000
  10005d19c  ldrsw   x8, [x8, #0xb10]                         ; ivar offset ADGameplayViewController.reviveViewController (+0x178)
  10005d1a0  add     x0, x19, x8
  10005d1a4  mov     x1, #0
  10005d1a8  bl      _objc_storeStrong
  10005d1ac  adrp    x8, #0x10041f000
  10005d1b0  ldrsw   x8, [x8, #0xb08]                         ; ivar offset ADGameplayViewController.pauseView (+0x170)
  10005d1b4  add     x0, x19, x8
  10005d1b8  mov     x1, #0
  10005d1bc  bl      _objc_storeStrong
  10005d1c0  adrp    x8, #0x10041f000
  10005d1c4  ldrsw   x8, [x8, #0xb14]                         ; ivar offset ADGameplayViewController.panArray (+0x168)
  10005d1c8  add     x0, x19, x8
  10005d1cc  mov     x1, #0
  10005d1d0  bl      _objc_storeStrong
  10005d1d4  adrp    x8, #0x10041f000
  10005d1d8  ldrsw   x8, [x8, #0xaec]                         ; ivar offset ADGameplayViewController.debugMap (+0x158)
  10005d1dc  add     x0, x19, x8
  10005d1e0  mov     x1, #0
  10005d1e4  bl      _objc_storeStrong
  10005d1e8  adrp    x8, #0x10041f000
  10005d1ec  ldrsw   x8, [x8, #0xb00]                         ; ivar offset ADGameplayViewController.statsUpdateTimer (+0x150)
  10005d1f0  add     x0, x19, x8
  10005d1f4  mov     x1, #0
  10005d1f8  bl      _objc_storeStrong
  10005d1fc  adrp    x8, #0x10041f000
  10005d200  ldrsw   x8, [x8, #0xaf8]                         ; ivar offset ADGameplayViewController.updateTimer (+0x148)
  10005d204  add     x0, x19, x8
  10005d208  mov     x1, #0
  10005d20c  bl      _objc_storeStrong
  10005d210  mov     x1, #0
  10005d214  adrp    x8, #0x10041f000
  10005d218  ldrsw   x8, [x8, #0xafc]                         ; ivar offset ADGameplayViewController.weaponUpdateTimer (+0x140)
  10005d21c  add     x0, x19, x8
  10005d220  ldp     x29, x30, [sp, #0x10]
  10005d224  ldp     x20, x19, [sp], #0x20
  10005d228  b       _objc_storeStrong
