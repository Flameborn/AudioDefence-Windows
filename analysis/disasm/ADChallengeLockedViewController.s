// unit ADChallengeLockedViewController — 20 functions
//   0x10000f898     180  -[ADChallengeLockedViewController initWithDictionary:]
//   0x10000f94c     160  -[ADChallengeLockedViewController backButtonPressed]
//   0x10000f9ec     572  -[ADChallengeLockedViewController viewDidLoad]
//   0x10000fc28    1268  -[ADChallengeLockedViewController viewWillAppear:]
//   0x10001011c     312  -[ADChallengeLockedViewController initMissingChallenges]
//   0x100010254    2692  -[ADChallengeLockedViewController initMissingWeapons]
//   0x100010cd8     852  -[ADChallengeLockedViewController armoryButtonTouched:]
//   0x10001102c     624  -[ADChallengeLockedViewController showPurchaseConfirmation:]
//   0x10001129c     188  -[ADChallengeLockedViewController showWeaponInArmory:]
//   0x100011358      16  -[ADChallengeLockedViewController challengeDict]
//   0x100011368      56  -[ADChallengeLockedViewController setChallengeDict:]
//   0x1000113a0      16  -[ADChallengeLockedViewController missingWeaponsView]
//   0x1000113b0      56  -[ADChallengeLockedViewController setMissingWeaponsView:]
//   0x1000113e8      16  -[ADChallengeLockedViewController mainText]
//   0x1000113f8      56  -[ADChallengeLockedViewController setMainText:]
//   0x100011430      16  -[ADChallengeLockedViewController weaponIcon]
//   0x100011440      56  -[ADChallengeLockedViewController setWeaponIcon:]
//   0x100011478      16  -[ADChallengeLockedViewController armoryButton]
//   0x100011488      56  -[ADChallengeLockedViewController setArmoryButton:]
//   0x1000114c0     144  -[ADChallengeLockedViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeLockedViewController initWithDictionary:]
; address 0x10000f898  size 180  kind objc
; ======================================================================
  10000f898  stp     x22, x21, [sp, #-0x30]!
  10000f89c  stp     x20, x19, [sp, #0x10]
  10000f8a0  stp     x29, x30, [sp, #0x20]
  10000f8a4  add     x29, sp, #0x20
  10000f8a8  sub     sp, sp, #0x10
  10000f8ac  mov     x20, x0
  10000f8b0  mov     x0, x2
  10000f8b4  bl      _objc_retain
  10000f8b8  mov     x19, x0
  10000f8bc  str     x20, [sp]
  10000f8c0  adrp    x8, #0x10041e000
  10000f8c4  ldr     x8, [x8, #0xbe0]
  10000f8c8  str     x8, [sp, #8]
  10000f8cc  adrp    x8, #0x100416000
  10000f8d0  nop
  10000f8d4  ldr     x1, [x8, #0xb40]
  10000f8d8  mov     x20, #0
  10000f8dc  mov     x0, sp
  10000f8e0  mov     x2, #0
  10000f8e4  mov     x3, #0
  10000f8e8  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  10000f8ec  mov     x21, x0
  10000f8f0  cbz     x21, loc_10000f910                       ; if (self == 0)
  10000f8f4  mov     x20, x21
  10000f8f8  adrp    x8, #0x100417000
  10000f8fc  nop
  10000f900  ldr     x1, [x8, #0x140]
  10000f904  mov     x0, x21
  10000f908  mov     x2, x19
  10000f90c  bl      _objc_msgSend                            ; [self setChallengeDict:arg1]
loc_10000f910:
  10000f910  mov     x0, x19
  10000f914  bl      _objc_release
  10000f918  mov     x0, x21
  10000f91c  sub     sp, x29, #0x20
  10000f920  ldp     x29, x30, [sp, #0x20]
  10000f924  ldp     x20, x19, [sp, #0x10]
  10000f928  ldp     x22, x21, [sp], #0x30
  10000f92c  ret
  10000f930  mov     x21, x0
  10000f934  mov     x0, x19
  10000f938  bl      _objc_release
  10000f93c  mov     x0, x20
  10000f940  bl      _objc_release
  10000f944  mov     x0, x21
  10000f948  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeLockedViewController backButtonPressed]
; address 0x10000f94c  size 160  kind objc
; ======================================================================
  10000f94c  stp     x22, x21, [sp, #-0x30]!
  10000f950  stp     x20, x19, [sp, #0x10]
  10000f954  stp     x29, x30, [sp, #0x20]
  10000f958  add     x29, sp, #0x20
  10000f95c  adrp    x8, #0x10041d000
  10000f960  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10000f964  adrp    x8, #0x100416000
  10000f968  nop
  10000f96c  ldr     x1, [x8, #0xb28]
  10000f970  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10000f974  mov     x29, x29
  10000f978  bl      _objc_retainAutoreleasedReturnValue
  10000f97c  mov     x19, x0
  10000f980  adrp    x8, #0x100416000
  10000f984  nop
  10000f988  ldr     x1, [x8, #0xc18]
  10000f98c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10000f990  mov     x29, x29
  10000f994  bl      _objc_retainAutoreleasedReturnValue
  10000f998  mov     x20, x0
  10000f99c  adrp    x8, #0x100417000
  10000f9a0  nop
  10000f9a4  ldr     x1, [x8, #0x148]
  10000f9a8  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeSelector]
  10000f9ac  mov     x0, x20
  10000f9b0  bl      _objc_release
  10000f9b4  mov     x0, x19
  10000f9b8  ldp     x29, x30, [sp, #0x20]
  10000f9bc  ldp     x20, x19, [sp, #0x10]
  10000f9c0  ldp     x22, x21, [sp], #0x30
  10000f9c4  b       _objc_release
  10000f9c8  mov     x21, x0
  10000f9cc  b       loc_10000f9dc
  10000f9d0  mov     x21, x0
  10000f9d4  mov     x0, x20
  10000f9d8  bl      _objc_release
loc_10000f9dc:
  10000f9dc  mov     x0, x19
  10000f9e0  bl      _objc_release
  10000f9e4  mov     x0, x21
  10000f9e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeLockedViewController viewDidLoad]
; address 0x10000f9ec  size 572  kind objc
; ======================================================================
  10000f9ec  stp     x24, x23, [sp, #-0x40]!
  10000f9f0  stp     x22, x21, [sp, #0x10]
  10000f9f4  stp     x20, x19, [sp, #0x20]
  10000f9f8  stp     x29, x30, [sp, #0x30]
  10000f9fc  add     x29, sp, #0x30
  10000fa00  sub     sp, sp, #0x10
  10000fa04  mov     x19, x0
  10000fa08  str     x19, [sp]
  10000fa0c  adrp    x8, #0x10041e000
  10000fa10  ldr     x8, [x8, #0xbe0]
  10000fa14  str     x8, [sp, #8]
  10000fa18  adrp    x8, #0x100416000
  10000fa1c  nop
  10000fa20  ldr     x1, [x8, #0xb48]
  10000fa24  mov     x0, sp
  10000fa28  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10000fa2c  adrp    x8, #0x10041d000
  10000fa30  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10000fa34  adrp    x8, #0x100416000
  10000fa38  nop
  10000fa3c  ldr     x1, [x8, #0xdf0]
  10000fa40  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10000fa44  mov     x29, x29
  10000fa48  bl      _objc_retainAutoreleasedReturnValue
  10000fa4c  mov     x20, x0
  10000fa50  adrp    x8, #0x100417000
  10000fa54  nop
  10000fa58  ldr     x1, [x8, #0x150]
  10000fa5c  mov     x0, x19
  10000fa60  bl      _objc_msgSend                            ; [self challengeDict]
  10000fa64  mov     x29, x29
  10000fa68  bl      _objc_retainAutoreleasedReturnValue
  10000fa6c  mov     x21, x0
  10000fa70  adrp    x8, #0x100417000
  10000fa74  nop
  10000fa78  ldr     x1, [x8, #0x40]
  10000fa7c  adrp    x2, #0x1003b9000
  10000fa80  add     x2, x2, #0xef0                           ; @"challenge_id"
  10000fa84  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  10000fa88  mov     x29, x29
  10000fa8c  bl      _objc_retainAutoreleasedReturnValue
  10000fa90  mov     x22, x0
  10000fa94  adrp    x8, #0x100417000
  10000fa98  nop
  10000fa9c  ldr     x1, [x8, #0x158]
  10000faa0  mov     x0, x20
  10000faa4  mov     x2, x22
  10000faa8  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10000faac  mov     x23, x0
  10000fab0  mov     x0, x22
  10000fab4  bl      _objc_release
  10000fab8  mov     x0, x21
  10000fabc  bl      _objc_release
  10000fac0  mov     x0, x20
  10000fac4  bl      _objc_release
  10000fac8  tbnz    w23, #0, loc_10000fae0                   ; if (([[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] & 1))
  10000facc  adrp    x8, #0x100417000
  10000fad0  nop
  10000fad4  ldr     x1, [x8, #0x160]
  10000fad8  mov     x0, x19
  10000fadc  bl      _objc_msgSend                            ; [self initMissingWeapons]
loc_10000fae0:
  10000fae0  adrp    x8, #0x100417000
  10000fae4  nop
  10000fae8  ldr     x1, [x8, #0x168]
  10000faec  mov     x0, x19
  10000faf0  bl      _objc_msgSend                            ; [self mainText]
  10000faf4  mov     x29, x29
  10000faf8  bl      _objc_retainAutoreleasedReturnValue
  10000fafc  mov     x19, x0
  10000fb00  adrp    x8, #0x10041d000
  10000fb04  ldr     x21, [x8, #0xf08]                        ; class UIFont
  10000fb08  nop
  10000fb0c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10000fb10  adrp    x8, #0x100416000
  10000fb14  nop
  10000fb18  ldr     x1, [x8, #0xc00]
  10000fb1c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10000fb20  mov     x29, x29
  10000fb24  bl      _objc_retainAutoreleasedReturnValue
  10000fb28  mov     x20, x0
  10000fb2c  adrp    x8, #0x100416000
  10000fb30  nop
  10000fb34  ldr     x1, [x8, #0xd18]
  10000fb38  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10000fb3c  cmp     w0, #0
  10000fb40  adrp    x8, #0x100181000
  10000fb44  ldr     d0, [x8, #0x9f8]                         ; d0 = 40.0
  10000fb48  fmov    d1, #24.00000000
  10000fb4c  fcsel   d0, d1, d0, ne
  10000fb50  adrp    x8, #0x100416000
  10000fb54  nop
  10000fb58  ldr     x1, [x8, #0xd20]
  10000fb5c  adrp    x2, #0x1003b9000
  10000fb60  add     x2, x2, #0xf10                           ; @"Monstro"
  10000fb64  mov     x0, x21
  10000fb68  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 24 : 40)]
  10000fb6c  mov     x29, x29
  10000fb70  bl      _objc_retainAutoreleasedReturnValue
  10000fb74  mov     x22, x0
  10000fb78  adrp    x8, #0x100416000
  10000fb7c  nop
  10000fb80  ldr     x1, [x8, #0xd28]
  10000fb84  mov     x0, x19
  10000fb88  mov     x2, x22
  10000fb8c  bl      _objc_msgSend                            ; [[self mainText] setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 24 : 40)]]
  10000fb90  mov     x0, x22
  10000fb94  bl      _objc_release
  10000fb98  mov     x0, x20
  10000fb9c  bl      _objc_release
  10000fba0  mov     x0, x19
  10000fba4  bl      _objc_release
  10000fba8  sub     sp, x29, #0x30
  10000fbac  ldp     x29, x30, [sp, #0x30]
  10000fbb0  ldp     x20, x19, [sp, #0x20]
  10000fbb4  ldp     x22, x21, [sp, #0x10]
  10000fbb8  ldp     x24, x23, [sp], #0x40
  10000fbbc  ret
  10000fbc0  mov     x21, x0
  10000fbc4  b       loc_10000fc10
  10000fbc8  mov     x21, x0
  10000fbcc  b       loc_10000fbf4
  10000fbd0  mov     x19, x21
  10000fbd4  mov     x21, x0
  10000fbd8  b       loc_10000fbec
  10000fbdc  mov     x19, x21
  10000fbe0  mov     x21, x0
  10000fbe4  mov     x0, x22
  10000fbe8  bl      _objc_release
loc_10000fbec:
  10000fbec  mov     x0, x19
  10000fbf0  bl      _objc_release
loc_10000fbf4:
  10000fbf4  mov     x0, x20
  10000fbf8  b       loc_10000fc1c
  10000fbfc  mov     x21, x0
  10000fc00  b       loc_10000fc18
  10000fc04  mov     x21, x0
  10000fc08  mov     x0, x22
  10000fc0c  bl      _objc_release
loc_10000fc10:
  10000fc10  mov     x0, x20
  10000fc14  bl      _objc_release
loc_10000fc18:
  10000fc18  mov     x0, x19
loc_10000fc1c:
  10000fc1c  bl      _objc_release
  10000fc20  mov     x0, x21
  10000fc24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeLockedViewController viewWillAppear:]
; address 0x10000fc28  size 1268  kind objc
; ======================================================================
  10000fc28  stp     x28, x27, [sp, #-0x60]!
  10000fc2c  stp     x26, x25, [sp, #0x10]
  10000fc30  stp     x24, x23, [sp, #0x20]
  10000fc34  stp     x22, x21, [sp, #0x30]
  10000fc38  stp     x20, x19, [sp, #0x40]
  10000fc3c  stp     x29, x30, [sp, #0x50]
  10000fc40  add     x29, sp, #0x50
  10000fc44  mov     x19, x0
  10000fc48  adrp    x8, #0x100417000
  10000fc4c  nop
  10000fc50  ldr     x20, [x8, #0x160]
  10000fc54  mov     x1, x20
  10000fc58  bl      _objc_msgSend                            ; [self initMissingWeapons]
  10000fc5c  adrp    x8, #0x10041f000
  10000fc60  ldrsw   x8, [x8, #0x50c]                         ; ivar offset ADChallengeLockedViewController.missingWeapons (+0x140)
  10000fc64  ldr     x0, [x19, x8]                            ; x0 = self->missingWeapons
  10000fc68  adrp    x8, #0x100416000
  10000fc6c  nop
  10000fc70  ldr     x1, [x8, #0xe30]
  10000fc74  bl      _objc_msgSend                            ; [self->missingWeapons count]
  10000fc78  cbnz    x0, loc_10000fecc                        ; if ([self->missingWeapons count] != 0)
  10000fc7c  adrp    x8, #0x10041d000
  10000fc80  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10000fc84  adrp    x8, #0x100416000
  10000fc88  nop
  10000fc8c  ldr     x1, [x8, #0xdf0]
  10000fc90  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10000fc94  mov     x29, x29
  10000fc98  bl      _objc_retainAutoreleasedReturnValue
  10000fc9c  mov     x22, x0
  10000fca0  adrp    x8, #0x100417000
  10000fca4  nop
  10000fca8  ldr     x21, [x8, #0x150]
  10000fcac  mov     x0, x19
  10000fcb0  mov     x1, x21
  10000fcb4  bl      _objc_msgSend                            ; [self challengeDict]
  10000fcb8  mov     x29, x29
  10000fcbc  bl      _objc_retainAutoreleasedReturnValue
  10000fcc0  mov     x23, x0
  10000fcc4  adrp    x8, #0x100417000
  10000fcc8  nop
  10000fccc  ldr     x1, [x8, #0x40]
  10000fcd0  adrp    x2, #0x1003b9000
  10000fcd4  add     x2, x2, #0xef0                           ; @"challenge_id"
  10000fcd8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  10000fcdc  mov     x29, x29
  10000fce0  bl      _objc_retainAutoreleasedReturnValue
  10000fce4  mov     x24, x0
  10000fce8  adrp    x8, #0x100417000
  10000fcec  nop
  10000fcf0  ldr     x1, [x8, #0x170]
  10000fcf4  mov     x0, x22
  10000fcf8  mov     x2, x24
  10000fcfc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasChallengeRequirementsForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10000fd00  mov     x25, x0
  10000fd04  mov     x0, x24
  10000fd08  bl      _objc_release
  10000fd0c  mov     x0, x23
  10000fd10  bl      _objc_release
  10000fd14  mov     x0, x22
  10000fd18  bl      _objc_release
  10000fd1c  cbz     w25, loc_10000fecc                       ; if ([[ADChallengeData sharedChallengeData] hasChallengeRequirementsForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  10000fd20  adrp    x8, #0x10041d000
  10000fd24  ldr     x0, [x8, #0xf98]                         ; class UIView
  10000fd28  adrp    x8, #0x100416000
  10000fd2c  nop
  10000fd30  ldr     x1, [x8, #0xac8]
  10000fd34  bl      _objc_msgSend                            ; [UIView alloc]
  10000fd38  mov     x22, x0
  10000fd3c  adrp    x8, #0x100416000
  10000fd40  nop
  10000fd44  ldr     x23, [x8, #0xf18]
  10000fd48  mov     x0, x19
  10000fd4c  mov     x1, x23
  10000fd50  bl      _objc_msgSend                            ; [self view]
  10000fd54  mov     x29, x29
  10000fd58  bl      _objc_retainAutoreleasedReturnValue
  10000fd5c  mov     x24, x0
  10000fd60  adrp    x8, #0x100416000
  10000fd64  nop
  10000fd68  ldr     x1, [x8, #0xf38]
  10000fd6c  bl      _objc_msgSend                            ; [[self view] frame]
  10000fd70  adrp    x8, #0x100417000
  10000fd74  nop
  10000fd78  ldr     x1, [x8, #0x178]
  10000fd7c  mov     x0, x22
  10000fd80  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}]
  10000fd84  mov     x22, x0
  10000fd88  mov     x0, x24
  10000fd8c  bl      _objc_release
  10000fd90  adrp    x8, #0x10041d000
  10000fd94  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10000fd98  adrp    x8, #0x100417000
  10000fd9c  nop
  10000fda0  ldr     x1, [x8, #0x180]
  10000fda4  bl      _objc_msgSend                            ; [UIColor blackColor]
  10000fda8  mov     x29, x29
  10000fdac  bl      _objc_retainAutoreleasedReturnValue
  10000fdb0  mov     x24, x0
  10000fdb4  adrp    x8, #0x100417000
  10000fdb8  nop
  10000fdbc  ldr     x1, [x8, #0x188]
  10000fdc0  mov     x0, x22
  10000fdc4  mov     x2, x24
  10000fdc8  bl      _objc_msgSend                            ; [[[UIView alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}] setBackgroundColor:[UIColor blackColor]]
  10000fdcc  mov     x0, x24
  10000fdd0  bl      _objc_release
  10000fdd4  mov     x0, x19
  10000fdd8  mov     x1, x23
  10000fddc  bl      _objc_msgSend                            ; [self view]
  10000fde0  mov     x29, x29
  10000fde4  bl      _objc_retainAutoreleasedReturnValue
  10000fde8  mov     x24, x0
  10000fdec  adrp    x8, #0x100416000
  10000fdf0  nop
  10000fdf4  ldr     x1, [x8, #0xf20]
  10000fdf8  mov     x2, x22
  10000fdfc  bl      _objc_msgSend                            ; [[self view] addSubview:[[UIView alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}]]
  10000fe00  mov     x0, x24
  10000fe04  bl      _objc_release
  10000fe08  mov     x0, x19
  10000fe0c  mov     x1, x23
  10000fe10  bl      _objc_msgSend                            ; [self view]
  10000fe14  mov     x29, x29
  10000fe18  bl      _objc_retainAutoreleasedReturnValue
  10000fe1c  mov     x23, x0
  10000fe20  adrp    x8, #0x100417000
  10000fe24  nop
  10000fe28  ldr     x1, [x8, #0x190]
  10000fe2c  mov     x2, x22
  10000fe30  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[[UIView alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}]]
  10000fe34  mov     x0, x23
  10000fe38  bl      _objc_release
  10000fe3c  adrp    x8, #0x10041d000
  10000fe40  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10000fe44  adrp    x8, #0x100416000
  10000fe48  nop
  10000fe4c  ldr     x1, [x8, #0xb28]
  10000fe50  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10000fe54  mov     x29, x29
  10000fe58  bl      _objc_retainAutoreleasedReturnValue
  10000fe5c  mov     x23, x0
  10000fe60  adrp    x8, #0x100416000
  10000fe64  nop
  10000fe68  ldr     x1, [x8, #0xc18]
  10000fe6c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10000fe70  mov     x29, x29
  10000fe74  bl      _objc_retainAutoreleasedReturnValue
  10000fe78  mov     x24, x0
  10000fe7c  mov     x0, x19
  10000fe80  mov     x1, x21
  10000fe84  bl      _objc_msgSend                            ; [self challengeDict]
  10000fe88  mov     x29, x29
  10000fe8c  bl      _objc_retainAutoreleasedReturnValue
  10000fe90  mov     x21, x0
  10000fe94  adrp    x8, #0x100417000
  10000fe98  nop
  10000fe9c  ldr     x1, [x8, #0x198]
  10000fea0  mov     x0, x24
  10000fea4  mov     x2, x21
  10000fea8  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeOverviewWithDictionary:[self challengeDict]]
  10000feac  mov     x0, x21
  10000feb0  bl      _objc_release
  10000feb4  mov     x0, x24
  10000feb8  bl      _objc_release
  10000febc  mov     x0, x23
  10000fec0  bl      _objc_release
  10000fec4  mov     x0, x22
  10000fec8  bl      _objc_release
loc_10000fecc:
  10000fecc  adrp    x28, #0x10041d000
  10000fed0  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  10000fed4  adrp    x8, #0x100416000
  10000fed8  nop
  10000fedc  ldr     x22, [x8, #0xdf0]
  10000fee0  mov     x1, x22
  10000fee4  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10000fee8  mov     x29, x29
  10000feec  bl      _objc_retainAutoreleasedReturnValue
  10000fef0  mov     x21, x0
  10000fef4  adrp    x8, #0x100417000
  10000fef8  nop
  10000fefc  ldr     x23, [x8, #0x150]
  10000ff00  mov     x0, x19
  10000ff04  mov     x1, x23
  10000ff08  bl      _objc_msgSend                            ; [self challengeDict]
  10000ff0c  mov     x29, x29
  10000ff10  bl      _objc_retainAutoreleasedReturnValue
  10000ff14  mov     x25, x0
  10000ff18  adrp    x8, #0x100417000
  10000ff1c  nop
  10000ff20  ldr     x24, [x8, #0x40]
  10000ff24  adrp    x2, #0x1003b9000
  10000ff28  add     x2, x2, #0xef0                           ; @"challenge_id"
  10000ff2c  mov     x1, x24
  10000ff30  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  10000ff34  mov     x29, x29
  10000ff38  bl      _objc_retainAutoreleasedReturnValue
  10000ff3c  mov     x26, x0
  10000ff40  adrp    x8, #0x100417000
  10000ff44  nop
  10000ff48  ldr     x1, [x8, #0x170]
  10000ff4c  mov     x0, x21
  10000ff50  mov     x2, x26
  10000ff54  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasChallengeRequirementsForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10000ff58  mov     x27, x0
  10000ff5c  mov     x0, x26
  10000ff60  bl      _objc_release
  10000ff64  mov     x0, x25
  10000ff68  bl      _objc_release
  10000ff6c  mov     x0, x21
  10000ff70  bl      _objc_release
  10000ff74  tbz     w27, #0, loc_100010018                   ; if (!([[ADChallengeData sharedChallengeData] hasChallengeRequirementsForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] & 1))
  10000ff78  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  10000ff7c  mov     x1, x22
  10000ff80  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10000ff84  mov     x29, x29
  10000ff88  bl      _objc_retainAutoreleasedReturnValue
  10000ff8c  mov     x21, x0
  10000ff90  mov     x0, x19
  10000ff94  mov     x1, x23
  10000ff98  bl      _objc_msgSend                            ; [self challengeDict]
  10000ff9c  mov     x29, x29
  10000ffa0  bl      _objc_retainAutoreleasedReturnValue
  10000ffa4  mov     x22, x0
  10000ffa8  adrp    x2, #0x1003b9000
  10000ffac  add     x2, x2, #0xef0                           ; @"challenge_id"
  10000ffb0  mov     x1, x24
  10000ffb4  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  10000ffb8  mov     x29, x29
  10000ffbc  bl      _objc_retainAutoreleasedReturnValue
  10000ffc0  mov     x23, x0
  10000ffc4  adrp    x8, #0x100417000
  10000ffc8  nop
  10000ffcc  ldr     x1, [x8, #0x158]
  10000ffd0  mov     x0, x21
  10000ffd4  mov     x2, x23
  10000ffd8  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10000ffdc  mov     x24, x0
  10000ffe0  mov     x0, x23
  10000ffe4  bl      _objc_release
  10000ffe8  mov     x0, x22
  10000ffec  bl      _objc_release
  10000fff0  mov     x0, x21
  10000fff4  bl      _objc_release
  10000fff8  tbz     w24, #0, loc_10001002c                   ; if (!([[ADChallengeData sharedChallengeData] hasWeaponForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] & 1))
  10000fffc  ldp     x29, x30, [sp, #0x50]
  100010000  ldp     x20, x19, [sp, #0x40]
  100010004  ldp     x22, x21, [sp, #0x30]
  100010008  ldp     x24, x23, [sp, #0x20]
  10001000c  ldp     x26, x25, [sp, #0x10]
  100010010  ldp     x28, x27, [sp], #0x60
  100010014  ret
loc_100010018:
  100010018  adrp    x8, #0x100417000
  10001001c  add     x8, x8, #0x1a0                           ; &@selector(initMissingChallenges)
  100010020  ldr     x1, [x8]
  100010024  mov     x0, x19
  100010028  b       loc_100010034
loc_10001002c:
  10001002c  mov     x0, x19
  100010030  mov     x1, x20
loc_100010034:
  100010034  ldp     x29, x30, [sp, #0x50]
  100010038  ldp     x20, x19, [sp, #0x40]
  10001003c  ldp     x22, x21, [sp, #0x30]
  100010040  ldp     x24, x23, [sp, #0x20]
  100010044  ldp     x26, x25, [sp, #0x10]
  100010048  ldp     x28, x27, [sp], #0x60
  10001004c  b       _objc_msgSend                            ; [self <sel x1>]
  100010050  mov     x19, x0
  100010054  b       loc_1000100a0
  100010058  mov     x19, x0
  10001005c  b       loc_10001006c
  100010060  mov     x19, x0
  100010064  mov     x0, x26
  100010068  bl      _objc_release
loc_10001006c:
  10001006c  mov     x0, x25
  100010070  b       loc_10001009c
  100010074  mov     x19, x0
  100010078  b       loc_10001010c
  10001007c  mov     x19, x0
  100010080  b       loc_1000100a0
  100010084  mov     x19, x0
  100010088  b       loc_100010098
  10001008c  mov     x19, x0
  100010090  mov     x0, x23
  100010094  bl      _objc_release
loc_100010098:
  100010098  mov     x0, x22
loc_10001009c:
  10001009c  bl      _objc_release
loc_1000100a0:
  1000100a0  mov     x0, x21
  1000100a4  b       loc_100010110
  1000100a8  mov     x19, x0
  1000100ac  b       loc_10001010c
  1000100b0  mov     x19, x0
  1000100b4  b       loc_100010104
  1000100b8  b       loc_1000100e8
  1000100bc  mov     x19, x0
  1000100c0  mov     x0, x24
  1000100c4  b       loc_100010110
  1000100c8  b       loc_1000100cc
loc_1000100cc:
  1000100cc  mov     x19, x0
  1000100d0  mov     x0, x24
  1000100d4  b       loc_100010108
  1000100d8  mov     x19, x0
  1000100dc  b       loc_100010104
  1000100e0  mov     x19, x0
  1000100e4  b       loc_100010104
loc_1000100e8:
  1000100e8  mov     x19, x0
  1000100ec  b       loc_1000100fc
  1000100f0  mov     x19, x0
  1000100f4  mov     x0, x21
  1000100f8  bl      _objc_release
loc_1000100fc:
  1000100fc  mov     x0, x24
  100010100  bl      _objc_release
loc_100010104:
  100010104  mov     x0, x23
loc_100010108:
  100010108  bl      _objc_release
loc_10001010c:
  10001010c  mov     x0, x22
loc_100010110:
  100010110  bl      _objc_release
  100010114  mov     x0, x19
  100010118  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeLockedViewController initMissingChallenges]
; address 0x10001011c  size 312  kind objc
; ======================================================================
  10001011c  stp     x22, x21, [sp, #-0x30]!
  100010120  stp     x20, x19, [sp, #0x10]
  100010124  stp     x29, x30, [sp, #0x20]
  100010128  add     x29, sp, #0x20
  10001012c  mov     x19, x0
  100010130  adrp    x8, #0x100417000
  100010134  nop
  100010138  ldr     x1, [x8, #0x168]
  10001013c  bl      _objc_msgSend                            ; [self mainText]
  100010140  mov     x29, x29
  100010144  bl      _objc_retainAutoreleasedReturnValue
  100010148  mov     x20, x0
  10001014c  adrp    x8, #0x100416000
  100010150  nop
  100010154  ldr     x1, [x8, #0xb68]
  100010158  adrp    x2, #0x1003b9000
  10001015c  add     x2, x2, #0xf30                           ; @"YOU NEED TO FINISH THE PREVIOUS CHALLENGES TO PLAY THIS ONE"
  100010160  bl      _objc_msgSend                            ; [[self mainText] setText:@"YOU NEED TO FINISH THE PREVIOUS CHALLENGES TO PLAY THIS ONE"]
  100010164  mov     x0, x20
  100010168  bl      _objc_release
  10001016c  adrp    x8, #0x100417000
  100010170  nop
  100010174  ldr     x1, [x8, #0x1a8]
  100010178  mov     x0, x19
  10001017c  bl      _objc_msgSend                            ; [self weaponIcon]
  100010180  mov     x29, x29
  100010184  bl      _objc_retainAutoreleasedReturnValue
  100010188  mov     x20, x0
  10001018c  adrp    x8, #0x10041d000
  100010190  ldr     x0, [x8, #0xf10]                         ; class UIImage
  100010194  adrp    x8, #0x100416000
  100010198  nop
  10001019c  ldr     x1, [x8, #0xd40]
  1000101a0  adrp    x2, #0x1003b9000
  1000101a4  add     x2, x2, #0xf50                           ; @"lock blank"
  1000101a8  bl      _objc_msgSend                            ; [UIImage imageNamed:@"lock blank"]
  1000101ac  mov     x29, x29
  1000101b0  bl      _objc_retainAutoreleasedReturnValue
  1000101b4  mov     x21, x0
  1000101b8  adrp    x8, #0x100416000
  1000101bc  nop
  1000101c0  ldr     x1, [x8, #0xef0]
  1000101c4  mov     x0, x20
  1000101c8  mov     x2, x21
  1000101cc  bl      _objc_msgSend                            ; [[self weaponIcon] setImage:[UIImage imageNamed:@"lock blank"]]
  1000101d0  mov     x0, x21
  1000101d4  bl      _objc_release
  1000101d8  mov     x0, x20
  1000101dc  bl      _objc_release
  1000101e0  adrp    x8, #0x100417000
  1000101e4  nop
  1000101e8  ldr     x1, [x8, #0x1b0]
  1000101ec  mov     x0, x19
  1000101f0  bl      _objc_msgSend                            ; [self armoryButton]
  1000101f4  mov     x29, x29
  1000101f8  bl      _objc_retainAutoreleasedReturnValue
  1000101fc  mov     x20, x0
  100010200  adrp    x8, #0x100416000
  100010204  nop
  100010208  ldr     x1, [x8, #0xba8]
  10001020c  mov     w2, #1
  100010210  bl      _objc_msgSend                            ; [[self armoryButton] setHidden:1]
  100010214  mov     x0, x20
  100010218  ldp     x29, x30, [sp, #0x20]
  10001021c  ldp     x20, x19, [sp, #0x10]
  100010220  ldp     x22, x21, [sp], #0x30
  100010224  b       _objc_release
  100010228  b       loc_100010240
  10001022c  b       loc_100010240
  100010230  mov     x19, x0
  100010234  mov     x0, x21
  100010238  bl      _objc_release
  10001023c  b       loc_100010244
loc_100010240:
  100010240  mov     x19, x0
loc_100010244:
  100010244  mov     x0, x20
  100010248  bl      _objc_release
  10001024c  mov     x0, x19
  100010250  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeLockedViewController initMissingWeapons]
; address 0x100010254  size 2692  kind objc
; ======================================================================
  100010254  stp     d11, d10, [sp, #-0x80]!
  100010258  stp     d9, d8, [sp, #0x10]
  10001025c  stp     x28, x27, [sp, #0x20]
  100010260  stp     x26, x25, [sp, #0x30]
  100010264  stp     x24, x23, [sp, #0x40]
  100010268  stp     x22, x21, [sp, #0x50]
  10001026c  stp     x20, x19, [sp, #0x60]
  100010270  stp     x29, x30, [sp, #0x70]
  100010274  add     x29, sp, #0x70
  100010278  sub     sp, sp, #0x280
  10001027c  mov     x19, x0
  100010280  adrp    x8, #0x1003b0000
  100010284  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100010288  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10001028c  stur    x8, [x29, #-0x78]
  100010290  adrp    x8, #0x10041f000
  100010294  ldrsw   x27, [x8, #0x50c]                        ; ivar offset ADChallengeLockedViewController.missingWeapons (+0x140)
  100010298  ldr     x0, [x19, x27]                           ; x0 = self->missingWeapons
  10001029c  cbz     x0, loc_100010324                        ; if (self->missingWeapons == 0)
  1000102a0  adrp    x8, #0x100417000
  1000102a4  nop
  1000102a8  ldr     x1, [x8, #0x1b8]
  1000102ac  bl      _objc_msgSend                            ; [self->missingWeapons removeAllObjects]
  1000102b0  ldr     x0, [x19, x27]                           ; x0 = self->missingWeapons
  1000102b4  str     xzr, [x19, x27]                          ; self->missingWeapons = 0
  1000102b8  bl      _objc_release
  1000102bc  adrp    x8, #0x100417000
  1000102c0  nop
  1000102c4  ldr     x1, [x8, #0x1c0]
  1000102c8  mov     x0, x19
  1000102cc  bl      _objc_msgSend                            ; [self missingWeaponsView]
  1000102d0  mov     x29, x29
  1000102d4  bl      _objc_retainAutoreleasedReturnValue
  1000102d8  mov     x20, x0
  1000102dc  adrp    x8, #0x100417000
  1000102e0  nop
  1000102e4  ldr     x1, [x8, #0x1c8]
  1000102e8  bl      _objc_msgSend                            ; [[self missingWeaponsView] subviews]
  1000102ec  mov     x29, x29
  1000102f0  bl      _objc_retainAutoreleasedReturnValue
  1000102f4  mov     x21, x0
  1000102f8  adrp    x8, #0x100417000
  1000102fc  nop
  100010300  ldr     x2, [x8, #0x1d0]
  100010304  adrp    x8, #0x100416000
  100010308  nop
  10001030c  ldr     x1, [x8, #0xe48]
  100010310  bl      _objc_msgSend                            ; [[[self missingWeaponsView] subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)]
  100010314  mov     x0, x21
  100010318  bl      _objc_release
  10001031c  mov     x0, x20
  100010320  bl      _objc_release
loc_100010324:
  100010324  adrp    x8, #0x10041d000
  100010328  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10001032c  adrp    x8, #0x100416000
  100010330  nop
  100010334  ldr     x1, [x8, #0xac8]
  100010338  str     x1, [sp, #0xa0]
  10001033c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100010340  adrp    x8, #0x100416000
  100010344  nop
  100010348  ldr     x1, [x8, #0xab8]
  10001034c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100010350  ldr     x8, [x19, x27]                           ; x8 = self->missingWeapons
  100010354  str     x0, [x19, x27]                           ; self->missingWeapons = [[NSMutableArray alloc] init]
  100010358  mov     x0, x8
  10001035c  bl      _objc_release
  100010360  stp     xzr, xzr, [sp, #0x168]
  100010364  stp     xzr, xzr, [sp, #0x158]
  100010368  stp     xzr, xzr, [sp, #0x148]
  10001036c  stp     xzr, xzr, [sp, #0x138]
  100010370  adrp    x8, #0x100417000
  100010374  nop
  100010378  ldr     x1, [x8, #0x150]
  10001037c  mov     x0, x19
  100010380  bl      _objc_msgSend                            ; [self challengeDict]
  100010384  mov     x29, x29
  100010388  bl      _objc_retainAutoreleasedReturnValue
  10001038c  mov     x20, x0
  100010390  adrp    x8, #0x100417000
  100010394  nop
  100010398  ldr     x1, [x8, #0x40]
  10001039c  str     x1, [sp, #0xf0]
  1000103a0  adrp    x2, #0x1003b9000
  1000103a4  add     x2, x2, #0xf70                           ; @"weapons"
  1000103a8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"weapons"]
  1000103ac  mov     x29, x29
  1000103b0  bl      _objc_retainAutoreleasedReturnValue
  1000103b4  mov     x21, x0
  1000103b8  str     x21, [sp, #0xb0]
  1000103bc  mov     x0, x20
  1000103c0  bl      _objc_release
  1000103c4  adrp    x8, #0x100416000
  1000103c8  nop
  1000103cc  ldr     x1, [x8, #0xe00]
  1000103d0  str     x1, [sp, #0x10]
  1000103d4  add     x2, sp, #0x138
  1000103d8  sub     x3, x29, #0xf8
  1000103dc  mov     w4, #0x10
  1000103e0  mov     x0, x21
  1000103e4  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x138] objects:&x29[-0xf8] count:16]
  1000103e8  mov     x21, x0
  1000103ec  cbz     x21, loc_100010918                       ; if ([[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x138] objects:&x29[-0xf8] count:16] == 0)
  1000103f0  adrp    x8, #0x100416000
  1000103f4  nop
  1000103f8  adrp    x9, #0x100417000
  1000103fc  nop
  100010400  adrp    x10, #0x100417000
  100010404  nop
  100010408  adrp    x11, #0x100417000
  10001040c  nop
  100010410  ldr     x12, [sp, #0x148]
  100010414  adrp    x13, #0x100417000
  100010418  nop
  10001041c  adrp    x14, #0x100416000
  100010420  add     x14, x14, #0xf18                         ; &@selector(view)
  100010424  ldr     x25, [x8, #0xec8]
  100010428  str     x25, [sp, #0x18]
  10001042c  ldr     x8, [x9, #0x1d8]
  100010430  str     x8, [sp, #0xd0]
  100010434  ldr     x8, [x10, #0x1e0]
  100010438  str     x8, [sp, #0x98]
  10001043c  adrp    x8, #0x100416000
  100010440  nop
  100010444  adrp    x9, #0x100416000
  100010448  nop
  10001044c  ldr     x10, [x11, #0x1e8]
  100010450  str     x10, [sp, #0x90]
  100010454  ldr     x10, [x13, #0x1c0]
  100010458  str     x10, [sp, #0x88]
  10001045c  adrp    x10, #0x100416000
  100010460  nop
  100010464  adrp    x11, #0x100417000
  100010468  add     x11, x11, #0x168                         ; &@selector(mainText)
  10001046c  ldr     x13, [x14]
  100010470  str     x13, [sp, #0xc8]
  100010474  ldr     x8, [x8, #0xf20]
  100010478  str     x8, [sp, #0x80]
  10001047c  ldr     x8, [x9, #0xd90]
  100010480  str     x8, [sp, #0x78]
  100010484  ldr     x8, [x12]
  100010488  str     x8, [sp, #0xd8]
  10001048c  adrp    x8, #0x100417000
  100010490  nop
  100010494  ldr     x9, [x10, #0xf38]
  100010498  str     x9, [sp, #0x70]
  10001049c  ldr     x9, [x11]
  1000104a0  str     x9, [sp, #0x68]
  1000104a4  adrp    x9, #0x100417000
  1000104a8  nop
  1000104ac  adrp    x10, #0x100417000
  1000104b0  nop
  1000104b4  ldr     x8, [x8, #0xa0]
  1000104b8  str     x8, [sp, #0x60]
  1000104bc  ldr     x8, [x9, #0x1f0]
  1000104c0  str     x8, [sp, #0x58]
  1000104c4  adrp    x8, #0x100416000
  1000104c8  nop
  1000104cc  adrp    x9, #0x100416000
  1000104d0  nop
  1000104d4  ldr     x10, [x10, #0x50]
  1000104d8  str     x10, [sp, #0x50]
  1000104dc  ldr     x8, [x8, #0xee8]
  1000104e0  str     x8, [sp, #0xc0]
  1000104e4  adrp    x8, #0x100417000
  1000104e8  nop
  1000104ec  adrp    x10, #0x100416000
  1000104f0  nop
  1000104f4  ldr     x9, [x9, #0xb68]
  1000104f8  str     x9, [sp, #0x48]
  1000104fc  ldr     x8, [x8, #0x1a8]
  100010500  str     x8, [sp, #0x40]
  100010504  adrp    x8, #0x100416000
  100010508  nop
  10001050c  adrp    x9, #0x100417000
  100010510  nop
  100010514  ldr     x10, [x10, #0xd40]
  100010518  str     x10, [sp, #0x38]
  10001051c  ldr     x8, [x8, #0xef0]
  100010520  str     x8, [sp, #0x30]
  100010524  adrp    x8, #0x100416000
  100010528  nop
  10001052c  movi    v0.16b, #0
  100010530  str     q0, [sp, #0xe0]
  100010534  ldr     x9, [x9, #0x1b0]
  100010538  str     x9, [sp, #0x28]
  10001053c  adrp    x26, #0x10041d000
  100010540  ldr     x8, [x8, #0xba8]
  100010544  str     x8, [sp, #0x20]
loc_100010548:
  100010548  str     x21, [sp, #0xa8]
  10001054c  mov     x23, #0
loc_100010550:
  100010550  ldr     x8, [sp, #0x148]
  100010554  ldr     x8, [x8]
  100010558  ldr     x9, [sp, #0xd8]
  10001055c  cmp     x8, x9
  100010560  b.eq    loc_10001056c                            ; if (x8 == x9)
  100010564  ldr     x0, [sp, #0xb0]
  100010568  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self challengeDict] objectForKey:@"weapons"])
loc_10001056c:
  10001056c  ldr     x8, [sp, #0x140]
  100010570  ldr     x22, [x8, x23, lsl #3]
  100010574  ldr     x0, [x26, #0xf70]                        ; class ADInventory
  100010578  mov     x1, x25
  10001057c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100010580  mov     x29, x29
  100010584  bl      _objc_retainAutoreleasedReturnValue
  100010588  mov     x20, x0
  10001058c  mov     x0, x22
  100010590  ldr     x1, [sp, #0xf0]
  100010594  adrp    x2, #0x1003b9000
  100010598  add     x2, x2, #0xdb0                           ; @"name"
  10001059c  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000105a0  mov     x28, x21
  1000105a4  mov     x29, x29
  1000105a8  bl      _objc_retainAutoreleasedReturnValue
  1000105ac  mov     x21, x0
  1000105b0  mov     x0, x20
  1000105b4  ldr     x1, [sp, #0xd0]
  1000105b8  mov     x2, x21
  1000105bc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  1000105c0  mov     x24, x0
  1000105c4  mov     x0, x21
  1000105c8  bl      _objc_release
  1000105cc  mov     x0, x20
  1000105d0  bl      _objc_release
  1000105d4  tbnz    w24, #0, loc_1000108e4                   ; if (([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] & 1))
  1000105d8  adrp    x8, #0x10041d000
  1000105dc  ldr     x0, [x8, #0xfa8]                         ; class ADChallengeBuyWeaponViewController
  1000105e0  ldr     x1, [sp, #0xa0]
  1000105e4  bl      _objc_msgSend                            ; [ADChallengeBuyWeaponViewController alloc]
  1000105e8  mov     x20, x0
  1000105ec  mov     x0, x22
  1000105f0  ldr     x1, [sp, #0xf0]
  1000105f4  adrp    x2, #0x1003b9000
  1000105f8  add     x2, x2, #0xdb0                           ; @"name"
  1000105fc  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100010600  mov     x29, x29
  100010604  bl      _objc_retainAutoreleasedReturnValue
  100010608  mov     x21, x0
  10001060c  mov     x0, x20
  100010610  ldr     x1, [sp, #0x98]
  100010614  mov     x2, x21
  100010618  bl      _objc_msgSend                            ; [[ADChallengeBuyWeaponViewController alloc] initWithweaponName:[x0 objectForKey:@"name"]]
  10001061c  mov     x24, x0
  100010620  mov     x0, x21
  100010624  bl      _objc_release
  100010628  mov     x0, x24
  10001062c  ldr     x1, [sp, #0x90]
  100010630  mov     x2, x19
  100010634  bl      _objc_msgSend                            ; [[[ADChallengeBuyWeaponViewController alloc] initWithweaponName:[x0 objectForKey:@"name"]] setChallengeLockedViewController:self]
  100010638  mov     x0, x19
  10001063c  ldr     x1, [sp, #0x88]
  100010640  bl      _objc_msgSend                            ; [self missingWeaponsView]
  100010644  mov     x29, x29
  100010648  bl      _objc_retainAutoreleasedReturnValue
  10001064c  mov     x20, x0
  100010650  mov     x0, x24
  100010654  ldr     x1, [sp, #0xc8]
  100010658  bl      _objc_msgSend                            ; [[[ADChallengeBuyWeaponViewController alloc] initWithweaponName:[x0 objectForKey:@"name"]] view]
  10001065c  mov     x29, x29
  100010660  bl      _objc_retainAutoreleasedReturnValue
  100010664  mov     x21, x0
  100010668  mov     x0, x20
  10001066c  ldr     x1, [sp, #0x80]
  100010670  mov     x2, x21
  100010674  bl      _objc_msgSend                            ; [[self missingWeaponsView] addSubview:[[[ADChallengeBuyWeaponViewController alloc] initWithweaponName:[x0 objectForKey:@"name"]] view]]
  100010678  mov     x0, x21
  10001067c  bl      _objc_release
  100010680  mov     x0, x20
  100010684  bl      _objc_release
  100010688  ldr     x0, [x19, x27]                           ; x0 = self->missingWeapons
  10001068c  ldr     x1, [sp, #0x78]
  100010690  mov     x2, x24
  100010694  bl      _objc_msgSend                            ; [self->missingWeapons addObject:[[ADChallengeBuyWeaponViewController alloc] initWithweaponName:[x0 objectForKey:@"name"]]]
  100010698  mov     x0, x24
  10001069c  ldr     x1, [sp, #0xc8]
  1000106a0  bl      _objc_msgSend                            ; [[[ADChallengeBuyWeaponViewController alloc] initWithweaponName:[x0 objectForKey:@"name"]] view]
  1000106a4  mov     x29, x29
  1000106a8  bl      _objc_retainAutoreleasedReturnValue
  1000106ac  mov     x20, x0
  1000106b0  ldr     x1, [sp, #0x70]
  1000106b4  bl      _objc_msgSend                            ; [[[[ADChallengeBuyWeaponViewController alloc] initWithweaponName:[x0 objectForKey:@"name"]] view] frame]
  1000106b8  mov     v8.16b, v2.16b
  1000106bc  mov     x0, x20
  1000106c0  bl      _objc_release
  1000106c4  mov     x0, x19
  1000106c8  ldr     x1, [sp, #0x68]
  1000106cc  bl      _objc_msgSend                            ; [self mainText]
  1000106d0  str     x24, [sp, #0xb8]
  1000106d4  mov     x29, x29
  1000106d8  bl      _objc_retainAutoreleasedReturnValue
  1000106dc  mov     x25, x0
  1000106e0  adrp    x8, #0x10041d000
  1000106e4  ldr     x24, [x8, #0xf78]                        ; class NSString
  1000106e8  nop
  1000106ec  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000106f0  ldr     x1, [sp, #0x60]
  1000106f4  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000106f8  mov     x29, x29
  1000106fc  bl      _objc_retainAutoreleasedReturnValue
  100010700  mov     x26, x0
  100010704  mov     x0, x22
  100010708  ldr     x1, [sp, #0xf0]
  10001070c  adrp    x2, #0x1003b9000
  100010710  add     x2, x2, #0xdb0                           ; @"name"
  100010714  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100010718  mov     x29, x29
  10001071c  bl      _objc_retainAutoreleasedReturnValue
  100010720  mov     x21, x0
  100010724  mov     x0, x26
  100010728  ldr     x1, [sp, #0x58]
  10001072c  mov     x2, x21
  100010730  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[x0 objectForKey:@"name"]]
  100010734  mov     x29, x29
  100010738  bl      _objc_retainAutoreleasedReturnValue
  10001073c  mov     x20, x0
  100010740  ldr     x1, [sp, #0x50]
  100010744  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[x0 objectForKey:@"name"]] uppercaseString]
  100010748  mov     x28, x27
  10001074c  mov     x29, x29
  100010750  bl      _objc_retainAutoreleasedReturnValue
  100010754  mov     x27, x0
  100010758  str     x27, [sp]
  10001075c  mov     x0, x24
  100010760  ldr     x1, [sp, #0xc0]
  100010764  adrp    x2, #0x1003b9000
  100010768  add     x2, x2, #0xf90                           ; @"YOU NEED A %@ TO PLAY THIS CHALLENGE"
  10001076c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"YOU NEED A %@ TO PLAY THIS CHALLENGE", [[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[x0 objectFor…]
  100010770  mov     x29, x29
  100010774  bl      _objc_retainAutoreleasedReturnValue
  100010778  mov     x24, x0
  10001077c  mov     x0, x25
  100010780  ldr     x1, [sp, #0x48]
  100010784  mov     x2, x24
  100010788  bl      _objc_msgSend                            ; [[self mainText] setText:[NSString stringWithFormat:@"YOU NEED A %@ TO PLAY THIS CHALLENGE", [[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[x0 objectFor…]]
  10001078c  mov     x0, x24
  100010790  bl      _objc_release
  100010794  mov     x0, x27
  100010798  bl      _objc_release
  10001079c  mov     x0, x20
  1000107a0  bl      _objc_release
  1000107a4  mov     x0, x21
  1000107a8  bl      _objc_release
  1000107ac  mov     x0, x26
  1000107b0  bl      _objc_release
  1000107b4  mov     x0, x25
  1000107b8  bl      _objc_release
  1000107bc  mov     x20, x19
  1000107c0  mov     x0, x20
  1000107c4  ldr     x1, [sp, #0x40]
  1000107c8  ldr     x24, [sp, #0xb8]
  1000107cc  bl      _objc_msgSend                            ; [self weaponIcon]
  1000107d0  mov     x8, x28
  1000107d4  ldr     x28, [sp, #0xa8]
  1000107d8  mov     x26, x20
  1000107dc  mov     x19, x8
  1000107e0  mov     x27, x24
  1000107e4  mov     x29, x29
  1000107e8  bl      _objc_retainAutoreleasedReturnValue
  1000107ec  mov     x25, x0
  1000107f0  adrp    x8, #0x10041d000
  1000107f4  ldr     x24, [x8, #0xf10]                        ; class UIImage
  1000107f8  nop
  1000107fc  ldr     x20, [x8, #0xf78]                        ; class NSString
  100010800  mov     x0, x22
  100010804  ldr     x1, [sp, #0xf0]
  100010808  adrp    x2, #0x1003b9000
  10001080c  add     x2, x2, #0xdb0                           ; @"name"
  100010810  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100010814  mov     x29, x29
  100010818  bl      _objc_retainAutoreleasedReturnValue
  10001081c  mov     x21, x0
  100010820  str     x21, [sp]
  100010824  mov     x0, x20
  100010828  ldr     x1, [sp, #0xc0]
  10001082c  adrp    x2, #0x1003b9000
  100010830  add     x2, x2, #0xc10                           ; @"%@_icon"
  100010834  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [x0 objectForKey:@"name"]]
  100010838  mov     x29, x29
  10001083c  bl      _objc_retainAutoreleasedReturnValue
  100010840  mov     x20, x0
  100010844  mov     x0, x24
  100010848  ldr     x1, [sp, #0x38]
  10001084c  mov     x2, x20
  100010850  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [x0 objectForKey:@"name"]]]
  100010854  mov     x29, x29
  100010858  bl      _objc_retainAutoreleasedReturnValue
  10001085c  mov     x22, x0
  100010860  mov     x0, x25
  100010864  ldr     x1, [sp, #0x30]
  100010868  mov     x2, x22
  10001086c  mov     x24, x27
  100010870  bl      _objc_msgSend                            ; [[self weaponIcon] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [x0 objectForKey:@"name"]]]]
  100010874  mov     x0, x22
  100010878  bl      _objc_release
  10001087c  mov     x0, x20
  100010880  bl      _objc_release
  100010884  mov     x0, x21
  100010888  bl      _objc_release
  10001088c  mov     x0, x25
  100010890  bl      _objc_release
  100010894  mov     x20, x26
  100010898  mov     x0, x20
  10001089c  ldr     x1, [sp, #0x28]
  1000108a0  bl      _objc_msgSend                            ; [self armoryButton]
  1000108a4  mov     x27, x19
  1000108a8  mov     x19, x20
  1000108ac  mov     x29, x29
  1000108b0  bl      _objc_retainAutoreleasedReturnValue
  1000108b4  mov     x20, x0
  1000108b8  mov     w2, #0
  1000108bc  ldr     x1, [sp, #0x20]
  1000108c0  bl      _objc_msgSend                            ; [[self armoryButton] setHidden:0]
  1000108c4  fcvt    s0, d8
  1000108c8  str     q0, [sp, #0xe0]
  1000108cc  mov     x0, x20
  1000108d0  bl      _objc_release
  1000108d4  mov     x0, x24
  1000108d8  bl      _objc_release
  1000108dc  ldr     x25, [sp, #0x18]
  1000108e0  adrp    x26, #0x10041d000
loc_1000108e4:
  1000108e4  add     x23, x23, #1
  1000108e8  mov     x21, x28
  1000108ec  cmp     x23, x21
  1000108f0  b.lo    loc_100010550                            ; if ((x23 + 1) <u [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x138] objects:&x29[-0xf8] count:16])
  1000108f4  add     x2, sp, #0x138
  1000108f8  sub     x3, x29, #0xf8
  1000108fc  mov     w4, #0x10
  100010900  ldr     x0, [sp, #0xb0]
  100010904  ldr     x1, [sp, #0x10]
  100010908  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x138] objects:&x29[-0xf8] count:16]
  10001090c  mov     x21, x0
  100010910  cbnz    x21, loc_100010548                       ; if ([[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x138] objects:&x29[-0xf8] count:16] != 0)
  100010914  b       loc_100010920
loc_100010918:
  100010918  movi    v0.16b, #0
  10001091c  str     q0, [sp, #0xe0]
loc_100010920:
  100010920  ldr     x0, [sp, #0xb0]
  100010924  bl      _objc_release
  100010928  adrp    x8, #0x100417000
  10001092c  nop
  100010930  ldr     x1, [x8, #0x1c0]
  100010934  str     x1, [sp, #0xf0]
  100010938  mov     x0, x19
  10001093c  bl      _objc_msgSend                            ; [self missingWeaponsView]
  100010940  mov     x29, x29
  100010944  bl      _objc_retainAutoreleasedReturnValue
  100010948  mov     x22, x0
  10001094c  adrp    x8, #0x100416000
  100010950  nop
  100010954  ldr     x21, [x8, #0xf38]
  100010958  mov     x1, x21
  10001095c  bl      _objc_msgSend                            ; [[self missingWeaponsView] frame]
  100010960  mov     v8.16b, v2.16b
  100010964  ldr     x0, [x19, x27]                           ; x0 = self->missingWeapons
  100010968  adrp    x8, #0x100416000
  10001096c  nop
  100010970  ldr     x23, [x8, #0xe30]
  100010974  mov     x1, x23
  100010978  bl      _objc_msgSend                            ; [self->missingWeapons count]
  10001097c  mov     x24, x0
  100010980  ldr     x0, [x19, x27]                           ; x0 = self->missingWeapons
  100010984  mov     x1, x23
  100010988  bl      _objc_msgSend                            ; [self->missingWeapons count]
  10001098c  mov     x25, x0
  100010990  mov     x0, x22
  100010994  bl      _objc_release
  100010998  stp     xzr, xzr, [sp, #0x128]
  10001099c  stp     xzr, xzr, [sp, #0x118]
  1000109a0  stp     xzr, xzr, [sp, #0x108]
  1000109a4  stp     xzr, xzr, [sp, #0xf8]
  1000109a8  ldr     x0, [x19, x27]                           ; x0 = self->missingWeapons
  1000109ac  bl      _objc_retain
  1000109b0  str     x0, [sp, #0xd8]
  1000109b4  add     x2, sp, #0xf8
  1000109b8  add     x3, sp, #0x178
  1000109bc  mov     w4, #0x10
  1000109c0  ldr     x1, [sp, #0x10]
  1000109c4  bl      _objc_msgSend                            ; [self->missingWeapons countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x178] count:16]
  1000109c8  mov     x23, x0
  1000109cc  cbz     x23, loc_100010afc                       ; if ([self->missingWeapons countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x178] count:16] == 0)
  1000109d0  mov     w8, #0
  1000109d4  ucvtf   s0, x24
  1000109d8  ldr     q2, [sp, #0xe0]
  1000109dc  fmul    s0, s2, s0
  1000109e0  fcvt    d0, s0
  1000109e4  fsub    d0, d8, d0
  1000109e8  add     x9, x25, #1
  1000109ec  ucvtf   d1, x9
  1000109f0  fdiv    d0, d0, d1                               ; t1 = (([[self missingWeaponsView] frame].2 - (s2 * (float)[self->missingWeapons count])) / (float)([self->missingWeapons count] + 1))
  1000109f4  fcvt    s8, d0
  1000109f8  ldr     x9, [sp, #0x108]
  1000109fc  ldr     x28, [x9]
  100010a00  adrp    x9, #0x100416000
  100010a04  nop
  100010a08  ldr     x24, [x9, #0xf18]
  100010a0c  fmov    s0, #0.50000000
  100010a10  fmul    s9, s2, s0
  100010a14  adrp    x9, #0x100417000
  100010a18  add     x9, x9, #0x1f8                           ; &@selector(setCenter:)
  100010a1c  ldr     x25, [x9]
  100010a20  fmov    d10, #0.50000000
loc_100010a24:
  100010a24  mov     x22, #0
  100010a28  ubfx    x20, x8, #0, #0x20
loc_100010a2c:
  100010a2c  ldr     x8, [sp, #0x108]
  100010a30  ldr     x8, [x8]
  100010a34  cmp     x8, x28
  100010a38  b.eq    loc_100010a44                            ; if (x8 == x28)
  100010a3c  ldr     x0, [sp, #0xd8]
  100010a40  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->missingWeapons)
loc_100010a44:
  100010a44  ldr     x8, [sp, #0x100]
  100010a48  ldr     x0, [x8, x22, lsl #3]
  100010a4c  mov     x1, x24
  100010a50  bl      _objc_msgSend                            ; [x0 view]
  100010a54  mov     x29, x29
  100010a58  bl      _objc_retainAutoreleasedReturnValue
  100010a5c  mov     x26, x0
  100010a60  mov     x0, x19
  100010a64  ldr     x1, [sp, #0xf0]
  100010a68  bl      _objc_msgSend                            ; [self missingWeaponsView]
  100010a6c  mov     x29, x29
  100010a70  bl      _objc_retainAutoreleasedReturnValue
  100010a74  mov     x27, x0
  100010a78  mov     x1, x21
  100010a7c  bl      _objc_msgSend                            ; [[self missingWeaponsView] frame]
  100010a80  add     x8, x20, x22
  100010a84  add     w9, w20, w22
  100010a88  add     w9, w9, #1
  100010a8c  scvtf   s0, w9
  100010a90  scvtf   s1, w8
  100010a94  fmul    s0, s8, s0
  100010a98  ldr     q2, [sp, #0xe0]
  100010a9c  fmul    s1, s2, s1
  100010aa0  fadd    s0, s1, s0
  100010aa4  fadd    s0, s9, s0
  100010aa8  fcvt    d0, s0
  100010aac  fmul    d1, d3, d10
  100010ab0  mov     x0, x26
  100010ab4  mov     x1, x25
  100010ab8  bl      _objc_msgSend                            ; [[x0 view] setCenter:{((s2 * 0.5) + ((s2 * (float)(x20 + x22)) + (t1 * (float)((w20 + w22) + 1)))), ([[self missingWeaponsView] frame].3 * 0.5)}]
  100010abc  mov     x0, x27
  100010ac0  bl      _objc_release
  100010ac4  mov     x0, x26
  100010ac8  bl      _objc_release
  100010acc  add     x22, x22, #1
  100010ad0  cmp     x22, x23
  100010ad4  b.lo    loc_100010a2c                            ; if ((x22 + 1) <u [self->missingWeapons countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x178] count:16])
  100010ad8  add     x2, sp, #0xf8
  100010adc  add     x3, sp, #0x178
  100010ae0  mov     w4, #0x10
  100010ae4  ldr     x0, [sp, #0xd8]
  100010ae8  ldr     x1, [sp, #0x10]
  100010aec  bl      _objc_msgSend                            ; [self->missingWeapons countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x178] count:16]
  100010af0  mov     x23, x0
  100010af4  add     x8, x20, x22
  100010af8  cbnz    x23, loc_100010a24                       ; if ([self->missingWeapons countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x178] count:16] != 0)
loc_100010afc:
  100010afc  ldr     x0, [sp, #0xd8]
  100010b00  bl      _objc_release
  100010b04  ldur    x8, [x29, #-0x78]
  100010b08  adrp    x9, #0x1003b0000
  100010b0c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100010b10  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100010b14  sub     x8, x9, x8
  100010b18  cbnz    x8, loc_100010b44                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100010b1c  sub     sp, x29, #0x70
  100010b20  ldp     x29, x30, [sp, #0x70]
  100010b24  ldp     x20, x19, [sp, #0x60]
  100010b28  ldp     x22, x21, [sp, #0x50]
  100010b2c  ldp     x24, x23, [sp, #0x40]
  100010b30  ldp     x26, x25, [sp, #0x30]
  100010b34  ldp     x28, x27, [sp, #0x20]
  100010b38  ldp     d9, d8, [sp, #0x10]
  100010b3c  ldp     d11, d10, [sp], #0x80
  100010b40  ret
loc_100010b44:
  100010b44  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100010b48  mov     x19, x0
  100010b4c  b       loc_100010c80
loc_100010b50:
  100010b50  mov     x19, x0
  100010b54  b       loc_100010c88
  100010b58  mov     x19, x0
  100010b5c  mov     x0, x27
  100010b60  bl      _objc_release
  100010b64  b       loc_100010b74
loc_100010b68:
  100010b68  mov     x19, x0
  100010b6c  b       loc_100010b7c
  100010b70  mov     x19, x0
loc_100010b74:
  100010b74  mov     x0, x26
  100010b78  bl      _objc_release
loc_100010b7c:
  100010b7c  ldr     x0, [sp, #0xd8]
  100010b80  b       loc_100010c8c
  100010b84  mov     x19, x0
  100010b88  b       loc_100010b98
  100010b8c  mov     x19, x0
  100010b90  mov     x0, x21
  100010b94  bl      _objc_release
loc_100010b98:
  100010b98  mov     x0, x20
  100010b9c  b       loc_100010c84
  100010ba0  mov     x19, x0
  100010ba4  mov     x0, x21
  100010ba8  b       loc_100010c84
  100010bac  b       loc_100010c74
  100010bb0  mov     x19, x0
  100010bb4  mov     x0, x21
  100010bb8  bl      _objc_release
  100010bbc  b       loc_100010c78
  100010bc0  b       loc_100010c74
  100010bc4  mov     x19, x0
  100010bc8  ldr     x24, [sp, #0xb8]
  100010bcc  b       loc_100010c6c
  100010bd0  mov     x19, x0
  100010bd4  ldr     x24, [sp, #0xb8]
  100010bd8  b       loc_100010c24
  100010bdc  mov     x19, x0
  100010be0  ldr     x24, [sp, #0xb8]
  100010be4  b       loc_100010c1c
  100010be8  mov     x19, x0
  100010bec  ldr     x24, [sp, #0xb8]
  100010bf0  b       loc_100010c14
  100010bf4  mov     x19, x0
  100010bf8  b       loc_100010c08
  100010bfc  mov     x19, x0
  100010c00  mov     x0, x24
  100010c04  bl      _objc_release
loc_100010c08:
  100010c08  ldr     x24, [sp, #0xb8]
  100010c0c  mov     x0, x27
  100010c10  bl      _objc_release
loc_100010c14:
  100010c14  mov     x0, x20
  100010c18  bl      _objc_release
loc_100010c1c:
  100010c1c  mov     x0, x21
  100010c20  bl      _objc_release
loc_100010c24:
  100010c24  mov     x0, x26
  100010c28  b       loc_100010c68
  100010c2c  mov     x19, x0
  100010c30  mov     x24, x27
  100010c34  b       loc_100010c6c
  100010c38  mov     x19, x0
  100010c3c  mov     x24, x27
  100010c40  b       loc_100010c64
  100010c44  mov     x19, x0
  100010c48  mov     x24, x27
  100010c4c  b       loc_100010c5c
  100010c50  mov     x19, x0
  100010c54  mov     x0, x22
  100010c58  bl      _objc_release
loc_100010c5c:
  100010c5c  mov     x0, x20
  100010c60  bl      _objc_release
loc_100010c64:
  100010c64  mov     x0, x21
loc_100010c68:
  100010c68  bl      _objc_release
loc_100010c6c:
  100010c6c  mov     x0, x25
  100010c70  b       loc_100010c7c
loc_100010c74:
  100010c74  mov     x19, x0
loc_100010c78:
  100010c78  mov     x0, x20
loc_100010c7c:
  100010c7c  bl      _objc_release
loc_100010c80:
  100010c80  mov     x0, x24
loc_100010c84:
  100010c84  bl      _objc_release
loc_100010c88:
  100010c88  ldr     x0, [sp, #0xb0]
loc_100010c8c:
  100010c8c  bl      _objc_release
  100010c90  mov     x0, x19
  100010c94  bl      __Unwind_Resume                          ; Unwind_Resume()
  100010c98  b       loc_100010b50
  100010c9c  b       loc_100010b68
  100010ca0  mov     x19, x0
  100010ca4  mov     x0, x22
  100010ca8  b       loc_100010c8c
  100010cac  mov     x19, x0
  100010cb0  b       loc_100010cd0
  100010cb4  b       loc_100010b50
  100010cb8  b       loc_100010b68
  100010cbc  mov     x19, x0
  100010cc0  b       loc_100010cd0
  100010cc4  mov     x19, x0
  100010cc8  mov     x0, x21
  100010ccc  bl      _objc_release
loc_100010cd0:
  100010cd0  mov     x0, x20
  100010cd4  b       loc_100010c8c

; ======================================================================
; -[ADChallengeLockedViewController armoryButtonTouched:]
; address 0x100010cd8  size 852  kind objc
; ======================================================================
  100010cd8  stp     x28, x27, [sp, #-0x60]!
  100010cdc  stp     x26, x25, [sp, #0x10]
  100010ce0  stp     x24, x23, [sp, #0x20]
  100010ce4  stp     x22, x21, [sp, #0x30]
  100010ce8  stp     x20, x19, [sp, #0x40]
  100010cec  stp     x29, x30, [sp, #0x50]
  100010cf0  add     x29, sp, #0x50
  100010cf4  sub     sp, sp, #0x100
  100010cf8  mov     x19, x0
  100010cfc  adrp    x8, #0x1003b0000
  100010d00  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100010d04  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100010d08  stur    x8, [x29, #-0x58]
  100010d0c  mov     x0, x2
  100010d10  bl      _objc_retain
  100010d14  mov     x22, x0
  100010d18  adrp    x20, #0x1003b9000
  100010d1c  add     x20, x20, #0x870                         ; @""
  100010d20  mov     x0, x20
  100010d24  bl      _objc_retain
  100010d28  stp     xzr, xzr, [sp, #0x68]
  100010d2c  stp     xzr, xzr, [sp, #0x58]
  100010d30  stp     xzr, xzr, [sp, #0x48]
  100010d34  stp     xzr, xzr, [sp, #0x38]
  100010d38  adrp    x8, #0x100417000
  100010d3c  nop
  100010d40  ldr     x1, [x8, #0x150]
  100010d44  mov     x0, x19
  100010d48  bl      _objc_msgSend                            ; [self challengeDict]
  100010d4c  mov     x29, x29
  100010d50  bl      _objc_retainAutoreleasedReturnValue
  100010d54  mov     x20, x0
  100010d58  adrp    x8, #0x100417000
  100010d5c  nop
  100010d60  ldr     x23, [x8, #0x40]
  100010d64  adrp    x2, #0x1003b9000
  100010d68  add     x2, x2, #0xf70                           ; @"weapons"
  100010d6c  mov     x1, x23
  100010d70  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"weapons"]
  100010d74  mov     x29, x29
  100010d78  bl      _objc_retainAutoreleasedReturnValue
  100010d7c  mov     x21, x0
  100010d80  str     x21, [sp, #0x28]
  100010d84  mov     x0, x20
  100010d88  bl      _objc_release
  100010d8c  adrp    x8, #0x100416000
  100010d90  nop
  100010d94  ldr     x1, [x8, #0xe00]
  100010d98  str     x1, [sp, #0x20]
  100010d9c  add     x2, sp, #0x38
  100010da0  add     x3, sp, #0x78
  100010da4  mov     w4, #0x10
  100010da8  mov     x0, x21
  100010dac  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100010db0  mov     x26, x0
  100010db4  stp     x19, x22, [sp, #0x10]
  100010db8  cbz     x26, loc_100010ec8                       ; if ([[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  100010dbc  ldr     x8, [sp, #0x48]
  100010dc0  ldr     x20, [x8]
  100010dc4  adrp    x8, #0x100416000
  100010dc8  nop
  100010dcc  ldr     x25, [x8, #0xec8]
  100010dd0  adrp    x8, #0x100417000
  100010dd4  nop
  100010dd8  ldr     x27, [x8, #0x1d8]
  100010ddc  adrp    x8, #0x1003b9000
  100010de0  add     x8, x8, #0x870                           ; @""
  100010de4  str     x8, [sp, #0x30]
loc_100010de8:
  100010de8  mov     x28, #0
loc_100010dec:
  100010dec  ldr     x8, [sp, #0x48]
  100010df0  ldr     x8, [x8]
  100010df4  cmp     x8, x20
  100010df8  b.eq    loc_100010e04                            ; if (x8 == x20)
  100010dfc  ldr     x0, [sp, #0x28]
  100010e00  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self challengeDict] objectForKey:@"weapons"])
loc_100010e04:
  100010e04  ldr     x8, [sp, #0x40]
  100010e08  ldr     x19, [x8, x28, lsl #3]
  100010e0c  adrp    x8, #0x10041d000
  100010e10  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100010e14  mov     x1, x25
  100010e18  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100010e1c  mov     x29, x29
  100010e20  bl      _objc_retainAutoreleasedReturnValue
  100010e24  mov     x21, x0
  100010e28  mov     x0, x19
  100010e2c  mov     x1, x23
  100010e30  adrp    x2, #0x1003b9000
  100010e34  add     x2, x2, #0xdb0                           ; @"name"
  100010e38  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100010e3c  mov     x29, x29
  100010e40  bl      _objc_retainAutoreleasedReturnValue
  100010e44  mov     x24, x0
  100010e48  mov     x0, x21
  100010e4c  mov     x1, x27
  100010e50  mov     x2, x24
  100010e54  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  100010e58  mov     x22, x0
  100010e5c  mov     x0, x24
  100010e60  bl      _objc_release
  100010e64  mov     x0, x21
  100010e68  bl      _objc_release
  100010e6c  tbnz    w22, #0, loc_100010e9c                   ; if (([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] & 1))
  100010e70  mov     x0, x19
  100010e74  mov     x1, x23
  100010e78  adrp    x2, #0x1003b9000
  100010e7c  add     x2, x2, #0xdb0                           ; @"name"
  100010e80  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100010e84  mov     x29, x29
  100010e88  bl      _objc_retainAutoreleasedReturnValue
  100010e8c  mov     x19, x0
  100010e90  ldr     x0, [sp, #0x30]
  100010e94  bl      _objc_release
  100010e98  str     x19, [sp, #0x30]
loc_100010e9c:
  100010e9c  add     x28, x28, #1
  100010ea0  cmp     x28, x26
  100010ea4  b.lo    loc_100010dec                            ; if ((x28 + 1) <u [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  100010ea8  add     x2, sp, #0x38
  100010eac  add     x3, sp, #0x78
  100010eb0  mov     w4, #0x10
  100010eb4  ldp     x1, x0, [sp, #0x20]
  100010eb8  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100010ebc  mov     x26, x0
  100010ec0  cbnz    x26, loc_100010de8                       ; if ([[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
  100010ec4  b       loc_100010ed4
loc_100010ec8:
  100010ec8  adrp    x8, #0x1003b9000
  100010ecc  add     x8, x8, #0x870                           ; @""
  100010ed0  str     x8, [sp, #0x30]
loc_100010ed4:
  100010ed4  ldr     x0, [sp, #0x28]
  100010ed8  bl      _objc_release
  100010edc  adrp    x8, #0x10041d000
  100010ee0  ldr     x0, [x8, #0xfb0]                         ; class ADArmoryViewController
  100010ee4  adrp    x8, #0x100416000
  100010ee8  nop
  100010eec  ldr     x1, [x8, #0xac8]
  100010ef0  ldr     x22, [sp, #0x18]
  100010ef4  ldr     x20, [sp, #0x30]
  100010ef8  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  100010efc  ldr     x19, [sp, #0x10]
  100010f00  adrp    x8, #0x100417000
  100010f04  nop
  100010f08  ldr     x1, [x8, #0x200]
  100010f0c  mov     x3, #0
  100010f10  adrp    x2, #0x1003b9000
  100010f14  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  100010f18  mov     x4, x20
  100010f1c  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 weapon:x4]
  100010f20  mov     x21, x0
  100010f24  adrp    x8, #0x100417000
  100010f28  nop
  100010f2c  ldr     x1, [x8, #0x208]
  100010f30  mov     w3, #0
  100010f34  mov     x4, #0
  100010f38  mov     x0, x19
  100010f3c  mov     x2, x21
  100010f40  bl      _objc_msgSend                            ; [self presentViewController:[[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 weapon:x4] animated:0 completion:0]
  100010f44  mov     x0, x21
  100010f48  bl      _objc_release
  100010f4c  mov     x0, x20
  100010f50  bl      _objc_release
  100010f54  mov     x0, x22
  100010f58  bl      _objc_release
  100010f5c  ldur    x8, [x29, #-0x58]
  100010f60  adrp    x9, #0x1003b0000
  100010f64  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100010f68  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100010f6c  sub     x8, x9, x8
  100010f70  cbnz    x8, loc_100010f94                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100010f74  sub     sp, x29, #0x50
  100010f78  ldp     x29, x30, [sp, #0x50]
  100010f7c  ldp     x20, x19, [sp, #0x40]
  100010f80  ldp     x22, x21, [sp, #0x30]
  100010f84  ldp     x24, x23, [sp, #0x20]
  100010f88  ldp     x26, x25, [sp, #0x10]
  100010f8c  ldp     x28, x27, [sp], #0x60
  100010f90  ret
loc_100010f94:
  100010f94  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100010f98  mov     x19, x0
  100010f9c  b       loc_100010fbc
  100010fa0  mov     x19, x0
  100010fa4  b       loc_100010fb4
  100010fa8  mov     x19, x0
  100010fac  mov     x0, x24
  100010fb0  bl      _objc_release
loc_100010fb4:
  100010fb4  mov     x0, x21
  100010fb8  bl      _objc_release
loc_100010fbc:
  100010fbc  ldr     x22, [sp, #0x18]
  100010fc0  ldp     x0, x20, [sp, #0x28]
loc_100010fc4:
  100010fc4  bl      _objc_release
loc_100010fc8:
  100010fc8  mov     x0, x20
  100010fcc  bl      _objc_release
  100010fd0  mov     x0, x22
  100010fd4  bl      _objc_release
  100010fd8  mov     x0, x19
  100010fdc  bl      __Unwind_Resume                          ; Unwind_Resume()
  100010fe0  mov     x19, x0
  100010fe4  b       loc_100010fbc
  100010fe8  mov     x19, x0
  100010fec  b       loc_100010fc8
  100010ff0  mov     x19, x0
  100010ff4  mov     x0, x20
  100010ff8  bl      _objc_release
  100010ffc  adrp    x20, #0x1003b9000
  100011000  add     x20, x20, #0x870                         ; @""
  100011004  b       loc_100010fc8
  100011008  str     x22, [sp, #0x18]
  10001100c  mov     x19, x0
  100011010  adrp    x8, #0x1003b9000
  100011014  add     x8, x8, #0x870                           ; @""
  100011018  str     x8, [sp, #0x30]
  10001101c  b       loc_100010fbc
  100011020  mov     x19, x0
  100011024  mov     x0, x21
  100011028  b       loc_100010fc4

; ======================================================================
; -[ADChallengeLockedViewController showPurchaseConfirmation:]
; address 0x10001102c  size 624  kind objc
; ======================================================================
  10001102c  stp     x28, x27, [sp, #-0x60]!
  100011030  stp     x26, x25, [sp, #0x10]
  100011034  stp     x24, x23, [sp, #0x20]
  100011038  stp     x22, x21, [sp, #0x30]
  10001103c  stp     x20, x19, [sp, #0x40]
  100011040  stp     x29, x30, [sp, #0x50]
  100011044  add     x29, sp, #0x50
  100011048  sub     sp, sp, #0x100
  10001104c  mov     x20, x0
  100011050  str     x20, [sp, #0x28]
  100011054  adrp    x8, #0x1003b0000
  100011058  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10001105c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100011060  stur    x8, [x29, #-0x58]
  100011064  mov     x0, x2
  100011068  bl      _objc_retain
  10001106c  mov     x19, x0
  100011070  stp     xzr, xzr, [sp, #0x68]
  100011074  stp     xzr, xzr, [sp, #0x58]
  100011078  stp     xzr, xzr, [sp, #0x48]
  10001107c  stp     xzr, xzr, [sp, #0x38]
  100011080  adrp    x8, #0x10041f000
  100011084  ldrsw   x8, [x8, #0x50c]                         ; ivar offset ADChallengeLockedViewController.missingWeapons (+0x140)
  100011088  ldr     x0, [x20, x8]                            ; x0 = self->missingWeapons
  10001108c  bl      _objc_retain
  100011090  str     x0, [sp, #0x30]
  100011094  adrp    x8, #0x100416000
  100011098  nop
  10001109c  ldr     x1, [x8, #0xe00]
  1000110a0  str     x1, [sp, #8]
  1000110a4  add     x2, sp, #0x38
  1000110a8  add     x3, sp, #0x78
  1000110ac  mov     w4, #0x10
  1000110b0  bl      _objc_msgSend                            ; [self->missingWeapons countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000110b4  mov     x23, x0
  1000110b8  cbz     x23, loc_100011204                       ; if ([self->missingWeapons countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  1000110bc  ldr     x8, [sp, #0x48]
  1000110c0  adrp    x9, #0x100417000
  1000110c4  nop
  1000110c8  ldr     x27, [x8]
  1000110cc  ldr     x24, [x9, #0x210]
  1000110d0  adrp    x8, #0x100417000
  1000110d4  nop
  1000110d8  adrp    x9, #0x100416000
  1000110dc  nop
  1000110e0  ldr     x25, [x8, #0x218]
  1000110e4  ldr     x8, [x9, #0xac8]
  1000110e8  str     x8, [sp, #0x20]
  1000110ec  adrp    x8, #0x100417000
  1000110f0  nop
  1000110f4  adrp    x9, #0x100416000
  1000110f8  add     x9, x9, #0xd80                           ; &@selector(initWithDictionary:)
  1000110fc  ldr     x8, [x8, #0x220]
  100011100  str     x8, [sp, #0x18]
  100011104  ldr     x8, [x9]
  100011108  str     x8, [sp, #0x10]
  10001110c  adrp    x8, #0x100417000
  100011110  add     x8, x8, #0x208                           ; &@selector(presentViewController:animated:completion:)
  100011114  ldr     x22, [x8]
loc_100011118:
  100011118  mov     x28, #0
loc_10001111c:
  10001111c  ldr     x8, [sp, #0x48]
  100011120  ldr     x8, [x8]
  100011124  cmp     x8, x27
  100011128  b.eq    loc_100011134                            ; if (x8 == x27)
  10001112c  ldr     x0, [sp, #0x30]
  100011130  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->missingWeapons)
loc_100011134:
  100011134  ldr     x8, [sp, #0x40]
  100011138  ldr     x20, [x8, x28, lsl #3]
  10001113c  mov     x0, x20
  100011140  mov     x1, x24
  100011144  bl      _objc_msgSend                            ; [x0 coinButton]
  100011148  mov     x29, x29
  10001114c  bl      _objc_retainAutoreleasedReturnValue
  100011150  mov     x21, x0
  100011154  mov     x1, x25
  100011158  mov     x2, x19
  10001115c  bl      _objc_msgSend                            ; [[x0 coinButton] isEqual:arg1]
  100011160  mov     x26, x0
  100011164  mov     x0, x21
  100011168  bl      _objc_release
  10001116c  cbz     w26, loc_1000111d8                       ; if ([[x0 coinButton] isEqual:arg1] == 0)
  100011170  adrp    x8, #0x10041d000
  100011174  ldr     x0, [x8, #0xfb8]                         ; class ADPurchaseConfirmationViewController
  100011178  ldr     x1, [sp, #0x20]
  10001117c  bl      _objc_msgSend                            ; [ADPurchaseConfirmationViewController alloc]
  100011180  mov     x21, x0
  100011184  mov     x0, x20
  100011188  ldr     x1, [sp, #0x18]
  10001118c  bl      _objc_msgSend                            ; [x0 weaponDict]
  100011190  mov     x29, x29
  100011194  bl      _objc_retainAutoreleasedReturnValue
  100011198  mov     x26, x0
  10001119c  mov     x0, x21
  1000111a0  ldr     x1, [sp, #0x10]
  1000111a4  mov     x2, x26
  1000111a8  bl      _objc_msgSend                            ; [[ADPurchaseConfirmationViewController alloc] initWithDictionary:[x0 weaponDict]]
  1000111ac  mov     x20, x0
  1000111b0  mov     x0, x26
  1000111b4  bl      _objc_release
  1000111b8  mov     w3, #0
  1000111bc  mov     x4, #0
  1000111c0  ldr     x0, [sp, #0x28]
  1000111c4  mov     x1, x22
  1000111c8  mov     x2, x20
  1000111cc  bl      _objc_msgSend                            ; [self presentViewController:[[ADPurchaseConfirmationViewController alloc] initWithDictionary:[x0 weaponDict]] animated:0 completion:0]
  1000111d0  mov     x0, x20
  1000111d4  bl      _objc_release
loc_1000111d8:
  1000111d8  add     x28, x28, #1
  1000111dc  cmp     x28, x23
  1000111e0  b.lo    loc_10001111c                            ; if ((x28 + 1) <u [self->missingWeapons countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  1000111e4  add     x2, sp, #0x38
  1000111e8  add     x3, sp, #0x78
  1000111ec  mov     w4, #0x10
  1000111f0  ldr     x0, [sp, #0x30]
  1000111f4  ldr     x1, [sp, #8]
  1000111f8  bl      _objc_msgSend                            ; [self->missingWeapons countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000111fc  mov     x23, x0
  100011200  cbnz    x23, loc_100011118                       ; if ([self->missingWeapons countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_100011204:
  100011204  ldr     x0, [sp, #0x30]
  100011208  bl      _objc_release
  10001120c  mov     x0, x19
  100011210  bl      _objc_release
  100011214  ldur    x8, [x29, #-0x58]
  100011218  adrp    x9, #0x1003b0000
  10001121c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100011220  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100011224  sub     x8, x9, x8
  100011228  cbnz    x8, loc_10001124c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001122c  sub     sp, x29, #0x50
  100011230  ldp     x29, x30, [sp, #0x50]
  100011234  ldp     x20, x19, [sp, #0x40]
  100011238  ldp     x22, x21, [sp, #0x30]
  10001123c  ldp     x24, x23, [sp, #0x20]
  100011240  ldp     x26, x25, [sp, #0x10]
  100011244  ldp     x28, x27, [sp], #0x60
  100011248  ret
loc_10001124c:
  10001124c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100011250:
  100011250  mov     x22, x0
  100011254  b       loc_10001127c
  100011258  mov     x22, x0
  10001125c  mov     x0, x21
  100011260  b       loc_100011278
  100011264  mov     x22, x0
  100011268  mov     x0, x26
  10001126c  b       loc_100011278
  100011270  mov     x22, x0
  100011274  mov     x0, x20
loc_100011278:
  100011278  bl      _objc_release
loc_10001127c:
  10001127c  ldr     x0, [sp, #0x30]
  100011280  bl      _objc_release
  100011284  mov     x0, x19
  100011288  bl      _objc_release
  10001128c  mov     x0, x22
  100011290  bl      __Unwind_Resume                          ; Unwind_Resume()
  100011294  b       loc_100011250
  100011298  b       loc_100011250

; ======================================================================
; -[ADChallengeLockedViewController showWeaponInArmory:]
; address 0x10001129c  size 188  kind objc
; ======================================================================
  10001129c  stp     x22, x21, [sp, #-0x30]!
  1000112a0  stp     x20, x19, [sp, #0x10]
  1000112a4  stp     x29, x30, [sp, #0x20]
  1000112a8  add     x29, sp, #0x20
  1000112ac  mov     x20, x0
  1000112b0  mov     x0, x2
  1000112b4  bl      _objc_retain
  1000112b8  mov     x19, x0
  1000112bc  adrp    x8, #0x10041d000
  1000112c0  ldr     x0, [x8, #0xfb0]                         ; class ADArmoryViewController
  1000112c4  adrp    x8, #0x100416000
  1000112c8  nop
  1000112cc  ldr     x1, [x8, #0xac8]
  1000112d0  bl      _objc_msgSend                            ; [ADArmoryViewController alloc]
  1000112d4  adrp    x8, #0x100417000
  1000112d8  nop
  1000112dc  ldr     x1, [x8, #0x200]
  1000112e0  mov     x3, #0
  1000112e4  adrp    x2, #0x1003b9000
  1000112e8  add     x2, x2, #0xfb0                           ; @"ADArmoryViewController"
  1000112ec  mov     x4, x19
  1000112f0  bl      _objc_msgSend                            ; [[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 weapon:arg1]
  1000112f4  mov     x21, x0
  1000112f8  adrp    x8, #0x100417000
  1000112fc  nop
  100011300  ldr     x1, [x8, #0x208]
  100011304  mov     w3, #0
  100011308  mov     x4, #0
  10001130c  mov     x0, x20
  100011310  mov     x2, x21
  100011314  bl      _objc_msgSend                            ; [self presentViewController:[[ADArmoryViewController alloc] initWithNibName:@"ADArmoryViewController" bundle:0 weapon:arg1] animated:0 completion:0]
  100011318  mov     x0, x21
  10001131c  bl      _objc_release
  100011320  mov     x0, x19
  100011324  ldp     x29, x30, [sp, #0x20]
  100011328  ldp     x20, x19, [sp, #0x10]
  10001132c  ldp     x22, x21, [sp], #0x30
  100011330  b       _objc_release
  100011334  mov     x20, x0
  100011338  b       loc_100011348
  10001133c  mov     x20, x0
  100011340  mov     x0, x21
  100011344  bl      _objc_release
loc_100011348:
  100011348  mov     x0, x19
  10001134c  bl      _objc_release
  100011350  mov     x0, x20
  100011354  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeLockedViewController challengeDict]
; address 0x100011358  size 16  kind objc
; ======================================================================
  100011358  adrp    x8, #0x10041f000
  10001135c  ldrsw   x8, [x8, #0x510]                         ; ivar offset ADChallengeLockedViewController._challengeDict (+0x148)
  100011360  ldr     x0, [x0, x8]                             ; x0 = self->_challengeDict
  100011364  ret

; ======================================================================
; -[ADChallengeLockedViewController setChallengeDict:]
; address 0x100011368  size 56  kind objc
; ======================================================================
  100011368  stp     x20, x19, [sp, #-0x20]!
  10001136c  stp     x29, x30, [sp, #0x10]
  100011370  add     x29, sp, #0x10
  100011374  mov     x19, x0
  100011378  adrp    x8, #0x10041f000
  10001137c  ldrsw   x20, [x8, #0x510]                        ; ivar offset ADChallengeLockedViewController._challengeDict (+0x148)
  100011380  mov     x0, x2
  100011384  bl      _objc_retain
  100011388  ldr     x8, [x19, x20]                           ; x8 = self->_challengeDict
  10001138c  str     x0, [x19, x20]                           ; self->_challengeDict = arg1
  100011390  mov     x0, x8
  100011394  ldp     x29, x30, [sp, #0x10]
  100011398  ldp     x20, x19, [sp], #0x20
  10001139c  b       _objc_release

; ======================================================================
; -[ADChallengeLockedViewController missingWeaponsView]
; address 0x1000113a0  size 16  kind objc
; ======================================================================
  1000113a0  adrp    x8, #0x10041f000
  1000113a4  ldrsw   x8, [x8, #0x514]                         ; ivar offset ADChallengeLockedViewController._missingWeaponsView (+0x150)
  1000113a8  ldr     x0, [x0, x8]                             ; x0 = self->_missingWeaponsView
  1000113ac  ret

; ======================================================================
; -[ADChallengeLockedViewController setMissingWeaponsView:]
; address 0x1000113b0  size 56  kind objc
; ======================================================================
  1000113b0  stp     x20, x19, [sp, #-0x20]!
  1000113b4  stp     x29, x30, [sp, #0x10]
  1000113b8  add     x29, sp, #0x10
  1000113bc  mov     x19, x0
  1000113c0  adrp    x8, #0x10041f000
  1000113c4  ldrsw   x20, [x8, #0x514]                        ; ivar offset ADChallengeLockedViewController._missingWeaponsView (+0x150)
  1000113c8  mov     x0, x2
  1000113cc  bl      _objc_retain
  1000113d0  ldr     x8, [x19, x20]                           ; x8 = self->_missingWeaponsView
  1000113d4  str     x0, [x19, x20]                           ; self->_missingWeaponsView = arg1
  1000113d8  mov     x0, x8
  1000113dc  ldp     x29, x30, [sp, #0x10]
  1000113e0  ldp     x20, x19, [sp], #0x20
  1000113e4  b       _objc_release

; ======================================================================
; -[ADChallengeLockedViewController mainText]
; address 0x1000113e8  size 16  kind objc
; ======================================================================
  1000113e8  adrp    x8, #0x10041f000
  1000113ec  ldrsw   x8, [x8, #0x518]                         ; ivar offset ADChallengeLockedViewController._mainText (+0x158)
  1000113f0  ldr     x0, [x0, x8]                             ; x0 = self->_mainText
  1000113f4  ret

; ======================================================================
; -[ADChallengeLockedViewController setMainText:]
; address 0x1000113f8  size 56  kind objc
; ======================================================================
  1000113f8  stp     x20, x19, [sp, #-0x20]!
  1000113fc  stp     x29, x30, [sp, #0x10]
  100011400  add     x29, sp, #0x10
  100011404  mov     x19, x0
  100011408  adrp    x8, #0x10041f000
  10001140c  ldrsw   x20, [x8, #0x518]                        ; ivar offset ADChallengeLockedViewController._mainText (+0x158)
  100011410  mov     x0, x2
  100011414  bl      _objc_retain
  100011418  ldr     x8, [x19, x20]                           ; x8 = self->_mainText
  10001141c  str     x0, [x19, x20]                           ; self->_mainText = arg1
  100011420  mov     x0, x8
  100011424  ldp     x29, x30, [sp, #0x10]
  100011428  ldp     x20, x19, [sp], #0x20
  10001142c  b       _objc_release

; ======================================================================
; -[ADChallengeLockedViewController weaponIcon]
; address 0x100011430  size 16  kind objc
; ======================================================================
  100011430  adrp    x8, #0x10041f000
  100011434  ldrsw   x8, [x8, #0x51c]                         ; ivar offset ADChallengeLockedViewController._weaponIcon (+0x160)
  100011438  ldr     x0, [x0, x8]                             ; x0 = self->_weaponIcon
  10001143c  ret

; ======================================================================
; -[ADChallengeLockedViewController setWeaponIcon:]
; address 0x100011440  size 56  kind objc
; ======================================================================
  100011440  stp     x20, x19, [sp, #-0x20]!
  100011444  stp     x29, x30, [sp, #0x10]
  100011448  add     x29, sp, #0x10
  10001144c  mov     x19, x0
  100011450  adrp    x8, #0x10041f000
  100011454  ldrsw   x20, [x8, #0x51c]                        ; ivar offset ADChallengeLockedViewController._weaponIcon (+0x160)
  100011458  mov     x0, x2
  10001145c  bl      _objc_retain
  100011460  ldr     x8, [x19, x20]                           ; x8 = self->_weaponIcon
  100011464  str     x0, [x19, x20]                           ; self->_weaponIcon = arg1
  100011468  mov     x0, x8
  10001146c  ldp     x29, x30, [sp, #0x10]
  100011470  ldp     x20, x19, [sp], #0x20
  100011474  b       _objc_release

; ======================================================================
; -[ADChallengeLockedViewController armoryButton]
; address 0x100011478  size 16  kind objc
; ======================================================================
  100011478  adrp    x8, #0x10041f000
  10001147c  ldrsw   x8, [x8, #0x520]                         ; ivar offset ADChallengeLockedViewController._armoryButton (+0x168)
  100011480  ldr     x0, [x0, x8]                             ; x0 = self->_armoryButton
  100011484  ret

; ======================================================================
; -[ADChallengeLockedViewController setArmoryButton:]
; address 0x100011488  size 56  kind objc
; ======================================================================
  100011488  stp     x20, x19, [sp, #-0x20]!
  10001148c  stp     x29, x30, [sp, #0x10]
  100011490  add     x29, sp, #0x10
  100011494  mov     x19, x0
  100011498  adrp    x8, #0x10041f000
  10001149c  ldrsw   x20, [x8, #0x520]                        ; ivar offset ADChallengeLockedViewController._armoryButton (+0x168)
  1000114a0  mov     x0, x2
  1000114a4  bl      _objc_retain
  1000114a8  ldr     x8, [x19, x20]                           ; x8 = self->_armoryButton
  1000114ac  str     x0, [x19, x20]                           ; self->_armoryButton = arg1
  1000114b0  mov     x0, x8
  1000114b4  ldp     x29, x30, [sp, #0x10]
  1000114b8  ldp     x20, x19, [sp], #0x20
  1000114bc  b       _objc_release

; ======================================================================
; -[ADChallengeLockedViewController .cxx_destruct]
; address 0x1000114c0  size 144  kind objc
; ======================================================================
  1000114c0  stp     x20, x19, [sp, #-0x20]!
  1000114c4  stp     x29, x30, [sp, #0x10]
  1000114c8  add     x29, sp, #0x10
  1000114cc  mov     x19, x0
  1000114d0  adrp    x8, #0x10041f000
  1000114d4  ldrsw   x8, [x8, #0x520]                         ; ivar offset ADChallengeLockedViewController._armoryButton (+0x168)
  1000114d8  add     x0, x19, x8
  1000114dc  mov     x1, #0
  1000114e0  bl      _objc_storeStrong
  1000114e4  adrp    x8, #0x10041f000
  1000114e8  ldrsw   x8, [x8, #0x51c]                         ; ivar offset ADChallengeLockedViewController._weaponIcon (+0x160)
  1000114ec  add     x0, x19, x8
  1000114f0  mov     x1, #0
  1000114f4  bl      _objc_storeStrong
  1000114f8  adrp    x8, #0x10041f000
  1000114fc  ldrsw   x8, [x8, #0x518]                         ; ivar offset ADChallengeLockedViewController._mainText (+0x158)
  100011500  add     x0, x19, x8
  100011504  mov     x1, #0
  100011508  bl      _objc_storeStrong
  10001150c  adrp    x8, #0x10041f000
  100011510  ldrsw   x8, [x8, #0x514]                         ; ivar offset ADChallengeLockedViewController._missingWeaponsView (+0x150)
  100011514  add     x0, x19, x8
  100011518  mov     x1, #0
  10001151c  bl      _objc_storeStrong
  100011520  adrp    x8, #0x10041f000
  100011524  ldrsw   x8, [x8, #0x510]                         ; ivar offset ADChallengeLockedViewController._challengeDict (+0x148)
  100011528  add     x0, x19, x8
  10001152c  mov     x1, #0
  100011530  bl      _objc_storeStrong
  100011534  mov     x1, #0
  100011538  adrp    x8, #0x10041f000
  10001153c  ldrsw   x8, [x8, #0x50c]                         ; ivar offset ADChallengeLockedViewController.missingWeapons (+0x140)
  100011540  add     x0, x19, x8
  100011544  ldp     x29, x30, [sp, #0x10]
  100011548  ldp     x20, x19, [sp], #0x20
  10001154c  b       _objc_storeStrong
