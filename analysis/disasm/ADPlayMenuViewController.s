// unit ADPlayMenuViewController — 26 functions
//   0x1000aaf5c     140  -[ADPlayMenuViewController initWithNibName:bundle:]
//   0x1000aafe8     220  -[ADPlayMenuViewController initWithNibName:bundle:shouldAnimate:]
//   0x1000ab0c4     920  -[ADPlayMenuViewController viewDidLoad]
//   0x1000ab45c     536  -[ADPlayMenuViewController loadView]
//   0x1000ab674     148  -[ADPlayMenuViewController viewDidAppear:]
//   0x1000ab708      60  -[ADPlayMenuViewController didReceiveMemoryWarning]
//   0x1000ab744     388  -[ADPlayMenuViewController endlessModeButtonTouched:]
//   0x1000ab8c8     164  -[ADPlayMenuViewController challengeButtonTouched:]
//   0x1000ab96c     160  -[ADPlayMenuViewController backButtonPressed]
//   0x1000aba0c     252  -[ADPlayMenuViewController playSound]
//   0x1000abb08     188  -[ADPlayMenuViewController challengeInfoButtonPressed:]
//   0x1000abbc4     188  -[ADPlayMenuViewController endlessInfoButtonPressed:]
//   0x1000abc80     172  -[ADPlayMenuViewController accessibilityPerformMagicTap]
//   0x1000abd2c      16  -[ADPlayMenuViewController endlessModeLockView]
//   0x1000abd3c      56  -[ADPlayMenuViewController setEndlessModeLockView:]
//   0x1000abd74      16  -[ADPlayMenuViewController endlessModeButton]
//   0x1000abd84      56  -[ADPlayMenuViewController setEndlessModeButton:]
//   0x1000abdbc      16  -[ADPlayMenuViewController challengeInfoButton]
//   0x1000abdcc      56  -[ADPlayMenuViewController setChallengeInfoButton:]
//   0x1000abe04      16  -[ADPlayMenuViewController endlessInfoButton]
//   0x1000abe14      56  -[ADPlayMenuViewController setEndlessInfoButton:]
//   0x1000abe4c      16  -[ADPlayMenuViewController slidingView]
//   0x1000abe5c      56  -[ADPlayMenuViewController setSlidingView:]
//   0x1000abe94      20  -[ADPlayMenuViewController animateCheck]
//   0x1000abea8      16  -[ADPlayMenuViewController setAnimateCheck:]
//   0x1000abeb8     124  -[ADPlayMenuViewController .cxx_destruct]

