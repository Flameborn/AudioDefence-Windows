// unit ADWeaponTouchArea — 5 functions
//   0x1000406a4     472  -[ADWeaponTouchArea initGestureRecognizers]
//   0x10004087c       8  -[ADWeaponTouchArea gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]
//   0x100040884     176  -[ADWeaponTouchArea handleSwipeUpGesture]
//   0x100040934     176  -[ADWeaponTouchArea handleSwipeDownGesture]
//   0x1000409e4      64  -[ADWeaponTouchArea .cxx_destruct]

; ======================================================================
; -[ADWeaponTouchArea initGestureRecognizers]
; address 0x1000406a4  size 472  kind objc
; ======================================================================
  1000406a4  stp     x28, x27, [sp, #-0x60]!
  1000406a8  stp     x26, x25, [sp, #0x10]
  1000406ac  stp     x24, x23, [sp, #0x20]
  1000406b0  stp     x22, x21, [sp, #0x30]
  1000406b4  stp     x20, x19, [sp, #0x40]
  1000406b8  stp     x29, x30, [sp, #0x50]
  1000406bc  add     x29, sp, #0x50
  1000406c0  sub     sp, sp, #0x10
  1000406c4  mov     x19, x0
  1000406c8  adrp    x27, #0x10041e000
  1000406cc  ldr     x0, [x27, #0x178]                        ; class UISwipeGestureRecognizer
  1000406d0  adrp    x8, #0x100416000
  1000406d4  nop
  1000406d8  ldr     x20, [x8, #0xac8]
  1000406dc  mov     x1, x20
  1000406e0  bl      _objc_msgSend                            ; [UISwipeGestureRecognizer alloc]
  1000406e4  adrp    x8, #0x100418000
  1000406e8  nop
  1000406ec  ldr     x3, [x8, #0x700]
  1000406f0  adrp    x8, #0x100417000
  1000406f4  nop
  1000406f8  ldr     x21, [x8, #0x638]
  1000406fc  mov     x1, x21
  100040700  mov     x2, x19
  100040704  bl      _objc_msgSend                            ; [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeUpGesture)]
  100040708  adrp    x8, #0x10041f000
  10004070c  ldrsw   x26, [x8, #0x8ec]                        ; ivar offset ADWeaponTouchArea.swipeUpGesture (+0x90)
  100040710  ldr     x8, [x19, x26]                           ; x8 = self->swipeUpGesture
  100040714  str     x0, [x19, x26]                           ; self->swipeUpGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeUpGesture)]
  100040718  mov     x0, x8
  10004071c  bl      _objc_release
  100040720  ldr     x0, [x19, x26]                           ; x0 = self->swipeUpGesture
  100040724  adrp    x8, #0x100417000
  100040728  nop
  10004072c  ldr     x22, [x8, #0xbf8]
  100040730  mov     w2, #1
  100040734  mov     x1, x22
  100040738  bl      _objc_msgSend                            ; [self->swipeUpGesture setNumberOfTouchesRequired:1]
  10004073c  ldr     x0, [x19, x26]                           ; x0 = self->swipeUpGesture
  100040740  adrp    x8, #0x100417000
  100040744  nop
  100040748  ldr     x23, [x8, #0x7d8]
  10004074c  mov     x1, x23
  100040750  mov     x2, x19
  100040754  bl      _objc_msgSend                            ; [self->swipeUpGesture setDelegate:self]
  100040758  ldr     x0, [x19, x26]                           ; x0 = self->swipeUpGesture
  10004075c  adrp    x8, #0x100417000
  100040760  nop
  100040764  ldr     x24, [x8, #0xbe8]
  100040768  mov     w2, #1
  10004076c  mov     x1, x24
  100040770  bl      _objc_msgSend                            ; [self->swipeUpGesture setCancelsTouchesInView:1]
  100040774  ldr     x0, [x19, x26]                           ; x0 = self->swipeUpGesture
  100040778  adrp    x8, #0x100418000
  10004077c  nop
  100040780  ldr     x25, [x8, #0x708]
  100040784  mov     w2, #4
  100040788  mov     x1, x25
  10004078c  bl      _objc_msgSend                            ; [self->swipeUpGesture setDirection:4]
  100040790  ldr     x2, [x19, x26]                           ; x2 = self->swipeUpGesture
  100040794  adrp    x8, #0x100417000
  100040798  nop
  10004079c  ldr     x26, [x8, #0x668]
  1000407a0  mov     x0, x19
  1000407a4  mov     x1, x26
  1000407a8  bl      _objc_msgSend                            ; [self addGestureRecognizer:self->swipeUpGesture]
  1000407ac  ldr     x0, [x27, #0x178]                        ; class UISwipeGestureRecognizer
  1000407b0  mov     x1, x20
  1000407b4  bl      _objc_msgSend                            ; [UISwipeGestureRecognizer alloc]
  1000407b8  adrp    x8, #0x100418000
  1000407bc  nop
  1000407c0  ldr     x3, [x8, #0x710]
  1000407c4  mov     x1, x21
  1000407c8  mov     x2, x19
  1000407cc  bl      _objc_msgSend                            ; [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeDownGesture)]
  1000407d0  adrp    x8, #0x10041f000
  1000407d4  ldrsw   x20, [x8, #0x8f0]                        ; ivar offset ADWeaponTouchArea.swipeDownGesture (+0x98)
  1000407d8  ldr     x8, [x19, x20]                           ; x8 = self->swipeDownGesture
  1000407dc  str     x0, [x19, x20]                           ; self->swipeDownGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeDownGesture)]
  1000407e0  mov     x0, x8
  1000407e4  bl      _objc_release
  1000407e8  ldr     x0, [x19, x20]                           ; x0 = self->swipeDownGesture
  1000407ec  mov     w2, #1
  1000407f0  mov     x1, x22
  1000407f4  bl      _objc_msgSend                            ; [self->swipeDownGesture setNumberOfTouchesRequired:1]
  1000407f8  ldr     x0, [x19, x20]                           ; x0 = self->swipeDownGesture
  1000407fc  mov     x1, x23
  100040800  mov     x2, x19
  100040804  bl      _objc_msgSend                            ; [self->swipeDownGesture setDelegate:self]
  100040808  ldr     x0, [x19, x20]                           ; x0 = self->swipeDownGesture
  10004080c  mov     w2, #1
  100040810  mov     x1, x24
  100040814  bl      _objc_msgSend                            ; [self->swipeDownGesture setCancelsTouchesInView:1]
  100040818  ldr     x0, [x19, x20]                           ; x0 = self->swipeDownGesture
  10004081c  mov     w2, #8
  100040820  mov     x1, x25
  100040824  bl      _objc_msgSend                            ; [self->swipeDownGesture setDirection:8]
  100040828  ldr     x2, [x19, x20]                           ; x2 = self->swipeDownGesture
  10004082c  mov     x0, x19
  100040830  mov     x1, x26
  100040834  bl      _objc_msgSend                            ; [self addGestureRecognizer:self->swipeDownGesture]
  100040838  str     x19, [sp]
  10004083c  adrp    x8, #0x10041e000
  100040840  ldr     x8, [x8, #0xce8]
  100040844  str     x8, [sp, #8]
  100040848  adrp    x8, #0x100417000
  10004084c  nop
  100040850  ldr     x1, [x8, #0xbb8]
  100040854  mov     x0, sp
  100040858  bl      _objc_msgSendSuper2                      ; [super initGestureRecognizers]
  10004085c  sub     sp, x29, #0x50
  100040860  ldp     x29, x30, [sp, #0x50]
  100040864  ldp     x20, x19, [sp, #0x40]
  100040868  ldp     x22, x21, [sp, #0x30]
  10004086c  ldp     x24, x23, [sp, #0x20]
  100040870  ldp     x26, x25, [sp, #0x10]
  100040874  ldp     x28, x27, [sp], #0x60
  100040878  ret

; ======================================================================
; -[ADWeaponTouchArea gestureRecognizer:shouldRecognizeSimultaneouslyWithGestureRecognizer:]
; address 0x10004087c  size 8  kind objc
; ======================================================================
  10004087c  mov     w0, #1
  100040880  ret

; ======================================================================
; -[ADWeaponTouchArea handleSwipeUpGesture]
; address 0x100040884  size 176  kind objc
; ======================================================================
  100040884  stp     x22, x21, [sp, #-0x30]!
  100040888  stp     x20, x19, [sp, #0x10]
  10004088c  stp     x29, x30, [sp, #0x20]
  100040890  add     x29, sp, #0x20
  100040894  mov     x19, x0
  100040898  adrp    x8, #0x100418000
  10004089c  nop
  1000408a0  ldr     x1, [x8, #0x718]
  1000408a4  bl      _objc_msgSend                            ; [self handleSwipeGesture]
  1000408a8  adrp    x8, #0x100416000
  1000408ac  nop
  1000408b0  ldr     x1, [x8, #0xc88]
  1000408b4  mov     x0, x19
  1000408b8  bl      _objc_msgSend                            ; [self weaponManager]
  1000408bc  mov     x29, x29
  1000408c0  bl      _objc_retainAutoreleasedReturnValue
  1000408c4  mov     x20, x0
  1000408c8  adrp    x8, #0x100418000
  1000408cc  nop
  1000408d0  ldr     x1, [x8, #0x720]
  1000408d4  bl      _objc_msgSend                            ; [[self weaponManager] selectNextWeapon]
  1000408d8  mov     x0, x20
  1000408dc  bl      _objc_release
  1000408e0  adrp    x8, #0x10041f000
  1000408e4  ldrsw   x21, [x8, #0x8ec]                        ; ivar offset ADWeaponTouchArea.swipeUpGesture (+0x90)
  1000408e8  ldr     x0, [x19, x21]                           ; x0 = self->swipeUpGesture
  1000408ec  adrp    x8, #0x100417000
  1000408f0  nop
  1000408f4  ldr     x20, [x8, #0x878]
  1000408f8  mov     w2, #0
  1000408fc  mov     x1, x20
  100040900  bl      _objc_msgSend                            ; [self->swipeUpGesture setEnabled:0]
  100040904  ldr     x0, [x19, x21]                           ; x0 = self->swipeUpGesture
  100040908  mov     w2, #1
  10004090c  mov     x1, x20
  100040910  ldp     x29, x30, [sp, #0x20]
  100040914  ldp     x20, x19, [sp, #0x10]
  100040918  ldp     x22, x21, [sp], #0x30
  10004091c  b       _objc_msgSend                            ; [self->swipeUpGesture setEnabled:1]
  100040920  mov     x19, x0
  100040924  mov     x0, x20
  100040928  bl      _objc_release
  10004092c  mov     x0, x19
  100040930  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponTouchArea handleSwipeDownGesture]
; address 0x100040934  size 176  kind objc
; ======================================================================
  100040934  stp     x22, x21, [sp, #-0x30]!
  100040938  stp     x20, x19, [sp, #0x10]
  10004093c  stp     x29, x30, [sp, #0x20]
  100040940  add     x29, sp, #0x20
  100040944  mov     x19, x0
  100040948  adrp    x8, #0x100418000
  10004094c  nop
  100040950  ldr     x1, [x8, #0x718]
  100040954  bl      _objc_msgSend                            ; [self handleSwipeGesture]
  100040958  adrp    x8, #0x100416000
  10004095c  nop
  100040960  ldr     x1, [x8, #0xc88]
  100040964  mov     x0, x19
  100040968  bl      _objc_msgSend                            ; [self weaponManager]
  10004096c  mov     x29, x29
  100040970  bl      _objc_retainAutoreleasedReturnValue
  100040974  mov     x20, x0
  100040978  adrp    x8, #0x100418000
  10004097c  nop
  100040980  ldr     x1, [x8, #0x728]
  100040984  bl      _objc_msgSend                            ; [[self weaponManager] reloadGestureDown]
  100040988  mov     x0, x20
  10004098c  bl      _objc_release
  100040990  adrp    x8, #0x10041f000
  100040994  ldrsw   x21, [x8, #0x8f0]                        ; ivar offset ADWeaponTouchArea.swipeDownGesture (+0x98)
  100040998  ldr     x0, [x19, x21]                           ; x0 = self->swipeDownGesture
  10004099c  adrp    x8, #0x100417000
  1000409a0  nop
  1000409a4  ldr     x20, [x8, #0x878]
  1000409a8  mov     w2, #0
  1000409ac  mov     x1, x20
  1000409b0  bl      _objc_msgSend                            ; [self->swipeDownGesture setEnabled:0]
  1000409b4  ldr     x0, [x19, x21]                           ; x0 = self->swipeDownGesture
  1000409b8  mov     w2, #1
  1000409bc  mov     x1, x20
  1000409c0  ldp     x29, x30, [sp, #0x20]
  1000409c4  ldp     x20, x19, [sp, #0x10]
  1000409c8  ldp     x22, x21, [sp], #0x30
  1000409cc  b       _objc_msgSend                            ; [self->swipeDownGesture setEnabled:1]
  1000409d0  mov     x19, x0
  1000409d4  mov     x0, x20
  1000409d8  bl      _objc_release
  1000409dc  mov     x0, x19
  1000409e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeaponTouchArea .cxx_destruct]
; address 0x1000409e4  size 64  kind objc
; ======================================================================
  1000409e4  stp     x20, x19, [sp, #-0x20]!
  1000409e8  stp     x29, x30, [sp, #0x10]
  1000409ec  add     x29, sp, #0x10
  1000409f0  mov     x19, x0
  1000409f4  adrp    x8, #0x10041f000
  1000409f8  ldrsw   x8, [x8, #0x8f0]                         ; ivar offset ADWeaponTouchArea.swipeDownGesture (+0x98)
  1000409fc  add     x0, x19, x8
  100040a00  mov     x1, #0
  100040a04  bl      _objc_storeStrong
  100040a08  mov     x1, #0
  100040a0c  adrp    x8, #0x10041f000
  100040a10  ldrsw   x8, [x8, #0x8ec]                         ; ivar offset ADWeaponTouchArea.swipeUpGesture (+0x90)
  100040a14  add     x0, x19, x8
  100040a18  ldp     x29, x30, [sp, #0x10]
  100040a1c  ldp     x20, x19, [sp], #0x20
  100040a20  b       _objc_storeStrong
