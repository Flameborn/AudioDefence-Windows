// unit ADAboutCreditsViewController — 11 functions
//   0x1000209b8     140  -[ADAboutCreditsViewController initWithNibName:bundle:]
//   0x100020a44    1120  -[ADAboutCreditsViewController viewDidLoad]
//   0x100020ea4     332  -[ADAboutCreditsViewController loadView]
//   0x100020ff0     104  -[ADAboutCreditsViewController backButtonPressed]
//   0x100021058       4  -[ADAboutCreditsViewController backButtonPressed]_block_invoke
//   0x10002105c      60  -[ADAboutCreditsViewController didReceiveMemoryWarning]
//   0x100021098      16  -[ADAboutCreditsViewController aboutTextView]
//   0x1000210a8      56  -[ADAboutCreditsViewController setAboutTextView:]
//   0x1000210e0      16  -[ADAboutCreditsViewController creditsTextView]
//   0x1000210f0      56  -[ADAboutCreditsViewController setCreditsTextView:]
//   0x100021128      64  -[ADAboutCreditsViewController .cxx_destruct]

; ======================================================================
; -[ADAboutCreditsViewController initWithNibName:bundle:]
; address 0x1000209b8  size 140  kind objc
; ======================================================================
  1000209b8  stp     x22, x21, [sp, #-0x30]!
  1000209bc  stp     x20, x19, [sp, #0x10]
  1000209c0  stp     x29, x30, [sp, #0x20]
  1000209c4  add     x29, sp, #0x20
  1000209c8  sub     sp, sp, #0x10
  1000209cc  mov     x20, x3
  1000209d0  mov     x21, x0
  1000209d4  mov     x0, x2
  1000209d8  bl      _objc_retain
  1000209dc  mov     x19, x0
  1000209e0  str     x21, [sp]
  1000209e4  adrp    x8, #0x10041e000
  1000209e8  ldr     x8, [x8, #0xc40]
  1000209ec  str     x8, [sp, #8]
  1000209f0  adrp    x8, #0x100416000
  1000209f4  nop
  1000209f8  ldr     x1, [x8, #0xb40]
  1000209fc  mov     x0, sp
  100020a00  mov     x2, x19
  100020a04  mov     x3, x20
  100020a08  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100020a0c  mov     x20, x0
  100020a10  mov     x0, x19
  100020a14  bl      _objc_release
  100020a18  mov     x0, x20
  100020a1c  sub     sp, x29, #0x20
  100020a20  ldp     x29, x30, [sp, #0x20]
  100020a24  ldp     x20, x19, [sp, #0x10]
  100020a28  ldp     x22, x21, [sp], #0x30
  100020a2c  ret
  100020a30  mov     x20, x0
  100020a34  mov     x0, x19
  100020a38  bl      _objc_release
  100020a3c  mov     x0, x20
  100020a40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAboutCreditsViewController viewDidLoad]
; address 0x100020a44  size 1120  kind objc
; ======================================================================
  100020a44  stp     d9, d8, [sp, #-0x70]!
  100020a48  stp     x28, x27, [sp, #0x10]
  100020a4c  stp     x26, x25, [sp, #0x20]
  100020a50  stp     x24, x23, [sp, #0x30]
  100020a54  stp     x22, x21, [sp, #0x40]
  100020a58  stp     x20, x19, [sp, #0x50]
  100020a5c  stp     x29, x30, [sp, #0x60]
  100020a60  add     x29, sp, #0x60
  100020a64  sub     sp, sp, #0x20
  100020a68  mov     x19, x0
  100020a6c  str     x19, [sp, #0x10]
  100020a70  adrp    x8, #0x10041e000
  100020a74  ldr     x8, [x8, #0xc40]
  100020a78  str     x8, [sp, #0x18]
  100020a7c  adrp    x8, #0x100416000
  100020a80  nop
  100020a84  ldr     x1, [x8, #0xb48]
  100020a88  add     x0, sp, #0x10
  100020a8c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100020a90  adrp    x8, #0x100417000
  100020a94  nop
  100020a98  ldr     x20, [x8, #0x2a8]
  100020a9c  mov     x0, x19
  100020aa0  mov     x1, x20
  100020aa4  bl      _objc_msgSend                            ; [self statusBarViewController]
  100020aa8  mov     x29, x29
  100020aac  bl      _objc_retainAutoreleasedReturnValue
  100020ab0  mov     x21, x0
  100020ab4  adrp    x8, #0x100417000
  100020ab8  nop
  100020abc  ldr     x1, [x8, #0x2b0]
  100020ac0  mov     w2, #0
  100020ac4  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  100020ac8  mov     x0, x21
  100020acc  bl      _objc_release
  100020ad0  mov     x0, x19
  100020ad4  mov     x1, x20
  100020ad8  bl      _objc_msgSend                            ; [self statusBarViewController]
  100020adc  mov     x29, x29
  100020ae0  bl      _objc_retainAutoreleasedReturnValue
  100020ae4  mov     x21, x0
  100020ae8  adrp    x8, #0x100417000
  100020aec  nop
  100020af0  ldr     x1, [x8, #0x2b8]
  100020af4  mov     w2, #0
  100020af8  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  100020afc  mov     x0, x21
  100020b00  bl      _objc_release
  100020b04  mov     x0, x19
  100020b08  mov     x1, x20
  100020b0c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100020b10  mov     x29, x29
  100020b14  bl      _objc_retainAutoreleasedReturnValue
  100020b18  mov     x21, x0
  100020b1c  adrp    x8, #0x100417000
  100020b20  nop
  100020b24  ldr     x1, [x8, #0x2c0]
  100020b28  mov     w2, #0
  100020b2c  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  100020b30  mov     x0, x21
  100020b34  bl      _objc_release
  100020b38  mov     x0, x19
  100020b3c  mov     x1, x20
  100020b40  bl      _objc_msgSend                            ; [self statusBarViewController]
  100020b44  mov     x29, x29
  100020b48  bl      _objc_retainAutoreleasedReturnValue
  100020b4c  mov     x20, x0
  100020b50  adrp    x8, #0x100417000
  100020b54  nop
  100020b58  ldr     x1, [x8, #0x2c8]
  100020b5c  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100020b60  mov     x29, x29
  100020b64  bl      _objc_retainAutoreleasedReturnValue
  100020b68  mov     x21, x0
  100020b6c  adrp    x8, #0x100416000
  100020b70  nop
  100020b74  ldr     x1, [x8, #0xb68]
  100020b78  adrp    x2, #0x1003ba000
  100020b7c  add     x2, x2, #0xef0                           ; @"Credits"
  100020b80  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"Credits"]
  100020b84  mov     x0, x21
  100020b88  bl      _objc_release
  100020b8c  mov     x0, x20
  100020b90  bl      _objc_release
  100020b94  adrp    x8, #0x100417000
  100020b98  nop
  100020b9c  ldr     x23, [x8, #0xa78]
  100020ba0  mov     x0, x19
  100020ba4  mov     x1, x23
  100020ba8  bl      _objc_msgSend                            ; [self aboutTextView]
  100020bac  mov     x29, x29
  100020bb0  bl      _objc_retainAutoreleasedReturnValue
  100020bb4  mov     x22, x0
  100020bb8  adrp    x20, #0x10041d000
  100020bbc  ldr     x0, [x20, #0xfa0]                        ; class UIColor
  100020bc0  adrp    x8, #0x100417000
  100020bc4  nop
  100020bc8  ldr     x21, [x8, #0x328]
  100020bcc  mov     x1, x21
  100020bd0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100020bd4  mov     x29, x29
  100020bd8  bl      _objc_retainAutoreleasedReturnValue
  100020bdc  mov     x24, x0
  100020be0  adrp    x8, #0x100417000
  100020be4  nop
  100020be8  ldr     x27, [x8, #0x330]
  100020bec  mov     x0, x22
  100020bf0  mov     x1, x27
  100020bf4  mov     x2, x24
  100020bf8  bl      _objc_msgSend                            ; [[self aboutTextView] setTextColor:[UIColor whiteColor]]
  100020bfc  mov     x0, x24
  100020c00  bl      _objc_release
  100020c04  mov     x0, x22
  100020c08  bl      _objc_release
  100020c0c  mov     x0, x19
  100020c10  mov     x1, x23
  100020c14  bl      _objc_msgSend                            ; [self aboutTextView]
  100020c18  mov     x29, x29
  100020c1c  bl      _objc_retainAutoreleasedReturnValue
  100020c20  mov     x26, x0
  100020c24  adrp    x8, #0x10041d000
  100020c28  ldr     x25, [x8, #0xf08]                        ; class UIFont
  100020c2c  nop
  100020c30  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100020c34  adrp    x8, #0x100416000
  100020c38  nop
  100020c3c  ldr     x22, [x8, #0xc00]
  100020c40  mov     x1, x22
  100020c44  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100020c48  str     x27, [sp, #8]
  100020c4c  mov     x29, x29
  100020c50  bl      _objc_retainAutoreleasedReturnValue
  100020c54  mov     x27, x0
  100020c58  adrp    x8, #0x100416000
  100020c5c  nop
  100020c60  ldr     x23, [x8, #0xd18]
  100020c64  mov     x1, x23
  100020c68  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100020c6c  cmp     w0, #0
  100020c70  fmov    d8, #20.00000000
  100020c74  fmov    d9, #12.00000000
  100020c78  fcsel   d0, d9, d8, ne
  100020c7c  adrp    x8, #0x100416000
  100020c80  nop
  100020c84  ldr     x24, [x8, #0xd20]
  100020c88  adrp    x2, #0x1003ba000
  100020c8c  add     x2, x2, #0xf10                           ; @"Chainprinter"
  100020c90  mov     x0, x25
  100020c94  mov     x1, x24
  100020c98  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 20)]
  100020c9c  mov     x29, x29
  100020ca0  bl      _objc_retainAutoreleasedReturnValue
  100020ca4  mov     x28, x0
  100020ca8  adrp    x8, #0x100416000
  100020cac  nop
  100020cb0  ldr     x25, [x8, #0xd28]
  100020cb4  mov     x0, x26
  100020cb8  mov     x1, x25
  100020cbc  mov     x2, x28
  100020cc0  bl      _objc_msgSend                            ; [[self aboutTextView] setFont:[UIFont fontWithName:@"Chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 20)]]
  100020cc4  mov     x0, x28
  100020cc8  bl      _objc_release
  100020ccc  mov     x0, x27
  100020cd0  bl      _objc_release
  100020cd4  mov     x0, x26
  100020cd8  bl      _objc_release
  100020cdc  adrp    x8, #0x100417000
  100020ce0  nop
  100020ce4  ldr     x27, [x8, #0xa80]
  100020ce8  mov     x0, x19
  100020cec  mov     x1, x27
  100020cf0  bl      _objc_msgSend                            ; [self creditsTextView]
  100020cf4  mov     x29, x29
  100020cf8  bl      _objc_retainAutoreleasedReturnValue
  100020cfc  mov     x26, x0
  100020d00  ldr     x0, [x20, #0xfa0]                        ; class UIColor
  100020d04  mov     x1, x21
  100020d08  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100020d0c  mov     x29, x29
  100020d10  bl      _objc_retainAutoreleasedReturnValue
  100020d14  mov     x20, x0
  100020d18  mov     x0, x26
  100020d1c  ldr     x1, [sp, #8]
  100020d20  mov     x2, x20
  100020d24  bl      _objc_msgSend                            ; [[self creditsTextView] setTextColor:[UIColor whiteColor]]
  100020d28  mov     x0, x20
  100020d2c  bl      _objc_release
  100020d30  mov     x0, x26
  100020d34  bl      _objc_release
  100020d38  mov     x0, x19
  100020d3c  mov     x1, x27
  100020d40  bl      _objc_msgSend                            ; [self creditsTextView]
  100020d44  mov     x29, x29
  100020d48  bl      _objc_retainAutoreleasedReturnValue
  100020d4c  mov     x20, x0
  100020d50  adrp    x8, #0x10041d000
  100020d54  ldr     x19, [x8, #0xf08]                        ; class UIFont
  100020d58  nop
  100020d5c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100020d60  mov     x1, x22
  100020d64  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100020d68  mov     x29, x29
  100020d6c  bl      _objc_retainAutoreleasedReturnValue
  100020d70  mov     x21, x0
  100020d74  mov     x1, x23
  100020d78  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100020d7c  cmp     w0, #0
  100020d80  fcsel   d0, d9, d8, ne
  100020d84  adrp    x2, #0x1003ba000
  100020d88  add     x2, x2, #0xf10                           ; @"Chainprinter"
  100020d8c  mov     x0, x19
  100020d90  mov     x1, x24
  100020d94  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 20)]
  100020d98  mov     x29, x29
  100020d9c  bl      _objc_retainAutoreleasedReturnValue
  100020da0  mov     x22, x0
  100020da4  mov     x0, x20
  100020da8  mov     x1, x25
  100020dac  mov     x2, x22
  100020db0  bl      _objc_msgSend                            ; [[self creditsTextView] setFont:[UIFont fontWithName:@"Chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 20)]]
  100020db4  mov     x0, x22
  100020db8  bl      _objc_release
  100020dbc  mov     x0, x21
  100020dc0  bl      _objc_release
  100020dc4  mov     x0, x20
  100020dc8  bl      _objc_release
  100020dcc  sub     sp, x29, #0x60
  100020dd0  ldp     x29, x30, [sp, #0x60]
  100020dd4  ldp     x20, x19, [sp, #0x50]
  100020dd8  ldp     x22, x21, [sp, #0x40]
  100020ddc  ldp     x24, x23, [sp, #0x30]
  100020de0  ldp     x26, x25, [sp, #0x20]
  100020de4  ldp     x28, x27, [sp, #0x10]
  100020de8  ldp     d9, d8, [sp], #0x70
  100020dec  ret
  100020df0  mov     x19, x0
  100020df4  b       loc_100020e54
  100020df8  mov     x19, x0
  100020dfc  b       loc_100020e8c
  100020e00  b       loc_100020e08
  100020e04  b       loc_100020e08
loc_100020e08:
  100020e08  mov     x19, x0
  100020e0c  mov     x0, x21
  100020e10  b       loc_100020e98
  100020e14  mov     x19, x0
  100020e18  b       loc_100020e94
  100020e1c  mov     x19, x0
  100020e20  b       loc_100020e8c
  100020e24  mov     x19, x0
  100020e28  b       loc_100020e38
  100020e2c  mov     x19, x0
  100020e30  mov     x0, x24
  100020e34  bl      _objc_release
loc_100020e38:
  100020e38  mov     x0, x22
  100020e3c  b       loc_100020e98
  100020e40  mov     x19, x0
  100020e44  b       loc_100020e70
  100020e48  mov     x19, x0
  100020e4c  mov     x0, x28
  100020e50  bl      _objc_release
loc_100020e54:
  100020e54  mov     x0, x27
  100020e58  b       loc_100020e6c
  100020e5c  mov     x19, x0
  100020e60  b       loc_100020e70
  100020e64  mov     x19, x0
  100020e68  mov     x0, x20
loc_100020e6c:
  100020e6c  bl      _objc_release
loc_100020e70:
  100020e70  mov     x0, x26
  100020e74  b       loc_100020e98
  100020e78  mov     x19, x0
  100020e7c  b       loc_100020e94
  100020e80  mov     x19, x0
  100020e84  mov     x0, x22
  100020e88  bl      _objc_release
loc_100020e8c:
  100020e8c  mov     x0, x21
  100020e90  bl      _objc_release
loc_100020e94:
  100020e94  mov     x0, x20
loc_100020e98:
  100020e98  bl      _objc_release
  100020e9c  mov     x0, x19
  100020ea0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAboutCreditsViewController loadView]
; address 0x100020ea4  size 332  kind objc
; ======================================================================
  100020ea4  stp     x24, x23, [sp, #-0x40]!
  100020ea8  stp     x22, x21, [sp, #0x10]
  100020eac  stp     x20, x19, [sp, #0x20]
  100020eb0  stp     x29, x30, [sp, #0x30]
  100020eb4  add     x29, sp, #0x30
  100020eb8  sub     sp, sp, #0x30
  100020ebc  mov     x19, x0
  100020ec0  adrp    x23, #0x1003b0000
  100020ec4  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100020ec8  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100020ecc  str     x23, [sp, #0x28]
  100020ed0  adrp    x8, #0x1003ba000
  100020ed4  add     x8, x8, #0xf30                           ; @"aboutTextView"
  100020ed8  str     x8, [sp, #8]
  100020edc  adrp    x22, #0x10041d000
  100020ee0  ldr     x0, [x22, #0xf68]                        ; class NSNumber
  100020ee4  adrp    x8, #0x100416000
  100020ee8  nop
  100020eec  ldr     x21, [x8, #0xec0]
  100020ef0  mov     w2, #1
  100020ef4  mov     x1, x21
  100020ef8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100020efc  mov     x29, x29
  100020f00  bl      _objc_retainAutoreleasedReturnValue
  100020f04  mov     x20, x0
  100020f08  adrp    x8, #0x1003ba000
  100020f0c  add     x8, x8, #0xf50                           ; @"creditsTextView"
  100020f10  stp     x8, x20, [sp, #0x10]
  100020f14  ldr     x0, [x22, #0xf68]                        ; class NSNumber
  100020f18  mov     w2, #2
  100020f1c  mov     x1, x21
  100020f20  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100020f24  bl      _objc_retain
  100020f28  mov     x21, x0
  100020f2c  str     x21, [sp, #0x20]
  100020f30  adrp    x8, #0x10041d000
  100020f34  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100020f38  adrp    x8, #0x100416000
  100020f3c  nop
  100020f40  ldr     x1, [x8, #0xcd0]
  100020f44  add     x2, sp, #0x18
  100020f48  add     x3, sp, #8
  100020f4c  mov     w4, #2
  100020f50  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]
  100020f54  mov     x29, x29
  100020f58  bl      _objc_retainAutoreleasedReturnValue
  100020f5c  mov     x22, x0
  100020f60  mov     x0, x21
  100020f64  bl      _objc_release
  100020f68  mov     x0, x20
  100020f6c  bl      _objc_release
  100020f70  adrp    x8, #0x100416000
  100020f74  nop
  100020f78  ldr     x1, [x8, #0xbf0]
  100020f7c  adrp    x2, #0x1003ba000
  100020f80  add     x2, x2, #0xf70                           ; @"ADAboutCreditsViewController"
  100020f84  mov     x0, x19
  100020f88  mov     x3, x22
  100020f8c  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADAboutCreditsViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]]
  100020f90  mov     x0, x22
  100020f94  bl      _objc_release
  100020f98  ldr     x8, [sp, #0x28]
  100020f9c  sub     x8, x23, x8
  100020fa0  cbnz    x8, loc_100020fbc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100020fa4  sub     sp, x29, #0x30
  100020fa8  ldp     x29, x30, [sp, #0x30]
  100020fac  ldp     x20, x19, [sp, #0x20]
  100020fb0  ldp     x22, x21, [sp, #0x10]
  100020fb4  ldp     x24, x23, [sp], #0x40
  100020fb8  ret
loc_100020fbc:
  100020fbc  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100020fc0  mov     x19, x0
  100020fc4  b       loc_100020fd4
  100020fc8  mov     x19, x0
  100020fcc  mov     x0, x21
  100020fd0  bl      _objc_release
loc_100020fd4:
  100020fd4  mov     x0, x20
  100020fd8  b       loc_100020fe4
  100020fdc  mov     x19, x0
  100020fe0  mov     x0, x22
loc_100020fe4:
  100020fe4  bl      _objc_release
  100020fe8  mov     x0, x19
  100020fec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAboutCreditsViewController backButtonPressed]
; address 0x100020ff0  size 104  kind objc
; ======================================================================
  100020ff0  stp     x20, x19, [sp, #-0x20]!
  100020ff4  stp     x29, x30, [sp, #0x10]
  100020ff8  add     x29, sp, #0x10
  100020ffc  sub     sp, sp, #0x10
  100021000  mov     x19, x0
  100021004  str     x19, [sp]
  100021008  adrp    x8, #0x10041e000
  10002100c  ldr     x8, [x8, #0xc40]
  100021010  str     x8, [sp, #8]
  100021014  adrp    x8, #0x100417000
  100021018  nop
  10002101c  ldr     x1, [x8, #0x410]
  100021020  mov     x0, sp
  100021024  bl      _objc_msgSendSuper2                      ; [super backButtonPressed]
  100021028  adrp    x8, #0x100417000
  10002102c  nop
  100021030  ldr     x1, [x8, #0x420]
  100021034  mov     w2, #0
  100021038  adrp    x3, #0x1003b1000
  10002103c  add     x3, x3, #0x1e0                           ; ^{-[ADAboutCreditsViewController backButtonPressed]_block_invoke}
  100021040  mov     x0, x19
  100021044  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADAboutCreditsViewController backButtonPressed]_block_invoke}]
  100021048  sub     sp, x29, #0x10
  10002104c  ldp     x29, x30, [sp, #0x10]
  100021050  ldp     x20, x19, [sp], #0x20
  100021054  ret

; ======================================================================
; -[ADAboutCreditsViewController backButtonPressed]_block_invoke
; address 0x100021058  size 4  kind block
; ======================================================================
  100021058  ret

; ======================================================================
; -[ADAboutCreditsViewController didReceiveMemoryWarning]
; address 0x10002105c  size 60  kind objc
; ======================================================================
  10002105c  stp     x29, x30, [sp, #-0x10]!
  100021060  mov     x29, sp
  100021064  sub     sp, sp, #0x10
  100021068  str     x0, [sp]
  10002106c  adrp    x8, #0x10041e000
  100021070  ldr     x8, [x8, #0xc40]
  100021074  str     x8, [sp, #8]
  100021078  adrp    x8, #0x100416000
  10002107c  nop
  100021080  ldr     x1, [x8, #0xbf8]
  100021084  mov     x0, sp
  100021088  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10002108c  mov     sp, x29
  100021090  ldp     x29, x30, [sp], #0x10
  100021094  ret

; ======================================================================
; -[ADAboutCreditsViewController aboutTextView]
; address 0x100021098  size 16  kind objc
; ======================================================================
  100021098  adrp    x8, #0x10041f000
  10002109c  ldrsw   x8, [x8, #0x6c8]                         ; ivar offset ADAboutCreditsViewController._aboutTextView (+0x140)
  1000210a0  ldr     x0, [x0, x8]                             ; x0 = self->_aboutTextView
  1000210a4  ret

; ======================================================================
; -[ADAboutCreditsViewController setAboutTextView:]
; address 0x1000210a8  size 56  kind objc
; ======================================================================
  1000210a8  stp     x20, x19, [sp, #-0x20]!
  1000210ac  stp     x29, x30, [sp, #0x10]
  1000210b0  add     x29, sp, #0x10
  1000210b4  mov     x19, x0
  1000210b8  adrp    x8, #0x10041f000
  1000210bc  ldrsw   x20, [x8, #0x6c8]                        ; ivar offset ADAboutCreditsViewController._aboutTextView (+0x140)
  1000210c0  mov     x0, x2
  1000210c4  bl      _objc_retain
  1000210c8  ldr     x8, [x19, x20]                           ; x8 = self->_aboutTextView
  1000210cc  str     x0, [x19, x20]                           ; self->_aboutTextView = arg1
  1000210d0  mov     x0, x8
  1000210d4  ldp     x29, x30, [sp, #0x10]
  1000210d8  ldp     x20, x19, [sp], #0x20
  1000210dc  b       _objc_release

; ======================================================================
; -[ADAboutCreditsViewController creditsTextView]
; address 0x1000210e0  size 16  kind objc
; ======================================================================
  1000210e0  adrp    x8, #0x10041f000
  1000210e4  ldrsw   x8, [x8, #0x6cc]                         ; ivar offset ADAboutCreditsViewController._creditsTextView (+0x148)
  1000210e8  ldr     x0, [x0, x8]                             ; x0 = self->_creditsTextView
  1000210ec  ret

; ======================================================================
; -[ADAboutCreditsViewController setCreditsTextView:]
; address 0x1000210f0  size 56  kind objc
; ======================================================================
  1000210f0  stp     x20, x19, [sp, #-0x20]!
  1000210f4  stp     x29, x30, [sp, #0x10]
  1000210f8  add     x29, sp, #0x10
  1000210fc  mov     x19, x0
  100021100  adrp    x8, #0x10041f000
  100021104  ldrsw   x20, [x8, #0x6cc]                        ; ivar offset ADAboutCreditsViewController._creditsTextView (+0x148)
  100021108  mov     x0, x2
  10002110c  bl      _objc_retain
  100021110  ldr     x8, [x19, x20]                           ; x8 = self->_creditsTextView
  100021114  str     x0, [x19, x20]                           ; self->_creditsTextView = arg1
  100021118  mov     x0, x8
  10002111c  ldp     x29, x30, [sp, #0x10]
  100021120  ldp     x20, x19, [sp], #0x20
  100021124  b       _objc_release

; ======================================================================
; -[ADAboutCreditsViewController .cxx_destruct]
; address 0x100021128  size 64  kind objc
; ======================================================================
  100021128  stp     x20, x19, [sp, #-0x20]!
  10002112c  stp     x29, x30, [sp, #0x10]
  100021130  add     x29, sp, #0x10
  100021134  mov     x19, x0
  100021138  adrp    x8, #0x10041f000
  10002113c  ldrsw   x8, [x8, #0x6cc]                         ; ivar offset ADAboutCreditsViewController._creditsTextView (+0x148)
  100021140  add     x0, x19, x8
  100021144  mov     x1, #0
  100021148  bl      _objc_storeStrong
  10002114c  mov     x1, #0
  100021150  adrp    x8, #0x10041f000
  100021154  ldrsw   x8, [x8, #0x6c8]                         ; ivar offset ADAboutCreditsViewController._aboutTextView (+0x140)
  100021158  add     x0, x19, x8
  10002115c  ldp     x29, x30, [sp, #0x10]
  100021160  ldp     x20, x19, [sp], #0x20
  100021164  b       _objc_storeStrong