; ======================================================================
; -[ADPlayMenuViewController initWithNibName:bundle:]
; address 0x1000aaf5c  size 140  kind objc
; ======================================================================
  1000aaf5c  stp     x22, x21, [sp, #-0x30]!
  1000aaf60  stp     x20, x19, [sp, #0x10]
  1000aaf64  stp     x29, x30, [sp, #0x20]
  1000aaf68  add     x29, sp, #0x20
  1000aaf6c  sub     sp, sp, #0x10
  1000aaf70  mov     x20, x3
  1000aaf74  mov     x21, x0
  1000aaf78  mov     x0, x2
  1000aaf7c  bl      _objc_retain
  1000aaf80  mov     x19, x0
  1000aaf84  str     x21, [sp]
  1000aaf88  adrp    x8, #0x10041e000
  1000aaf8c  ldr     x8, [x8, #0xf08]
  1000aaf90  str     x8, [sp, #8]
  1000aaf94  adrp    x8, #0x100416000
  1000aaf98  nop
  1000aaf9c  ldr     x1, [x8, #0xb40]
  1000aafa0  mov     x0, sp
  1000aafa4  mov     x2, x19
  1000aafa8  mov     x3, x20
  1000aafac  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000aafb0  mov     x20, x0
  1000aafb4  mov     x0, x19
  1000aafb8  bl      _objc_release
  1000aafbc  mov     x0, x20
  1000aafc0  sub     sp, x29, #0x20
  1000aafc4  ldp     x29, x30, [sp, #0x20]
  1000aafc8  ldp     x20, x19, [sp, #0x10]
  1000aafcc  ldp     x22, x21, [sp], #0x30
  1000aafd0  ret
  1000aafd4  mov     x20, x0
  1000aafd8  mov     x0, x19
  1000aafdc  bl      _objc_release
  1000aafe0  mov     x0, x20
  1000aafe4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController initWithNibName:bundle:shouldAnimate:]
; address 0x1000aafe8  size 220  kind objc
; ======================================================================
  1000aafe8  stp     x24, x23, [sp, #-0x40]!
  1000aafec  stp     x22, x21, [sp, #0x10]
  1000aaff0  stp     x20, x19, [sp, #0x20]
  1000aaff4  stp     x29, x30, [sp, #0x30]
  1000aaff8  add     x29, sp, #0x30
  1000aaffc  sub     sp, sp, #0x10
  1000ab000  mov     x20, x4
  1000ab004  mov     x21, x3
  1000ab008  mov     x22, x0
  1000ab00c  mov     x0, x2
  1000ab010  bl      _objc_retain
  1000ab014  mov     x19, x0
  1000ab018  mov     x0, x21
  1000ab01c  bl      _objc_retain
  1000ab020  mov     x21, x0
  1000ab024  str     x22, [sp]
  1000ab028  adrp    x8, #0x10041e000
  1000ab02c  ldr     x8, [x8, #0xf08]
  1000ab030  str     x8, [sp, #8]
  1000ab034  adrp    x8, #0x100416000
  1000ab038  nop
  1000ab03c  ldr     x1, [x8, #0xb40]
  1000ab040  mov     x22, #0
  1000ab044  mov     x0, sp
  1000ab048  mov     x2, x19
  1000ab04c  mov     x3, x21
  1000ab050  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000ab054  mov     x23, x0
  1000ab058  mov     x22, x23
  1000ab05c  adrp    x8, #0x10041a000
  1000ab060  nop
  1000ab064  ldr     x1, [x8, #0x4c0]
  1000ab068  mov     x0, x23
  1000ab06c  mov     x2, x20
  1000ab070  bl      _objc_msgSend                            ; [self setAnimateCheck:arg3]
  1000ab074  mov     x0, x21
  1000ab078  bl      _objc_release
  1000ab07c  mov     x0, x19
  1000ab080  bl      _objc_release
  1000ab084  mov     x0, x23
  1000ab088  sub     sp, x29, #0x30
  1000ab08c  ldp     x29, x30, [sp, #0x30]
  1000ab090  ldp     x20, x19, [sp, #0x20]
  1000ab094  ldp     x22, x21, [sp, #0x10]
  1000ab098  ldp     x24, x23, [sp], #0x40
  1000ab09c  ret
  1000ab0a0  mov     x20, x0
  1000ab0a4  mov     x0, x21
  1000ab0a8  bl      _objc_release
  1000ab0ac  mov     x0, x19
  1000ab0b0  bl      _objc_release
  1000ab0b4  mov     x0, x22
  1000ab0b8  bl      _objc_release
  1000ab0bc  mov     x0, x20
  1000ab0c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController viewDidLoad]
; address 0x1000ab0c4  size 920  kind objc
; ======================================================================
  1000ab0c4  stp     x22, x21, [sp, #-0x30]!
  1000ab0c8  stp     x20, x19, [sp, #0x10]
  1000ab0cc  stp     x29, x30, [sp, #0x20]
  1000ab0d0  add     x29, sp, #0x20
  1000ab0d4  sub     sp, sp, #0x10
  1000ab0d8  mov     x19, x0
  1000ab0dc  str     x19, [sp]
  1000ab0e0  adrp    x8, #0x10041e000
  1000ab0e4  ldr     x8, [x8, #0xf08]
  1000ab0e8  str     x8, [sp, #8]
  1000ab0ec  adrp    x8, #0x100416000
  1000ab0f0  nop
  1000ab0f4  ldr     x1, [x8, #0xb48]
  1000ab0f8  mov     x0, sp
  1000ab0fc  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000ab100  adrp    x8, #0x100417000
  1000ab104  nop
  1000ab108  ldr     x20, [x8, #0x2a8]
  1000ab10c  mov     x0, x19
  1000ab110  mov     x1, x20
  1000ab114  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000ab118  mov     x29, x29
  1000ab11c  bl      _objc_retainAutoreleasedReturnValue
  1000ab120  mov     x21, x0
  1000ab124  adrp    x8, #0x100417000
  1000ab128  nop
  1000ab12c  ldr     x1, [x8, #0x2c8]
  1000ab130  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000ab134  mov     x29, x29
  1000ab138  bl      _objc_retainAutoreleasedReturnValue
  1000ab13c  mov     x22, x0
  1000ab140  adrp    x8, #0x100416000
  1000ab144  nop
  1000ab148  ldr     x1, [x8, #0xb68]
  1000ab14c  adrp    x2, #0x1003c0000
  1000ab150  add     x2, x2, #0xd10                           ; @"PLAY"
  1000ab154  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"PLAY"]
  1000ab158  mov     x0, x22
  1000ab15c  bl      _objc_release
  1000ab160  mov     x0, x21
  1000ab164  bl      _objc_release
  1000ab168  mov     x0, x19
  1000ab16c  mov     x1, x20
  1000ab170  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000ab174  mov     x29, x29
  1000ab178  bl      _objc_retainAutoreleasedReturnValue
  1000ab17c  mov     x21, x0
  1000ab180  adrp    x8, #0x100417000
  1000ab184  nop
  1000ab188  ldr     x1, [x8, #0x2b0]
  1000ab18c  mov     w2, #0
  1000ab190  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  1000ab194  mov     x0, x21
  1000ab198  bl      _objc_release
  1000ab19c  mov     x0, x19
  1000ab1a0  mov     x1, x20
  1000ab1a4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000ab1a8  mov     x29, x29
  1000ab1ac  bl      _objc_retainAutoreleasedReturnValue
  1000ab1b0  mov     x21, x0
  1000ab1b4  adrp    x8, #0x100417000
  1000ab1b8  nop
  1000ab1bc  ldr     x1, [x8, #0x2b8]
  1000ab1c0  mov     w2, #0
  1000ab1c4  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000ab1c8  mov     x0, x21
  1000ab1cc  bl      _objc_release
  1000ab1d0  mov     x0, x19
  1000ab1d4  mov     x1, x20
  1000ab1d8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000ab1dc  mov     x29, x29
  1000ab1e0  bl      _objc_retainAutoreleasedReturnValue
  1000ab1e4  mov     x20, x0
  1000ab1e8  adrp    x8, #0x100417000
  1000ab1ec  nop
  1000ab1f0  ldr     x1, [x8, #0x7c8]
  1000ab1f4  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  1000ab1f8  mov     x29, x29
  1000ab1fc  bl      _objc_retainAutoreleasedReturnValue
  1000ab200  mov     x21, x0
  1000ab204  adrp    x8, #0x100417000
  1000ab208  nop
  1000ab20c  ldr     x1, [x8, #0x920]
  1000ab210  mov     x3, #0
  1000ab214  adrp    x2, #0x1003bc000
  1000ab218  add     x2, x2, #0xff0                           ; @"Main Menu"
  1000ab21c  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setTitle:@"Main Menu" forState:0]
  1000ab220  mov     x0, x21
  1000ab224  bl      _objc_release
  1000ab228  mov     x0, x20
  1000ab22c  bl      _objc_release
  1000ab230  adrp    x8, #0x10041d000
  1000ab234  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000ab238  adrp    x8, #0x100416000
  1000ab23c  nop
  1000ab240  ldr     x1, [x8, #0xdf0]
  1000ab244  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000ab248  mov     x29, x29
  1000ab24c  bl      _objc_retainAutoreleasedReturnValue
  1000ab250  mov     x20, x0
  1000ab254  adrp    x8, #0x100416000
  1000ab258  nop
  1000ab25c  ldr     x1, [x8, #0xdf8]
  1000ab260  adrp    x2, #0x1003b9000
  1000ab264  add     x2, x2, #0xad0                           ; @"tutorial_5"
  1000ab268  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  1000ab26c  mov     x21, x0
  1000ab270  mov     x0, x20
  1000ab274  bl      _objc_release
  1000ab278  tbz     w21, #0, loc_1000ab2b8                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  1000ab27c  adrp    x8, #0x10041a000
  1000ab280  nop
  1000ab284  ldr     x1, [x8, #0x4d0]
  1000ab288  mov     x0, x19
  1000ab28c  bl      _objc_msgSend                            ; [self endlessModeLockView]
  1000ab290  mov     x29, x29
  1000ab294  bl      _objc_retainAutoreleasedReturnValue
  1000ab298  mov     x20, x0
  1000ab29c  adrp    x8, #0x100416000
  1000ab2a0  nop
  1000ab2a4  ldr     x1, [x8, #0xba8]
  1000ab2a8  mov     w2, #1
  1000ab2ac  bl      _objc_msgSend                            ; [[self endlessModeLockView] setHidden:1]
  1000ab2b0  mov     x0, x20
  1000ab2b4  b       loc_1000ab3d8
loc_1000ab2b8:
  1000ab2b8  adrp    x8, #0x10041a000
  1000ab2bc  nop
  1000ab2c0  ldr     x21, [x8, #0x4c8]
  1000ab2c4  mov     x0, x19
  1000ab2c8  mov     x1, x21
  1000ab2cc  bl      _objc_msgSend                            ; [self endlessModeButton]
  1000ab2d0  mov     x29, x29
  1000ab2d4  bl      _objc_retainAutoreleasedReturnValue
  1000ab2d8  mov     x20, x0
  1000ab2dc  adrp    x8, #0x100417000
  1000ab2e0  nop
  1000ab2e4  ldr     x1, [x8, #0x878]
  1000ab2e8  mov     w2, #0
  1000ab2ec  bl      _objc_msgSend                            ; [[self endlessModeButton] setEnabled:0]
  1000ab2f0  mov     x0, x20
  1000ab2f4  bl      _objc_release
  1000ab2f8  adrp    x8, #0x10041a000
  1000ab2fc  nop
  1000ab300  ldr     x1, [x8, #0x4d0]
  1000ab304  mov     x0, x19
  1000ab308  bl      _objc_msgSend                            ; [self endlessModeLockView]
  1000ab30c  mov     x29, x29
  1000ab310  bl      _objc_retainAutoreleasedReturnValue
  1000ab314  mov     x22, x0
  1000ab318  adrp    x8, #0x100416000
  1000ab31c  nop
  1000ab320  ldr     x20, [x8, #0xba8]
  1000ab324  mov     w2, #0
  1000ab328  mov     x1, x20
  1000ab32c  bl      _objc_msgSend                            ; [[self endlessModeLockView] setHidden:0]
  1000ab330  mov     x0, x22
  1000ab334  bl      _objc_release
  1000ab338  mov     x0, x19
  1000ab33c  mov     x1, x21
  1000ab340  bl      _objc_msgSend                            ; [self endlessModeButton]
  1000ab344  mov     x29, x29
  1000ab348  bl      _objc_retainAutoreleasedReturnValue
  1000ab34c  mov     x22, x0
  1000ab350  adrp    x8, #0x100416000
  1000ab354  nop
  1000ab358  ldr     x1, [x8, #0xbd0]
  1000ab35c  adrp    x2, #0x1003c0000
  1000ab360  add     x2, x2, #0xd30                           ; @"Finish the tutorial to unlock"
  1000ab364  bl      _objc_msgSend                            ; [[self endlessModeButton] setAccessibilityHint:@"Finish the tutorial to unlock"]
  1000ab368  mov     x0, x22
  1000ab36c  bl      _objc_release
  1000ab370  mov     x0, x19
  1000ab374  mov     x1, x21
  1000ab378  bl      _objc_msgSend                            ; [self endlessModeButton]
  1000ab37c  mov     x29, x29
  1000ab380  bl      _objc_retainAutoreleasedReturnValue
  1000ab384  mov     x21, x0
  1000ab388  adrp    x8, #0x100417000
  1000ab38c  nop
  1000ab390  ldr     x1, [x8, #0x7e8]
  1000ab394  adrp    x2, #0x1003c0000
  1000ab398  add     x2, x2, #0xd50                           ; @"Endless mode is locked"
  1000ab39c  bl      _objc_msgSend                            ; [[self endlessModeButton] setAccessibilityLabel:@"Endless mode is locked"]
  1000ab3a0  mov     x0, x21
  1000ab3a4  bl      _objc_release
  1000ab3a8  adrp    x8, #0x10041a000
  1000ab3ac  nop
  1000ab3b0  ldr     x1, [x8, #0x4d8]
  1000ab3b4  mov     x0, x19
  1000ab3b8  bl      _objc_msgSend                            ; [self endlessInfoButton]
  1000ab3bc  mov     x29, x29
  1000ab3c0  bl      _objc_retainAutoreleasedReturnValue
  1000ab3c4  mov     x21, x0
  1000ab3c8  mov     w2, #1
  1000ab3cc  mov     x1, x20
  1000ab3d0  bl      _objc_msgSend                            ; [[self endlessInfoButton] setHidden:1]
  1000ab3d4  mov     x0, x21
loc_1000ab3d8:
  1000ab3d8  bl      _objc_release
  1000ab3dc  sub     sp, x29, #0x20
  1000ab3e0  ldp     x29, x30, [sp, #0x20]
  1000ab3e4  ldp     x20, x19, [sp, #0x10]
  1000ab3e8  ldp     x22, x21, [sp], #0x30
  1000ab3ec  ret
  1000ab3f0  b       loc_1000ab448
  1000ab3f4  mov     x19, x0
  1000ab3f8  mov     x0, x22
  1000ab3fc  bl      _objc_release
  1000ab400  b       loc_1000ab44c
  1000ab404  b       loc_1000ab448
  1000ab408  b       loc_1000ab448
  1000ab40c  b       loc_1000ab428
  1000ab410  mov     x19, x0
  1000ab414  mov     x0, x21
  1000ab418  bl      _objc_release
  1000ab41c  b       loc_1000ab42c
  1000ab420  b       loc_1000ab428
  1000ab424  b       loc_1000ab428
loc_1000ab428:
  1000ab428  mov     x19, x0
loc_1000ab42c:
  1000ab42c  mov     x0, x20
  1000ab430  b       loc_1000ab450
  1000ab434  b       loc_1000ab438
loc_1000ab438:
  1000ab438  mov     x19, x0
  1000ab43c  mov     x0, x22
  1000ab440  b       loc_1000ab450
  1000ab444  b       loc_1000ab448
loc_1000ab448:
  1000ab448  mov     x19, x0
loc_1000ab44c:
  1000ab44c  mov     x0, x21
loc_1000ab450:
  1000ab450  bl      _objc_release
  1000ab454  mov     x0, x19
  1000ab458  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController loadView]
; address 0x1000ab45c  size 536  kind objc
; ======================================================================
  1000ab45c  stp     x26, x25, [sp, #-0x50]!
  1000ab460  stp     x24, x23, [sp, #0x10]
  1000ab464  stp     x22, x21, [sp, #0x20]
  1000ab468  stp     x20, x19, [sp, #0x30]
  1000ab46c  stp     x29, x30, [sp, #0x40]
  1000ab470  add     x29, sp, #0x40
  1000ab474  sub     sp, sp, #0x60
  1000ab478  mov     x20, x0
  1000ab47c  adrp    x26, #0x1003b0000
  1000ab480  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000ab484  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000ab488  stur    x26, [x29, #-0x48]
  1000ab48c  adrp    x8, #0x1003c0000
  1000ab490  add     x8, x8, #0xd70                           ; @"challengeInfoButton"
  1000ab494  str     x8, [sp, #8]
  1000ab498  adrp    x25, #0x10041d000
  1000ab49c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000ab4a0  adrp    x8, #0x100416000
  1000ab4a4  nop
  1000ab4a8  ldr     x23, [x8, #0xec0]
  1000ab4ac  mov     w2, #1
  1000ab4b0  mov     x1, x23
  1000ab4b4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000ab4b8  mov     x29, x29
  1000ab4bc  bl      _objc_retainAutoreleasedReturnValue
  1000ab4c0  mov     x19, x0
  1000ab4c4  str     x19, [sp, #0x30]
  1000ab4c8  adrp    x8, #0x1003c0000
  1000ab4cc  add     x8, x8, #0xd90                           ; @"endlessInfoButton"
  1000ab4d0  str     x8, [sp, #0x10]
  1000ab4d4  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000ab4d8  mov     w2, #2
  1000ab4dc  mov     x1, x23
  1000ab4e0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000ab4e4  bl      _objc_retain
  1000ab4e8  mov     x21, x0
  1000ab4ec  str     x21, [sp, #0x38]
  1000ab4f0  adrp    x8, #0x1003c0000
  1000ab4f4  add     x8, x8, #0xdb0                           ; @"endlessModeButton"
  1000ab4f8  str     x8, [sp, #0x18]
  1000ab4fc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000ab500  mov     w2, #3
  1000ab504  mov     x1, x23
  1000ab508  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000ab50c  bl      _objc_retain
  1000ab510  mov     x22, x0
  1000ab514  str     x22, [sp, #0x40]
  1000ab518  adrp    x8, #0x1003c0000
  1000ab51c  add     x8, x8, #0xdd0                           ; @"endlessModeLockView"
  1000ab520  str     x8, [sp, #0x20]
  1000ab524  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000ab528  mov     w2, #4
  1000ab52c  mov     x1, x23
  1000ab530  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000ab534  bl      _objc_retain
  1000ab538  mov     x24, x0
  1000ab53c  str     x24, [sp, #0x48]
  1000ab540  adrp    x8, #0x1003be000
  1000ab544  add     x8, x8, #0x910                           ; @"slidingView"
  1000ab548  str     x8, [sp, #0x28]
  1000ab54c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000ab550  mov     w2, #5
  1000ab554  mov     x1, x23
  1000ab558  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  1000ab55c  bl      _objc_retain
  1000ab560  mov     x25, x0
  1000ab564  str     x25, [sp, #0x50]
  1000ab568  adrp    x8, #0x10041d000
  1000ab56c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000ab570  adrp    x8, #0x100416000
  1000ab574  nop
  1000ab578  ldr     x1, [x8, #0xcd0]
  1000ab57c  add     x2, sp, #0x30
  1000ab580  add     x3, sp, #8
  1000ab584  mov     w4, #5
  1000ab588  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]
  1000ab58c  mov     x29, x29
  1000ab590  bl      _objc_retainAutoreleasedReturnValue
  1000ab594  mov     x23, x0
  1000ab598  mov     x0, x25
  1000ab59c  bl      _objc_release
  1000ab5a0  mov     x0, x24
  1000ab5a4  bl      _objc_release
  1000ab5a8  mov     x0, x22
  1000ab5ac  bl      _objc_release
  1000ab5b0  mov     x0, x21
  1000ab5b4  bl      _objc_release
  1000ab5b8  mov     x0, x19
  1000ab5bc  bl      _objc_release
  1000ab5c0  adrp    x8, #0x100416000
  1000ab5c4  nop
  1000ab5c8  ldr     x1, [x8, #0xbf0]
  1000ab5cc  adrp    x2, #0x1003bf000
  1000ab5d0  add     x2, x2, #0x890                           ; @"ADPlayMenuViewController"
  1000ab5d4  mov     x0, x20
  1000ab5d8  mov     x3, x23
  1000ab5dc  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADPlayMenuViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x30] forKeys:&sp[0x8] count:5]]
  1000ab5e0  mov     x0, x23
  1000ab5e4  bl      _objc_release
  1000ab5e8  ldur    x8, [x29, #-0x48]
  1000ab5ec  sub     x8, x26, x8
  1000ab5f0  cbnz    x8, loc_1000ab610                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ab5f4  sub     sp, x29, #0x40
  1000ab5f8  ldp     x29, x30, [sp, #0x40]
  1000ab5fc  ldp     x20, x19, [sp, #0x30]
  1000ab600  ldp     x22, x21, [sp, #0x20]
  1000ab604  ldp     x24, x23, [sp, #0x10]
  1000ab608  ldp     x26, x25, [sp], #0x50
  1000ab60c  ret
loc_1000ab610:
  1000ab610  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000ab614  mov     x20, x0
  1000ab618  b       loc_1000ab658
  1000ab61c  mov     x20, x0
  1000ab620  b       loc_1000ab650
  1000ab624  mov     x20, x0
  1000ab628  b       loc_1000ab648
  1000ab62c  mov     x20, x0
  1000ab630  b       loc_1000ab640
  1000ab634  mov     x20, x0
  1000ab638  mov     x0, x25
  1000ab63c  bl      _objc_release
loc_1000ab640:
  1000ab640  mov     x0, x24
  1000ab644  bl      _objc_release
loc_1000ab648:
  1000ab648  mov     x0, x22
  1000ab64c  bl      _objc_release
loc_1000ab650:
  1000ab650  mov     x0, x21
  1000ab654  bl      _objc_release
loc_1000ab658:
  1000ab658  mov     x0, x19
  1000ab65c  b       loc_1000ab668
  1000ab660  mov     x20, x0
  1000ab664  mov     x0, x23
loc_1000ab668:
  1000ab668  bl      _objc_release
  1000ab66c  mov     x0, x20
  1000ab670  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController viewDidAppear:]
; address 0x1000ab674  size 148  kind objc
; ======================================================================
  1000ab674  stp     x20, x19, [sp, #-0x20]!
  1000ab678  stp     x29, x30, [sp, #0x10]
  1000ab67c  add     x29, sp, #0x10
  1000ab680  sub     sp, sp, #0x10
  1000ab684  mov     x19, x0
  1000ab688  str     x19, [sp]
  1000ab68c  adrp    x8, #0x10041e000
  1000ab690  ldr     x8, [x8, #0xf08]
  1000ab694  str     x8, [sp, #8]
  1000ab698  adrp    x8, #0x100417000
  1000ab69c  nop
  1000ab6a0  ldr     x1, [x8, #0x938]
  1000ab6a4  mov     x0, sp
  1000ab6a8  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  1000ab6ac  adrp    x8, #0x100419000
  1000ab6b0  nop
  1000ab6b4  ldr     x1, [x8, #0x480]
  1000ab6b8  mov     x0, x19
  1000ab6bc  bl      _objc_msgSend                            ; [self slidingView]
  1000ab6c0  mov     x29, x29
  1000ab6c4  bl      _objc_retainAutoreleasedReturnValue
  1000ab6c8  mov     x19, x0
  1000ab6cc  adrp    x8, #0x100417000
  1000ab6d0  nop
  1000ab6d4  ldr     x1, [x8, #0x948]
  1000ab6d8  bl      _objc_msgSend                            ; [[self slidingView] slide]
  1000ab6dc  mov     x0, x19
  1000ab6e0  bl      _objc_release
  1000ab6e4  sub     sp, x29, #0x10
  1000ab6e8  ldp     x29, x30, [sp, #0x10]
  1000ab6ec  ldp     x20, x19, [sp], #0x20
  1000ab6f0  ret
  1000ab6f4  mov     x20, x0
  1000ab6f8  mov     x0, x19
  1000ab6fc  bl      _objc_release
  1000ab700  mov     x0, x20
  1000ab704  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController didReceiveMemoryWarning]
; address 0x1000ab708  size 60  kind objc
; ======================================================================
  1000ab708  stp     x29, x30, [sp, #-0x10]!
  1000ab70c  mov     x29, sp
  1000ab710  sub     sp, sp, #0x10
  1000ab714  str     x0, [sp]
  1000ab718  adrp    x8, #0x10041e000
  1000ab71c  ldr     x8, [x8, #0xf08]
  1000ab720  str     x8, [sp, #8]
  1000ab724  adrp    x8, #0x100416000
  1000ab728  nop
  1000ab72c  ldr     x1, [x8, #0xbf8]
  1000ab730  mov     x0, sp
  1000ab734  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000ab738  mov     sp, x29
  1000ab73c  ldp     x29, x30, [sp], #0x10
  1000ab740  ret

; ======================================================================
; -[ADPlayMenuViewController endlessModeButtonTouched:]
; address 0x1000ab744  size 388  kind objc
; ======================================================================
  1000ab744  stp     x24, x23, [sp, #-0x40]!
  1000ab748  stp     x22, x21, [sp, #0x10]
  1000ab74c  stp     x20, x19, [sp, #0x20]
  1000ab750  stp     x29, x30, [sp, #0x30]
  1000ab754  add     x29, sp, #0x30
  1000ab758  mov     x19, x0
  1000ab75c  adrp    x23, #0x10041d000
  1000ab760  ldr     x0, [x23, #0xf58]                        ; class ADPersistentStats
  1000ab764  adrp    x8, #0x100416000
  1000ab768  nop
  1000ab76c  ldr     x20, [x8, #0xe10]
  1000ab770  mov     x1, x20
  1000ab774  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000ab778  mov     x29, x29
  1000ab77c  bl      _objc_retainAutoreleasedReturnValue
  1000ab780  mov     x21, x0
  1000ab784  adrp    x8, #0x100419000
  1000ab788  nop
  1000ab78c  ldr     x1, [x8, #0xed0]
  1000ab790  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] highScore]
  1000ab794  mov     x22, x0
  1000ab798  mov     x0, x21
  1000ab79c  bl      _objc_release
  1000ab7a0  cmp     w22, #1
  1000ab7a4  b.lt    loc_1000ab818                            ; if ([[ADPersistentStats persistentStats] highScore] < 1)
  1000ab7a8  adrp    x8, #0x10041d000
  1000ab7ac  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000ab7b0  adrp    x8, #0x100416000
  1000ab7b4  nop
  1000ab7b8  ldr     x1, [x8, #0xb28]
  1000ab7bc  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000ab7c0  mov     x29, x29
  1000ab7c4  bl      _objc_retainAutoreleasedReturnValue
  1000ab7c8  mov     x19, x0
  1000ab7cc  adrp    x8, #0x100416000
  1000ab7d0  nop
  1000ab7d4  ldr     x1, [x8, #0xc18]
  1000ab7d8  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000ab7dc  mov     x29, x29
  1000ab7e0  bl      _objc_retainAutoreleasedReturnValue
  1000ab7e4  mov     x21, x0
  1000ab7e8  adrp    x8, #0x100418000
  1000ab7ec  nop
  1000ab7f0  ldr     x1, [x8, #0x5c8]
  1000ab7f4  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToTarot]
  1000ab7f8  mov     x0, x21
  1000ab7fc  bl      _objc_release
  1000ab800  mov     x0, x19
  1000ab804  ldp     x29, x30, [sp, #0x30]
  1000ab808  ldp     x20, x19, [sp, #0x20]
  1000ab80c  ldp     x22, x21, [sp, #0x10]
  1000ab810  ldp     x24, x23, [sp], #0x40
  1000ab814  b       _objc_release
loc_1000ab818:
  1000ab818  ldr     x0, [x23, #0xf58]                        ; class ADPersistentStats
  1000ab81c  mov     x1, x20
  1000ab820  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000ab824  mov     x29, x29
  1000ab828  bl      _objc_retainAutoreleasedReturnValue
  1000ab82c  mov     x20, x0
  1000ab830  adrp    x8, #0x100419000
  1000ab834  nop
  1000ab838  ldr     x1, [x8, #0x170]
  1000ab83c  mov     w2, #1
  1000ab840  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveScore:1]
  1000ab844  mov     x0, x20
  1000ab848  bl      _objc_release
  1000ab84c  adrp    x8, #0x10041a000
  1000ab850  nop
  1000ab854  ldr     x1, [x8, #0x4e0]
  1000ab858  mov     x2, #0
  1000ab85c  mov     x0, x19
  1000ab860  bl      _objc_msgSend                            ; [self endlessInfoButtonPressed:0]
  1000ab864  ldp     x29, x30, [sp, #0x30]
  1000ab868  ldp     x20, x19, [sp, #0x20]
  1000ab86c  ldp     x22, x21, [sp, #0x10]
  1000ab870  ldp     x24, x23, [sp], #0x40
  1000ab874  ret
  1000ab878  mov     x20, x0
  1000ab87c  b       loc_1000ab8c0
  1000ab880  mov     x20, x0
  1000ab884  mov     x0, x21
  1000ab888  bl      _objc_release
  1000ab88c  b       loc_1000ab8c0
  1000ab890  mov     x20, x0
  1000ab894  b       loc_1000ab8a4
  1000ab898  mov     x20, x0
  1000ab89c  mov     x0, x21
  1000ab8a0  bl      _objc_release
loc_1000ab8a4:
  1000ab8a4  mov     x0, x19
  1000ab8a8  bl      _objc_release
  1000ab8ac  b       loc_1000ab8c0
  1000ab8b0  mov     x1, x20
  1000ab8b4  mov     x20, x0
  1000ab8b8  mov     x0, x1
  1000ab8bc  bl      _objc_release
loc_1000ab8c0:
  1000ab8c0  mov     x0, x20
  1000ab8c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController challengeButtonTouched:]
; address 0x1000ab8c8  size 164  kind objc
; ======================================================================
  1000ab8c8  stp     x20, x19, [sp, #-0x20]!
  1000ab8cc  stp     x29, x30, [sp, #0x10]
  1000ab8d0  add     x29, sp, #0x10
  1000ab8d4  adrp    x8, #0x10041d000
  1000ab8d8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000ab8dc  adrp    x8, #0x100416000
  1000ab8e0  nop
  1000ab8e4  ldr     x1, [x8, #0xb28]
  1000ab8e8  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000ab8ec  mov     x29, x29
  1000ab8f0  bl      _objc_retainAutoreleasedReturnValue
  1000ab8f4  mov     x19, x0
  1000ab8f8  adrp    x8, #0x100416000
  1000ab8fc  nop
  1000ab900  ldr     x1, [x8, #0xc18]
  1000ab904  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000ab908  mov     x29, x29
  1000ab90c  bl      _objc_retainAutoreleasedReturnValue
  1000ab910  mov     x20, x0
  1000ab914  adrp    x8, #0x100419000
  1000ab918  nop
  1000ab91c  ldr     x1, [x8, #0xd98]
  1000ab920  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToWorldSelector]
  1000ab924  mov     x0, x20
  1000ab928  bl      _objc_release
  1000ab92c  mov     x0, x19
  1000ab930  ldp     x29, x30, [sp, #0x10]
  1000ab934  ldp     x20, x19, [sp], #0x20
  1000ab938  b       _objc_release
  1000ab93c  mov     x20, x0
  1000ab940  b       loc_1000ab964
  1000ab944  mov     x20, x0
  1000ab948  b       loc_1000ab95c
  1000ab94c  mov     x1, x20
  1000ab950  mov     x20, x0
  1000ab954  mov     x0, x1
  1000ab958  bl      _objc_release
loc_1000ab95c:
  1000ab95c  mov     x0, x19
  1000ab960  bl      _objc_release
loc_1000ab964:
  1000ab964  mov     x0, x20
  1000ab968  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController backButtonPressed]
; address 0x1000ab96c  size 160  kind objc
; ======================================================================
  1000ab96c  stp     x22, x21, [sp, #-0x30]!
  1000ab970  stp     x20, x19, [sp, #0x10]
  1000ab974  stp     x29, x30, [sp, #0x20]
  1000ab978  add     x29, sp, #0x20
  1000ab97c  adrp    x8, #0x10041d000
  1000ab980  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000ab984  adrp    x8, #0x100416000
  1000ab988  nop
  1000ab98c  ldr     x1, [x8, #0xb28]
  1000ab990  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000ab994  mov     x29, x29
  1000ab998  bl      _objc_retainAutoreleasedReturnValue
  1000ab99c  mov     x19, x0
  1000ab9a0  adrp    x8, #0x100416000
  1000ab9a4  nop
  1000ab9a8  ldr     x1, [x8, #0xc18]
  1000ab9ac  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000ab9b0  mov     x29, x29
  1000ab9b4  bl      _objc_retainAutoreleasedReturnValue
  1000ab9b8  mov     x20, x0
  1000ab9bc  adrp    x8, #0x100416000
  1000ab9c0  nop
  1000ab9c4  ldr     x1, [x8, #0xc10]
  1000ab9c8  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  1000ab9cc  mov     x0, x20
  1000ab9d0  bl      _objc_release
  1000ab9d4  mov     x0, x19
  1000ab9d8  ldp     x29, x30, [sp, #0x20]
  1000ab9dc  ldp     x20, x19, [sp, #0x10]
  1000ab9e0  ldp     x22, x21, [sp], #0x30
  1000ab9e4  b       _objc_release
  1000ab9e8  mov     x21, x0
  1000ab9ec  b       loc_1000ab9fc
  1000ab9f0  mov     x21, x0
  1000ab9f4  mov     x0, x20
  1000ab9f8  bl      _objc_release
loc_1000ab9fc:
  1000ab9fc  mov     x0, x19
  1000aba00  bl      _objc_release
  1000aba04  mov     x0, x21
  1000aba08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController playSound]
; address 0x1000aba0c  size 252  kind objc
; ======================================================================
  1000aba0c  stp     x22, x21, [sp, #-0x30]!
  1000aba10  stp     x20, x19, [sp, #0x10]
  1000aba14  stp     x29, x30, [sp, #0x20]
  1000aba18  add     x29, sp, #0x20
  1000aba1c  adrp    x8, #0x10041d000
  1000aba20  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000aba24  adrp    x8, #0x100417000
  1000aba28  nop
  1000aba2c  ldr     x1, [x8, #0x4f0]
  1000aba30  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000aba34  mov     x29, x29
  1000aba38  bl      _objc_retainAutoreleasedReturnValue
  1000aba3c  mov     x19, x0
  1000aba40  adrp    x8, #0x100417000
  1000aba44  nop
  1000aba48  ldr     x1, [x8, #0x4f8]
  1000aba4c  adrp    x2, #0x1003ba000
  1000aba50  add     x2, x2, #0xcb0                           ; @"buttons"
  1000aba54  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  1000aba58  mov     x29, x29
  1000aba5c  bl      _objc_retainAutoreleasedReturnValue
  1000aba60  mov     x21, x0
  1000aba64  adrp    x8, #0x100417000
  1000aba68  nop
  1000aba6c  ldr     x1, [x8, #0x990]
  1000aba70  adrp    x2, #0x1003ba000
  1000aba74  add     x2, x2, #0xcd0                           ; @"click_button"
  1000aba78  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  1000aba7c  mov     x29, x29
  1000aba80  bl      _objc_retainAutoreleasedReturnValue
  1000aba84  mov     x20, x0
  1000aba88  mov     x0, x21
  1000aba8c  bl      _objc_release
  1000aba90  mov     x0, x19
  1000aba94  bl      _objc_release
  1000aba98  adrp    x8, #0x100416000
  1000aba9c  nop
  1000abaa0  ldr     x1, [x8, #0xcb0]
  1000abaa4  fmov    s0, #3.00000000
  1000abaa8  mov     x0, x20
  1000abaac  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  1000abab0  adrp    x8, #0x100417000
  1000abab4  nop
  1000abab8  ldr     x1, [x8, #0x600]
  1000ababc  mov     x0, x20
  1000abac0  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  1000abac4  mov     x0, x20
  1000abac8  ldp     x29, x30, [sp, #0x20]
  1000abacc  ldp     x20, x19, [sp, #0x10]
  1000abad0  ldp     x22, x21, [sp], #0x30
  1000abad4  b       _objc_release
  1000abad8  mov     x22, x0
  1000abadc  mov     x0, x20
  1000abae0  b       loc_1000abafc
  1000abae4  mov     x22, x0
  1000abae8  b       loc_1000abaf8
  1000abaec  mov     x22, x0
  1000abaf0  mov     x0, x21
  1000abaf4  bl      _objc_release
loc_1000abaf8:
  1000abaf8  mov     x0, x19
loc_1000abafc:
  1000abafc  bl      _objc_release
  1000abb00  mov     x0, x22
  1000abb04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController challengeInfoButtonPressed:]
; address 0x1000abb08  size 188  kind objc
; ======================================================================
  1000abb08  stp     x20, x19, [sp, #-0x20]!
  1000abb0c  stp     x29, x30, [sp, #0x10]
  1000abb10  add     x29, sp, #0x10
  1000abb14  adrp    x8, #0x100418000
  1000abb18  nop
  1000abb1c  ldr     x1, [x8, #0x600]
  1000abb20  bl      _objc_msgSend                            ; [self playSound]
  1000abb24  adrp    x8, #0x10041d000
  1000abb28  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000abb2c  adrp    x8, #0x100416000
  1000abb30  nop
  1000abb34  ldr     x1, [x8, #0xb28]
  1000abb38  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000abb3c  mov     x29, x29
  1000abb40  bl      _objc_retainAutoreleasedReturnValue
  1000abb44  mov     x19, x0
  1000abb48  adrp    x8, #0x100416000
  1000abb4c  nop
  1000abb50  ldr     x1, [x8, #0xc18]
  1000abb54  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000abb58  mov     x29, x29
  1000abb5c  bl      _objc_retainAutoreleasedReturnValue
  1000abb60  mov     x20, x0
  1000abb64  adrp    x8, #0x10041a000
  1000abb68  nop
  1000abb6c  ldr     x1, [x8, #0x4e8]
  1000abb70  adrp    x2, #0x1003bc000
  1000abb74  add     x2, x2, #0x5f0                           ; @"challenge"
  1000abb78  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToInfoScreen:@"challenge"]
  1000abb7c  mov     x0, x20
  1000abb80  bl      _objc_release
  1000abb84  mov     x0, x19
  1000abb88  ldp     x29, x30, [sp, #0x10]
  1000abb8c  ldp     x20, x19, [sp], #0x20
  1000abb90  b       _objc_release
  1000abb94  mov     x20, x0
  1000abb98  b       loc_1000abbbc
  1000abb9c  mov     x20, x0
  1000abba0  b       loc_1000abbb4
  1000abba4  mov     x1, x20
  1000abba8  mov     x20, x0
  1000abbac  mov     x0, x1
  1000abbb0  bl      _objc_release
loc_1000abbb4:
  1000abbb4  mov     x0, x19
  1000abbb8  bl      _objc_release
loc_1000abbbc:
  1000abbbc  mov     x0, x20
  1000abbc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController endlessInfoButtonPressed:]
; address 0x1000abbc4  size 188  kind objc
; ======================================================================
  1000abbc4  stp     x20, x19, [sp, #-0x20]!
  1000abbc8  stp     x29, x30, [sp, #0x10]
  1000abbcc  add     x29, sp, #0x10
  1000abbd0  adrp    x8, #0x100418000
  1000abbd4  nop
  1000abbd8  ldr     x1, [x8, #0x600]
  1000abbdc  bl      _objc_msgSend                            ; [self playSound]
  1000abbe0  adrp    x8, #0x10041d000
  1000abbe4  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000abbe8  adrp    x8, #0x100416000
  1000abbec  nop
  1000abbf0  ldr     x1, [x8, #0xb28]
  1000abbf4  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000abbf8  mov     x29, x29
  1000abbfc  bl      _objc_retainAutoreleasedReturnValue
  1000abc00  mov     x19, x0
  1000abc04  adrp    x8, #0x100416000
  1000abc08  nop
  1000abc0c  ldr     x1, [x8, #0xc18]
  1000abc10  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000abc14  mov     x29, x29
  1000abc18  bl      _objc_retainAutoreleasedReturnValue
  1000abc1c  mov     x20, x0
  1000abc20  adrp    x8, #0x10041a000
  1000abc24  nop
  1000abc28  ldr     x1, [x8, #0x4e8]
  1000abc2c  adrp    x2, #0x1003bc000
  1000abc30  add     x2, x2, #0x650                           ; @"endless"
  1000abc34  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToInfoScreen:@"endless"]
  1000abc38  mov     x0, x20
  1000abc3c  bl      _objc_release
  1000abc40  mov     x0, x19
  1000abc44  ldp     x29, x30, [sp, #0x10]
  1000abc48  ldp     x20, x19, [sp], #0x20
  1000abc4c  b       _objc_release
  1000abc50  mov     x20, x0
  1000abc54  b       loc_1000abc78
  1000abc58  mov     x20, x0
  1000abc5c  b       loc_1000abc70
  1000abc60  mov     x1, x20
  1000abc64  mov     x20, x0
  1000abc68  mov     x0, x1
  1000abc6c  bl      _objc_release
loc_1000abc70:
  1000abc70  mov     x0, x19
  1000abc74  bl      _objc_release
loc_1000abc78:
  1000abc78  mov     x0, x20
  1000abc7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController accessibilityPerformMagicTap]
; address 0x1000abc80  size 172  kind objc
; ======================================================================
  1000abc80  stp     x22, x21, [sp, #-0x30]!
  1000abc84  stp     x20, x19, [sp, #0x10]
  1000abc88  stp     x29, x30, [sp, #0x20]
  1000abc8c  add     x29, sp, #0x20
  1000abc90  mov     x19, x0
  1000abc94  adrp    x8, #0x10041d000
  1000abc98  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000abc9c  adrp    x8, #0x100416000
  1000abca0  nop
  1000abca4  ldr     x1, [x8, #0xdf0]
  1000abca8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000abcac  mov     x29, x29
  1000abcb0  bl      _objc_retainAutoreleasedReturnValue
  1000abcb4  mov     x20, x0
  1000abcb8  adrp    x8, #0x100416000
  1000abcbc  nop
  1000abcc0  ldr     x1, [x8, #0xdf8]
  1000abcc4  adrp    x2, #0x1003b9000
  1000abcc8  add     x2, x2, #0xad0                           ; @"tutorial_5"
  1000abccc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  1000abcd0  mov     x21, x0
  1000abcd4  mov     x0, x20
  1000abcd8  bl      _objc_release
  1000abcdc  tbz     w21, #0, loc_1000abcec                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  1000abce0  adrp    x8, #0x10041a000
  1000abce4  add     x8, x8, #0x4f8                           ; &@selector(endlessModeButtonTouched:)
  1000abce8  b       loc_1000abcf4
loc_1000abcec:
  1000abcec  adrp    x8, #0x10041a000
  1000abcf0  add     x8, x8, #0x4f0                           ; &@selector(challengeButtonTouched:)
loc_1000abcf4:
  1000abcf4  ldr     x1, [x8]                                 ; x1 = one of selectors {challengeButtonTouched:, endlessModeButtonTouched:}
  1000abcf8  mov     x2, #0
  1000abcfc  mov     x0, x19
  1000abd00  bl      _objc_msgSend                            ; [self challengeButtonTouched:0  | endlessModeButtonTouched:x3]
  1000abd04  mov     w0, #1
  1000abd08  ldp     x29, x30, [sp, #0x20]
  1000abd0c  ldp     x20, x19, [sp, #0x10]
  1000abd10  ldp     x22, x21, [sp], #0x30
  1000abd14  ret
  1000abd18  mov     x19, x0
  1000abd1c  mov     x0, x20
  1000abd20  bl      _objc_release
  1000abd24  mov     x0, x19
  1000abd28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPlayMenuViewController endlessModeLockView]
; address 0x1000abd2c  size 16  kind objc
; ======================================================================
  1000abd2c  adrp    x8, #0x100420000
  1000abd30  ldrsw   x8, [x8, #0x120]                         ; ivar offset ADPlayMenuViewController._endlessModeLockView (+0x148)
  1000abd34  ldr     x0, [x0, x8]                             ; x0 = self->_endlessModeLockView
  1000abd38  ret

; ======================================================================
; -[ADPlayMenuViewController setEndlessModeLockView:]
; address 0x1000abd3c  size 56  kind objc
; ======================================================================
  1000abd3c  stp     x20, x19, [sp, #-0x20]!
  1000abd40  stp     x29, x30, [sp, #0x10]
  1000abd44  add     x29, sp, #0x10
  1000abd48  mov     x19, x0
  1000abd4c  adrp    x8, #0x100420000
  1000abd50  ldrsw   x20, [x8, #0x120]                        ; ivar offset ADPlayMenuViewController._endlessModeLockView (+0x148)
  1000abd54  mov     x0, x2
  1000abd58  bl      _objc_retain
  1000abd5c  ldr     x8, [x19, x20]                           ; x8 = self->_endlessModeLockView
  1000abd60  str     x0, [x19, x20]                           ; self->_endlessModeLockView = arg1
  1000abd64  mov     x0, x8
  1000abd68  ldp     x29, x30, [sp, #0x10]
  1000abd6c  ldp     x20, x19, [sp], #0x20
  1000abd70  b       _objc_release

; ======================================================================
; -[ADPlayMenuViewController endlessModeButton]
; address 0x1000abd74  size 16  kind objc
; ======================================================================
  1000abd74  adrp    x8, #0x100420000
  1000abd78  ldrsw   x8, [x8, #0x124]                         ; ivar offset ADPlayMenuViewController._endlessModeButton (+0x150)
  1000abd7c  ldr     x0, [x0, x8]                             ; x0 = self->_endlessModeButton
  1000abd80  ret

; ======================================================================
; -[ADPlayMenuViewController setEndlessModeButton:]
; address 0x1000abd84  size 56  kind objc
; ======================================================================
  1000abd84  stp     x20, x19, [sp, #-0x20]!
  1000abd88  stp     x29, x30, [sp, #0x10]
  1000abd8c  add     x29, sp, #0x10
  1000abd90  mov     x19, x0
  1000abd94  adrp    x8, #0x100420000
  1000abd98  ldrsw   x20, [x8, #0x124]                        ; ivar offset ADPlayMenuViewController._endlessModeButton (+0x150)
  1000abd9c  mov     x0, x2
  1000abda0  bl      _objc_retain
  1000abda4  ldr     x8, [x19, x20]                           ; x8 = self->_endlessModeButton
  1000abda8  str     x0, [x19, x20]                           ; self->_endlessModeButton = arg1
  1000abdac  mov     x0, x8
  1000abdb0  ldp     x29, x30, [sp, #0x10]
  1000abdb4  ldp     x20, x19, [sp], #0x20
  1000abdb8  b       _objc_release

; ======================================================================
; -[ADPlayMenuViewController challengeInfoButton]
; address 0x1000abdbc  size 16  kind objc
; ======================================================================
  1000abdbc  adrp    x8, #0x100420000
  1000abdc0  ldrsw   x8, [x8, #0x128]                         ; ivar offset ADPlayMenuViewController._challengeInfoButton (+0x158)
  1000abdc4  ldr     x0, [x0, x8]                             ; x0 = self->_challengeInfoButton
  1000abdc8  ret

; ======================================================================
; -[ADPlayMenuViewController setChallengeInfoButton:]
; address 0x1000abdcc  size 56  kind objc
; ======================================================================
  1000abdcc  stp     x20, x19, [sp, #-0x20]!
  1000abdd0  stp     x29, x30, [sp, #0x10]
  1000abdd4  add     x29, sp, #0x10
  1000abdd8  mov     x19, x0
  1000abddc  adrp    x8, #0x100420000
  1000abde0  ldrsw   x20, [x8, #0x128]                        ; ivar offset ADPlayMenuViewController._challengeInfoButton (+0x158)
  1000abde4  mov     x0, x2
  1000abde8  bl      _objc_retain
  1000abdec  ldr     x8, [x19, x20]                           ; x8 = self->_challengeInfoButton
  1000abdf0  str     x0, [x19, x20]                           ; self->_challengeInfoButton = arg1
  1000abdf4  mov     x0, x8
  1000abdf8  ldp     x29, x30, [sp, #0x10]
  1000abdfc  ldp     x20, x19, [sp], #0x20
  1000abe00  b       _objc_release

; ======================================================================
; -[ADPlayMenuViewController endlessInfoButton]
; address 0x1000abe04  size 16  kind objc
; ======================================================================
  1000abe04  adrp    x8, #0x100420000
  1000abe08  ldrsw   x8, [x8, #0x12c]                         ; ivar offset ADPlayMenuViewController._endlessInfoButton (+0x160)
  1000abe0c  ldr     x0, [x0, x8]                             ; x0 = self->_endlessInfoButton
  1000abe10  ret

; ======================================================================
; -[ADPlayMenuViewController setEndlessInfoButton:]
; address 0x1000abe14  size 56  kind objc
; ======================================================================
  1000abe14  stp     x20, x19, [sp, #-0x20]!
  1000abe18  stp     x29, x30, [sp, #0x10]
  1000abe1c  add     x29, sp, #0x10
  1000abe20  mov     x19, x0
  1000abe24  adrp    x8, #0x100420000
  1000abe28  ldrsw   x20, [x8, #0x12c]                        ; ivar offset ADPlayMenuViewController._endlessInfoButton (+0x160)
  1000abe2c  mov     x0, x2
  1000abe30  bl      _objc_retain
  1000abe34  ldr     x8, [x19, x20]                           ; x8 = self->_endlessInfoButton
  1000abe38  str     x0, [x19, x20]                           ; self->_endlessInfoButton = arg1
  1000abe3c  mov     x0, x8
  1000abe40  ldp     x29, x30, [sp, #0x10]
  1000abe44  ldp     x20, x19, [sp], #0x20
  1000abe48  b       _objc_release

; ======================================================================
; -[ADPlayMenuViewController slidingView]
; address 0x1000abe4c  size 16  kind objc
; ======================================================================
  1000abe4c  adrp    x8, #0x100420000
  1000abe50  ldrsw   x8, [x8, #0x130]                         ; ivar offset ADPlayMenuViewController._slidingView (+0x168)
  1000abe54  ldr     x0, [x0, x8]                             ; x0 = self->_slidingView
  1000abe58  ret

; ======================================================================
; -[ADPlayMenuViewController setSlidingView:]
; address 0x1000abe5c  size 56  kind objc
; ======================================================================
  1000abe5c  stp     x20, x19, [sp, #-0x20]!
  1000abe60  stp     x29, x30, [sp, #0x10]
  1000abe64  add     x29, sp, #0x10
  1000abe68  mov     x19, x0
  1000abe6c  adrp    x8, #0x100420000
  1000abe70  ldrsw   x20, [x8, #0x130]                        ; ivar offset ADPlayMenuViewController._slidingView (+0x168)
  1000abe74  mov     x0, x2
  1000abe78  bl      _objc_retain
  1000abe7c  ldr     x8, [x19, x20]                           ; x8 = self->_slidingView
  1000abe80  str     x0, [x19, x20]                           ; self->_slidingView = arg1
  1000abe84  mov     x0, x8
  1000abe88  ldp     x29, x30, [sp, #0x10]
  1000abe8c  ldp     x20, x19, [sp], #0x20
  1000abe90  b       _objc_release

; ======================================================================
; -[ADPlayMenuViewController animateCheck]
; address 0x1000abe94  size 20  kind objc
; ======================================================================
  1000abe94  adrp    x8, #0x100420000
  1000abe98  ldrsw   x8, [x8, #0x134]                         ; ivar offset ADPlayMenuViewController._animateCheck (+0x140)
  1000abe9c  ldrb    w8, [x0, x8]                             ; w8 = self->_animateCheck
  1000abea0  and     w0, w8, #1
  1000abea4  ret

; ======================================================================
; -[ADPlayMenuViewController setAnimateCheck:]
; address 0x1000abea8  size 16  kind objc
; ======================================================================
  1000abea8  adrp    x8, #0x100420000
  1000abeac  ldrsw   x8, [x8, #0x134]                         ; ivar offset ADPlayMenuViewController._animateCheck (+0x140)
  1000abeb0  strb    w2, [x0, x8]                             ; self->_animateCheck = arg1
  1000abeb4  ret

; ======================================================================
; -[ADPlayMenuViewController .cxx_destruct]
; address 0x1000abeb8  size 124  kind objc
; ======================================================================
  1000abeb8  stp     x20, x19, [sp, #-0x20]!
  1000abebc  stp     x29, x30, [sp, #0x10]
  1000abec0  add     x29, sp, #0x10
  1000abec4  mov     x19, x0
  1000abec8  adrp    x8, #0x100420000
  1000abecc  ldrsw   x8, [x8, #0x130]                         ; ivar offset ADPlayMenuViewController._slidingView (+0x168)
  1000abed0  add     x0, x19, x8
  1000abed4  mov     x1, #0
  1000abed8  bl      _objc_storeStrong
  1000abedc  adrp    x8, #0x100420000
  1000abee0  ldrsw   x8, [x8, #0x12c]                         ; ivar offset ADPlayMenuViewController._endlessInfoButton (+0x160)
  1000abee4  add     x0, x19, x8
  1000abee8  mov     x1, #0
  1000abeec  bl      _objc_storeStrong
  1000abef0  adrp    x8, #0x100420000
  1000abef4  ldrsw   x8, [x8, #0x128]                         ; ivar offset ADPlayMenuViewController._challengeInfoButton (+0x158)
  1000abef8  add     x0, x19, x8
  1000abefc  mov     x1, #0
  1000abf00  bl      _objc_storeStrong
  1000abf04  adrp    x8, #0x100420000
  1000abf08  ldrsw   x8, [x8, #0x124]                         ; ivar offset ADPlayMenuViewController._endlessModeButton (+0x150)
  1000abf0c  add     x0, x19, x8
  1000abf10  mov     x1, #0
  1000abf14  bl      _objc_storeStrong
  1000abf18  mov     x1, #0
  1000abf1c  adrp    x8, #0x100420000
  1000abf20  ldrsw   x8, [x8, #0x120]                         ; ivar offset ADPlayMenuViewController._endlessModeLockView (+0x148)
  1000abf24  add     x0, x19, x8
  1000abf28  ldp     x29, x30, [sp, #0x10]
  1000abf2c  ldp     x20, x19, [sp], #0x20
  1000abf30  b       _objc_storeStrong
