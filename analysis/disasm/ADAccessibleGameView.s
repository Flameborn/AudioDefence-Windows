// unit ADAccessibleGameView — 21 functions
//   0x100089eb0     180  -[ADAccessibleGameView didMoveToSuperview]
//   0x100089f64     560  -[ADAccessibleGameView initGestureRecognizers]
//   0x10008a194      80  -[ADAccessibleGameView handleSwipeGesture]
//   0x10008a1e4       8  -[ADAccessibleGameView gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]
//   0x10008a1ec     268  -[ADAccessibleGameView handleSwipeUpGesture]
//   0x10008a2f8     268  -[ADAccessibleGameView handleSwipeDownGesture]
//   0x10008a404     264  -[ADAccessibleGameView touchesBegan:withEvent:]
//   0x10008a50c     152  -[ADAccessibleGameView touchesEnded:withEvent:]
//   0x10008a5a4     432  -[ADAccessibleGameView touchesMoved:withEvent:]
//   0x10008a754     448  -[ADAccessibleGameView update:]
//   0x10008a914     696  -[ADAccessibleGameView solveButtonPress]
//   0x10008abcc     136  -[ADAccessibleGameView touchCanceled]
//   0x10008ac54     164  -[ADAccessibleGameView setButtonIsDown:]
//   0x10008acf8     196  -[ADAccessibleGameView handleTripleTap]
//   0x10008adbc      32  -[ADAccessibleGameView weaponManager]
//   0x10008addc      20  -[ADAccessibleGameView setWeaponManager:]
//   0x10008adf0      32  -[ADAccessibleGameView gameplayViewController]
//   0x10008ae10      20  -[ADAccessibleGameView setGameplayViewController:]
//   0x10008ae24      16  -[ADAccessibleGameView buttonIsDown]
//   0x10008ae34     136  -[ADAccessibleGameView .cxx_destruct]
//   0x10008aebc       4  -[ADAccessibleGameView .cxx_construct]

