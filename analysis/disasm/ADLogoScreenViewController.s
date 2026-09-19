// unit ADLogoScreenViewController — 19 functions
//   0x10009de3c     152  -[ADLogoScreenViewController viewDidLoad]
//   0x10009ded4      28  -[ADLogoScreenViewController loadView]
//   0x10009def0     260  -[ADLogoScreenViewController viewDidAppear:]
//   0x10009dff4     100  -[ADLogoScreenViewController viewDidAppear:]_block_invoke
//   0x10009e058       8  sub_10009e058
//   0x10009e060       8  sub_10009e060
//   0x10009e068      80  -[ADLogoScreenViewController viewDidAppear:]_block_invoke_2
//   0x10009e0b8       8  sub_10009e0b8
//   0x10009e0c0       8  sub_10009e0c0
//   0x10009e0c8      60  -[ADLogoScreenViewController didReceiveMemoryWarning]
//   0x10009e104      80  -[ADLogoScreenViewController fireTimer]
//   0x10009e154     156  -[ADLogoScreenViewController moveToOpener]
//   0x10009e1f0     100  -[ADLogoScreenViewController moveToOpener]_block_invoke
//   0x10009e254       8  sub_10009e254
//   0x10009e25c       8  sub_10009e25c
//   0x10009e264     292  -[ADLogoScreenViewController moveToOpener]_block_invoke_2
//   0x10009e388      16  -[ADLogoScreenViewController logo]
//   0x10009e398      56  -[ADLogoScreenViewController setLogo:]
//   0x10009e3d0      20  -[ADLogoScreenViewController .cxx_destruct]

