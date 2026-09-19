// unit ADChallengeSelectorViewController — 33 functions
//   0x1000c99d4     644  -[ADChallengeSelectorViewController initWithNibName:bundle:loadChallenge:worldName:]
//   0x1000c9c58     244  -[ADChallengeSelectorViewController dictionaryForChallengeWithName:]
//   0x1000c9d4c     708  -[ADChallengeSelectorViewController viewDidLoad]
//   0x1000ca010     400  -[ADChallengeSelectorViewController loadView]
//   0x1000ca1a0     128  -[ADChallengeSelectorViewController viewWillAppear:]
//   0x1000ca220      60  -[ADChallengeSelectorViewController viewDidAppear:]
//   0x1000ca25c     392  -[ADChallengeSelectorViewController dealloc]
//   0x1000ca3e4    1472  -[ADChallengeSelectorViewController initChallengeList]
//   0x1000ca9a4    1444  -[ADChallengeSelectorViewController initChallengeList]_block_invoke
//   0x1000caf48      52  sub_1000caf48
//   0x1000caf7c      44  sub_1000caf7c
//   0x1000cafa8    1268  -[ADChallengeSelectorViewController challengeButtonPressed:]
//   0x1000cb49c     200  -[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke_2
//   0x1000cb564      40  sub_1000cb564
//   0x1000cb58c      40  sub_1000cb58c
//   0x1000cb5b4     172  -[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke
//   0x1000cb660      40  sub_1000cb660
//   0x1000cb688      40  sub_1000cb688
//   0x1000cb6b0     532  -[ADChallengeSelectorViewController loadChallengeWithName:]
//   0x1000cb8c4     244  -[ADChallengeSelectorViewController canStartChallengeWithName:]
//   0x1000cb9b8     160  -[ADChallengeSelectorViewController backButtonPressed]
//   0x1000cba58     252  -[ADChallengeSelectorViewController playButtonSound]
//   0x1000cbb54      16  -[ADChallengeSelectorViewController challengeWorldLabel]
//   0x1000cbb64      56  -[ADChallengeSelectorViewController setChallengeWorldLabel:]
//   0x1000cbb9c      16  -[ADChallengeSelectorViewController challengeScrollView]
//   0x1000cbbac      56  -[ADChallengeSelectorViewController setChallengeScrollView:]
//   0x1000cbbe4      16  -[ADChallengeSelectorViewController challengeIndex]
//   0x1000cbbf4      56  -[ADChallengeSelectorViewController setChallengeIndex:]
//   0x1000cbc2c      16  -[ADChallengeSelectorViewController contentView]
//   0x1000cbc3c      56  -[ADChallengeSelectorViewController setContentView:]
//   0x1000cbc74      16  -[ADChallengeSelectorViewController challengeFiles]
//   0x1000cbc84      12  -[ADChallengeSelectorViewController setChallengeFiles:]
//   0x1000cbc90     164  -[ADChallengeSelectorViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeSelectorViewController initWithNibName:bundle:loadChallenge:worldName:]
; address 0x1000c99d4  size 644  kind objc
; ======================================================================
  1000c99d4  stp     x28, x27, [sp, #-0x60]!
  1000c99d8  stp     x26, x25, [sp, #0x10]
  1000c99dc  stp     x24, x23, [sp, #0x20]
  1000c99e0  stp     x22, x21, [sp, #0x30]
  1000c99e4  stp     x20, x19, [sp, #0x40]
  1000c99e8  stp     x29, x30, [sp, #0x50]
  1000c99ec  add     x29, sp, #0x50
  1000c99f0  sub     sp, sp, #0x20
  1000c99f4  mov     x22, x5
  1000c99f8  mov     x21, x4
  1000c99fc  mov     x20, x3
  1000c9a00  mov     x23, x0
  1000c9a04  mov     x0, x2
  1000c9a08  bl      _objc_retain
  1000c9a0c  mov     x19, x0
  1000c9a10  mov     x0, x20
  1000c9a14  bl      _objc_retain
  1000c9a18  mov     x20, x0
  1000c9a1c  mov     x0, x21
  1000c9a20  bl      _objc_retain
  1000c9a24  mov     x21, x0
  1000c9a28  mov     x0, x22
  1000c9a2c  bl      _objc_retain
  1000c9a30  mov     x22, x0
  1000c9a34  str     x23, [sp, #0x10]
  1000c9a38  adrp    x8, #0x10041e000
  1000c9a3c  ldr     x8, [x8, #0xfb8]
  1000c9a40  str     x8, [sp, #0x18]
  1000c9a44  adrp    x8, #0x100416000
  1000c9a48  nop
  1000c9a4c  ldr     x1, [x8, #0xb40]
  1000c9a50  mov     x24, #0
  1000c9a54  add     x0, sp, #0x10
  1000c9a58  mov     x2, x19
  1000c9a5c  mov     x3, x20
  1000c9a60  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000c9a64  mov     x23, x0
  1000c9a68  cbz     x23, loc_1000c9b88                       ; if (self == 0)
  1000c9a6c  mov     x24, x23
  1000c9a70  adrp    x8, #0x100420000
  1000c9a74  ldrsw   x25, [x8, #0x400]                        ; ivar offset ADChallengeSelectorViewController.challengeToLoad (+0x148)
  1000c9a78  mov     x0, x21
  1000c9a7c  bl      _objc_retain
  1000c9a80  ldr     x8, [x23, x25]                           ; x8 = self->challengeToLoad
  1000c9a84  str     x0, [x23, x25]                           ; self->challengeToLoad = arg3
  1000c9a88  mov     x0, x8
  1000c9a8c  bl      _objc_release
  1000c9a90  adrp    x8, #0x10041d000
  1000c9a94  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000c9a98  adrp    x8, #0x100416000
  1000c9a9c  nop
  1000c9aa0  ldr     x1, [x8, #0xb58]
  1000c9aa4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c9aa8  mov     x29, x29
  1000c9aac  bl      _objc_retainAutoreleasedReturnValue
  1000c9ab0  mov     x25, x0
  1000c9ab4  adrp    x8, #0x100416000
  1000c9ab8  nop
  1000c9abc  ldr     x1, [x8, #0xd60]
  1000c9ac0  adrp    x2, #0x1003ba000
  1000c9ac4  add     x2, x2, #0xe30                           ; @"challenges_index"
  1000c9ac8  adrp    x3, #0x1003b9000
  1000c9acc  add     x3, x3, #0xa70                           ; @"plist"
  1000c9ad0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  1000c9ad4  mov     x29, x29
  1000c9ad8  bl      _objc_retainAutoreleasedReturnValue
  1000c9adc  mov     x24, x0
  1000c9ae0  mov     x0, x25
  1000c9ae4  bl      _objc_release
  1000c9ae8  adrp    x8, #0x10041d000
  1000c9aec  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c9af0  adrp    x8, #0x100417000
  1000c9af4  nop
  1000c9af8  ldr     x1, [x8, #0x258]
  1000c9afc  mov     x2, x24
  1000c9b00  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  1000c9b04  mov     x29, x29
  1000c9b08  bl      _objc_retainAutoreleasedReturnValue
  1000c9b0c  mov     x25, x0
  1000c9b10  adrp    x8, #0x100417000
  1000c9b14  nop
  1000c9b18  ldr     x27, [x8, #0x40]
  1000c9b1c  mov     x1, x27
  1000c9b20  mov     x2, x22
  1000c9b24  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg4]
  1000c9b28  mov     x29, x29
  1000c9b2c  bl      _objc_retainAutoreleasedReturnValue
  1000c9b30  mov     x26, x0
  1000c9b34  adrp    x2, #0x1003ba000
  1000c9b38  add     x2, x2, #0xe50                           ; @"challenges"
  1000c9b3c  mov     x1, x27
  1000c9b40  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg4] objectForKey:@"challenges"]
  1000c9b44  mov     x29, x29
  1000c9b48  bl      _objc_retainAutoreleasedReturnValue
  1000c9b4c  mov     x27, x0
  1000c9b50  adrp    x8, #0x100418000
  1000c9b54  nop
  1000c9b58  ldr     x1, [x8, #0xe20]
  1000c9b5c  mov     x0, x23
  1000c9b60  mov     x2, x27
  1000c9b64  bl      _objc_msgSend                            ; [self setChallengeFiles:[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg4] objectForKey:@"challenges"]]
  1000c9b68  mov     x0, x27
  1000c9b6c  bl      _objc_release
  1000c9b70  mov     x0, x26
  1000c9b74  bl      _objc_release
  1000c9b78  mov     x0, x25
  1000c9b7c  bl      _objc_release
  1000c9b80  mov     x0, x24
  1000c9b84  bl      _objc_release
loc_1000c9b88:
  1000c9b88  mov     x0, x22
  1000c9b8c  bl      _objc_release
  1000c9b90  mov     x0, x21
  1000c9b94  bl      _objc_release
  1000c9b98  mov     x0, x20
  1000c9b9c  bl      _objc_release
  1000c9ba0  mov     x0, x19
  1000c9ba4  bl      _objc_release
  1000c9ba8  mov     x0, x23
  1000c9bac  sub     sp, x29, #0x50
  1000c9bb0  ldp     x29, x30, [sp, #0x50]
  1000c9bb4  ldp     x20, x19, [sp, #0x40]
  1000c9bb8  ldp     x22, x21, [sp, #0x30]
  1000c9bbc  ldp     x24, x23, [sp, #0x20]
  1000c9bc0  ldp     x26, x25, [sp, #0x10]
  1000c9bc4  ldp     x28, x27, [sp], #0x60
  1000c9bc8  ret
  1000c9bcc  mov     x26, x0
  1000c9bd0  b       loc_1000c9c28
  1000c9bd4  mov     x26, x0
  1000c9bd8  mov     x0, x25
  1000c9bdc  b       loc_1000c9c20
  1000c9be0  mov     x26, x0
  1000c9be4  b       loc_1000c9c1c
  1000c9be8  mov     x26, x0
  1000c9bec  b       loc_1000c9c14
  1000c9bf0  str     x26, [sp, #8]
  1000c9bf4  mov     x26, x0
  1000c9bf8  b       loc_1000c9c0c
  1000c9bfc  str     x26, [sp, #8]
  1000c9c00  mov     x26, x0
  1000c9c04  mov     x0, x27
  1000c9c08  bl      _objc_release
loc_1000c9c0c:
  1000c9c0c  ldr     x0, [sp, #8]
  1000c9c10  bl      _objc_release
loc_1000c9c14:
  1000c9c14  mov     x0, x25
  1000c9c18  bl      _objc_release
loc_1000c9c1c:
  1000c9c1c  mov     x0, x24
loc_1000c9c20:
  1000c9c20  bl      _objc_release
  1000c9c24  mov     x24, x23
loc_1000c9c28:
  1000c9c28  mov     x0, x22
  1000c9c2c  bl      _objc_release
  1000c9c30  mov     x0, x21
  1000c9c34  bl      _objc_release
  1000c9c38  mov     x0, x20
  1000c9c3c  bl      _objc_release
  1000c9c40  mov     x0, x19
  1000c9c44  bl      _objc_release
  1000c9c48  mov     x0, x24
  1000c9c4c  bl      _objc_release
  1000c9c50  mov     x0, x26
  1000c9c54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController dictionaryForChallengeWithName:]
; address 0x1000c9c58  size 244  kind objc
; ======================================================================
  1000c9c58  stp     x22, x21, [sp, #-0x30]!
  1000c9c5c  stp     x20, x19, [sp, #0x10]
  1000c9c60  stp     x29, x30, [sp, #0x20]
  1000c9c64  add     x29, sp, #0x20
  1000c9c68  mov     x0, x2
  1000c9c6c  bl      _objc_retain
  1000c9c70  mov     x19, x0
  1000c9c74  adrp    x8, #0x10041d000
  1000c9c78  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000c9c7c  adrp    x8, #0x100416000
  1000c9c80  nop
  1000c9c84  ldr     x1, [x8, #0xb58]
  1000c9c88  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c9c8c  mov     x29, x29
  1000c9c90  bl      _objc_retainAutoreleasedReturnValue
  1000c9c94  mov     x21, x0
  1000c9c98  adrp    x8, #0x100416000
  1000c9c9c  nop
  1000c9ca0  ldr     x1, [x8, #0xd60]
  1000c9ca4  adrp    x3, #0x1003b9000
  1000c9ca8  add     x3, x3, #0xa70                           ; @"plist"
  1000c9cac  mov     x2, x19
  1000c9cb0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  1000c9cb4  mov     x29, x29
  1000c9cb8  bl      _objc_retainAutoreleasedReturnValue
  1000c9cbc  mov     x20, x0
  1000c9cc0  mov     x0, x21
  1000c9cc4  bl      _objc_release
  1000c9cc8  adrp    x8, #0x10041d000
  1000c9ccc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c9cd0  adrp    x8, #0x100416000
  1000c9cd4  nop
  1000c9cd8  ldr     x1, [x8, #0xac8]
  1000c9cdc  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000c9ce0  adrp    x8, #0x100416000
  1000c9ce4  nop
  1000c9ce8  ldr     x1, [x8, #0xd68]
  1000c9cec  mov     x2, x20
  1000c9cf0  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  1000c9cf4  mov     x21, x0
  1000c9cf8  mov     x0, x20
  1000c9cfc  bl      _objc_release
  1000c9d00  mov     x0, x19
  1000c9d04  bl      _objc_release
  1000c9d08  mov     x0, x21
  1000c9d0c  ldp     x29, x30, [sp, #0x20]
  1000c9d10  ldp     x20, x19, [sp, #0x10]
  1000c9d14  ldp     x22, x21, [sp], #0x30
  1000c9d18  b       _objc_autoreleaseReturnValue
  1000c9d1c  mov     x22, x0
  1000c9d20  mov     x0, x20
  1000c9d24  b       loc_1000c9d38
  1000c9d28  mov     x22, x0
  1000c9d2c  b       loc_1000c9d3c
  1000c9d30  mov     x22, x0
  1000c9d34  mov     x0, x21
loc_1000c9d38:
  1000c9d38  bl      _objc_release
loc_1000c9d3c:
  1000c9d3c  mov     x0, x19
  1000c9d40  bl      _objc_release
  1000c9d44  mov     x0, x22
  1000c9d48  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController viewDidLoad]
; address 0x1000c9d4c  size 708  kind objc
; ======================================================================
  1000c9d4c  stp     x24, x23, [sp, #-0x40]!
  1000c9d50  stp     x22, x21, [sp, #0x10]
  1000c9d54  stp     x20, x19, [sp, #0x20]
  1000c9d58  stp     x29, x30, [sp, #0x30]
  1000c9d5c  add     x29, sp, #0x30
  1000c9d60  sub     sp, sp, #0x10
  1000c9d64  mov     x19, x0
  1000c9d68  str     x19, [sp]
  1000c9d6c  adrp    x8, #0x10041e000
  1000c9d70  ldr     x8, [x8, #0xfb8]
  1000c9d74  str     x8, [sp, #8]
  1000c9d78  adrp    x8, #0x100416000
  1000c9d7c  nop
  1000c9d80  ldr     x1, [x8, #0xb48]
  1000c9d84  mov     x0, sp
  1000c9d88  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000c9d8c  adrp    x8, #0x100417000
  1000c9d90  nop
  1000c9d94  ldr     x20, [x8, #0x2a8]
  1000c9d98  mov     x0, x19
  1000c9d9c  mov     x1, x20
  1000c9da0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9da4  mov     x29, x29
  1000c9da8  bl      _objc_retainAutoreleasedReturnValue
  1000c9dac  mov     x21, x0
  1000c9db0  adrp    x8, #0x100417000
  1000c9db4  nop
  1000c9db8  ldr     x1, [x8, #0x2b0]
  1000c9dbc  mov     w2, #1
  1000c9dc0  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  1000c9dc4  mov     x0, x21
  1000c9dc8  bl      _objc_release
  1000c9dcc  mov     x0, x19
  1000c9dd0  mov     x1, x20
  1000c9dd4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9dd8  mov     x29, x29
  1000c9ddc  bl      _objc_retainAutoreleasedReturnValue
  1000c9de0  mov     x21, x0
  1000c9de4  adrp    x8, #0x100417000
  1000c9de8  nop
  1000c9dec  ldr     x1, [x8, #0x2b8]
  1000c9df0  mov     w2, #1
  1000c9df4  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:1]
  1000c9df8  mov     x0, x21
  1000c9dfc  bl      _objc_release
  1000c9e00  mov     x0, x19
  1000c9e04  mov     x1, x20
  1000c9e08  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9e0c  mov     x29, x29
  1000c9e10  bl      _objc_retainAutoreleasedReturnValue
  1000c9e14  mov     x21, x0
  1000c9e18  adrp    x8, #0x100417000
  1000c9e1c  nop
  1000c9e20  ldr     x1, [x8, #0x2c0]
  1000c9e24  mov     w2, #1
  1000c9e28  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:1]
  1000c9e2c  mov     x0, x21
  1000c9e30  bl      _objc_release
  1000c9e34  adrp    x8, #0x10041a000
  1000c9e38  nop
  1000c9e3c  ldr     x21, [x8, #0xc80]
  1000c9e40  mov     x0, x19
  1000c9e44  mov     x1, x21
  1000c9e48  bl      _objc_msgSend                            ; [self challengeWorldLabel]
  1000c9e4c  mov     x29, x29
  1000c9e50  bl      _objc_retainAutoreleasedReturnValue
  1000c9e54  mov     x22, x0
  1000c9e58  adrp    x8, #0x100416000
  1000c9e5c  nop
  1000c9e60  ldr     x1, [x8, #0xb88]
  1000c9e64  bl      _objc_msgSend                            ; [[self challengeWorldLabel] setupAsTitle]
  1000c9e68  mov     x0, x22
  1000c9e6c  bl      _objc_release
  1000c9e70  adrp    x8, #0x100418000
  1000c9e74  nop
  1000c9e78  ldr     x1, [x8, #0x760]
  1000c9e7c  mov     x0, x19
  1000c9e80  bl      _objc_msgSend                            ; [self contentView]
  1000c9e84  mov     x29, x29
  1000c9e88  bl      _objc_retainAutoreleasedReturnValue
  1000c9e8c  mov     x22, x0
  1000c9e90  adrp    x8, #0x100416000
  1000c9e94  nop
  1000c9e98  ldr     x1, [x8, #0xba8]
  1000c9e9c  mov     w2, #0
  1000c9ea0  bl      _objc_msgSend                            ; [[self contentView] setHidden:0]
  1000c9ea4  mov     x0, x22
  1000c9ea8  bl      _objc_release
  1000c9eac  mov     x0, x19
  1000c9eb0  mov     x1, x21
  1000c9eb4  bl      _objc_msgSend                            ; [self challengeWorldLabel]
  1000c9eb8  mov     x29, x29
  1000c9ebc  bl      _objc_retainAutoreleasedReturnValue
  1000c9ec0  mov     x21, x0
  1000c9ec4  adrp    x8, #0x10041d000
  1000c9ec8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000c9ecc  adrp    x8, #0x100416000
  1000c9ed0  nop
  1000c9ed4  ldr     x1, [x8, #0xc00]
  1000c9ed8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000c9edc  mov     x29, x29
  1000c9ee0  bl      _objc_retainAutoreleasedReturnValue
  1000c9ee4  mov     x23, x0
  1000c9ee8  adrp    x8, #0x100419000
  1000c9eec  nop
  1000c9ef0  ldr     x1, [x8, #0x520]
  1000c9ef4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastChallengeWorld]
  1000c9ef8  mov     x29, x29
  1000c9efc  bl      _objc_retainAutoreleasedReturnValue
  1000c9f00  mov     x24, x0
  1000c9f04  adrp    x8, #0x100416000
  1000c9f08  nop
  1000c9f0c  ldr     x22, [x8, #0xb68]
  1000c9f10  mov     x0, x21
  1000c9f14  mov     x1, x22
  1000c9f18  mov     x2, x24
  1000c9f1c  bl      _objc_msgSend                            ; [[self challengeWorldLabel] setText:[[ADGameParameters sharedParameters] lastChallengeWorld]]
  1000c9f20  mov     x0, x24
  1000c9f24  bl      _objc_release
  1000c9f28  mov     x0, x23
  1000c9f2c  bl      _objc_release
  1000c9f30  mov     x0, x21
  1000c9f34  bl      _objc_release
  1000c9f38  mov     x0, x19
  1000c9f3c  mov     x1, x20
  1000c9f40  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9f44  mov     x29, x29
  1000c9f48  bl      _objc_retainAutoreleasedReturnValue
  1000c9f4c  mov     x20, x0
  1000c9f50  adrp    x8, #0x100417000
  1000c9f54  nop
  1000c9f58  ldr     x1, [x8, #0x2c8]
  1000c9f5c  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000c9f60  mov     x29, x29
  1000c9f64  bl      _objc_retainAutoreleasedReturnValue
  1000c9f68  mov     x21, x0
  1000c9f6c  adrp    x2, #0x1003bd000
  1000c9f70  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  1000c9f74  mov     x1, x22
  1000c9f78  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"CHALLENGE"]
  1000c9f7c  mov     x0, x21
  1000c9f80  bl      _objc_release
  1000c9f84  mov     x0, x20
  1000c9f88  bl      _objc_release
  1000c9f8c  sub     sp, x29, #0x30
  1000c9f90  ldp     x29, x30, [sp, #0x30]
  1000c9f94  ldp     x20, x19, [sp, #0x20]
  1000c9f98  ldp     x22, x21, [sp, #0x10]
  1000c9f9c  ldp     x24, x23, [sp], #0x40
  1000c9fa0  ret
  1000c9fa4  b       loc_1000c9fc0
  1000c9fa8  b       loc_1000c9fc0
  1000c9fac  b       loc_1000c9fc0
  1000c9fb0  b       loc_1000c9fb4
loc_1000c9fb4:
  1000c9fb4  mov     x19, x0
  1000c9fb8  mov     x0, x22
  1000c9fbc  b       loc_1000ca004
loc_1000c9fc0:
  1000c9fc0  mov     x19, x0
  1000c9fc4  b       loc_1000c9fe4
  1000c9fc8  mov     x19, x0
  1000c9fcc  b       loc_1000c9fdc
  1000c9fd0  mov     x19, x0
  1000c9fd4  mov     x0, x24
  1000c9fd8  bl      _objc_release
loc_1000c9fdc:
  1000c9fdc  mov     x0, x23
  1000c9fe0  bl      _objc_release
loc_1000c9fe4:
  1000c9fe4  mov     x0, x21
  1000c9fe8  b       loc_1000ca004
  1000c9fec  mov     x19, x0
  1000c9ff0  b       loc_1000ca000
  1000c9ff4  mov     x19, x0
  1000c9ff8  mov     x0, x21
  1000c9ffc  bl      _objc_release
loc_1000ca000:
  1000ca000  mov     x0, x20
loc_1000ca004:
  1000ca004  bl      _objc_release
  1000ca008  mov     x0, x19
  1000ca00c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController loadView]
; address 0x1000ca010  size 400  kind objc
; ======================================================================
  1000ca010  stp     x24, x23, [sp, #-0x40]!
  1000ca014  stp     x22, x21, [sp, #0x10]
  1000ca018  stp     x20, x19, [sp, #0x20]
  1000ca01c  stp     x29, x30, [sp, #0x30]
  1000ca020  add     x29, sp, #0x30
  1000ca024  sub     sp, sp, #0x40
  1000ca028  mov     x20, x0
  1000ca02c  adrp    x24, #0x1003b0000
  1000ca030  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000ca034  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000ca038  str     x24, [sp, #0x38]
  1000ca03c  adrp    x8, #0x1003c2000
  1000ca040  add     x8, x8, #0x2f0                           ; @"challengeWorldLabel"
  1000ca044  str     x8, [sp, #8]
  1000ca048  adrp    x23, #0x10041d000
  1000ca04c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000ca050  adrp    x8, #0x100416000
  1000ca054  nop
  1000ca058  ldr     x22, [x8, #0xec0]
  1000ca05c  mov     w2, #1
  1000ca060  mov     x1, x22
  1000ca064  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000ca068  mov     x29, x29
  1000ca06c  bl      _objc_retainAutoreleasedReturnValue
  1000ca070  mov     x19, x0
  1000ca074  str     x19, [sp, #0x20]
  1000ca078  adrp    x8, #0x1003c2000
  1000ca07c  add     x8, x8, #0x310                           ; @"challengeScrollView"
  1000ca080  str     x8, [sp, #0x10]
  1000ca084  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000ca088  mov     w2, #2
  1000ca08c  mov     x1, x22
  1000ca090  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000ca094  bl      _objc_retain
  1000ca098  mov     x21, x0
  1000ca09c  str     x21, [sp, #0x28]
  1000ca0a0  adrp    x8, #0x1003bd000
  1000ca0a4  add     x8, x8, #0x630                           ; @"contentView"
  1000ca0a8  str     x8, [sp, #0x18]
  1000ca0ac  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000ca0b0  mov     w2, #3
  1000ca0b4  mov     x1, x22
  1000ca0b8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000ca0bc  bl      _objc_retain
  1000ca0c0  mov     x22, x0
  1000ca0c4  str     x22, [sp, #0x30]
  1000ca0c8  adrp    x8, #0x10041d000
  1000ca0cc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000ca0d0  adrp    x8, #0x100416000
  1000ca0d4  nop
  1000ca0d8  ldr     x1, [x8, #0xcd0]
  1000ca0dc  add     x2, sp, #0x20
  1000ca0e0  add     x3, sp, #8
  1000ca0e4  mov     w4, #3
  1000ca0e8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]
  1000ca0ec  mov     x29, x29
  1000ca0f0  bl      _objc_retainAutoreleasedReturnValue
  1000ca0f4  mov     x23, x0
  1000ca0f8  mov     x0, x22
  1000ca0fc  bl      _objc_release
  1000ca100  mov     x0, x21
  1000ca104  bl      _objc_release
  1000ca108  mov     x0, x19
  1000ca10c  bl      _objc_release
  1000ca110  adrp    x8, #0x100416000
  1000ca114  nop
  1000ca118  ldr     x1, [x8, #0xbf0]
  1000ca11c  adrp    x2, #0x1003c2000
  1000ca120  add     x2, x2, #0x330                           ; @"ADChallengeSelectorViewController"
  1000ca124  mov     x0, x20
  1000ca128  mov     x3, x23
  1000ca12c  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADChallengeSelectorViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]]
  1000ca130  mov     x0, x23
  1000ca134  bl      _objc_release
  1000ca138  ldr     x8, [sp, #0x38]
  1000ca13c  sub     x8, x24, x8
  1000ca140  cbnz    x8, loc_1000ca15c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000ca144  sub     sp, x29, #0x30
  1000ca148  ldp     x29, x30, [sp, #0x30]
  1000ca14c  ldp     x20, x19, [sp, #0x20]
  1000ca150  ldp     x22, x21, [sp, #0x10]
  1000ca154  ldp     x24, x23, [sp], #0x40
  1000ca158  ret
loc_1000ca15c:
  1000ca15c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000ca160  mov     x20, x0
  1000ca164  b       loc_1000ca184
  1000ca168  mov     x20, x0
  1000ca16c  b       loc_1000ca17c
  1000ca170  mov     x20, x0
  1000ca174  mov     x0, x22
  1000ca178  bl      _objc_release
loc_1000ca17c:
  1000ca17c  mov     x0, x21
  1000ca180  bl      _objc_release
loc_1000ca184:
  1000ca184  mov     x0, x19
  1000ca188  b       loc_1000ca194
  1000ca18c  mov     x20, x0
  1000ca190  mov     x0, x23
loc_1000ca194:
  1000ca194  bl      _objc_release
  1000ca198  mov     x0, x20
  1000ca19c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController viewWillAppear:]
; address 0x1000ca1a0  size 128  kind objc
; ======================================================================
  1000ca1a0  stp     x20, x19, [sp, #-0x20]!
  1000ca1a4  stp     x29, x30, [sp, #0x10]
  1000ca1a8  add     x29, sp, #0x10
  1000ca1ac  sub     sp, sp, #0x10
  1000ca1b0  mov     x19, x0
  1000ca1b4  str     x19, [sp]
  1000ca1b8  adrp    x8, #0x10041e000
  1000ca1bc  ldr     x8, [x8, #0xfb8]
  1000ca1c0  str     x8, [sp, #8]
  1000ca1c4  adrp    x8, #0x100417000
  1000ca1c8  nop
  1000ca1cc  ldr     x1, [x8, #0x928]
  1000ca1d0  mov     x0, sp
  1000ca1d4  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  1000ca1d8  adrp    x8, #0x10041a000
  1000ca1dc  nop
  1000ca1e0  ldr     x1, [x8, #0xc88]
  1000ca1e4  mov     x0, x19
  1000ca1e8  bl      _objc_msgSend                            ; [self initChallengeList]
  1000ca1ec  adrp    x8, #0x100420000
  1000ca1f0  ldrsw   x8, [x8, #0x400]                         ; ivar offset ADChallengeSelectorViewController.challengeToLoad (+0x148)
  1000ca1f4  ldr     x2, [x19, x8]                            ; x2 = self->challengeToLoad
  1000ca1f8  cbz     x2, loc_1000ca210                        ; if (self->challengeToLoad == 0)
  1000ca1fc  adrp    x8, #0x10041a000
  1000ca200  nop
  1000ca204  ldr     x1, [x8, #0xc90]
  1000ca208  mov     x0, x19
  1000ca20c  bl      _objc_msgSend                            ; [self loadChallengeWithName:self->challengeToLoad]
loc_1000ca210:
  1000ca210  sub     sp, x29, #0x10
  1000ca214  ldp     x29, x30, [sp, #0x10]
  1000ca218  ldp     x20, x19, [sp], #0x20
  1000ca21c  ret

; ======================================================================
; -[ADChallengeSelectorViewController viewDidAppear:]
; address 0x1000ca220  size 60  kind objc
; ======================================================================
  1000ca220  stp     x29, x30, [sp, #-0x10]!
  1000ca224  mov     x29, sp
  1000ca228  sub     sp, sp, #0x10
  1000ca22c  str     x0, [sp]
  1000ca230  adrp    x8, #0x10041e000
  1000ca234  ldr     x8, [x8, #0xfb8]
  1000ca238  str     x8, [sp, #8]
  1000ca23c  adrp    x8, #0x100417000
  1000ca240  nop
  1000ca244  ldr     x1, [x8, #0x938]
  1000ca248  mov     x0, sp
  1000ca24c  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  1000ca250  mov     sp, x29
  1000ca254  ldp     x29, x30, [sp], #0x10
  1000ca258  ret

; ======================================================================
; -[ADChallengeSelectorViewController dealloc]
; address 0x1000ca25c  size 392  kind objc
; ======================================================================
  1000ca25c  stp     x28, x27, [sp, #-0x60]!
  1000ca260  stp     x26, x25, [sp, #0x10]
  1000ca264  stp     x24, x23, [sp, #0x20]
  1000ca268  stp     x22, x21, [sp, #0x30]
  1000ca26c  stp     x20, x19, [sp, #0x40]
  1000ca270  stp     x29, x30, [sp, #0x50]
  1000ca274  add     x29, sp, #0x50
  1000ca278  sub     sp, sp, #0x20
  1000ca27c  mov     x19, x0
  1000ca280  mov     x20, #0
  1000ca284  adrp    x8, #0x100420000
  1000ca288  ldrsw   x27, [x8, #0x404]                        ; ivar offset ADChallengeSelectorViewController.icons (+0x140)
  1000ca28c  adrp    x8, #0x100416000
  1000ca290  nop
  1000ca294  ldr     x21, [x8, #0xe30]
  1000ca298  adrp    x8, #0x100416000
  1000ca29c  nop
  1000ca2a0  ldr     x22, [x8, #0xc30]
  1000ca2a4  adrp    x8, #0x100416000
  1000ca2a8  nop
  1000ca2ac  ldr     x23, [x8, #0xf18]
  1000ca2b0  adrp    x8, #0x100417000
  1000ca2b4  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  1000ca2b8  ldr     x24, [x8]
  1000ca2bc  b       loc_1000ca2d0
loc_1000ca2c0:
  1000ca2c0  mov     x29, x29
  1000ca2c4  bl      _objc_retainAutoreleasedReturnValue
  1000ca2c8  bl      _objc_release
  1000ca2cc  add     x20, x20, #1
loc_1000ca2d0:
  1000ca2d0  ldr     x0, [x19, x27]                           ; x0 = self->icons
  1000ca2d4  mov     x1, x21
  1000ca2d8  bl      _objc_msgSend                            ; [self->icons count]
  1000ca2dc  mov     x8, x0
  1000ca2e0  ldr     x0, [x19, x27]                           ; x0 = self->icons
  1000ca2e4  cmp     x20, x8
  1000ca2e8  b.hs    loc_1000ca34c                            ; if (x20 >=u [self->icons count])
  1000ca2ec  mov     x1, x22
  1000ca2f0  mov     x2, x20
  1000ca2f4  bl      _objc_msgSend                            ; [self->icons objectAtIndex:x2]
  1000ca2f8  mov     x29, x29
  1000ca2fc  bl      _objc_retainAutoreleasedReturnValue
  1000ca300  mov     x25, x0
  1000ca304  mov     x1, x23
  1000ca308  bl      _objc_msgSend                            ; [[self->icons objectAtIndex:x2] view]
  1000ca30c  mov     x29, x29
  1000ca310  bl      _objc_retainAutoreleasedReturnValue
  1000ca314  mov     x26, x0
  1000ca318  mov     x1, x24
  1000ca31c  bl      _objc_msgSend                            ; [[[self->icons objectAtIndex:x2] view] removeFromSuperview]
  1000ca320  mov     x0, x26
  1000ca324  bl      _objc_release
  1000ca328  mov     x0, x25
  1000ca32c  bl      _objc_release
  1000ca330  ldr     x0, [x19, x27]                           ; x0 = self->icons
  1000ca334  mov     x1, x22
  1000ca338  mov     x2, x20
  1000ca33c  bl      _objc_msgSend                            ; [self->icons objectAtIndex:x2]
  1000ca340  b       loc_1000ca2c0
  1000ca344  mov     x20, x0
  1000ca348  b       loc_1000ca3b4
loc_1000ca34c:
  1000ca34c  str     xzr, [x19, x27]                          ; self->icons = 0
  1000ca350  bl      _objc_release
  1000ca354  str     x19, [sp, #0x10]
  1000ca358  adrp    x8, #0x10041e000
  1000ca35c  ldr     x8, [x8, #0xfb8]
  1000ca360  str     x8, [sp, #0x18]
  1000ca364  adrp    x8, #0x100416000
  1000ca368  nop
  1000ca36c  ldr     x1, [x8, #0xfc8]
  1000ca370  add     x0, sp, #0x10
  1000ca374  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000ca378  sub     sp, x29, #0x50
  1000ca37c  ldp     x29, x30, [sp, #0x50]
  1000ca380  ldp     x20, x19, [sp, #0x40]
  1000ca384  ldp     x22, x21, [sp, #0x30]
  1000ca388  ldp     x24, x23, [sp, #0x20]
  1000ca38c  ldp     x26, x25, [sp, #0x10]
  1000ca390  ldp     x28, x27, [sp], #0x60
  1000ca394  ret
  1000ca398  mov     x20, x0
  1000ca39c  b       loc_1000ca3ac
  1000ca3a0  mov     x20, x0
  1000ca3a4  mov     x0, x26
  1000ca3a8  bl      _objc_release
loc_1000ca3ac:
  1000ca3ac  mov     x0, x25
  1000ca3b0  bl      _objc_release
loc_1000ca3b4:
  1000ca3b4  str     x19, [sp]
  1000ca3b8  adrp    x8, #0x10041e000
  1000ca3bc  ldr     x8, [x8, #0xfb8]
  1000ca3c0  str     x8, [sp, #8]
  1000ca3c4  adrp    x8, #0x100416000
  1000ca3c8  nop
  1000ca3cc  ldr     x1, [x8, #0xfc8]
  1000ca3d0  mov     x0, sp
  1000ca3d4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000ca3d8  mov     x0, x20
  1000ca3dc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ca3e0  bl      sub_10000b760

; ======================================================================
; -[ADChallengeSelectorViewController initChallengeList]
; address 0x1000ca3e4  size 1472  kind objc
; ======================================================================
  1000ca3e4  stp     d9, d8, [sp, #-0x70]!
  1000ca3e8  stp     x28, x27, [sp, #0x10]
  1000ca3ec  stp     x26, x25, [sp, #0x20]
  1000ca3f0  stp     x24, x23, [sp, #0x30]
  1000ca3f4  stp     x22, x21, [sp, #0x40]
  1000ca3f8  stp     x20, x19, [sp, #0x50]
  1000ca3fc  stp     x29, x30, [sp, #0x60]
  1000ca400  add     x29, sp, #0x60
  1000ca404  sub     sp, sp, #0x90
  1000ca408  mov     x24, x0
  1000ca40c  adrp    x8, #0x100420000
  1000ca410  ldrsw   x26, [x8, #0x404]                        ; ivar offset ADChallengeSelectorViewController.icons (+0x140)
  1000ca414  ldr     x8, [x24, x26]                           ; x8 = self->icons
  1000ca418  cbz     x8, loc_1000ca4a4                        ; if (self->icons == 0)
  1000ca41c  adrp    x8, #0x10041a000
  1000ca420  nop
  1000ca424  ldr     x1, [x8, #0xc98]
  1000ca428  mov     x0, x24
  1000ca42c  bl      _objc_msgSend                            ; [self challengeScrollView]
  1000ca430  mov     x29, x29
  1000ca434  bl      _objc_retainAutoreleasedReturnValue
  1000ca438  mov     x19, x0
  1000ca43c  adrp    x8, #0x100417000
  1000ca440  nop
  1000ca444  ldr     x1, [x8, #0x1c8]
  1000ca448  bl      _objc_msgSend                            ; [[self challengeScrollView] subviews]
  1000ca44c  mov     x29, x29
  1000ca450  bl      _objc_retainAutoreleasedReturnValue
  1000ca454  mov     x20, x0
  1000ca458  adrp    x8, #0x100417000
  1000ca45c  nop
  1000ca460  ldr     x2, [x8, #0x1d0]
  1000ca464  adrp    x8, #0x100416000
  1000ca468  nop
  1000ca46c  ldr     x1, [x8, #0xe48]
  1000ca470  bl      _objc_msgSend                            ; [[[self challengeScrollView] subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)]
  1000ca474  mov     x0, x20
  1000ca478  bl      _objc_release
  1000ca47c  mov     x0, x19
  1000ca480  bl      _objc_release
  1000ca484  ldr     x0, [x24, x26]                           ; x0 = self->icons
  1000ca488  adrp    x8, #0x100417000
  1000ca48c  nop
  1000ca490  ldr     x1, [x8, #0x1b8]
  1000ca494  bl      _objc_msgSend                            ; [self->icons removeAllObjects]
  1000ca498  ldr     x0, [x24, x26]                           ; x0 = self->icons
  1000ca49c  str     xzr, [x24, x26]                          ; self->icons = 0
  1000ca4a0  bl      _objc_release
loc_1000ca4a4:
  1000ca4a4  adrp    x8, #0x10041d000
  1000ca4a8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000ca4ac  adrp    x8, #0x100416000
  1000ca4b0  nop
  1000ca4b4  ldr     x1, [x8, #0xac8]
  1000ca4b8  str     x1, [sp, #0x28]
  1000ca4bc  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000ca4c0  adrp    x8, #0x100416000
  1000ca4c4  nop
  1000ca4c8  ldr     x1, [x8, #0xab8]
  1000ca4cc  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000ca4d0  ldr     x8, [x24, x26]                           ; x8 = self->icons
  1000ca4d4  str     x0, [x24, x26]                           ; self->icons = [[NSMutableArray alloc] init]
  1000ca4d8  mov     x0, x8
  1000ca4dc  bl      _objc_release
  1000ca4e0  adrp    x8, #0x100418000
  1000ca4e4  nop
  1000ca4e8  ldr     x23, [x8, #0xe30]
  1000ca4ec  mov     x0, x24
  1000ca4f0  mov     x1, x23
  1000ca4f4  bl      _objc_msgSend                            ; [self challengeFiles]
  1000ca4f8  mov     x29, x29
  1000ca4fc  bl      _objc_retainAutoreleasedReturnValue
  1000ca500  mov     x19, x0
  1000ca504  adrp    x8, #0x100416000
  1000ca508  nop
  1000ca50c  ldr     x1, [x8, #0xc30]
  1000ca510  str     x1, [sp, #0x30]
  1000ca514  mov     x2, #0
  1000ca518  bl      _objc_msgSend                            ; [[self challengeFiles] objectAtIndex:0]
  1000ca51c  mov     x29, x29
  1000ca520  bl      _objc_retainAutoreleasedReturnValue
  1000ca524  mov     x21, x0
  1000ca528  mov     x0, x19
  1000ca52c  bl      _objc_release
  1000ca530  adrp    x8, #0x100417000
  1000ca534  nop
  1000ca538  ldr     x1, [x8, #0xa00]
  1000ca53c  str     x1, [sp, #0x20]
  1000ca540  mov     x0, x24
  1000ca544  mov     x2, x21
  1000ca548  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:0]]
  1000ca54c  mov     x29, x29
  1000ca550  bl      _objc_retainAutoreleasedReturnValue
  1000ca554  mov     x19, x0
  1000ca558  bl      _objc_release
  1000ca55c  cbz     x19, loc_1000ca5d8                       ; if ([self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:0]] == 0)
  1000ca560  ldr     x20, [x24, x26]                          ; x20 = self->icons
  1000ca564  adrp    x8, #0x10041e000
  1000ca568  ldr     x0, [x8, #0x450]                         ; class ADChallengeIconViewController
  1000ca56c  ldr     x1, [sp, #0x28]
  1000ca570  bl      _objc_msgSend                            ; [ADChallengeIconViewController alloc]
  1000ca574  mov     x22, x0
  1000ca578  mov     x0, x24
  1000ca57c  ldr     x1, [sp, #0x20]
  1000ca580  mov     x2, x21
  1000ca584  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:0]]
  1000ca588  mov     x29, x29
  1000ca58c  bl      _objc_retainAutoreleasedReturnValue
  1000ca590  mov     x19, x0
  1000ca594  adrp    x8, #0x100416000
  1000ca598  nop
  1000ca59c  ldr     x1, [x8, #0xd80]
  1000ca5a0  mov     x0, x22
  1000ca5a4  mov     x2, x19
  1000ca5a8  bl      _objc_msgSend                            ; [[ADChallengeIconViewController alloc] initWithDictionary:[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:0]]]
  1000ca5ac  mov     x22, x0
  1000ca5b0  adrp    x8, #0x100416000
  1000ca5b4  nop
  1000ca5b8  ldr     x1, [x8, #0xd90]
  1000ca5bc  mov     x0, x20
  1000ca5c0  mov     x2, x22
  1000ca5c4  bl      _objc_msgSend                            ; [self->icons addObject:[[ADChallengeIconViewController alloc] initWithDictionary:[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:0]]]]
  1000ca5c8  mov     x0, x22
  1000ca5cc  bl      _objc_release
  1000ca5d0  mov     x0, x19
  1000ca5d4  bl      _objc_release
loc_1000ca5d8:
  1000ca5d8  adrp    x8, #0x10041a000
  1000ca5dc  nop
  1000ca5e0  ldr     x1, [x8, #0xc98]
  1000ca5e4  mov     x0, x24
  1000ca5e8  bl      _objc_msgSend                            ; [self challengeScrollView]
  1000ca5ec  mov     x29, x29
  1000ca5f0  bl      _objc_retainAutoreleasedReturnValue
  1000ca5f4  mov     x19, x0
  1000ca5f8  adrp    x8, #0x100416000
  1000ca5fc  nop
  1000ca600  ldr     x22, [x8, #0xf38]
  1000ca604  mov     x1, x22
  1000ca608  bl      _objc_msgSend                            ; [[self challengeScrollView] frame]
  1000ca60c  mov     v8.16b, v2.16b
  1000ca610  ldr     x0, [x24, x26]                           ; x0 = self->icons
  1000ca614  mov     x2, #0
  1000ca618  ldr     x1, [sp, #0x30]
  1000ca61c  bl      _objc_msgSend                            ; [self->icons objectAtIndex:0]
  1000ca620  mov     x27, x23
  1000ca624  mov     x29, x29
  1000ca628  bl      _objc_retainAutoreleasedReturnValue
  1000ca62c  mov     x20, x0
  1000ca630  adrp    x8, #0x100416000
  1000ca634  nop
  1000ca638  ldr     x1, [x8, #0xf18]
  1000ca63c  bl      _objc_msgSend                            ; [[self->icons objectAtIndex:0] view]
  1000ca640  mov     x29, x29
  1000ca644  bl      _objc_retainAutoreleasedReturnValue
  1000ca648  mov     x23, x0
  1000ca64c  mov     x1, x22
  1000ca650  bl      _objc_msgSend                            ; [[[self->icons objectAtIndex:0] view] frame]
  1000ca654  fmov    d0, #-5.00000000
  1000ca658  fmul    d0, d2, d0
  1000ca65c  fadd    d0, d8, d0                               ; t1 = ([[self challengeScrollView] frame].2 + ([[[self->icons objectAtIndex:0] view] frame].2 * -5))
  1000ca660  fcvt    s8, d0
  1000ca664  mov     x0, x23
  1000ca668  bl      _objc_release
  1000ca66c  mov     x0, x20
  1000ca670  bl      _objc_release
  1000ca674  mov     x0, x19
  1000ca678  bl      _objc_release
  1000ca67c  fmov    s0, #10.00000000
  1000ca680  str     xzr, [sp, #0x70]
  1000ca684  add     x19, sp, #0x70
  1000ca688  mov     w8, #0x20000000
  1000ca68c  str     x19, [sp, #0x78]
  1000ca690  str     w8, [sp, #0x80]
  1000ca694  mov     w8, #0x20
  1000ca698  str     w8, [sp, #0x84]
  1000ca69c  adrp    x8, #0x1003b0000
  1000ca6a0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000ca6a4  fdiv    s8, s8, s0
  1000ca6a8  str     x8, [sp, #0x38]
  1000ca6ac  mov     w8, #-0x3e000000
  1000ca6b0  stp     w8, wzr, [sp, #0x40]
  1000ca6b4  str     s8, [sp, #0x88]
  1000ca6b8  adr     x8, #0x1000ca9a4                         ; &-[ADChallengeSelectorViewController initChallengeList]_block_invoke
  1000ca6bc  nop
  1000ca6c0  str     x8, [sp, #0x48]
  1000ca6c4  adrp    x8, #0x1003b2000
  1000ca6c8  add     x8, x8, #0x7c0                           ; &d_1003b27c0
  1000ca6cc  str     x8, [sp, #0x50]
  1000ca6d0  mov     x0, x24
  1000ca6d4  bl      _objc_retain
  1000ca6d8  mov     x25, x0
  1000ca6dc  stp     x25, x19, [sp, #0x58]
  1000ca6e0  str     s8, [sp, #0x68]
  1000ca6e4  add     x0, sp, #0x38
  1000ca6e8  bl      _objc_retainBlock
  1000ca6ec  mov     x24, x0
  1000ca6f0  ldr     x0, [x25, x26]                           ; x0 = self->icons
  1000ca6f4  mov     x2, #0
  1000ca6f8  ldr     x1, [sp, #0x30]
  1000ca6fc  bl      _objc_msgSend                            ; [self->icons objectAtIndex:0]
  1000ca700  stp     x21, x26, [sp, #8]
  1000ca704  mov     x29, x29
  1000ca708  bl      _objc_retainAutoreleasedReturnValue
  1000ca70c  mov     x19, x0
  1000ca710  ldr     x8, [x24, #0x10]
  1000ca714  mov     w2, #0
  1000ca718  mov     x0, x24
  1000ca71c  mov     x1, x19
  1000ca720  blr     x8
  1000ca724  mov     x23, x27
  1000ca728  mov     x0, x19
  1000ca72c  bl      _objc_release
  1000ca730  adrp    x8, #0x100416000
  1000ca734  nop
  1000ca738  ldr     x26, [x8, #0xe30]
  1000ca73c  adrp    x8, #0x100416000
  1000ca740  nop
  1000ca744  ldr     x8, [x8, #0xd80]
  1000ca748  str     x8, [sp, #0x18]
  1000ca74c  adrp    x8, #0x100416000
  1000ca750  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  1000ca754  ldr     x28, [x8]
  1000ca758  mov     w19, #1
  1000ca75c  b       loc_1000ca770
loc_1000ca760:
  1000ca760  mov     x0, x22
  1000ca764  bl      _objc_release
  1000ca768  add     x19, x19, #1
  1000ca76c  mov     x23, x27
loc_1000ca770:
  1000ca770  mov     x0, x25
  1000ca774  mov     x1, x23
  1000ca778  bl      _objc_msgSend                            ; [self challengeFiles]
  1000ca77c  mov     x29, x29
  1000ca780  bl      _objc_retainAutoreleasedReturnValue
  1000ca784  mov     x20, x0
  1000ca788  mov     x1, x26
  1000ca78c  bl      _objc_msgSend                            ; [[self challengeFiles] count]
  1000ca790  mov     x21, x0
  1000ca794  mov     x0, x20
  1000ca798  bl      _objc_release
  1000ca79c  cmp     x19, x21
  1000ca7a0  b.hs    loc_1000ca86c                            ; if (x19 >=u [[self challengeFiles] count])
  1000ca7a4  adrp    x8, #0x10041e000
  1000ca7a8  ldr     x0, [x8, #0x450]                         ; class ADChallengeIconViewController
  1000ca7ac  ldr     x1, [sp, #0x28]
  1000ca7b0  bl      _objc_msgSend                            ; [ADChallengeIconViewController alloc]
  1000ca7b4  mov     x22, x0
  1000ca7b8  mov     x0, x25
  1000ca7bc  mov     x1, x23
  1000ca7c0  bl      _objc_msgSend                            ; [self challengeFiles]
  1000ca7c4  mov     x27, x23
  1000ca7c8  mov     x29, x29
  1000ca7cc  bl      _objc_retainAutoreleasedReturnValue
  1000ca7d0  mov     x20, x0
  1000ca7d4  ldr     x1, [sp, #0x30]
  1000ca7d8  mov     x2, x19
  1000ca7dc  bl      _objc_msgSend                            ; [[self challengeFiles] objectAtIndex:x2]
  1000ca7e0  mov     x29, x29
  1000ca7e4  bl      _objc_retainAutoreleasedReturnValue
  1000ca7e8  mov     x23, x0
  1000ca7ec  mov     x0, x25
  1000ca7f0  ldr     x1, [sp, #0x20]
  1000ca7f4  mov     x2, x23
  1000ca7f8  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:x2]]
  1000ca7fc  mov     x29, x29
  1000ca800  bl      _objc_retainAutoreleasedReturnValue
  1000ca804  mov     x21, x0
  1000ca808  mov     x0, x22
  1000ca80c  ldr     x1, [sp, #0x18]
  1000ca810  mov     x2, x21
  1000ca814  bl      _objc_msgSend                            ; [[ADChallengeIconViewController alloc] initWithDictionary:[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:x2]]]
  1000ca818  mov     x22, x0
  1000ca81c  mov     x0, x21
  1000ca820  bl      _objc_release
  1000ca824  mov     x0, x23
  1000ca828  bl      _objc_release
  1000ca82c  mov     x0, x20
  1000ca830  bl      _objc_release
  1000ca834  ldr     x8, [sp, #0x10]
  1000ca838  ldr     x0, [x25, x8]                            ; x0 = self->icons
  1000ca83c  mov     x1, x28
  1000ca840  mov     x2, x22
  1000ca844  bl      _objc_msgSend                            ; [self->icons addObject:[[ADChallengeIconViewController alloc] initWithDictionary:[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:x2]]]]
  1000ca848  ldr     x8, [x24, #0x10]
  1000ca84c  mov     x0, x24
  1000ca850  mov     x1, x22
  1000ca854  mov     x2, x19
  1000ca858  blr     x8
  1000ca85c  b       loc_1000ca760
  1000ca860  mov     x25, x0
  1000ca864  mov     x0, x22
  1000ca868  b       loc_1000ca8ec
loc_1000ca86c:
  1000ca86c  mov     x0, x24
  1000ca870  bl      _objc_release
  1000ca874  ldr     x0, [sp, #0x58]
  1000ca878  bl      _objc_release
  1000ca87c  add     x0, sp, #0x70
  1000ca880  mov     w1, #8
  1000ca884  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x70], 8)
  1000ca888  ldr     x0, [sp, #8]
  1000ca88c  bl      _objc_release
  1000ca890  sub     sp, x29, #0x60
  1000ca894  ldp     x29, x30, [sp, #0x60]
  1000ca898  ldp     x20, x19, [sp, #0x50]
  1000ca89c  ldp     x22, x21, [sp, #0x40]
  1000ca8a0  ldp     x24, x23, [sp, #0x30]
  1000ca8a4  ldp     x26, x25, [sp, #0x20]
  1000ca8a8  ldp     x28, x27, [sp, #0x10]
  1000ca8ac  ldp     d9, d8, [sp], #0x70
  1000ca8b0  ret
loc_1000ca8b4:
  1000ca8b4  mov     x25, x0
  1000ca8b8  b       loc_1000ca8f0
  1000ca8bc  mov     x25, x0
  1000ca8c0  b       loc_1000ca8e8
  1000ca8c4  mov     x25, x0
  1000ca8c8  b       loc_1000ca8e8
  1000ca8cc  mov     x25, x0
  1000ca8d0  b       loc_1000ca8e0
  1000ca8d4  mov     x25, x0
  1000ca8d8  mov     x0, x21
  1000ca8dc  bl      _objc_release
loc_1000ca8e0:
  1000ca8e0  mov     x0, x23
  1000ca8e4  bl      _objc_release
loc_1000ca8e8:
  1000ca8e8  mov     x0, x20
loc_1000ca8ec:
  1000ca8ec  bl      _objc_release
loc_1000ca8f0:
  1000ca8f0  ldr     x21, [sp, #8]
  1000ca8f4  mov     x0, x24
  1000ca8f8  bl      _objc_release
  1000ca8fc  ldr     x0, [sp, #0x58]
  1000ca900  bl      _objc_release
  1000ca904  add     x0, sp, #0x70
  1000ca908  mov     w1, #8
  1000ca90c  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x70], 8)
loc_1000ca910:
  1000ca910  mov     x0, x21
loc_1000ca914:
  1000ca914  bl      _objc_release
  1000ca918  mov     x0, x25
  1000ca91c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ca920  mov     x25, x0
  1000ca924  b       loc_1000ca910
  1000ca928  mov     x25, x0
  1000ca92c  b       loc_1000ca998
  1000ca930  mov     x25, x0
  1000ca934  b       loc_1000ca97c
  1000ca938  mov     x25, x0
  1000ca93c  b       loc_1000ca94c
  1000ca940  mov     x25, x0
  1000ca944  mov     x0, x23
  1000ca948  bl      _objc_release
loc_1000ca94c:
  1000ca94c  mov     x0, x20
  1000ca950  b       loc_1000ca994
  1000ca954  str     x21, [sp, #8]
  1000ca958  b       loc_1000ca8b4
  1000ca95c  mov     x25, x0
  1000ca960  mov     x0, x19
  1000ca964  b       loc_1000ca8ec
  1000ca968  mov     x25, x0
  1000ca96c  b       loc_1000ca97c
  1000ca970  mov     x25, x0
  1000ca974  mov     x0, x20
  1000ca978  bl      _objc_release
loc_1000ca97c:
  1000ca97c  mov     x0, x19
  1000ca980  b       loc_1000ca914
  1000ca984  mov     x25, x0
  1000ca988  b       loc_1000ca998
  1000ca98c  mov     x25, x0
  1000ca990  mov     x0, x22
loc_1000ca994:
  1000ca994  bl      _objc_release
loc_1000ca998:
  1000ca998  mov     x0, x19
  1000ca99c  bl      _objc_release
  1000ca9a0  b       loc_1000ca910

; ======================================================================
; -[ADChallengeSelectorViewController initChallengeList]_block_invoke
; address 0x1000ca9a4  size 1444  kind block
; ======================================================================
  1000ca9a4  stp     d11, d10, [sp, #-0x80]!
  1000ca9a8  stp     d9, d8, [sp, #0x10]
  1000ca9ac  stp     x28, x27, [sp, #0x20]
  1000ca9b0  stp     x26, x25, [sp, #0x30]
  1000ca9b4  stp     x24, x23, [sp, #0x40]
  1000ca9b8  stp     x22, x21, [sp, #0x50]
  1000ca9bc  stp     x20, x19, [sp, #0x60]
  1000ca9c0  stp     x29, x30, [sp, #0x70]
  1000ca9c4  add     x29, sp, #0x70
  1000ca9c8  sub     sp, sp, #0x40
  1000ca9cc  mov     x27, x2
  1000ca9d0  mov     x20, x0
  1000ca9d4  ldr     x0, [x20, #0x20]                         ; x0 = block[+0x20]
  1000ca9d8  adrp    x8, #0x10041a000
  1000ca9dc  nop
  1000ca9e0  ldr     x1, [x8, #0xc98]
  1000ca9e4  bl      _objc_msgSend                            ; [block[+0x20] challengeScrollView]
  1000ca9e8  mov     x29, x29
  1000ca9ec  bl      _objc_retainAutoreleasedReturnValue
  1000ca9f0  mov     x19, x0
  1000ca9f4  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000ca9f8  adrp    x9, #0x100420000
  1000ca9fc  ldrsw   x26, [x9, #0x404]                        ; ivar offset ADChallengeSelectorViewController.icons (+0x140)
  1000caa00  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000caa04  sxtw    x22, w27
  1000caa08  adrp    x8, #0x100416000
  1000caa0c  nop
  1000caa10  ldr     x23, [x8, #0xc30]
  1000caa14  mov     x1, x23
  1000caa18  mov     x2, x22
  1000caa1c  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000caa20  mov     x29, x29
  1000caa24  bl      _objc_retainAutoreleasedReturnValue
  1000caa28  mov     x21, x0
  1000caa2c  adrp    x8, #0x100416000
  1000caa30  nop
  1000caa34  ldr     x24, [x8, #0xf18]
  1000caa38  mov     x1, x24
  1000caa3c  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000caa40  mov     x29, x29
  1000caa44  bl      _objc_retainAutoreleasedReturnValue
  1000caa48  mov     x25, x0
  1000caa4c  adrp    x8, #0x100416000
  1000caa50  nop
  1000caa54  ldr     x1, [x8, #0xf20]
  1000caa58  mov     x0, x19
  1000caa5c  mov     x2, x25
  1000caa60  bl      _objc_msgSend                            ; [[block[+0x20] challengeScrollView] addSubview:[[block[+0x20]->icons objectAtIndex:blockarg2] view]]
  1000caa64  mov     x0, x25
  1000caa68  bl      _objc_release
  1000caa6c  mov     x0, x21
  1000caa70  bl      _objc_release
  1000caa74  mov     x0, x19
  1000caa78  bl      _objc_release
  1000caa7c  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000caa80  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000caa84  mov     x1, x23
  1000caa88  mov     x2, x22
  1000caa8c  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000caa90  mov     x29, x29
  1000caa94  bl      _objc_retainAutoreleasedReturnValue
  1000caa98  mov     x19, x0
  1000caa9c  mov     x1, x24
  1000caaa0  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000caaa4  mov     x29, x29
  1000caaa8  bl      _objc_retainAutoreleasedReturnValue
  1000caaac  mov     x21, x0
  1000caab0  adrp    x8, #0x100417000
  1000caab4  nop
  1000caab8  ldr     x1, [x8, #0x670]
  1000caabc  mov     x2, x22
  1000caac0  bl      _objc_msgSend                            ; [[[block[+0x20]->icons objectAtIndex:blockarg2] view] setTag:blockarg2]
  1000caac4  mov     x0, x21
  1000caac8  bl      _objc_release
  1000caacc  mov     x0, x19
  1000caad0  bl      _objc_release
  1000caad4  adrp    x8, #0x10041e000
  1000caad8  ldr     x0, [x8, #0x20]                          ; class UITapGestureRecognizer
  1000caadc  adrp    x8, #0x100416000
  1000caae0  nop
  1000caae4  ldr     x1, [x8, #0xac8]
  1000caae8  bl      _objc_msgSend                            ; [UITapGestureRecognizer alloc]
  1000caaec  ldr     x2, [x20, #0x20]                         ; x2 = block[+0x20]
  1000caaf0  adrp    x8, #0x10041a000
  1000caaf4  nop
  1000caaf8  ldr     x3, [x8, #0xca0]
  1000caafc  adrp    x8, #0x100417000
  1000cab00  nop
  1000cab04  ldr     x1, [x8, #0x638]
  1000cab08  bl      _objc_msgSend                            ; [[UITapGestureRecognizer alloc] initWithTarget:block[+0x20] action:@selector(challengeButtonPressed:)]
  1000cab0c  mov     x25, x0
  1000cab10  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000cab14  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000cab18  mov     x1, x23
  1000cab1c  mov     x2, x22
  1000cab20  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000cab24  mov     x29, x29
  1000cab28  bl      _objc_retainAutoreleasedReturnValue
  1000cab2c  mov     x19, x0
  1000cab30  mov     x1, x24
  1000cab34  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000cab38  mov     x29, x29
  1000cab3c  bl      _objc_retainAutoreleasedReturnValue
  1000cab40  mov     x21, x0
  1000cab44  adrp    x8, #0x100417000
  1000cab48  nop
  1000cab4c  ldr     x1, [x8, #0x668]
  1000cab50  mov     x2, x25
  1000cab54  bl      _objc_msgSend                            ; [[[block[+0x20]->icons objectAtIndex:blockarg2] view] addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:block[+0x20] action:@selector(challengeButtonPressed:)]]
  1000cab58  mov     x0, x21
  1000cab5c  bl      _objc_release
  1000cab60  mov     x0, x19
  1000cab64  bl      _objc_release
  1000cab68  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000cab6c  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000cab70  mov     x1, x23
  1000cab74  mov     x2, x22
  1000cab78  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000cab7c  mov     x29, x29
  1000cab80  bl      _objc_retainAutoreleasedReturnValue
  1000cab84  mov     x19, x0
  1000cab88  mov     x1, x24
  1000cab8c  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000cab90  mov     x29, x29
  1000cab94  bl      _objc_retainAutoreleasedReturnValue
  1000cab98  str     x0, [sp, #0x38]
  1000cab9c  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  1000caba0  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000caba4  ldr     s10, [x8, #0x18]                         ; s10 = block[+0x28][+0x8][+0x18]
  1000caba8  cmp     w27, #5
  1000cabac  b.ge    loc_1000cabc0                            ; if (blockarg2 >= 5)
  1000cabb0  mov     w28, #0
  1000cabb4  fmov    d8, #20.00000000
  1000cabb8  str     x8, [sp, #8]
  1000cabbc  b       loc_1000cac14
loc_1000cabc0:
  1000cabc0  ldr     s8, [x20, #0x30]                         ; s8 = block[+0x30]
  1000cabc4  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000cabc8  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000cabcc  mov     x1, x23
  1000cabd0  mov     x2, x22
  1000cabd4  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000cabd8  mov     x29, x29
  1000cabdc  bl      _objc_retainAutoreleasedReturnValue
  1000cabe0  mov     x21, x0
  1000cabe4  mov     x1, x24
  1000cabe8  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000cabec  mov     x29, x29
  1000cabf0  bl      _objc_retainAutoreleasedReturnValue
  1000cabf4  str     x0, [sp, #8]
  1000cabf8  adrp    x8, #0x100416000
  1000cabfc  nop
  1000cac00  ldr     x1, [x8, #0xf38]
  1000cac04  bl      _objc_msgSend                            ; [[[block[+0x20]->icons objectAtIndex:blockarg2] view] frame]
  1000cac08  fcvt    d0, s8
  1000cac0c  fadd    d8, d0, d3
  1000cac10  mov     w28, #1
loc_1000cac14:
  1000cac14  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000cac18  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000cac1c  mov     x1, x23
  1000cac20  mov     x2, x22
  1000cac24  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000cac28  str     w28, [sp, #0x24]
  1000cac2c  str     x27, [sp, #0x18]
  1000cac30  mov     x29, x29
  1000cac34  bl      _objc_retainAutoreleasedReturnValue
  1000cac38  mov     x27, x0
  1000cac3c  mov     x1, x24
  1000cac40  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000cac44  str     x21, [sp, #0x10]
  1000cac48  str     x19, [sp, #0x28]
  1000cac4c  mov     x29, x29
  1000cac50  bl      _objc_retainAutoreleasedReturnValue
  1000cac54  mov     x28, x0
  1000cac58  adrp    x8, #0x100416000
  1000cac5c  nop
  1000cac60  ldr     x19, [x8, #0xf38]
  1000cac64  mov     x1, x19
  1000cac68  bl      _objc_msgSend                            ; [[[block[+0x20]->icons objectAtIndex:blockarg2] view] frame]
  1000cac6c  mov     v9.16b, v2.16b
  1000cac70  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000cac74  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000cac78  mov     x1, x23
  1000cac7c  mov     x2, x22
  1000cac80  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000cac84  str     x25, [sp, #0x30]
  1000cac88  mov     x29, x29
  1000cac8c  bl      _objc_retainAutoreleasedReturnValue
  1000cac90  mov     x21, x0
  1000cac94  mov     x1, x24
  1000cac98  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000cac9c  mov     x29, x29
  1000caca0  bl      _objc_retainAutoreleasedReturnValue
  1000caca4  mov     x25, x0
  1000caca8  mov     x1, x19
  1000cacac  bl      _objc_msgSend                            ; [[[block[+0x20]->icons objectAtIndex:blockarg2] view] frame]
  1000cacb0  fcvt    d0, s10
  1000cacb4  adrp    x8, #0x100417000
  1000cacb8  nop
  1000cacbc  ldr     x1, [x8, #0x7b8]
  1000cacc0  ldr     x0, [sp, #0x38]
  1000cacc4  mov     v1.16b, v8.16b
  1000cacc8  mov     v2.16b, v9.16b
  1000caccc  bl      _objc_msgSend                            ; [[[block[+0x20]->icons objectAtIndex:blockarg2] view] setFrame:{block[+0x28][+0x8][+0x18], d1, [[[block[+0x20]->icons objectAtIndex:blockarg2] view] frame].2, [[[block[+0x20]->icons objectAtIndex:blockarg2] view] frame].3}]
  1000cacd0  mov     x0, x25
  1000cacd4  bl      _objc_release
  1000cacd8  mov     x0, x21
  1000cacdc  bl      _objc_release
  1000cace0  mov     x0, x28
  1000cace4  bl      _objc_release
  1000cace8  mov     x0, x27
  1000cacec  bl      _objc_release
  1000cacf0  ldr     w8, [sp, #0x24]
  1000cacf4  cbz     w8, loc_1000cad08                        ; if (one of {0, 1} == 0)
  1000cacf8  ldr     x0, [sp, #8]
  1000cacfc  bl      _objc_release
  1000cad00  ldr     x0, [sp, #0x10]
  1000cad04  bl      _objc_release
loc_1000cad08:
  1000cad08  ldr     x0, [sp, #0x38]
  1000cad0c  bl      _objc_release
  1000cad10  ldr     x0, [sp, #0x28]
  1000cad14  bl      _objc_release
  1000cad18  ldr     s8, [x20, #0x30]                         ; s8 = block[+0x30]
  1000cad1c  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  1000cad20  ldr     x0, [x8, x26]                            ; x0 = block[+0x20]->icons
  1000cad24  mov     x1, x23
  1000cad28  mov     x2, x22
  1000cad2c  ldr     x25, [sp, #0x30]
  1000cad30  bl      _objc_msgSend                            ; [block[+0x20]->icons objectAtIndex:blockarg2]
  1000cad34  ldr     x23, [sp, #0x18]
  1000cad38  mov     x29, x29
  1000cad3c  bl      _objc_retainAutoreleasedReturnValue
  1000cad40  mov     x21, x0
  1000cad44  mov     x1, x24
  1000cad48  bl      _objc_msgSend                            ; [[block[+0x20]->icons objectAtIndex:blockarg2] view]
  1000cad4c  mov     x29, x29
  1000cad50  bl      _objc_retainAutoreleasedReturnValue
  1000cad54  mov     x22, x0
  1000cad58  mov     x1, x19
  1000cad5c  bl      _objc_msgSend                            ; [[[block[+0x20]->icons objectAtIndex:blockarg2] view] frame]
  1000cad60  fcvt    d0, s8
  1000cad64  fadd    d0, d0, d2
  1000cad68  ldr     s1, [x20, #0x30]                         ; s1 = block[+0x30]
  1000cad6c  fcvt    d1, s1
  1000cad70  fadd    d0, d0, d1                               ; t1 = ((block[+0x30] + [[[block[+0x20]->icons objectAtIndex:blockarg2] view] frame].2) + block[+0x30])
  1000cad74  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  1000cad78  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000cad7c  ldr     s1, [x8, #0x18]                          ; s1 = block[+0x28][+0x8][+0x18]
  1000cad80  fcvt    d1, s1
  1000cad84  fadd    d0, d0, d1
  1000cad88  fcvt    s0, d0
  1000cad8c  str     s0, [x8, #0x18]                          ; block[+0x28][+0x8][+0x18] = (t1 + block[+0x28][+0x8][+0x18])
  1000cad90  mov     x0, x22
  1000cad94  bl      _objc_release
  1000cad98  mov     x0, x21
  1000cad9c  bl      _objc_release
  1000cada0  cmp     w23, #4
  1000cada4  b.ne    loc_1000cadb8                            ; if (blockarg2 != 4)
  1000cada8  ldr     s0, [x20, #0x30]                         ; s0 = block[+0x30]
  1000cadac  ldr     x8, [x20, #0x28]                         ; x8 = block[+0x28]
  1000cadb0  ldr     x8, [x8, #8]                             ; x8 = block[+0x28][+0x8]
  1000cadb4  str     s0, [x8, #0x18]                          ; block[+0x28][+0x8][+0x18] = block[+0x30]
loc_1000cadb8:
  1000cadb8  mov     x0, x25
  1000cadbc  sub     sp, x29, #0x70
  1000cadc0  ldp     x29, x30, [sp, #0x70]
  1000cadc4  ldp     x20, x19, [sp, #0x60]
  1000cadc8  ldp     x22, x21, [sp, #0x50]
  1000cadcc  ldp     x24, x23, [sp, #0x40]
  1000cadd0  ldp     x26, x25, [sp, #0x30]
  1000cadd4  ldp     x28, x27, [sp, #0x20]
  1000cadd8  ldp     d9, d8, [sp, #0x10]
  1000caddc  ldp     d11, d10, [sp], #0x80
  1000cade0  b       _objc_release
  1000cade4  mov     x20, x0
  1000cade8  b       loc_1000caf40
  1000cadec  str     x25, [sp, #0x30]
  1000cadf0  mov     x20, x0
  1000cadf4  b       loc_1000caf38
  1000cadf8  str     x25, [sp, #0x30]
  1000cadfc  mov     x20, x0
  1000cae00  b       loc_1000caeb4
  1000cae04  mov     x20, x0
  1000cae08  mov     x0, x25
  1000cae0c  bl      _objc_release
  1000cae10  b       loc_1000caeac
  1000cae14  mov     x20, x0
  1000cae18  b       loc_1000cae48
  1000cae1c  mov     x20, x0
  1000cae20  b       loc_1000cae40
  1000cae24  mov     x20, x0
  1000cae28  mov     x0, x25
  1000cae2c  bl      _objc_release
  1000cae30  b       loc_1000cae40
  1000cae34  mov     x20, x0
  1000cae38  b       loc_1000cae48
  1000cae3c  mov     x20, x0
loc_1000cae40:
  1000cae40  mov     x0, x21
  1000cae44  bl      _objc_release
loc_1000cae48:
  1000cae48  mov     x0, x19
  1000cae4c  b       loc_1000caf3c
  1000cae50  str     x25, [sp, #0x30]
  1000cae54  mov     x20, x0
  1000cae58  b       loc_1000cae6c
  1000cae5c  str     x25, [sp, #0x30]
  1000cae60  mov     x20, x0
  1000cae64  mov     x0, x21
  1000cae68  bl      _objc_release
loc_1000cae6c:
  1000cae6c  mov     x0, x19
  1000cae70  bl      _objc_release
  1000cae74  b       loc_1000caf38
  1000cae78  stp     x19, x25, [sp, #0x28]
  1000cae7c  mov     x20, x0
  1000cae80  b       loc_1000caf30
  1000cae84  str     x21, [sp, #0x10]
  1000cae88  stp     x19, x25, [sp, #0x28]
  1000cae8c  mov     x20, x0
  1000cae90  cbz     w28, loc_1000caf28                       ; if (w28 == 0)
  1000cae94  b       loc_1000caf18
  1000cae98  str     x21, [sp, #0x10]
  1000cae9c  stp     x19, x25, [sp, #0x28]
  1000caea0  mov     x20, x0
  1000caea4  b       loc_1000caebc
  1000caea8  mov     x20, x0
loc_1000caeac:
  1000caeac  mov     x0, x21
  1000caeb0  bl      _objc_release
loc_1000caeb4:
  1000caeb4  mov     x0, x28
  1000caeb8  bl      _objc_release
loc_1000caebc:
  1000caebc  mov     x0, x27
  1000caec0  bl      _objc_release
  1000caec4  ldr     w8, [sp, #0x24]
  1000caec8  tbnz    w8, #0, loc_1000caf18                    ; if ((w8 & 1))
  1000caecc  b       loc_1000caf28
  1000caed0  mov     x20, x0
  1000caed4  b       loc_1000caee4
  1000caed8  mov     x20, x0
  1000caedc  mov     x0, x22
  1000caee0  bl      _objc_release
loc_1000caee4:
  1000caee4  mov     x0, x21
  1000caee8  bl      _objc_release
  1000caeec  b       loc_1000caf38
  1000caef0  stp     x19, x25, [sp, #0x28]
  1000caef4  mov     x20, x0
  1000caef8  b       loc_1000caf28
  1000caefc  str     x21, [sp, #0x10]
  1000caf00  stp     x19, x25, [sp, #0x28]
  1000caf04  mov     x20, x0
  1000caf08  b       loc_1000caf20
  1000caf0c  str     x21, [sp, #0x10]
  1000caf10  stp     x19, x25, [sp, #0x28]
  1000caf14  mov     x20, x0
loc_1000caf18:
  1000caf18  ldr     x0, [sp, #8]
  1000caf1c  bl      _objc_release
loc_1000caf20:
  1000caf20  ldr     x0, [sp, #0x10]
  1000caf24  bl      _objc_release
loc_1000caf28:
  1000caf28  ldr     x0, [sp, #0x38]
  1000caf2c  bl      _objc_release
loc_1000caf30:
  1000caf30  ldr     x0, [sp, #0x28]
  1000caf34  bl      _objc_release
loc_1000caf38:
  1000caf38  ldr     x0, [sp, #0x30]
loc_1000caf3c:
  1000caf3c  bl      _objc_release
loc_1000caf40:
  1000caf40  mov     x0, x20
  1000caf44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000caf48
; address 0x1000caf48  size 52  kind sub
; ======================================================================
  1000caf48  stp     x20, x19, [sp, #-0x20]!
  1000caf4c  stp     x29, x30, [sp, #0x10]
  1000caf50  add     x29, sp, #0x10
  1000caf54  mov     x19, x1
  1000caf58  mov     x20, x0
  1000caf5c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000caf60  bl      _objc_retain
  1000caf64  add     x0, x20, #0x28
  1000caf68  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  1000caf6c  mov     w2, #8
  1000caf70  ldp     x29, x30, [sp, #0x10]
  1000caf74  ldp     x20, x19, [sp], #0x20
  1000caf78  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 8)

; ======================================================================
; sub_1000caf7c
; address 0x1000caf7c  size 44  kind sub
; ======================================================================
  1000caf7c  stp     x20, x19, [sp, #-0x20]!
  1000caf80  stp     x29, x30, [sp, #0x10]
  1000caf84  add     x29, sp, #0x10
  1000caf88  mov     x19, x0
  1000caf8c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000caf90  bl      _objc_release
  1000caf94  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000caf98  mov     w1, #8
  1000caf9c  ldp     x29, x30, [sp, #0x10]
  1000cafa0  ldp     x20, x19, [sp], #0x20
  1000cafa4  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x28], 8)

; ======================================================================
; -[ADChallengeSelectorViewController challengeButtonPressed:]
; address 0x1000cafa8  size 1268  kind objc
; ======================================================================
  1000cafa8  stp     x28, x27, [sp, #-0x60]!
  1000cafac  stp     x26, x25, [sp, #0x10]
  1000cafb0  stp     x24, x23, [sp, #0x20]
  1000cafb4  stp     x22, x21, [sp, #0x30]
  1000cafb8  stp     x20, x19, [sp, #0x40]
  1000cafbc  stp     x29, x30, [sp, #0x50]
  1000cafc0  add     x29, sp, #0x50
  1000cafc4  sub     sp, sp, #0x210
  1000cafc8  mov     x19, x0
  1000cafcc  adrp    x8, #0x1003b0000
  1000cafd0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000cafd4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000cafd8  stur    x8, [x29, #-0x58]
  1000cafdc  mov     x0, x2
  1000cafe0  bl      _objc_retain
  1000cafe4  str     x0, [sp, #0x20]
  1000cafe8  stp     xzr, xzr, [sp, #0xf8]
  1000cafec  stp     xzr, xzr, [sp, #0xe8]
  1000caff0  stp     xzr, xzr, [sp, #0xd8]
  1000caff4  stp     xzr, xzr, [sp, #0xc8]
  1000caff8  adrp    x8, #0x10041a000
  1000caffc  nop
  1000cb000  ldr     x1, [x8, #0xc98]
  1000cb004  mov     x0, x19
  1000cb008  bl      _objc_msgSend                            ; [self challengeScrollView]
  1000cb00c  str     x19, [sp, #8]
  1000cb010  mov     x29, x29
  1000cb014  bl      _objc_retainAutoreleasedReturnValue
  1000cb018  mov     x21, x0
  1000cb01c  adrp    x8, #0x100417000
  1000cb020  nop
  1000cb024  ldr     x1, [x8, #0x1c8]
  1000cb028  bl      _objc_msgSend                            ; [[self challengeScrollView] subviews]
  1000cb02c  mov     x29, x29
  1000cb030  bl      _objc_retainAutoreleasedReturnValue
  1000cb034  mov     x22, x0
  1000cb038  mov     x0, x21
  1000cb03c  bl      _objc_release
  1000cb040  adrp    x8, #0x100416000
  1000cb044  nop
  1000cb048  ldr     x1, [x8, #0xe00]
  1000cb04c  str     x1, [sp, #0x10]
  1000cb050  add     x2, sp, #0xc8
  1000cb054  sub     x3, x29, #0xd8
  1000cb058  mov     w4, #0x10
  1000cb05c  mov     x0, x22
  1000cb060  bl      _objc_msgSend                            ; [[[self challengeScrollView] subviews] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16]
  1000cb064  mov     x23, x0
  1000cb068  cbz     x23, loc_1000cb140                       ; if ([[[self challengeScrollView] subviews] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16] == 0)
  1000cb06c  ldr     x8, [sp, #0xd8]
  1000cb070  ldr     x21, [x8]
  1000cb074  adrp    x8, #0x100417000
  1000cb078  nop
  1000cb07c  ldr     x24, [x8, #0x6b0]
  1000cb080  adrp    x8, #0x100416000
  1000cb084  add     x8, x8, #0xf18                           ; &@selector(view)
  1000cb088  ldr     x25, [x8]
loc_1000cb08c:
  1000cb08c  mov     x19, #0
loc_1000cb090:
  1000cb090  ldr     x8, [sp, #0xd8]
  1000cb094  ldr     x8, [x8]
  1000cb098  cmp     x8, x21
  1000cb09c  b.eq    loc_1000cb0a8                            ; if (x8 == x21)
  1000cb0a0  mov     x0, x22
  1000cb0a4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self challengeScrollView] subviews])
loc_1000cb0a8:
  1000cb0a8  ldr     x8, [sp, #0xd0]
  1000cb0ac  ldr     x26, [x8, x19, lsl #3]
  1000cb0b0  mov     x0, x26
  1000cb0b4  mov     x1, x24
  1000cb0b8  bl      _objc_msgSend                            ; [x0 tag]
  1000cb0bc  mov     x27, x0
  1000cb0c0  ldr     x0, [sp, #0x20]
  1000cb0c4  mov     x1, x25
  1000cb0c8  bl      _objc_msgSend                            ; [arg1 view]
  1000cb0cc  mov     x29, x29
  1000cb0d0  bl      _objc_retainAutoreleasedReturnValue
  1000cb0d4  mov     x28, x0
  1000cb0d8  mov     x1, x24
  1000cb0dc  bl      _objc_msgSend                            ; [[arg1 view] tag]
  1000cb0e0  mov     x20, x0
  1000cb0e4  mov     x0, x28
  1000cb0e8  bl      _objc_release
  1000cb0ec  cmp     x27, x20
  1000cb0f0  b.eq    loc_1000cb124                            ; if ([x0 tag] == [[arg1 view] tag])
  1000cb0f4  add     x19, x19, #1
  1000cb0f8  cmp     x19, x23
  1000cb0fc  b.lo    loc_1000cb090                            ; if ((x19 + 1) <u [[[self challengeScrollView] subviews] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16])
  1000cb100  add     x2, sp, #0xc8
  1000cb104  sub     x3, x29, #0xd8
  1000cb108  mov     w4, #0x10
  1000cb10c  mov     x0, x22
  1000cb110  ldr     x1, [sp, #0x10]
  1000cb114  bl      _objc_msgSend                            ; [[[self challengeScrollView] subviews] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16]
  1000cb118  mov     x23, x0
  1000cb11c  cbnz    x23, loc_1000cb08c                       ; if ([[[self challengeScrollView] subviews] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16] != 0)
  1000cb120  b       loc_1000cb140
loc_1000cb124:
  1000cb124  adrp    x8, #0x100417000
  1000cb128  nop
  1000cb12c  ldr     x1, [x8, #0x828]
  1000cb130  nop
  1000cb134  ldr     d0, #0x100181d80                         ; d0 = 0.400000006
  1000cb138  mov     x0, x26
  1000cb13c  bl      _objc_msgSend                            ; [x0 setAlpha:0.4]
loc_1000cb140:
  1000cb140  mov     x0, x22
  1000cb144  bl      _objc_release
  1000cb148  stp     xzr, xzr, [sp, #0xb8]
  1000cb14c  stp     xzr, xzr, [sp, #0xa8]
  1000cb150  stp     xzr, xzr, [sp, #0x98]
  1000cb154  stp     xzr, xzr, [sp, #0x88]
  1000cb158  adrp    x8, #0x100420000
  1000cb15c  ldrsw   x8, [x8, #0x404]                         ; ivar offset ADChallengeSelectorViewController.icons (+0x140)
  1000cb160  ldr     x23, [sp, #8]
  1000cb164  ldr     x0, [x23, x8]                            ; x0 = self->icons
  1000cb168  bl      _objc_retain
  1000cb16c  str     x0, [sp, #0x18]
  1000cb170  add     x2, sp, #0x88
  1000cb174  add     x3, sp, #0x108
  1000cb178  mov     w4, #0x10
  1000cb17c  ldr     x1, [sp, #0x10]
  1000cb180  bl      _objc_msgSend                            ; [self->icons countByEnumeratingWithState:&sp[0x88] objects:&sp[0x108] count:16]
  1000cb184  mov     x24, x0
  1000cb188  cbz     x24, loc_1000cb274                       ; if ([self->icons countByEnumeratingWithState:&sp[0x88] objects:&sp[0x108] count:16] == 0)
  1000cb18c  ldr     x8, [sp, #0x98]
  1000cb190  ldr     x22, [x8]
  1000cb194  adrp    x8, #0x100416000
  1000cb198  nop
  1000cb19c  ldr     x23, [x8, #0xf18]
  1000cb1a0  adrp    x8, #0x100417000
  1000cb1a4  add     x8, x8, #0x6b0                           ; &@selector(tag)
  1000cb1a8  ldr     x25, [x8]
loc_1000cb1ac:
  1000cb1ac  mov     x19, #0
loc_1000cb1b0:
  1000cb1b0  ldr     x8, [sp, #0x98]
  1000cb1b4  ldr     x8, [x8]
  1000cb1b8  cmp     x8, x22
  1000cb1bc  b.eq    loc_1000cb1c8                            ; if (x8 == x22)
  1000cb1c0  ldr     x0, [sp, #0x18]
  1000cb1c4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->icons)
loc_1000cb1c8:
  1000cb1c8  ldr     x8, [sp, #0x90]
  1000cb1cc  ldr     x26, [x8, x19, lsl #3]
  1000cb1d0  mov     x0, x26
  1000cb1d4  mov     x1, x23
  1000cb1d8  bl      _objc_msgSend                            ; [x0 view]
  1000cb1dc  mov     x29, x29
  1000cb1e0  bl      _objc_retainAutoreleasedReturnValue
  1000cb1e4  mov     x27, x0
  1000cb1e8  mov     x1, x25
  1000cb1ec  bl      _objc_msgSend                            ; [[x0 view] tag]
  1000cb1f0  mov     x28, x0
  1000cb1f4  ldr     x0, [sp, #0x20]
  1000cb1f8  mov     x1, x23
  1000cb1fc  bl      _objc_msgSend                            ; [arg1 view]
  1000cb200  mov     x29, x29
  1000cb204  bl      _objc_retainAutoreleasedReturnValue
  1000cb208  mov     x20, x0
  1000cb20c  mov     x1, x25
  1000cb210  bl      _objc_msgSend                            ; [[arg1 view] tag]
  1000cb214  mov     x21, x0
  1000cb218  mov     x0, x20
  1000cb21c  bl      _objc_release
  1000cb220  mov     x0, x27
  1000cb224  bl      _objc_release
  1000cb228  cmp     x28, x21
  1000cb22c  b.eq    loc_1000cb260                            ; if ([[x0 view] tag] == [[arg1 view] tag])
  1000cb230  add     x19, x19, #1
  1000cb234  cmp     x19, x24
  1000cb238  b.lo    loc_1000cb1b0                            ; if ((x19 + 1) <u [self->icons countByEnumeratingWithState:&sp[0x88] objects:&sp[0x108] count:16])
  1000cb23c  add     x2, sp, #0x88
  1000cb240  add     x3, sp, #0x108
  1000cb244  mov     w4, #0x10
  1000cb248  ldp     x1, x0, [sp, #0x10]
  1000cb24c  bl      _objc_msgSend                            ; [self->icons countByEnumeratingWithState:&sp[0x88] objects:&sp[0x108] count:16]
  1000cb250  mov     x24, x0
  1000cb254  cbnz    x24, loc_1000cb1ac                       ; if ([self->icons countByEnumeratingWithState:&sp[0x88] objects:&sp[0x108] count:16] != 0)
  1000cb258  mov     x21, #0
  1000cb25c  b       loc_1000cb26c
loc_1000cb260:
  1000cb260  mov     x0, x26
  1000cb264  bl      _objc_retain
  1000cb268  mov     x21, x0
loc_1000cb26c:
  1000cb26c  ldr     x23, [sp, #8]
  1000cb270  b       loc_1000cb278
loc_1000cb274:
  1000cb274  mov     x21, #0
loc_1000cb278:
  1000cb278  ldr     x0, [sp, #0x18]
  1000cb27c  bl      _objc_release
  1000cb280  adrp    x8, #0x100418000
  1000cb284  nop
  1000cb288  ldr     x1, [x8, #0xa78]
  1000cb28c  mov     x0, x23
  1000cb290  bl      _objc_msgSend                            ; [self playButtonSound]
  1000cb294  adrp    x8, #0x100419000
  1000cb298  nop
  1000cb29c  ldr     x1, [x8, #0xcf8]
  1000cb2a0  mov     x0, x21
  1000cb2a4  bl      _objc_msgSend                            ; [x0 challengeLock]
  1000cb2a8  mov     x29, x29
  1000cb2ac  bl      _objc_retainAutoreleasedReturnValue
  1000cb2b0  mov     x22, x0
  1000cb2b4  adrp    x8, #0x10041a000
  1000cb2b8  nop
  1000cb2bc  ldr     x1, [x8, #0xca8]
  1000cb2c0  bl      _objc_msgSend                            ; [[x0 challengeLock] isHidden]
  1000cb2c4  mov     x20, x0
  1000cb2c8  mov     w19, #-0x3e000000
  1000cb2cc  mov     x0, x22
  1000cb2d0  bl      _objc_release
  1000cb2d4  mov     x0, #0
  1000cb2d8  mov     x1, #0
  1000cb2dc  tbz     w20, #0, loc_1000cb34c                   ; if (!([[x0 challengeLock] isHidden] & 1))
  1000cb2e0  bl      _dispatch_time                           ; dispatch_time(0, 0)
  1000cb2e4  mov     x20, x0
  1000cb2e8  adrp    x8, #0x1003b0000
  1000cb2ec  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000cb2f0  str     x8, [sp, #0x28]
  1000cb2f4  stp     w19, wzr, [sp, #0x30]
  1000cb2f8  adr     x8, #0x1000cb5b4                         ; &-[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke
  1000cb2fc  nop
  1000cb300  str     x8, [sp, #0x38]
  1000cb304  adrp    x8, #0x1003b2000
  1000cb308  add     x8, x8, #0x820                           ; &d_1003b2820
  1000cb30c  str     x8, [sp, #0x40]
  1000cb310  mov     x0, x23
  1000cb314  bl      _objc_retain
  1000cb318  stp     x0, x21, [sp, #0x48]
  1000cb31c  mov     x0, x21
  1000cb320  bl      _objc_retain
  1000cb324  mov     x21, x0
  1000cb328  adrp    x1, #0x1003b0000
  1000cb32c  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000cb330  add     x2, sp, #0x28
  1000cb334  mov     x0, x20
  1000cb338  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0), __dispatch_main_q, ^{-[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke captures +0x20=self})
  1000cb33c  ldr     x0, [sp, #0x50]
  1000cb340  bl      _objc_release
  1000cb344  ldr     x0, [sp, #0x48]
  1000cb348  b       loc_1000cb3b4
loc_1000cb34c:
  1000cb34c  bl      _dispatch_time                           ; dispatch_time(0, 0)
  1000cb350  mov     x20, x0
  1000cb354  adrp    x8, #0x1003b0000
  1000cb358  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000cb35c  adr     x9, #0x1000cb49c                         ; &-[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke_2
  1000cb360  nop
  1000cb364  str     x8, [sp, #0x58]
  1000cb368  stp     w19, wzr, [sp, #0x60]
  1000cb36c  adrp    x8, #0x1003b2000
  1000cb370  add     x8, x8, #0x7f0                           ; &d_1003b27f0
  1000cb374  stp     x9, x8, [sp, #0x68]
  1000cb378  str     x21, [sp, #0x78]
  1000cb37c  mov     x0, x21
  1000cb380  bl      _objc_retain
  1000cb384  mov     x21, x0
  1000cb388  mov     x0, x23
  1000cb38c  bl      _objc_retain
  1000cb390  str     x0, [sp, #0x80]
  1000cb394  adrp    x1, #0x1003b0000
  1000cb398  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000cb39c  add     x2, sp, #0x58
  1000cb3a0  mov     x0, x20
  1000cb3a4  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0), __dispatch_main_q, ^{-[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke_2 captures +0x28=self})
  1000cb3a8  ldr     x0, [sp, #0x80]
  1000cb3ac  bl      _objc_release
  1000cb3b0  ldr     x0, [sp, #0x78]
loc_1000cb3b4:
  1000cb3b4  bl      _objc_release
  1000cb3b8  mov     x0, x21
  1000cb3bc  bl      _objc_release
  1000cb3c0  ldr     x0, [sp, #0x20]
  1000cb3c4  bl      _objc_release
  1000cb3c8  ldur    x8, [x29, #-0x58]
  1000cb3cc  adrp    x9, #0x1003b0000
  1000cb3d0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000cb3d4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000cb3d8  sub     x8, x9, x8
  1000cb3dc  cbnz    x8, loc_1000cb400                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000cb3e0  sub     sp, x29, #0x50
  1000cb3e4  ldp     x29, x30, [sp, #0x50]
  1000cb3e8  ldp     x20, x19, [sp, #0x40]
  1000cb3ec  ldp     x22, x21, [sp, #0x30]
  1000cb3f0  ldp     x24, x23, [sp, #0x20]
  1000cb3f4  ldp     x26, x25, [sp, #0x10]
  1000cb3f8  ldp     x28, x27, [sp], #0x60
  1000cb3fc  ret
loc_1000cb400:
  1000cb400  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000cb404:
  1000cb404  mov     x23, x0
  1000cb408  b       loc_1000cb428
  1000cb40c  mov     x23, x0
  1000cb410  b       loc_1000cb440
loc_1000cb414:
  1000cb414  mov     x23, x0
  1000cb418  b       loc_1000cb448
  1000cb41c  mov     x23, x0
  1000cb420  mov     x0, x28
  1000cb424  bl      _objc_release
loc_1000cb428:
  1000cb428  mov     x0, x22
  1000cb42c  bl      _objc_release
  1000cb430  b       loc_1000cb450
  1000cb434  mov     x23, x0
  1000cb438  mov     x0, x20
  1000cb43c  bl      _objc_release
loc_1000cb440:
  1000cb440  mov     x0, x27
  1000cb444  bl      _objc_release
loc_1000cb448:
  1000cb448  ldr     x0, [sp, #0x18]
  1000cb44c  bl      _objc_release
loc_1000cb450:
  1000cb450  ldr     x0, [sp, #0x20]
  1000cb454  bl      _objc_release
  1000cb458  mov     x0, x23
  1000cb45c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000cb460  b       loc_1000cb470
  1000cb464  b       loc_1000cb404
  1000cb468  mov     x23, x0
  1000cb46c  b       loc_1000cb450
loc_1000cb470:
  1000cb470  mov     x23, x0
  1000cb474  b       loc_1000cb488
  1000cb478  b       loc_1000cb414
  1000cb47c  mov     x23, x0
  1000cb480  mov     x0, x22
  1000cb484  bl      _objc_release
loc_1000cb488:
  1000cb488  mov     x0, x21
  1000cb48c  bl      _objc_release
  1000cb490  b       loc_1000cb450
  1000cb494  b       loc_1000cb404
  1000cb498  b       loc_1000cb414

; ======================================================================
; -[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke_2
; address 0x1000cb49c  size 200  kind block
; ======================================================================
  1000cb49c  stp     x22, x21, [sp, #-0x30]!
  1000cb4a0  stp     x20, x19, [sp, #0x10]
  1000cb4a4  stp     x29, x30, [sp, #0x20]
  1000cb4a8  add     x29, sp, #0x20
  1000cb4ac  mov     x19, x0
  1000cb4b0  adrp    x8, #0x10041e000
  1000cb4b4  ldr     x0, [x8, #0x340]                         ; class ADChallengeLockedViewController
  1000cb4b8  adrp    x8, #0x100416000
  1000cb4bc  nop
  1000cb4c0  ldr     x1, [x8, #0xac8]
  1000cb4c4  bl      _objc_msgSend                            ; [ADChallengeLockedViewController alloc]
  1000cb4c8  mov     x20, x0
  1000cb4cc  ldr     x0, [x19, #0x20]                         ; x0 = block[+0x20]
  1000cb4d0  adrp    x8, #0x100417000
  1000cb4d4  nop
  1000cb4d8  ldr     x1, [x8, #0x150]
  1000cb4dc  bl      _objc_msgSend                            ; [block[+0x20] challengeDict]
  1000cb4e0  mov     x29, x29
  1000cb4e4  bl      _objc_retainAutoreleasedReturnValue
  1000cb4e8  mov     x21, x0
  1000cb4ec  adrp    x8, #0x100416000
  1000cb4f0  nop
  1000cb4f4  ldr     x1, [x8, #0xd80]
  1000cb4f8  mov     x0, x20
  1000cb4fc  mov     x2, x21
  1000cb500  bl      _objc_msgSend                            ; [[ADChallengeLockedViewController alloc] initWithDictionary:[block[+0x20] challengeDict]]
  1000cb504  mov     x20, x0
  1000cb508  mov     x0, x21
  1000cb50c  bl      _objc_release
  1000cb510  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  1000cb514  adrp    x8, #0x100417000
  1000cb518  nop
  1000cb51c  ldr     x1, [x8, #0x208]
  1000cb520  mov     w3, #0
  1000cb524  mov     x4, #0
  1000cb528  mov     x2, x20
  1000cb52c  bl      _objc_msgSend                            ; [self presentViewController:[[ADChallengeLockedViewController alloc] initWithDictionary:[block[+0x20] challengeDict]] animated:0 completion:0]
  1000cb530  mov     x0, x20
  1000cb534  ldp     x29, x30, [sp, #0x20]
  1000cb538  ldp     x20, x19, [sp, #0x10]
  1000cb53c  ldp     x22, x21, [sp], #0x30
  1000cb540  b       _objc_release
  1000cb544  mov     x19, x0
  1000cb548  mov     x0, x21
  1000cb54c  b       loc_1000cb558
  1000cb550  mov     x19, x0
  1000cb554  mov     x0, x20
loc_1000cb558:
  1000cb558  bl      _objc_release
  1000cb55c  mov     x0, x19
  1000cb560  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000cb564
; address 0x1000cb564  size 40  kind sub
; ======================================================================
  1000cb564  stp     x20, x19, [sp, #-0x20]!
  1000cb568  stp     x29, x30, [sp, #0x10]
  1000cb56c  add     x29, sp, #0x10
  1000cb570  mov     x19, x1
  1000cb574  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000cb578  bl      _objc_retain
  1000cb57c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1000cb580  ldp     x29, x30, [sp, #0x10]
  1000cb584  ldp     x20, x19, [sp], #0x20
  1000cb588  b       _objc_retain

; ======================================================================
; sub_1000cb58c
; address 0x1000cb58c  size 40  kind sub
; ======================================================================
  1000cb58c  stp     x20, x19, [sp, #-0x20]!
  1000cb590  stp     x29, x30, [sp, #0x10]
  1000cb594  add     x29, sp, #0x10
  1000cb598  mov     x19, x0
  1000cb59c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000cb5a0  bl      _objc_release
  1000cb5a4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000cb5a8  ldp     x29, x30, [sp, #0x10]
  1000cb5ac  ldp     x20, x19, [sp], #0x20
  1000cb5b0  b       _objc_release

; ======================================================================
; -[ADChallengeSelectorViewController challengeButtonPressed:]_block_invoke
; address 0x1000cb5b4  size 172  kind block
; ======================================================================
  1000cb5b4  stp     x22, x21, [sp, #-0x30]!
  1000cb5b8  stp     x20, x19, [sp, #0x10]
  1000cb5bc  stp     x29, x30, [sp, #0x20]
  1000cb5c0  add     x29, sp, #0x20
  1000cb5c4  ldp     x20, x0, [x0, #0x20]
  1000cb5c8  adrp    x8, #0x100417000
  1000cb5cc  nop
  1000cb5d0  ldr     x1, [x8, #0x150]
  1000cb5d4  bl      _objc_msgSend                            ; [x0 challengeDict]
  1000cb5d8  mov     x29, x29
  1000cb5dc  bl      _objc_retainAutoreleasedReturnValue
  1000cb5e0  mov     x19, x0
  1000cb5e4  adrp    x8, #0x100417000
  1000cb5e8  nop
  1000cb5ec  ldr     x1, [x8, #0x40]
  1000cb5f0  adrp    x2, #0x1003b9000
  1000cb5f4  add     x2, x2, #0xef0                           ; @"challenge_id"
  1000cb5f8  bl      _objc_msgSend                            ; [[x0 challengeDict] objectForKey:@"challenge_id"]
  1000cb5fc  mov     x29, x29
  1000cb600  bl      _objc_retainAutoreleasedReturnValue
  1000cb604  mov     x21, x0
  1000cb608  adrp    x8, #0x10041a000
  1000cb60c  nop
  1000cb610  ldr     x1, [x8, #0xc90]
  1000cb614  mov     x0, x20
  1000cb618  mov     x2, x21
  1000cb61c  bl      _objc_msgSend                            ; [x0 loadChallengeWithName:[[x0 challengeDict] objectForKey:@"challenge_id"]]
  1000cb620  mov     x0, x21
  1000cb624  bl      _objc_release
  1000cb628  mov     x0, x19
  1000cb62c  ldp     x29, x30, [sp, #0x20]
  1000cb630  ldp     x20, x19, [sp, #0x10]
  1000cb634  ldp     x22, x21, [sp], #0x30
  1000cb638  b       _objc_release
  1000cb63c  mov     x20, x0
  1000cb640  b       loc_1000cb650
  1000cb644  mov     x20, x0
  1000cb648  mov     x0, x21
  1000cb64c  bl      _objc_release
loc_1000cb650:
  1000cb650  mov     x0, x19
  1000cb654  bl      _objc_release
  1000cb658  mov     x0, x20
  1000cb65c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000cb660
; address 0x1000cb660  size 40  kind sub
; ======================================================================
  1000cb660  stp     x20, x19, [sp, #-0x20]!
  1000cb664  stp     x29, x30, [sp, #0x10]
  1000cb668  add     x29, sp, #0x10
  1000cb66c  mov     x19, x1
  1000cb670  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  1000cb674  bl      _objc_retain
  1000cb678  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  1000cb67c  ldp     x29, x30, [sp, #0x10]
  1000cb680  ldp     x20, x19, [sp], #0x20
  1000cb684  b       _objc_retain

; ======================================================================
; sub_1000cb688
; address 0x1000cb688  size 40  kind sub
; ======================================================================
  1000cb688  stp     x20, x19, [sp, #-0x20]!
  1000cb68c  stp     x29, x30, [sp, #0x10]
  1000cb690  add     x29, sp, #0x10
  1000cb694  mov     x19, x0
  1000cb698  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  1000cb69c  bl      _objc_release
  1000cb6a0  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  1000cb6a4  ldp     x29, x30, [sp, #0x10]
  1000cb6a8  ldp     x20, x19, [sp], #0x20
  1000cb6ac  b       _objc_release

; ======================================================================
; -[ADChallengeSelectorViewController loadChallengeWithName:]
; address 0x1000cb6b0  size 532  kind objc
; ======================================================================
  1000cb6b0  stp     x22, x21, [sp, #-0x30]!
  1000cb6b4  stp     x20, x19, [sp, #0x10]
  1000cb6b8  stp     x29, x30, [sp, #0x20]
  1000cb6bc  add     x29, sp, #0x20
  1000cb6c0  sub     sp, sp, #0x10
  1000cb6c4  mov     x20, x0
  1000cb6c8  mov     x0, x2
  1000cb6cc  bl      _objc_retain
  1000cb6d0  mov     x19, x0
  1000cb6d4  adrp    x8, #0x10041d000
  1000cb6d8  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000cb6dc  adrp    x8, #0x100416000
  1000cb6e0  nop
  1000cb6e4  ldr     x1, [x8, #0xdf0]
  1000cb6e8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000cb6ec  mov     x29, x29
  1000cb6f0  bl      _objc_retainAutoreleasedReturnValue
  1000cb6f4  mov     x21, x0
  1000cb6f8  adrp    x8, #0x100417000
  1000cb6fc  nop
  1000cb700  ldr     x1, [x8, #0x158]
  1000cb704  mov     x2, x19
  1000cb708  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:arg1]
  1000cb70c  mov     x22, x0
  1000cb710  mov     x0, x21
  1000cb714  bl      _objc_release
  1000cb718  tbz     w22, #0, loc_1000cb7ac                   ; if (!([[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:arg1] & 1))
  1000cb71c  adrp    x8, #0x100417000
  1000cb720  nop
  1000cb724  ldr     x1, [x8, #0xa00]
  1000cb728  mov     x0, x20
  1000cb72c  mov     x2, x19
  1000cb730  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:arg1]
  1000cb734  mov     x29, x29
  1000cb738  bl      _objc_retainAutoreleasedReturnValue
  1000cb73c  mov     x20, x0
  1000cb740  adrp    x8, #0x10041d000
  1000cb744  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000cb748  adrp    x8, #0x100416000
  1000cb74c  nop
  1000cb750  ldr     x1, [x8, #0xb28]
  1000cb754  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000cb758  mov     x29, x29
  1000cb75c  bl      _objc_retainAutoreleasedReturnValue
  1000cb760  mov     x21, x0
  1000cb764  adrp    x8, #0x100416000
  1000cb768  nop
  1000cb76c  ldr     x1, [x8, #0xc18]
  1000cb770  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000cb774  mov     x29, x29
  1000cb778  bl      _objc_retainAutoreleasedReturnValue
  1000cb77c  mov     x22, x0
  1000cb780  adrp    x8, #0x100417000
  1000cb784  nop
  1000cb788  ldr     x1, [x8, #0x198]
  1000cb78c  mov     x2, x20
  1000cb790  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeOverviewWithDictionary:[self dictionaryForChallengeWithName:arg1]]
  1000cb794  mov     x0, x22
  1000cb798  bl      _objc_release
  1000cb79c  mov     x0, x21
  1000cb7a0  bl      _objc_release
  1000cb7a4  mov     x0, x20
  1000cb7a8  b       loc_1000cb834
loc_1000cb7ac:
  1000cb7ac  adrp    x8, #0x10041e000
  1000cb7b0  ldr     x0, [x8, #0x340]                         ; class ADChallengeLockedViewController
  1000cb7b4  adrp    x8, #0x100416000
  1000cb7b8  nop
  1000cb7bc  ldr     x1, [x8, #0xac8]
  1000cb7c0  bl      _objc_msgSend                            ; [ADChallengeLockedViewController alloc]
  1000cb7c4  mov     x21, x0
  1000cb7c8  adrp    x8, #0x100417000
  1000cb7cc  nop
  1000cb7d0  ldr     x1, [x8, #0xa00]
  1000cb7d4  mov     x0, x20
  1000cb7d8  mov     x2, x19
  1000cb7dc  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:arg1]
  1000cb7e0  mov     x29, x29
  1000cb7e4  bl      _objc_retainAutoreleasedReturnValue
  1000cb7e8  mov     x22, x0
  1000cb7ec  adrp    x8, #0x100416000
  1000cb7f0  nop
  1000cb7f4  ldr     x1, [x8, #0xd80]
  1000cb7f8  mov     x0, x21
  1000cb7fc  mov     x2, x22
  1000cb800  bl      _objc_msgSend                            ; [[ADChallengeLockedViewController alloc] initWithDictionary:[self dictionaryForChallengeWithName:arg1]]
  1000cb804  mov     x21, x0
  1000cb808  mov     x0, x22
  1000cb80c  bl      _objc_release
  1000cb810  adrp    x8, #0x100417000
  1000cb814  nop
  1000cb818  ldr     x1, [x8, #0x208]
  1000cb81c  mov     w3, #0
  1000cb820  mov     x4, #0
  1000cb824  mov     x0, x20
  1000cb828  mov     x2, x21
  1000cb82c  bl      _objc_msgSend                            ; [self presentViewController:[[ADChallengeLockedViewController alloc] initWithDictionary:[self dictionaryForChallengeWithName:arg1]] animated:0 completion:0]
  1000cb830  mov     x0, x21
loc_1000cb834:
  1000cb834  bl      _objc_release
  1000cb838  mov     x0, x19
  1000cb83c  sub     sp, x29, #0x20
  1000cb840  ldp     x29, x30, [sp, #0x20]
  1000cb844  ldp     x20, x19, [sp, #0x10]
  1000cb848  ldp     x22, x21, [sp], #0x30
  1000cb84c  b       _objc_release
  1000cb850  mov     x21, x0
  1000cb854  b       loc_1000cb8b4
  1000cb858  b       loc_1000cb8a4
  1000cb85c  mov     x21, x0
  1000cb860  b       loc_1000cb888
  1000cb864  str     x21, [sp, #8]
  1000cb868  mov     x21, x0
  1000cb86c  b       loc_1000cb880
  1000cb870  str     x21, [sp, #8]
  1000cb874  mov     x21, x0
  1000cb878  mov     x0, x22
  1000cb87c  bl      _objc_release
loc_1000cb880:
  1000cb880  ldr     x0, [sp, #8]
  1000cb884  bl      _objc_release
loc_1000cb888:
  1000cb888  mov     x0, x20
  1000cb88c  bl      _objc_release
  1000cb890  b       loc_1000cb8b4
  1000cb894  mov     x21, x0
  1000cb898  mov     x0, x22
  1000cb89c  bl      _objc_release
  1000cb8a0  b       loc_1000cb8b4
loc_1000cb8a4:
  1000cb8a4  mov     x1, x21
  1000cb8a8  mov     x21, x0
  1000cb8ac  mov     x0, x1
  1000cb8b0  bl      _objc_release
loc_1000cb8b4:
  1000cb8b4  mov     x0, x19
  1000cb8b8  bl      _objc_release
  1000cb8bc  mov     x0, x21
  1000cb8c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController canStartChallengeWithName:]
; address 0x1000cb8c4  size 244  kind objc
; ======================================================================
  1000cb8c4  stp     x24, x23, [sp, #-0x40]!
  1000cb8c8  stp     x22, x21, [sp, #0x10]
  1000cb8cc  stp     x20, x19, [sp, #0x20]
  1000cb8d0  stp     x29, x30, [sp, #0x30]
  1000cb8d4  add     x29, sp, #0x30
  1000cb8d8  mov     x0, x2
  1000cb8dc  bl      _objc_retain
  1000cb8e0  mov     x19, x0
  1000cb8e4  adrp    x23, #0x10041d000
  1000cb8e8  ldr     x0, [x23, #0xf50]                        ; class ADChallengeData
  1000cb8ec  adrp    x8, #0x100416000
  1000cb8f0  nop
  1000cb8f4  ldr     x20, [x8, #0xdf0]
  1000cb8f8  mov     x1, x20
  1000cb8fc  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000cb900  mov     x29, x29
  1000cb904  bl      _objc_retainAutoreleasedReturnValue
  1000cb908  mov     x21, x0
  1000cb90c  adrp    x8, #0x100417000
  1000cb910  nop
  1000cb914  ldr     x1, [x8, #0x158]
  1000cb918  mov     x2, x19
  1000cb91c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:arg1]
  1000cb920  mov     x22, x0
  1000cb924  mov     x0, x21
  1000cb928  bl      _objc_release
  1000cb92c  tbz     w22, #0, loc_1000cb96c                   ; if (!([[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:arg1] & 1))
  1000cb930  ldr     x0, [x23, #0xf50]                        ; class ADChallengeData
  1000cb934  mov     x1, x20
  1000cb938  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000cb93c  mov     x29, x29
  1000cb940  bl      _objc_retainAutoreleasedReturnValue
  1000cb944  mov     x21, x0
  1000cb948  adrp    x8, #0x100417000
  1000cb94c  nop
  1000cb950  ldr     x1, [x8, #0x170]
  1000cb954  mov     x2, x19
  1000cb958  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasChallengeRequirementsForChallengeWithName:arg1]
  1000cb95c  mov     x20, x0
  1000cb960  mov     x0, x21
  1000cb964  bl      _objc_release
  1000cb968  b       loc_1000cb970
loc_1000cb96c:
  1000cb96c  mov     w20, #0
loc_1000cb970:
  1000cb970  mov     x0, x19
  1000cb974  bl      _objc_release
  1000cb978  mov     x0, x20
  1000cb97c  ldp     x29, x30, [sp, #0x30]
  1000cb980  ldp     x20, x19, [sp, #0x20]
  1000cb984  ldp     x22, x21, [sp, #0x10]
  1000cb988  ldp     x24, x23, [sp], #0x40
  1000cb98c  ret
  1000cb990  mov     x20, x0
  1000cb994  b       loc_1000cb9a8
  1000cb998  b       loc_1000cb99c
loc_1000cb99c:
  1000cb99c  mov     x20, x0
  1000cb9a0  mov     x0, x21
  1000cb9a4  bl      _objc_release
loc_1000cb9a8:
  1000cb9a8  mov     x0, x19
  1000cb9ac  bl      _objc_release
  1000cb9b0  mov     x0, x20
  1000cb9b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController backButtonPressed]
; address 0x1000cb9b8  size 160  kind objc
; ======================================================================
  1000cb9b8  stp     x22, x21, [sp, #-0x30]!
  1000cb9bc  stp     x20, x19, [sp, #0x10]
  1000cb9c0  stp     x29, x30, [sp, #0x20]
  1000cb9c4  add     x29, sp, #0x20
  1000cb9c8  adrp    x8, #0x10041d000
  1000cb9cc  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000cb9d0  adrp    x8, #0x100416000
  1000cb9d4  nop
  1000cb9d8  ldr     x1, [x8, #0xb28]
  1000cb9dc  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000cb9e0  mov     x29, x29
  1000cb9e4  bl      _objc_retainAutoreleasedReturnValue
  1000cb9e8  mov     x19, x0
  1000cb9ec  adrp    x8, #0x100416000
  1000cb9f0  nop
  1000cb9f4  ldr     x1, [x8, #0xc18]
  1000cb9f8  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000cb9fc  mov     x29, x29
  1000cba00  bl      _objc_retainAutoreleasedReturnValue
  1000cba04  mov     x20, x0
  1000cba08  adrp    x8, #0x100419000
  1000cba0c  nop
  1000cba10  ldr     x1, [x8, #0xd98]
  1000cba14  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToWorldSelector]
  1000cba18  mov     x0, x20
  1000cba1c  bl      _objc_release
  1000cba20  mov     x0, x19
  1000cba24  ldp     x29, x30, [sp, #0x20]
  1000cba28  ldp     x20, x19, [sp, #0x10]
  1000cba2c  ldp     x22, x21, [sp], #0x30
  1000cba30  b       _objc_release
  1000cba34  mov     x21, x0
  1000cba38  b       loc_1000cba48
  1000cba3c  mov     x21, x0
  1000cba40  mov     x0, x20
  1000cba44  bl      _objc_release
loc_1000cba48:
  1000cba48  mov     x0, x19
  1000cba4c  bl      _objc_release
  1000cba50  mov     x0, x21
  1000cba54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController playButtonSound]
; address 0x1000cba58  size 252  kind objc
; ======================================================================
  1000cba58  stp     x22, x21, [sp, #-0x30]!
  1000cba5c  stp     x20, x19, [sp, #0x10]
  1000cba60  stp     x29, x30, [sp, #0x20]
  1000cba64  add     x29, sp, #0x20
  1000cba68  adrp    x8, #0x10041d000
  1000cba6c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000cba70  adrp    x8, #0x100417000
  1000cba74  nop
  1000cba78  ldr     x1, [x8, #0x4f0]
  1000cba7c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000cba80  mov     x29, x29
  1000cba84  bl      _objc_retainAutoreleasedReturnValue
  1000cba88  mov     x19, x0
  1000cba8c  adrp    x8, #0x100417000
  1000cba90  nop
  1000cba94  ldr     x1, [x8, #0x4f8]
  1000cba98  adrp    x2, #0x1003ba000
  1000cba9c  add     x2, x2, #0xcb0                           ; @"buttons"
  1000cbaa0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  1000cbaa4  mov     x29, x29
  1000cbaa8  bl      _objc_retainAutoreleasedReturnValue
  1000cbaac  mov     x21, x0
  1000cbab0  adrp    x8, #0x100417000
  1000cbab4  nop
  1000cbab8  ldr     x1, [x8, #0x990]
  1000cbabc  adrp    x2, #0x1003bd000
  1000cbac0  add     x2, x2, #0x3d0                           ; @"start_button"
  1000cbac4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_button"]
  1000cbac8  mov     x29, x29
  1000cbacc  bl      _objc_retainAutoreleasedReturnValue
  1000cbad0  mov     x20, x0
  1000cbad4  mov     x0, x21
  1000cbad8  bl      _objc_release
  1000cbadc  mov     x0, x19
  1000cbae0  bl      _objc_release
  1000cbae4  adrp    x8, #0x100416000
  1000cbae8  nop
  1000cbaec  ldr     x1, [x8, #0xcb0]
  1000cbaf0  fmov    s0, #3.00000000
  1000cbaf4  mov     x0, x20
  1000cbaf8  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_button"] setGain:3]
  1000cbafc  adrp    x8, #0x100417000
  1000cbb00  nop
  1000cbb04  ldr     x1, [x8, #0x600]
  1000cbb08  mov     x0, x20
  1000cbb0c  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_button"] play]
  1000cbb10  mov     x0, x20
  1000cbb14  ldp     x29, x30, [sp, #0x20]
  1000cbb18  ldp     x20, x19, [sp, #0x10]
  1000cbb1c  ldp     x22, x21, [sp], #0x30
  1000cbb20  b       _objc_release
  1000cbb24  mov     x22, x0
  1000cbb28  mov     x0, x20
  1000cbb2c  b       loc_1000cbb48
  1000cbb30  mov     x22, x0
  1000cbb34  b       loc_1000cbb44
  1000cbb38  mov     x22, x0
  1000cbb3c  mov     x0, x21
  1000cbb40  bl      _objc_release
loc_1000cbb44:
  1000cbb44  mov     x0, x19
loc_1000cbb48:
  1000cbb48  bl      _objc_release
  1000cbb4c  mov     x0, x22
  1000cbb50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeSelectorViewController challengeWorldLabel]
; address 0x1000cbb54  size 16  kind objc
; ======================================================================
  1000cbb54  adrp    x8, #0x100420000
  1000cbb58  ldrsw   x8, [x8, #0x408]                         ; ivar offset ADChallengeSelectorViewController._challengeWorldLabel (+0x150)
  1000cbb5c  ldr     x0, [x0, x8]                             ; x0 = self->_challengeWorldLabel
  1000cbb60  ret

; ======================================================================
; -[ADChallengeSelectorViewController setChallengeWorldLabel:]
; address 0x1000cbb64  size 56  kind objc
; ======================================================================
  1000cbb64  stp     x20, x19, [sp, #-0x20]!
  1000cbb68  stp     x29, x30, [sp, #0x10]
  1000cbb6c  add     x29, sp, #0x10
  1000cbb70  mov     x19, x0
  1000cbb74  adrp    x8, #0x100420000
  1000cbb78  ldrsw   x20, [x8, #0x408]                        ; ivar offset ADChallengeSelectorViewController._challengeWorldLabel (+0x150)
  1000cbb7c  mov     x0, x2
  1000cbb80  bl      _objc_retain
  1000cbb84  ldr     x8, [x19, x20]                           ; x8 = self->_challengeWorldLabel
  1000cbb88  str     x0, [x19, x20]                           ; self->_challengeWorldLabel = arg1
  1000cbb8c  mov     x0, x8
  1000cbb90  ldp     x29, x30, [sp, #0x10]
  1000cbb94  ldp     x20, x19, [sp], #0x20
  1000cbb98  b       _objc_release

; ======================================================================
; -[ADChallengeSelectorViewController challengeScrollView]
; address 0x1000cbb9c  size 16  kind objc
; ======================================================================
  1000cbb9c  adrp    x8, #0x100420000
  1000cbba0  ldrsw   x8, [x8, #0x40c]                         ; ivar offset ADChallengeSelectorViewController._challengeScrollView (+0x158)
  1000cbba4  ldr     x0, [x0, x8]                             ; x0 = self->_challengeScrollView
  1000cbba8  ret

; ======================================================================
; -[ADChallengeSelectorViewController setChallengeScrollView:]
; address 0x1000cbbac  size 56  kind objc
; ======================================================================
  1000cbbac  stp     x20, x19, [sp, #-0x20]!
  1000cbbb0  stp     x29, x30, [sp, #0x10]
  1000cbbb4  add     x29, sp, #0x10
  1000cbbb8  mov     x19, x0
  1000cbbbc  adrp    x8, #0x100420000
  1000cbbc0  ldrsw   x20, [x8, #0x40c]                        ; ivar offset ADChallengeSelectorViewController._challengeScrollView (+0x158)
  1000cbbc4  mov     x0, x2
  1000cbbc8  bl      _objc_retain
  1000cbbcc  ldr     x8, [x19, x20]                           ; x8 = self->_challengeScrollView
  1000cbbd0  str     x0, [x19, x20]                           ; self->_challengeScrollView = arg1
  1000cbbd4  mov     x0, x8
  1000cbbd8  ldp     x29, x30, [sp, #0x10]
  1000cbbdc  ldp     x20, x19, [sp], #0x20
  1000cbbe0  b       _objc_release

; ======================================================================
; -[ADChallengeSelectorViewController challengeIndex]
; address 0x1000cbbe4  size 16  kind objc
; ======================================================================
  1000cbbe4  adrp    x8, #0x100420000
  1000cbbe8  ldrsw   x8, [x8, #0x410]                         ; ivar offset ADChallengeSelectorViewController._challengeIndex (+0x160)
  1000cbbec  ldr     x0, [x0, x8]                             ; x0 = self->_challengeIndex
  1000cbbf0  ret

; ======================================================================
; -[ADChallengeSelectorViewController setChallengeIndex:]
; address 0x1000cbbf4  size 56  kind objc
; ======================================================================
  1000cbbf4  stp     x20, x19, [sp, #-0x20]!
  1000cbbf8  stp     x29, x30, [sp, #0x10]
  1000cbbfc  add     x29, sp, #0x10
  1000cbc00  mov     x19, x0
  1000cbc04  adrp    x8, #0x100420000
  1000cbc08  ldrsw   x20, [x8, #0x410]                        ; ivar offset ADChallengeSelectorViewController._challengeIndex (+0x160)
  1000cbc0c  mov     x0, x2
  1000cbc10  bl      _objc_retain
  1000cbc14  ldr     x8, [x19, x20]                           ; x8 = self->_challengeIndex
  1000cbc18  str     x0, [x19, x20]                           ; self->_challengeIndex = arg1
  1000cbc1c  mov     x0, x8
  1000cbc20  ldp     x29, x30, [sp, #0x10]
  1000cbc24  ldp     x20, x19, [sp], #0x20
  1000cbc28  b       _objc_release

; ======================================================================
; -[ADChallengeSelectorViewController contentView]
; address 0x1000cbc2c  size 16  kind objc
; ======================================================================
  1000cbc2c  adrp    x8, #0x100420000
  1000cbc30  ldrsw   x8, [x8, #0x414]                         ; ivar offset ADChallengeSelectorViewController._contentView (+0x168)
  1000cbc34  ldr     x0, [x0, x8]                             ; x0 = self->_contentView
  1000cbc38  ret

; ======================================================================
; -[ADChallengeSelectorViewController setContentView:]
; address 0x1000cbc3c  size 56  kind objc
; ======================================================================
  1000cbc3c  stp     x20, x19, [sp, #-0x20]!
  1000cbc40  stp     x29, x30, [sp, #0x10]
  1000cbc44  add     x29, sp, #0x10
  1000cbc48  mov     x19, x0
  1000cbc4c  adrp    x8, #0x100420000
  1000cbc50  ldrsw   x20, [x8, #0x414]                        ; ivar offset ADChallengeSelectorViewController._contentView (+0x168)
  1000cbc54  mov     x0, x2
  1000cbc58  bl      _objc_retain
  1000cbc5c  ldr     x8, [x19, x20]                           ; x8 = self->_contentView
  1000cbc60  str     x0, [x19, x20]                           ; self->_contentView = arg1
  1000cbc64  mov     x0, x8
  1000cbc68  ldp     x29, x30, [sp, #0x10]
  1000cbc6c  ldp     x20, x19, [sp], #0x20
  1000cbc70  b       _objc_release

; ======================================================================
; -[ADChallengeSelectorViewController challengeFiles]
; address 0x1000cbc74  size 16  kind objc
; ======================================================================
  1000cbc74  adrp    x8, #0x100420000
  1000cbc78  ldrsw   x2, [x8, #0x418]                         ; ivar offset ADChallengeSelectorViewController._challengeFiles (+0x170)
  1000cbc7c  mov     w3, #1
  1000cbc80  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADChallengeSelectorViewController setChallengeFiles:]
; address 0x1000cbc84  size 12  kind objc
; ======================================================================
  1000cbc84  adrp    x8, #0x100420000
  1000cbc88  ldrsw   x3, [x8, #0x418]                         ; ivar offset ADChallengeSelectorViewController._challengeFiles (+0x170)
  1000cbc8c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADChallengeSelectorViewController .cxx_destruct]
; address 0x1000cbc90  size 164  kind objc
; ======================================================================
  1000cbc90  stp     x20, x19, [sp, #-0x20]!
  1000cbc94  stp     x29, x30, [sp, #0x10]
  1000cbc98  add     x29, sp, #0x10
  1000cbc9c  mov     x19, x0
  1000cbca0  adrp    x8, #0x100420000
  1000cbca4  ldrsw   x8, [x8, #0x418]                         ; ivar offset ADChallengeSelectorViewController._challengeFiles (+0x170)
  1000cbca8  add     x0, x19, x8
  1000cbcac  mov     x1, #0
  1000cbcb0  bl      _objc_storeStrong
  1000cbcb4  adrp    x8, #0x100420000
  1000cbcb8  ldrsw   x8, [x8, #0x414]                         ; ivar offset ADChallengeSelectorViewController._contentView (+0x168)
  1000cbcbc  add     x0, x19, x8
  1000cbcc0  mov     x1, #0
  1000cbcc4  bl      _objc_storeStrong
  1000cbcc8  adrp    x8, #0x100420000
  1000cbccc  ldrsw   x8, [x8, #0x410]                         ; ivar offset ADChallengeSelectorViewController._challengeIndex (+0x160)
  1000cbcd0  add     x0, x19, x8
  1000cbcd4  mov     x1, #0
  1000cbcd8  bl      _objc_storeStrong
  1000cbcdc  adrp    x8, #0x100420000
  1000cbce0  ldrsw   x8, [x8, #0x40c]                         ; ivar offset ADChallengeSelectorViewController._challengeScrollView (+0x158)
  1000cbce4  add     x0, x19, x8
  1000cbce8  mov     x1, #0
  1000cbcec  bl      _objc_storeStrong
  1000cbcf0  adrp    x8, #0x100420000
  1000cbcf4  ldrsw   x8, [x8, #0x408]                         ; ivar offset ADChallengeSelectorViewController._challengeWorldLabel (+0x150)
  1000cbcf8  add     x0, x19, x8
  1000cbcfc  mov     x1, #0
  1000cbd00  bl      _objc_storeStrong
  1000cbd04  adrp    x8, #0x100420000
  1000cbd08  ldrsw   x8, [x8, #0x400]                         ; ivar offset ADChallengeSelectorViewController.challengeToLoad (+0x148)
  1000cbd0c  add     x0, x19, x8
  1000cbd10  mov     x1, #0
  1000cbd14  bl      _objc_storeStrong
  1000cbd18  mov     x1, #0
  1000cbd1c  adrp    x8, #0x100420000
  1000cbd20  ldrsw   x8, [x8, #0x404]                         ; ivar offset ADChallengeSelectorViewController.icons (+0x140)
  1000cbd24  add     x0, x19, x8
  1000cbd28  ldp     x29, x30, [sp, #0x10]
  1000cbd2c  ldp     x20, x19, [sp], #0x20
  1000cbd30  b       _objc_storeStrong