; ======================================================================
; -[ADAccessibleGameView didMoveToSuperview]
; address 0x100089eb0  size 180  kind objc
; ======================================================================
  100089eb0  stp     x20, x19, [sp, #-0x20]!
  100089eb4  stp     x29, x30, [sp, #0x10]
  100089eb8  add     x29, sp, #0x10
  100089ebc  sub     sp, sp, #0x10
  100089ec0  mov     x19, x0
  100089ec4  str     x19, [sp]
  100089ec8  adrp    x8, #0x10041e000
  100089ecc  ldr     x8, [x8, #0xe58]
  100089ed0  str     x8, [sp, #8]
  100089ed4  adrp    x8, #0x100419000
  100089ed8  nop
  100089edc  ldr     x1, [x8, #0xed8]
  100089ee0  mov     x0, sp
  100089ee4  bl      _objc_msgSendSuper2                      ; [super didMoveToSuperview]
  100089ee8  adrp    x8, #0x10041d000
  100089eec  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100089ef0  adrp    x8, #0x100417000
  100089ef4  nop
  100089ef8  ldr     x1, [x8, #0x340]
  100089efc  bl      _objc_msgSend                            ; [UIColor clearColor]
  100089f00  mov     x29, x29
  100089f04  bl      _objc_retainAutoreleasedReturnValue
  100089f08  mov     x20, x0
  100089f0c  adrp    x8, #0x100417000
  100089f10  nop
  100089f14  ldr     x1, [x8, #0x188]
  100089f18  mov     x0, x19
  100089f1c  mov     x2, x20
  100089f20  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor clearColor]]
  100089f24  mov     x0, x20
  100089f28  bl      _objc_release
  100089f2c  adrp    x8, #0x100417000
  100089f30  nop
  100089f34  ldr     x1, [x8, #0xbb8]
  100089f38  mov     x0, x19
  100089f3c  bl      _objc_msgSend                            ; [self initGestureRecognizers]
  100089f40  sub     sp, x29, #0x10
  100089f44  ldp     x29, x30, [sp, #0x10]
  100089f48  ldp     x20, x19, [sp], #0x20
  100089f4c  ret
  100089f50  mov     x19, x0
  100089f54  mov     x0, x20
  100089f58  bl      _objc_release
  100089f5c  mov     x0, x19
  100089f60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView initGestureRecognizers]
; address 0x100089f64  size 560  kind objc
; ======================================================================
  100089f64  stp     x28, x27, [sp, #-0x60]!
  100089f68  stp     x26, x25, [sp, #0x10]
  100089f6c  stp     x24, x23, [sp, #0x20]
  100089f70  stp     x22, x21, [sp, #0x30]
  100089f74  stp     x20, x19, [sp, #0x40]
  100089f78  stp     x29, x30, [sp, #0x50]
  100089f7c  add     x29, sp, #0x50
  100089f80  mov     x19, x0
  100089f84  adrp    x27, #0x10041e000
  100089f88  ldr     x0, [x27, #0x178]                        ; class UISwipeGestureRecognizer
  100089f8c  adrp    x8, #0x100416000
  100089f90  nop
  100089f94  ldr     x20, [x8, #0xac8]
  100089f98  mov     x1, x20
  100089f9c  bl      _objc_msgSend                            ; [UISwipeGestureRecognizer alloc]
  100089fa0  adrp    x8, #0x100418000
  100089fa4  nop
  100089fa8  ldr     x3, [x8, #0x700]
  100089fac  adrp    x8, #0x100417000
  100089fb0  nop
  100089fb4  ldr     x22, [x8, #0x638]
  100089fb8  mov     x1, x22
  100089fbc  mov     x2, x19
  100089fc0  bl      _objc_msgSend                            ; [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeUpGesture)]
  100089fc4  adrp    x8, #0x10041f000
  100089fc8  ldrsw   x24, [x8, #0xed0]                        ; ivar offset ADAccessibleGameView.swipeUpGesture (+0x88)
  100089fcc  ldr     x8, [x19, x24]                           ; x8 = self->swipeUpGesture
  100089fd0  str     x0, [x19, x24]                           ; self->swipeUpGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeUpGesture)]
  100089fd4  mov     x0, x8
  100089fd8  bl      _objc_release
  100089fdc  ldr     x0, [x19, x24]                           ; x0 = self->swipeUpGesture
  100089fe0  adrp    x8, #0x100417000
  100089fe4  nop
  100089fe8  ldr     x21, [x8, #0xbf8]
  100089fec  mov     w2, #1
  100089ff0  mov     x1, x21
  100089ff4  bl      _objc_msgSend                            ; [self->swipeUpGesture setNumberOfTouchesRequired:1]
  100089ff8  ldr     x0, [x19, x24]                           ; x0 = self->swipeUpGesture
  100089ffc  adrp    x8, #0x100417000
  10008a000  nop
  10008a004  ldr     x25, [x8, #0x7d8]
  10008a008  mov     x1, x25
  10008a00c  mov     x2, x19
  10008a010  bl      _objc_msgSend                            ; [self->swipeUpGesture setDelegate:self]
  10008a014  ldr     x0, [x19, x24]                           ; x0 = self->swipeUpGesture
  10008a018  adrp    x8, #0x100417000
  10008a01c  nop
  10008a020  ldr     x23, [x8, #0xbe8]
  10008a024  mov     w2, #1
  10008a028  mov     x1, x23
  10008a02c  bl      _objc_msgSend                            ; [self->swipeUpGesture setCancelsTouchesInView:1]
  10008a030  ldr     x0, [x19, x24]                           ; x0 = self->swipeUpGesture
  10008a034  adrp    x8, #0x100418000
  10008a038  nop
  10008a03c  ldr     x26, [x8, #0x708]
  10008a040  mov     w2, #4
  10008a044  mov     x1, x26
  10008a048  bl      _objc_msgSend                            ; [self->swipeUpGesture setDirection:4]
  10008a04c  ldr     x2, [x19, x24]                           ; x2 = self->swipeUpGesture
  10008a050  adrp    x8, #0x100417000
  10008a054  nop
  10008a058  ldr     x24, [x8, #0x668]
  10008a05c  mov     x0, x19
  10008a060  mov     x1, x24
  10008a064  bl      _objc_msgSend                            ; [self addGestureRecognizer:self->swipeUpGesture]
  10008a068  ldr     x0, [x27, #0x178]                        ; class UISwipeGestureRecognizer
  10008a06c  mov     x1, x20
  10008a070  bl      _objc_msgSend                            ; [UISwipeGestureRecognizer alloc]
  10008a074  adrp    x8, #0x100418000
  10008a078  nop
  10008a07c  ldr     x3, [x8, #0x710]
  10008a080  mov     x1, x22
  10008a084  mov     x2, x19
  10008a088  bl      _objc_msgSend                            ; [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeDownGesture)]
  10008a08c  adrp    x8, #0x10041f000
  10008a090  ldrsw   x27, [x8, #0xed4]                        ; ivar offset ADAccessibleGameView.swipeDownGesture (+0x90)
  10008a094  ldr     x8, [x19, x27]                           ; x8 = self->swipeDownGesture
  10008a098  str     x0, [x19, x27]                           ; self->swipeDownGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeDownGesture)]
  10008a09c  mov     x0, x8
  10008a0a0  bl      _objc_release
  10008a0a4  ldr     x0, [x19, x27]                           ; x0 = self->swipeDownGesture
  10008a0a8  mov     w2, #1
  10008a0ac  mov     x1, x21
  10008a0b0  bl      _objc_msgSend                            ; [self->swipeDownGesture setNumberOfTouchesRequired:1]
  10008a0b4  ldr     x0, [x19, x27]                           ; x0 = self->swipeDownGesture
  10008a0b8  mov     x1, x25
  10008a0bc  mov     x2, x19
  10008a0c0  bl      _objc_msgSend                            ; [self->swipeDownGesture setDelegate:self]
  10008a0c4  ldr     x0, [x19, x27]                           ; x0 = self->swipeDownGesture
  10008a0c8  mov     w2, #1
  10008a0cc  mov     x1, x23
  10008a0d0  bl      _objc_msgSend                            ; [self->swipeDownGesture setCancelsTouchesInView:1]
  10008a0d4  ldr     x0, [x19, x27]                           ; x0 = self->swipeDownGesture
  10008a0d8  mov     w2, #8
  10008a0dc  mov     x1, x26
  10008a0e0  bl      _objc_msgSend                            ; [self->swipeDownGesture setDirection:8]
  10008a0e4  ldr     x2, [x19, x27]                           ; x2 = self->swipeDownGesture
  10008a0e8  mov     x0, x19
  10008a0ec  mov     x1, x24
  10008a0f0  bl      _objc_msgSend                            ; [self addGestureRecognizer:self->swipeDownGesture]
  10008a0f4  adrp    x8, #0x10041e000
  10008a0f8  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  10008a0fc  mov     x1, x20
  10008a100  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  10008a104  adrp    x8, #0x100417000
  10008a108  nop
  10008a10c  ldr     x3, [x8, #0xbf0]
  10008a110  mov     x1, x22
  10008a114  mov     x2, x19
  10008a118  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTripleTap)]
  10008a11c  adrp    x8, #0x10041f000
  10008a120  ldrsw   x20, [x8, #0xed8]                        ; ivar offset ADAccessibleGameView.tripleTap (+0x98)
  10008a124  ldr     x8, [x19, x20]                           ; x8 = self->tripleTap
  10008a128  str     x0, [x19, x20]                           ; self->tripleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTripleTap)]
  10008a12c  mov     x0, x8
  10008a130  bl      _objc_release
  10008a134  ldr     x0, [x19, x20]                           ; x0 = self->tripleTap
  10008a138  mov     w2, #3
  10008a13c  mov     x1, x21
  10008a140  bl      _objc_msgSend                            ; [self->tripleTap setNumberOfTouchesRequired:3]
  10008a144  ldr     x0, [x19, x20]                           ; x0 = self->tripleTap
  10008a148  adrp    x8, #0x100417000
  10008a14c  nop
  10008a150  ldr     x1, [x8, #0xbe0]
  10008a154  mov     w2, #0
  10008a158  bl      _objc_msgSend                            ; [self->tripleTap setDelaysTouchesBegan:0]
  10008a15c  ldr     x0, [x19, x20]                           ; x0 = self->tripleTap
  10008a160  mov     w2, #1
  10008a164  mov     x1, x23
  10008a168  bl      _objc_msgSend                            ; [self->tripleTap setCancelsTouchesInView:1]
  10008a16c  ldr     x2, [x19, x20]                           ; x2 = self->tripleTap
  10008a170  mov     x0, x19
  10008a174  mov     x1, x24
  10008a178  ldp     x29, x30, [sp, #0x50]
  10008a17c  ldp     x20, x19, [sp, #0x40]
  10008a180  ldp     x22, x21, [sp, #0x30]
  10008a184  ldp     x24, x23, [sp, #0x20]
  10008a188  ldp     x26, x25, [sp, #0x10]
  10008a18c  ldp     x28, x27, [sp], #0x60
  10008a190  b       _objc_msgSend                            ; [self addGestureRecognizer:self->tripleTap]

; ======================================================================
; -[ADAccessibleGameView handleSwipeGesture]
; address 0x10008a194  size 80  kind objc
; ======================================================================
  10008a194  stp     x20, x19, [sp, #-0x20]!
  10008a198  stp     x29, x30, [sp, #0x10]
  10008a19c  add     x29, sp, #0x10
  10008a1a0  mov     x19, x0
  10008a1a4  adrp    x8, #0x10041f000
  10008a1a8  ldrsw   x8, [x8, #0xedc]                         ; ivar offset ADAccessibleGameView.hasSwiped (+0x68)
  10008a1ac  mov     w9, #1
  10008a1b0  strb    w9, [x19, x8]                            ; self->hasSwiped = 1
  10008a1b4  adrp    x8, #0x100417000
  10008a1b8  nop
  10008a1bc  ldr     x1, [x8, #0xc68]
  10008a1c0  mov     w2, #0
  10008a1c4  bl      _objc_msgSend                            ; [self setButtonIsDown:0]
  10008a1c8  adrp    x8, #0x100417000
  10008a1cc  nop
  10008a1d0  ldr     x1, [x8, #0xc78]
  10008a1d4  mov     x0, x19
  10008a1d8  ldp     x29, x30, [sp, #0x10]
  10008a1dc  ldp     x20, x19, [sp], #0x20
  10008a1e0  b       _objc_msgSend                            ; [self touchCanceled]

; ======================================================================
; -[ADAccessibleGameView gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]
; address 0x10008a1e4  size 8  kind objc
; ======================================================================
  10008a1e4  mov     w0, #1
  10008a1e8  ret

; ======================================================================
; -[ADAccessibleGameView handleSwipeUpGesture]
; address 0x10008a1ec  size 268  kind objc
; ======================================================================
  10008a1ec  stp     x22, x21, [sp, #-0x30]!
  10008a1f0  stp     x20, x19, [sp, #0x10]
  10008a1f4  stp     x29, x30, [sp, #0x20]
  10008a1f8  add     x29, sp, #0x20
  10008a1fc  mov     x19, x0
  10008a200  adrp    x8, #0x10041d000
  10008a204  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008a208  adrp    x8, #0x100416000
  10008a20c  nop
  10008a210  ldr     x1, [x8, #0xc00]
  10008a214  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008a218  mov     x29, x29
  10008a21c  bl      _objc_retainAutoreleasedReturnValue
  10008a220  mov     x20, x0
  10008a224  adrp    x8, #0x100417000
  10008a228  nop
  10008a22c  ldr     x1, [x8, #0xc90]
  10008a230  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  10008a234  mov     x21, x0
  10008a238  mov     x0, x20
  10008a23c  bl      _objc_release
  10008a240  tbz     w21, #0, loc_10008a254                   ; if (!([[ADGameParameters sharedParameters] buttonMode] & 1))
  10008a244  ldp     x29, x30, [sp, #0x20]
  10008a248  ldp     x20, x19, [sp, #0x10]
  10008a24c  ldp     x22, x21, [sp], #0x30
  10008a250  ret
loc_10008a254:
  10008a254  adrp    x8, #0x100418000
  10008a258  nop
  10008a25c  ldr     x1, [x8, #0x718]
  10008a260  mov     x0, x19
  10008a264  bl      _objc_msgSend                            ; [self handleSwipeGesture]
  10008a268  adrp    x8, #0x100416000
  10008a26c  nop
  10008a270  ldr     x1, [x8, #0xc88]
  10008a274  mov     x0, x19
  10008a278  bl      _objc_msgSend                            ; [self weaponManager]
  10008a27c  mov     x29, x29
  10008a280  bl      _objc_retainAutoreleasedReturnValue
  10008a284  mov     x20, x0
  10008a288  adrp    x8, #0x100418000
  10008a28c  nop
  10008a290  ldr     x1, [x8, #0x720]
  10008a294  bl      _objc_msgSend                            ; [[self weaponManager] selectNextWeapon]
  10008a298  mov     x0, x20
  10008a29c  bl      _objc_release
  10008a2a0  adrp    x8, #0x10041f000
  10008a2a4  ldrsw   x21, [x8, #0xed0]                        ; ivar offset ADAccessibleGameView.swipeUpGesture (+0x88)
  10008a2a8  ldr     x0, [x19, x21]                           ; x0 = self->swipeUpGesture
  10008a2ac  adrp    x8, #0x100417000
  10008a2b0  nop
  10008a2b4  ldr     x20, [x8, #0x878]
  10008a2b8  mov     w2, #0
  10008a2bc  mov     x1, x20
  10008a2c0  bl      _objc_msgSend                            ; [self->swipeUpGesture setEnabled:0]
  10008a2c4  ldr     x0, [x19, x21]                           ; x0 = self->swipeUpGesture
  10008a2c8  mov     w2, #1
  10008a2cc  mov     x1, x20
  10008a2d0  ldp     x29, x30, [sp, #0x20]
  10008a2d4  ldp     x20, x19, [sp, #0x10]
  10008a2d8  ldp     x22, x21, [sp], #0x30
  10008a2dc  b       _objc_msgSend                            ; [self->swipeUpGesture setEnabled:1]
  10008a2e0  b       loc_10008a2e4
loc_10008a2e4:
  10008a2e4  mov     x19, x0
  10008a2e8  mov     x0, x20
  10008a2ec  bl      _objc_release
  10008a2f0  mov     x0, x19
  10008a2f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView handleSwipeDownGesture]
; address 0x10008a2f8  size 268  kind objc
; ======================================================================
  10008a2f8  stp     x22, x21, [sp, #-0x30]!
  10008a2fc  stp     x20, x19, [sp, #0x10]
  10008a300  stp     x29, x30, [sp, #0x20]
  10008a304  add     x29, sp, #0x20
  10008a308  mov     x19, x0
  10008a30c  adrp    x8, #0x10041d000
  10008a310  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008a314  adrp    x8, #0x100416000
  10008a318  nop
  10008a31c  ldr     x1, [x8, #0xc00]
  10008a320  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008a324  mov     x29, x29
  10008a328  bl      _objc_retainAutoreleasedReturnValue
  10008a32c  mov     x20, x0
  10008a330  adrp    x8, #0x100417000
  10008a334  nop
  10008a338  ldr     x1, [x8, #0xc90]
  10008a33c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  10008a340  mov     x21, x0
  10008a344  mov     x0, x20
  10008a348  bl      _objc_release
  10008a34c  tbz     w21, #0, loc_10008a360                   ; if (!([[ADGameParameters sharedParameters] buttonMode] & 1))
  10008a350  ldp     x29, x30, [sp, #0x20]
  10008a354  ldp     x20, x19, [sp, #0x10]
  10008a358  ldp     x22, x21, [sp], #0x30
  10008a35c  ret
loc_10008a360:
  10008a360  adrp    x8, #0x100418000
  10008a364  nop
  10008a368  ldr     x1, [x8, #0x718]
  10008a36c  mov     x0, x19
  10008a370  bl      _objc_msgSend                            ; [self handleSwipeGesture]
  10008a374  adrp    x8, #0x100416000
  10008a378  nop
  10008a37c  ldr     x1, [x8, #0xc88]
  10008a380  mov     x0, x19
  10008a384  bl      _objc_msgSend                            ; [self weaponManager]
  10008a388  mov     x29, x29
  10008a38c  bl      _objc_retainAutoreleasedReturnValue
  10008a390  mov     x20, x0
  10008a394  adrp    x8, #0x100418000
  10008a398  nop
  10008a39c  ldr     x1, [x8, #0x728]
  10008a3a0  bl      _objc_msgSend                            ; [[self weaponManager] reloadGestureDown]
  10008a3a4  mov     x0, x20
  10008a3a8  bl      _objc_release
  10008a3ac  adrp    x8, #0x10041f000
  10008a3b0  ldrsw   x21, [x8, #0xed4]                        ; ivar offset ADAccessibleGameView.swipeDownGesture (+0x90)
  10008a3b4  ldr     x0, [x19, x21]                           ; x0 = self->swipeDownGesture
  10008a3b8  adrp    x8, #0x100417000
  10008a3bc  nop
  10008a3c0  ldr     x20, [x8, #0x878]
  10008a3c4  mov     w2, #0
  10008a3c8  mov     x1, x20
  10008a3cc  bl      _objc_msgSend                            ; [self->swipeDownGesture setEnabled:0]
  10008a3d0  ldr     x0, [x19, x21]                           ; x0 = self->swipeDownGesture
  10008a3d4  mov     w2, #1
  10008a3d8  mov     x1, x20
  10008a3dc  ldp     x29, x30, [sp, #0x20]
  10008a3e0  ldp     x20, x19, [sp, #0x10]
  10008a3e4  ldp     x22, x21, [sp], #0x30
  10008a3e8  b       _objc_msgSend                            ; [self->swipeDownGesture setEnabled:1]
  10008a3ec  b       loc_10008a3f0
loc_10008a3f0:
  10008a3f0  mov     x19, x0
  10008a3f4  mov     x0, x20
  10008a3f8  bl      _objc_release
  10008a3fc  mov     x0, x19
  10008a400  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView touchesBegan:withEvent:]
; address 0x10008a404  size 264  kind objc
; ======================================================================
  10008a404  stp     x22, x21, [sp, #-0x30]!
  10008a408  stp     x20, x19, [sp, #0x10]
  10008a40c  stp     x29, x30, [sp, #0x20]
  10008a410  add     x29, sp, #0x20
  10008a414  mov     x20, x0
  10008a418  mov     x0, x3
  10008a41c  bl      _objc_retain
  10008a420  mov     x19, x0
  10008a424  adrp    x8, #0x100419000
  10008a428  nop
  10008a42c  ldr     x1, [x8, #0xee0]
  10008a430  bl      _objc_msgSend                            ; [arg2 allTouches]
  10008a434  mov     x29, x29
  10008a438  bl      _objc_retainAutoreleasedReturnValue
  10008a43c  mov     x22, x0
  10008a440  adrp    x8, #0x100419000
  10008a444  nop
  10008a448  ldr     x1, [x8, #0xee8]
  10008a44c  bl      _objc_msgSend                            ; [[arg2 allTouches] anyObject]
  10008a450  mov     x29, x29
  10008a454  bl      _objc_retainAutoreleasedReturnValue
  10008a458  mov     x21, x0
  10008a45c  mov     x0, x22
  10008a460  bl      _objc_release
  10008a464  adrp    x8, #0x100417000
  10008a468  nop
  10008a46c  ldr     x1, [x8, #0xee0]
  10008a470  mov     x0, x21
  10008a474  mov     x2, x20
  10008a478  bl      _objc_msgSend                            ; [[[arg2 allTouches] anyObject] locationInView:self]
  10008a47c  adrp    x8, #0x10041f000
  10008a480  ldrsw   x8, [x8, #0xee0]                         ; ivar offset ADAccessibleGameView.initialPoint (+0x70)
  10008a484  add     x8, x20, x8
  10008a488  str     d0, [x8]                                 ; self->initialPoint.x = [[[arg2 allTouches] anyObject] locationInView:self].0
  10008a48c  str     d1, [x8, #8]                             ; self->initialPoint.y = [[[arg2 allTouches] anyObject] locationInView:self].1
  10008a490  adrp    x8, #0x100417000
  10008a494  nop
  10008a498  ldr     x1, [x8, #0xc68]
  10008a49c  mov     w2, #1
  10008a4a0  mov     x0, x20
  10008a4a4  bl      _objc_msgSend                            ; [self setButtonIsDown:1]
  10008a4a8  adrp    x8, #0x10041f000
  10008a4ac  ldrsw   x8, [x8, #0xedc]                         ; ivar offset ADAccessibleGameView.hasSwiped (+0x68)
  10008a4b0  strb    wzr, [x20, x8]                           ; self->hasSwiped = 0
  10008a4b4  adrp    x8, #0x10041f000
  10008a4b8  ldrsw   x8, [x8, #0xee4]                         ; ivar offset ADAccessibleGameView.hasStartedToMove (+0x69)
  10008a4bc  strb    wzr, [x20, x8]                           ; self->hasStartedToMove = 0
  10008a4c0  mov     x0, x21
  10008a4c4  bl      _objc_release
  10008a4c8  mov     x0, x19
  10008a4cc  ldp     x29, x30, [sp, #0x20]
  10008a4d0  ldp     x20, x19, [sp, #0x10]
  10008a4d4  ldp     x22, x21, [sp], #0x30
  10008a4d8  b       _objc_release
  10008a4dc  mov     x20, x0
  10008a4e0  mov     x0, x21
  10008a4e4  b       loc_10008a4f8
  10008a4e8  mov     x20, x0
  10008a4ec  b       loc_10008a4fc
  10008a4f0  mov     x20, x0
  10008a4f4  mov     x0, x22
loc_10008a4f8:
  10008a4f8  bl      _objc_release
loc_10008a4fc:
  10008a4fc  mov     x0, x19
  10008a500  bl      _objc_release
  10008a504  mov     x0, x20
  10008a508  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView touchesEnded:withEvent:]
; address 0x10008a50c  size 152  kind objc
; ======================================================================
  10008a50c  stp     x20, x19, [sp, #-0x20]!
  10008a510  stp     x29, x30, [sp, #0x10]
  10008a514  add     x29, sp, #0x10
  10008a518  mov     x19, x0
  10008a51c  adrp    x8, #0x100417000
  10008a520  nop
  10008a524  ldr     x1, [x8, #0xc68]
  10008a528  mov     w2, #0
  10008a52c  bl      _objc_msgSend                            ; [self setButtonIsDown:0]
  10008a530  adrp    x8, #0x10041f000
  10008a534  adrp    x9, #0x10041f000
  10008a538  ldrsw   x8, [x8, #0xedc]                         ; ivar offset ADAccessibleGameView.hasSwiped (+0x68)
  10008a53c  strb    wzr, [x19, x8]                           ; self->hasSwiped = 0
  10008a540  ldrsw   x8, [x9, #0xee4]                         ; ivar offset ADAccessibleGameView.hasStartedToMove (+0x69)
  10008a544  strb    wzr, [x19, x8]                           ; self->hasStartedToMove = 0
  10008a548  adrp    x8, #0x100416000
  10008a54c  nop
  10008a550  ldr     x1, [x8, #0xc88]
  10008a554  mov     x0, x19
  10008a558  bl      _objc_msgSend                            ; [self weaponManager]
  10008a55c  mov     x29, x29
  10008a560  bl      _objc_retainAutoreleasedReturnValue
  10008a564  mov     x19, x0
  10008a568  adrp    x8, #0x100417000
  10008a56c  nop
  10008a570  ldr     x1, [x8, #0xc70]
  10008a574  bl      _objc_msgSend                            ; [[self weaponManager] continuousStop]
  10008a578  mov     x0, x19
  10008a57c  ldp     x29, x30, [sp, #0x10]
  10008a580  ldp     x20, x19, [sp], #0x20
  10008a584  b       _objc_release
  10008a588  mov     x20, x0
  10008a58c  b       loc_10008a59c
  10008a590  mov     x20, x0
  10008a594  mov     x0, x19
  10008a598  bl      _objc_release
loc_10008a59c:
  10008a59c  mov     x0, x20
  10008a5a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView touchesMoved:withEvent:]
; address 0x10008a5a4  size 432  kind objc
; ======================================================================
  10008a5a4  stp     d9, d8, [sp, #-0x40]!
  10008a5a8  stp     x22, x21, [sp, #0x10]
  10008a5ac  stp     x20, x19, [sp, #0x20]
  10008a5b0  stp     x29, x30, [sp, #0x30]
  10008a5b4  add     x29, sp, #0x30
  10008a5b8  mov     x19, x0
  10008a5bc  adrp    x8, #0x100419000
  10008a5c0  nop
  10008a5c4  ldr     x1, [x8, #0xee0]
  10008a5c8  mov     x0, x3
  10008a5cc  bl      _objc_msgSend                            ; [arg2 allTouches]
  10008a5d0  mov     x29, x29
  10008a5d4  bl      _objc_retainAutoreleasedReturnValue
  10008a5d8  mov     x21, x0
  10008a5dc  adrp    x8, #0x100419000
  10008a5e0  nop
  10008a5e4  ldr     x1, [x8, #0xee8]
  10008a5e8  bl      _objc_msgSend                            ; [[arg2 allTouches] anyObject]
  10008a5ec  mov     x29, x29
  10008a5f0  bl      _objc_retainAutoreleasedReturnValue
  10008a5f4  mov     x20, x0
  10008a5f8  mov     x0, x21
  10008a5fc  bl      _objc_release
  10008a600  adrp    x8, #0x100417000
  10008a604  nop
  10008a608  ldr     x1, [x8, #0xee0]
  10008a60c  mov     x0, x20
  10008a610  mov     x2, x19
  10008a614  bl      _objc_msgSend                            ; [[[arg2 allTouches] anyObject] locationInView:self]
  10008a618  mov     v8.16b, v0.16b
  10008a61c  adrp    x8, #0x10041d000
  10008a620  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008a624  adrp    x8, #0x100416000
  10008a628  nop
  10008a62c  ldr     x1, [x8, #0xc00]
  10008a630  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008a634  mov     x29, x29
  10008a638  bl      _objc_retainAutoreleasedReturnValue
  10008a63c  mov     x21, x0
  10008a640  adrp    x8, #0x100417000
  10008a644  nop
  10008a648  ldr     x1, [x8, #0xc80]
  10008a64c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10008a650  mov     x22, x0
  10008a654  mov     x0, x21
  10008a658  bl      _objc_release
  10008a65c  cmp     w22, #2
  10008a660  b.ne    loc_10008a6c4                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  10008a664  adrp    x8, #0x100417000
  10008a668  nop
  10008a66c  ldr     x1, [x8, #0xac0]
  10008a670  mov     x0, x19
  10008a674  bl      _objc_msgSend                            ; [self gameplayViewController]
  10008a678  mov     x29, x29
  10008a67c  bl      _objc_retainAutoreleasedReturnValue
  10008a680  mov     x21, x0
  10008a684  adrp    x8, #0x10041f000
  10008a688  ldrsw   x8, [x8, #0xee0]                         ; ivar offset ADAccessibleGameView.initialPoint (+0x70)
  10008a68c  ldr     d0, [x19, x8]                            ; d0 = self->initialPoint.x
  10008a690  fsub    d0, d8, d0
  10008a694  adrp    x8, #0x10041f000
  10008a698  ldrsw   x8, [x8, #0xee4]                         ; ivar offset ADAccessibleGameView.hasStartedToMove (+0x69)
  10008a69c  ldrb    w8, [x19, x8]                            ; w8 = self->hasStartedToMove
  10008a6a0  fcvt    s0, d0
  10008a6a4  cmp     w8, #0
  10008a6a8  cset    w2, eq
  10008a6ac  adrp    x8, #0x100419000
  10008a6b0  nop
  10008a6b4  ldr     x1, [x8, #0xd8]
  10008a6b8  bl      _objc_msgSend                            ; [[self gameplayViewController] touchesMoveDetected:([[[arg2 allTouches] anyObject] locationInView:self].0 - self->initialPoint.x) justStarted:(self->hasStartedToMove == 0)]
  10008a6bc  mov     x0, x21
  10008a6c0  bl      _objc_release
loc_10008a6c4:
  10008a6c4  adrp    x8, #0x10041f000
  10008a6c8  ldrsw   x8, [x8, #0xee4]                         ; ivar offset ADAccessibleGameView.hasStartedToMove (+0x69)
  10008a6cc  mov     w9, #1
  10008a6d0  strb    w9, [x19, x8]                            ; self->hasStartedToMove = 1
  10008a6d4  adrp    x8, #0x10041f000
  10008a6d8  ldrsw   x8, [x8, #0xee0]                         ; ivar offset ADAccessibleGameView.initialPoint (+0x70)
  10008a6dc  ldr     d0, [x19, x8]                            ; d0 = self->initialPoint.x
  10008a6e0  fsub    d0, d8, d0
  10008a6e4  fabs    d0, d0
  10008a6e8  fmov    d1, #30.00000000
  10008a6ec  fcmp    d0, d1
  10008a6f0  cset    w8, gt                                   ; t1 = (fabs(([[[arg2 allTouches] anyObject] locationInView:self].0 - self->initialPoint.x)) > 30)
  10008a6f4  adrp    x9, #0x10041f000
  10008a6f8  ldrsw   x9, [x9, #0xedc]                         ; ivar offset ADAccessibleGameView.hasSwiped (+0x68)
  10008a6fc  strb    w8, [x19, x9]                            ; self->hasSwiped = t1
  10008a700  mov     x0, x20
  10008a704  ldp     x29, x30, [sp, #0x30]
  10008a708  ldp     x20, x19, [sp, #0x20]
  10008a70c  ldp     x22, x21, [sp, #0x10]
  10008a710  ldp     d9, d8, [sp], #0x40
  10008a714  b       _objc_release
  10008a718  mov     x19, x0
  10008a71c  b       loc_10008a744
  10008a720  mov     x19, x0
  10008a724  b       loc_10008a74c
  10008a728  mov     x19, x0
  10008a72c  mov     x0, x21
  10008a730  b       loc_10008a748
  10008a734  b       loc_10008a738
loc_10008a738:
  10008a738  mov     x19, x0
  10008a73c  mov     x0, x21
  10008a740  bl      _objc_release
loc_10008a744:
  10008a744  mov     x0, x20
loc_10008a748:
  10008a748  bl      _objc_release
loc_10008a74c:
  10008a74c  mov     x0, x19
  10008a750  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView update:]
; address 0x10008a754  size 448  kind objc
; ======================================================================
  10008a754  stp     d9, d8, [sp, #-0x40]!
  10008a758  stp     x22, x21, [sp, #0x10]
  10008a75c  stp     x20, x19, [sp, #0x20]
  10008a760  stp     x29, x30, [sp, #0x30]
  10008a764  add     x29, sp, #0x30
  10008a768  mov     v8.16b, v0.16b
  10008a76c  mov     x19, x0
  10008a770  adrp    x8, #0x100417000
  10008a774  nop
  10008a778  ldr     x1, [x8, #0xc40]
  10008a77c  bl      _objc_msgSend                            ; [self buttonIsDown]
  10008a780  adrp    x8, #0x10041f000
  10008a784  ldrsw   x8, [x8, #0xee8]                         ; ivar offset ADAccessibleGameView.buttonPressedDuration (+0x6c)
  10008a788  cbz     w0, loc_10008a89c                        ; if ([self buttonIsDown] == 0)
  10008a78c  ldr     s0, [x19, x8]                            ; s0 = self->buttonPressedDuration
  10008a790  fadd    s0, s0, s8
  10008a794  str     s0, [x19, x8]                            ; self->buttonPressedDuration = (self->buttonPressedDuration + arg1)
  10008a798  fcvt    d0, s0
  10008a79c  adrp    x8, #0x100181000
  10008a7a0  ldr     d1, [x8, #0xa18]                         ; d1 = 0.2
  10008a7a4  fcmp    d0, d1
  10008a7a8  b.le    loc_10008a8a0                            ; if ((self->buttonPressedDuration + arg1) <= (or unordered) 0.2)
  10008a7ac  fcvt    d2, s8
  10008a7b0  fadd    d1, d2, d1
  10008a7b4  fcmp    d0, d1
  10008a7b8  b.hi    loc_10008a8a0                            ; if ((self->buttonPressedDuration + arg1) > (or unordered) (arg1 + 0.2))
  10008a7bc  adrp    x8, #0x10041f000
  10008a7c0  ldrsw   x8, [x8, #0xedc]                         ; ivar offset ADAccessibleGameView.hasSwiped (+0x68)
  10008a7c4  ldrb    w8, [x19, x8]                            ; w8 = self->hasSwiped
  10008a7c8  cbnz    w8, loc_10008a8a0                        ; if (self->hasSwiped != 0)
  10008a7cc  adrp    x8, #0x10041d000
  10008a7d0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008a7d4  adrp    x8, #0x100416000
  10008a7d8  nop
  10008a7dc  ldr     x1, [x8, #0xc00]
  10008a7e0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008a7e4  mov     x29, x29
  10008a7e8  bl      _objc_retainAutoreleasedReturnValue
  10008a7ec  mov     x20, x0
  10008a7f0  adrp    x8, #0x100417000
  10008a7f4  nop
  10008a7f8  ldr     x1, [x8, #0xc90]
  10008a7fc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  10008a800  mov     x21, x0
  10008a804  mov     x0, x20
  10008a808  bl      _objc_release
  10008a80c  tbz     w21, #0, loc_10008a8b4                   ; if (!([[ADGameParameters sharedParameters] buttonMode] & 1))
  10008a810  adrp    x8, #0x10041f000
  10008a814  ldrsw   x21, [x8, #0xee0]                        ; ivar offset ADAccessibleGameView.initialPoint (+0x70)
  10008a818  ldr     d9, [x19, x21]                           ; d9 = self->initialPoint.x
  10008a81c  adrp    x8, #0x100416000
  10008a820  nop
  10008a824  ldr     x20, [x8, #0xf38]
  10008a828  mov     x0, x19
  10008a82c  mov     x1, x20
  10008a830  bl      _objc_msgSend                            ; [self frame]
  10008a834  fmov    d8, #0.50000000
  10008a838  fmul    d0, d2, d8
  10008a83c  fcmp    d9, d0
  10008a840  b.lt    loc_10008a8a0                            ; if (self->initialPoint.x < (or unordered) ([self frame].2 * 0.5))
  10008a844  add     x8, x21, x19
  10008a848  ldr     d9, [x8, #8]                             ; d9 = self->initialPoint.y
  10008a84c  mov     x0, x19
  10008a850  mov     x1, x20
  10008a854  bl      _objc_msgSend                            ; [self frame]
  10008a858  fmul    d0, d3, d8
  10008a85c  fcmp    d9, d0
  10008a860  b.pl    loc_10008a8a0                            ; if (self->initialPoint.y >= (or unordered) ([self frame].3 * 0.5))
  10008a864  adrp    x8, #0x100416000
  10008a868  nop
  10008a86c  ldr     x1, [x8, #0xc88]
  10008a870  mov     x0, x19
  10008a874  bl      _objc_msgSend                            ; [self weaponManager]
  10008a878  mov     x29, x29
  10008a87c  bl      _objc_retainAutoreleasedReturnValue
  10008a880  mov     x20, x0
  10008a884  adrp    x8, #0x100417000
  10008a888  nop
  10008a88c  ldr     x1, [x8, #0xc48]
  10008a890  bl      _objc_msgSend                            ; [[self weaponManager] continuousStart]
  10008a894  b       loc_10008a8e4
  10008a898  b       loc_10008a900
loc_10008a89c:
  10008a89c  str     wzr, [x19, x8]                           ; self->buttonPressedDuration = 0
loc_10008a8a0:
  10008a8a0  ldp     x29, x30, [sp, #0x30]
  10008a8a4  ldp     x20, x19, [sp, #0x20]
  10008a8a8  ldp     x22, x21, [sp, #0x10]
  10008a8ac  ldp     d9, d8, [sp], #0x40
  10008a8b0  ret
loc_10008a8b4:
  10008a8b4  adrp    x8, #0x100416000
  10008a8b8  nop
  10008a8bc  ldr     x1, [x8, #0xc88]
  10008a8c0  mov     x0, x19
  10008a8c4  bl      _objc_msgSend                            ; [self weaponManager]
  10008a8c8  mov     x29, x29
  10008a8cc  bl      _objc_retainAutoreleasedReturnValue
  10008a8d0  mov     x20, x0
  10008a8d4  adrp    x8, #0x100417000
  10008a8d8  nop
  10008a8dc  ldr     x1, [x8, #0xc48]
  10008a8e0  bl      _objc_msgSend                            ; [[self weaponManager] continuousStart]
loc_10008a8e4:
  10008a8e4  mov     x0, x20
  10008a8e8  ldp     x29, x30, [sp, #0x30]
  10008a8ec  ldp     x20, x19, [sp, #0x20]
  10008a8f0  ldp     x22, x21, [sp, #0x10]
  10008a8f4  ldp     d9, d8, [sp], #0x40
  10008a8f8  b       _objc_release
  10008a8fc  b       loc_10008a900
loc_10008a900:
  10008a900  mov     x19, x0
  10008a904  mov     x0, x20
  10008a908  bl      _objc_release
  10008a90c  mov     x0, x19
  10008a910  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView solveButtonPress]
; address 0x10008a914  size 696  kind objc
; ======================================================================
  10008a914  stp     d9, d8, [sp, #-0x40]!
  10008a918  stp     x22, x21, [sp, #0x10]
  10008a91c  stp     x20, x19, [sp, #0x20]
  10008a920  stp     x29, x30, [sp, #0x30]
  10008a924  add     x29, sp, #0x30
  10008a928  mov     x19, x0
  10008a92c  adrp    x8, #0x10041d000
  10008a930  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008a934  adrp    x8, #0x100416000
  10008a938  nop
  10008a93c  ldr     x1, [x8, #0xc00]
  10008a940  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008a944  mov     x29, x29
  10008a948  bl      _objc_retainAutoreleasedReturnValue
  10008a94c  mov     x20, x0
  10008a950  adrp    x8, #0x100417000
  10008a954  nop
  10008a958  ldr     x1, [x8, #0xc90]
  10008a95c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  10008a960  mov     x21, x0
  10008a964  mov     x0, x20
  10008a968  bl      _objc_release
  10008a96c  tbz     w21, #0, loc_10008a9fc                   ; if (!([[ADGameParameters sharedParameters] buttonMode] & 1))
  10008a970  adrp    x8, #0x10041f000
  10008a974  ldrsw   x21, [x8, #0xee0]                        ; ivar offset ADAccessibleGameView.initialPoint (+0x70)
  10008a978  ldr     d9, [x19, x21]                           ; d9 = self->initialPoint.x
  10008a97c  adrp    x8, #0x100416000
  10008a980  nop
  10008a984  ldr     x20, [x8, #0xf38]
  10008a988  mov     x0, x19
  10008a98c  mov     x1, x20
  10008a990  bl      _objc_msgSend                            ; [self frame]
  10008a994  fmov    d8, #0.50000000
  10008a998  fmul    d0, d2, d8
  10008a99c  fcmp    d9, d0
  10008a9a0  b.pl    loc_10008aa44                            ; if (self->initialPoint.x >= (or unordered) ([self frame].2 * 0.5))
  10008a9a4  add     x8, x21, x19
  10008a9a8  ldr     d9, [x8, #8]                             ; d9 = self->initialPoint.y
  10008a9ac  mov     x0, x19
  10008a9b0  mov     x1, x20
  10008a9b4  bl      _objc_msgSend                            ; [self frame]
  10008a9b8  fmul    d0, d3, d8
  10008a9bc  fcmp    d9, d0
  10008a9c0  b.pl    loc_10008aa44                            ; if (self->initialPoint.y >= (or unordered) ([self frame].3 * 0.5))
  10008a9c4  adrp    x8, #0x100416000
  10008a9c8  nop
  10008a9cc  ldr     x1, [x8, #0xc88]
  10008a9d0  mov     x0, x19
  10008a9d4  bl      _objc_msgSend                            ; [self weaponManager]
  10008a9d8  mov     x29, x29
  10008a9dc  bl      _objc_retainAutoreleasedReturnValue
  10008a9e0  mov     x20, x0
  10008a9e4  adrp    x8, #0x100417000
  10008a9e8  nop
  10008a9ec  ldr     x1, [x8, #0xc98]
  10008a9f0  bl      _objc_msgSend                            ; [[self weaponManager] shootWithMelee]
  10008a9f4  b       loc_10008aa2c
  10008a9f8  b       loc_10008abb8
loc_10008a9fc:
  10008a9fc  adrp    x8, #0x100416000
  10008aa00  nop
  10008aa04  ldr     x1, [x8, #0xc88]
  10008aa08  mov     x0, x19
  10008aa0c  bl      _objc_msgSend                            ; [self weaponManager]
  10008aa10  mov     x29, x29
  10008aa14  bl      _objc_retainAutoreleasedReturnValue
  10008aa18  mov     x20, x0
  10008aa1c  adrp    x8, #0x100417000
  10008aa20  nop
  10008aa24  ldr     x1, [x8, #0xc60]
  10008aa28  bl      _objc_msgSend                            ; [[self weaponManager] weaponSingleShot]
loc_10008aa2c:
  10008aa2c  mov     x0, x20
  10008aa30  ldp     x29, x30, [sp, #0x30]
  10008aa34  ldp     x20, x19, [sp, #0x20]
  10008aa38  ldp     x22, x21, [sp, #0x10]
  10008aa3c  ldp     d9, d8, [sp], #0x40
  10008aa40  b       _objc_release
loc_10008aa44:
  10008aa44  ldr     d9, [x19, x21]                           ; d9 = self->initialPoint.x
  10008aa48  mov     x0, x19
  10008aa4c  mov     x1, x20
  10008aa50  bl      _objc_msgSend                            ; [self frame]
  10008aa54  fmul    d0, d2, d8
  10008aa58  fcmp    d9, d0
  10008aa5c  b.lt    loc_10008aab8                            ; if (self->initialPoint.x < (or unordered) ([self frame].2 * 0.5))
  10008aa60  add     x8, x21, x19
  10008aa64  ldr     d9, [x8, #8]                             ; d9 = self->initialPoint.y
  10008aa68  mov     x0, x19
  10008aa6c  mov     x1, x20
  10008aa70  bl      _objc_msgSend                            ; [self frame]
  10008aa74  fmul    d0, d3, d8
  10008aa78  fcmp    d9, d0
  10008aa7c  b.pl    loc_10008aab8                            ; if (self->initialPoint.y >= (or unordered) ([self frame].3 * 0.5))
  10008aa80  adrp    x8, #0x100416000
  10008aa84  nop
  10008aa88  ldr     x1, [x8, #0xc88]
  10008aa8c  mov     x0, x19
  10008aa90  bl      _objc_msgSend                            ; [self weaponManager]
  10008aa94  mov     x29, x29
  10008aa98  bl      _objc_retainAutoreleasedReturnValue
  10008aa9c  mov     x20, x0
  10008aaa0  adrp    x8, #0x100417000
  10008aaa4  nop
  10008aaa8  ldr     x1, [x8, #0xc48]
  10008aaac  bl      _objc_msgSend                            ; [[self weaponManager] continuousStart]
  10008aab0  b       loc_10008aa2c
  10008aab4  b       loc_10008abb8
loc_10008aab8:
  10008aab8  ldr     d9, [x19, x21]                           ; d9 = self->initialPoint.x
  10008aabc  mov     x0, x19
  10008aac0  mov     x1, x20
  10008aac4  bl      _objc_msgSend                            ; [self frame]
  10008aac8  fmul    d0, d2, d8
  10008aacc  fcmp    d9, d0
  10008aad0  b.pl    loc_10008aaf4                            ; if (self->initialPoint.x >= (or unordered) ([self frame].2 * 0.5))
  10008aad4  add     x8, x21, x19
  10008aad8  ldr     d9, [x8, #8]                             ; d9 = self->initialPoint.y
  10008aadc  mov     x0, x19
  10008aae0  mov     x1, x20
  10008aae4  bl      _objc_msgSend                            ; [self frame]
  10008aae8  fmul    d0, d3, d8
  10008aaec  fcmp    d9, d0
  10008aaf0  b.ge    loc_10008ab44                            ; if (self->initialPoint.y >= ([self frame].3 * 0.5))
loc_10008aaf4:
  10008aaf4  ldr     d9, [x19, x21]                           ; d9 = self->initialPoint.x
  10008aaf8  mov     x0, x19
  10008aafc  mov     x1, x20
  10008ab00  bl      _objc_msgSend                            ; [self frame]
  10008ab04  fmul    d0, d2, d8
  10008ab08  fcmp    d9, d0
  10008ab0c  b.lt    loc_10008ab30                            ; if (self->initialPoint.x < (or unordered) ([self frame].2 * 0.5))
  10008ab10  add     x8, x21, x19
  10008ab14  ldr     d9, [x8, #8]                             ; d9 = self->initialPoint.y
  10008ab18  mov     x0, x19
  10008ab1c  mov     x1, x20
  10008ab20  bl      _objc_msgSend                            ; [self frame]
  10008ab24  fmul    d0, d3, d8
  10008ab28  fcmp    d9, d0
  10008ab2c  b.ge    loc_10008ab7c                            ; if (self->initialPoint.y >= ([self frame].3 * 0.5))
loc_10008ab30:
  10008ab30  ldp     x29, x30, [sp, #0x30]
  10008ab34  ldp     x20, x19, [sp, #0x20]
  10008ab38  ldp     x22, x21, [sp, #0x10]
  10008ab3c  ldp     d9, d8, [sp], #0x40
  10008ab40  ret
loc_10008ab44:
  10008ab44  adrp    x8, #0x100416000
  10008ab48  nop
  10008ab4c  ldr     x1, [x8, #0xc88]
  10008ab50  mov     x0, x19
  10008ab54  bl      _objc_msgSend                            ; [self weaponManager]
  10008ab58  mov     x29, x29
  10008ab5c  bl      _objc_retainAutoreleasedReturnValue
  10008ab60  mov     x20, x0
  10008ab64  adrp    x8, #0x100418000
  10008ab68  nop
  10008ab6c  ldr     x1, [x8, #0x720]
  10008ab70  bl      _objc_msgSend                            ; [[self weaponManager] selectNextWeapon]
  10008ab74  b       loc_10008aa2c
  10008ab78  b       loc_10008abb8
loc_10008ab7c:
  10008ab7c  adrp    x8, #0x100416000
  10008ab80  nop
  10008ab84  ldr     x1, [x8, #0xc88]
  10008ab88  mov     x0, x19
  10008ab8c  bl      _objc_msgSend                            ; [self weaponManager]
  10008ab90  mov     x29, x29
  10008ab94  bl      _objc_retainAutoreleasedReturnValue
  10008ab98  mov     x20, x0
  10008ab9c  adrp    x8, #0x100418000
  10008aba0  nop
  10008aba4  ldr     x1, [x8, #0x728]
  10008aba8  bl      _objc_msgSend                            ; [[self weaponManager] reloadGestureDown]
  10008abac  b       loc_10008aa2c
  10008abb0  b       loc_10008abb8
  10008abb4  b       loc_10008abb8
loc_10008abb8:
  10008abb8  mov     x19, x0
  10008abbc  mov     x0, x20
  10008abc0  bl      _objc_release
  10008abc4  mov     x0, x19
  10008abc8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView touchCanceled]
; address 0x10008abcc  size 136  kind objc
; ======================================================================
  10008abcc  stp     x20, x19, [sp, #-0x20]!
  10008abd0  stp     x29, x30, [sp, #0x10]
  10008abd4  add     x29, sp, #0x10
  10008abd8  mov     x19, x0
  10008abdc  adrp    x8, #0x100417000
  10008abe0  nop
  10008abe4  ldr     x1, [x8, #0xc68]
  10008abe8  mov     w2, #0
  10008abec  bl      _objc_msgSend                            ; [self setButtonIsDown:0]
  10008abf0  adrp    x8, #0x100416000
  10008abf4  nop
  10008abf8  ldr     x1, [x8, #0xc88]
  10008abfc  mov     x0, x19
  10008ac00  bl      _objc_msgSend                            ; [self weaponManager]
  10008ac04  mov     x29, x29
  10008ac08  bl      _objc_retainAutoreleasedReturnValue
  10008ac0c  mov     x20, x0
  10008ac10  adrp    x8, #0x100417000
  10008ac14  nop
  10008ac18  ldr     x1, [x8, #0xc70]
  10008ac1c  bl      _objc_msgSend                            ; [[self weaponManager] continuousStop]
  10008ac20  mov     x0, x20
  10008ac24  bl      _objc_release
  10008ac28  adrp    x8, #0x10041f000
  10008ac2c  ldrsw   x8, [x8, #0xedc]                         ; ivar offset ADAccessibleGameView.hasSwiped (+0x68)
  10008ac30  strb    wzr, [x19, x8]                           ; self->hasSwiped = 0
  10008ac34  ldp     x29, x30, [sp, #0x10]
  10008ac38  ldp     x20, x19, [sp], #0x20
  10008ac3c  ret
  10008ac40  mov     x19, x0
  10008ac44  mov     x0, x20
  10008ac48  bl      _objc_release
  10008ac4c  mov     x0, x19
  10008ac50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView setButtonIsDown:]
; address 0x10008ac54  size 164  kind objc
; ======================================================================
  10008ac54  stp     x20, x19, [sp, #-0x20]!
  10008ac58  stp     x29, x30, [sp, #0x10]
  10008ac5c  add     x29, sp, #0x10
  10008ac60  mov     x19, x0
  10008ac64  adrp    x8, #0x10041f000
  10008ac68  ldrsw   x8, [x8, #0xeec]                         ; ivar offset ADAccessibleGameView._buttonIsDown (+0xa0)
  10008ac6c  strb    w2, [x19, x8]                            ; self->_buttonIsDown = arg1
  10008ac70  tbnz    w2, #0, loc_10008acec                    ; if ((arg1 & 1))
  10008ac74  adrp    x8, #0x10041f000
  10008ac78  ldrsw   x8, [x8, #0xedc]                         ; ivar offset ADAccessibleGameView.hasSwiped (+0x68)
  10008ac7c  ldrb    w8, [x19, x8]                            ; w8 = self->hasSwiped
  10008ac80  cbnz    w8, loc_10008ace0                        ; if (self->hasSwiped != 0)
  10008ac84  adrp    x8, #0x10041f000
  10008ac88  ldrsw   x8, [x8, #0xee8]                         ; ivar offset ADAccessibleGameView.buttonPressedDuration (+0x6c)
  10008ac8c  ldr     s0, [x19, x8]                            ; s0 = self->buttonPressedDuration
  10008ac90  fcvt    d0, s0
  10008ac94  adrp    x8, #0x100181000
  10008ac98  ldr     d1, [x8, #0xa18]                         ; d1 = 0.2
  10008ac9c  fcmp    d0, d1
  10008aca0  b.pl    loc_10008ace0                            ; if (self->buttonPressedDuration >= (or unordered) 0.2)
  10008aca4  adrp    x8, #0x100416000
  10008aca8  nop
  10008acac  ldr     x1, [x8, #0xc88]
  10008acb0  mov     x0, x19
  10008acb4  bl      _objc_msgSend                            ; [self weaponManager]
  10008acb8  mov     x29, x29
  10008acbc  bl      _objc_retainAutoreleasedReturnValue
  10008acc0  mov     x20, x0
  10008acc4  bl      _objc_release
  10008acc8  cbz     x20, loc_10008ace0                       ; if ([self weaponManager] == 0)
  10008accc  adrp    x8, #0x100419000
  10008acd0  nop
  10008acd4  ldr     x1, [x8, #0xef0]
  10008acd8  mov     x0, x19
  10008acdc  bl      _objc_msgSend                            ; [self solveButtonPress]
loc_10008ace0:
  10008ace0  adrp    x8, #0x10041f000
  10008ace4  ldrsw   x8, [x8, #0xee8]                         ; ivar offset ADAccessibleGameView.buttonPressedDuration (+0x6c)
  10008ace8  str     wzr, [x19, x8]                           ; self->buttonPressedDuration = 0
loc_10008acec:
  10008acec  ldp     x29, x30, [sp, #0x10]
  10008acf0  ldp     x20, x19, [sp], #0x20
  10008acf4  ret

; ======================================================================
; -[ADAccessibleGameView handleTripleTap]
; address 0x10008acf8  size 196  kind objc
; ======================================================================
  10008acf8  stp     x22, x21, [sp, #-0x30]!
  10008acfc  stp     x20, x19, [sp, #0x10]
  10008ad00  stp     x29, x30, [sp, #0x20]
  10008ad04  add     x29, sp, #0x20
  10008ad08  mov     x19, x0
  10008ad0c  adrp    x8, #0x10041d000
  10008ad10  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10008ad14  adrp    x8, #0x100416000
  10008ad18  nop
  10008ad1c  ldr     x1, [x8, #0xc00]
  10008ad20  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10008ad24  mov     x29, x29
  10008ad28  bl      _objc_retainAutoreleasedReturnValue
  10008ad2c  mov     x20, x0
  10008ad30  adrp    x8, #0x100417000
  10008ad34  nop
  10008ad38  ldr     x1, [x8, #0xc90]
  10008ad3c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  10008ad40  mov     x21, x0
  10008ad44  mov     x0, x20
  10008ad48  bl      _objc_release
  10008ad4c  tbz     w21, #0, loc_10008ad60                   ; if (!([[ADGameParameters sharedParameters] buttonMode] & 1))
  10008ad50  ldp     x29, x30, [sp, #0x20]
  10008ad54  ldp     x20, x19, [sp, #0x10]
  10008ad58  ldp     x22, x21, [sp], #0x30
  10008ad5c  ret
loc_10008ad60:
  10008ad60  adrp    x8, #0x100416000
  10008ad64  nop
  10008ad68  ldr     x1, [x8, #0xc88]
  10008ad6c  mov     x0, x19
  10008ad70  bl      _objc_msgSend                            ; [self weaponManager]
  10008ad74  mov     x29, x29
  10008ad78  bl      _objc_retainAutoreleasedReturnValue
  10008ad7c  mov     x20, x0
  10008ad80  adrp    x8, #0x100417000
  10008ad84  nop
  10008ad88  ldr     x1, [x8, #0xc98]
  10008ad8c  bl      _objc_msgSend                            ; [[self weaponManager] shootWithMelee]
  10008ad90  mov     x0, x20
  10008ad94  ldp     x29, x30, [sp, #0x20]
  10008ad98  ldp     x20, x19, [sp, #0x10]
  10008ad9c  ldp     x22, x21, [sp], #0x30
  10008ada0  b       _objc_release
  10008ada4  b       loc_10008ada8
loc_10008ada8:
  10008ada8  mov     x19, x0
  10008adac  mov     x0, x20
  10008adb0  bl      _objc_release
  10008adb4  mov     x0, x19
  10008adb8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAccessibleGameView weaponManager]
; address 0x10008adbc  size 32  kind objc
; ======================================================================
  10008adbc  stp     x29, x30, [sp, #-0x10]!
  10008adc0  mov     x29, sp
  10008adc4  adrp    x8, #0x10041f000
  10008adc8  ldrsw   x8, [x8, #0xef0]                         ; ivar offset ADAccessibleGameView._weaponManager (+0xa8)
  10008adcc  add     x0, x0, x8
  10008add0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10008add4  ldp     x29, x30, [sp], #0x10
  10008add8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADAccessibleGameView setWeaponManager:]
; address 0x10008addc  size 20  kind objc
; ======================================================================
  10008addc  adrp    x8, #0x10041f000
  10008ade0  ldrsw   x8, [x8, #0xef0]                         ; ivar offset ADAccessibleGameView._weaponManager (+0xa8)
  10008ade4  add     x0, x0, x8
  10008ade8  mov     x1, x2
  10008adec  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADAccessibleGameView gameplayViewController]
; address 0x10008adf0  size 32  kind objc
; ======================================================================
  10008adf0  stp     x29, x30, [sp, #-0x10]!
  10008adf4  mov     x29, sp
  10008adf8  adrp    x8, #0x10041f000
  10008adfc  ldrsw   x8, [x8, #0xef4]                         ; ivar offset ADAccessibleGameView._gameplayViewController (+0xb0)
  10008ae00  add     x0, x0, x8
  10008ae04  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10008ae08  ldp     x29, x30, [sp], #0x10
  10008ae0c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADAccessibleGameView setGameplayViewController:]
; address 0x10008ae10  size 20  kind objc
; ======================================================================
  10008ae10  adrp    x8, #0x10041f000
  10008ae14  ldrsw   x8, [x8, #0xef4]                         ; ivar offset ADAccessibleGameView._gameplayViewController (+0xb0)
  10008ae18  add     x0, x0, x8
  10008ae1c  mov     x1, x2
  10008ae20  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADAccessibleGameView buttonIsDown]
; address 0x10008ae24  size 16  kind objc
; ======================================================================
  10008ae24  adrp    x8, #0x10041f000
  10008ae28  ldrsw   x8, [x8, #0xeec]                         ; ivar offset ADAccessibleGameView._buttonIsDown (+0xa0)
  10008ae2c  ldrb    w0, [x0, x8]                             ; w0 = self->_buttonIsDown
  10008ae30  ret

; ======================================================================
; -[ADAccessibleGameView .cxx_destruct]
; address 0x10008ae34  size 136  kind objc
; ======================================================================
  10008ae34  stp     x20, x19, [sp, #-0x20]!
  10008ae38  stp     x29, x30, [sp, #0x10]
  10008ae3c  add     x29, sp, #0x10
  10008ae40  mov     x19, x0
  10008ae44  adrp    x8, #0x10041f000
  10008ae48  ldrsw   x8, [x8, #0xef4]                         ; ivar offset ADAccessibleGameView._gameplayViewController (+0xb0)
  10008ae4c  add     x0, x19, x8
  10008ae50  bl      _objc_destroyWeak
  10008ae54  adrp    x8, #0x10041f000
  10008ae58  ldrsw   x8, [x8, #0xef0]                         ; ivar offset ADAccessibleGameView._weaponManager (+0xa8)
  10008ae5c  add     x0, x19, x8
  10008ae60  bl      _objc_destroyWeak
  10008ae64  adrp    x8, #0x10041f000
  10008ae68  ldrsw   x8, [x8, #0xed8]                         ; ivar offset ADAccessibleGameView.tripleTap (+0x98)
  10008ae6c  add     x0, x19, x8
  10008ae70  mov     x1, #0
  10008ae74  bl      _objc_storeStrong
  10008ae78  adrp    x8, #0x10041f000
  10008ae7c  ldrsw   x8, [x8, #0xed4]                         ; ivar offset ADAccessibleGameView.swipeDownGesture (+0x90)
  10008ae80  add     x0, x19, x8
  10008ae84  mov     x1, #0
  10008ae88  bl      _objc_storeStrong
  10008ae8c  adrp    x8, #0x10041f000
  10008ae90  ldrsw   x8, [x8, #0xed0]                         ; ivar offset ADAccessibleGameView.swipeUpGesture (+0x88)
  10008ae94  add     x0, x19, x8
  10008ae98  mov     x1, #0
  10008ae9c  bl      _objc_storeStrong
  10008aea0  mov     x1, #0
  10008aea4  adrp    x8, #0x10041f000
  10008aea8  ldrsw   x8, [x8, #0xef8]                         ; ivar offset ADAccessibleGameView.special (+0x80)
  10008aeac  add     x0, x19, x8
  10008aeb0  ldp     x29, x30, [sp, #0x10]
  10008aeb4  ldp     x20, x19, [sp], #0x20
  10008aeb8  b       _objc_storeStrong

; ======================================================================
; -[ADAccessibleGameView .cxx_construct]
; address 0x10008aebc  size 4  kind objc
; ======================================================================
  10008aebc  ret
