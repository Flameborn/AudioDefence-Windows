// unit ADOpenerGameplayViewController — 14 functions
//   0x100025334     140  -[ADOpenerGameplayViewController initWithNibName:bundle:]
//   0x1000253c0    1468  -[ADOpenerGameplayViewController viewDidLoad]
//   0x10002597c      24  -[ADOpenerGameplayViewController viewDidLoad]_block_invoke
//   0x100025994      20  -[ADOpenerGameplayViewController handleSkipForAccessibleUsers]
//   0x1000259a8     656  -[ADOpenerGameplayViewController loadView]
//   0x100025c38     232  -[ADOpenerGameplayViewController initAmbiantManager]
//   0x100025d20     296  -[ADOpenerGameplayViewController initBrickManager]
//   0x100025e48     176  -[ADOpenerGameplayViewController goToScoreScreen]
//   0x100025ef8     180  -[ADOpenerGameplayViewController skipButtonPressed:]
//   0x100025fac      60  -[ADOpenerGameplayViewController didReceiveMemoryWarning]
//   0x100025fe8     140  -[ADOpenerGameplayViewController dealloc]
//   0x100026074      16  -[ADOpenerGameplayViewController controlModeLabel]
//   0x100026084      56  -[ADOpenerGameplayViewController setControlModeLabel:]
//   0x1000260bc      20  -[ADOpenerGameplayViewController .cxx_destruct]

