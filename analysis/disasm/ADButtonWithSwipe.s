// unit ADButtonWithSwipe — 22 functions
//   0x1000243e0      60  -[ADButtonWithSwipe initWithFrame:]
//   0x10002441c      96  -[ADButtonWithSwipe awakeFromNib]
//   0x10002447c      20  -[ADButtonWithSwipe setWeaponManager:]
//   0x100024490    1188  -[ADButtonWithSwipe initGestureRecognizers]
//   0x100024934       8  -[ADButtonWithSwipe gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]
//   0x10002493c     952  -[ADButtonWithSwipe update:]
//   0x100024cf4     408  -[ADButtonWithSwipe setButtonIsDown:]
//   0x100024e8c      20  -[ADButtonWithSwipe touchedDown]
//   0x100024ea0     120  -[ADButtonWithSwipe touchedUp]
//   0x100024f18      16  -[ADButtonWithSwipe touchDragOutside]
//   0x100024f28      16  -[ADButtonWithSwipe touchDragExit]
//   0x100024f38     204  -[ADButtonWithSwipe touchCanceled]
//   0x100025004      80  -[ADButtonWithSwipe handleSwipeGesture]
//   0x100025054     288  -[ADButtonWithSwipe handlePan]
//   0x100025174     196  -[ADButtonWithSwipe handleTripleTap]
//   0x100025238      16  -[ADButtonWithSwipe buttonIsDown]
//   0x100025248      32  -[ADButtonWithSwipe weaponManager]
//   0x100025268      20  -[ADButtonWithSwipe allowSwipe]
//   0x10002527c      16  -[ADButtonWithSwipe setAllowSwipe:]
//   0x10002528c      32  -[ADButtonWithSwipe gameplayViewController]
//   0x1000252ac      20  -[ADButtonWithSwipe setGameplayViewController:]
//   0x1000252c0     116  -[ADButtonWithSwipe .cxx_destruct]

