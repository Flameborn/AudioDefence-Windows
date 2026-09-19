// unit ADChallengeIconViewController — 21 functions
//   0x10007fcc4     180  -[ADChallengeIconViewController initWithDictionary:]
//   0x10007fd78     780  -[ADChallengeIconViewController viewDidLoad]
//   0x100080084    1248  -[ADChallengeIconViewController initStars]
//   0x100080564     124  -[ADChallengeIconViewController initLock]
//   0x1000805e0     252  -[ADChallengeIconViewController isLocked]
//   0x1000806dc      60  -[ADChallengeIconViewController didReceiveMemoryWarning]
//   0x100080718      16  -[ADChallengeIconViewController star_1]
//   0x100080728      56  -[ADChallengeIconViewController setStar_1:]
//   0x100080760      16  -[ADChallengeIconViewController star_2]
//   0x100080770      56  -[ADChallengeIconViewController setStar_2:]
//   0x1000807a8      16  -[ADChallengeIconViewController star_3]
//   0x1000807b8      56  -[ADChallengeIconViewController setStar_3:]
//   0x1000807f0      16  -[ADChallengeIconViewController challengeLock]
//   0x100080800      56  -[ADChallengeIconViewController setChallengeLock:]
//   0x100080838      16  -[ADChallengeIconViewController challengeDict]
//   0x100080848      56  -[ADChallengeIconViewController setChallengeDict:]
//   0x100080880      16  -[ADChallengeIconViewController challengeTitle]
//   0x100080890      56  -[ADChallengeIconViewController setChallengeTitle:]
//   0x1000808c8      32  -[ADChallengeIconViewController warning_icon]
//   0x1000808e8      20  -[ADChallengeIconViewController setWarning_icon:]
//   0x1000808fc     160  -[ADChallengeIconViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeIconViewController initWithDictionary:]
; address 0x10007fcc4  size 180  kind objc
; ======================================================================
  10007fcc4  stp     x22, x21, [sp, #-0x30]!
  10007fcc8  stp     x20, x19, [sp, #0x10]
  10007fccc  stp     x29, x30, [sp, #0x20]
  10007fcd0  add     x29, sp, #0x20
  10007fcd4  sub     sp, sp, #0x10
  10007fcd8  mov     x20, x0
  10007fcdc  mov     x0, x2
  10007fce0  bl      _objc_retain
  10007fce4  mov     x19, x0
  10007fce8  str     x20, [sp]
  10007fcec  adrp    x8, #0x10041e000
  10007fcf0  ldr     x8, [x8, #0xe40]
  10007fcf4  str     x8, [sp, #8]
  10007fcf8  adrp    x8, #0x100416000
  10007fcfc  nop
  10007fd00  ldr     x1, [x8, #0xb40]
  10007fd04  mov     x20, #0
  10007fd08  mov     x0, sp
  10007fd0c  mov     x2, #0
  10007fd10  mov     x3, #0
  10007fd14  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  10007fd18  mov     x21, x0
  10007fd1c  cbz     x21, loc_10007fd3c                       ; if (self == 0)
  10007fd20  mov     x20, x21
  10007fd24  adrp    x8, #0x100417000
  10007fd28  nop
  10007fd2c  ldr     x1, [x8, #0x140]
  10007fd30  mov     x0, x21
  10007fd34  mov     x2, x19
  10007fd38  bl      _objc_msgSend                            ; [self setChallengeDict:arg1]
loc_10007fd3c:
  10007fd3c  mov     x0, x19
  10007fd40  bl      _objc_release
  10007fd44  mov     x0, x21
  10007fd48  sub     sp, x29, #0x20
  10007fd4c  ldp     x29, x30, [sp, #0x20]
  10007fd50  ldp     x20, x19, [sp, #0x10]
  10007fd54  ldp     x22, x21, [sp], #0x30
  10007fd58  ret
  10007fd5c  mov     x21, x0
  10007fd60  mov     x0, x19
  10007fd64  bl      _objc_release
  10007fd68  mov     x0, x20
  10007fd6c  bl      _objc_release
  10007fd70  mov     x0, x21
  10007fd74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeIconViewController viewDidLoad]
; address 0x10007fd78  size 780  kind objc
; ======================================================================
  10007fd78  stp     x26, x25, [sp, #-0x50]!
  10007fd7c  stp     x24, x23, [sp, #0x10]
  10007fd80  stp     x22, x21, [sp, #0x20]
  10007fd84  stp     x20, x19, [sp, #0x30]
  10007fd88  stp     x29, x30, [sp, #0x40]
  10007fd8c  add     x29, sp, #0x40
  10007fd90  sub     sp, sp, #0x10
  10007fd94  mov     x19, x0
  10007fd98  str     x19, [sp]
  10007fd9c  adrp    x8, #0x10041e000
  10007fda0  ldr     x8, [x8, #0xe40]
  10007fda4  str     x8, [sp, #8]
  10007fda8  adrp    x8, #0x100416000
  10007fdac  nop
  10007fdb0  ldr     x1, [x8, #0xb48]
  10007fdb4  mov     x0, sp
  10007fdb8  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10007fdbc  adrp    x8, #0x10041d000
  10007fdc0  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10007fdc4  adrp    x8, #0x100416000
  10007fdc8  nop
  10007fdcc  ldr     x1, [x8, #0xdf0]
  10007fdd0  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10007fdd4  mov     x29, x29
  10007fdd8  bl      _objc_retainAutoreleasedReturnValue
  10007fddc  mov     x22, x0
  10007fde0  adrp    x8, #0x100417000
  10007fde4  nop
  10007fde8  ldr     x20, [x8, #0x150]
  10007fdec  mov     x0, x19
  10007fdf0  mov     x1, x20
  10007fdf4  bl      _objc_msgSend                            ; [self challengeDict]
  10007fdf8  mov     x29, x29
  10007fdfc  bl      _objc_retainAutoreleasedReturnValue
  10007fe00  mov     x23, x0
  10007fe04  adrp    x8, #0x100417000
  10007fe08  nop
  10007fe0c  ldr     x21, [x8, #0x40]
  10007fe10  adrp    x2, #0x1003b9000
  10007fe14  add     x2, x2, #0xef0                           ; @"challenge_id"
  10007fe18  mov     x1, x21
  10007fe1c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  10007fe20  mov     x29, x29
  10007fe24  bl      _objc_retainAutoreleasedReturnValue
  10007fe28  mov     x24, x0
  10007fe2c  adrp    x8, #0x100419000
  10007fe30  nop
  10007fe34  ldr     x1, [x8, #0xcc0]
  10007fe38  mov     x0, x22
  10007fe3c  mov     x2, x24
  10007fe40  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] needsWeaponToCompleteChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10007fe44  mov     x25, x0
  10007fe48  mov     x0, x24
  10007fe4c  bl      _objc_release
  10007fe50  mov     x0, x23
  10007fe54  bl      _objc_release
  10007fe58  mov     x0, x22
  10007fe5c  bl      _objc_release
  10007fe60  cbz     w25, loc_10007fea0                       ; if ([[ADChallengeData sharedChallengeData] needsWeaponToCompleteChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  10007fe64  adrp    x8, #0x100419000
  10007fe68  nop
  10007fe6c  ldr     x1, [x8, #0xcc8]
  10007fe70  mov     x0, x19
  10007fe74  bl      _objc_msgSend                            ; [self warning_icon]
  10007fe78  mov     x29, x29
  10007fe7c  bl      _objc_retainAutoreleasedReturnValue
  10007fe80  mov     x22, x0
  10007fe84  adrp    x8, #0x100416000
  10007fe88  nop
  10007fe8c  ldr     x1, [x8, #0xba8]
  10007fe90  mov     w2, #0
  10007fe94  bl      _objc_msgSend                            ; [[self warning_icon] setHidden:0]
  10007fe98  mov     x0, x22
  10007fe9c  bl      _objc_release
loc_10007fea0:
  10007fea0  adrp    x8, #0x100418000
  10007fea4  nop
  10007fea8  ldr     x22, [x8, #0x848]
  10007feac  mov     x0, x19
  10007feb0  mov     x1, x22
  10007feb4  bl      _objc_msgSend                            ; [self challengeTitle]
  10007feb8  mov     x29, x29
  10007febc  bl      _objc_retainAutoreleasedReturnValue
  10007fec0  mov     x23, x0
  10007fec4  adrp    x8, #0x100416000
  10007fec8  nop
  10007fecc  ldr     x1, [x8, #0xb88]
  10007fed0  bl      _objc_msgSend                            ; [[self challengeTitle] setupAsTitle]
  10007fed4  mov     x0, x23
  10007fed8  bl      _objc_release
  10007fedc  mov     x0, x19
  10007fee0  mov     x1, x22
  10007fee4  bl      _objc_msgSend                            ; [self challengeTitle]
  10007fee8  mov     x29, x29
  10007feec  bl      _objc_retainAutoreleasedReturnValue
  10007fef0  mov     x23, x0
  10007fef4  adrp    x8, #0x10041d000
  10007fef8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10007fefc  adrp    x8, #0x100417000
  10007ff00  nop
  10007ff04  ldr     x1, [x8, #0x180]
  10007ff08  bl      _objc_msgSend                            ; [UIColor blackColor]
  10007ff0c  mov     x29, x29
  10007ff10  bl      _objc_retainAutoreleasedReturnValue
  10007ff14  mov     x24, x0
  10007ff18  adrp    x8, #0x100417000
  10007ff1c  nop
  10007ff20  ldr     x1, [x8, #0x330]
  10007ff24  mov     x0, x23
  10007ff28  mov     x2, x24
  10007ff2c  bl      _objc_msgSend                            ; [[self challengeTitle] setTextColor:[UIColor blackColor]]
  10007ff30  mov     x0, x24
  10007ff34  bl      _objc_release
  10007ff38  mov     x0, x23
  10007ff3c  bl      _objc_release
  10007ff40  adrp    x8, #0x100419000
  10007ff44  nop
  10007ff48  ldr     x1, [x8, #0xcd0]
  10007ff4c  mov     x0, x19
  10007ff50  bl      _objc_msgSend                            ; [self initLock]
  10007ff54  adrp    x8, #0x100419000
  10007ff58  nop
  10007ff5c  ldr     x1, [x8, #0xcd8]
  10007ff60  mov     x0, x19
  10007ff64  bl      _objc_msgSend                            ; [self initStars]
  10007ff68  mov     x0, x19
  10007ff6c  mov     x1, x22
  10007ff70  bl      _objc_msgSend                            ; [self challengeTitle]
  10007ff74  mov     x29, x29
  10007ff78  bl      _objc_retainAutoreleasedReturnValue
  10007ff7c  mov     x22, x0
  10007ff80  mov     x0, x19
  10007ff84  mov     x1, x20
  10007ff88  bl      _objc_msgSend                            ; [self challengeDict]
  10007ff8c  mov     x29, x29
  10007ff90  bl      _objc_retainAutoreleasedReturnValue
  10007ff94  mov     x20, x0
  10007ff98  adrp    x2, #0x1003bf000
  10007ff9c  add     x2, x2, #0x6d0                           ; @"icon_title"
  10007ffa0  mov     x1, x21
  10007ffa4  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"icon_title"]
  10007ffa8  mov     x29, x29
  10007ffac  bl      _objc_retainAutoreleasedReturnValue
  10007ffb0  mov     x21, x0
  10007ffb4  adrp    x8, #0x100416000
  10007ffb8  nop
  10007ffbc  ldr     x1, [x8, #0xb68]
  10007ffc0  mov     x0, x22
  10007ffc4  mov     x2, x21
  10007ffc8  bl      _objc_msgSend                            ; [[self challengeTitle] setText:[[self challengeDict] objectForKey:@"icon_title"]]
  10007ffcc  mov     x0, x21
  10007ffd0  bl      _objc_release
  10007ffd4  mov     x0, x20
  10007ffd8  bl      _objc_release
  10007ffdc  mov     x0, x22
  10007ffe0  bl      _objc_release
  10007ffe4  sub     sp, x29, #0x40
  10007ffe8  ldp     x29, x30, [sp, #0x40]
  10007ffec  ldp     x20, x19, [sp, #0x30]
  10007fff0  ldp     x22, x21, [sp, #0x20]
  10007fff4  ldp     x24, x23, [sp, #0x10]
  10007fff8  ldp     x26, x25, [sp], #0x50
  10007fffc  ret
  100080000  mov     x19, x0
  100080004  b       loc_10008006c
  100080008  mov     x19, x0
  10008000c  b       loc_10008001c
  100080010  mov     x19, x0
  100080014  mov     x0, x24
  100080018  bl      _objc_release
loc_10008001c:
  10008001c  mov     x0, x23
  100080020  b       loc_100080068
  100080024  mov     x19, x0
  100080028  b       loc_100080040
  10008002c  mov     x19, x0
  100080030  b       loc_100080040
  100080034  mov     x19, x0
  100080038  mov     x0, x24
  10008003c  bl      _objc_release
loc_100080040:
  100080040  mov     x0, x23
  100080044  b       loc_100080070
  100080048  mov     x19, x0
  10008004c  b       loc_10008006c
  100080050  mov     x19, x0
  100080054  b       loc_100080064
  100080058  mov     x19, x0
  10008005c  mov     x0, x21
  100080060  bl      _objc_release
loc_100080064:
  100080064  mov     x0, x20
loc_100080068:
  100080068  bl      _objc_release
loc_10008006c:
  10008006c  mov     x0, x22
loc_100080070:
  100080070  bl      _objc_release
  100080074  mov     x0, x19
  100080078  bl      __Unwind_Resume                          ; Unwind_Resume()
  10008007c  mov     x19, x0
  100080080  b       loc_10008006c

; ======================================================================
; -[ADChallengeIconViewController initStars]
; address 0x100080084  size 1248  kind objc
; ======================================================================
  100080084  stp     x28, x27, [sp, #-0x60]!
  100080088  stp     x26, x25, [sp, #0x10]
  10008008c  stp     x24, x23, [sp, #0x20]
  100080090  stp     x22, x21, [sp, #0x30]
  100080094  stp     x20, x19, [sp, #0x40]
  100080098  stp     x29, x30, [sp, #0x50]
  10008009c  add     x29, sp, #0x50
  1000800a0  sub     sp, sp, #0x10
  1000800a4  mov     x20, x0
  1000800a8  bl      _objc_autoreleasePoolPush                ; objc_autoreleasePoolPush()
  1000800ac  str     x0, [sp, #8]
  1000800b0  adrp    x28, #0x10041d000
  1000800b4  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  1000800b8  adrp    x8, #0x100416000
  1000800bc  nop
  1000800c0  ldr     x22, [x8, #0xdf0]
  1000800c4  mov     x1, x22
  1000800c8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000800cc  mov     x29, x29
  1000800d0  bl      _objc_retainAutoreleasedReturnValue
  1000800d4  mov     x21, x0
  1000800d8  adrp    x8, #0x100417000
  1000800dc  nop
  1000800e0  ldr     x23, [x8, #0x150]
  1000800e4  mov     x0, x20
  1000800e8  mov     x1, x23
  1000800ec  bl      _objc_msgSend                            ; [self challengeDict]
  1000800f0  mov     x29, x29
  1000800f4  bl      _objc_retainAutoreleasedReturnValue
  1000800f8  mov     x25, x0
  1000800fc  adrp    x8, #0x100417000
  100080100  nop
  100080104  ldr     x24, [x8, #0x40]
  100080108  adrp    x2, #0x1003b9000
  10008010c  add     x2, x2, #0xef0                           ; @"challenge_id"
  100080110  mov     x1, x24
  100080114  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100080118  mov     x29, x29
  10008011c  bl      _objc_retainAutoreleasedReturnValue
  100080120  mov     x27, x0
  100080124  adrp    x8, #0x100416000
  100080128  nop
  10008012c  ldr     x1, [x8, #0xdf8]
  100080130  mov     x0, x21
  100080134  mov     x2, x27
  100080138  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10008013c  mov     x26, x0
  100080140  mov     x0, x27
  100080144  bl      _objc_release
  100080148  mov     x0, x25
  10008014c  bl      _objc_release
  100080150  mov     x0, x21
  100080154  bl      _objc_release
  100080158  adrp    x8, #0x100419000
  10008015c  nop
  100080160  ldr     x1, [x8, #0xce0]
  100080164  mov     x0, x20
  100080168  bl      _objc_msgSend                            ; [self star_1]
  10008016c  mov     x29, x29
  100080170  bl      _objc_retainAutoreleasedReturnValue
  100080174  mov     x25, x0
  100080178  adrp    x8, #0x10041d000
  10008017c  ldr     x0, [x8, #0xf10]                         ; class UIImage
  100080180  adrp    x8, #0x100416000
  100080184  add     x8, x8, #0xd40                           ; &@selector(imageNamed:)
  100080188  ldr     x21, [x8]
  10008018c  cbz     w26, loc_1000801cc                       ; if ([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  100080190  adrp    x2, #0x1003bf000
  100080194  add     x2, x2, #0x6f0                           ; @"icon_star_small"
  100080198  mov     x1, x21
  10008019c  bl      _objc_msgSend                            ; [UIImage imageNamed:@"icon_star_small"]
  1000801a0  mov     x29, x29
  1000801a4  bl      _objc_retainAutoreleasedReturnValue
  1000801a8  mov     x26, x0
  1000801ac  adrp    x8, #0x100416000
  1000801b0  nop
  1000801b4  ldr     x1, [x8, #0xef0]
  1000801b8  mov     x0, x25
  1000801bc  mov     x2, x26
  1000801c0  bl      _objc_msgSend                            ; [[self star_1] setImage:[UIImage imageNamed:@"icon_star_small"]]
  1000801c4  b       loc_100080200
  1000801c8  b       loc_100080524
loc_1000801cc:
  1000801cc  adrp    x2, #0x1003bf000
  1000801d0  add     x2, x2, #0x710                           ; @"icon_star_"
  1000801d4  mov     x1, x21
  1000801d8  bl      _objc_msgSend                            ; [UIImage imageNamed:@"icon_star_"]
  1000801dc  mov     x29, x29
  1000801e0  bl      _objc_retainAutoreleasedReturnValue
  1000801e4  mov     x26, x0
  1000801e8  adrp    x8, #0x100416000
  1000801ec  nop
  1000801f0  ldr     x1, [x8, #0xef0]
  1000801f4  mov     x0, x25
  1000801f8  mov     x2, x26
  1000801fc  bl      _objc_msgSend                            ; [[self star_1] setImage:[UIImage imageNamed:@"icon_star_"]]
loc_100080200:
  100080200  mov     x0, x26
  100080204  bl      _objc_release
  100080208  mov     x0, x25
  10008020c  bl      _objc_release
  100080210  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  100080214  mov     x1, x22
  100080218  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10008021c  mov     x29, x29
  100080220  bl      _objc_retainAutoreleasedReturnValue
  100080224  mov     x25, x0
  100080228  mov     x0, x20
  10008022c  mov     x1, x23
  100080230  bl      _objc_msgSend                            ; [self challengeDict]
  100080234  mov     x19, x28
  100080238  mov     x29, x29
  10008023c  bl      _objc_retainAutoreleasedReturnValue
  100080240  mov     x26, x0
  100080244  adrp    x2, #0x1003b9000
  100080248  add     x2, x2, #0xef0                           ; @"challenge_id"
  10008024c  mov     x1, x24
  100080250  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100080254  mov     x29, x29
  100080258  bl      _objc_retainAutoreleasedReturnValue
  10008025c  mov     x28, x0
  100080260  adrp    x8, #0x100417000
  100080264  nop
  100080268  ldr     x1, [x8, #0xa08]
  10008026c  mov     x0, x25
  100080270  mov     x2, x28
  100080274  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  100080278  mov     x27, x0
  10008027c  mov     x0, x28
  100080280  bl      _objc_release
  100080284  mov     x0, x26
  100080288  bl      _objc_release
  10008028c  mov     x0, x25
  100080290  bl      _objc_release
  100080294  adrp    x8, #0x100419000
  100080298  nop
  10008029c  ldr     x1, [x8, #0xce8]
  1000802a0  mov     x0, x20
  1000802a4  bl      _objc_msgSend                            ; [self star_2]
  1000802a8  mov     x29, x29
  1000802ac  bl      _objc_retainAutoreleasedReturnValue
  1000802b0  mov     x25, x0
  1000802b4  adrp    x28, #0x10041d000
  1000802b8  ldr     x0, [x28, #0xf10]                        ; class UIImage
  1000802bc  cbz     w27, loc_1000802fc                       ; if ([[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  1000802c0  adrp    x2, #0x1003bf000
  1000802c4  add     x2, x2, #0x6f0                           ; @"icon_star_small"
  1000802c8  mov     x1, x21
  1000802cc  bl      _objc_msgSend                            ; [UIImage imageNamed:@"icon_star_small"]
  1000802d0  mov     x29, x29
  1000802d4  bl      _objc_retainAutoreleasedReturnValue
  1000802d8  mov     x26, x0
  1000802dc  adrp    x8, #0x100416000
  1000802e0  nop
  1000802e4  ldr     x1, [x8, #0xef0]
  1000802e8  mov     x0, x25
  1000802ec  mov     x2, x26
  1000802f0  bl      _objc_msgSend                            ; [[self star_2] setImage:[UIImage imageNamed:@"icon_star_small"]]
  1000802f4  b       loc_100080330
  1000802f8  b       loc_100080524
loc_1000802fc:
  1000802fc  adrp    x2, #0x1003bf000
  100080300  add     x2, x2, #0x710                           ; @"icon_star_"
  100080304  mov     x1, x21
  100080308  bl      _objc_msgSend                            ; [UIImage imageNamed:@"icon_star_"]
  10008030c  mov     x29, x29
  100080310  bl      _objc_retainAutoreleasedReturnValue
  100080314  mov     x26, x0
  100080318  adrp    x8, #0x100416000
  10008031c  nop
  100080320  ldr     x1, [x8, #0xef0]
  100080324  mov     x0, x25
  100080328  mov     x2, x26
  10008032c  bl      _objc_msgSend                            ; [[self star_2] setImage:[UIImage imageNamed:@"icon_star_"]]
loc_100080330:
  100080330  mov     x0, x26
  100080334  bl      _objc_release
  100080338  mov     x0, x25
  10008033c  bl      _objc_release
  100080340  ldr     x0, [x19, #0xf50]                        ; class ADChallengeData
  100080344  mov     x1, x22
  100080348  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10008034c  mov     x29, x29
  100080350  bl      _objc_retainAutoreleasedReturnValue
  100080354  mov     x22, x0
  100080358  mov     x0, x20
  10008035c  mov     x1, x23
  100080360  bl      _objc_msgSend                            ; [self challengeDict]
  100080364  mov     x29, x29
  100080368  bl      _objc_retainAutoreleasedReturnValue
  10008036c  mov     x23, x0
  100080370  adrp    x2, #0x1003b9000
  100080374  add     x2, x2, #0xef0                           ; @"challenge_id"
  100080378  mov     x1, x24
  10008037c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100080380  mov     x29, x29
  100080384  bl      _objc_retainAutoreleasedReturnValue
  100080388  mov     x25, x0
  10008038c  adrp    x8, #0x100417000
  100080390  nop
  100080394  ldr     x1, [x8, #0xa10]
  100080398  mov     x0, x22
  10008039c  mov     x2, x25
  1000803a0  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  1000803a4  mov     x24, x0
  1000803a8  mov     x0, x25
  1000803ac  bl      _objc_release
  1000803b0  mov     x0, x23
  1000803b4  bl      _objc_release
  1000803b8  mov     x0, x22
  1000803bc  bl      _objc_release
  1000803c0  adrp    x8, #0x100419000
  1000803c4  nop
  1000803c8  ldr     x1, [x8, #0xcf0]
  1000803cc  mov     x0, x20
  1000803d0  bl      _objc_msgSend                            ; [self star_3]
  1000803d4  mov     x29, x29
  1000803d8  bl      _objc_retainAutoreleasedReturnValue
  1000803dc  mov     x20, x0
  1000803e0  ldr     x0, [x28, #0xf10]                        ; class UIImage
  1000803e4  cbz     w24, loc_100080424                       ; if ([[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  1000803e8  adrp    x2, #0x1003bf000
  1000803ec  add     x2, x2, #0x6f0                           ; @"icon_star_small"
  1000803f0  mov     x1, x21
  1000803f4  bl      _objc_msgSend                            ; [UIImage imageNamed:@"icon_star_small"]
  1000803f8  mov     x29, x29
  1000803fc  bl      _objc_retainAutoreleasedReturnValue
  100080400  mov     x21, x0
  100080404  adrp    x8, #0x100416000
  100080408  nop
  10008040c  ldr     x1, [x8, #0xef0]
  100080410  mov     x0, x20
  100080414  mov     x2, x21
  100080418  bl      _objc_msgSend                            ; [[self star_3] setImage:[UIImage imageNamed:@"icon_star_small"]]
  10008041c  b       loc_100080458
  100080420  b       loc_100080548
loc_100080424:
  100080424  adrp    x2, #0x1003bf000
  100080428  add     x2, x2, #0x710                           ; @"icon_star_"
  10008042c  mov     x1, x21
  100080430  bl      _objc_msgSend                            ; [UIImage imageNamed:@"icon_star_"]
  100080434  mov     x29, x29
  100080438  bl      _objc_retainAutoreleasedReturnValue
  10008043c  mov     x21, x0
  100080440  adrp    x8, #0x100416000
  100080444  nop
  100080448  ldr     x1, [x8, #0xef0]
  10008044c  mov     x0, x20
  100080450  mov     x2, x21
  100080454  bl      _objc_msgSend                            ; [[self star_3] setImage:[UIImage imageNamed:@"icon_star_"]]
loc_100080458:
  100080458  mov     x0, x21
  10008045c  bl      _objc_release
  100080460  mov     x0, x20
  100080464  bl      _objc_release
  100080468  ldr     x0, [sp, #8]
  10008046c  sub     sp, x29, #0x50
  100080470  ldp     x29, x30, [sp, #0x50]
  100080474  ldp     x20, x19, [sp, #0x40]
  100080478  ldp     x22, x21, [sp, #0x30]
  10008047c  ldp     x24, x23, [sp, #0x20]
  100080480  ldp     x26, x25, [sp, #0x10]
  100080484  ldp     x28, x27, [sp], #0x60
  100080488  b       _objc_autoreleasePoolPop
  10008048c  mov     x19, x0
  100080490  b       loc_1000804b0
  100080494  mov     x19, x0
  100080498  b       loc_1000804a8
  10008049c  mov     x19, x0
  1000804a0  mov     x0, x27
  1000804a4  bl      _objc_release
loc_1000804a8:
  1000804a8  mov     x0, x25
  1000804ac  bl      _objc_release
loc_1000804b0:
  1000804b0  mov     x0, x21
  1000804b4  b       loc_100080558
  1000804b8  mov     x19, x0
  1000804bc  b       loc_100080530
  1000804c0  b       loc_100080524
  1000804c4  mov     x19, x0
  1000804c8  mov     x0, x28
  1000804cc  bl      _objc_release
  1000804d0  b       loc_100080528
  1000804d4  mov     x19, x0
  1000804d8  b       loc_1000804f8
  1000804dc  mov     x19, x0
  1000804e0  b       loc_1000804f0
  1000804e4  mov     x19, x0
  1000804e8  mov     x0, x25
  1000804ec  bl      _objc_release
loc_1000804f0:
  1000804f0  mov     x0, x23
  1000804f4  bl      _objc_release
loc_1000804f8:
  1000804f8  mov     x0, x22
  1000804fc  b       loc_100080558
  100080500  mov     x19, x0
  100080504  b       loc_100080530
  100080508  mov     x19, x0
  10008050c  b       loc_100080530
  100080510  b       loc_100080524
  100080514  mov     x19, x0
  100080518  b       loc_100080530
  10008051c  mov     x19, x0
  100080520  b       loc_100080530
loc_100080524:
  100080524  mov     x19, x0
loc_100080528:
  100080528  mov     x0, x26
  10008052c  bl      _objc_release
loc_100080530:
  100080530  mov     x0, x25
  100080534  b       loc_100080558
  100080538  mov     x19, x0
  10008053c  b       loc_100080554
  100080540  mov     x19, x0
  100080544  b       loc_100080554
loc_100080548:
  100080548  mov     x19, x0
  10008054c  mov     x0, x21
  100080550  bl      _objc_release
loc_100080554:
  100080554  mov     x0, x20
loc_100080558:
  100080558  bl      _objc_release
  10008055c  mov     x0, x19
  100080560  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeIconViewController initLock]
; address 0x100080564  size 124  kind objc
; ======================================================================
  100080564  stp     x20, x19, [sp, #-0x20]!
  100080568  stp     x29, x30, [sp, #0x10]
  10008056c  add     x29, sp, #0x10
  100080570  mov     x20, x0
  100080574  adrp    x8, #0x100419000
  100080578  nop
  10008057c  ldr     x1, [x8, #0xcf8]
  100080580  bl      _objc_msgSend                            ; [self challengeLock]
  100080584  mov     x29, x29
  100080588  bl      _objc_retainAutoreleasedReturnValue
  10008058c  mov     x19, x0
  100080590  adrp    x8, #0x100417000
  100080594  nop
  100080598  ldr     x1, [x8, #0x648]
  10008059c  mov     x0, x20
  1000805a0  bl      _objc_msgSend                            ; [self isLocked]
  1000805a4  eor     w2, w0, #1
  1000805a8  adrp    x8, #0x100416000
  1000805ac  nop
  1000805b0  ldr     x1, [x8, #0xba8]
  1000805b4  mov     x0, x19
  1000805b8  bl      _objc_msgSend                            ; [[self challengeLock] setHidden:([self isLocked] ^ 1)]
  1000805bc  mov     x0, x19
  1000805c0  ldp     x29, x30, [sp, #0x10]
  1000805c4  ldp     x20, x19, [sp], #0x20
  1000805c8  b       _objc_release
  1000805cc  mov     x20, x0
  1000805d0  mov     x0, x19
  1000805d4  bl      _objc_release
  1000805d8  mov     x0, x20
  1000805dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeIconViewController isLocked]
; address 0x1000805e0  size 252  kind objc
; ======================================================================
  1000805e0  stp     x22, x21, [sp, #-0x30]!
  1000805e4  stp     x20, x19, [sp, #0x10]
  1000805e8  stp     x29, x30, [sp, #0x20]
  1000805ec  add     x29, sp, #0x20
  1000805f0  mov     x20, x0
  1000805f4  adrp    x8, #0x10041d000
  1000805f8  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000805fc  adrp    x8, #0x100416000
  100080600  nop
  100080604  ldr     x1, [x8, #0xdf0]
  100080608  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10008060c  mov     x29, x29
  100080610  bl      _objc_retainAutoreleasedReturnValue
  100080614  mov     x19, x0
  100080618  adrp    x8, #0x100417000
  10008061c  nop
  100080620  ldr     x1, [x8, #0x150]
  100080624  mov     x0, x20
  100080628  bl      _objc_msgSend                            ; [self challengeDict]
  10008062c  mov     x29, x29
  100080630  bl      _objc_retainAutoreleasedReturnValue
  100080634  mov     x20, x0
  100080638  adrp    x8, #0x100417000
  10008063c  nop
  100080640  ldr     x1, [x8, #0x40]
  100080644  adrp    x2, #0x1003b9000
  100080648  add     x2, x2, #0xef0                           ; @"challenge_id"
  10008064c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100080650  mov     x29, x29
  100080654  bl      _objc_retainAutoreleasedReturnValue
  100080658  mov     x21, x0
  10008065c  adrp    x8, #0x100417000
  100080660  nop
  100080664  ldr     x1, [x8, #0x170]
  100080668  mov     x0, x19
  10008066c  mov     x2, x21
  100080670  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasChallengeRequirementsForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  100080674  mov     x22, x0
  100080678  mov     x0, x21
  10008067c  bl      _objc_release
  100080680  mov     x0, x20
  100080684  bl      _objc_release
  100080688  mov     x0, x19
  10008068c  bl      _objc_release
  100080690  eor     w0, w22, #1                              ; t1 = ([[ADChallengeData sharedChallengeData] hasChallengeRequirementsForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] ^ 1)
  100080694  ldp     x29, x30, [sp, #0x20]
  100080698  ldp     x20, x19, [sp, #0x10]
  10008069c  ldp     x22, x21, [sp], #0x30
  1000806a0  ret
  1000806a4  mov     x21, x0
  1000806a8  b       loc_1000806cc
  1000806ac  mov     x21, x0
  1000806b0  b       loc_1000806c4
  1000806b4  mov     x1, x21
  1000806b8  mov     x21, x0
  1000806bc  mov     x0, x1
  1000806c0  bl      _objc_release
loc_1000806c4:
  1000806c4  mov     x0, x20
  1000806c8  bl      _objc_release
loc_1000806cc:
  1000806cc  mov     x0, x19
  1000806d0  bl      _objc_release
  1000806d4  mov     x0, x21
  1000806d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeIconViewController didReceiveMemoryWarning]
; address 0x1000806dc  size 60  kind objc
; ======================================================================
  1000806dc  stp     x29, x30, [sp, #-0x10]!
  1000806e0  mov     x29, sp
  1000806e4  sub     sp, sp, #0x10
  1000806e8  str     x0, [sp]
  1000806ec  adrp    x8, #0x10041e000
  1000806f0  ldr     x8, [x8, #0xe40]
  1000806f4  str     x8, [sp, #8]
  1000806f8  adrp    x8, #0x100416000
  1000806fc  nop
  100080700  ldr     x1, [x8, #0xbf8]
  100080704  mov     x0, sp
  100080708  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10008070c  mov     sp, x29
  100080710  ldp     x29, x30, [sp], #0x10
  100080714  ret

; ======================================================================
; -[ADChallengeIconViewController star_1]
; address 0x100080718  size 16  kind objc
; ======================================================================
  100080718  adrp    x8, #0x10041f000
  10008071c  ldrsw   x8, [x8, #0xe58]                         ; ivar offset ADChallengeIconViewController._star_1 (+0x140)
  100080720  ldr     x0, [x0, x8]                             ; x0 = self->_star_1
  100080724  ret

; ======================================================================
; -[ADChallengeIconViewController setStar_1:]
; address 0x100080728  size 56  kind objc
; ======================================================================
  100080728  stp     x20, x19, [sp, #-0x20]!
  10008072c  stp     x29, x30, [sp, #0x10]
  100080730  add     x29, sp, #0x10
  100080734  mov     x19, x0
  100080738  adrp    x8, #0x10041f000
  10008073c  ldrsw   x20, [x8, #0xe58]                        ; ivar offset ADChallengeIconViewController._star_1 (+0x140)
  100080740  mov     x0, x2
  100080744  bl      _objc_retain
  100080748  ldr     x8, [x19, x20]                           ; x8 = self->_star_1
  10008074c  str     x0, [x19, x20]                           ; self->_star_1 = arg1
  100080750  mov     x0, x8
  100080754  ldp     x29, x30, [sp, #0x10]
  100080758  ldp     x20, x19, [sp], #0x20
  10008075c  b       _objc_release

; ======================================================================
; -[ADChallengeIconViewController star_2]
; address 0x100080760  size 16  kind objc
; ======================================================================
  100080760  adrp    x8, #0x10041f000
  100080764  ldrsw   x8, [x8, #0xe5c]                         ; ivar offset ADChallengeIconViewController._star_2 (+0x148)
  100080768  ldr     x0, [x0, x8]                             ; x0 = self->_star_2
  10008076c  ret

; ======================================================================
; -[ADChallengeIconViewController setStar_2:]
; address 0x100080770  size 56  kind objc
; ======================================================================
  100080770  stp     x20, x19, [sp, #-0x20]!
  100080774  stp     x29, x30, [sp, #0x10]
  100080778  add     x29, sp, #0x10
  10008077c  mov     x19, x0
  100080780  adrp    x8, #0x10041f000
  100080784  ldrsw   x20, [x8, #0xe5c]                        ; ivar offset ADChallengeIconViewController._star_2 (+0x148)
  100080788  mov     x0, x2
  10008078c  bl      _objc_retain
  100080790  ldr     x8, [x19, x20]                           ; x8 = self->_star_2
  100080794  str     x0, [x19, x20]                           ; self->_star_2 = arg1
  100080798  mov     x0, x8
  10008079c  ldp     x29, x30, [sp, #0x10]
  1000807a0  ldp     x20, x19, [sp], #0x20
  1000807a4  b       _objc_release

; ======================================================================
; -[ADChallengeIconViewController star_3]
; address 0x1000807a8  size 16  kind objc
; ======================================================================
  1000807a8  adrp    x8, #0x10041f000
  1000807ac  ldrsw   x8, [x8, #0xe60]                         ; ivar offset ADChallengeIconViewController._star_3 (+0x150)
  1000807b0  ldr     x0, [x0, x8]                             ; x0 = self->_star_3
  1000807b4  ret

; ======================================================================
; -[ADChallengeIconViewController setStar_3:]
; address 0x1000807b8  size 56  kind objc
; ======================================================================
  1000807b8  stp     x20, x19, [sp, #-0x20]!
  1000807bc  stp     x29, x30, [sp, #0x10]
  1000807c0  add     x29, sp, #0x10
  1000807c4  mov     x19, x0
  1000807c8  adrp    x8, #0x10041f000
  1000807cc  ldrsw   x20, [x8, #0xe60]                        ; ivar offset ADChallengeIconViewController._star_3 (+0x150)
  1000807d0  mov     x0, x2
  1000807d4  bl      _objc_retain
  1000807d8  ldr     x8, [x19, x20]                           ; x8 = self->_star_3
  1000807dc  str     x0, [x19, x20]                           ; self->_star_3 = arg1
  1000807e0  mov     x0, x8
  1000807e4  ldp     x29, x30, [sp, #0x10]
  1000807e8  ldp     x20, x19, [sp], #0x20
  1000807ec  b       _objc_release

; ======================================================================
; -[ADChallengeIconViewController challengeLock]
; address 0x1000807f0  size 16  kind objc
; ======================================================================
  1000807f0  adrp    x8, #0x10041f000
  1000807f4  ldrsw   x8, [x8, #0xe64]                         ; ivar offset ADChallengeIconViewController._challengeLock (+0x158)
  1000807f8  ldr     x0, [x0, x8]                             ; x0 = self->_challengeLock
  1000807fc  ret

; ======================================================================
; -[ADChallengeIconViewController setChallengeLock:]
; address 0x100080800  size 56  kind objc
; ======================================================================
  100080800  stp     x20, x19, [sp, #-0x20]!
  100080804  stp     x29, x30, [sp, #0x10]
  100080808  add     x29, sp, #0x10
  10008080c  mov     x19, x0
  100080810  adrp    x8, #0x10041f000
  100080814  ldrsw   x20, [x8, #0xe64]                        ; ivar offset ADChallengeIconViewController._challengeLock (+0x158)
  100080818  mov     x0, x2
  10008081c  bl      _objc_retain
  100080820  ldr     x8, [x19, x20]                           ; x8 = self->_challengeLock
  100080824  str     x0, [x19, x20]                           ; self->_challengeLock = arg1
  100080828  mov     x0, x8
  10008082c  ldp     x29, x30, [sp, #0x10]
  100080830  ldp     x20, x19, [sp], #0x20
  100080834  b       _objc_release

; ======================================================================
; -[ADChallengeIconViewController challengeDict]
; address 0x100080838  size 16  kind objc
; ======================================================================
  100080838  adrp    x8, #0x10041f000
  10008083c  ldrsw   x8, [x8, #0xe68]                         ; ivar offset ADChallengeIconViewController._challengeDict (+0x160)
  100080840  ldr     x0, [x0, x8]                             ; x0 = self->_challengeDict
  100080844  ret

; ======================================================================
; -[ADChallengeIconViewController setChallengeDict:]
; address 0x100080848  size 56  kind objc
; ======================================================================
  100080848  stp     x20, x19, [sp, #-0x20]!
  10008084c  stp     x29, x30, [sp, #0x10]
  100080850  add     x29, sp, #0x10
  100080854  mov     x19, x0
  100080858  adrp    x8, #0x10041f000
  10008085c  ldrsw   x20, [x8, #0xe68]                        ; ivar offset ADChallengeIconViewController._challengeDict (+0x160)
  100080860  mov     x0, x2
  100080864  bl      _objc_retain
  100080868  ldr     x8, [x19, x20]                           ; x8 = self->_challengeDict
  10008086c  str     x0, [x19, x20]                           ; self->_challengeDict = arg1
  100080870  mov     x0, x8
  100080874  ldp     x29, x30, [sp, #0x10]
  100080878  ldp     x20, x19, [sp], #0x20
  10008087c  b       _objc_release

; ======================================================================
; -[ADChallengeIconViewController challengeTitle]
; address 0x100080880  size 16  kind objc
; ======================================================================
  100080880  adrp    x8, #0x10041f000
  100080884  ldrsw   x8, [x8, #0xe6c]                         ; ivar offset ADChallengeIconViewController._challengeTitle (+0x168)
  100080888  ldr     x0, [x0, x8]                             ; x0 = self->_challengeTitle
  10008088c  ret

; ======================================================================
; -[ADChallengeIconViewController setChallengeTitle:]
; address 0x100080890  size 56  kind objc
; ======================================================================
  100080890  stp     x20, x19, [sp, #-0x20]!
  100080894  stp     x29, x30, [sp, #0x10]
  100080898  add     x29, sp, #0x10
  10008089c  mov     x19, x0
  1000808a0  adrp    x8, #0x10041f000
  1000808a4  ldrsw   x20, [x8, #0xe6c]                        ; ivar offset ADChallengeIconViewController._challengeTitle (+0x168)
  1000808a8  mov     x0, x2
  1000808ac  bl      _objc_retain
  1000808b0  ldr     x8, [x19, x20]                           ; x8 = self->_challengeTitle
  1000808b4  str     x0, [x19, x20]                           ; self->_challengeTitle = arg1
  1000808b8  mov     x0, x8
  1000808bc  ldp     x29, x30, [sp, #0x10]
  1000808c0  ldp     x20, x19, [sp], #0x20
  1000808c4  b       _objc_release

; ======================================================================
; -[ADChallengeIconViewController warning_icon]
; address 0x1000808c8  size 32  kind objc
; ======================================================================
  1000808c8  stp     x29, x30, [sp, #-0x10]!
  1000808cc  mov     x29, sp
  1000808d0  adrp    x8, #0x10041f000
  1000808d4  ldrsw   x8, [x8, #0xe70]                         ; ivar offset ADChallengeIconViewController._warning_icon (+0x170)
  1000808d8  add     x0, x0, x8
  1000808dc  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000808e0  ldp     x29, x30, [sp], #0x10
  1000808e4  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADChallengeIconViewController setWarning_icon:]
; address 0x1000808e8  size 20  kind objc
; ======================================================================
  1000808e8  adrp    x8, #0x10041f000
  1000808ec  ldrsw   x8, [x8, #0xe70]                         ; ivar offset ADChallengeIconViewController._warning_icon (+0x170)
  1000808f0  add     x0, x0, x8
  1000808f4  mov     x1, x2
  1000808f8  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADChallengeIconViewController .cxx_destruct]
; address 0x1000808fc  size 160  kind objc
; ======================================================================
  1000808fc  stp     x20, x19, [sp, #-0x20]!
  100080900  stp     x29, x30, [sp, #0x10]
  100080904  add     x29, sp, #0x10
  100080908  mov     x19, x0
  10008090c  adrp    x8, #0x10041f000
  100080910  ldrsw   x8, [x8, #0xe70]                         ; ivar offset ADChallengeIconViewController._warning_icon (+0x170)
  100080914  add     x0, x19, x8
  100080918  bl      _objc_destroyWeak
  10008091c  adrp    x8, #0x10041f000
  100080920  ldrsw   x8, [x8, #0xe6c]                         ; ivar offset ADChallengeIconViewController._challengeTitle (+0x168)
  100080924  add     x0, x19, x8
  100080928  mov     x1, #0
  10008092c  bl      _objc_storeStrong
  100080930  adrp    x8, #0x10041f000
  100080934  ldrsw   x8, [x8, #0xe68]                         ; ivar offset ADChallengeIconViewController._challengeDict (+0x160)
  100080938  add     x0, x19, x8
  10008093c  mov     x1, #0
  100080940  bl      _objc_storeStrong
  100080944  adrp    x8, #0x10041f000
  100080948  ldrsw   x8, [x8, #0xe64]                         ; ivar offset ADChallengeIconViewController._challengeLock (+0x158)
  10008094c  add     x0, x19, x8
  100080950  mov     x1, #0
  100080954  bl      _objc_storeStrong
  100080958  adrp    x8, #0x10041f000
  10008095c  ldrsw   x8, [x8, #0xe60]                         ; ivar offset ADChallengeIconViewController._star_3 (+0x150)
  100080960  add     x0, x19, x8
  100080964  mov     x1, #0
  100080968  bl      _objc_storeStrong
  10008096c  adrp    x8, #0x10041f000
  100080970  ldrsw   x8, [x8, #0xe5c]                         ; ivar offset ADChallengeIconViewController._star_2 (+0x148)
  100080974  add     x0, x19, x8
  100080978  mov     x1, #0
  10008097c  bl      _objc_storeStrong
  100080980  mov     x1, #0
  100080984  adrp    x8, #0x10041f000
  100080988  ldrsw   x8, [x8, #0xe58]                         ; ivar offset ADChallengeIconViewController._star_1 (+0x140)
  10008098c  add     x0, x19, x8
  100080990  ldp     x29, x30, [sp, #0x10]
  100080994  ldp     x20, x19, [sp], #0x20
  100080998  b       _objc_storeStrong