; ======================================================================
; -[ADOpenerGameplayViewController initWithNibName:bundle:]
; address 0x100025334  size 140  kind objc
; ======================================================================
  100025334  stp     x22, x21, [sp, #-0x30]!
  100025338  stp     x20, x19, [sp, #0x10]
  10002533c  stp     x29, x30, [sp, #0x20]
  100025340  add     x29, sp, #0x20
  100025344  sub     sp, sp, #0x10
  100025348  mov     x20, x3
  10002534c  mov     x21, x0
  100025350  mov     x0, x2
  100025354  bl      _objc_retain
  100025358  mov     x19, x0
  10002535c  str     x21, [sp]
  100025360  adrp    x8, #0x10041e000
  100025364  ldr     x8, [x8, #0xc60]
  100025368  str     x8, [sp, #8]
  10002536c  adrp    x8, #0x100416000
  100025370  nop
  100025374  ldr     x1, [x8, #0xb40]
  100025378  mov     x0, sp
  10002537c  mov     x2, x19
  100025380  mov     x3, x20
  100025384  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100025388  mov     x20, x0
  10002538c  mov     x0, x19
  100025390  bl      _objc_release
  100025394  mov     x0, x20
  100025398  sub     sp, x29, #0x20
  10002539c  ldp     x29, x30, [sp, #0x20]
  1000253a0  ldp     x20, x19, [sp, #0x10]
  1000253a4  ldp     x22, x21, [sp], #0x30
  1000253a8  ret
  1000253ac  mov     x20, x0
  1000253b0  mov     x0, x19
  1000253b4  bl      _objc_release
  1000253b8  mov     x0, x20
  1000253bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADOpenerGameplayViewController viewDidLoad]
; address 0x1000253c0  size 1468  kind objc
; ======================================================================
  1000253c0  stp     x28, x27, [sp, #-0x60]!
  1000253c4  stp     x26, x25, [sp, #0x10]
  1000253c8  stp     x24, x23, [sp, #0x20]
  1000253cc  stp     x22, x21, [sp, #0x30]
  1000253d0  stp     x20, x19, [sp, #0x40]
  1000253d4  stp     x29, x30, [sp, #0x50]
  1000253d8  add     x29, sp, #0x50
  1000253dc  sub     sp, sp, #0xe0
  1000253e0  mov     x19, x0
  1000253e4  adrp    x8, #0x1003b0000
  1000253e8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000253ec  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000253f0  stur    x8, [x29, #-0x58]
  1000253f4  adrp    x8, #0x100417000
  1000253f8  nop
  1000253fc  ldr     x1, [x8, #0xca0]
  100025400  bl      _objc_msgSend                            ; [self scoreView]
  100025404  mov     x29, x29
  100025408  bl      _objc_retainAutoreleasedReturnValue
  10002540c  mov     x20, x0
  100025410  adrp    x8, #0x100416000
  100025414  nop
  100025418  ldr     x21, [x8, #0xba8]
  10002541c  mov     w2, #1
  100025420  mov     x1, x21
  100025424  bl      _objc_msgSend                            ; [[self scoreView] setHidden:1]
  100025428  mov     x0, x20
  10002542c  bl      _objc_release
  100025430  adrp    x8, #0x100417000
  100025434  nop
  100025438  ldr     x1, [x8, #0xca8]
  10002543c  mov     x0, x19
  100025440  bl      _objc_msgSend                            ; [self initAmbiantManager]
  100025444  adrp    x8, #0x100417000
  100025448  nop
  10002544c  ldr     x1, [x8, #0xcb0]
  100025450  mov     x0, x19
  100025454  bl      _objc_msgSend                            ; [self initBrickManager]
  100025458  adrp    x8, #0x100417000
  10002545c  nop
  100025460  ldr     x1, [x8, #0xcb8]
  100025464  mov     x0, x19
  100025468  bl      _objc_msgSend                            ; [self startUpdateTimers]
  10002546c  adrp    x8, #0x100417000
  100025470  nop
  100025474  ldr     x1, [x8, #0xcc0]
  100025478  mov     x0, x19
  10002547c  bl      _objc_msgSend                            ; [self skipButton]
  100025480  mov     x29, x29
  100025484  bl      _objc_retainAutoreleasedReturnValue
  100025488  mov     x20, x0
  10002548c  adrp    x8, #0x100416000
  100025490  nop
  100025494  ldr     x1, [x8, #0xba0]
  100025498  bl      _objc_msgSend                            ; [[self skipButton] setupAsMain]
  10002549c  mov     x0, x20
  1000254a0  bl      _objc_release
  1000254a4  adrp    x8, #0x100417000
  1000254a8  nop
  1000254ac  ldr     x22, [x8, #0xcc8]
  1000254b0  mov     x0, x19
  1000254b4  mov     x1, x22
  1000254b8  bl      _objc_msgSend                            ; [self controlModeLabel]
  1000254bc  mov     x29, x29
  1000254c0  bl      _objc_retainAutoreleasedReturnValue
  1000254c4  mov     x20, x0
  1000254c8  adrp    x8, #0x100416000
  1000254cc  nop
  1000254d0  ldr     x1, [x8, #0xb80]
  1000254d4  bl      _objc_msgSend                            ; [[self controlModeLabel] titleLabel]
  1000254d8  mov     x29, x29
  1000254dc  bl      _objc_retainAutoreleasedReturnValue
  1000254e0  mov     x23, x0
  1000254e4  adrp    x8, #0x100416000
  1000254e8  nop
  1000254ec  ldr     x1, [x8, #0xeb8]
  1000254f0  bl      _objc_msgSend                            ; [[[self controlModeLabel] titleLabel] setupAsInfo]
  1000254f4  str     x21, [sp, #0x10]
  1000254f8  mov     x0, x23
  1000254fc  bl      _objc_release
  100025500  mov     x0, x20
  100025504  bl      _objc_release
  100025508  stp     xzr, xzr, [sp, #0x48]
  10002550c  stp     xzr, xzr, [sp, #0x38]
  100025510  stp     xzr, xzr, [sp, #0x28]
  100025514  stp     xzr, xzr, [sp, #0x18]
  100025518  adrp    x8, #0x100417000
  10002551c  nop
  100025520  ldr     x1, [x8, #0xcd0]
  100025524  mov     x0, x19
  100025528  bl      _objc_msgSend                            ; [self infiniteScrollViews]
  10002552c  mov     x29, x29
  100025530  bl      _objc_retainAutoreleasedReturnValue
  100025534  mov     x20, x0
  100025538  adrp    x8, #0x100416000
  10002553c  nop
  100025540  ldr     x23, [x8, #0xe00]
  100025544  add     x2, sp, #0x18
  100025548  add     x3, sp, #0x58
  10002554c  mov     w4, #0x10
  100025550  mov     x1, x23
  100025554  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  100025558  mov     x24, x0
  10002555c  cbz     x24, loc_1000255f0                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  100025560  ldr     x8, [sp, #0x28]
  100025564  ldr     x28, [x8]
  100025568  adrp    x8, #0x100417000
  10002556c  nop
  100025570  ldr     x25, [x8, #0xcd8]
  100025574  adrp    x8, #0x100417000
  100025578  add     x8, x8, #0x998                           ; &@selector(setUserInteractionEnabled:)
  10002557c  ldr     x26, [x8]
loc_100025580:
  100025580  mov     x21, #0
loc_100025584:
  100025584  ldr     x8, [sp, #0x28]
  100025588  ldr     x8, [x8]
  10002558c  cmp     x8, x28
  100025590  b.eq    loc_10002559c                            ; if (x8 == x28)
  100025594  mov     x0, x20
  100025598  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self infiniteScrollViews])
loc_10002559c:
  10002559c  ldr     x8, [sp, #0x20]
  1000255a0  ldr     x27, [x8, x21, lsl #3]
  1000255a4  mov     w2, #0
  1000255a8  mov     x0, x27
  1000255ac  mov     x1, x25
  1000255b0  bl      _objc_msgSend                            ; [x0 setScrollEnabled:0]
  1000255b4  mov     w2, #0
  1000255b8  mov     x0, x27
  1000255bc  mov     x1, x26
  1000255c0  bl      _objc_msgSend                            ; [x0 setUserInteractionEnabled:0]
  1000255c4  add     x21, x21, #1
  1000255c8  cmp     x21, x24
  1000255cc  b.lo    loc_100025584                            ; if ((x21 + 1) <u [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  1000255d0  add     x2, sp, #0x18
  1000255d4  add     x3, sp, #0x58
  1000255d8  mov     w4, #0x10
  1000255dc  mov     x0, x20
  1000255e0  mov     x1, x23
  1000255e4  bl      _objc_msgSend                            ; [[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000255e8  mov     x24, x0
  1000255ec  cbnz    x24, loc_100025580                       ; if ([[self infiniteScrollViews] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_1000255f0:
  1000255f0  mov     x0, x20
  1000255f4  bl      _objc_release
  1000255f8  adrp    x8, #0x100417000
  1000255fc  nop
  100025600  ldr     x20, [x8, #0xce0]
  100025604  mov     x0, x19
  100025608  mov     x1, x20
  10002560c  bl      _objc_msgSend                            ; [self weaponTouchArea]
  100025610  mov     x29, x29
  100025614  bl      _objc_retainAutoreleasedReturnValue
  100025618  mov     x23, x0
  10002561c  adrp    x8, #0x100417000
  100025620  nop
  100025624  ldr     x1, [x8, #0xc10]
  100025628  mov     x2, x19
  10002562c  bl      _objc_msgSend                            ; [[self weaponTouchArea] setGameplayViewController:self]
  100025630  mov     x0, x23
  100025634  bl      _objc_release
  100025638  adrp    x8, #0x100417000
  10002563c  nop
  100025640  ldr     x1, [x8, #0xce8]
  100025644  mov     x0, x19
  100025648  bl      _objc_msgSend                            ; [self timerView]
  10002564c  mov     x29, x29
  100025650  bl      _objc_retainAutoreleasedReturnValue
  100025654  mov     x23, x0
  100025658  mov     w2, #1
  10002565c  ldr     x1, [sp, #0x10]
  100025660  bl      _objc_msgSend                            ; [[self timerView] setHidden:1]
  100025664  mov     x0, x23
  100025668  bl      _objc_release
  10002566c  adrp    x8, #0x10041d000
  100025670  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100025674  adrp    x8, #0x100416000
  100025678  nop
  10002567c  ldr     x1, [x8, #0xc00]
  100025680  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100025684  mov     x29, x29
  100025688  bl      _objc_retainAutoreleasedReturnValue
  10002568c  mov     x21, x0
  100025690  adrp    x8, #0x100417000
  100025694  nop
  100025698  ldr     x1, [x8, #0xc80]
  10002569c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  1000256a0  mov     x23, x0
  1000256a4  mov     x0, x21
  1000256a8  bl      _objc_release
  1000256ac  mov     x0, x19
  1000256b0  mov     x1, x22
  1000256b4  cmp     w23, #1
  1000256b8  b.eq    loc_1000256f8                            ; if ([[ADGameParameters sharedParameters] controlScheme] == 1)
  1000256bc  cmp     w23, #2
  1000256c0  b.ne    loc_10002572c                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  1000256c4  bl      _objc_msgSend                            ; [self controlModeLabel]
  1000256c8  mov     x29, x29
  1000256cc  bl      _objc_retainAutoreleasedReturnValue
  1000256d0  mov     x21, x0
  1000256d4  adrp    x8, #0x100417000
  1000256d8  nop
  1000256dc  ldr     x1, [x8, #0x920]
  1000256e0  mov     x3, #0
  1000256e4  adrp    x2, #0x1003bb000
  1000256e8  add     x2, x2, #0x590                           ; @"Swipe the screen"
  1000256ec  bl      _objc_msgSend                            ; [[self controlModeLabel] setTitle:@"Swipe the screen" forState:0]
  1000256f0  b       loc_100025794
  1000256f4  b       loc_100025970
loc_1000256f8:
  1000256f8  bl      _objc_msgSend                            ; [self controlModeLabel]
  1000256fc  mov     x29, x29
  100025700  bl      _objc_retainAutoreleasedReturnValue
  100025704  mov     x21, x0
  100025708  adrp    x8, #0x100417000
  10002570c  nop
  100025710  ldr     x1, [x8, #0x920]
  100025714  mov     x3, #0
  100025718  adrp    x2, #0x1003bb000
  10002571c  add     x2, x2, #0x570                           ; @"Move the device"
  100025720  bl      _objc_msgSend                            ; [[self controlModeLabel] setTitle:@"Move the device" forState:0]
  100025724  b       loc_100025794
  100025728  b       loc_100025970
loc_10002572c:
  10002572c  cmp     w23, #3
  100025730  b.ne    loc_100025768                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  100025734  bl      _objc_msgSend                            ; [self controlModeLabel]
  100025738  mov     x29, x29
  10002573c  bl      _objc_retainAutoreleasedReturnValue
  100025740  mov     x21, x0
  100025744  adrp    x8, #0x100417000
  100025748  nop
  10002574c  ldr     x1, [x8, #0x920]
  100025750  mov     x3, #0
  100025754  adrp    x2, #0x1003bb000
  100025758  add     x2, x2, #0x5b0                           ; @"Tilt the device"
  10002575c  bl      _objc_msgSend                            ; [[self controlModeLabel] setTitle:@"Tilt the device" forState:0]
  100025760  b       loc_100025794
  100025764  b       loc_100025970
loc_100025768:
  100025768  bl      _objc_msgSend                            ; [self controlModeLabel]
  10002576c  mov     x29, x29
  100025770  bl      _objc_retainAutoreleasedReturnValue
  100025774  mov     x21, x0
  100025778  adrp    x8, #0x100417000
  10002577c  nop
  100025780  ldr     x1, [x8, #0x920]
  100025784  mov     x3, #0
  100025788  adrp    x2, #0x1003bb000
  10002578c  add     x2, x2, #0x5d0                           ; @"Swipe the screen or move the device"
  100025790  bl      _objc_msgSend                            ; [[self controlModeLabel] setTitle:@"Swipe the screen or move the device" forState:0]
loc_100025794:
  100025794  mov     x0, x21
  100025798  bl      _objc_release
  10002579c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000257a0  cbz     w0, loc_10002588c                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  1000257a4  mov     w1, #0x77350000
  1000257a8  movk    w1, #0x9400
  1000257ac  mov     x0, #0
  1000257b0  bl      _dispatch_time                           ; dispatch_time(0, 0x77359400)
  1000257b4  adrp    x1, #0x1003b0000
  1000257b8  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000257bc  adrp    x2, #0x1003b1000
  1000257c0  add     x2, x2, #0x270                           ; ^{-[ADOpenerGameplayViewController viewDidLoad]_block_invoke}
  1000257c4  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x77359400), __dispatch_main_q, ^{-[ADOpenerGameplayViewController viewDidLoad]_block_invoke})
  1000257c8  adrp    x8, #0x1003b0000
  1000257cc  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  1000257d0  ldr     w22, [x8]                                ; w22 = _UIAccessibilityScreenChangedNotification[+0x0]
  1000257d4  mov     x0, x19
  1000257d8  mov     x1, x20
  1000257dc  bl      _objc_msgSend                            ; [self weaponTouchArea]
  1000257e0  mov     x29, x29
  1000257e4  bl      _objc_retainAutoreleasedReturnValue
  1000257e8  mov     x21, x0
  1000257ec  mov     x0, x22
  1000257f0  mov     x1, x21
  1000257f4  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [self weaponTouchArea])
  1000257f8  mov     x0, x21
  1000257fc  bl      _objc_release
  100025800  adrp    x8, #0x10041e000
  100025804  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  100025808  adrp    x8, #0x100416000
  10002580c  nop
  100025810  ldr     x1, [x8, #0xac8]
  100025814  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  100025818  adrp    x8, #0x100417000
  10002581c  nop
  100025820  ldr     x3, [x8, #0xcf0]
  100025824  adrp    x8, #0x100417000
  100025828  nop
  10002582c  ldr     x1, [x8, #0x638]
  100025830  mov     x2, x19
  100025834  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSkipForAccessibleUsers)]
  100025838  mov     x21, x0
  10002583c  adrp    x8, #0x100417000
  100025840  nop
  100025844  ldr     x1, [x8, #0x640]
  100025848  mov     w2, #3
  10002584c  bl      _objc_msgSend                            ; [[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSkipForAccessibleUsers)] setNumberOfTapsRequired:3]
  100025850  mov     x0, x19
  100025854  mov     x1, x20
  100025858  bl      _objc_msgSend                            ; [self weaponTouchArea]
  10002585c  mov     x29, x29
  100025860  bl      _objc_retainAutoreleasedReturnValue
  100025864  mov     x20, x0
  100025868  adrp    x8, #0x100417000
  10002586c  nop
  100025870  ldr     x1, [x8, #0x668]
  100025874  mov     x2, x21
  100025878  bl      _objc_msgSend                            ; [[self weaponTouchArea] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSkipForAccessibleUsers)]]
  10002587c  mov     x0, x20
  100025880  bl      _objc_release
  100025884  mov     x0, x21
  100025888  bl      _objc_release
loc_10002588c:
  10002588c  adrp    x8, #0x10041d000
  100025890  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100025894  adrp    x8, #0x100416000
  100025898  nop
  10002589c  ldr     x1, [x8, #0xb28]
  1000258a0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000258a4  mov     x29, x29
  1000258a8  bl      _objc_retainAutoreleasedReturnValue
  1000258ac  mov     x20, x0
  1000258b0  adrp    x8, #0x100417000
  1000258b4  nop
  1000258b8  ldr     x1, [x8, #0xcf8]
  1000258bc  mov     w2, #1
  1000258c0  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] setIdleTimerDisabled:1]
  1000258c4  adrp    x19, #0x1003b0000
  1000258c8  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000258cc  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000258d0  mov     x0, x20
  1000258d4  bl      _objc_release
  1000258d8  ldur    x8, [x29, #-0x58]
  1000258dc  sub     x8, x19, x8
  1000258e0  cbnz    x8, loc_100025904                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000258e4  sub     sp, x29, #0x50
  1000258e8  ldp     x29, x30, [sp, #0x50]
  1000258ec  ldp     x20, x19, [sp, #0x40]
  1000258f0  ldp     x22, x21, [sp, #0x30]
  1000258f4  ldp     x24, x23, [sp, #0x20]
  1000258f8  ldp     x26, x25, [sp, #0x10]
  1000258fc  ldp     x28, x27, [sp], #0x60
  100025900  ret
loc_100025904:
  100025904  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100025908:
  100025908  mov     x19, x0
loc_10002590c:
  10002590c  mov     x0, x20
loc_100025910:
  100025910  bl      _objc_release
  100025914  mov     x0, x19
  100025918  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002591c  b       loc_100025908
  100025920  b       loc_100025908
  100025924  b       loc_100025908
  100025928  b       loc_100025908
  10002592c  mov     x19, x0
  100025930  mov     x0, x23
  100025934  bl      _objc_release
  100025938  b       loc_10002590c
  10002593c  b       loc_100025908
  100025940  b       loc_100025944
loc_100025944:
  100025944  mov     x19, x0
  100025948  mov     x0, x23
  10002594c  b       loc_100025910
  100025950  b       loc_100025970
  100025954  b       loc_100025970
  100025958  b       loc_100025908
  10002595c  b       loc_100025970
  100025960  mov     x19, x0
  100025964  mov     x0, x20
  100025968  bl      _objc_release
  10002596c  b       loc_100025974
loc_100025970:
  100025970  mov     x19, x0
loc_100025974:
  100025974  mov     x0, x21
  100025978  b       loc_100025910

; ======================================================================
; -[ADOpenerGameplayViewController viewDidLoad]_block_invoke
; address 0x10002597c  size 24  kind block
; ======================================================================
  10002597c  adrp    x8, #0x1003b0000
  100025980  ldr     x8, [x8, #0xb0]                          ; _UIAccessibilityAnnouncementNotification
  100025984  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityAnnouncementNotification[+0x0]
  100025988  adrp    x1, #0x1003bb000
  10002598c  add     x1, x1, #0x5f0                           ; @"Triple tap to skip intro"
  100025990  b       _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityAnnouncementNotification[+0x0], @"Triple tap to skip intro", blockarg2, blockarg3)

; ======================================================================
; -[ADOpenerGameplayViewController handleSkipForAccessibleUsers]
; address 0x100025994  size 20  kind objc
; ======================================================================
  100025994  mov     x2, #0
  100025998  adrp    x8, #0x100417000
  10002599c  nop
  1000259a0  ldr     x1, [x8, #0xd00]
  1000259a4  b       _objc_msgSend                            ; [self skipButtonPressed:0]

; ======================================================================
; -[ADOpenerGameplayViewController loadView]
; address 0x1000259a8  size 656  kind objc
; ======================================================================
  1000259a8  stp     x24, x23, [sp, #-0x40]!
  1000259ac  stp     x22, x21, [sp, #0x10]
  1000259b0  stp     x20, x19, [sp, #0x20]
  1000259b4  stp     x29, x30, [sp, #0x30]
  1000259b8  add     x29, sp, #0x30
  1000259bc  sub     sp, sp, #0x40
  1000259c0  mov     x19, x0
  1000259c4  adrp    x24, #0x1003b0000
  1000259c8  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000259cc  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000259d0  str     x24, [sp, #0x38]
  1000259d4  adrp    x8, #0x1003bb000
  1000259d8  add     x8, x8, #0x610                           ; @"controlModeLabel"
  1000259dc  str     x8, [sp, #8]
  1000259e0  adrp    x23, #0x10041d000
  1000259e4  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000259e8  adrp    x8, #0x100416000
  1000259ec  nop
  1000259f0  ldr     x20, [x8, #0xec0]
  1000259f4  mov     w2, #1
  1000259f8  mov     x1, x20
  1000259fc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100025a00  mov     x29, x29
  100025a04  bl      _objc_retainAutoreleasedReturnValue
  100025a08  mov     x21, x0
  100025a0c  str     x21, [sp, #0x20]
  100025a10  adrp    x8, #0x1003bb000
  100025a14  add     x8, x8, #0x630                           ; @"skipButton"
  100025a18  str     x8, [sp, #0x10]
  100025a1c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100025a20  mov     w2, #2
  100025a24  mov     x1, x20
  100025a28  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100025a2c  bl      _objc_retain
  100025a30  mov     x22, x0
  100025a34  str     x22, [sp, #0x28]
  100025a38  adrp    x8, #0x1003bb000
  100025a3c  add     x8, x8, #0x650                           ; @"weaponTouchArea"
  100025a40  str     x8, [sp, #0x18]
  100025a44  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100025a48  mov     w2, #3
  100025a4c  mov     x1, x20
  100025a50  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100025a54  bl      _objc_retain
  100025a58  mov     x23, x0
  100025a5c  str     x23, [sp, #0x30]
  100025a60  adrp    x8, #0x10041d000
  100025a64  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100025a68  adrp    x8, #0x100416000
  100025a6c  nop
  100025a70  ldr     x1, [x8, #0xcd0]
  100025a74  add     x2, sp, #0x20
  100025a78  add     x3, sp, #8
  100025a7c  mov     w4, #3
  100025a80  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]
  100025a84  mov     x29, x29
  100025a88  bl      _objc_retainAutoreleasedReturnValue
  100025a8c  mov     x20, x0
  100025a90  mov     x0, x23
  100025a94  bl      _objc_release
  100025a98  mov     x0, x22
  100025a9c  bl      _objc_release
  100025aa0  mov     x0, x21
  100025aa4  bl      _objc_release
  100025aa8  adrp    x8, #0x100416000
  100025aac  nop
  100025ab0  ldr     x1, [x8, #0xbf0]
  100025ab4  adrp    x2, #0x1003bb000
  100025ab8  add     x2, x2, #0x670                           ; @"ADOpenerGameplayViewController"
  100025abc  mov     x0, x19
  100025ac0  mov     x3, x20
  100025ac4  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADOpenerGameplayViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]]
  100025ac8  adrp    x8, #0x100416000
  100025acc  nop
  100025ad0  ldr     x21, [x8, #0xf18]
  100025ad4  mov     x0, x19
  100025ad8  mov     x1, x21
  100025adc  bl      _objc_msgSend                            ; [self view]
  100025ae0  mov     x29, x29
  100025ae4  bl      _objc_retainAutoreleasedReturnValue
  100025ae8  mov     x22, x0
  100025aec  adrp    x8, #0x100417000
  100025af0  nop
  100025af4  ldr     x1, [x8, #0x6b0]
  100025af8  bl      _objc_msgSend                            ; [[self view] tag]
  100025afc  mov     x23, x0
  100025b00  mov     x0, x22
  100025b04  bl      _objc_release
  100025b08  cmp     x23, #0xade
  100025b0c  b.ne    loc_100025b94                            ; if ([[self view] tag] != 2782)
  100025b10  mov     x0, x19
  100025b14  mov     x1, x21
  100025b18  bl      _objc_msgSend                            ; [self view]
  100025b1c  mov     x29, x29
  100025b20  bl      _objc_retainAutoreleasedReturnValue
  100025b24  mov     x21, x0
  100025b28  adrp    x8, #0x100417000
  100025b2c  nop
  100025b30  ldr     x1, [x8, #0xd08]
  100025b34  mov     w2, #0xa
  100025b38  bl      _objc_msgSend                            ; [[self view] viewWithTag:10]
  100025b3c  mov     x29, x29
  100025b40  bl      _objc_retainAutoreleasedReturnValue
  100025b44  mov     x22, x0
  100025b48  str     x22, [sp]
  100025b4c  adrp    x8, #0x10041d000
  100025b50  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100025b54  adrp    x8, #0x100417000
  100025b58  nop
  100025b5c  ldr     x1, [x8, #0x3c8]
  100025b60  mov     x2, sp
  100025b64  mov     w3, #1
  100025b68  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x0] count:1]
  100025b6c  mov     x2, x0
  100025b70  adrp    x8, #0x100417000
  100025b74  nop
  100025b78  ldr     x1, [x8, #0xd10]
  100025b7c  mov     x0, x19
  100025b80  bl      _objc_msgSend                            ; [self setInfiniteScrollViews:[NSArray arrayWithObjects:&sp[0x0] count:1]]
  100025b84  mov     x0, x22
  100025b88  bl      _objc_release
  100025b8c  mov     x0, x21
  100025b90  bl      _objc_release
loc_100025b94:
  100025b94  mov     x0, x20
  100025b98  bl      _objc_release
  100025b9c  ldr     x8, [sp, #0x38]
  100025ba0  sub     x8, x24, x8
  100025ba4  cbnz    x8, loc_100025bc0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100025ba8  sub     sp, x29, #0x30
  100025bac  ldp     x29, x30, [sp, #0x30]
  100025bb0  ldp     x20, x19, [sp, #0x20]
  100025bb4  ldp     x22, x21, [sp, #0x10]
  100025bb8  ldp     x24, x23, [sp], #0x40
  100025bbc  ret
loc_100025bc0:
  100025bc0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100025bc4  mov     x19, x0
  100025bc8  b       loc_100025c28
  100025bcc  mov     x19, x0
  100025bd0  b       loc_100025bf0
  100025bd4  mov     x19, x0
  100025bd8  b       loc_100025be8
  100025bdc  mov     x19, x0
  100025be0  mov     x0, x23
  100025be4  bl      _objc_release
loc_100025be8:
  100025be8  mov     x0, x22
  100025bec  bl      _objc_release
loc_100025bf0:
  100025bf0  mov     x0, x21
  100025bf4  b       loc_100025c2c
  100025bf8  mov     x19, x0
  100025bfc  mov     x0, x22
  100025c00  bl      _objc_release
  100025c04  b       loc_100025c28
  100025c08  mov     x19, x0
  100025c0c  b       loc_100025c20
  100025c10  b       loc_100025c14
loc_100025c14:
  100025c14  mov     x19, x0
  100025c18  mov     x0, x22
  100025c1c  bl      _objc_release
loc_100025c20:
  100025c20  mov     x0, x21
  100025c24  bl      _objc_release
loc_100025c28:
  100025c28  mov     x0, x20
loc_100025c2c:
  100025c2c  bl      _objc_release
  100025c30  mov     x0, x19
  100025c34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADOpenerGameplayViewController initAmbiantManager]
; address 0x100025c38  size 232  kind objc
; ======================================================================
  100025c38  stp     x22, x21, [sp, #-0x30]!
  100025c3c  stp     x20, x19, [sp, #0x10]
  100025c40  stp     x29, x30, [sp, #0x20]
  100025c44  add     x29, sp, #0x20
  100025c48  adrp    x21, #0x10041d000
  100025c4c  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  100025c50  adrp    x8, #0x100417000
  100025c54  nop
  100025c58  ldr     x19, [x8, #0x4f0]
  100025c5c  mov     x1, x19
  100025c60  bl      _objc_msgSend                            ; [S3DEngine engine]
  100025c64  mov     x29, x29
  100025c68  bl      _objc_retainAutoreleasedReturnValue
  100025c6c  mov     x20, x0
  100025c70  adrp    x8, #0x100417000
  100025c74  nop
  100025c78  ldr     x1, [x8, #0xd18]
  100025c7c  fmov    s0, #1.50000000
  100025c80  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbRoomSize:1.5]
  100025c84  mov     x0, x20
  100025c88  bl      _objc_release
  100025c8c  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  100025c90  mov     x1, x19
  100025c94  bl      _objc_msgSend                            ; [S3DEngine engine]
  100025c98  mov     x29, x29
  100025c9c  bl      _objc_retainAutoreleasedReturnValue
  100025ca0  mov     x20, x0
  100025ca4  adrp    x8, #0x100417000
  100025ca8  nop
  100025cac  ldr     x1, [x8, #0xd20]
  100025cb0  adrp    x8, #0x100181000
  100025cb4  ldr     s0, [x8, #0xac0]                         ; s0 = 50.0
  100025cb8  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbDampening:50]
  100025cbc  mov     x0, x20
  100025cc0  bl      _objc_release
  100025cc4  ldr     x0, [x21, #0xff8]                        ; class S3DEngine
  100025cc8  mov     x1, x19
  100025ccc  bl      _objc_msgSend                            ; [S3DEngine engine]
  100025cd0  mov     x29, x29
  100025cd4  bl      _objc_retainAutoreleasedReturnValue
  100025cd8  mov     x20, x0
  100025cdc  adrp    x8, #0x100417000
  100025ce0  nop
  100025ce4  ldr     x1, [x8, #0xd28]
  100025ce8  fmov    s0, #1.00000000
  100025cec  bl      _objc_msgSend                            ; [[S3DEngine engine] setReverbVolume:1]
  100025cf0  mov     x0, x20
  100025cf4  ldp     x29, x30, [sp, #0x20]
  100025cf8  ldp     x20, x19, [sp, #0x10]
  100025cfc  ldp     x22, x21, [sp], #0x30
  100025d00  b       _objc_release
  100025d04  b       loc_100025d0c
  100025d08  b       loc_100025d0c
loc_100025d0c:
  100025d0c  mov     x19, x0
  100025d10  mov     x0, x20
  100025d14  bl      _objc_release
  100025d18  mov     x0, x19
  100025d1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADOpenerGameplayViewController initBrickManager]
; address 0x100025d20  size 296  kind objc
; ======================================================================
  100025d20  stp     x22, x21, [sp, #-0x30]!
  100025d24  stp     x20, x19, [sp, #0x10]
  100025d28  stp     x29, x30, [sp, #0x20]
  100025d2c  add     x29, sp, #0x20
  100025d30  mov     x20, x0
  100025d34  adrp    x22, #0x10041e000
  100025d38  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  100025d3c  adrp    x8, #0x100417000
  100025d40  nop
  100025d44  ldr     x19, [x8, #0xaa8]
  100025d48  mov     x1, x19
  100025d4c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100025d50  mov     x29, x29
  100025d54  bl      _objc_retainAutoreleasedReturnValue
  100025d58  mov     x21, x0
  100025d5c  adrp    x8, #0x100417000
  100025d60  nop
  100025d64  ldr     x1, [x8, #0xd30]
  100025d68  mov     w2, #4
  100025d6c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] setMode:4]
  100025d70  mov     x0, x21
  100025d74  bl      _objc_release
  100025d78  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  100025d7c  mov     x1, x19
  100025d80  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100025d84  mov     x29, x29
  100025d88  bl      _objc_retainAutoreleasedReturnValue
  100025d8c  mov     x21, x0
  100025d90  adrp    x8, #0x100417000
  100025d94  nop
  100025d98  ldr     x1, [x8, #0xd38]
  100025d9c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] reset]
  100025da0  mov     x0, x21
  100025da4  bl      _objc_release
  100025da8  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  100025dac  mov     x1, x19
  100025db0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100025db4  mov     x29, x29
  100025db8  bl      _objc_retainAutoreleasedReturnValue
  100025dbc  mov     x21, x0
  100025dc0  adrp    x8, #0x100417000
  100025dc4  nop
  100025dc8  ldr     x1, [x8, #0xc10]
  100025dcc  mov     x2, x20
  100025dd0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] setGameplayViewController:self]
  100025dd4  mov     x0, x21
  100025dd8  bl      _objc_release
  100025ddc  ldr     x0, [x22, #0x98]                         ; class ADBrickManager
  100025de0  mov     x1, x19
  100025de4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100025de8  mov     x29, x29
  100025dec  bl      _objc_retainAutoreleasedReturnValue
  100025df0  mov     x20, x0
  100025df4  adrp    x8, #0x100417000
  100025df8  nop
  100025dfc  ldr     x1, [x8, #0xd40]
  100025e00  adrp    x2, #0x1003bb000
  100025e04  add     x2, x2, #0x690                           ; @"opener"
  100025e08  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] loadBrickWithName:@"opener"]
  100025e0c  mov     x0, x20
  100025e10  ldp     x29, x30, [sp, #0x20]
  100025e14  ldp     x20, x19, [sp, #0x10]
  100025e18  ldp     x22, x21, [sp], #0x30
  100025e1c  b       _objc_release
  100025e20  b       loc_100025e28
  100025e24  b       loc_100025e28
loc_100025e28:
  100025e28  mov     x19, x0
  100025e2c  mov     x0, x21
  100025e30  b       loc_100025e3c
  100025e34  mov     x19, x0
  100025e38  mov     x0, x20
loc_100025e3c:
  100025e3c  bl      _objc_release
  100025e40  mov     x0, x19
  100025e44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADOpenerGameplayViewController goToScoreScreen]
; address 0x100025e48  size 176  kind objc
; ======================================================================
  100025e48  stp     x22, x21, [sp, #-0x30]!
  100025e4c  stp     x20, x19, [sp, #0x10]
  100025e50  stp     x29, x30, [sp, #0x20]
  100025e54  add     x29, sp, #0x20
  100025e58  adrp    x8, #0x100417000
  100025e5c  nop
  100025e60  ldr     x1, [x8, #0xd48]
  100025e64  bl      _objc_msgSend                            ; [self killGameplay]
  100025e68  adrp    x8, #0x10041d000
  100025e6c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100025e70  adrp    x8, #0x100416000
  100025e74  nop
  100025e78  ldr     x1, [x8, #0xb28]
  100025e7c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100025e80  mov     x29, x29
  100025e84  bl      _objc_retainAutoreleasedReturnValue
  100025e88  mov     x19, x0
  100025e8c  adrp    x8, #0x100416000
  100025e90  nop
  100025e94  ldr     x1, [x8, #0xc18]
  100025e98  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100025e9c  mov     x29, x29
  100025ea0  bl      _objc_retainAutoreleasedReturnValue
  100025ea4  mov     x20, x0
  100025ea8  adrp    x8, #0x100416000
  100025eac  nop
  100025eb0  ldr     x1, [x8, #0xc10]
  100025eb4  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  100025eb8  mov     x0, x20
  100025ebc  bl      _objc_release
  100025ec0  mov     x0, x19
  100025ec4  ldp     x29, x30, [sp, #0x20]
  100025ec8  ldp     x20, x19, [sp, #0x10]
  100025ecc  ldp     x22, x21, [sp], #0x30
  100025ed0  b       _objc_release
  100025ed4  mov     x21, x0
  100025ed8  b       loc_100025ee8
  100025edc  mov     x21, x0
  100025ee0  mov     x0, x20
  100025ee4  bl      _objc_release
loc_100025ee8:
  100025ee8  mov     x0, x19
  100025eec  bl      _objc_release
  100025ef0  mov     x0, x21
  100025ef4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADOpenerGameplayViewController skipButtonPressed:]
; address 0x100025ef8  size 180  kind objc
; ======================================================================
  100025ef8  stp     x20, x19, [sp, #-0x20]!
  100025efc  stp     x29, x30, [sp, #0x10]
  100025f00  add     x29, sp, #0x10
  100025f04  adrp    x8, #0x100417000
  100025f08  nop
  100025f0c  ldr     x1, [x8, #0xd48]
  100025f10  bl      _objc_msgSend                            ; [self killGameplay]
  100025f14  adrp    x8, #0x10041d000
  100025f18  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100025f1c  adrp    x8, #0x100416000
  100025f20  nop
  100025f24  ldr     x1, [x8, #0xb28]
  100025f28  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100025f2c  mov     x29, x29
  100025f30  bl      _objc_retainAutoreleasedReturnValue
  100025f34  mov     x19, x0
  100025f38  adrp    x8, #0x100416000
  100025f3c  nop
  100025f40  ldr     x1, [x8, #0xc18]
  100025f44  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100025f48  mov     x29, x29
  100025f4c  bl      _objc_retainAutoreleasedReturnValue
  100025f50  mov     x20, x0
  100025f54  adrp    x8, #0x100416000
  100025f58  nop
  100025f5c  ldr     x1, [x8, #0xc10]
  100025f60  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  100025f64  mov     x0, x20
  100025f68  bl      _objc_release
  100025f6c  mov     x0, x19
  100025f70  ldp     x29, x30, [sp, #0x10]
  100025f74  ldp     x20, x19, [sp], #0x20
  100025f78  b       _objc_release
  100025f7c  mov     x20, x0
  100025f80  b       loc_100025fa4
  100025f84  mov     x20, x0
  100025f88  b       loc_100025f9c
  100025f8c  mov     x1, x20
  100025f90  mov     x20, x0
  100025f94  mov     x0, x1
  100025f98  bl      _objc_release
loc_100025f9c:
  100025f9c  mov     x0, x19
  100025fa0  bl      _objc_release
loc_100025fa4:
  100025fa4  mov     x0, x20
  100025fa8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADOpenerGameplayViewController didReceiveMemoryWarning]
; address 0x100025fac  size 60  kind objc
; ======================================================================
  100025fac  stp     x29, x30, [sp, #-0x10]!
  100025fb0  mov     x29, sp
  100025fb4  sub     sp, sp, #0x10
  100025fb8  str     x0, [sp]
  100025fbc  adrp    x8, #0x10041e000
  100025fc0  ldr     x8, [x8, #0xc60]
  100025fc4  str     x8, [sp, #8]
  100025fc8  adrp    x8, #0x100416000
  100025fcc  nop
  100025fd0  ldr     x1, [x8, #0xbf8]
  100025fd4  mov     x0, sp
  100025fd8  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100025fdc  mov     sp, x29
  100025fe0  ldp     x29, x30, [sp], #0x10
  100025fe4  ret

; ======================================================================
; -[ADOpenerGameplayViewController dealloc]
; address 0x100025fe8  size 140  kind objc
; ======================================================================
  100025fe8  stp     x20, x19, [sp, #-0x20]!
  100025fec  stp     x29, x30, [sp, #0x10]
  100025ff0  add     x29, sp, #0x10
  100025ff4  sub     sp, sp, #0x20
  100025ff8  mov     x19, x0
  100025ffc  adrp    x0, #0x1003bb000
  100026000  add     x0, x0, #0x6b0                           ; @"dealloc Opener"
  100026004  bl      _NSLog                                   ; NSLog(@"dealloc Opener", _cmd)
  100026008  str     x19, [sp, #0x10]
  10002600c  adrp    x8, #0x10041e000
  100026010  ldr     x8, [x8, #0xc60]
  100026014  str     x8, [sp, #0x18]
  100026018  adrp    x8, #0x100416000
  10002601c  nop
  100026020  ldr     x1, [x8, #0xfc8]
  100026024  add     x0, sp, #0x10
  100026028  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10002602c  sub     sp, x29, #0x10
  100026030  ldp     x29, x30, [sp, #0x10]
  100026034  ldp     x20, x19, [sp], #0x20
  100026038  ret
  10002603c  mov     x8, x19
  100026040  mov     x19, x0
  100026044  str     x8, [sp]
  100026048  adrp    x8, #0x10041e000
  10002604c  ldr     x8, [x8, #0xc60]
  100026050  str     x8, [sp, #8]
  100026054  adrp    x8, #0x100416000
  100026058  nop
  10002605c  ldr     x1, [x8, #0xfc8]
  100026060  mov     x0, sp
  100026064  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100026068  mov     x0, x19
  10002606c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100026070  bl      sub_10000b760

; ======================================================================
; -[ADOpenerGameplayViewController controlModeLabel]
; address 0x100026074  size 16  kind objc
; ======================================================================
  100026074  adrp    x8, #0x10041f000
  100026078  ldrsw   x8, [x8, #0x72c]                         ; ivar offset ADOpenerGameplayViewController._controlModeLabel (+0x140)
  10002607c  ldr     x0, [x0, x8]                             ; x0 = self->_controlModeLabel
  100026080  ret

; ======================================================================
; -[ADOpenerGameplayViewController setControlModeLabel:]
; address 0x100026084  size 56  kind objc
; ======================================================================
  100026084  stp     x20, x19, [sp, #-0x20]!
  100026088  stp     x29, x30, [sp, #0x10]
  10002608c  add     x29, sp, #0x10
  100026090  mov     x19, x0
  100026094  adrp    x8, #0x10041f000
  100026098  ldrsw   x20, [x8, #0x72c]                        ; ivar offset ADOpenerGameplayViewController._controlModeLabel (+0x140)
  10002609c  mov     x0, x2
  1000260a0  bl      _objc_retain
  1000260a4  ldr     x8, [x19, x20]                           ; x8 = self->_controlModeLabel
  1000260a8  str     x0, [x19, x20]                           ; self->_controlModeLabel = arg1
  1000260ac  mov     x0, x8
  1000260b0  ldp     x29, x30, [sp, #0x10]
  1000260b4  ldp     x20, x19, [sp], #0x20
  1000260b8  b       _objc_release

; ======================================================================
; -[ADOpenerGameplayViewController .cxx_destruct]
; address 0x1000260bc  size 20  kind objc
; ======================================================================
  1000260bc  mov     x1, #0
  1000260c0  adrp    x8, #0x10041f000
  1000260c4  ldrsw   x8, [x8, #0x72c]                         ; ivar offset ADOpenerGameplayViewController._controlModeLabel (+0x140)
  1000260c8  add     x0, x0, x8
  1000260cc  b       _objc_storeStrong