; ======================================================================
; -[ADButtonWithSwipe initWithFrame:]
; address 0x1000243e0  size 60  kind objc
; ======================================================================
  1000243e0  stp     x29, x30, [sp, #-0x10]!
  1000243e4  mov     x29, sp
  1000243e8  sub     sp, sp, #0x10
  1000243ec  str     x0, [sp]
  1000243f0  adrp    x8, #0x10041e000
  1000243f4  ldr     x8, [x8, #0xc58]
  1000243f8  str     x8, [sp, #8]
  1000243fc  adrp    x8, #0x100417000
  100024400  nop
  100024404  ldr     x1, [x8, #0x178]
  100024408  mov     x0, sp
  10002440c  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100024410  mov     sp, x29
  100024414  ldp     x29, x30, [sp], #0x10
  100024418  ret

; ======================================================================
; -[ADButtonWithSwipe awakeFromNib]
; address 0x10002441c  size 96  kind objc
; ======================================================================
  10002441c  stp     x20, x19, [sp, #-0x20]!
  100024420  stp     x29, x30, [sp, #0x10]
  100024424  add     x29, sp, #0x10
  100024428  mov     x19, x0
  10002442c  adrp    x8, #0x100417000
  100024430  nop
  100024434  ldr     x1, [x8, #0xbb8]
  100024438  bl      _objc_msgSend                            ; [self initGestureRecognizers]
  10002443c  adrp    x8, #0x100417000
  100024440  nop
  100024444  ldr     x1, [x8, #0xbc0]
  100024448  mov     w2, #1
  10002444c  mov     x0, x19
  100024450  bl      _objc_msgSend                            ; [self setIsAccessibilityElement:1]
  100024454  adrp    x8, #0x1003b0000
  100024458  ldr     x8, [x8, #0xc8]                          ; _UIAccessibilityTraitAllowsDirectInteraction
  10002445c  ldr     x2, [x8]                                 ; x2 = _UIAccessibilityTraitAllowsDirectInteraction[+0x0]
  100024460  adrp    x8, #0x100417000
  100024464  nop
  100024468  ldr     x1, [x8, #0xbc8]
  10002446c  mov     x0, x19
  100024470  ldp     x29, x30, [sp, #0x10]
  100024474  ldp     x20, x19, [sp], #0x20
  100024478  b       _objc_msgSend                            ; [self setAccessibilityTraits:_UIAccessibilityTraitAllowsDirectInteraction[+0x0]]

; ======================================================================
; -[ADButtonWithSwipe setWeaponManager:]
; address 0x10002447c  size 20  kind objc
; ======================================================================
  10002447c  adrp    x8, #0x10041f000
  100024480  ldrsw   x8, [x8, #0x704]                         ; ivar offset ADButtonWithSwipe._weaponManager (+0xc0)
  100024484  add     x0, x0, x8
  100024488  mov     x1, x2
  10002448c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADButtonWithSwipe initGestureRecognizers]
; address 0x100024490  size 1188  kind objc
; ======================================================================
  100024490  stp     x28, x27, [sp, #-0x60]!
  100024494  stp     x26, x25, [sp, #0x10]
  100024498  stp     x24, x23, [sp, #0x20]
  10002449c  stp     x22, x21, [sp, #0x30]
  1000244a0  stp     x20, x19, [sp, #0x40]
  1000244a4  stp     x29, x30, [sp, #0x50]
  1000244a8  add     x29, sp, #0x50
  1000244ac  sub     sp, sp, #0x100
  1000244b0  mov     x19, x0
  1000244b4  adrp    x8, #0x1003b0000
  1000244b8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000244bc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000244c0  stur    x8, [x29, #-0x58]
  1000244c4  adrp    x8, #0x10041e000
  1000244c8  ldr     x0, [x8, #0xb8]                          ; class UIPanGestureRecognizer
  1000244cc  adrp    x8, #0x100416000
  1000244d0  nop
  1000244d4  ldr     x20, [x8, #0xac8]
  1000244d8  mov     x1, x20
  1000244dc  bl      _objc_msgSend                            ; [UIPanGestureRecognizer alloc]
  1000244e0  adrp    x8, #0x100417000
  1000244e4  nop
  1000244e8  ldr     x3, [x8, #0xbd0]
  1000244ec  adrp    x8, #0x100417000
  1000244f0  nop
  1000244f4  ldr     x21, [x8, #0x638]
  1000244f8  mov     x1, x21
  1000244fc  mov     x2, x19
  100024500  bl      _objc_msgSend                            ; [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan)]
  100024504  adrp    x8, #0x10041f000
  100024508  ldrsw   x24, [x8, #0x708]                        ; ivar offset ADButtonWithSwipe.pan (+0x98)
  10002450c  ldr     x8, [x19, x24]                           ; x8 = self->pan
  100024510  str     x0, [x19, x24]                           ; self->pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan)]
  100024514  mov     x0, x8
  100024518  bl      _objc_release
  10002451c  ldr     x0, [x19, x24]                           ; x0 = self->pan
  100024520  adrp    x8, #0x100417000
  100024524  nop
  100024528  ldr     x1, [x8, #0xbd8]
  10002452c  mov     w2, #1
  100024530  bl      _objc_msgSend                            ; [self->pan setMaximumNumberOfTouches:1]
  100024534  ldr     x0, [x19, x24]                           ; x0 = self->pan
  100024538  adrp    x8, #0x100417000
  10002453c  nop
  100024540  ldr     x22, [x8, #0xbe0]
  100024544  mov     w2, #0
  100024548  mov     x1, x22
  10002454c  bl      _objc_msgSend                            ; [self->pan setDelaysTouchesBegan:0]
  100024550  ldr     x0, [x19, x24]                           ; x0 = self->pan
  100024554  adrp    x8, #0x100417000
  100024558  nop
  10002455c  ldr     x23, [x8, #0xbe8]
  100024560  mov     w2, #1
  100024564  mov     x1, x23
  100024568  bl      _objc_msgSend                            ; [self->pan setCancelsTouchesInView:1]
  10002456c  ldr     x0, [x19, x24]                           ; x0 = self->pan
  100024570  adrp    x8, #0x100417000
  100024574  nop
  100024578  ldr     x1, [x8, #0x7d8]
  10002457c  mov     x2, x19
  100024580  bl      _objc_msgSend                            ; [self->pan setDelegate:self]
  100024584  ldr     x2, [x19, x24]                           ; x2 = self->pan
  100024588  adrp    x8, #0x100417000
  10002458c  nop
  100024590  ldr     x24, [x8, #0x668]
  100024594  mov     x0, x19
  100024598  mov     x1, x24
  10002459c  bl      _objc_msgSend                            ; [self addGestureRecognizer:self->pan]
  1000245a0  adrp    x8, #0x10041e000
  1000245a4  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  1000245a8  mov     x1, x20
  1000245ac  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  1000245b0  adrp    x8, #0x100417000
  1000245b4  nop
  1000245b8  ldr     x3, [x8, #0xbf0]
  1000245bc  mov     x1, x21
  1000245c0  mov     x2, x19
  1000245c4  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTripleTap)]
  1000245c8  adrp    x8, #0x10041f000
  1000245cc  ldrsw   x20, [x8, #0x70c]                        ; ivar offset ADButtonWithSwipe.tripleTap (+0xa0)
  1000245d0  ldr     x8, [x19, x20]                           ; x8 = self->tripleTap
  1000245d4  str     x0, [x19, x20]                           ; self->tripleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTripleTap)]
  1000245d8  mov     x0, x8
  1000245dc  bl      _objc_release
  1000245e0  ldr     x0, [x19, x20]                           ; x0 = self->tripleTap
  1000245e4  adrp    x8, #0x100417000
  1000245e8  nop
  1000245ec  ldr     x1, [x8, #0xbf8]
  1000245f0  mov     w2, #3
  1000245f4  bl      _objc_msgSend                            ; [self->tripleTap setNumberOfTouchesRequired:3]
  1000245f8  ldr     x0, [x19, x20]                           ; x0 = self->tripleTap
  1000245fc  mov     w2, #0
  100024600  mov     x1, x22
  100024604  bl      _objc_msgSend                            ; [self->tripleTap setDelaysTouchesBegan:0]
  100024608  ldr     x0, [x19, x20]                           ; x0 = self->tripleTap
  10002460c  mov     w2, #1
  100024610  mov     x1, x23
  100024614  bl      _objc_msgSend                            ; [self->tripleTap setCancelsTouchesInView:1]
  100024618  ldr     x2, [x19, x20]                           ; x2 = self->tripleTap
  10002461c  mov     x0, x19
  100024620  mov     x1, x24
  100024624  bl      _objc_msgSend                            ; [self addGestureRecognizer:self->tripleTap]
  100024628  stp     xzr, xzr, [sp, #0x68]
  10002462c  stp     xzr, xzr, [sp, #0x58]
  100024630  stp     xzr, xzr, [sp, #0x48]
  100024634  stp     xzr, xzr, [sp, #0x38]
  100024638  adrp    x8, #0x100417000
  10002463c  nop
  100024640  ldr     x1, [x8, #0xc00]
  100024644  mov     x0, x19
  100024648  bl      _objc_msgSend                            ; [self allTargets]
  10002464c  mov     x29, x29
  100024650  bl      _objc_retainAutoreleasedReturnValue
  100024654  str     x0, [sp, #0x30]
  100024658  adrp    x8, #0x100416000
  10002465c  nop
  100024660  ldr     x1, [x8, #0xe00]
  100024664  str     x1, [sp, #8]
  100024668  add     x2, sp, #0x38
  10002466c  add     x3, sp, #0x78
  100024670  mov     w4, #0x10
  100024674  bl      _objc_msgSend                            ; [[self allTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100024678  mov     x22, x0
  10002467c  cbz     x22, loc_100024828                       ; if ([[self allTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  100024680  ldr     x8, [sp, #0x48]
  100024684  ldr     x28, [x8]
  100024688  adrp    x8, #0x100417000
  10002468c  nop
  100024690  ldr     x23, [x8, #0x2e0]
  100024694  adrp    x8, #0x100417000
  100024698  nop
  10002469c  ldr     x24, [x8, #0x3b8]
  1000246a0  adrp    x8, #0x100417000
  1000246a4  nop
  1000246a8  ldr     x27, [x8, #0xc08]
  1000246ac  adrp    x8, #0x100417000
  1000246b0  nop
  1000246b4  ldr     x8, [x8, #0xc10]
  1000246b8  str     x8, [sp, #0x20]
  1000246bc  adrp    x8, #0x100416000
  1000246c0  nop
  1000246c4  ldr     x8, [x8, #0xc30]
  1000246c8  str     x8, [sp, #0x18]
  1000246cc  adrp    x8, #0x10041f000
  1000246d0  ldrsw   x25, [x8, #0x710]                        ; ivar offset ADButtonWithSwipe.selector (+0xa8)
  1000246d4  adrp    x8, #0x100417000
  1000246d8  nop
  1000246dc  ldr     x8, [x8, #0xc18]
  1000246e0  str     x8, [sp, #0x10]
loc_1000246e4:
  1000246e4  str     x22, [sp, #0x28]
  1000246e8  mov     x20, #0
loc_1000246ec:
  1000246ec  ldr     x8, [sp, #0x48]
  1000246f0  ldr     x8, [x8]
  1000246f4  cmp     x8, x28
  1000246f8  b.eq    loc_100024704                            ; if (x8 == x28)
  1000246fc  ldr     x0, [sp, #0x30]
  100024700  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allTargets])
loc_100024704:
  100024704  ldr     x8, [sp, #0x40]
  100024708  ldr     x21, [x8, x20, lsl #3]
  10002470c  adrp    x8, #0x10041e000
  100024710  ldr     x0, [x8, #0xc0]                          ; class ADGameplayViewController
  100024714  mov     x1, x23
  100024718  bl      _objc_msgSend                            ; [ADGameplayViewController class]
  10002471c  mov     x2, x0
  100024720  mov     x0, x21
  100024724  mov     x1, x24
  100024728  bl      _objc_msgSend                            ; [x0 isKindOfClass:[ADGameplayViewController class]]
  10002472c  cbz     w0, loc_1000247fc                        ; if ([x0 isKindOfClass:[ADGameplayViewController class]] == 0)
  100024730  mov     w3, #1
  100024734  mov     x0, x19
  100024738  mov     x1, x27
  10002473c  mov     x2, x21
  100024740  bl      _objc_msgSend                            ; [self actionsForTarget:x2 forControlEvent:1]
  100024744  mov     x29, x29
  100024748  bl      _objc_retainAutoreleasedReturnValue
  10002474c  mov     x26, x0
  100024750  bl      _objc_release
  100024754  cbz     x26, loc_1000247fc                       ; if ([self actionsForTarget:x2 forControlEvent:1] == 0)
  100024758  mov     x0, x19
  10002475c  ldr     x1, [sp, #0x20]
  100024760  mov     x2, x21
  100024764  bl      _objc_msgSend                            ; [self setGameplayViewController:x2]
  100024768  mov     w3, #1
  10002476c  mov     x0, x19
  100024770  mov     x1, x27
  100024774  mov     x2, x21
  100024778  bl      _objc_msgSend                            ; [self actionsForTarget:x2 forControlEvent:1]
  10002477c  mov     x29, x29
  100024780  bl      _objc_retainAutoreleasedReturnValue
  100024784  mov     x26, x0
  100024788  mov     x2, #0
  10002478c  ldr     x1, [sp, #0x18]
  100024790  bl      _objc_msgSend                            ; [[self actionsForTarget:x2 forControlEvent:1] objectAtIndex:0]
  100024794  mov     x22, x19
  100024798  mov     x19, x24
  10002479c  mov     x24, x23
  1000247a0  mov     x23, x28
  1000247a4  mov     x28, x27
  1000247a8  mov     x29, x29
  1000247ac  bl      _objc_retainAutoreleasedReturnValue
  1000247b0  mov     x27, x0
  1000247b4  bl      _NSSelectorFromString                    ; NSSelectorFromString([[self actionsForTarget:x2 forControlEvent:1] objectAtIndex:0])
  1000247b8  str     x0, [x22, x25]                           ; self->selector = NSSelectorFromString([[self actionsForTarget:x2 forControlEvent:1] objectAtIndex:0])
  1000247bc  mov     x0, x27
  1000247c0  bl      _objc_release
  1000247c4  mov     x0, x26
  1000247c8  bl      _objc_release
  1000247cc  ldr     x3, [x22, x25]                           ; x3 = self->selector
  1000247d0  mov     w4, #1
  1000247d4  mov     x0, x22
  1000247d8  ldr     x1, [sp, #0x10]
  1000247dc  mov     x2, x21
  1000247e0  bl      _objc_msgSend                            ; [self removeTarget:x2 action:self->selector forControlEvents:1]
  1000247e4  mov     x27, x28
  1000247e8  mov     x28, x23
  1000247ec  mov     x23, x24
  1000247f0  mov     x24, x19
  1000247f4  mov     x19, x22
  1000247f8  ldr     x22, [sp, #0x28]
loc_1000247fc:
  1000247fc  add     x20, x20, #1
  100024800  cmp     x20, x22
  100024804  b.lo    loc_1000246ec                            ; if ((x20 + 1) <u [[self allTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  100024808  add     x2, sp, #0x38
  10002480c  add     x3, sp, #0x78
  100024810  mov     w4, #0x10
  100024814  ldr     x0, [sp, #0x30]
  100024818  ldr     x1, [sp, #8]
  10002481c  bl      _objc_msgSend                            ; [[self allTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100024820  mov     x22, x0
  100024824  cbnz    x22, loc_1000246e4                       ; if ([[self allTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_100024828:
  100024828  ldr     x0, [sp, #0x30]
  10002482c  bl      _objc_release
  100024830  adrp    x8, #0x100417000
  100024834  nop
  100024838  ldr     x3, [x8, #0xc20]
  10002483c  adrp    x8, #0x100417000
  100024840  nop
  100024844  ldr     x20, [x8, #0x7d0]
  100024848  mov     w4, #1
  10002484c  mov     x0, x19
  100024850  mov     x1, x20
  100024854  mov     x2, x19
  100024858  bl      _objc_msgSend                            ; [self addTarget:self action:@selector(touchedDown) forControlEvents:1]
  10002485c  adrp    x8, #0x100417000
  100024860  nop
  100024864  ldr     x3, [x8, #0xc28]
  100024868  mov     w4, #0x40
  10002486c  mov     x0, x19
  100024870  mov     x1, x20
  100024874  mov     x2, x19
  100024878  bl      _objc_msgSend                            ; [self addTarget:self action:@selector(touchedUp) forControlEvents:64]
  10002487c  adrp    x8, #0x100417000
  100024880  nop
  100024884  ldr     x3, [x8, #0xc30]
  100024888  mov     w4, #0x20
  10002488c  mov     x0, x19
  100024890  mov     x1, x20
  100024894  mov     x2, x19
  100024898  bl      _objc_msgSend                            ; [self addTarget:self action:@selector(touchDragExit) forControlEvents:32]
  10002489c  adrp    x8, #0x100417000
  1000248a0  nop
  1000248a4  ldr     x3, [x8, #0xc38]
  1000248a8  mov     w4, #8
  1000248ac  mov     x0, x19
  1000248b0  mov     x1, x20
  1000248b4  mov     x2, x19
  1000248b8  bl      _objc_msgSend                            ; [self addTarget:self action:@selector(touchDragOutside) forControlEvents:8]
  1000248bc  ldur    x8, [x29, #-0x58]
  1000248c0  adrp    x9, #0x1003b0000
  1000248c4  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000248c8  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000248cc  sub     x8, x9, x8
  1000248d0  cbnz    x8, loc_1000248f4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000248d4  sub     sp, x29, #0x50
  1000248d8  ldp     x29, x30, [sp, #0x50]
  1000248dc  ldp     x20, x19, [sp, #0x40]
  1000248e0  ldp     x22, x21, [sp, #0x30]
  1000248e4  ldp     x24, x23, [sp, #0x20]
  1000248e8  ldp     x26, x25, [sp, #0x10]
  1000248ec  ldp     x28, x27, [sp], #0x60
  1000248f0  ret
loc_1000248f4:
  1000248f4  bl      ___stack_chk_fail                        ; stack_chk_fail([self addTarget:self action:@selector(touchDragOutside) forControlEvents:8])
loc_1000248f8:
  1000248f8  mov     x19, x0
loc_1000248fc:
  1000248fc  ldr     x0, [sp, #0x30]
  100024900  bl      _objc_release
  100024904  mov     x0, x19
  100024908  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002490c  mov     x19, x0
  100024910  b       loc_100024920
  100024914  mov     x19, x0
  100024918  mov     x0, x27
  10002491c  bl      _objc_release
loc_100024920:
  100024920  mov     x0, x26
  100024924  bl      _objc_release
  100024928  b       loc_1000248fc
  10002492c  b       loc_1000248f8
  100024930  b       loc_1000248f8

; ======================================================================
; -[ADButtonWithSwipe gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]
; address 0x100024934  size 8  kind objc
; ======================================================================
  100024934  mov     w0, #1
  100024938  ret

; ======================================================================
; -[ADButtonWithSwipe update:]
; address 0x10002493c  size 952  kind objc
; ======================================================================
  10002493c  stp     d9, d8, [sp, #-0x70]!
  100024940  stp     x28, x27, [sp, #0x10]
  100024944  stp     x26, x25, [sp, #0x20]
  100024948  stp     x24, x23, [sp, #0x30]
  10002494c  stp     x22, x21, [sp, #0x40]
  100024950  stp     x20, x19, [sp, #0x50]
  100024954  stp     x29, x30, [sp, #0x60]
  100024958  add     x29, sp, #0x60
  10002495c  sub     sp, sp, #0x20
  100024960  mov     v8.16b, v0.16b
  100024964  mov     x19, x0
  100024968  adrp    x8, #0x100417000
  10002496c  nop
  100024970  ldr     x1, [x8, #0xc40]
  100024974  bl      _objc_msgSend                            ; [self buttonIsDown]
  100024978  adrp    x8, #0x10041f000
  10002497c  ldrsw   x8, [x8, #0x714]                         ; ivar offset ADButtonWithSwipe.buttonPressedDuration (+0x90)
  100024980  cbz     w0, loc_100024a00                        ; if ([self buttonIsDown] == 0)
  100024984  ldr     s0, [x19, x8]                            ; s0 = self->buttonPressedDuration
  100024988  fadd    s0, s0, s8
  10002498c  str     s0, [x19, x8]                            ; self->buttonPressedDuration = (self->buttonPressedDuration + arg1)
  100024990  fcvt    d0, s0
  100024994  adrp    x8, #0x100181000
  100024998  ldr     d1, [x8, #0xab8]                         ; d1 = 0.28
  10002499c  fcmp    d0, d1
  1000249a0  b.le    loc_100024a04                            ; if ((self->buttonPressedDuration + arg1) <= (or unordered) 0.28)
  1000249a4  fcvt    d2, s8
  1000249a8  fadd    d1, d2, d1
  1000249ac  fcmp    d0, d1
  1000249b0  b.hi    loc_100024a04                            ; if ((self->buttonPressedDuration + arg1) > (or unordered) (arg1 + 0.28))
  1000249b4  adrp    x8, #0x10041f000
  1000249b8  ldrsw   x8, [x8, #0x718]                         ; ivar offset ADButtonWithSwipe.hasSwiped (+0x8c)
  1000249bc  ldrb    w8, [x19, x8]                            ; w8 = self->hasSwiped
  1000249c0  cbnz    w8, loc_100024a04                        ; if (self->hasSwiped != 0)
  1000249c4  adrp    x8, #0x100416000
  1000249c8  nop
  1000249cc  ldr     x1, [x8, #0xc88]
  1000249d0  mov     x0, x19
  1000249d4  bl      _objc_msgSend                            ; [self weaponManager]
  1000249d8  mov     x29, x29
  1000249dc  bl      _objc_retainAutoreleasedReturnValue
  1000249e0  mov     x20, x0
  1000249e4  adrp    x8, #0x100417000
  1000249e8  nop
  1000249ec  ldr     x1, [x8, #0xc48]
  1000249f0  bl      _objc_msgSend                            ; [[self weaponManager] continuousStart]
  1000249f4  mov     x0, x20
  1000249f8  bl      _objc_release
  1000249fc  b       loc_100024a04
loc_100024a00:
  100024a00  str     wzr, [x19, x8]                           ; self->buttonPressedDuration = 0
loc_100024a04:
  100024a04  adrp    x8, #0x100416000
  100024a08  nop
  100024a0c  ldr     x22, [x8, #0xc88]
  100024a10  mov     x0, x19
  100024a14  mov     x1, x22
  100024a18  bl      _objc_msgSend                            ; [self weaponManager]
  100024a1c  mov     x29, x29
  100024a20  bl      _objc_retainAutoreleasedReturnValue
  100024a24  mov     x20, x0
  100024a28  adrp    x8, #0x100417000
  100024a2c  nop
  100024a30  ldr     x23, [x8, #0xc50]
  100024a34  mov     x1, x23
  100024a38  bl      _objc_msgSend                            ; [[self weaponManager] currentWeapon]
  100024a3c  mov     x29, x29
  100024a40  bl      _objc_retainAutoreleasedReturnValue
  100024a44  mov     x21, x0
  100024a48  adrp    x8, #0x100417000
  100024a4c  nop
  100024a50  ldr     x24, [x8, #0x450]
  100024a54  mov     x1, x24
  100024a58  bl      _objc_msgSend                            ; [[[self weaponManager] currentWeapon] name]
  100024a5c  mov     x29, x29
  100024a60  bl      _objc_retainAutoreleasedReturnValue
  100024a64  mov     x25, x0
  100024a68  adrp    x8, #0x100417000
  100024a6c  nop
  100024a70  ldr     x1, [x8, #0xc58]
  100024a74  bl      _objc_msgSend                            ; [[[[self weaponManager] currentWeapon] name] length]
  100024a78  cmp     x0, #2
  100024a7c  b.lo    loc_100024b3c                            ; if ([[[[self weaponManager] currentWeapon] name] length] <u 2)
  100024a80  mov     x0, x19
  100024a84  mov     x1, x22
  100024a88  bl      _objc_msgSend                            ; [self weaponManager]
  100024a8c  mov     x29, x29
  100024a90  bl      _objc_retainAutoreleasedReturnValue
  100024a94  mov     x26, x0
  100024a98  mov     x1, x23
  100024a9c  bl      _objc_msgSend                            ; [[self weaponManager] currentWeapon]
  100024aa0  stp     x26, x20, [sp, #0x10]
  100024aa4  mov     x29, x29
  100024aa8  bl      _objc_retainAutoreleasedReturnValue
  100024aac  mov     x27, x0
  100024ab0  mov     x1, x24
  100024ab4  bl      _objc_msgSend                            ; [[[self weaponManager] currentWeapon] name]
  100024ab8  mov     x29, x29
  100024abc  bl      _objc_retainAutoreleasedReturnValue
  100024ac0  mov     x20, x0
  100024ac4  adrp    x8, #0x10041f000
  100024ac8  ldrsw   x26, [x8, #0x71c]                        ; ivar offset ADButtonWithSwipe.currentImage (+0xb0)
  100024acc  ldr     x2, [x19, x26]                           ; x2 = self->currentImage
  100024ad0  adrp    x8, #0x100416000
  100024ad4  nop
  100024ad8  ldr     x1, [x8, #0xf58]
  100024adc  bl      _objc_msgSend                            ; [[[[self weaponManager] currentWeapon] name] isEqualToString:self->currentImage]
  100024ae0  mov     x28, x0
  100024ae4  mov     x0, x20
  100024ae8  bl      _objc_release
  100024aec  mov     x0, x27
  100024af0  bl      _objc_release
  100024af4  ldr     x0, [sp, #0x10]
  100024af8  bl      _objc_release
  100024afc  mov     x0, x25
  100024b00  bl      _objc_release
  100024b04  mov     x0, x21
  100024b08  bl      _objc_release
  100024b0c  ldr     x0, [sp, #0x18]
  100024b10  bl      _objc_release
  100024b14  tbz     w28, #0, loc_100024b48                   ; if (!([[[[self weaponManager] currentWeapon] name] isEqualToString:self->currentImage] & 1))
  100024b18  sub     sp, x29, #0x60
  100024b1c  ldp     x29, x30, [sp, #0x60]
  100024b20  ldp     x20, x19, [sp, #0x50]
  100024b24  ldp     x22, x21, [sp, #0x40]
  100024b28  ldp     x24, x23, [sp, #0x30]
  100024b2c  ldp     x26, x25, [sp, #0x20]
  100024b30  ldp     x28, x27, [sp, #0x10]
  100024b34  ldp     d9, d8, [sp], #0x70
  100024b38  ret
loc_100024b3c:
  100024b3c  mov     x0, x25
  100024b40  bl      _objc_release
  100024b44  b       loc_100024c20
loc_100024b48:
  100024b48  mov     x0, x19
  100024b4c  mov     x1, x22
  100024b50  bl      _objc_msgSend                            ; [self weaponManager]
  100024b54  mov     x29, x29
  100024b58  bl      _objc_retainAutoreleasedReturnValue
  100024b5c  mov     x20, x0
  100024b60  mov     x1, x23
  100024b64  bl      _objc_msgSend                            ; [[self weaponManager] currentWeapon]
  100024b68  mov     x29, x29
  100024b6c  bl      _objc_retainAutoreleasedReturnValue
  100024b70  mov     x21, x0
  100024b74  mov     x1, x24
  100024b78  bl      _objc_msgSend                            ; [[[self weaponManager] currentWeapon] name]
  100024b7c  mov     x29, x29
  100024b80  bl      _objc_retainAutoreleasedReturnValue
  100024b84  ldr     x8, [x19, x26]                           ; x8 = self->currentImage
  100024b88  str     x0, [x19, x26]                           ; self->currentImage = [[[self weaponManager] currentWeapon] name]
  100024b8c  mov     x0, x8
  100024b90  bl      _objc_release
  100024b94  mov     x0, x21
  100024b98  bl      _objc_release
  100024b9c  mov     x0, x20
  100024ba0  bl      _objc_release
  100024ba4  adrp    x8, #0x10041d000
  100024ba8  ldr     x21, [x8, #0xf10]                        ; class UIImage
  100024bac  nop
  100024bb0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100024bb4  ldr     x8, [x19, x26]                           ; x8 = self->currentImage
  100024bb8  adrp    x9, #0x100416000
  100024bbc  nop
  100024bc0  ldr     x1, [x9, #0xee8]
  100024bc4  str     x8, [sp]
  100024bc8  adrp    x2, #0x1003bb000
  100024bcc  add     x2, x2, #0x550                           ; @"%@_icon_game"
  100024bd0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon_game", self->currentImage]
  100024bd4  mov     x29, x29
  100024bd8  bl      _objc_retainAutoreleasedReturnValue
  100024bdc  mov     x20, x0
  100024be0  adrp    x8, #0x100416000
  100024be4  nop
  100024be8  ldr     x1, [x8, #0xd40]
  100024bec  mov     x0, x21
  100024bf0  mov     x2, x20
  100024bf4  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon_game", self->currentImage]]
  100024bf8  mov     x29, x29
  100024bfc  bl      _objc_retainAutoreleasedReturnValue
  100024c00  mov     x21, x0
  100024c04  adrp    x8, #0x100416000
  100024c08  nop
  100024c0c  ldr     x1, [x8, #0xce8]
  100024c10  mov     x3, #0
  100024c14  mov     x0, x19
  100024c18  mov     x2, x21
  100024c1c  bl      _objc_msgSend                            ; [self setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon_game", self->currentImage]] forState:0]
loc_100024c20:
  100024c20  mov     x0, x21
  100024c24  bl      _objc_release
  100024c28  mov     x0, x20
  100024c2c  sub     sp, x29, #0x60
  100024c30  ldp     x29, x30, [sp, #0x60]
  100024c34  ldp     x20, x19, [sp, #0x50]
  100024c38  ldp     x22, x21, [sp, #0x40]
  100024c3c  ldp     x24, x23, [sp, #0x30]
  100024c40  ldp     x26, x25, [sp, #0x20]
  100024c44  ldp     x28, x27, [sp, #0x10]
  100024c48  ldp     d9, d8, [sp], #0x70
  100024c4c  b       _objc_release
  100024c50  str     x20, [sp, #0x18]
  100024c54  mov     x19, x0
  100024c58  b       loc_100024ca4
  100024c5c  str     x20, [sp, #0x18]
  100024c60  mov     x19, x0
  100024c64  b       loc_100024cb4
  100024c68  str     x20, [sp, #0x18]
  100024c6c  mov     x19, x0
  100024c70  b       loc_100024cac
  100024c74  stp     x26, x20, [sp, #0x10]
  100024c78  mov     x19, x0
  100024c7c  b       loc_100024c9c
  100024c80  mov     x19, x0
  100024c84  b       loc_100024c94
  100024c88  mov     x19, x0
  100024c8c  mov     x0, x20
  100024c90  bl      _objc_release
loc_100024c94:
  100024c94  mov     x0, x27
  100024c98  bl      _objc_release
loc_100024c9c:
  100024c9c  ldr     x0, [sp, #0x10]
  100024ca0  bl      _objc_release
loc_100024ca4:
  100024ca4  mov     x0, x25
  100024ca8  bl      _objc_release
loc_100024cac:
  100024cac  mov     x0, x21
  100024cb0  bl      _objc_release
loc_100024cb4:
  100024cb4  ldr     x0, [sp, #0x18]
  100024cb8  b       loc_100024ce0
  100024cbc  mov     x19, x0
  100024cc0  b       loc_100024cdc
  100024cc4  b       loc_100024cd0
  100024cc8  mov     x19, x0
  100024ccc  b       loc_100024cdc
loc_100024cd0:
  100024cd0  mov     x19, x0
  100024cd4  mov     x0, x21
  100024cd8  bl      _objc_release
loc_100024cdc:
  100024cdc  mov     x0, x20
loc_100024ce0:
  100024ce0  bl      _objc_release
  100024ce4  mov     x0, x19
  100024ce8  bl      __Unwind_Resume                          ; Unwind_Resume()
  100024cec  mov     x19, x0
  100024cf0  b       loc_100024cdc

; ======================================================================
; -[ADButtonWithSwipe setButtonIsDown:]
; address 0x100024cf4  size 408  kind objc
; ======================================================================
  100024cf4  stp     x22, x21, [sp, #-0x30]!
  100024cf8  stp     x20, x19, [sp, #0x10]
  100024cfc  stp     x29, x30, [sp, #0x20]
  100024d00  add     x29, sp, #0x20
  100024d04  mov     x19, x0
  100024d08  adrp    x8, #0x10041f000
  100024d0c  ldrsw   x8, [x8, #0x720]                         ; ivar offset ADButtonWithSwipe._buttonIsDown (+0xb8)
  100024d10  strb    w2, [x19, x8]                            ; self->_buttonIsDown = arg1
  100024d14  adrp    x8, #0x10041f000
  100024d18  ldrsw   x8, [x8, #0x718]                         ; ivar offset ADButtonWithSwipe.hasSwiped (+0x8c)
  100024d1c  cbz     w2, loc_100024d28                        ; if (arg1 == 0)
  100024d20  strb    wzr, [x19, x8]                           ; self->hasSwiped = 0
  100024d24  b       loc_100024e5c
loc_100024d28:
  100024d28  ldrb    w8, [x19, x8]                            ; w8 = self->hasSwiped
  100024d2c  cbnz    w8, loc_100024e50                        ; if (self->hasSwiped != 0)
  100024d30  adrp    x8, #0x10041f000
  100024d34  ldrsw   x8, [x8, #0x714]                         ; ivar offset ADButtonWithSwipe.buttonPressedDuration (+0x90)
  100024d38  ldr     s0, [x19, x8]                            ; s0 = self->buttonPressedDuration
  100024d3c  fcvt    d0, s0
  100024d40  adrp    x8, #0x100181000
  100024d44  ldr     d1, [x8, #0xab8]                         ; d1 = 0.28
  100024d48  fcmp    d0, d1
  100024d4c  b.pl    loc_100024e50                            ; if (self->buttonPressedDuration >= (or unordered) 0.28)
  100024d50  adrp    x8, #0x100416000
  100024d54  nop
  100024d58  ldr     x20, [x8, #0xc88]
  100024d5c  mov     x0, x19
  100024d60  mov     x1, x20
  100024d64  bl      _objc_msgSend                            ; [self weaponManager]
  100024d68  mov     x29, x29
  100024d6c  bl      _objc_retainAutoreleasedReturnValue
  100024d70  mov     x21, x0
  100024d74  bl      _objc_release
  100024d78  cbz     x21, loc_100024dac                       ; if ([self weaponManager] == 0)
  100024d7c  mov     x0, x19
  100024d80  mov     x1, x20
  100024d84  bl      _objc_msgSend                            ; [self weaponManager]
  100024d88  mov     x29, x29
  100024d8c  bl      _objc_retainAutoreleasedReturnValue
  100024d90  mov     x20, x0
  100024d94  adrp    x8, #0x100417000
  100024d98  nop
  100024d9c  ldr     x1, [x8, #0xc60]
  100024da0  bl      _objc_msgSend                            ; [[self weaponManager] weaponSingleShot]
  100024da4  b       loc_100024e48
  100024da8  b       loc_100024e78
loc_100024dac:
  100024dac  adrp    x8, #0x100417000
  100024db0  nop
  100024db4  ldr     x20, [x8, #0xac0]
  100024db8  mov     x0, x19
  100024dbc  mov     x1, x20
  100024dc0  bl      _objc_msgSend                            ; [self gameplayViewController]
  100024dc4  mov     x29, x29
  100024dc8  bl      _objc_retainAutoreleasedReturnValue
  100024dcc  mov     x21, x0
  100024dd0  adrp    x8, #0x10041e000
  100024dd4  ldr     x0, [x8, #0xc8]                          ; class ADOpenerGameplayViewController
  100024dd8  adrp    x8, #0x100417000
  100024ddc  nop
  100024de0  ldr     x1, [x8, #0x2e0]
  100024de4  bl      _objc_msgSend                            ; [ADOpenerGameplayViewController class]
  100024de8  mov     x2, x0
  100024dec  adrp    x8, #0x100417000
  100024df0  nop
  100024df4  ldr     x1, [x8, #0x3b8]
  100024df8  mov     x0, x21
  100024dfc  bl      _objc_msgSend                            ; [[self gameplayViewController] isKindOfClass:[ADOpenerGameplayViewController class]]
  100024e00  mov     x22, x0
  100024e04  mov     x0, x21
  100024e08  bl      _objc_release
  100024e0c  tbnz    w22, #0, loc_100024e50                   ; if (([[self gameplayViewController] isKindOfClass:[ADOpenerGameplayViewController class]] & 1))
  100024e10  mov     x0, x19
  100024e14  mov     x1, x20
  100024e18  bl      _objc_msgSend                            ; [self gameplayViewController]
  100024e1c  mov     x29, x29
  100024e20  bl      _objc_retainAutoreleasedReturnValue
  100024e24  mov     x20, x0
  100024e28  adrp    x8, #0x10041f000
  100024e2c  ldrsw   x8, [x8, #0x710]                         ; ivar offset ADButtonWithSwipe.selector (+0xa8)
  100024e30  ldr     x2, [x19, x8]                            ; x2 = self->selector
  100024e34  adrp    x8, #0x100417000
  100024e38  nop
  100024e3c  ldr     x1, [x8, #0xa70]
  100024e40  mov     x3, x19
  100024e44  bl      _objc_msgSend                            ; [[self gameplayViewController] performSelector:self->selector withObject:self]
loc_100024e48:
  100024e48  mov     x0, x20
  100024e4c  bl      _objc_release
loc_100024e50:
  100024e50  adrp    x8, #0x10041f000
  100024e54  ldrsw   x8, [x8, #0x714]                         ; ivar offset ADButtonWithSwipe.buttonPressedDuration (+0x90)
  100024e58  str     wzr, [x19, x8]                           ; self->buttonPressedDuration = 0
loc_100024e5c:
  100024e5c  ldp     x29, x30, [sp, #0x20]
  100024e60  ldp     x20, x19, [sp, #0x10]
  100024e64  ldp     x22, x21, [sp], #0x30
  100024e68  ret
  100024e6c  mov     x19, x0
  100024e70  mov     x0, x21
  100024e74  b       loc_100024e80
loc_100024e78:
  100024e78  mov     x19, x0
  100024e7c  mov     x0, x20
loc_100024e80:
  100024e80  bl      _objc_release
  100024e84  mov     x0, x19
  100024e88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithSwipe touchedDown]
; address 0x100024e8c  size 20  kind objc
; ======================================================================
  100024e8c  adrp    x8, #0x100417000
  100024e90  nop
  100024e94  ldr     x1, [x8, #0xc68]
  100024e98  mov     w2, #1
  100024e9c  b       _objc_msgSend                            ; [self setButtonIsDown:1]

; ======================================================================
; -[ADButtonWithSwipe touchedUp]
; address 0x100024ea0  size 120  kind objc
; ======================================================================
  100024ea0  stp     x20, x19, [sp, #-0x20]!
  100024ea4  stp     x29, x30, [sp, #0x10]
  100024ea8  add     x29, sp, #0x10
  100024eac  mov     x19, x0
  100024eb0  adrp    x8, #0x100417000
  100024eb4  nop
  100024eb8  ldr     x1, [x8, #0xc68]
  100024ebc  mov     w2, #0
  100024ec0  bl      _objc_msgSend                            ; [self setButtonIsDown:0]
  100024ec4  adrp    x8, #0x100416000
  100024ec8  nop
  100024ecc  ldr     x1, [x8, #0xc88]
  100024ed0  mov     x0, x19
  100024ed4  bl      _objc_msgSend                            ; [self weaponManager]
  100024ed8  mov     x29, x29
  100024edc  bl      _objc_retainAutoreleasedReturnValue
  100024ee0  mov     x19, x0
  100024ee4  adrp    x8, #0x100417000
  100024ee8  nop
  100024eec  ldr     x1, [x8, #0xc70]
  100024ef0  bl      _objc_msgSend                            ; [[self weaponManager] continuousStop]
  100024ef4  mov     x0, x19
  100024ef8  ldp     x29, x30, [sp, #0x10]
  100024efc  ldp     x20, x19, [sp], #0x20
  100024f00  b       _objc_release
  100024f04  mov     x20, x0
  100024f08  mov     x0, x19
  100024f0c  bl      _objc_release
  100024f10  mov     x0, x20
  100024f14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithSwipe touchDragOutside]
; address 0x100024f18  size 16  kind objc
; ======================================================================
  100024f18  adrp    x8, #0x100417000
  100024f1c  nop
  100024f20  ldr     x1, [x8, #0xc78]
  100024f24  b       _objc_msgSend                            ; [self touchCanceled]

; ======================================================================
; -[ADButtonWithSwipe touchDragExit]
; address 0x100024f28  size 16  kind objc
; ======================================================================
  100024f28  adrp    x8, #0x100417000
  100024f2c  nop
  100024f30  ldr     x1, [x8, #0xc78]
  100024f34  b       _objc_msgSend                            ; [self touchCanceled]

; ======================================================================
; -[ADButtonWithSwipe touchCanceled]
; address 0x100024f38  size 204  kind objc
; ======================================================================
  100024f38  stp     x20, x19, [sp, #-0x20]!
  100024f3c  stp     x29, x30, [sp, #0x10]
  100024f40  add     x29, sp, #0x10
  100024f44  mov     x19, x0
  100024f48  adrp    x8, #0x10041f000
  100024f4c  ldrsw   x8, [x8, #0x708]                         ; ivar offset ADButtonWithSwipe.pan (+0x98)
  100024f50  ldr     x0, [x19, x8]                            ; x0 = self->pan
  100024f54  adrp    x8, #0x100416000
  100024f58  nop
  100024f5c  ldr     x1, [x8, #0xc60]
  100024f60  bl      _objc_msgSend                            ; [self->pan state]
  100024f64  cmp     x0, #1
  100024f68  b.ne    loc_100024f98                            ; if ([self->pan state] != 1)
  100024f6c  adrp    x8, #0x10041f000
  100024f70  ldrsw   x8, [x8, #0x714]                         ; ivar offset ADButtonWithSwipe.buttonPressedDuration (+0x90)
  100024f74  ldr     s0, [x19, x8]                            ; s0 = self->buttonPressedDuration
  100024f78  fcvt    d0, s0
  100024f7c  adrp    x8, #0x100181000
  100024f80  ldr     d1, [x8, #0xab8]                         ; d1 = 0.28
  100024f84  fcmp    d0, d1
  100024f88  b.pl    loc_100024f98                            ; if (self->buttonPressedDuration >= (or unordered) 0.28)
  100024f8c  ldp     x29, x30, [sp, #0x10]
  100024f90  ldp     x20, x19, [sp], #0x20
  100024f94  ret
loc_100024f98:
  100024f98  adrp    x8, #0x100417000
  100024f9c  nop
  100024fa0  ldr     x1, [x8, #0xc68]
  100024fa4  mov     w2, #0
  100024fa8  mov     x0, x19
  100024fac  bl      _objc_msgSend                            ; [self setButtonIsDown:0]
  100024fb0  adrp    x8, #0x100416000
  100024fb4  nop
  100024fb8  ldr     x1, [x8, #0xc88]
  100024fbc  mov     x0, x19
  100024fc0  bl      _objc_msgSend                            ; [self weaponManager]
  100024fc4  mov     x29, x29
  100024fc8  bl      _objc_retainAutoreleasedReturnValue
  100024fcc  mov     x19, x0
  100024fd0  adrp    x8, #0x100417000
  100024fd4  nop
  100024fd8  ldr     x1, [x8, #0xc70]
  100024fdc  bl      _objc_msgSend                            ; [[self weaponManager] continuousStop]
  100024fe0  mov     x0, x19
  100024fe4  ldp     x29, x30, [sp, #0x10]
  100024fe8  ldp     x20, x19, [sp], #0x20
  100024fec  b       _objc_release
  100024ff0  mov     x20, x0
  100024ff4  mov     x0, x19
  100024ff8  bl      _objc_release
  100024ffc  mov     x0, x20
  100025000  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithSwipe handleSwipeGesture]
; address 0x100025004  size 80  kind objc
; ======================================================================
  100025004  stp     x20, x19, [sp, #-0x20]!
  100025008  stp     x29, x30, [sp, #0x10]
  10002500c  add     x29, sp, #0x10
  100025010  mov     x19, x0
  100025014  adrp    x8, #0x10041f000
  100025018  ldrsw   x8, [x8, #0x718]                         ; ivar offset ADButtonWithSwipe.hasSwiped (+0x8c)
  10002501c  mov     w9, #1
  100025020  strb    w9, [x19, x8]                            ; self->hasSwiped = 1
  100025024  adrp    x8, #0x100417000
  100025028  nop
  10002502c  ldr     x1, [x8, #0xc68]
  100025030  mov     w2, #0
  100025034  bl      _objc_msgSend                            ; [self setButtonIsDown:0]
  100025038  adrp    x8, #0x100417000
  10002503c  nop
  100025040  ldr     x1, [x8, #0xc78]
  100025044  mov     x0, x19
  100025048  ldp     x29, x30, [sp, #0x10]
  10002504c  ldp     x20, x19, [sp], #0x20
  100025050  b       _objc_msgSend                            ; [self touchCanceled]

; ======================================================================
; -[ADButtonWithSwipe handlePan]
; address 0x100025054  size 288  kind objc
; ======================================================================
  100025054  stp     x22, x21, [sp, #-0x30]!
  100025058  stp     x20, x19, [sp, #0x10]
  10002505c  stp     x29, x30, [sp, #0x20]
  100025060  add     x29, sp, #0x20
  100025064  mov     x19, x0
  100025068  adrp    x8, #0x10041d000
  10002506c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100025070  adrp    x8, #0x100416000
  100025074  nop
  100025078  ldr     x1, [x8, #0xc00]
  10002507c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100025080  mov     x29, x29
  100025084  bl      _objc_retainAutoreleasedReturnValue
  100025088  mov     x20, x0
  10002508c  adrp    x8, #0x100417000
  100025090  nop
  100025094  ldr     x1, [x8, #0xc80]
  100025098  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10002509c  mov     x21, x0
  1000250a0  mov     x0, x20
  1000250a4  bl      _objc_release
  1000250a8  cmp     w21, #2
  1000250ac  b.ne    loc_100025108                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  1000250b0  adrp    x8, #0x100417000
  1000250b4  nop
  1000250b8  ldr     x1, [x8, #0xac0]
  1000250bc  mov     x0, x19
  1000250c0  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000250c4  mov     x29, x29
  1000250c8  bl      _objc_retainAutoreleasedReturnValue
  1000250cc  mov     x20, x0
  1000250d0  adrp    x8, #0x10041f000
  1000250d4  ldrsw   x8, [x8, #0x708]                         ; ivar offset ADButtonWithSwipe.pan (+0x98)
  1000250d8  ldr     x2, [x19, x8]                            ; x2 = self->pan
  1000250dc  adrp    x8, #0x100417000
  1000250e0  nop
  1000250e4  ldr     x1, [x8, #0xc88]
  1000250e8  bl      _objc_msgSend                            ; [[self gameplayViewController] panDetected:self->pan]
  1000250ec  mov     x0, x20
  1000250f0  bl      _objc_release
  1000250f4  adrp    x8, #0x10041f000
  1000250f8  ldrsw   x8, [x8, #0x718]                         ; ivar offset ADButtonWithSwipe.hasSwiped (+0x8c)
  1000250fc  mov     w9, #1
  100025100  strb    w9, [x19, x8]                            ; self->hasSwiped = 1
  100025104  b       loc_10002512c
loc_100025108:
  100025108  adrp    x8, #0x10041f000
  10002510c  ldrsw   x8, [x8, #0x708]                         ; ivar offset ADButtonWithSwipe.pan (+0x98)
  100025110  ldr     x0, [x19, x8]                            ; x0 = self->pan
  100025114  adrp    x8, #0x100416000
  100025118  nop
  10002511c  ldr     x1, [x8, #0xc60]
  100025120  bl      _objc_msgSend                            ; [self->pan state]
  100025124  cmp     x0, #3
  100025128  b.ne    loc_10002514c                            ; if ([self->pan state] != 3)
loc_10002512c:
  10002512c  adrp    x8, #0x100417000
  100025130  nop
  100025134  ldr     x1, [x8, #0xc78]
  100025138  mov     x0, x19
  10002513c  ldp     x29, x30, [sp, #0x20]
  100025140  ldp     x20, x19, [sp, #0x10]
  100025144  ldp     x22, x21, [sp], #0x30
  100025148  b       _objc_msgSend                            ; [self touchCanceled]
loc_10002514c:
  10002514c  ldp     x29, x30, [sp, #0x20]
  100025150  ldp     x20, x19, [sp, #0x10]
  100025154  ldp     x22, x21, [sp], #0x30
  100025158  ret
  10002515c  b       loc_100025160
loc_100025160:
  100025160  mov     x19, x0
  100025164  mov     x0, x20
  100025168  bl      _objc_release
  10002516c  mov     x0, x19
  100025170  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithSwipe handleTripleTap]
; address 0x100025174  size 196  kind objc
; ======================================================================
  100025174  stp     x22, x21, [sp, #-0x30]!
  100025178  stp     x20, x19, [sp, #0x10]
  10002517c  stp     x29, x30, [sp, #0x20]
  100025180  add     x29, sp, #0x20
  100025184  mov     x19, x0
  100025188  adrp    x8, #0x10041d000
  10002518c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100025190  adrp    x8, #0x100416000
  100025194  nop
  100025198  ldr     x1, [x8, #0xc00]
  10002519c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000251a0  mov     x29, x29
  1000251a4  bl      _objc_retainAutoreleasedReturnValue
  1000251a8  mov     x20, x0
  1000251ac  adrp    x8, #0x100417000
  1000251b0  nop
  1000251b4  ldr     x1, [x8, #0xc90]
  1000251b8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  1000251bc  mov     x21, x0
  1000251c0  mov     x0, x20
  1000251c4  bl      _objc_release
  1000251c8  tbz     w21, #0, loc_1000251dc                   ; if (!([[ADGameParameters sharedParameters] buttonMode] & 1))
  1000251cc  ldp     x29, x30, [sp, #0x20]
  1000251d0  ldp     x20, x19, [sp, #0x10]
  1000251d4  ldp     x22, x21, [sp], #0x30
  1000251d8  ret
loc_1000251dc:
  1000251dc  adrp    x8, #0x100416000
  1000251e0  nop
  1000251e4  ldr     x1, [x8, #0xc88]
  1000251e8  mov     x0, x19
  1000251ec  bl      _objc_msgSend                            ; [self weaponManager]
  1000251f0  mov     x29, x29
  1000251f4  bl      _objc_retainAutoreleasedReturnValue
  1000251f8  mov     x20, x0
  1000251fc  adrp    x8, #0x100417000
  100025200  nop
  100025204  ldr     x1, [x8, #0xc98]
  100025208  bl      _objc_msgSend                            ; [[self weaponManager] shootWithMelee]
  10002520c  mov     x0, x20
  100025210  ldp     x29, x30, [sp, #0x20]
  100025214  ldp     x20, x19, [sp, #0x10]
  100025218  ldp     x22, x21, [sp], #0x30
  10002521c  b       _objc_release
  100025220  b       loc_100025224
loc_100025224:
  100025224  mov     x19, x0
  100025228  mov     x0, x20
  10002522c  bl      _objc_release
  100025230  mov     x0, x19
  100025234  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithSwipe buttonIsDown]
; address 0x100025238  size 16  kind objc
; ======================================================================
  100025238  adrp    x8, #0x10041f000
  10002523c  ldrsw   x8, [x8, #0x720]                         ; ivar offset ADButtonWithSwipe._buttonIsDown (+0xb8)
  100025240  ldrb    w0, [x0, x8]                             ; w0 = self->_buttonIsDown
  100025244  ret

; ======================================================================
; -[ADButtonWithSwipe weaponManager]
; address 0x100025248  size 32  kind objc
; ======================================================================
  100025248  stp     x29, x30, [sp, #-0x10]!
  10002524c  mov     x29, sp
  100025250  adrp    x8, #0x10041f000
  100025254  ldrsw   x8, [x8, #0x704]                         ; ivar offset ADButtonWithSwipe._weaponManager (+0xc0)
  100025258  add     x0, x0, x8
  10002525c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100025260  ldp     x29, x30, [sp], #0x10
  100025264  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADButtonWithSwipe allowSwipe]
; address 0x100025268  size 20  kind objc
; ======================================================================
  100025268  adrp    x8, #0x10041f000
  10002526c  ldrsw   x8, [x8, #0x724]                         ; ivar offset ADButtonWithSwipe._allowSwipe (+0xb9)
  100025270  ldrb    w8, [x0, x8]                             ; w8 = self->_allowSwipe
  100025274  and     w0, w8, #1
  100025278  ret

; ======================================================================
; -[ADButtonWithSwipe setAllowSwipe:]
; address 0x10002527c  size 16  kind objc
; ======================================================================
  10002527c  adrp    x8, #0x10041f000
  100025280  ldrsw   x8, [x8, #0x724]                         ; ivar offset ADButtonWithSwipe._allowSwipe (+0xb9)
  100025284  strb    w2, [x0, x8]                             ; self->_allowSwipe = arg1
  100025288  ret

; ======================================================================
; -[ADButtonWithSwipe gameplayViewController]
; address 0x10002528c  size 32  kind objc
; ======================================================================
  10002528c  stp     x29, x30, [sp, #-0x10]!
  100025290  mov     x29, sp
  100025294  adrp    x8, #0x10041f000
  100025298  ldrsw   x8, [x8, #0x728]                         ; ivar offset ADButtonWithSwipe._gameplayViewController (+0xc8)
  10002529c  add     x0, x0, x8
  1000252a0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000252a4  ldp     x29, x30, [sp], #0x10
  1000252a8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADButtonWithSwipe setGameplayViewController:]
; address 0x1000252ac  size 20  kind objc
; ======================================================================
  1000252ac  adrp    x8, #0x10041f000
  1000252b0  ldrsw   x8, [x8, #0x728]                         ; ivar offset ADButtonWithSwipe._gameplayViewController (+0xc8)
  1000252b4  add     x0, x0, x8
  1000252b8  mov     x1, x2
  1000252bc  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADButtonWithSwipe .cxx_destruct]
; address 0x1000252c0  size 116  kind objc
; ======================================================================
  1000252c0  stp     x20, x19, [sp, #-0x20]!
  1000252c4  stp     x29, x30, [sp, #0x10]
  1000252c8  add     x29, sp, #0x10
  1000252cc  mov     x19, x0
  1000252d0  adrp    x8, #0x10041f000
  1000252d4  ldrsw   x8, [x8, #0x728]                         ; ivar offset ADButtonWithSwipe._gameplayViewController (+0xc8)
  1000252d8  add     x0, x19, x8
  1000252dc  bl      _objc_destroyWeak
  1000252e0  adrp    x8, #0x10041f000
  1000252e4  ldrsw   x8, [x8, #0x704]                         ; ivar offset ADButtonWithSwipe._weaponManager (+0xc0)
  1000252e8  add     x0, x19, x8
  1000252ec  bl      _objc_destroyWeak
  1000252f0  adrp    x8, #0x10041f000
  1000252f4  ldrsw   x8, [x8, #0x71c]                         ; ivar offset ADButtonWithSwipe.currentImage (+0xb0)
  1000252f8  add     x0, x19, x8
  1000252fc  mov     x1, #0
  100025300  bl      _objc_storeStrong
  100025304  adrp    x8, #0x10041f000
  100025308  ldrsw   x8, [x8, #0x70c]                         ; ivar offset ADButtonWithSwipe.tripleTap (+0xa0)
  10002530c  add     x0, x19, x8
  100025310  mov     x1, #0
  100025314  bl      _objc_storeStrong
  100025318  mov     x1, #0
  10002531c  adrp    x8, #0x10041f000
  100025320  ldrsw   x8, [x8, #0x708]                         ; ivar offset ADButtonWithSwipe.pan (+0x98)
  100025324  add     x0, x19, x8
  100025328  ldp     x29, x30, [sp, #0x10]
  10002532c  ldp     x20, x19, [sp], #0x20
  100025330  b       _objc_storeStrong