; ======================================================================
; -[ADLogoScreenViewController viewDidLoad]
; address 0x10009de3c  size 152  kind objc
; ======================================================================
  10009de3c  stp     x20, x19, [sp, #-0x20]!
  10009de40  stp     x29, x30, [sp, #0x10]
  10009de44  add     x29, sp, #0x10
  10009de48  sub     sp, sp, #0x10
  10009de4c  mov     x19, x0
  10009de50  str     x19, [sp]
  10009de54  adrp    x8, #0x10041e000
  10009de58  ldr     x8, [x8, #0xec0]
  10009de5c  str     x8, [sp, #8]
  10009de60  adrp    x8, #0x100416000
  10009de64  nop
  10009de68  ldr     x1, [x8, #0xb48]
  10009de6c  mov     x0, sp
  10009de70  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10009de74  adrp    x8, #0x10041a000
  10009de78  nop
  10009de7c  ldr     x1, [x8, #0x260]
  10009de80  mov     x0, x19
  10009de84  bl      _objc_msgSend                            ; [self logo]
  10009de88  mov     x29, x29
  10009de8c  bl      _objc_retainAutoreleasedReturnValue
  10009de90  mov     x19, x0
  10009de94  adrp    x8, #0x100417000
  10009de98  nop
  10009de9c  ldr     x1, [x8, #0x828]
  10009dea0  movi    v0.16b, #0
  10009dea4  bl      _objc_msgSend                            ; [[self logo] setAlpha:0]
  10009dea8  mov     x0, x19
  10009deac  bl      _objc_release
  10009deb0  sub     sp, x29, #0x10
  10009deb4  ldp     x29, x30, [sp, #0x10]
  10009deb8  ldp     x20, x19, [sp], #0x20
  10009debc  ret
  10009dec0  mov     x20, x0
  10009dec4  mov     x0, x19
  10009dec8  bl      _objc_release
  10009decc  mov     x0, x20
  10009ded0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADLogoScreenViewController loadView]
; address 0x10009ded4  size 28  kind objc
; ======================================================================
  10009ded4  mov     x3, #0
  10009ded8  adrp    x8, #0x100416000
  10009dedc  nop
  10009dee0  ldr     x1, [x8, #0xbf0]
  10009dee4  adrp    x2, #0x1003bf000
  10009dee8  add     x2, x2, #0x790                           ; @"ADLogoScreenViewController"
  10009deec  b       _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADLogoScreenViewController" WithTagDictionary:0]

; ======================================================================
; -[ADLogoScreenViewController viewDidAppear:]
; address 0x10009def0  size 260  kind objc
; ======================================================================
  10009def0  stp     x22, x21, [sp, #-0x30]!
  10009def4  stp     x20, x19, [sp, #0x10]
  10009def8  stp     x29, x30, [sp, #0x20]
  10009defc  add     x29, sp, #0x20
  10009df00  sub     sp, sp, #0x60
  10009df04  mov     x19, x0
  10009df08  stur    x19, [x29, #-0x30]
  10009df0c  adrp    x8, #0x10041e000
  10009df10  ldr     x8, [x8, #0xec0]
  10009df14  stur    x8, [x29, #-0x28]
  10009df18  adrp    x8, #0x100417000
  10009df1c  nop
  10009df20  ldr     x1, [x8, #0x938]
  10009df24  sub     x0, x29, #0x30
  10009df28  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  10009df2c  adrp    x21, #0x1003b0000
  10009df30  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  10009df34  adrp    x8, #0x10041d000
  10009df38  ldr     x20, [x8, #0xf98]                        ; class UIView
  10009df3c  mov     w22, #-0x3e000000
  10009df40  str     x21, [sp, #0x28]
  10009df44  stp     w22, wzr, [sp, #0x30]
  10009df48  adr     x8, #0x10009dff4                         ; &-[ADLogoScreenViewController viewDidAppear:]_block_invoke
  10009df4c  nop
  10009df50  str     x8, [sp, #0x38]
  10009df54  adrp    x8, #0x1003b2000
  10009df58  add     x8, x8, #0x250                           ; &d_1003b2250
  10009df5c  str     x8, [sp, #0x40]
  10009df60  mov     x0, x19
  10009df64  bl      _objc_retain
  10009df68  str     x0, [sp, #0x48]
  10009df6c  str     x21, [sp]
  10009df70  stp     w22, wzr, [sp, #8]
  10009df74  adr     x8, #0x10009e068                         ; &-[ADLogoScreenViewController viewDidAppear:]_block_invoke_2
  10009df78  nop
  10009df7c  str     x8, [sp, #0x10]
  10009df80  adrp    x8, #0x1003b2000
  10009df84  add     x8, x8, #0x280                           ; &d_1003b2280
  10009df88  str     x8, [sp, #0x18]
  10009df8c  bl      _objc_retain
  10009df90  str     x0, [sp, #0x20]
  10009df94  adrp    x8, #0x100417000
  10009df98  nop
  10009df9c  ldr     x1, [x8, #0x880]
  10009dfa0  fmov    d0, #0.50000000
  10009dfa4  add     x2, sp, #0x28
  10009dfa8  mov     x3, sp
  10009dfac  mov     x0, x20
  10009dfb0  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADLogoScreenViewController viewDidAppear:]_block_invoke captures +0x20=self} completion:^{-[ADLogoScreenViewController viewDidAppear:]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADLogoScreenViewController viewDidApp…, +0x40=&d_1003b2250, +0x48=self}]
  10009dfb4  ldr     x0, [sp, #0x20]
  10009dfb8  bl      _objc_release
  10009dfbc  ldr     x0, [sp, #0x48]
  10009dfc0  bl      _objc_release
  10009dfc4  sub     sp, x29, #0x20
  10009dfc8  ldp     x29, x30, [sp, #0x20]
  10009dfcc  ldp     x20, x19, [sp, #0x10]
  10009dfd0  ldp     x22, x21, [sp], #0x30
  10009dfd4  ret
  10009dfd8  mov     x19, x0
  10009dfdc  ldr     x0, [sp, #0x20]
  10009dfe0  bl      _objc_release
  10009dfe4  ldr     x0, [sp, #0x48]
  10009dfe8  bl      _objc_release
  10009dfec  mov     x0, x19
  10009dff0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADLogoScreenViewController viewDidAppear:]_block_invoke
; address 0x10009dff4  size 100  kind block
; ======================================================================
  10009dff4  stp     x20, x19, [sp, #-0x20]!
  10009dff8  stp     x29, x30, [sp, #0x10]
  10009dffc  add     x29, sp, #0x10
  10009e000  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10009e004  adrp    x8, #0x10041a000
  10009e008  nop
  10009e00c  ldr     x1, [x8, #0x260]
  10009e010  bl      _objc_msgSend                            ; [self logo]
  10009e014  mov     x29, x29
  10009e018  bl      _objc_retainAutoreleasedReturnValue
  10009e01c  mov     x19, x0
  10009e020  adrp    x8, #0x100417000
  10009e024  nop
  10009e028  ldr     x1, [x8, #0x828]
  10009e02c  fmov    d0, #1.00000000
  10009e030  bl      _objc_msgSend                            ; [[self logo] setAlpha:1]
  10009e034  mov     x0, x19
  10009e038  ldp     x29, x30, [sp, #0x10]
  10009e03c  ldp     x20, x19, [sp], #0x20
  10009e040  b       _objc_release
  10009e044  mov     x20, x0
  10009e048  mov     x0, x19
  10009e04c  bl      _objc_release
  10009e050  mov     x0, x20
  10009e054  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10009e058
; address 0x10009e058  size 8  kind sub
; ======================================================================
  10009e058  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10009e05c  b       _objc_retain

; ======================================================================
; sub_10009e060
; address 0x10009e060  size 8  kind sub
; ======================================================================
  10009e060  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10009e064  b       _objc_release

; ======================================================================
; -[ADLogoScreenViewController viewDidAppear:]_block_invoke_2
; address 0x10009e068  size 80  kind block
; ======================================================================
  10009e068  stp     x20, x19, [sp, #-0x20]!
  10009e06c  stp     x29, x30, [sp, #0x10]
  10009e070  add     x29, sp, #0x10
  10009e074  mov     x19, x0
  10009e078  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10009e07c  mov     x3, #0
  10009e080  cmp     w0, #0
  10009e084  fmov    d0, #2.00000000
  10009e088  fmov    d1, #0.50000000
  10009e08c  fcsel   d0, d1, d0, ne
  10009e090  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10009e094  adrp    x8, #0x10041a000
  10009e098  nop
  10009e09c  adrp    x9, #0x100418000
  10009e0a0  nop
  10009e0a4  ldr     x2, [x8, #0x268]
  10009e0a8  ldr     x1, [x9, #0x188]
  10009e0ac  ldp     x29, x30, [sp, #0x10]
  10009e0b0  ldp     x20, x19, [sp], #0x20
  10009e0b4  b       _objc_msgSend                            ; [self performSelector:@selector(moveToOpener) withObject:0 afterDelay:(UIAccessibilityIsVoiceOverRunning() != 0 ? 0.5 : 2)]

; ======================================================================
; sub_10009e0b8
; address 0x10009e0b8  size 8  kind sub
; ======================================================================
  10009e0b8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10009e0bc  b       _objc_retain

; ======================================================================
; sub_10009e0c0
; address 0x10009e0c0  size 8  kind sub
; ======================================================================
  10009e0c0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10009e0c4  b       _objc_release

; ======================================================================
; -[ADLogoScreenViewController didReceiveMemoryWarning]
; address 0x10009e0c8  size 60  kind objc
; ======================================================================
  10009e0c8  stp     x29, x30, [sp, #-0x10]!
  10009e0cc  mov     x29, sp
  10009e0d0  sub     sp, sp, #0x10
  10009e0d4  str     x0, [sp]
  10009e0d8  adrp    x8, #0x10041e000
  10009e0dc  ldr     x8, [x8, #0xec0]
  10009e0e0  str     x8, [sp, #8]
  10009e0e4  adrp    x8, #0x100416000
  10009e0e8  nop
  10009e0ec  ldr     x1, [x8, #0xbf8]
  10009e0f0  mov     x0, sp
  10009e0f4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10009e0f8  mov     sp, x29
  10009e0fc  ldp     x29, x30, [sp], #0x10
  10009e100  ret

; ======================================================================
; -[ADLogoScreenViewController fireTimer]
; address 0x10009e104  size 80  kind objc
; ======================================================================
  10009e104  stp     x29, x30, [sp, #-0x10]!
  10009e108  mov     x29, sp
  10009e10c  mov     x8, x0
  10009e110  adrp    x9, #0x10041e000
  10009e114  ldr     x0, [x9, #0x30]                          ; class NSTimer
  10009e118  adrp    x9, #0x10041a000
  10009e11c  nop
  10009e120  ldr     x3, [x9, #0x268]
  10009e124  adrp    x9, #0x100417000
  10009e128  nop
  10009e12c  ldr     x1, [x9, #0x890]
  10009e130  mov     x4, #0
  10009e134  mov     w5, #0
  10009e138  fmov    d0, #2.00000000
  10009e13c  mov     x2, x8
  10009e140  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(moveToOpener) userInfo:0 repeats:0]
  10009e144  mov     x29, x29
  10009e148  bl      _objc_retainAutoreleasedReturnValue
  10009e14c  ldp     x29, x30, [sp], #0x10
  10009e150  b       _objc_release

; ======================================================================
; -[ADLogoScreenViewController moveToOpener]
; address 0x10009e154  size 156  kind objc
; ======================================================================
  10009e154  stp     x20, x19, [sp, #-0x20]!
  10009e158  stp     x29, x30, [sp, #0x10]
  10009e15c  add     x29, sp, #0x10
  10009e160  sub     sp, sp, #0x30
  10009e164  adrp    x8, #0x1003b0000
  10009e168  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10009e16c  adrp    x9, #0x10041d000
  10009e170  ldr     x19, [x9, #0xf98]                        ; class UIView
  10009e174  mov     w9, #-0x3e000000
  10009e178  str     x8, [sp, #8]
  10009e17c  stp     w9, wzr, [sp, #0x10]
  10009e180  adr     x8, #0x10009e1f0                         ; &-[ADLogoScreenViewController moveToOpener]_block_invoke
  10009e184  nop
  10009e188  str     x8, [sp, #0x18]
  10009e18c  adrp    x8, #0x1003b2000
  10009e190  add     x8, x8, #0x2b0                           ; &d_1003b22b0
  10009e194  str     x8, [sp, #0x20]
  10009e198  bl      _objc_retain
  10009e19c  str     x0, [sp, #0x28]
  10009e1a0  adrp    x8, #0x100417000
  10009e1a4  nop
  10009e1a8  ldr     x1, [x8, #0x880]
  10009e1ac  adrp    x3, #0x1003b2000
  10009e1b0  add     x3, x3, #0x300                           ; ^{-[ADLogoScreenViewController moveToOpener]_block_invoke_2}
  10009e1b4  fmov    d0, #0.50000000
  10009e1b8  add     x2, sp, #8
  10009e1bc  mov     x0, x19
  10009e1c0  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADLogoScreenViewController moveToOpener]_block_invoke captures +0x20=self} completion:^{-[ADLogoScreenViewController moveToOpener]_block_invoke_2}]
  10009e1c4  ldr     x0, [sp, #0x28]
  10009e1c8  bl      _objc_release
  10009e1cc  sub     sp, x29, #0x10
  10009e1d0  ldp     x29, x30, [sp, #0x10]
  10009e1d4  ldp     x20, x19, [sp], #0x20
  10009e1d8  ret
  10009e1dc  mov     x19, x0
  10009e1e0  ldr     x0, [sp, #0x28]
  10009e1e4  bl      _objc_release
  10009e1e8  mov     x0, x19
  10009e1ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADLogoScreenViewController moveToOpener]_block_invoke
; address 0x10009e1f0  size 100  kind block
; ======================================================================
  10009e1f0  stp     x20, x19, [sp, #-0x20]!
  10009e1f4  stp     x29, x30, [sp, #0x10]
  10009e1f8  add     x29, sp, #0x10
  10009e1fc  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10009e200  adrp    x8, #0x10041a000
  10009e204  nop
  10009e208  ldr     x1, [x8, #0x260]
  10009e20c  bl      _objc_msgSend                            ; [self logo]
  10009e210  mov     x29, x29
  10009e214  bl      _objc_retainAutoreleasedReturnValue
  10009e218  mov     x19, x0
  10009e21c  adrp    x8, #0x100417000
  10009e220  nop
  10009e224  ldr     x1, [x8, #0x828]
  10009e228  movi    v0.16b, #0
  10009e22c  bl      _objc_msgSend                            ; [[self logo] setAlpha:0]
  10009e230  mov     x0, x19
  10009e234  ldp     x29, x30, [sp, #0x10]
  10009e238  ldp     x20, x19, [sp], #0x20
  10009e23c  b       _objc_release
  10009e240  mov     x20, x0
  10009e244  mov     x0, x19
  10009e248  bl      _objc_release
  10009e24c  mov     x0, x20
  10009e250  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10009e254
; address 0x10009e254  size 8  kind sub
; ======================================================================
  10009e254  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10009e258  b       _objc_retain

; ======================================================================
; sub_10009e25c
; address 0x10009e25c  size 8  kind sub
; ======================================================================
  10009e25c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10009e260  b       _objc_release

; ======================================================================
; -[ADLogoScreenViewController moveToOpener]_block_invoke_2
; address 0x10009e264  size 292  kind block
; ======================================================================
  10009e264  stp     x20, x19, [sp, #-0x20]!
  10009e268  stp     x29, x30, [sp, #0x10]
  10009e26c  add     x29, sp, #0x10
  10009e270  adrp    x8, #0x10041d000
  10009e274  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009e278  adrp    x8, #0x100416000
  10009e27c  nop
  10009e280  ldr     x1, [x8, #0xc00]
  10009e284  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009e288  mov     x29, x29
  10009e28c  bl      _objc_retainAutoreleasedReturnValue
  10009e290  mov     x19, x0
  10009e294  adrp    x8, #0x100417000
  10009e298  nop
  10009e29c  ldr     x1, [x8, #0xc80]
  10009e2a0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009e2a4  mov     x20, x0
  10009e2a8  mov     x0, x19
  10009e2ac  bl      _objc_release
  10009e2b0  adrp    x8, #0x10041d000
  10009e2b4  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10009e2b8  adrp    x8, #0x100416000
  10009e2bc  nop
  10009e2c0  ldr     x1, [x8, #0xb28]
  10009e2c4  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10009e2c8  mov     x29, x29
  10009e2cc  bl      _objc_retainAutoreleasedReturnValue
  10009e2d0  mov     x19, x0
  10009e2d4  adrp    x8, #0x100416000
  10009e2d8  add     x8, x8, #0xc18                           ; &@selector(delegate)
  10009e2dc  ldr     x1, [x8]
  10009e2e0  cmn     w20, #1
  10009e2e4  b.eq    loc_10009e314                            ; if ([[ADGameParameters sharedParameters] controlScheme] == -1)
  10009e2e8  mov     x0, x19
  10009e2ec  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10009e2f0  mov     x29, x29
  10009e2f4  bl      _objc_retainAutoreleasedReturnValue
  10009e2f8  mov     x20, x0
  10009e2fc  adrp    x8, #0x100416000
  10009e300  nop
  10009e304  ldr     x1, [x8, #0xc20]
  10009e308  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToOpener]
  10009e30c  b       loc_10009e338
  10009e310  b       loc_10009e368
loc_10009e314:
  10009e314  mov     x0, x19
  10009e318  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10009e31c  mov     x29, x29
  10009e320  bl      _objc_retainAutoreleasedReturnValue
  10009e324  mov     x20, x0
  10009e328  adrp    x8, #0x10041a000
  10009e32c  nop
  10009e330  ldr     x1, [x8, #0x270]
  10009e334  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToInputModeSelectScreen]
loc_10009e338:
  10009e338  mov     x0, x20
  10009e33c  bl      _objc_release
  10009e340  mov     x0, x19
  10009e344  ldp     x29, x30, [sp, #0x10]
  10009e348  ldp     x20, x19, [sp], #0x20
  10009e34c  b       _objc_release
  10009e350  mov     x20, x0
  10009e354  b       loc_10009e378
  10009e358  mov     x20, x0
  10009e35c  b       loc_10009e378
  10009e360  mov     x20, x0
  10009e364  b       loc_10009e378
loc_10009e368:
  10009e368  mov     x1, x20
  10009e36c  mov     x20, x0
  10009e370  mov     x0, x1
  10009e374  bl      _objc_release
loc_10009e378:
  10009e378  mov     x0, x19
  10009e37c  bl      _objc_release
  10009e380  mov     x0, x20
  10009e384  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADLogoScreenViewController logo]
; address 0x10009e388  size 16  kind objc
; ======================================================================
  10009e388  adrp    x8, #0x100420000
  10009e38c  ldrsw   x8, [x8, #0x68]                          ; ivar offset ADLogoScreenViewController._logo (+0x140)
  10009e390  ldr     x0, [x0, x8]                             ; x0 = self->_logo
  10009e394  ret

; ======================================================================
; -[ADLogoScreenViewController setLogo:]
; address 0x10009e398  size 56  kind objc
; ======================================================================
  10009e398  stp     x20, x19, [sp, #-0x20]!
  10009e39c  stp     x29, x30, [sp, #0x10]
  10009e3a0  add     x29, sp, #0x10
  10009e3a4  mov     x19, x0
  10009e3a8  adrp    x8, #0x100420000
  10009e3ac  ldrsw   x20, [x8, #0x68]                         ; ivar offset ADLogoScreenViewController._logo (+0x140)
  10009e3b0  mov     x0, x2
  10009e3b4  bl      _objc_retain
  10009e3b8  ldr     x8, [x19, x20]                           ; x8 = self->_logo
  10009e3bc  str     x0, [x19, x20]                           ; self->_logo = arg1
  10009e3c0  mov     x0, x8
  10009e3c4  ldp     x29, x30, [sp, #0x10]
  10009e3c8  ldp     x20, x19, [sp], #0x20
  10009e3cc  b       _objc_release

; ======================================================================
; -[ADLogoScreenViewController .cxx_destruct]
; address 0x10009e3d0  size 20  kind objc
; ======================================================================
  10009e3d0  mov     x1, #0
  10009e3d4  adrp    x8, #0x100420000
  10009e3d8  ldrsw   x8, [x8, #0x68]                          ; ivar offset ADLogoScreenViewController._logo (+0x140)
  10009e3dc  add     x0, x0, x8
  10009e3e0  b       _objc_storeStrong
