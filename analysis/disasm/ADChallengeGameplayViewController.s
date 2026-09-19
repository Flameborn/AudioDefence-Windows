// unit ADChallengeGameplayViewController — 24 functions
//   0x1000da350     208  -[ADChallengeGameplayViewController initWithNibName:bundle:challengeDictionary:]
//   0x1000da420     532  -[ADChallengeGameplayViewController viewDidLoad]
//   0x1000da634      60  -[ADChallengeGameplayViewController viewWillAppear:]
//   0x1000da670      60  -[ADChallengeGameplayViewController viewWillDisappear:]
//   0x1000da6ac     124  -[ADChallengeGameplayViewController setGameModeDimension]
//   0x1000da728     108  -[ADChallengeGameplayViewController skipButtonPressed:]
//   0x1000da794     724  -[ADChallengeGameplayViewController update]
//   0x1000daa68     280  -[ADChallengeGameplayViewController updateStats]
//   0x1000dab80     224  -[ADChallengeGameplayViewController timeStringFromSeconds:]
//   0x1000dac60     788  -[ADChallengeGameplayViewController initWeaponManager]
//   0x1000daf74     484  -[ADChallengeGameplayViewController initBrickManager]
//   0x1000db158     656  -[ADChallengeGameplayViewController initAmbiantManager]
//   0x1000db3e8     100  -[ADChallengeGameplayViewController ambiantManagerDidActivatePlaylist]
//   0x1000db44c     108  -[ADChallengeGameplayViewController initStats]
//   0x1000db4b8      16  -[ADChallengeGameplayViewController quitGameplayWithFail]
//   0x1000db4c8     192  -[ADChallengeGameplayViewController goToChallengeFailedScreen]
//   0x1000db588     124  -[ADChallengeGameplayViewController goToScoreScreen]
//   0x1000db604      36  -[ADChallengeGameplayViewController getChallengeID]
//   0x1000db628     156  -[ADChallengeGameplayViewController goToChallengeCompletedScreen]
//   0x1000db6c4     180  -[ADChallengeGameplayViewController goToChallengeCompletedScreen]_block_invoke
//   0x1000db778       8  sub_1000db778
//   0x1000db780       8  sub_1000db780
//   0x1000db788     356  -[ADChallengeGameplayViewController showDeathOverlay]
//   0x1000db8ec      20  -[ADChallengeGameplayViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeGameplayViewController initWithNibName:bundle:challengeDictionary:]
; address 0x1000da350  size 208  kind objc
; ======================================================================
  1000da350  stp     x22, x21, [sp, #-0x30]!
  1000da354  stp     x20, x19, [sp, #0x10]
  1000da358  stp     x29, x30, [sp, #0x20]
  1000da35c  add     x29, sp, #0x20
  1000da360  sub     sp, sp, #0x10
  1000da364  mov     x19, x4
  1000da368  mov     x21, x0
  1000da36c  mov     x0, x3
  1000da370  bl      _objc_retain
  1000da374  mov     x20, x0
  1000da378  mov     x0, x19
  1000da37c  bl      _objc_retain
  1000da380  mov     x19, x0
  1000da384  str     x21, [sp]
  1000da388  adrp    x8, #0x10041f000
  1000da38c  ldr     x8, [x8, #0x18]
  1000da390  str     x8, [sp, #8]
  1000da394  adrp    x8, #0x100416000
  1000da398  nop
  1000da39c  ldr     x1, [x8, #0xb40]
  1000da3a0  adrp    x2, #0x1003bd000
  1000da3a4  add     x2, x2, #0xf50                           ; @"ADGameplayViewController"
  1000da3a8  mov     x0, sp
  1000da3ac  mov     x3, x20
  1000da3b0  bl      _objc_msgSendSuper2                      ; [super initWithNibName:@"ADGameplayViewController" bundle:arg2]
  1000da3b4  mov     x21, x0
  1000da3b8  mov     x0, x20
  1000da3bc  bl      _objc_release
  1000da3c0  cbz     x21, loc_1000da3e4                       ; if (self == 0)
  1000da3c4  adrp    x8, #0x100420000
  1000da3c8  ldrsw   x20, [x8, #0x4dc]                        ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000da3cc  mov     x0, x19
  1000da3d0  bl      _objc_retain
  1000da3d4  ldr     x8, [x21, x20]                           ; x8 = self->challengeDictionary
  1000da3d8  str     x0, [x21, x20]                           ; self->challengeDictionary = arg3
  1000da3dc  mov     x0, x8
  1000da3e0  bl      _objc_release
loc_1000da3e4:
  1000da3e4  mov     x0, x19
  1000da3e8  bl      _objc_release
  1000da3ec  mov     x0, x21
  1000da3f0  sub     sp, x29, #0x20
  1000da3f4  ldp     x29, x30, [sp, #0x20]
  1000da3f8  ldp     x20, x19, [sp, #0x10]
  1000da3fc  ldp     x22, x21, [sp], #0x30
  1000da400  ret
  1000da404  mov     x21, x0
  1000da408  mov     x0, x20
  1000da40c  bl      _objc_release
  1000da410  mov     x0, x19
  1000da414  bl      _objc_release
  1000da418  mov     x0, x21
  1000da41c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController viewDidLoad]
; address 0x1000da420  size 532  kind objc
; ======================================================================
  1000da420  stp     x24, x23, [sp, #-0x40]!
  1000da424  stp     x22, x21, [sp, #0x10]
  1000da428  stp     x20, x19, [sp, #0x20]
  1000da42c  stp     x29, x30, [sp, #0x30]
  1000da430  add     x29, sp, #0x30
  1000da434  sub     sp, sp, #0x10
  1000da438  mov     x19, x0
  1000da43c  str     x19, [sp]
  1000da440  adrp    x8, #0x10041f000
  1000da444  ldr     x8, [x8, #0x18]
  1000da448  str     x8, [sp, #8]
  1000da44c  adrp    x8, #0x100416000
  1000da450  nop
  1000da454  ldr     x1, [x8, #0xb48]
  1000da458  mov     x0, sp
  1000da45c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000da460  adrp    x8, #0x100417000
  1000da464  nop
  1000da468  ldr     x1, [x8, #0xca0]
  1000da46c  mov     x0, x19
  1000da470  bl      _objc_msgSend                            ; [self scoreView]
  1000da474  mov     x29, x29
  1000da478  bl      _objc_retainAutoreleasedReturnValue
  1000da47c  mov     x21, x0
  1000da480  adrp    x8, #0x100416000
  1000da484  nop
  1000da488  ldr     x20, [x8, #0xba8]
  1000da48c  mov     w2, #1
  1000da490  mov     x1, x20
  1000da494  bl      _objc_msgSend                            ; [[self scoreView] setHidden:1]
  1000da498  mov     x0, x21
  1000da49c  bl      _objc_release
  1000da4a0  adrp    x8, #0x100417000
  1000da4a4  nop
  1000da4a8  ldr     x1, [x8, #0xce8]
  1000da4ac  mov     x0, x19
  1000da4b0  bl      _objc_msgSend                            ; [self timerView]
  1000da4b4  mov     x29, x29
  1000da4b8  bl      _objc_retainAutoreleasedReturnValue
  1000da4bc  mov     x21, x0
  1000da4c0  mov     w2, #0
  1000da4c4  mov     x1, x20
  1000da4c8  bl      _objc_msgSend                            ; [[self timerView] setHidden:0]
  1000da4cc  mov     x0, x21
  1000da4d0  bl      _objc_release
  1000da4d4  adrp    x8, #0x10041a000
  1000da4d8  nop
  1000da4dc  ldr     x21, [x8, #0xf28]
  1000da4e0  mov     x0, x19
  1000da4e4  mov     x1, x21
  1000da4e8  bl      _objc_msgSend                            ; [self timerLabel]
  1000da4ec  mov     x29, x29
  1000da4f0  bl      _objc_retainAutoreleasedReturnValue
  1000da4f4  mov     x20, x0
  1000da4f8  adrp    x8, #0x10041d000
  1000da4fc  ldr     x23, [x8, #0xf08]                        ; class UIFont
  1000da500  nop
  1000da504  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000da508  adrp    x8, #0x100416000
  1000da50c  nop
  1000da510  ldr     x1, [x8, #0xc00]
  1000da514  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000da518  mov     x29, x29
  1000da51c  bl      _objc_retainAutoreleasedReturnValue
  1000da520  mov     x22, x0
  1000da524  adrp    x8, #0x100416000
  1000da528  nop
  1000da52c  ldr     x1, [x8, #0xd18]
  1000da530  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000da534  cmp     w0, #0
  1000da538  fmov    d0, #30.00000000
  1000da53c  fmov    d1, #20.00000000
  1000da540  fcsel   d0, d1, d0, ne
  1000da544  adrp    x8, #0x100416000
  1000da548  nop
  1000da54c  ldr     x1, [x8, #0xd20]
  1000da550  adrp    x2, #0x1003c2000
  1000da554  add     x2, x2, #0x830                           ; @"scoreboard"
  1000da558  mov     x0, x23
  1000da55c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"scoreboard" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 30)]
  1000da560  mov     x29, x29
  1000da564  bl      _objc_retainAutoreleasedReturnValue
  1000da568  mov     x23, x0
  1000da56c  adrp    x8, #0x100416000
  1000da570  nop
  1000da574  ldr     x1, [x8, #0xd28]
  1000da578  mov     x0, x20
  1000da57c  mov     x2, x23
  1000da580  bl      _objc_msgSend                            ; [[self timerLabel] setFont:[UIFont fontWithName:@"scoreboard" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 30)]]
  1000da584  mov     x0, x23
  1000da588  bl      _objc_release
  1000da58c  mov     x0, x22
  1000da590  bl      _objc_release
  1000da594  mov     x0, x20
  1000da598  bl      _objc_release
  1000da59c  mov     x0, x19
  1000da5a0  mov     x1, x21
  1000da5a4  bl      _objc_msgSend                            ; [self timerLabel]
  1000da5a8  mov     x29, x29
  1000da5ac  bl      _objc_retainAutoreleasedReturnValue
  1000da5b0  mov     x20, x0
  1000da5b4  adrp    x8, #0x100416000
  1000da5b8  nop
  1000da5bc  ldr     x1, [x8, #0xb68]
  1000da5c0  adrp    x2, #0x1003c2000
  1000da5c4  add     x2, x2, #0x850                           ; @"00:00"
  1000da5c8  bl      _objc_msgSend                            ; [[self timerLabel] setText:@"00:00"]
  1000da5cc  mov     x0, x20
  1000da5d0  bl      _objc_release
  1000da5d4  sub     sp, x29, #0x30
  1000da5d8  ldp     x29, x30, [sp, #0x30]
  1000da5dc  ldp     x20, x19, [sp, #0x20]
  1000da5e0  ldp     x22, x21, [sp, #0x10]
  1000da5e4  ldp     x24, x23, [sp], #0x40
  1000da5e8  ret
  1000da5ec  mov     x19, x0
  1000da5f0  b       loc_1000da614
  1000da5f4  b       loc_1000da5f8
loc_1000da5f8:
  1000da5f8  mov     x19, x0
  1000da5fc  mov     x0, x21
  1000da600  b       loc_1000da628
  1000da604  b       loc_1000da620
  1000da608  mov     x19, x0
  1000da60c  mov     x0, x23
  1000da610  bl      _objc_release
loc_1000da614:
  1000da614  mov     x0, x22
  1000da618  bl      _objc_release
  1000da61c  b       loc_1000da624
loc_1000da620:
  1000da620  mov     x19, x0
loc_1000da624:
  1000da624  mov     x0, x20
loc_1000da628:
  1000da628  bl      _objc_release
  1000da62c  mov     x0, x19
  1000da630  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController viewWillAppear:]
; address 0x1000da634  size 60  kind objc
; ======================================================================
  1000da634  stp     x29, x30, [sp, #-0x10]!
  1000da638  mov     x29, sp
  1000da63c  sub     sp, sp, #0x10
  1000da640  str     x0, [sp]
  1000da644  adrp    x8, #0x10041f000
  1000da648  ldr     x8, [x8, #0x18]
  1000da64c  str     x8, [sp, #8]
  1000da650  adrp    x8, #0x100417000
  1000da654  nop
  1000da658  ldr     x1, [x8, #0x928]
  1000da65c  mov     x0, sp
  1000da660  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  1000da664  mov     sp, x29
  1000da668  ldp     x29, x30, [sp], #0x10
  1000da66c  ret

; ======================================================================
; -[ADChallengeGameplayViewController viewWillDisappear:]
; address 0x1000da670  size 60  kind objc
; ======================================================================
  1000da670  stp     x29, x30, [sp, #-0x10]!
  1000da674  mov     x29, sp
  1000da678  sub     sp, sp, #0x10
  1000da67c  str     x0, [sp]
  1000da680  adrp    x8, #0x10041f000
  1000da684  ldr     x8, [x8, #0x18]
  1000da688  str     x8, [sp, #8]
  1000da68c  adrp    x8, #0x10041a000
  1000da690  nop
  1000da694  ldr     x1, [x8, #0xf30]
  1000da698  mov     x0, sp
  1000da69c  bl      _objc_msgSendSuper2                      ; [super viewWillDisappear:arg1]
  1000da6a0  mov     sp, x29
  1000da6a4  ldp     x29, x30, [sp], #0x10
  1000da6a8  ret

; ======================================================================
; -[ADChallengeGameplayViewController setGameModeDimension]
; address 0x1000da6ac  size 124  kind objc
; ======================================================================
  1000da6ac  stp     x20, x19, [sp, #-0x20]!
  1000da6b0  stp     x29, x30, [sp, #0x10]
  1000da6b4  add     x29, sp, #0x10
  1000da6b8  adrp    x8, #0x10041e000
  1000da6bc  ldr     x0, [x8, #8]                             ; class ADTracker
  1000da6c0  adrp    x8, #0x100416000
  1000da6c4  nop
  1000da6c8  ldr     x1, [x8, #0xac0]
  1000da6cc  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000da6d0  mov     x29, x29
  1000da6d4  bl      _objc_retainAutoreleasedReturnValue
  1000da6d8  mov     x19, x0
  1000da6dc  adrp    x8, #0x100417000
  1000da6e0  nop
  1000da6e4  ldr     x1, [x8, #0x9b8]
  1000da6e8  mov     x4, #0
  1000da6ec  mov     x5, #0
  1000da6f0  adrp    x2, #0x1003c2000
  1000da6f4  add     x2, x2, #0x870                           ; @"Challenge mode"
  1000da6f8  adrp    x3, #0x1003bb000
  1000da6fc  add     x3, x3, #0x770                           ; @"Game mode"
  1000da700  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:@"Challenge mode" ForDimension:@"Game mode" AndValue:0 ForMetric:0]
  1000da704  mov     x0, x19
  1000da708  ldp     x29, x30, [sp, #0x10]
  1000da70c  ldp     x20, x19, [sp], #0x20
  1000da710  b       _objc_release
  1000da714  mov     x20, x0
  1000da718  mov     x0, x19
  1000da71c  bl      _objc_release
  1000da720  mov     x0, x20
  1000da724  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController skipButtonPressed:]
; address 0x1000da728  size 108  kind objc
; ======================================================================
  1000da728  stp     x20, x19, [sp, #-0x20]!
  1000da72c  stp     x29, x30, [sp, #0x10]
  1000da730  add     x29, sp, #0x10
  1000da734  adrp    x8, #0x10041e000
  1000da738  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000da73c  adrp    x8, #0x100417000
  1000da740  nop
  1000da744  ldr     x1, [x8, #0xaa8]
  1000da748  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000da74c  mov     x29, x29
  1000da750  bl      _objc_retainAutoreleasedReturnValue
  1000da754  mov     x19, x0
  1000da758  adrp    x8, #0x10041a000
  1000da75c  nop
  1000da760  ldr     x1, [x8, #0xf38]
  1000da764  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] skipSkippableSounds]
  1000da768  mov     x0, x19
  1000da76c  ldp     x29, x30, [sp, #0x10]
  1000da770  ldp     x20, x19, [sp], #0x20
  1000da774  b       _objc_release
  1000da778  mov     x20, x0
  1000da77c  b       loc_1000da78c
  1000da780  mov     x20, x0
  1000da784  mov     x0, x19
  1000da788  bl      _objc_release
loc_1000da78c:
  1000da78c  mov     x0, x20
  1000da790  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController update]
; address 0x1000da794  size 724  kind objc
; ======================================================================
  1000da794  stp     x22, x21, [sp, #-0x30]!
  1000da798  stp     x20, x19, [sp, #0x10]
  1000da79c  stp     x29, x30, [sp, #0x20]
  1000da7a0  add     x29, sp, #0x20
  1000da7a4  sub     sp, sp, #0x10
  1000da7a8  mov     x19, x0
  1000da7ac  adrp    x8, #0x100420000
  1000da7b0  ldrsw   x8, [x8, #0x4e0]                         ; ivar offset ADChallengeGameplayViewController.checkSkipButtonCounter (+0x148)
  1000da7b4  ldr     w9, [x19, x8]                            ; w9 = self->checkSkipButtonCounter
  1000da7b8  add     w9, w9, #1
  1000da7bc  str     w9, [x19, x8]                            ; self->checkSkipButtonCounter = (self->checkSkipButtonCounter + 1)
  1000da7c0  cmp     w9, #0x14
  1000da7c4  b.ne    loc_1000da8e0                            ; if ((self->checkSkipButtonCounter + 1) != 20)
  1000da7c8  str     wzr, [x19, x8]                           ; self->checkSkipButtonCounter = 0
  1000da7cc  adrp    x8, #0x10041e000
  1000da7d0  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000da7d4  adrp    x8, #0x100417000
  1000da7d8  nop
  1000da7dc  ldr     x1, [x8, #0xaa8]
  1000da7e0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000da7e4  mov     x29, x29
  1000da7e8  bl      _objc_retainAutoreleasedReturnValue
  1000da7ec  mov     x20, x0
  1000da7f0  adrp    x8, #0x100419000
  1000da7f4  nop
  1000da7f8  ldr     x1, [x8, #0x58]
  1000da7fc  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying]
  1000da800  mov     x22, x0
  1000da804  mov     x0, x20
  1000da808  bl      _objc_release
  1000da80c  adrp    x8, #0x100417000
  1000da810  nop
  1000da814  ldr     x21, [x8, #0xcc0]
  1000da818  mov     x0, x19
  1000da81c  mov     x1, x21
  1000da820  bl      _objc_msgSend                            ; [self skipButton]
  1000da824  mov     x29, x29
  1000da828  bl      _objc_retainAutoreleasedReturnValue
  1000da82c  mov     x20, x0
  1000da830  adrp    x8, #0x100416000
  1000da834  add     x8, x8, #0xba8                           ; &@selector(setHidden:)
  1000da838  ldr     x1, [x8]
  1000da83c  cbz     w22, loc_1000da8cc                       ; if ([[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying] == 0)
  1000da840  mov     w2, #0
  1000da844  mov     x0, x20
  1000da848  bl      _objc_msgSend                            ; [[self skipButton] setHidden:0]
  1000da84c  mov     x0, x20
  1000da850  bl      _objc_release
  1000da854  adrp    x8, #0x100416000
  1000da858  nop
  1000da85c  ldr     x1, [x8, #0xf18]
  1000da860  mov     x0, x19
  1000da864  bl      _objc_msgSend                            ; [self view]
  1000da868  mov     x29, x29
  1000da86c  bl      _objc_retainAutoreleasedReturnValue
  1000da870  mov     x20, x0
  1000da874  mov     x0, x19
  1000da878  mov     x1, x21
  1000da87c  bl      _objc_msgSend                            ; [self skipButton]
  1000da880  mov     x29, x29
  1000da884  bl      _objc_retainAutoreleasedReturnValue
  1000da888  mov     x21, x0
  1000da88c  adrp    x8, #0x100417000
  1000da890  nop
  1000da894  ldr     x1, [x8, #0x190]
  1000da898  mov     x0, x20
  1000da89c  mov     x2, x21
  1000da8a0  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self skipButton]]
  1000da8a4  mov     x0, x21
  1000da8a8  bl      _objc_release
  1000da8ac  mov     x0, x20
  1000da8b0  bl      _objc_release
  1000da8b4  adrp    x8, #0x1003b0000
  1000da8b8  ldr     x8, [x8, #0xb8]                          ; _UIAccessibilityLayoutChangedNotification
  1000da8bc  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityLayoutChangedNotification[+0x0]
  1000da8c0  mov     x1, #0
  1000da8c4  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityLayoutChangedNotification[+0x0], 0)
  1000da8c8  b       loc_1000da8e0
loc_1000da8cc:
  1000da8cc  mov     w2, #1
  1000da8d0  mov     x0, x20
  1000da8d4  bl      _objc_msgSend                            ; [[self skipButton] setHidden:1]
  1000da8d8  mov     x0, x20
  1000da8dc  bl      _objc_release
loc_1000da8e0:
  1000da8e0  adrp    x8, #0x100419000
  1000da8e4  nop
  1000da8e8  ldr     x1, [x8, #0x50]
  1000da8ec  mov     x0, x19
  1000da8f0  bl      _objc_msgSend                            ; [self paused]
  1000da8f4  tbnz    w0, #0, loc_1000da9e4                    ; if (([self paused] & 1))
  1000da8f8  adrp    x8, #0x10041e000
  1000da8fc  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000da900  adrp    x8, #0x100417000
  1000da904  nop
  1000da908  ldr     x1, [x8, #0xaa8]
  1000da90c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000da910  mov     x29, x29
  1000da914  bl      _objc_retainAutoreleasedReturnValue
  1000da918  mov     x20, x0
  1000da91c  adrp    x8, #0x100419000
  1000da920  nop
  1000da924  ldr     x1, [x8, #0x58]
  1000da928  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying]
  1000da92c  mov     x21, x0
  1000da930  mov     x0, x20
  1000da934  bl      _objc_release
  1000da938  tbnz    w21, #0, loc_1000da9e4                   ; if (([[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying] & 1))
  1000da93c  adrp    x8, #0x10041a000
  1000da940  nop
  1000da944  ldr     x1, [x8, #0xf28]
  1000da948  mov     x0, x19
  1000da94c  bl      _objc_msgSend                            ; [self timerLabel]
  1000da950  mov     x29, x29
  1000da954  bl      _objc_retainAutoreleasedReturnValue
  1000da958  mov     x20, x0
  1000da95c  adrp    x8, #0x10041d000
  1000da960  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000da964  adrp    x8, #0x100417000
  1000da968  nop
  1000da96c  ldr     x1, [x8, #0x228]
  1000da970  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000da974  mov     x29, x29
  1000da978  bl      _objc_retainAutoreleasedReturnValue
  1000da97c  mov     x21, x0
  1000da980  adrp    x8, #0x100418000
  1000da984  nop
  1000da988  ldr     x1, [x8, #0x9a0]
  1000da98c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] challengeTimeElapsed]
  1000da990  fcvtzs  w2, d0
  1000da994  adrp    x8, #0x100418000
  1000da998  nop
  1000da99c  ldr     x1, [x8, #0x7a8]
  1000da9a0  mov     x0, x19
  1000da9a4  bl      _objc_msgSend                            ; [self timeStringFromSeconds:(int)[[ADInGameStats singleton] challengeTimeElapsed]]
  1000da9a8  mov     x29, x29
  1000da9ac  bl      _objc_retainAutoreleasedReturnValue
  1000da9b0  mov     x22, x0
  1000da9b4  adrp    x8, #0x100416000
  1000da9b8  nop
  1000da9bc  ldr     x1, [x8, #0xb68]
  1000da9c0  mov     x0, x20
  1000da9c4  mov     x2, x22
  1000da9c8  bl      _objc_msgSend                            ; [[self timerLabel] setText:[self timeStringFromSeconds:(int)[[ADInGameStats singleton] challengeTimeElapsed]]]
  1000da9cc  mov     x0, x22
  1000da9d0  bl      _objc_release
  1000da9d4  mov     x0, x21
  1000da9d8  bl      _objc_release
  1000da9dc  mov     x0, x20
  1000da9e0  bl      _objc_release
loc_1000da9e4:
  1000da9e4  str     x19, [sp]
  1000da9e8  adrp    x8, #0x10041f000
  1000da9ec  ldr     x8, [x8, #0x18]
  1000da9f0  str     x8, [sp, #8]
  1000da9f4  adrp    x8, #0x100417000
  1000da9f8  nop
  1000da9fc  ldr     x1, [x8, #0x888]
  1000daa00  mov     x0, sp
  1000daa04  bl      _objc_msgSendSuper2                      ; [super update]
  1000daa08  sub     sp, x29, #0x20
  1000daa0c  ldp     x29, x30, [sp, #0x20]
  1000daa10  ldp     x20, x19, [sp, #0x10]
  1000daa14  ldp     x22, x21, [sp], #0x30
  1000daa18  ret
  1000daa1c  b       loc_1000daa3c
  1000daa20  b       loc_1000daa3c
  1000daa24  b       loc_1000daa30
  1000daa28  b       loc_1000daa3c
  1000daa2c  b       loc_1000daa3c
loc_1000daa30:
  1000daa30  mov     x19, x0
  1000daa34  b       loc_1000daa50
  1000daa38  b       loc_1000daa3c
loc_1000daa3c:
  1000daa3c  mov     x19, x0
  1000daa40  b       loc_1000daa58
  1000daa44  mov     x19, x0
  1000daa48  mov     x0, x22
  1000daa4c  bl      _objc_release
loc_1000daa50:
  1000daa50  mov     x0, x21
  1000daa54  bl      _objc_release
loc_1000daa58:
  1000daa58  mov     x0, x20
  1000daa5c  bl      _objc_release
  1000daa60  mov     x0, x19
  1000daa64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController updateStats]
; address 0x1000daa68  size 280  kind objc
; ======================================================================
  1000daa68  stp     x22, x21, [sp, #-0x30]!
  1000daa6c  stp     x20, x19, [sp, #0x10]
  1000daa70  stp     x29, x30, [sp, #0x20]
  1000daa74  add     x29, sp, #0x20
  1000daa78  sub     sp, sp, #0x20
  1000daa7c  mov     x19, x0
  1000daa80  str     x19, [sp, #0x10]
  1000daa84  adrp    x8, #0x10041f000
  1000daa88  ldr     x8, [x8, #0x18]
  1000daa8c  str     x8, [sp, #0x18]
  1000daa90  adrp    x8, #0x100419000
  1000daa94  nop
  1000daa98  ldr     x1, [x8, #0x48]
  1000daa9c  add     x0, sp, #0x10
  1000daaa0  bl      _objc_msgSendSuper2                      ; [super updateStats]
  1000daaa4  adrp    x8, #0x100419000
  1000daaa8  nop
  1000daaac  ldr     x1, [x8, #0x50]
  1000daab0  mov     x0, x19
  1000daab4  bl      _objc_msgSend                            ; [self paused]
  1000daab8  tbnz    w0, #0, loc_1000dab54                    ; if (([self paused] & 1))
  1000daabc  adrp    x8, #0x10041e000
  1000daac0  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000daac4  adrp    x8, #0x100417000
  1000daac8  nop
  1000daacc  ldr     x1, [x8, #0xaa8]
  1000daad0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000daad4  mov     x29, x29
  1000daad8  bl      _objc_retainAutoreleasedReturnValue
  1000daadc  mov     x20, x0
  1000daae0  adrp    x8, #0x100419000
  1000daae4  nop
  1000daae8  ldr     x1, [x8, #0x58]
  1000daaec  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying]
  1000daaf0  mov     x21, x0
  1000daaf4  mov     x0, x20
  1000daaf8  bl      _objc_release
  1000daafc  tbnz    w21, #0, loc_1000dab54                   ; if (([[ADBrickManager sharedBrickManager] hasSkippableSoundsPlaying] & 1))
  1000dab00  adrp    x8, #0x10041d000
  1000dab04  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000dab08  adrp    x8, #0x100419000
  1000dab0c  nop
  1000dab10  ldr     x1, [x8, #0x60]
  1000dab14  fmov    d0, #0.25000000
  1000dab18  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:0.25]
  1000dab1c  mov     x29, x29
  1000dab20  bl      _objc_retainAutoreleasedReturnValue
  1000dab24  mov     x20, x0
  1000dab28  adrp    x8, #0x100417000
  1000dab2c  nop
  1000dab30  ldr     x1, [x8, #0xad8]
  1000dab34  str     xzr, [sp]
  1000dab38  adrp    x2, #0x1003bd000
  1000dab3c  add     x2, x2, #0xbb0                           ; @"UPDATE_CHALLENGE_TIME_ELAPSED"
  1000dab40  mov     x0, x19
  1000dab44  mov     x3, x20
  1000dab48  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_CHALLENGE_TIME_ELAPSED" AndData:[NSNumber numberWithDouble:0.25]]
  1000dab4c  mov     x0, x20
  1000dab50  bl      _objc_release
loc_1000dab54:
  1000dab54  sub     sp, x29, #0x20
  1000dab58  ldp     x29, x30, [sp, #0x20]
  1000dab5c  ldp     x20, x19, [sp, #0x10]
  1000dab60  ldp     x22, x21, [sp], #0x30
  1000dab64  ret
  1000dab68  b       loc_1000dab6c
loc_1000dab6c:
  1000dab6c  mov     x19, x0
  1000dab70  mov     x0, x20
  1000dab74  bl      _objc_release
  1000dab78  mov     x0, x19
  1000dab7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController timeStringFromSeconds:]
; address 0x1000dab80  size 224  kind objc
; ======================================================================
  1000dab80  stp     x22, x21, [sp, #-0x30]!
  1000dab84  stp     x20, x19, [sp, #0x10]
  1000dab88  stp     x29, x30, [sp, #0x20]
  1000dab8c  add     x29, sp, #0x20
  1000dab90  sub     sp, sp, #0x10
  1000dab94  sxtw    x8, w2
  1000dab98  mov     x9, #-0x77770001
  1000dab9c  movk    x9, #0x8889
  1000daba0  mul     x8, x8, x9
  1000daba4  lsr     x8, x8, #0x20
  1000daba8  add     w8, w8, w2
  1000dabac  asr     w9, w8, #5
  1000dabb0  add     w21, w9, w8, lsr #31                     ; t1 = (((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >> 5) + ((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >>> 31))
  1000dabb4  mov     w8, #0x3c
  1000dabb8  msub    w8, w21, w8, w2
  1000dabbc  adrp    x22, #0x10041d000
  1000dabc0  adrp    x9, #0x1003b9000
  1000dabc4  add     x9, x9, #0x870                           ; @""
  1000dabc8  adrp    x10, #0x1003bb000
  1000dabcc  add     x10, x10, #0xe30                         ; @"0"
  1000dabd0  ldr     x0, [x22, #0xf78]                        ; class NSString
  1000dabd4  cmp     w8, #0xa
  1000dabd8  csel    x9, x10, x9, lt
  1000dabdc  adrp    x10, #0x100416000
  1000dabe0  nop
  1000dabe4  ldr     x20, [x10, #0xee8]
  1000dabe8  stp     x9, x8, [sp]
  1000dabec  adrp    x2, #0x1003bc000
  1000dabf0  add     x2, x2, #0xd30                           ; @"%@%i"
  1000dabf4  mov     x1, x20
  1000dabf8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 - t1 * 60)]
  1000dabfc  mov     x29, x29
  1000dac00  bl      _objc_retainAutoreleasedReturnValue
  1000dac04  mov     x19, x0
  1000dac08  ldr     x0, [x22, #0xf78]                        ; class NSString
  1000dac0c  stp     x21, x19, [sp]
  1000dac10  adrp    x2, #0x1003bc000
  1000dac14  add     x2, x2, #0xd50                           ; @"%i:%@"
  1000dac18  mov     x1, x20
  1000dac1c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i:%@", t1, [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 …]
  1000dac20  mov     x29, x29
  1000dac24  bl      _objc_retainAutoreleasedReturnValue
  1000dac28  mov     x20, x0
  1000dac2c  mov     x0, x19
  1000dac30  bl      _objc_release
  1000dac34  mov     x0, x20
  1000dac38  sub     sp, x29, #0x20
  1000dac3c  ldp     x29, x30, [sp, #0x20]
  1000dac40  ldp     x20, x19, [sp, #0x10]
  1000dac44  ldp     x22, x21, [sp], #0x30
  1000dac48  b       _objc_autoreleaseReturnValue
  1000dac4c  mov     x20, x0
  1000dac50  mov     x0, x19
  1000dac54  bl      _objc_release
  1000dac58  mov     x0, x20
  1000dac5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController initWeaponManager]
; address 0x1000dac60  size 788  kind objc
; ======================================================================
  1000dac60  stp     x26, x25, [sp, #-0x50]!
  1000dac64  stp     x24, x23, [sp, #0x10]
  1000dac68  stp     x22, x21, [sp, #0x20]
  1000dac6c  stp     x20, x19, [sp, #0x30]
  1000dac70  stp     x29, x30, [sp, #0x40]
  1000dac74  add     x29, sp, #0x40
  1000dac78  mov     x19, x0
  1000dac7c  adrp    x8, #0x10041d000
  1000dac80  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000dac84  adrp    x8, #0x100416000
  1000dac88  nop
  1000dac8c  ldr     x21, [x8, #0xac8]
  1000dac90  mov     x1, x21
  1000dac94  bl      _objc_msgSend                            ; [ADWeaponManager alloc]
  1000dac98  mov     x20, x0
  1000dac9c  adrp    x8, #0x100420000
  1000daca0  ldrsw   x8, [x8, #0x4dc]                         ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000daca4  ldr     x0, [x19, x8]                            ; x0 = self->challengeDictionary
  1000daca8  adrp    x8, #0x100417000
  1000dacac  nop
  1000dacb0  ldr     x1, [x8, #0x40]
  1000dacb4  adrp    x2, #0x1003b9000
  1000dacb8  add     x2, x2, #0xf70                           ; @"weapons"
  1000dacbc  bl      _objc_msgSend                            ; [self->challengeDictionary objectForKey:@"weapons"]
  1000dacc0  mov     x29, x29
  1000dacc4  bl      _objc_retainAutoreleasedReturnValue
  1000dacc8  mov     x22, x0
  1000daccc  adrp    x8, #0x10041a000
  1000dacd0  nop
  1000dacd4  ldr     x1, [x8, #0xf40]
  1000dacd8  mov     x0, x20
  1000dacdc  mov     x2, x22
  1000dace0  bl      _objc_msgSend                            ; [[ADWeaponManager alloc] initWithChallengeWeaponArray:[self->challengeDictionary objectForKey:@"weapons"]]
  1000dace4  mov     x23, x0
  1000dace8  adrp    x8, #0x100418000
  1000dacec  nop
  1000dacf0  ldr     x20, [x8, #0xff0]
  1000dacf4  mov     x0, x19
  1000dacf8  mov     x1, x20
  1000dacfc  mov     x2, x23
  1000dad00  bl      _objc_msgSend                            ; [self setWeaponManager:[[ADWeaponManager alloc] initWithChallengeWeaponArray:[self->challengeDictionary objectForKey:@"weapons"]]]
  1000dad04  mov     x0, x23
  1000dad08  bl      _objc_release
  1000dad0c  mov     x0, x22
  1000dad10  bl      _objc_release
  1000dad14  adrp    x8, #0x100417000
  1000dad18  nop
  1000dad1c  ldr     x24, [x8, #0xce0]
  1000dad20  mov     x0, x19
  1000dad24  mov     x1, x24
  1000dad28  bl      _objc_msgSend                            ; [self weaponTouchArea]
  1000dad2c  mov     x29, x29
  1000dad30  bl      _objc_retainAutoreleasedReturnValue
  1000dad34  mov     x23, x0
  1000dad38  adrp    x8, #0x100416000
  1000dad3c  nop
  1000dad40  ldr     x22, [x8, #0xc88]
  1000dad44  mov     x0, x19
  1000dad48  mov     x1, x22
  1000dad4c  bl      _objc_msgSend                            ; [self weaponManager]
  1000dad50  mov     x29, x29
  1000dad54  bl      _objc_retainAutoreleasedReturnValue
  1000dad58  mov     x25, x0
  1000dad5c  mov     x0, x23
  1000dad60  mov     x1, x20
  1000dad64  mov     x2, x25
  1000dad68  bl      _objc_msgSend                            ; [[self weaponTouchArea] setWeaponManager:[self weaponManager]]
  1000dad6c  mov     x0, x25
  1000dad70  bl      _objc_release
  1000dad74  mov     x0, x23
  1000dad78  bl      _objc_release
  1000dad7c  mov     x0, x19
  1000dad80  mov     x1, x24
  1000dad84  bl      _objc_msgSend                            ; [self weaponTouchArea]
  1000dad88  mov     x29, x29
  1000dad8c  bl      _objc_retainAutoreleasedReturnValue
  1000dad90  mov     x24, x0
  1000dad94  adrp    x8, #0x100417000
  1000dad98  nop
  1000dad9c  ldr     x23, [x8, #0xc10]
  1000dada0  mov     x1, x23
  1000dada4  mov     x2, x19
  1000dada8  bl      _objc_msgSend                            ; [[self weaponTouchArea] setGameplayViewController:self]
  1000dadac  mov     x0, x24
  1000dadb0  bl      _objc_release
  1000dadb4  adrp    x8, #0x100417000
  1000dadb8  nop
  1000dadbc  ldr     x25, [x8, #0xa58]
  1000dadc0  mov     x0, x19
  1000dadc4  mov     x1, x25
  1000dadc8  bl      _objc_msgSend                            ; [self weaponButton]
  1000dadcc  mov     x29, x29
  1000dadd0  bl      _objc_retainAutoreleasedReturnValue
  1000dadd4  mov     x24, x0
  1000dadd8  mov     x0, x19
  1000daddc  mov     x1, x22
  1000dade0  bl      _objc_msgSend                            ; [self weaponManager]
  1000dade4  mov     x29, x29
  1000dade8  bl      _objc_retainAutoreleasedReturnValue
  1000dadec  mov     x26, x0
  1000dadf0  mov     x0, x24
  1000dadf4  mov     x1, x20
  1000dadf8  mov     x2, x26
  1000dadfc  bl      _objc_msgSend                            ; [[self weaponButton] setWeaponManager:[self weaponManager]]
  1000dae00  mov     x0, x26
  1000dae04  bl      _objc_release
  1000dae08  mov     x0, x24
  1000dae0c  bl      _objc_release
  1000dae10  mov     x0, x19
  1000dae14  mov     x1, x25
  1000dae18  bl      _objc_msgSend                            ; [self weaponButton]
  1000dae1c  mov     x29, x29
  1000dae20  bl      _objc_retainAutoreleasedReturnValue
  1000dae24  mov     x24, x0
  1000dae28  mov     x1, x23
  1000dae2c  mov     x2, x19
  1000dae30  bl      _objc_msgSend                            ; [[self weaponButton] setGameplayViewController:self]
  1000dae34  mov     x0, x24
  1000dae38  bl      _objc_release
  1000dae3c  adrp    x8, #0x10041e000
  1000dae40  ldr     x0, [x8, #0x208]                         ; class ADShakeDetector
  1000dae44  mov     x1, x21
  1000dae48  bl      _objc_msgSend                            ; [ADShakeDetector alloc]
  1000dae4c  adrp    x8, #0x100416000
  1000dae50  nop
  1000dae54  ldr     x1, [x8, #0xab8]
  1000dae58  bl      _objc_msgSend                            ; [[ADShakeDetector alloc] init]
  1000dae5c  mov     x21, x0
  1000dae60  adrp    x8, #0x100419000
  1000dae64  nop
  1000dae68  ldr     x1, [x8, #0x30]
  1000dae6c  mov     x0, x19
  1000dae70  mov     x2, x21
  1000dae74  bl      _objc_msgSend                            ; [self setShakeDetector:[[ADShakeDetector alloc] init]]
  1000dae78  mov     x0, x21
  1000dae7c  bl      _objc_release
  1000dae80  adrp    x8, #0x100419000
  1000dae84  nop
  1000dae88  ldr     x1, [x8, #0x38]
  1000dae8c  mov     x0, x19
  1000dae90  bl      _objc_msgSend                            ; [self shakeDetector]
  1000dae94  mov     x29, x29
  1000dae98  bl      _objc_retainAutoreleasedReturnValue
  1000dae9c  mov     x21, x0
  1000daea0  mov     x0, x19
  1000daea4  mov     x1, x22
  1000daea8  bl      _objc_msgSend                            ; [self weaponManager]
  1000daeac  mov     x29, x29
  1000daeb0  bl      _objc_retainAutoreleasedReturnValue
  1000daeb4  mov     x22, x0
  1000daeb8  mov     x0, x21
  1000daebc  mov     x1, x20
  1000daec0  mov     x2, x22
  1000daec4  bl      _objc_msgSend                            ; [[self shakeDetector] setWeaponManager:[self weaponManager]]
  1000daec8  mov     x0, x22
  1000daecc  bl      _objc_release
  1000daed0  mov     x0, x21
  1000daed4  ldp     x29, x30, [sp, #0x40]
  1000daed8  ldp     x20, x19, [sp, #0x30]
  1000daedc  ldp     x22, x21, [sp, #0x20]
  1000daee0  ldp     x24, x23, [sp, #0x10]
  1000daee4  ldp     x26, x25, [sp], #0x50
  1000daee8  b       _objc_release
  1000daeec  mov     x19, x0
  1000daef0  b       loc_1000daf00
  1000daef4  mov     x19, x0
  1000daef8  mov     x0, x23
  1000daefc  bl      _objc_release
loc_1000daf00:
  1000daf00  mov     x0, x22
  1000daf04  b       loc_1000daf68
  1000daf08  mov     x19, x0
  1000daf0c  b       loc_1000daf1c
  1000daf10  mov     x19, x0
  1000daf14  mov     x0, x25
  1000daf18  bl      _objc_release
loc_1000daf1c:
  1000daf1c  mov     x0, x23
  1000daf20  b       loc_1000daf68
  1000daf24  b       loc_1000daf3c
  1000daf28  b       loc_1000daf3c
  1000daf2c  mov     x19, x0
  1000daf30  mov     x0, x26
  1000daf34  bl      _objc_release
  1000daf38  b       loc_1000daf40
loc_1000daf3c:
  1000daf3c  mov     x19, x0
loc_1000daf40:
  1000daf40  mov     x0, x24
  1000daf44  b       loc_1000daf68
  1000daf48  mov     x19, x0
  1000daf4c  b       loc_1000daf64
  1000daf50  mov     x19, x0
  1000daf54  b       loc_1000daf64
  1000daf58  mov     x19, x0
  1000daf5c  mov     x0, x22
  1000daf60  bl      _objc_release
loc_1000daf64:
  1000daf64  mov     x0, x21
loc_1000daf68:
  1000daf68  bl      _objc_release
  1000daf6c  mov     x0, x19
  1000daf70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController initBrickManager]
; address 0x1000daf74  size 484  kind objc
; ======================================================================
  1000daf74  stp     x22, x21, [sp, #-0x30]!
  1000daf78  stp     x20, x19, [sp, #0x10]
  1000daf7c  stp     x29, x30, [sp, #0x20]
  1000daf80  add     x29, sp, #0x20
  1000daf84  mov     x20, x0
  1000daf88  adrp    x22, #0x10041e000
  1000daf8c  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000daf90  adrp    x8, #0x100417000
  1000daf94  nop
  1000daf98  ldr     x19, [x8, #0xaa8]
  1000daf9c  mov     x1, x19
  1000dafa0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000dafa4  mov     x29, x29
  1000dafa8  bl      _objc_retainAutoreleasedReturnValue
  1000dafac  mov     x21, x0
  1000dafb0  adrp    x8, #0x100417000
  1000dafb4  nop
  1000dafb8  ldr     x1, [x8, #0xd38]
  1000dafbc  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] reset]
  1000dafc0  mov     x0, x21
  1000dafc4  bl      _objc_release
  1000dafc8  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000dafcc  mov     x1, x19
  1000dafd0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000dafd4  mov     x29, x29
  1000dafd8  bl      _objc_retainAutoreleasedReturnValue
  1000dafdc  mov     x21, x0
  1000dafe0  adrp    x8, #0x100417000
  1000dafe4  nop
  1000dafe8  ldr     x1, [x8, #0xd30]
  1000dafec  mov     w2, #2
  1000daff0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] setMode:2]
  1000daff4  mov     x0, x21
  1000daff8  bl      _objc_release
  1000daffc  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000db000  mov     x1, x19
  1000db004  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000db008  mov     x29, x29
  1000db00c  bl      _objc_retainAutoreleasedReturnValue
  1000db010  mov     x21, x0
  1000db014  adrp    x8, #0x100417000
  1000db018  nop
  1000db01c  ldr     x1, [x8, #0xc10]
  1000db020  mov     x2, x20
  1000db024  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] setGameplayViewController:self]
  1000db028  mov     x0, x21
  1000db02c  bl      _objc_release
  1000db030  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000db034  mov     x1, x19
  1000db038  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000db03c  mov     x29, x29
  1000db040  bl      _objc_retainAutoreleasedReturnValue
  1000db044  mov     x21, x0
  1000db048  adrp    x8, #0x100420000
  1000db04c  ldrsw   x8, [x8, #0x4dc]                         ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000db050  ldr     x0, [x20, x8]                            ; x0 = self->challengeDictionary
  1000db054  adrp    x8, #0x100417000
  1000db058  nop
  1000db05c  ldr     x1, [x8, #0x40]
  1000db060  adrp    x2, #0x1003c2000
  1000db064  add     x2, x2, #0x890                           ; @"bricks"
  1000db068  bl      _objc_msgSend                            ; [self->challengeDictionary objectForKey:@"bricks"]
  1000db06c  mov     x29, x29
  1000db070  bl      _objc_retainAutoreleasedReturnValue
  1000db074  mov     x20, x0
  1000db078  adrp    x8, #0x10041a000
  1000db07c  nop
  1000db080  ldr     x1, [x8, #0xf48]
  1000db084  mov     x0, x21
  1000db088  mov     x2, x20
  1000db08c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] loadBrickChallengeArray:[self->challengeDictionary objectForKey:@"bricks"]]
  1000db090  mov     x0, x20
  1000db094  bl      _objc_release
  1000db098  mov     x0, x21
  1000db09c  bl      _objc_release
  1000db0a0  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  1000db0a4  mov     x1, x19
  1000db0a8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000db0ac  mov     x29, x29
  1000db0b0  bl      _objc_retainAutoreleasedReturnValue
  1000db0b4  mov     x20, x0
  1000db0b8  adrp    x8, #0x100418000
  1000db0bc  nop
  1000db0c0  ldr     x1, [x8, #0xf70]
  1000db0c4  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] loadNextBrick]
  1000db0c8  mov     x0, x20
  1000db0cc  bl      _objc_release
  1000db0d0  adrp    x8, #0x10041d000
  1000db0d4  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  1000db0d8  adrp    x8, #0x100417000
  1000db0dc  nop
  1000db0e0  ldr     x1, [x8, #0x848]
  1000db0e4  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  1000db0e8  mov     x29, x29
  1000db0ec  bl      _objc_retainAutoreleasedReturnValue
  1000db0f0  mov     x20, x0
  1000db0f4  adrp    x8, #0x100416000
  1000db0f8  nop
  1000db0fc  ldr     x1, [x8, #0xe50]
  1000db100  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] startGameplay]
  1000db104  mov     x0, x20
  1000db108  ldp     x29, x30, [sp, #0x20]
  1000db10c  ldp     x20, x19, [sp, #0x10]
  1000db110  ldp     x22, x21, [sp], #0x30
  1000db114  b       _objc_release
  1000db118  b       loc_1000db124
  1000db11c  b       loc_1000db124
  1000db120  b       loc_1000db124
loc_1000db124:
  1000db124  mov     x19, x0
  1000db128  b       loc_1000db138
  1000db12c  mov     x19, x0
  1000db130  mov     x0, x20
  1000db134  bl      _objc_release
loc_1000db138:
  1000db138  mov     x0, x21
  1000db13c  b       loc_1000db14c
  1000db140  b       loc_1000db144
loc_1000db144:
  1000db144  mov     x19, x0
  1000db148  mov     x0, x20
loc_1000db14c:
  1000db14c  bl      _objc_release
  1000db150  mov     x0, x19
  1000db154  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController initAmbiantManager]
; address 0x1000db158  size 656  kind objc
; ======================================================================
  1000db158  stp     x26, x25, [sp, #-0x50]!
  1000db15c  stp     x24, x23, [sp, #0x10]
  1000db160  stp     x22, x21, [sp, #0x20]
  1000db164  stp     x20, x19, [sp, #0x30]
  1000db168  stp     x29, x30, [sp, #0x40]
  1000db16c  add     x29, sp, #0x40
  1000db170  mov     x19, x0
  1000db174  adrp    x26, #0x10041e000
  1000db178  ldr     x0, [x26, #0x1e0]                        ; class ADAmbientManager
  1000db17c  adrp    x8, #0x100418000
  1000db180  nop
  1000db184  ldr     x20, [x8, #0xf58]
  1000db188  mov     x1, x20
  1000db18c  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  1000db190  mov     x29, x29
  1000db194  bl      _objc_retainAutoreleasedReturnValue
  1000db198  mov     x21, x0
  1000db19c  adrp    x8, #0x100420000
  1000db1a0  ldrsw   x24, [x8, #0x4dc]                        ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000db1a4  ldr     x0, [x19, x24]                           ; x0 = self->challengeDictionary
  1000db1a8  adrp    x8, #0x100417000
  1000db1ac  nop
  1000db1b0  ldr     x25, [x8, #0x40]
  1000db1b4  adrp    x2, #0x1003c0000
  1000db1b8  add     x2, x2, #0x250                           ; @"ambient"
  1000db1bc  mov     x1, x25
  1000db1c0  bl      _objc_msgSend                            ; [self->challengeDictionary objectForKey:@"ambient"]
  1000db1c4  mov     x29, x29
  1000db1c8  bl      _objc_retainAutoreleasedReturnValue
  1000db1cc  mov     x22, x0
  1000db1d0  adrp    x2, #0x1003c2000
  1000db1d4  add     x2, x2, #0x8b0                           ; @"ambientPlaylist"
  1000db1d8  mov     x1, x25
  1000db1dc  bl      _objc_msgSend                            ; [[self->challengeDictionary objectForKey:@"ambient"] objectForKey:@"ambientPlaylist"]
  1000db1e0  mov     x29, x29
  1000db1e4  bl      _objc_retainAutoreleasedReturnValue
  1000db1e8  mov     x23, x0
  1000db1ec  ldr     x0, [x19, x24]                           ; x0 = self->challengeDictionary
  1000db1f0  adrp    x2, #0x1003c0000
  1000db1f4  add     x2, x2, #0x250                           ; @"ambient"
  1000db1f8  mov     x1, x25
  1000db1fc  bl      _objc_msgSend                            ; [self->challengeDictionary objectForKey:@"ambient"]
  1000db200  mov     x29, x29
  1000db204  bl      _objc_retainAutoreleasedReturnValue
  1000db208  mov     x24, x0
  1000db20c  adrp    x2, #0x1003c1000
  1000db210  add     x2, x2, #0x2b0                           ; @"gain"
  1000db214  mov     x1, x25
  1000db218  bl      _objc_msgSend                            ; [[self->challengeDictionary objectForKey:@"ambient"] objectForKey:@"gain"]
  1000db21c  mov     x29, x29
  1000db220  bl      _objc_retainAutoreleasedReturnValue
  1000db224  mov     x25, x0
  1000db228  adrp    x8, #0x100417000
  1000db22c  nop
  1000db230  ldr     x1, [x8, #0x48]
  1000db234  bl      _objc_msgSend                            ; [[[self->challengeDictionary objectForKey:@"ambient"] objectForKey:@"gain"] floatValue]
  1000db238  adrp    x8, #0x10041a000
  1000db23c  nop
  1000db240  ldr     x1, [x8, #0x100]
  1000db244  mov     x0, x21
  1000db248  mov     x2, x23
  1000db24c  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] startWithambient:[[self->challengeDictionary objectForKey:@"ambient"] objectForKey:@"ambientPlaylist"] gain:[[[self->challengeDictionary objectForKey:@"ambient"] objectForKey:@"gain"] floatValue]]
  1000db250  mov     x0, x25
  1000db254  bl      _objc_release
  1000db258  mov     x0, x24
  1000db25c  bl      _objc_release
  1000db260  mov     x0, x23
  1000db264  bl      _objc_release
  1000db268  mov     x0, x22
  1000db26c  bl      _objc_release
  1000db270  mov     x0, x21
  1000db274  bl      _objc_release
  1000db278  adrp    x23, #0x10041d000
  1000db27c  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  1000db280  adrp    x8, #0x100417000
  1000db284  nop
  1000db288  ldr     x21, [x8, #0x4f0]
  1000db28c  mov     x1, x21
  1000db290  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000db294  mov     x29, x29
  1000db298  bl      _objc_retainAutoreleasedReturnValue
  1000db29c  mov     x22, x0
  1000db2a0  adrp    x8, #0x100417000
  1000db2a4  nop
  1000db2a8  ldr     x1, [x8, #0xd18]
  1000db2ac  fmov    s0, #1.50000000
  1000db2b0  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbRoomSize:1.5]
  1000db2b4  mov     x0, x22
  1000db2b8  bl      _objc_release
  1000db2bc  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  1000db2c0  mov     x1, x21
  1000db2c4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000db2c8  mov     x29, x29
  1000db2cc  bl      _objc_retainAutoreleasedReturnValue
  1000db2d0  mov     x22, x0
  1000db2d4  adrp    x8, #0x100417000
  1000db2d8  nop
  1000db2dc  ldr     x1, [x8, #0xd20]
  1000db2e0  nop
  1000db2e4  ldr     s0, #0x100181ac0                         ; s0 = 50.0
  1000db2e8  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbDampening:50]
  1000db2ec  mov     x0, x22
  1000db2f0  bl      _objc_release
  1000db2f4  ldr     x0, [x23, #0xff8]                        ; class S3DEngine
  1000db2f8  mov     x1, x21
  1000db2fc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000db300  mov     x29, x29
  1000db304  bl      _objc_retainAutoreleasedReturnValue
  1000db308  mov     x21, x0
  1000db30c  adrp    x8, #0x100417000
  1000db310  nop
  1000db314  ldr     x1, [x8, #0xd28]
  1000db318  fmov    s0, #1.00000000
  1000db31c  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbVolume:1]
  1000db320  mov     x0, x21
  1000db324  bl      _objc_release
  1000db328  ldr     x0, [x26, #0x1e0]                        ; class ADAmbientManager
  1000db32c  mov     x1, x20
  1000db330  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  1000db334  mov     x29, x29
  1000db338  bl      _objc_retainAutoreleasedReturnValue
  1000db33c  mov     x20, x0
  1000db340  adrp    x8, #0x100417000
  1000db344  nop
  1000db348  ldr     x1, [x8, #0xc10]
  1000db34c  mov     x2, x19
  1000db350  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] setGameplayViewController:self]
  1000db354  mov     x0, x20
  1000db358  ldp     x29, x30, [sp, #0x40]
  1000db35c  ldp     x20, x19, [sp, #0x30]
  1000db360  ldp     x22, x21, [sp, #0x20]
  1000db364  ldp     x24, x23, [sp, #0x10]
  1000db368  ldp     x26, x25, [sp], #0x50
  1000db36c  b       _objc_release
  1000db370  mov     x19, x0
  1000db374  mov     x0, x25
  1000db378  bl      _objc_release
  1000db37c  b       loc_1000db39c
  1000db380  mov     x19, x0
  1000db384  b       loc_1000db3cc
  1000db388  mov     x19, x0
  1000db38c  b       loc_1000db3ac
  1000db390  mov     x19, x0
  1000db394  b       loc_1000db3a4
  1000db398  mov     x19, x0
loc_1000db39c:
  1000db39c  mov     x0, x24
  1000db3a0  bl      _objc_release
loc_1000db3a4:
  1000db3a4  mov     x0, x23
  1000db3a8  bl      _objc_release
loc_1000db3ac:
  1000db3ac  mov     x0, x22
  1000db3b0  bl      _objc_release
  1000db3b4  b       loc_1000db3cc
  1000db3b8  b       loc_1000db3bc
loc_1000db3bc:
  1000db3bc  mov     x19, x0
  1000db3c0  mov     x0, x22
  1000db3c4  b       loc_1000db3d0
  1000db3c8  mov     x19, x0
loc_1000db3cc:
  1000db3cc  mov     x0, x21
loc_1000db3d0:
  1000db3d0  bl      _objc_release
  1000db3d4  mov     x0, x19
  1000db3d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000db3dc  mov     x19, x0
  1000db3e0  mov     x0, x20
  1000db3e4  b       loc_1000db3d0

; ======================================================================
; -[ADChallengeGameplayViewController ambiantManagerDidActivatePlaylist]
; address 0x1000db3e8  size 100  kind objc
; ======================================================================
  1000db3e8  stp     x20, x19, [sp, #-0x20]!
  1000db3ec  stp     x29, x30, [sp, #0x10]
  1000db3f0  add     x29, sp, #0x10
  1000db3f4  adrp    x8, #0x10041e000
  1000db3f8  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  1000db3fc  adrp    x8, #0x100418000
  1000db400  nop
  1000db404  ldr     x1, [x8, #0xf58]
  1000db408  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  1000db40c  mov     x29, x29
  1000db410  bl      _objc_retainAutoreleasedReturnValue
  1000db414  mov     x19, x0
  1000db418  adrp    x8, #0x10041a000
  1000db41c  nop
  1000db420  ldr     x1, [x8, #0xf50]
  1000db424  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] startBaseSound]
  1000db428  mov     x0, x19
  1000db42c  ldp     x29, x30, [sp, #0x10]
  1000db430  ldp     x20, x19, [sp], #0x20
  1000db434  b       _objc_release
  1000db438  mov     x20, x0
  1000db43c  mov     x0, x19
  1000db440  bl      _objc_release
  1000db444  mov     x0, x20
  1000db448  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController initStats]
; address 0x1000db44c  size 108  kind objc
; ======================================================================
  1000db44c  stp     x20, x19, [sp, #-0x20]!
  1000db450  stp     x29, x30, [sp, #0x10]
  1000db454  add     x29, sp, #0x10
  1000db458  adrp    x8, #0x10041d000
  1000db45c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000db460  adrp    x8, #0x100417000
  1000db464  nop
  1000db468  ldr     x1, [x8, #0x228]
  1000db46c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000db470  mov     x29, x29
  1000db474  bl      _objc_retainAutoreleasedReturnValue
  1000db478  mov     x19, x0
  1000db47c  adrp    x8, #0x100418000
  1000db480  nop
  1000db484  ldr     x1, [x8, #0xf78]
  1000db488  adrp    x2, #0x1003bd000
  1000db48c  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  1000db490  bl      _objc_msgSend                            ; [[ADInGameStats singleton] startNewLevel:@"CHALLENGE"]
  1000db494  mov     x0, x19
  1000db498  ldp     x29, x30, [sp, #0x10]
  1000db49c  ldp     x20, x19, [sp], #0x20
  1000db4a0  b       _objc_release
  1000db4a4  mov     x20, x0
  1000db4a8  mov     x0, x19
  1000db4ac  bl      _objc_release
  1000db4b0  mov     x0, x20
  1000db4b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController quitGameplayWithFail]
; address 0x1000db4b8  size 16  kind objc
; ======================================================================
  1000db4b8  adrp    x8, #0x10041a000
  1000db4bc  nop
  1000db4c0  ldr     x1, [x8, #0xc30]
  1000db4c4  b       _objc_msgSend                            ; [self goToChallengeFailedScreen]

; ======================================================================
; -[ADChallengeGameplayViewController goToChallengeFailedScreen]
; address 0x1000db4c8  size 192  kind objc
; ======================================================================
  1000db4c8  stp     x22, x21, [sp, #-0x30]!
  1000db4cc  stp     x20, x19, [sp, #0x10]
  1000db4d0  stp     x29, x30, [sp, #0x20]
  1000db4d4  add     x29, sp, #0x20
  1000db4d8  mov     x20, x0
  1000db4dc  adrp    x8, #0x100417000
  1000db4e0  nop
  1000db4e4  ldr     x1, [x8, #0xd48]
  1000db4e8  bl      _objc_msgSend                            ; [self killGameplay]
  1000db4ec  adrp    x8, #0x10041d000
  1000db4f0  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000db4f4  adrp    x8, #0x100416000
  1000db4f8  nop
  1000db4fc  ldr     x1, [x8, #0xb28]
  1000db500  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000db504  mov     x29, x29
  1000db508  bl      _objc_retainAutoreleasedReturnValue
  1000db50c  mov     x19, x0
  1000db510  adrp    x8, #0x100416000
  1000db514  nop
  1000db518  ldr     x1, [x8, #0xc18]
  1000db51c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000db520  mov     x29, x29
  1000db524  bl      _objc_retainAutoreleasedReturnValue
  1000db528  mov     x21, x0
  1000db52c  adrp    x8, #0x100420000
  1000db530  ldrsw   x8, [x8, #0x4dc]                         ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000db534  ldr     x2, [x20, x8]                            ; x2 = self->challengeDictionary
  1000db538  adrp    x8, #0x10041a000
  1000db53c  nop
  1000db540  ldr     x1, [x8, #0xf58]
  1000db544  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeFailedWithDictionary:self->challengeDictionary]
  1000db548  mov     x0, x21
  1000db54c  bl      _objc_release
  1000db550  mov     x0, x19
  1000db554  ldp     x29, x30, [sp, #0x20]
  1000db558  ldp     x20, x19, [sp, #0x10]
  1000db55c  ldp     x22, x21, [sp], #0x30
  1000db560  b       _objc_release
  1000db564  mov     x20, x0
  1000db568  b       loc_1000db578
  1000db56c  mov     x20, x0
  1000db570  mov     x0, x21
  1000db574  bl      _objc_release
loc_1000db578:
  1000db578  mov     x0, x19
  1000db57c  bl      _objc_release
  1000db580  mov     x0, x20
  1000db584  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController goToScoreScreen]
; address 0x1000db588  size 124  kind objc
; ======================================================================
  1000db588  stp     x20, x19, [sp, #-0x20]!
  1000db58c  stp     x29, x30, [sp, #0x10]
  1000db590  add     x29, sp, #0x10
  1000db594  mov     x19, x0
  1000db598  adrp    x8, #0x10041d000
  1000db59c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000db5a0  adrp    x8, #0x100417000
  1000db5a4  nop
  1000db5a8  ldr     x1, [x8, #0x228]
  1000db5ac  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000db5b0  mov     x29, x29
  1000db5b4  bl      _objc_retainAutoreleasedReturnValue
  1000db5b8  mov     x20, x0
  1000db5bc  adrp    x8, #0x10041a000
  1000db5c0  nop
  1000db5c4  ldr     x1, [x8, #0xf60]
  1000db5c8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] forceCompleteAccuracy]
  1000db5cc  mov     x0, x20
  1000db5d0  bl      _objc_release
  1000db5d4  adrp    x8, #0x10041a000
  1000db5d8  nop
  1000db5dc  ldr     x1, [x8, #0xf68]
  1000db5e0  mov     x0, x19
  1000db5e4  ldp     x29, x30, [sp, #0x10]
  1000db5e8  ldp     x20, x19, [sp], #0x20
  1000db5ec  b       _objc_msgSend                            ; [self goToChallengeCompletedScreen]
  1000db5f0  mov     x19, x0
  1000db5f4  mov     x0, x20
  1000db5f8  bl      _objc_release
  1000db5fc  mov     x0, x19
  1000db600  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController getChallengeID]
; address 0x1000db604  size 36  kind objc
; ======================================================================
  1000db604  adrp    x8, #0x100420000
  1000db608  ldrsw   x8, [x8, #0x4dc]                         ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000db60c  ldr     x0, [x0, x8]                             ; x0 = self->challengeDictionary
  1000db610  adrp    x8, #0x100417000
  1000db614  nop
  1000db618  ldr     x1, [x8, #0x40]
  1000db61c  adrp    x2, #0x1003b9000
  1000db620  add     x2, x2, #0xef0                           ; @"challenge_id"
  1000db624  b       _objc_msgSend                            ; [self->challengeDictionary objectForKey:@"challenge_id"]

; ======================================================================
; -[ADChallengeGameplayViewController goToChallengeCompletedScreen]
; address 0x1000db628  size 156  kind objc
; ======================================================================
  1000db628  stp     x20, x19, [sp, #-0x20]!
  1000db62c  stp     x29, x30, [sp, #0x10]
  1000db630  add     x29, sp, #0x10
  1000db634  sub     sp, sp, #0x30
  1000db638  mov     x19, x0
  1000db63c  adrp    x8, #0x100417000
  1000db640  nop
  1000db644  ldr     x1, [x8, #0xd48]
  1000db648  bl      _objc_msgSend                            ; [self killGameplay]
  1000db64c  mov     w1, #0x5f50000
  1000db650  movk    w1, #0xe100
  1000db654  mov     x0, #0
  1000db658  bl      _dispatch_time                           ; dispatch_time(0, 0x5f5e100)
  1000db65c  mov     x20, x0
  1000db660  adrp    x8, #0x1003b0000
  1000db664  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000db668  mov     w9, #-0x3e000000
  1000db66c  str     x8, [sp, #8]
  1000db670  stp     w9, wzr, [sp, #0x10]
  1000db674  adr     x8, #0x1000db6c4                         ; &-[ADChallengeGameplayViewController goToChallengeCompletedScreen]_block_invoke
  1000db678  nop
  1000db67c  str     x8, [sp, #0x18]
  1000db680  adrp    x8, #0x1003b2000
  1000db684  add     x8, x8, #0xac0                           ; &d_1003b2ac0
  1000db688  str     x8, [sp, #0x20]
  1000db68c  mov     x0, x19
  1000db690  bl      _objc_retain
  1000db694  str     x0, [sp, #0x28]
  1000db698  adrp    x1, #0x1003b0000
  1000db69c  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000db6a0  add     x2, sp, #8
  1000db6a4  mov     x0, x20
  1000db6a8  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x5f5e100), __dispatch_main_q, ^{-[ADChallengeGameplayViewController goToChallengeCompletedScreen]_block_invoke captures +0x20=self})
  1000db6ac  ldr     x0, [sp, #0x28]
  1000db6b0  bl      _objc_release
  1000db6b4  sub     sp, x29, #0x10
  1000db6b8  ldp     x29, x30, [sp, #0x10]
  1000db6bc  ldp     x20, x19, [sp], #0x20
  1000db6c0  ret

; ======================================================================
; -[ADChallengeGameplayViewController goToChallengeCompletedScreen]_block_invoke
; address 0x1000db6c4  size 180  kind block
; ======================================================================
  1000db6c4  stp     x22, x21, [sp, #-0x30]!
  1000db6c8  stp     x20, x19, [sp, #0x10]
  1000db6cc  stp     x29, x30, [sp, #0x20]
  1000db6d0  add     x29, sp, #0x20
  1000db6d4  mov     x20, x0
  1000db6d8  adrp    x8, #0x10041d000
  1000db6dc  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000db6e0  adrp    x8, #0x100416000
  1000db6e4  nop
  1000db6e8  ldr     x1, [x8, #0xb28]
  1000db6ec  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000db6f0  mov     x29, x29
  1000db6f4  bl      _objc_retainAutoreleasedReturnValue
  1000db6f8  mov     x19, x0
  1000db6fc  adrp    x8, #0x100416000
  1000db700  nop
  1000db704  ldr     x1, [x8, #0xc18]
  1000db708  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000db70c  mov     x29, x29
  1000db710  bl      _objc_retainAutoreleasedReturnValue
  1000db714  mov     x21, x0
  1000db718  ldr     x8, [x20, #0x20]                         ; x8 = captured self
  1000db71c  adrp    x9, #0x100420000
  1000db720  ldrsw   x9, [x9, #0x4dc]                         ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000db724  ldr     x2, [x8, x9]                             ; x2 = self->challengeDictionary
  1000db728  adrp    x8, #0x10041a000
  1000db72c  nop
  1000db730  ldr     x1, [x8, #0xf70]
  1000db734  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeCompletedWithDictionary:self->challengeDictionary]
  1000db738  mov     x0, x21
  1000db73c  bl      _objc_release
  1000db740  mov     x0, x19
  1000db744  ldp     x29, x30, [sp, #0x20]
  1000db748  ldp     x20, x19, [sp, #0x10]
  1000db74c  ldp     x22, x21, [sp], #0x30
  1000db750  b       _objc_release
  1000db754  mov     x20, x0
  1000db758  b       loc_1000db768
  1000db75c  mov     x20, x0
  1000db760  mov     x0, x21
  1000db764  bl      _objc_release
loc_1000db768:
  1000db768  mov     x0, x19
  1000db76c  bl      _objc_release
  1000db770  mov     x0, x20
  1000db774  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000db778
; address 0x1000db778  size 8  kind sub
; ======================================================================
  1000db778  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000db77c  b       _objc_retain

; ======================================================================
; sub_1000db780
; address 0x1000db780  size 8  kind sub
; ======================================================================
  1000db780  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000db784  b       _objc_release

; ======================================================================
; -[ADChallengeGameplayViewController showDeathOverlay]
; address 0x1000db788  size 356  kind objc
; ======================================================================
  1000db788  stp     x22, x21, [sp, #-0x30]!
  1000db78c  stp     x20, x19, [sp, #0x10]
  1000db790  stp     x29, x30, [sp, #0x20]
  1000db794  add     x29, sp, #0x20
  1000db798  mov     x19, x0
  1000db79c  adrp    x8, #0x10041d000
  1000db7a0  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000db7a4  adrp    x8, #0x100416000
  1000db7a8  nop
  1000db7ac  ldr     x1, [x8, #0xb28]
  1000db7b0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000db7b4  mov     x29, x29
  1000db7b8  bl      _objc_retainAutoreleasedReturnValue
  1000db7bc  mov     x20, x0
  1000db7c0  adrp    x8, #0x100416000
  1000db7c4  nop
  1000db7c8  ldr     x1, [x8, #0xc18]
  1000db7cc  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000db7d0  mov     x29, x29
  1000db7d4  bl      _objc_retainAutoreleasedReturnValue
  1000db7d8  mov     x21, x0
  1000db7dc  adrp    x8, #0x100419000
  1000db7e0  nop
  1000db7e4  ldr     x1, [x8, #0xd88]
  1000db7e8  adrp    x2, #0x1003bf000
  1000db7ec  add     x2, x2, #0x810                           ; @"game_over_theme"
  1000db7f0  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] startMenuMusic:@"game_over_theme"]
  1000db7f4  mov     x0, x21
  1000db7f8  bl      _objc_release
  1000db7fc  mov     x0, x20
  1000db800  bl      _objc_release
  1000db804  adrp    x8, #0x100416000
  1000db808  nop
  1000db80c  ldr     x1, [x8, #0xf18]
  1000db810  mov     x0, x19
  1000db814  bl      _objc_msgSend                            ; [self view]
  1000db818  mov     x29, x29
  1000db81c  bl      _objc_retainAutoreleasedReturnValue
  1000db820  mov     x20, x0
  1000db824  adrp    x8, #0x100419000
  1000db828  nop
  1000db82c  ldr     x21, [x8, #0x130]
  1000db830  mov     x0, x19
  1000db834  mov     x1, x21
  1000db838  bl      _objc_msgSend                            ; [self deathOverlay]
  1000db83c  mov     x29, x29
  1000db840  bl      _objc_retainAutoreleasedReturnValue
  1000db844  mov     x22, x0
  1000db848  adrp    x8, #0x100417000
  1000db84c  nop
  1000db850  ldr     x1, [x8, #0x190]
  1000db854  mov     x0, x20
  1000db858  mov     x2, x22
  1000db85c  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[self deathOverlay]]
  1000db860  mov     x0, x22
  1000db864  bl      _objc_release
  1000db868  mov     x0, x20
  1000db86c  bl      _objc_release
  1000db870  mov     x0, x19
  1000db874  mov     x1, x21
  1000db878  bl      _objc_msgSend                            ; [self deathOverlay]
  1000db87c  mov     x29, x29
  1000db880  bl      _objc_retainAutoreleasedReturnValue
  1000db884  mov     x20, x0
  1000db888  adrp    x8, #0x100417000
  1000db88c  nop
  1000db890  ldr     x1, [x8, #0x998]
  1000db894  mov     w2, #1
  1000db898  bl      _objc_msgSend                            ; [[self deathOverlay] setUserInteractionEnabled:1]
  1000db89c  mov     x0, x20
  1000db8a0  ldp     x29, x30, [sp, #0x20]
  1000db8a4  ldp     x20, x19, [sp, #0x10]
  1000db8a8  ldp     x22, x21, [sp], #0x30
  1000db8ac  b       _objc_release
  1000db8b0  b       loc_1000db8d8
  1000db8b4  mov     x19, x0
  1000db8b8  mov     x0, x21
  1000db8bc  bl      _objc_release
  1000db8c0  b       loc_1000db8dc
  1000db8c4  b       loc_1000db8d8
  1000db8c8  mov     x19, x0
  1000db8cc  mov     x0, x22
  1000db8d0  bl      _objc_release
  1000db8d4  b       loc_1000db8dc
loc_1000db8d8:
  1000db8d8  mov     x19, x0
loc_1000db8dc:
  1000db8dc  mov     x0, x20
  1000db8e0  bl      _objc_release
  1000db8e4  mov     x0, x19
  1000db8e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeGameplayViewController .cxx_destruct]
; address 0x1000db8ec  size 20  kind objc
; ======================================================================
  1000db8ec  mov     x1, #0
  1000db8f0  adrp    x8, #0x100420000
  1000db8f4  ldrsw   x8, [x8, #0x4dc]                         ; ivar offset ADChallengeGameplayViewController.challengeDictionary (+0x140)
  1000db8f8  add     x0, x0, x8
  1000db8fc  b       _objc_storeStrong
