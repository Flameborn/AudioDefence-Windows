// unit ADNoBarViewController — 19 functions
//   0x100018a88     236  -[ADNoBarViewController initWithNibName:bundle:]
//   0x100018b74     624  -[ADNoBarViewController getNibName:]
//   0x100018de4     364  -[ADNoBarViewController loadMissionOverlay]
//   0x100018f50    1320  -[ADNoBarViewController loadStatusBar]
//   0x100019478     368  -[ADNoBarViewController dealloc]
//   0x1000195e8      28  -[ADNoBarViewController backButtonPressed]
//   0x100019604     472  -[ADNoBarViewController viewDidLayoutSubviews]
//   0x1000197dc     436  -[ADNoBarViewController toggleArmory]
//   0x100019990     480  -[ADNoBarViewController showNoDiamondsAlert]
//   0x100019b70       8  -[ADNoBarViewController application:supportedInterfaceOrientationsForWindow:]
//   0x100019b78      16  -[ADNoBarViewController shouldAutorotateToInterfaceOrientation:]
//   0x100019b88       8  -[ADNoBarViewController supportedInterfaceOrientations]
//   0x100019b90       8  -[ADNoBarViewController prefersStatusBarHidden]
//   0x100019b98       8  -[ADNoBarViewController shouldAutorotate]
//   0x100019ba0      16  -[ADNoBarViewController missionTopbarViewController]
//   0x100019bb0      56  -[ADNoBarViewController setMissionTopbarViewController:]
//   0x100019be8      16  -[ADNoBarViewController statusBarViewController]
//   0x100019bf8      56  -[ADNoBarViewController setStatusBarViewController:]
//   0x100019c30      64  -[ADNoBarViewController .cxx_destruct]

; ======================================================================
; -[ADNoBarViewController initWithNibName:bundle:]
; address 0x100018a88  size 236  kind objc
; ======================================================================
  100018a88  stp     x22, x21, [sp, #-0x30]!
  100018a8c  stp     x20, x19, [sp, #0x10]
  100018a90  stp     x29, x30, [sp, #0x20]
  100018a94  add     x29, sp, #0x20
  100018a98  sub     sp, sp, #0x10
  100018a9c  mov     x19, x3
  100018aa0  mov     x20, x0
  100018aa4  mov     x0, x2
  100018aa8  bl      _objc_retain
  100018aac  mov     x21, x0
  100018ab0  mov     x0, x19
  100018ab4  bl      _objc_retain
  100018ab8  mov     x19, x0
  100018abc  adrp    x8, #0x100417000
  100018ac0  nop
  100018ac4  ldr     x1, [x8, #0x778]
  100018ac8  mov     x0, x20
  100018acc  mov     x2, x21
  100018ad0  bl      _objc_msgSend                            ; [self getNibName:arg1]
  100018ad4  mov     x22, x0
  100018ad8  mov     x0, x21
  100018adc  bl      _objc_release
  100018ae0  mov     x0, x22
  100018ae4  bl      _objc_retainAutoreleasedReturnValue
  100018ae8  mov     x21, x0
  100018aec  str     x20, [sp]
  100018af0  adrp    x8, #0x10041e000
  100018af4  ldr     x8, [x8, #0xc08]
  100018af8  str     x8, [sp, #8]
  100018afc  adrp    x8, #0x100416000
  100018b00  nop
  100018b04  ldr     x1, [x8, #0xb40]
  100018b08  mov     x0, sp
  100018b0c  mov     x2, x21
  100018b10  mov     x3, x19
  100018b14  bl      _objc_msgSendSuper2                      ; [super initWithNibName:[self getNibName:arg1] bundle:arg2]
  100018b18  mov     x20, x0
  100018b1c  mov     x0, x21
  100018b20  bl      _objc_release
  100018b24  mov     x0, x19
  100018b28  bl      _objc_release
  100018b2c  mov     x0, x20
  100018b30  sub     sp, x29, #0x20
  100018b34  ldp     x29, x30, [sp, #0x20]
  100018b38  ldp     x20, x19, [sp, #0x10]
  100018b3c  ldp     x22, x21, [sp], #0x30
  100018b40  ret
  100018b44  mov     x22, x0
  100018b48  mov     x0, x21
  100018b4c  bl      _objc_release
  100018b50  mov     x0, x20
  100018b54  b       loc_100018b60
  100018b58  mov     x22, x0
  100018b5c  mov     x0, x21
loc_100018b60:
  100018b60  bl      _objc_release
  100018b64  mov     x0, x19
  100018b68  bl      _objc_release
  100018b6c  mov     x0, x22
  100018b70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADNoBarViewController getNibName:]
; address 0x100018b74  size 624  kind objc
; ======================================================================
  100018b74  stp     x24, x23, [sp, #-0x40]!
  100018b78  stp     x22, x21, [sp, #0x10]
  100018b7c  stp     x20, x19, [sp, #0x20]
  100018b80  stp     x29, x30, [sp, #0x30]
  100018b84  add     x29, sp, #0x30
  100018b88  sub     sp, sp, #0x10
  100018b8c  mov     x22, x0
  100018b90  mov     x0, x2
  100018b94  bl      _objc_retain
  100018b98  mov     x20, x0
  100018b9c  mov     x19, x20
  100018ba0  cbnz    x20, loc_100018bfc                       ; if (arg1 != 0)
  100018ba4  adrp    x8, #0x10041d000
  100018ba8  ldr     x21, [x8, #0xf78]                        ; class NSString
  100018bac  adrp    x8, #0x100417000
  100018bb0  nop
  100018bb4  ldr     x1, [x8, #0x2e0]
  100018bb8  mov     x19, #0
  100018bbc  mov     x0, x22
  100018bc0  bl      _objc_msgSend                            ; [self class]
  100018bc4  adrp    x8, #0x100416000
  100018bc8  nop
  100018bcc  ldr     x1, [x8, #0xee8]
  100018bd0  mov     x19, #0
  100018bd4  str     x0, [sp]
  100018bd8  adrp    x2, #0x1003ba000
  100018bdc  add     x2, x2, #0x190                           ; @"%@"
  100018be0  mov     x0, x21
  100018be4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@", [self class]]
  100018be8  mov     x29, x29
  100018bec  bl      _objc_retainAutoreleasedReturnValue
  100018bf0  mov     x19, x0
  100018bf4  mov     x0, x20
  100018bf8  bl      _objc_release
loc_100018bfc:
  100018bfc  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100018c00  cbz     w0, loc_100018cd0                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100018c04  adrp    x8, #0x10041d000
  100018c08  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100018c0c  adrp    x8, #0x100416000
  100018c10  nop
  100018c14  ldr     x1, [x8, #0xb58]
  100018c18  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100018c1c  mov     x29, x29
  100018c20  bl      _objc_retainAutoreleasedReturnValue
  100018c24  mov     x20, x0
  100018c28  adrp    x24, #0x10041d000
  100018c2c  ldr     x0, [x24, #0xf78]                        ; class NSString
  100018c30  adrp    x8, #0x100416000
  100018c34  nop
  100018c38  ldr     x21, [x8, #0xee8]
  100018c3c  str     x19, [sp]
  100018c40  adrp    x2, #0x1003ba000
  100018c44  add     x2, x2, #0x9b0                           ; @"Accessible_%@"
  100018c48  mov     x1, x21
  100018c4c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Accessible_%@", sp[0]]
  100018c50  mov     x29, x29
  100018c54  bl      _objc_retainAutoreleasedReturnValue
  100018c58  mov     x22, x0
  100018c5c  adrp    x8, #0x100417000
  100018c60  nop
  100018c64  ldr     x1, [x8, #0x780]
  100018c68  adrp    x3, #0x1003ba000
  100018c6c  add     x3, x3, #0x9d0                           ; @"nib"
  100018c70  mov     x0, x20
  100018c74  mov     x2, x22
  100018c78  bl      _objc_msgSend                            ; [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Accessible_%@", sp[0]] ofType:@"nib"]
  100018c7c  mov     x29, x29
  100018c80  bl      _objc_retainAutoreleasedReturnValue
  100018c84  mov     x23, x0
  100018c88  bl      _objc_release
  100018c8c  mov     x0, x22
  100018c90  bl      _objc_release
  100018c94  mov     x0, x20
  100018c98  bl      _objc_release
  100018c9c  cbz     x23, loc_100018cd0                       ; if ([[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"Accessible_%@", sp[0]] ofType:@"nib"] == 0)
  100018ca0  ldr     x0, [x24, #0xf78]                        ; class NSString
  100018ca4  str     x19, [sp]
  100018ca8  adrp    x2, #0x1003ba000
  100018cac  add     x2, x2, #0x9b0                           ; @"Accessible_%@"
  100018cb0  mov     x1, x21
  100018cb4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Accessible_%@", sp[0]]
  100018cb8  mov     x29, x29
  100018cbc  bl      _objc_retainAutoreleasedReturnValue
  100018cc0  mov     x20, x0
  100018cc4  mov     x0, x19
  100018cc8  bl      _objc_release
  100018ccc  mov     x19, x20
loc_100018cd0:
  100018cd0  adrp    x8, #0x10041e000
  100018cd4  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100018cd8  adrp    x8, #0x100417000
  100018cdc  nop
  100018ce0  ldr     x1, [x8, #0x788]
  100018ce4  mov     x20, #0
  100018ce8  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100018cec  mov     x29, x29
  100018cf0  bl      _objc_retainAutoreleasedReturnValue
  100018cf4  mov     x20, x0
  100018cf8  adrp    x8, #0x100417000
  100018cfc  nop
  100018d00  ldr     x1, [x8, #0x790]
  100018d04  bl      _objc_msgSend                            ; [[UIDevice currentDevice] userInterfaceIdiom]
  100018d08  mov     x21, x0
  100018d0c  mov     x0, x20
  100018d10  bl      _objc_release
  100018d14  adrp    x8, #0x10041d000
  100018d18  ldr     x0, [x8, #0xf78]                         ; class NSString
  100018d1c  adrp    x8, #0x100416000
  100018d20  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  100018d24  ldr     x1, [x8]
  100018d28  cmp     x21, #1
  100018d2c  b.ne    loc_100018d4c                            ; if ([[UIDevice currentDevice] userInterfaceIdiom] != 1)
  100018d30  mov     x20, #0
  100018d34  str     x19, [sp]
  100018d38  adrp    x2, #0x1003ba000
  100018d3c  add     x2, x2, #0x9f0                           ; @"%@_iPad"
  100018d40  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_iPad", sp[0]]
  100018d44  mov     x29, x29
  100018d48  b       loc_100018d64
loc_100018d4c:
  100018d4c  mov     x20, #0
  100018d50  str     x19, [sp]
  100018d54  adrp    x2, #0x1003ba000
  100018d58  add     x2, x2, #0x190                           ; @"%@"
  100018d5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@", sp[0]]
  100018d60  mov     x29, x29
loc_100018d64:
  100018d64  bl      _objc_retainAutoreleasedReturnValue
  100018d68  mov     x20, x0
  100018d6c  str     x20, [sp]
  100018d70  adrp    x0, #0x1003ba000
  100018d74  add     x0, x0, #0xa10                           ; @"Loading %@"
  100018d78  bl      _NSLog                                   ; NSLog(@"Loading %@", sp[0])
  100018d7c  mov     x0, x19
  100018d80  bl      _objc_release
  100018d84  mov     x0, x20
  100018d88  bl      _objc_autoreleaseReturnValue
  100018d8c  mov     x0, x20
  100018d90  sub     sp, x29, #0x30
  100018d94  ldp     x29, x30, [sp, #0x30]
  100018d98  ldp     x20, x19, [sp, #0x20]
  100018d9c  ldp     x22, x21, [sp, #0x10]
  100018da0  ldp     x24, x23, [sp], #0x40
  100018da4  ret
  100018da8  b       loc_100018db8
  100018dac  mov     x21, x0
  100018db0  b       loc_100018dc4
  100018db4  b       loc_100018db8
loc_100018db8:
  100018db8  mov     x21, x0
loc_100018dbc:
  100018dbc  mov     x0, x20
  100018dc0  bl      _objc_release
loc_100018dc4:
  100018dc4  mov     x0, x19
  100018dc8  bl      _objc_release
  100018dcc  mov     x0, x21
  100018dd0  bl      __Unwind_Resume                          ; Unwind_Resume()
  100018dd4  mov     x21, x0
  100018dd8  mov     x0, x22
  100018ddc  bl      _objc_release
  100018de0  b       loc_100018dbc

; ======================================================================
; -[ADNoBarViewController loadMissionOverlay]
; address 0x100018de4  size 364  kind objc
; ======================================================================
  100018de4  stp     x22, x21, [sp, #-0x30]!
  100018de8  stp     x20, x19, [sp, #0x10]
  100018dec  stp     x29, x30, [sp, #0x20]
  100018df0  add     x29, sp, #0x20
  100018df4  mov     x20, x0
  100018df8  adrp    x8, #0x10041e000
  100018dfc  ldr     x0, [x8, #0x58]                          ; class ADPauseViewController
  100018e00  adrp    x8, #0x100417000
  100018e04  nop
  100018e08  ldr     x1, [x8, #0x2e0]
  100018e0c  bl      _objc_msgSend                            ; [ADPauseViewController class]
  100018e10  mov     x2, x0
  100018e14  adrp    x8, #0x100417000
  100018e18  nop
  100018e1c  ldr     x1, [x8, #0x3b8]
  100018e20  mov     x0, x20
  100018e24  bl      _objc_msgSend                            ; [self isKindOfClass:[ADPauseViewController class]]
  100018e28  eor     w19, w0, #1
  100018e2c  adrp    x8, #0x10041e000
  100018e30  ldr     x0, [x8, #0x60]                          ; class ADMissionTopbarViewController
  100018e34  adrp    x8, #0x100416000
  100018e38  nop
  100018e3c  ldr     x1, [x8, #0xac8]
  100018e40  bl      _objc_msgSend                            ; [ADMissionTopbarViewController alloc]
  100018e44  adrp    x8, #0x100417000
  100018e48  nop
  100018e4c  ldr     x1, [x8, #0x798]
  100018e50  mov     x2, x19
  100018e54  bl      _objc_msgSend                            ; [[ADMissionTopbarViewController alloc] initWithSkip:([self isKindOfClass:[ADPauseViewController class]] ^ 1)]
  100018e58  mov     x19, x0
  100018e5c  adrp    x8, #0x100417000
  100018e60  nop
  100018e64  ldr     x1, [x8, #0x7a0]
  100018e68  mov     x0, x20
  100018e6c  mov     x2, x19
  100018e70  bl      _objc_msgSend                            ; [self setMissionTopbarViewController:[[ADMissionTopbarViewController alloc] initWithSkip:([self isKindOfClass:[ADPauseViewController class]] ^ 1)]]
  100018e74  mov     x0, x19
  100018e78  bl      _objc_release
  100018e7c  adrp    x8, #0x100416000
  100018e80  nop
  100018e84  ldr     x21, [x8, #0xf18]
  100018e88  mov     x0, x20
  100018e8c  mov     x1, x21
  100018e90  bl      _objc_msgSend                            ; [self view]
  100018e94  mov     x29, x29
  100018e98  bl      _objc_retainAutoreleasedReturnValue
  100018e9c  mov     x19, x0
  100018ea0  adrp    x8, #0x100417000
  100018ea4  nop
  100018ea8  ldr     x1, [x8, #0x7a8]
  100018eac  mov     x0, x20
  100018eb0  bl      _objc_msgSend                            ; [self missionTopbarViewController]
  100018eb4  mov     x29, x29
  100018eb8  bl      _objc_retainAutoreleasedReturnValue
  100018ebc  mov     x20, x0
  100018ec0  mov     x1, x21
  100018ec4  bl      _objc_msgSend                            ; [[self missionTopbarViewController] view]
  100018ec8  mov     x29, x29
  100018ecc  bl      _objc_retainAutoreleasedReturnValue
  100018ed0  mov     x21, x0
  100018ed4  adrp    x8, #0x100416000
  100018ed8  nop
  100018edc  ldr     x1, [x8, #0xf20]
  100018ee0  mov     x0, x19
  100018ee4  mov     x2, x21
  100018ee8  bl      _objc_msgSend                            ; [[self view] addSubview:[[self missionTopbarViewController] view]]
  100018eec  mov     x0, x21
  100018ef0  bl      _objc_release
  100018ef4  mov     x0, x20
  100018ef8  bl      _objc_release
  100018efc  mov     x0, x19
  100018f00  ldp     x29, x30, [sp, #0x20]
  100018f04  ldp     x20, x19, [sp, #0x10]
  100018f08  ldp     x22, x21, [sp], #0x30
  100018f0c  b       _objc_release
  100018f10  mov     x21, x0
  100018f14  b       loc_100018f40
  100018f18  mov     x21, x0
  100018f1c  b       loc_100018f40
  100018f20  mov     x21, x0
  100018f24  b       loc_100018f38
  100018f28  mov     x1, x21
  100018f2c  mov     x21, x0
  100018f30  mov     x0, x1
  100018f34  bl      _objc_release
loc_100018f38:
  100018f38  mov     x0, x20
  100018f3c  bl      _objc_release
loc_100018f40:
  100018f40  mov     x0, x19
  100018f44  bl      _objc_release
  100018f48  mov     x0, x21
  100018f4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADNoBarViewController loadStatusBar]
; address 0x100018f50  size 1320  kind objc
; ======================================================================
  100018f50  stp     d9, d8, [sp, #-0x70]!
  100018f54  stp     x28, x27, [sp, #0x10]
  100018f58  stp     x26, x25, [sp, #0x20]
  100018f5c  stp     x24, x23, [sp, #0x30]
  100018f60  stp     x22, x21, [sp, #0x40]
  100018f64  stp     x20, x19, [sp, #0x50]
  100018f68  stp     x29, x30, [sp, #0x60]
  100018f6c  add     x29, sp, #0x60
  100018f70  mov     x19, x0
  100018f74  adrp    x8, #0x10041e000
  100018f78  ldr     x0, [x8, #0x68]                          ; class ADStatusBarViewController
  100018f7c  adrp    x8, #0x100416000
  100018f80  nop
  100018f84  ldr     x1, [x8, #0xac8]
  100018f88  bl      _objc_msgSend                            ; [ADStatusBarViewController alloc]
  100018f8c  adrp    x8, #0x100416000
  100018f90  nop
  100018f94  ldr     x1, [x8, #0xb40]
  100018f98  mov     x2, #0
  100018f9c  mov     x3, #0
  100018fa0  bl      _objc_msgSend                            ; [[ADStatusBarViewController alloc] initWithNibName:0 bundle:0]
  100018fa4  mov     x20, x0
  100018fa8  adrp    x8, #0x100417000
  100018fac  nop
  100018fb0  ldr     x1, [x8, #0x7b0]
  100018fb4  mov     x0, x19
  100018fb8  mov     x2, x20
  100018fbc  bl      _objc_msgSend                            ; [self setStatusBarViewController:[[ADStatusBarViewController alloc] initWithNibName:0 bundle:0]]
  100018fc0  mov     x0, x20
  100018fc4  bl      _objc_release
  100018fc8  adrp    x8, #0x100417000
  100018fcc  nop
  100018fd0  ldr     x20, [x8, #0x2a8]
  100018fd4  mov     x0, x19
  100018fd8  mov     x1, x20
  100018fdc  bl      _objc_msgSend                            ; [self statusBarViewController]
  100018fe0  mov     x29, x29
  100018fe4  bl      _objc_retainAutoreleasedReturnValue
  100018fe8  mov     x22, x0
  100018fec  adrp    x8, #0x100416000
  100018ff0  nop
  100018ff4  ldr     x21, [x8, #0xf18]
  100018ff8  mov     x1, x21
  100018ffc  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  100019000  mov     x29, x29
  100019004  bl      _objc_retainAutoreleasedReturnValue
  100019008  mov     x23, x0
  10001900c  mov     x0, x19
  100019010  mov     x1, x20
  100019014  bl      _objc_msgSend                            ; [self statusBarViewController]
  100019018  mov     x29, x29
  10001901c  bl      _objc_retainAutoreleasedReturnValue
  100019020  mov     x24, x0
  100019024  mov     x1, x21
  100019028  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  10001902c  mov     x29, x29
  100019030  bl      _objc_retainAutoreleasedReturnValue
  100019034  mov     x25, x0
  100019038  adrp    x8, #0x100416000
  10001903c  nop
  100019040  ldr     x27, [x8, #0xf38]
  100019044  mov     x1, x27
  100019048  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] frame]
  10001904c  mov     v8.16b, v2.16b
  100019050  mov     x0, x19
  100019054  mov     x1, x20
  100019058  bl      _objc_msgSend                            ; [self statusBarViewController]
  10001905c  mov     x29, x29
  100019060  bl      _objc_retainAutoreleasedReturnValue
  100019064  mov     x26, x0
  100019068  mov     x1, x21
  10001906c  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  100019070  mov     x29, x29
  100019074  bl      _objc_retainAutoreleasedReturnValue
  100019078  mov     x28, x0
  10001907c  mov     x1, x27
  100019080  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] frame]
  100019084  adrp    x8, #0x100417000
  100019088  nop
  10001908c  ldr     x1, [x8, #0x7b8]
  100019090  movi    v0.16b, #0
  100019094  movi    v1.16b, #0
  100019098  mov     x0, x23
  10001909c  mov     v2.16b, v8.16b
  1000190a0  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] setFrame:{0, 0, [[[self statusBarViewController] view] frame].2, [[[self statusBarViewController] view] frame].3}]
  1000190a4  mov     x0, x28
  1000190a8  bl      _objc_release
  1000190ac  mov     x0, x26
  1000190b0  bl      _objc_release
  1000190b4  mov     x0, x25
  1000190b8  bl      _objc_release
  1000190bc  mov     x0, x24
  1000190c0  bl      _objc_release
  1000190c4  mov     x0, x23
  1000190c8  bl      _objc_release
  1000190cc  mov     x0, x22
  1000190d0  bl      _objc_release
  1000190d4  mov     x0, x19
  1000190d8  mov     x1, x20
  1000190dc  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000190e0  mov     x29, x29
  1000190e4  bl      _objc_retainAutoreleasedReturnValue
  1000190e8  mov     x22, x0
  1000190ec  mov     x1, x21
  1000190f0  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  1000190f4  mov     x29, x29
  1000190f8  bl      _objc_retainAutoreleasedReturnValue
  1000190fc  mov     x23, x0
  100019100  adrp    x8, #0x100417000
  100019104  nop
  100019108  ldr     x1, [x8, #0x7c0]
  10001910c  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] setNeedsLayout]
  100019110  mov     x0, x23
  100019114  bl      _objc_release
  100019118  mov     x0, x22
  10001911c  bl      _objc_release
  100019120  mov     x0, x19
  100019124  mov     x1, x21
  100019128  bl      _objc_msgSend                            ; [self view]
  10001912c  mov     x29, x29
  100019130  bl      _objc_retainAutoreleasedReturnValue
  100019134  mov     x22, x0
  100019138  mov     x0, x19
  10001913c  mov     x1, x20
  100019140  bl      _objc_msgSend                            ; [self statusBarViewController]
  100019144  mov     x29, x29
  100019148  bl      _objc_retainAutoreleasedReturnValue
  10001914c  mov     x23, x0
  100019150  mov     x1, x21
  100019154  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  100019158  mov     x29, x29
  10001915c  bl      _objc_retainAutoreleasedReturnValue
  100019160  mov     x21, x0
  100019164  adrp    x8, #0x100416000
  100019168  nop
  10001916c  ldr     x1, [x8, #0xf20]
  100019170  mov     x0, x22
  100019174  mov     x2, x21
  100019178  bl      _objc_msgSend                            ; [[self view] addSubview:[[self statusBarViewController] view]]
  10001917c  mov     x0, x21
  100019180  bl      _objc_release
  100019184  mov     x0, x23
  100019188  bl      _objc_release
  10001918c  mov     x0, x22
  100019190  bl      _objc_release
  100019194  mov     x0, x19
  100019198  mov     x1, x20
  10001919c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000191a0  mov     x29, x29
  1000191a4  bl      _objc_retainAutoreleasedReturnValue
  1000191a8  mov     x21, x0
  1000191ac  adrp    x8, #0x100417000
  1000191b0  nop
  1000191b4  ldr     x1, [x8, #0x7c8]
  1000191b8  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  1000191bc  mov     x29, x29
  1000191c0  bl      _objc_retainAutoreleasedReturnValue
  1000191c4  mov     x22, x0
  1000191c8  adrp    x8, #0x100417000
  1000191cc  nop
  1000191d0  ldr     x3, [x8, #0x410]
  1000191d4  adrp    x8, #0x100417000
  1000191d8  nop
  1000191dc  ldr     x1, [x8, #0x7d0]
  1000191e0  mov     w4, #0x40
  1000191e4  mov     x2, x19
  1000191e8  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] addTarget:self action:@selector(backButtonPressed) forControlEvents:64]
  1000191ec  mov     x0, x22
  1000191f0  bl      _objc_release
  1000191f4  mov     x0, x21
  1000191f8  bl      _objc_release
  1000191fc  mov     x0, x19
  100019200  mov     x1, x20
  100019204  bl      _objc_msgSend                            ; [self statusBarViewController]
  100019208  mov     x29, x29
  10001920c  bl      _objc_retainAutoreleasedReturnValue
  100019210  mov     x21, x0
  100019214  adrp    x8, #0x100417000
  100019218  nop
  10001921c  ldr     x1, [x8, #0x7d8]
  100019220  mov     x2, x19
  100019224  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:self]
  100019228  mov     x0, x21
  10001922c  bl      _objc_release
  100019230  adrp    x8, #0x10041d000
  100019234  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100019238  adrp    x8, #0x100416000
  10001923c  nop
  100019240  ldr     x1, [x8, #0xb28]
  100019244  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100019248  mov     x29, x29
  10001924c  bl      _objc_retainAutoreleasedReturnValue
  100019250  mov     x21, x0
  100019254  adrp    x8, #0x100416000
  100019258  nop
  10001925c  ldr     x1, [x8, #0xc18]
  100019260  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100019264  mov     x29, x29
  100019268  bl      _objc_retainAutoreleasedReturnValue
  10001926c  mov     x22, x0
  100019270  mov     x0, x19
  100019274  mov     x1, x20
  100019278  bl      _objc_msgSend                            ; [self statusBarViewController]
  10001927c  mov     x29, x29
  100019280  bl      _objc_retainAutoreleasedReturnValue
  100019284  mov     x23, x0
  100019288  adrp    x8, #0x100417000
  10001928c  nop
  100019290  ldr     x1, [x8, #0x7e0]
  100019294  mov     x0, x22
  100019298  mov     x2, x23
  10001929c  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] setStatusBar:[self statusBarViewController]]
  1000192a0  mov     x0, x23
  1000192a4  bl      _objc_release
  1000192a8  mov     x0, x22
  1000192ac  bl      _objc_release
  1000192b0  mov     x0, x21
  1000192b4  bl      _objc_release
  1000192b8  adrp    x8, #0x10041d000
  1000192bc  ldr     x0, [x8, #0xfb0]                         ; class ADArmoryViewController
  1000192c0  adrp    x8, #0x100417000
  1000192c4  nop
  1000192c8  ldr     x1, [x8, #0x2e0]
  1000192cc  bl      _objc_msgSend                            ; [ADArmoryViewController class]
  1000192d0  mov     x2, x0
  1000192d4  adrp    x8, #0x100417000
  1000192d8  nop
  1000192dc  ldr     x1, [x8, #0x3b8]
  1000192e0  mov     x0, x19
  1000192e4  bl      _objc_msgSend                            ; [self isKindOfClass:[ADArmoryViewController class]]
  1000192e8  cbz     w0, loc_100019364                        ; if ([self isKindOfClass:[ADArmoryViewController class]] == 0)
  1000192ec  mov     x0, x19
  1000192f0  mov     x1, x20
  1000192f4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000192f8  mov     x29, x29
  1000192fc  bl      _objc_retainAutoreleasedReturnValue
  100019300  mov     x20, x0
  100019304  adrp    x8, #0x100417000
  100019308  nop
  10001930c  ldr     x1, [x8, #0x1b0]
  100019310  bl      _objc_msgSend                            ; [[self statusBarViewController] armoryButton]
  100019314  mov     x29, x29
  100019318  bl      _objc_retainAutoreleasedReturnValue
  10001931c  mov     x21, x0
  100019320  adrp    x8, #0x100417000
  100019324  nop
  100019328  ldr     x1, [x8, #0x7e8]
  10001932c  adrp    x2, #0x1003ba000
  100019330  add     x2, x2, #0xa30                           ; @"Close armory"
  100019334  bl      _objc_msgSend                            ; [[[self statusBarViewController] armoryButton] setAccessibilityLabel:@"Close armory"]
  100019338  mov     x0, x21
  10001933c  bl      _objc_release
  100019340  mov     x0, x20
  100019344  ldp     x29, x30, [sp, #0x60]
  100019348  ldp     x20, x19, [sp, #0x50]
  10001934c  ldp     x22, x21, [sp, #0x40]
  100019350  ldp     x24, x23, [sp, #0x30]
  100019354  ldp     x26, x25, [sp, #0x20]
  100019358  ldp     x28, x27, [sp, #0x10]
  10001935c  ldp     d9, d8, [sp], #0x70
  100019360  b       _objc_release
loc_100019364:
  100019364  ldp     x29, x30, [sp, #0x60]
  100019368  ldp     x20, x19, [sp, #0x50]
  10001936c  ldp     x22, x21, [sp, #0x40]
  100019370  ldp     x24, x23, [sp, #0x30]
  100019374  ldp     x26, x25, [sp, #0x20]
  100019378  ldp     x28, x27, [sp, #0x10]
  10001937c  ldp     d9, d8, [sp], #0x70
  100019380  ret
  100019384  mov     x19, x0
  100019388  b       loc_1000193c8
  10001938c  mov     x19, x0
  100019390  mov     x0, x28
  100019394  bl      _objc_release
  100019398  b       loc_1000193c0
  10001939c  mov     x19, x0
  1000193a0  b       loc_100019468
  1000193a4  mov     x19, x0
  1000193a8  b       loc_1000193e0
  1000193ac  mov     x19, x0
  1000193b0  b       loc_1000193d8
  1000193b4  mov     x19, x0
  1000193b8  b       loc_1000193d0
  1000193bc  mov     x19, x0
loc_1000193c0:
  1000193c0  mov     x0, x26
  1000193c4  bl      _objc_release
loc_1000193c8:
  1000193c8  mov     x0, x25
  1000193cc  bl      _objc_release
loc_1000193d0:
  1000193d0  mov     x0, x24
loc_1000193d4:
  1000193d4  bl      _objc_release
loc_1000193d8:
  1000193d8  mov     x0, x23
  1000193dc  bl      _objc_release
loc_1000193e0:
  1000193e0  mov     x0, x22
  1000193e4  b       loc_10001946c
  1000193e8  mov     x19, x0
  1000193ec  b       loc_1000193e0
  1000193f0  mov     x19, x0
  1000193f4  b       loc_1000193d8
  1000193f8  mov     x19, x0
  1000193fc  b       loc_1000193e0
  100019400  mov     x19, x0
  100019404  b       loc_1000193d8
  100019408  mov     x19, x0
  10001940c  mov     x0, x21
  100019410  b       loc_1000193d4
  100019414  mov     x19, x0
  100019418  b       loc_10001944c
  10001941c  b       loc_100019430
  100019420  mov     x19, x0
  100019424  b       loc_10001944c
  100019428  mov     x19, x0
  10001942c  b       loc_10001944c
loc_100019430:
  100019430  mov     x19, x0
  100019434  b       loc_100019444
  100019438  mov     x19, x0
  10001943c  mov     x0, x23
  100019440  bl      _objc_release
loc_100019444:
  100019444  mov     x0, x22
  100019448  bl      _objc_release
loc_10001944c:
  10001944c  mov     x0, x21
  100019450  b       loc_10001946c
  100019454  mov     x19, x0
  100019458  b       loc_100019468
  10001945c  mov     x19, x0
  100019460  mov     x0, x21
  100019464  bl      _objc_release
loc_100019468:
  100019468  mov     x0, x20
loc_10001946c:
  10001946c  bl      _objc_release
  100019470  mov     x0, x19
  100019474  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADNoBarViewController dealloc]
; address 0x100019478  size 368  kind objc
; ======================================================================
  100019478  stp     x22, x21, [sp, #-0x30]!
  10001947c  stp     x20, x19, [sp, #0x10]
  100019480  stp     x29, x30, [sp, #0x20]
  100019484  add     x29, sp, #0x20
  100019488  sub     sp, sp, #0x20
  10001948c  mov     x19, x0
  100019490  adrp    x8, #0x100417000
  100019494  nop
  100019498  ldr     x20, [x8, #0x2a8]
  10001949c  mov     x1, x20
  1000194a0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000194a4  mov     x29, x29
  1000194a8  bl      _objc_retainAutoreleasedReturnValue
  1000194ac  mov     x21, x0
  1000194b0  bl      _objc_release
  1000194b4  cbz     x21, loc_10001950c                       ; if ([self statusBarViewController] == 0)
  1000194b8  mov     x0, x19
  1000194bc  mov     x1, x20
  1000194c0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000194c4  mov     x29, x29
  1000194c8  bl      _objc_retainAutoreleasedReturnValue
  1000194cc  mov     x21, x0
  1000194d0  adrp    x8, #0x100416000
  1000194d4  nop
  1000194d8  ldr     x1, [x8, #0xf18]
  1000194dc  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  1000194e0  mov     x29, x29
  1000194e4  bl      _objc_retainAutoreleasedReturnValue
  1000194e8  mov     x22, x0
  1000194ec  adrp    x8, #0x100417000
  1000194f0  nop
  1000194f4  ldr     x1, [x8, #0x1d0]
  1000194f8  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] removeFromSuperview]
  1000194fc  mov     x0, x22
  100019500  bl      _objc_release
  100019504  mov     x0, x21
  100019508  bl      _objc_release
loc_10001950c:
  10001950c  mov     x0, x19
  100019510  mov     x1, x20
  100019514  bl      _objc_msgSend                            ; [self statusBarViewController]
  100019518  mov     x29, x29
  10001951c  bl      _objc_retainAutoreleasedReturnValue
  100019520  mov     x21, x0
  100019524  adrp    x8, #0x100417000
  100019528  nop
  10001952c  ldr     x1, [x8, #0x7d8]
  100019530  mov     x2, #0
  100019534  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:0]
  100019538  mov     x0, x21
  10001953c  bl      _objc_release
  100019540  adrp    x8, #0x100417000
  100019544  nop
  100019548  ldr     x1, [x8, #0x7b0]
  10001954c  mov     x2, #0
  100019550  mov     x0, x19
  100019554  bl      _objc_msgSend                            ; [self setStatusBarViewController:0]
  100019558  str     x19, [sp, #0x10]
  10001955c  adrp    x8, #0x10041e000
  100019560  ldr     x8, [x8, #0xc08]
  100019564  str     x8, [sp, #0x18]
  100019568  adrp    x8, #0x100416000
  10001956c  nop
  100019570  ldr     x1, [x8, #0xfc8]
  100019574  add     x0, sp, #0x10
  100019578  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10001957c  sub     sp, x29, #0x20
  100019580  ldp     x29, x30, [sp, #0x20]
  100019584  ldp     x20, x19, [sp, #0x10]
  100019588  ldp     x22, x21, [sp], #0x30
  10001958c  ret
  100019590  mov     x20, x0
  100019594  b       loc_1000195b8
  100019598  b       loc_10001959c
loc_10001959c:
  10001959c  mov     x20, x0
  1000195a0  b       loc_1000195b0
  1000195a4  mov     x20, x0
  1000195a8  mov     x0, x22
  1000195ac  bl      _objc_release
loc_1000195b0:
  1000195b0  mov     x0, x21
  1000195b4  bl      _objc_release
loc_1000195b8:
  1000195b8  str     x19, [sp]
  1000195bc  adrp    x8, #0x10041e000
  1000195c0  ldr     x8, [x8, #0xc08]
  1000195c4  str     x8, [sp, #8]
  1000195c8  adrp    x8, #0x100416000
  1000195cc  nop
  1000195d0  ldr     x1, [x8, #0xfc8]
  1000195d4  mov     x0, sp
  1000195d8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000195dc  mov     x0, x20
  1000195e0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000195e4  bl      sub_10000b760

; ======================================================================
; -[ADNoBarViewController backButtonPressed]
; address 0x1000195e8  size 28  kind objc
; ======================================================================
  1000195e8  stp     x29, x30, [sp, #-0x10]!
  1000195ec  mov     x29, sp
  1000195f0  adrp    x0, #0x1003ba000
  1000195f4  add     x0, x0, #0xa50                           ; @"Back button"
  1000195f8  bl      _NSLog                                   ; NSLog(@"Back button", _cmd)
  1000195fc  ldp     x29, x30, [sp], #0x10
  100019600  ret

; ======================================================================
; -[ADNoBarViewController viewDidLayoutSubviews]
; address 0x100019604  size 472  kind objc
; ======================================================================
  100019604  stp     d9, d8, [sp, #-0x60]!
  100019608  stp     x26, x25, [sp, #0x10]
  10001960c  stp     x24, x23, [sp, #0x20]
  100019610  stp     x22, x21, [sp, #0x30]
  100019614  stp     x20, x19, [sp, #0x40]
  100019618  stp     x29, x30, [sp, #0x50]
  10001961c  add     x29, sp, #0x50
  100019620  sub     sp, sp, #0x10
  100019624  mov     x23, x0
  100019628  str     x23, [sp]
  10001962c  adrp    x8, #0x10041e000
  100019630  ldr     x8, [x8, #0xc08]
  100019634  str     x8, [sp, #8]
  100019638  adrp    x8, #0x100417000
  10001963c  nop
  100019640  ldr     x1, [x8, #0x7f0]
  100019644  mov     x0, sp
  100019648  bl      _objc_msgSendSuper2                      ; [super viewDidLayoutSubviews]
  10001964c  adrp    x8, #0x100417000
  100019650  nop
  100019654  ldr     x25, [x8, #0x2a8]
  100019658  mov     x0, x23
  10001965c  mov     x1, x25
  100019660  bl      _objc_msgSend                            ; [self statusBarViewController]
  100019664  mov     x29, x29
  100019668  bl      _objc_retainAutoreleasedReturnValue
  10001966c  mov     x19, x0
  100019670  adrp    x8, #0x100416000
  100019674  nop
  100019678  ldr     x24, [x8, #0xf18]
  10001967c  mov     x1, x24
  100019680  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  100019684  mov     x29, x29
  100019688  bl      _objc_retainAutoreleasedReturnValue
  10001968c  mov     x20, x0
  100019690  mov     x0, x23
  100019694  mov     x1, x25
  100019698  bl      _objc_msgSend                            ; [self statusBarViewController]
  10001969c  mov     x29, x29
  1000196a0  bl      _objc_retainAutoreleasedReturnValue
  1000196a4  mov     x21, x0
  1000196a8  mov     x1, x24
  1000196ac  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  1000196b0  mov     x29, x29
  1000196b4  bl      _objc_retainAutoreleasedReturnValue
  1000196b8  mov     x22, x0
  1000196bc  adrp    x8, #0x100416000
  1000196c0  nop
  1000196c4  ldr     x26, [x8, #0xf38]
  1000196c8  mov     x1, x26
  1000196cc  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] frame]
  1000196d0  mov     v8.16b, v2.16b
  1000196d4  mov     x0, x23
  1000196d8  mov     x1, x25
  1000196dc  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000196e0  mov     x29, x29
  1000196e4  bl      _objc_retainAutoreleasedReturnValue
  1000196e8  mov     x23, x0
  1000196ec  mov     x1, x24
  1000196f0  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  1000196f4  mov     x29, x29
  1000196f8  bl      _objc_retainAutoreleasedReturnValue
  1000196fc  mov     x25, x0
  100019700  mov     x1, x26
  100019704  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] frame]
  100019708  adrp    x8, #0x100417000
  10001970c  nop
  100019710  ldr     x1, [x8, #0x7b8]
  100019714  movi    v0.16b, #0
  100019718  movi    v1.16b, #0
  10001971c  mov     x0, x20
  100019720  mov     v2.16b, v8.16b
  100019724  bl      _objc_msgSend                            ; [[[self statusBarViewController] view] setFrame:{0, 0, [[[self statusBarViewController] view] frame].2, [[[self statusBarViewController] view] frame].3}]
  100019728  mov     x0, x25
  10001972c  bl      _objc_release
  100019730  mov     x0, x23
  100019734  bl      _objc_release
  100019738  mov     x0, x22
  10001973c  bl      _objc_release
  100019740  mov     x0, x21
  100019744  bl      _objc_release
  100019748  mov     x0, x20
  10001974c  bl      _objc_release
  100019750  mov     x0, x19
  100019754  bl      _objc_release
  100019758  sub     sp, x29, #0x50
  10001975c  ldp     x29, x30, [sp, #0x50]
  100019760  ldp     x20, x19, [sp, #0x40]
  100019764  ldp     x22, x21, [sp, #0x30]
  100019768  ldp     x24, x23, [sp, #0x20]
  10001976c  ldp     x26, x25, [sp, #0x10]
  100019770  ldp     d9, d8, [sp], #0x60
  100019774  ret
  100019778  mov     x24, x0
  10001977c  b       loc_1000197b4
  100019780  mov     x24, x0
  100019784  mov     x0, x25
  100019788  bl      _objc_release
  10001978c  b       loc_1000197ac
  100019790  mov     x24, x0
  100019794  b       loc_1000197cc
  100019798  mov     x24, x0
  10001979c  b       loc_1000197c4
  1000197a0  mov     x24, x0
  1000197a4  b       loc_1000197bc
  1000197a8  mov     x24, x0
loc_1000197ac:
  1000197ac  mov     x0, x23
  1000197b0  bl      _objc_release
loc_1000197b4:
  1000197b4  mov     x0, x22
  1000197b8  bl      _objc_release
loc_1000197bc:
  1000197bc  mov     x0, x21
  1000197c0  bl      _objc_release
loc_1000197c4:
  1000197c4  mov     x0, x20
  1000197c8  bl      _objc_release
loc_1000197cc:
  1000197cc  mov     x0, x19
  1000197d0  bl      _objc_release
  1000197d4  mov     x0, x24
  1000197d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADNoBarViewController toggleArmory]
; address 0x1000197dc  size 436  kind objc
; ======================================================================
  1000197dc  stp     x24, x23, [sp, #-0x40]!
  1000197e0  stp     x22, x21, [sp, #0x10]
  1000197e4  stp     x20, x19, [sp, #0x20]
  1000197e8  stp     x29, x30, [sp, #0x30]
  1000197ec  add     x29, sp, #0x30
  1000197f0  mov     x19, x0
  1000197f4  adrp    x23, #0x10041d000
  1000197f8  ldr     x0, [x23, #0xfb0]                        ; class ADArmoryViewController
  1000197fc  adrp    x8, #0x100417000
  100019800  nop
  100019804  ldr     x22, [x8, #0x2e0]
  100019808  mov     x1, x22
  10001980c  bl      _objc_msgSend                            ; [ADArmoryViewController class]
  100019810  mov     x2, x0
  100019814  adrp    x8, #0x100417000
  100019818  nop
  10001981c  ldr     x21, [x8, #0x3b8]
  100019820  mov     x0, x19
  100019824  mov     x1, x21
  100019828  bl      _objc_msgSend                            ; [self isKindOfClass:[ADArmoryViewController class]]
  10001982c  cbz     w0, loc_100019854                        ; if ([self isKindOfClass:[ADArmoryViewController class]] == 0)
  100019830  adrp    x8, #0x100417000
  100019834  nop
  100019838  ldr     x1, [x8, #0x410]
  10001983c  mov     x0, x19
  100019840  ldp     x29, x30, [sp, #0x30]
  100019844  ldp     x20, x19, [sp, #0x20]
  100019848  ldp     x22, x21, [sp, #0x10]
  10001984c  ldp     x24, x23, [sp], #0x40
  100019850  b       _objc_msgSend                            ; [self backButtonPressed]
loc_100019854:
  100019854  mov     x20, #0
  100019858  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10001985c  cbz     w0, loc_1000198a0                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100019860  adrp    x8, #0x10041e000
  100019864  ldr     x0, [x8, #0x70]                          ; class Accessible_ADArmoryViewController
  100019868  adrp    x8, #0x100416000
  10001986c  nop
  100019870  ldr     x1, [x8, #0xac8]
  100019874  mov     x20, #0
  100019878  bl      _objc_msgSend                            ; [Accessible_ADArmoryViewController alloc]
  10001987c  adrp    x8, #0x100416000
  100019880  nop
  100019884  ldr     x1, [x8, #0xb40]
  100019888  mov     x20, #0
  10001988c  mov     x3, #0
  100019890  adrp    x2, #0x1003ba000
  100019894  add     x2, x2, #0xa70                           ; @"Accessible_ADArmoryViewController"
  100019898  bl      _objc_msgSend                            ; [[Accessible_ADArmoryViewController alloc] initWithNibName:@"Accessible_ADArmoryViewController" bundle:0]
  10001989c  b       loc_100019940
loc_1000198a0:
  1000198a0  adrp    x8, #0x10041e000
  1000198a4  ldr     x0, [x8, #0x78]                          ; class ADTarotViewController
  1000198a8  mov     x20, #0
  1000198ac  mov     x1, x22
  1000198b0  bl      _objc_msgSend                            ; [ADTarotViewController class]
  1000198b4  mov     x2, x0
  1000198b8  mov     x20, #0
  1000198bc  mov     x0, x19
  1000198c0  mov     x1, x21
  1000198c4  bl      _objc_msgSend                            ; [self isKindOfClass:[ADTarotViewController class]]
  1000198c8  mov     x8, x0
  1000198cc  ldr     x0, [x23, #0xfb0]                        ; class ADArmoryViewController
  1000198d0  adrp    x9, #0x100416000
  1000198d4  add     x9, x9, #0xac8                           ; &@selector(alloc)
  1000198d8  ldr     x1, [x9]
  1000198dc  cbz     w8, loc_100019918                        ; if ([self isKindOfClass:[ADTarotViewController class]] == 0)
  1000198e0  mov     x20, #0
  1000198e4  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  1000198e8  adrp    x8, #0x100417000
  1000198ec  nop
  1000198f0  ldr     x1, [x8, #0x7f8]
  1000198f4  mov     x20, #0
  1000198f8  adrp    x2, #0x1003b9000
  1000198fc  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  100019900  adrp    x4, #0x1003ba000
  100019904  add     x4, x4, #0xa90                           ; @"loadout"
  100019908  mov     w5, #1
  10001990c  mov     x3, #0
  100019910  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 tab:@"loadout" loadoutEnabled:1]
  100019914  b       loc_100019940
loc_100019918:
  100019918  mov     x20, #0
  10001991c  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  100019920  adrp    x8, #0x100416000
  100019924  nop
  100019928  ldr     x1, [x8, #0xb40]
  10001992c  mov     x20, #0
  100019930  mov     x3, #0
  100019934  adrp    x2, #0x1003b9000
  100019938  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  10001993c  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0]
loc_100019940:
  100019940  mov     x20, x0
  100019944  adrp    x8, #0x100417000
  100019948  nop
  10001994c  ldr     x1, [x8, #0x208]
  100019950  mov     w3, #0
  100019954  mov     x4, #0
  100019958  mov     x0, x19
  10001995c  mov     x2, x20
  100019960  bl      _objc_msgSend                            ; [self presentViewController:x2 animated:0 completion:0]
  100019964  mov     x0, x20
  100019968  ldp     x29, x30, [sp, #0x30]
  10001996c  ldp     x20, x19, [sp, #0x20]
  100019970  ldp     x22, x21, [sp, #0x10]
  100019974  ldp     x24, x23, [sp], #0x40
  100019978  b       _objc_release
  10001997c  mov     x19, x0
  100019980  mov     x0, x20
  100019984  bl      _objc_release
  100019988  mov     x0, x19
  10001998c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADNoBarViewController showNoDiamondsAlert]
; address 0x100019990  size 480  kind objc
; ======================================================================
  100019990  stp     x26, x25, [sp, #-0x50]!
  100019994  stp     x24, x23, [sp, #0x10]
  100019998  stp     x22, x21, [sp, #0x20]
  10001999c  stp     x20, x19, [sp, #0x30]
  1000199a0  stp     x29, x30, [sp, #0x40]
  1000199a4  add     x29, sp, #0x40
  1000199a8  sub     sp, sp, #0x10
  1000199ac  mov     x20, x0
  1000199b0  adrp    x8, #0x10041e000
  1000199b4  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  1000199b8  adrp    x8, #0x100416000
  1000199bc  nop
  1000199c0  ldr     x1, [x8, #0xac8]
  1000199c4  bl      _objc_msgSend                            ; [UIAlertView alloc]
  1000199c8  mov     x22, x0
  1000199cc  adrp    x25, #0x10041d000
  1000199d0  ldr     x0, [x25, #0xee8]                        ; class NSBundle
  1000199d4  adrp    x8, #0x100416000
  1000199d8  nop
  1000199dc  ldr     x23, [x8, #0xb58]
  1000199e0  mov     x1, x23
  1000199e4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000199e8  mov     x29, x29
  1000199ec  bl      _objc_retainAutoreleasedReturnValue
  1000199f0  mov     x19, x0
  1000199f4  adrp    x8, #0x100416000
  1000199f8  nop
  1000199fc  ldr     x24, [x8, #0xb60]
  100019a00  mov     x4, #0
  100019a04  adrp    x2, #0x1003ba000
  100019a08  add     x2, x2, #0xab0                           ; @"DIAMONDS_ALERT_TITLE"
  100019a0c  adrp    x3, #0x1003b9000
  100019a10  add     x3, x3, #0x870                           ; @""
  100019a14  mov     x1, x24
  100019a18  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_TITLE" value:@"" table:0]
  100019a1c  mov     x29, x29
  100019a20  bl      _objc_retainAutoreleasedReturnValue
  100019a24  mov     x21, x0
  100019a28  ldr     x0, [x25, #0xee8]                        ; class NSBundle
  100019a2c  mov     x1, x23
  100019a30  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100019a34  mov     x29, x29
  100019a38  bl      _objc_retainAutoreleasedReturnValue
  100019a3c  mov     x23, x0
  100019a40  mov     x4, #0
  100019a44  adrp    x2, #0x1003ba000
  100019a48  add     x2, x2, #0xad0                           ; @"DIAMONDS_ALERT_CONTENT"
  100019a4c  adrp    x3, #0x1003b9000
  100019a50  add     x3, x3, #0x870                           ; @""
  100019a54  mov     x1, x24
  100019a58  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_CONTENT" value:@"" table:0]
  100019a5c  mov     x29, x29
  100019a60  bl      _objc_retainAutoreleasedReturnValue
  100019a64  mov     x24, x0
  100019a68  adrp    x8, #0x100417000
  100019a6c  nop
  100019a70  ldr     x1, [x8, #0x800]
  100019a74  mov     x4, #0
  100019a78  str     xzr, [sp]
  100019a7c  adrp    x6, #0x1003ba000
  100019a80  add     x6, x6, #0xaf0                           ; @"OK"
  100019a84  mov     x0, x22
  100019a88  mov     x2, x21
  100019a8c  mov     x3, x24
  100019a90  mov     x5, #0
  100019a94  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:0 otherButtonTitles:@"OK"]
  100019a98  mov     x22, x0
  100019a9c  mov     x0, x24
  100019aa0  bl      _objc_release
  100019aa4  mov     x0, x23
  100019aa8  bl      _objc_release
  100019aac  mov     x0, x21
  100019ab0  bl      _objc_release
  100019ab4  mov     x0, x19
  100019ab8  bl      _objc_release
  100019abc  adrp    x8, #0x100417000
  100019ac0  nop
  100019ac4  ldr     x1, [x8, #0x7d8]
  100019ac8  mov     x0, x22
  100019acc  mov     x2, x20
  100019ad0  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:0 otherButtonTitles:@"OK"] setDelegate:self]
  100019ad4  adrp    x8, #0x100417000
  100019ad8  nop
  100019adc  ldr     x1, [x8, #0x808]
  100019ae0  mov     x2, #-1
  100019ae4  mov     x0, x22
  100019ae8  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:0 otherButtonTitles:@"OK"] setCancelButtonIndex:-1]
  100019aec  adrp    x8, #0x100417000
  100019af0  nop
  100019af4  ldr     x1, [x8, #0x810]
  100019af8  mov     x0, x22
  100019afc  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"DIAMONDS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:0 otherButtonTitles:@"OK"] show]
  100019b00  mov     x0, x22
  100019b04  sub     sp, x29, #0x40
  100019b08  ldp     x29, x30, [sp, #0x40]
  100019b0c  ldp     x20, x19, [sp, #0x30]
  100019b10  ldp     x22, x21, [sp, #0x20]
  100019b14  ldp     x24, x23, [sp, #0x10]
  100019b18  ldp     x26, x25, [sp], #0x50
  100019b1c  b       _objc_release
  100019b20  mov     x20, x0
  100019b24  mov     x0, x22
  100019b28  b       loc_100019b64
  100019b2c  mov     x20, x0
  100019b30  b       loc_100019b60
  100019b34  mov     x20, x0
  100019b38  b       loc_100019b58
  100019b3c  mov     x20, x0
  100019b40  b       loc_100019b50
  100019b44  mov     x20, x0
  100019b48  mov     x0, x24
  100019b4c  bl      _objc_release
loc_100019b50:
  100019b50  mov     x0, x23
  100019b54  bl      _objc_release
loc_100019b58:
  100019b58  mov     x0, x21
  100019b5c  bl      _objc_release
loc_100019b60:
  100019b60  mov     x0, x19
loc_100019b64:
  100019b64  bl      _objc_release
  100019b68  mov     x0, x20
  100019b6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADNoBarViewController application:supportedInterfaceOrientationsForWindow:]
; address 0x100019b70  size 8  kind objc
; ======================================================================
  100019b70  mov     w0, #0x1a
  100019b74  ret

; ======================================================================
; -[ADNoBarViewController shouldAutorotateToInterfaceOrientation:]
; address 0x100019b78  size 16  kind objc
; ======================================================================
  100019b78  sub     x8, x2, #3
  100019b7c  cmp     x8, #2
  100019b80  cset    w0, lo
  100019b84  ret

; ======================================================================
; -[ADNoBarViewController supportedInterfaceOrientations]
; address 0x100019b88  size 8  kind objc
; ======================================================================
  100019b88  mov     w0, #0x18
  100019b8c  ret

; ======================================================================
; -[ADNoBarViewController prefersStatusBarHidden]
; address 0x100019b90  size 8  kind objc
; ======================================================================
  100019b90  mov     w0, #1
  100019b94  ret

; ======================================================================
; -[ADNoBarViewController shouldAutorotate]
; address 0x100019b98  size 8  kind objc
; ======================================================================
  100019b98  mov     w0, #1
  100019b9c  ret

; ======================================================================
; -[ADNoBarViewController missionTopbarViewController]
; address 0x100019ba0  size 16  kind objc
; ======================================================================
  100019ba0  adrp    x8, #0x10041f000
  100019ba4  ldrsw   x8, [x8, #0x608]                         ; ivar offset ADNoBarViewController._missionTopbarViewController (+0x140)
  100019ba8  ldr     x0, [x0, x8]                             ; x0 = self->_missionTopbarViewController
  100019bac  ret

; ======================================================================
; -[ADNoBarViewController setMissionTopbarViewController:]
; address 0x100019bb0  size 56  kind objc
; ======================================================================
  100019bb0  stp     x20, x19, [sp, #-0x20]!
  100019bb4  stp     x29, x30, [sp, #0x10]
  100019bb8  add     x29, sp, #0x10
  100019bbc  mov     x19, x0
  100019bc0  adrp    x8, #0x10041f000
  100019bc4  ldrsw   x20, [x8, #0x608]                        ; ivar offset ADNoBarViewController._missionTopbarViewController (+0x140)
  100019bc8  mov     x0, x2
  100019bcc  bl      _objc_retain
  100019bd0  ldr     x8, [x19, x20]                           ; x8 = self->_missionTopbarViewController
  100019bd4  str     x0, [x19, x20]                           ; self->_missionTopbarViewController = arg1
  100019bd8  mov     x0, x8
  100019bdc  ldp     x29, x30, [sp, #0x10]
  100019be0  ldp     x20, x19, [sp], #0x20
  100019be4  b       _objc_release

; ======================================================================
; -[ADNoBarViewController statusBarViewController]
; address 0x100019be8  size 16  kind objc
; ======================================================================
  100019be8  adrp    x8, #0x10041f000
  100019bec  ldrsw   x8, [x8, #0x60c]                         ; ivar offset ADNoBarViewController._statusBarViewController (+0x148)
  100019bf0  ldr     x0, [x0, x8]                             ; x0 = self->_statusBarViewController
  100019bf4  ret

; ======================================================================
; -[ADNoBarViewController setStatusBarViewController:]
; address 0x100019bf8  size 56  kind objc
; ======================================================================
  100019bf8  stp     x20, x19, [sp, #-0x20]!
  100019bfc  stp     x29, x30, [sp, #0x10]
  100019c00  add     x29, sp, #0x10
  100019c04  mov     x19, x0
  100019c08  adrp    x8, #0x10041f000
  100019c0c  ldrsw   x20, [x8, #0x60c]                        ; ivar offset ADNoBarViewController._statusBarViewController (+0x148)
  100019c10  mov     x0, x2
  100019c14  bl      _objc_retain
  100019c18  ldr     x8, [x19, x20]                           ; x8 = self->_statusBarViewController
  100019c1c  str     x0, [x19, x20]                           ; self->_statusBarViewController = arg1
  100019c20  mov     x0, x8
  100019c24  ldp     x29, x30, [sp, #0x10]
  100019c28  ldp     x20, x19, [sp], #0x20
  100019c2c  b       _objc_release

; ======================================================================
; -[ADNoBarViewController .cxx_destruct]
; address 0x100019c30  size 64  kind objc
; ======================================================================
  100019c30  stp     x20, x19, [sp, #-0x20]!
  100019c34  stp     x29, x30, [sp, #0x10]
  100019c38  add     x29, sp, #0x10
  100019c3c  mov     x19, x0
  100019c40  adrp    x8, #0x10041f000
  100019c44  ldrsw   x8, [x8, #0x60c]                         ; ivar offset ADNoBarViewController._statusBarViewController (+0x148)
  100019c48  add     x0, x19, x8
  100019c4c  mov     x1, #0
  100019c50  bl      _objc_storeStrong
  100019c54  mov     x1, #0
  100019c58  adrp    x8, #0x10041f000
  100019c5c  ldrsw   x8, [x8, #0x608]                         ; ivar offset ADNoBarViewController._missionTopbarViewController (+0x140)
  100019c60  add     x0, x19, x8
  100019c64  ldp     x29, x30, [sp, #0x10]
  100019c68  ldp     x20, x19, [sp], #0x20
  100019c6c  b       _objc_storeStrong
