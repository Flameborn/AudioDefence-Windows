// unit ADGameOverEndlessViewController — 37 functions
//   0x1000d2fe0     140  -[ADGameOverEndlessViewController initWithNibName:bundle:]
//   0x1000d306c    3476  -[ADGameOverEndlessViewController viewDidLoad]
//   0x1000d3e00      20  -[ADGameOverEndlessViewController viewDidLoad]_block_invoke
//   0x1000d3e14      96  -[ADGameOverEndlessViewController viewDidLoad]_block_invoke_2
//   0x1000d3e74       8  sub_1000d3e74
//   0x1000d3e7c       8  sub_1000d3e7c
//   0x1000d3e84     876  -[ADGameOverEndlessViewController loadView]
//   0x1000d41f0      92  -[ADGameOverEndlessViewController viewDidAppear:]
//   0x1000d424c      92  -[ADGameOverEndlessViewController viewWillAppear:]
//   0x1000d42a8     392  -[ADGameOverEndlessViewController resetCardsModifiersIfNeeded]
//   0x1000d4430     160  -[ADGameOverEndlessViewController backButtonPressed]
//   0x1000d44d0     164  -[ADGameOverEndlessViewController playAgainButtonPressed:]
//   0x1000d4574     172  -[ADGameOverEndlessViewController showGameStatistics:]
//   0x1000d4620     204  -[ADGameOverEndlessViewController positionView]
//   0x1000d46ec       4  -[ADGameOverEndlessViewController swipeLeft]
//   0x1000d46f0       4  -[ADGameOverEndlessViewController swipeRight]
//   0x1000d46f4     852  -[ADGameOverEndlessViewController reportScoreToGameCenter]
//   0x1000d4a48       4  -[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke
//   0x1000d4a4c       4  -[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke_2
//   0x1000d4a50     904  -[ADGameOverEndlessViewController twitterScreenshotButtonPressed:]
//   0x1000d4dd8       4  -[ADGameOverEndlessViewController scoreReported:]
//   0x1000d4ddc      60  -[ADGameOverEndlessViewController didReceiveMemoryWarning]
//   0x1000d4e18     284  -[ADGameOverEndlessViewController dealloc]
//   0x1000d4f34     632  -[ADGameOverEndlessViewController refreshMission:WithTag:]
//   0x1000d51ac      16  -[ADGameOverEndlessViewController statisticsButton]
//   0x1000d51bc      12  -[ADGameOverEndlessViewController setStatisticsButton:]
//   0x1000d51c8      16  -[ADGameOverEndlessViewController extraMoneyImage]
//   0x1000d51d8      56  -[ADGameOverEndlessViewController setExtraMoneyImage:]
//   0x1000d5210      16  -[ADGameOverEndlessViewController highScoreLabel]
//   0x1000d5220      56  -[ADGameOverEndlessViewController setHighScoreLabel:]
//   0x1000d5258      16  -[ADGameOverEndlessViewController unlockableWeaponsLabel]
//   0x1000d5268      56  -[ADGameOverEndlessViewController setUnlockableWeaponsLabel:]
//   0x1000d52a0      16  -[ADGameOverEndlessViewController viewForTwitterScreenshot]
//   0x1000d52b0      56  -[ADGameOverEndlessViewController setViewForTwitterScreenshot:]
//   0x1000d52e8      20  -[ADGameOverEndlessViewController displayingMissions]
//   0x1000d52fc      16  -[ADGameOverEndlessViewController setDisplayingMissions:]
//   0x1000d530c     124  -[ADGameOverEndlessViewController .cxx_destruct]

; ======================================================================
; -[ADGameOverEndlessViewController initWithNibName:bundle:]
; address 0x1000d2fe0  size 140  kind objc
; ======================================================================
  1000d2fe0  stp     x22, x21, [sp, #-0x30]!
  1000d2fe4  stp     x20, x19, [sp, #0x10]
  1000d2fe8  stp     x29, x30, [sp, #0x20]
  1000d2fec  add     x29, sp, #0x20
  1000d2ff0  sub     sp, sp, #0x10
  1000d2ff4  mov     x20, x3
  1000d2ff8  mov     x21, x0
  1000d2ffc  mov     x0, x2
  1000d3000  bl      _objc_retain
  1000d3004  mov     x19, x0
  1000d3008  str     x21, [sp]
  1000d300c  adrp    x8, #0x10041e000
  1000d3010  ldr     x8, [x8, #0xfd0]
  1000d3014  str     x8, [sp, #8]
  1000d3018  adrp    x8, #0x100416000
  1000d301c  nop
  1000d3020  ldr     x1, [x8, #0xb40]
  1000d3024  mov     x0, sp
  1000d3028  mov     x2, x19
  1000d302c  mov     x3, x20
  1000d3030  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  1000d3034  mov     x20, x0
  1000d3038  mov     x0, x19
  1000d303c  bl      _objc_release
  1000d3040  mov     x0, x20
  1000d3044  sub     sp, x29, #0x20
  1000d3048  ldp     x29, x30, [sp, #0x20]
  1000d304c  ldp     x20, x19, [sp, #0x10]
  1000d3050  ldp     x22, x21, [sp], #0x30
  1000d3054  ret
  1000d3058  mov     x20, x0
  1000d305c  mov     x0, x19
  1000d3060  bl      _objc_release
  1000d3064  mov     x0, x20
  1000d3068  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController viewDidLoad]
; address 0x1000d306c  size 3476  kind objc
; ======================================================================
  1000d306c  stp     d9, d8, [sp, #-0x70]!
  1000d3070  stp     x28, x27, [sp, #0x10]
  1000d3074  stp     x26, x25, [sp, #0x20]
  1000d3078  stp     x24, x23, [sp, #0x30]
  1000d307c  stp     x22, x21, [sp, #0x40]
  1000d3080  stp     x20, x19, [sp, #0x50]
  1000d3084  stp     x29, x30, [sp, #0x60]
  1000d3088  add     x29, sp, #0x60
  1000d308c  sub     sp, sp, #0x160
  1000d3090  mov     x19, x0
  1000d3094  adrp    x8, #0x1003b0000
  1000d3098  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000d309c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000d30a0  stur    x8, [x29, #-0x68]
  1000d30a4  str     x19, [sp, #0xc8]
  1000d30a8  adrp    x8, #0x10041e000
  1000d30ac  ldr     x8, [x8, #0xfd0]
  1000d30b0  str     x8, [sp, #0xd0]
  1000d30b4  adrp    x8, #0x100416000
  1000d30b8  nop
  1000d30bc  ldr     x1, [x8, #0xb48]
  1000d30c0  add     x0, sp, #0xc8
  1000d30c4  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000d30c8  adrp    x8, #0x100417000
  1000d30cc  nop
  1000d30d0  ldr     x20, [x8, #0x2a8]
  1000d30d4  mov     x0, x19
  1000d30d8  mov     x1, x20
  1000d30dc  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d30e0  mov     x29, x29
  1000d30e4  bl      _objc_retainAutoreleasedReturnValue
  1000d30e8  mov     x21, x0
  1000d30ec  adrp    x8, #0x100417000
  1000d30f0  nop
  1000d30f4  ldr     x22, [x8, #0x2b0]
  1000d30f8  mov     w2, #1
  1000d30fc  mov     x1, x22
  1000d3100  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  1000d3104  mov     x0, x21
  1000d3108  bl      _objc_release
  1000d310c  mov     x0, x19
  1000d3110  mov     x1, x20
  1000d3114  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d3118  mov     x29, x29
  1000d311c  bl      _objc_retainAutoreleasedReturnValue
  1000d3120  mov     x21, x0
  1000d3124  adrp    x8, #0x100417000
  1000d3128  nop
  1000d312c  ldr     x1, [x8, #0x2b8]
  1000d3130  mov     w2, #1
  1000d3134  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:1]
  1000d3138  mov     x0, x21
  1000d313c  bl      _objc_release
  1000d3140  mov     x0, x19
  1000d3144  mov     x1, x20
  1000d3148  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d314c  mov     x29, x29
  1000d3150  bl      _objc_retainAutoreleasedReturnValue
  1000d3154  mov     x21, x0
  1000d3158  adrp    x8, #0x100417000
  1000d315c  nop
  1000d3160  ldr     x1, [x8, #0x2c0]
  1000d3164  mov     w2, #1
  1000d3168  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:1]
  1000d316c  mov     x0, x21
  1000d3170  bl      _objc_release
  1000d3174  mov     x0, x19
  1000d3178  mov     x1, x20
  1000d317c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d3180  mov     x29, x29
  1000d3184  bl      _objc_retainAutoreleasedReturnValue
  1000d3188  mov     x23, x0
  1000d318c  adrp    x8, #0x100417000
  1000d3190  nop
  1000d3194  ldr     x1, [x8, #0x2c8]
  1000d3198  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000d319c  mov     x29, x29
  1000d31a0  bl      _objc_retainAutoreleasedReturnValue
  1000d31a4  mov     x24, x0
  1000d31a8  adrp    x8, #0x100416000
  1000d31ac  nop
  1000d31b0  ldr     x26, [x8, #0xb68]
  1000d31b4  adrp    x2, #0x1003c0000
  1000d31b8  add     x2, x2, #0x430                           ; @"GAME OVER"
  1000d31bc  mov     x1, x26
  1000d31c0  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"GAME OVER"]
  1000d31c4  mov     x0, x24
  1000d31c8  bl      _objc_release
  1000d31cc  mov     x0, x23
  1000d31d0  bl      _objc_release
  1000d31d4  mov     x0, x19
  1000d31d8  mov     x1, x20
  1000d31dc  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d31e0  mov     x29, x29
  1000d31e4  bl      _objc_retainAutoreleasedReturnValue
  1000d31e8  mov     x21, x0
  1000d31ec  mov     w2, #1
  1000d31f0  mov     x1, x22
  1000d31f4  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  1000d31f8  mov     x0, x21
  1000d31fc  bl      _objc_release
  1000d3200  adrp    x8, #0x10041e000
  1000d3204  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000d3208  adrp    x8, #0x100417000
  1000d320c  nop
  1000d3210  ldr     x1, [x8, #0x510]
  1000d3214  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d3218  mov     x29, x29
  1000d321c  bl      _objc_retainAutoreleasedReturnValue
  1000d3220  mov     x22, x0
  1000d3224  adrp    x8, #0x10041a000
  1000d3228  nop
  1000d322c  ldr     x1, [x8, #0x858]
  1000d3230  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] metalDetector]
  1000d3234  mov     x23, x0
  1000d3238  mov     x0, x22
  1000d323c  bl      _objc_release
  1000d3240  adrp    x8, #0x10041a000
  1000d3244  nop
  1000d3248  ldr     x1, [x8, #0xdb8]
  1000d324c  mov     x0, x19
  1000d3250  bl      _objc_msgSend                            ; [self extraMoneyImage]
  1000d3254  mov     x29, x29
  1000d3258  bl      _objc_retainAutoreleasedReturnValue
  1000d325c  mov     x22, x0
  1000d3260  adrp    x8, #0x100416000
  1000d3264  add     x8, x8, #0xba8                           ; &@selector(setHidden:)
  1000d3268  ldr     x1, [x8]
  1000d326c  cbz     w23, loc_1000d3288                       ; if ([[ADGameModifiers sharedModifiers] metalDetector] == 0)
  1000d3270  mov     w2, #0
  1000d3274  mov     x0, x22
  1000d3278  str     x1, [sp, #0x18]
  1000d327c  bl      _objc_msgSend                            ; [[self extraMoneyImage] setHidden:0]
  1000d3280  b       loc_1000d3298
  1000d3284  b       loc_1000d3d90
loc_1000d3288:
  1000d3288  mov     w2, #1
  1000d328c  mov     x0, x22
  1000d3290  str     x1, [sp, #0x18]
  1000d3294  bl      _objc_msgSend                            ; [[self extraMoneyImage] setHidden:1]
loc_1000d3298:
  1000d3298  mov     x0, x22
  1000d329c  bl      _objc_release
  1000d32a0  adrp    x8, #0x10041a000
  1000d32a4  nop
  1000d32a8  ldr     x1, [x8, #0xdc0]
  1000d32ac  mov     w2, #0
  1000d32b0  mov     x0, x19
  1000d32b4  bl      _objc_msgSend                            ; [self setDisplayingMissions:0]
  1000d32b8  adrp    x8, #0x100418000
  1000d32bc  nop
  1000d32c0  ldr     x1, [x8, #0x848]
  1000d32c4  mov     x0, x19
  1000d32c8  bl      _objc_msgSend                            ; [self challengeTitle]
  1000d32cc  mov     x29, x29
  1000d32d0  bl      _objc_retainAutoreleasedReturnValue
  1000d32d4  mov     x21, x0
  1000d32d8  adrp    x8, #0x100416000
  1000d32dc  nop
  1000d32e0  ldr     x24, [x8, #0xb88]
  1000d32e4  mov     x1, x24
  1000d32e8  bl      _objc_msgSend                            ; [[self challengeTitle] setupAsTitle]
  1000d32ec  mov     x0, x21
  1000d32f0  bl      _objc_release
  1000d32f4  adrp    x8, #0x100418000
  1000d32f8  nop
  1000d32fc  ldr     x1, [x8, #0x840]
  1000d3300  mov     x0, x19
  1000d3304  bl      _objc_msgSend                            ; [self missionsTitle]
  1000d3308  mov     x29, x29
  1000d330c  bl      _objc_retainAutoreleasedReturnValue
  1000d3310  mov     x21, x0
  1000d3314  mov     x1, x24
  1000d3318  bl      _objc_msgSend                            ; [[self missionsTitle] setupAsTitle]
  1000d331c  mov     x0, x21
  1000d3320  bl      _objc_release
  1000d3324  adrp    x8, #0x10041a000
  1000d3328  nop
  1000d332c  ldr     x22, [x8, #0xdc8]
  1000d3330  mov     x0, x19
  1000d3334  mov     x1, x22
  1000d3338  bl      _objc_msgSend                            ; [self highScoreLabel]
  1000d333c  mov     x29, x29
  1000d3340  bl      _objc_retainAutoreleasedReturnValue
  1000d3344  mov     x21, x0
  1000d3348  adrp    x8, #0x100416000
  1000d334c  nop
  1000d3350  ldr     x1, [x8, #0xeb8]
  1000d3354  bl      _objc_msgSend                            ; [[self highScoreLabel] setupAsInfo]
  1000d3358  mov     x0, x21
  1000d335c  bl      _objc_release
  1000d3360  adrp    x8, #0x100416000
  1000d3364  nop
  1000d3368  ldr     x1, [x8, #0xc50]
  1000d336c  mov     x0, x19
  1000d3370  bl      _objc_msgSend                            ; [self accuracyLabel]
  1000d3374  mov     x29, x29
  1000d3378  bl      _objc_retainAutoreleasedReturnValue
  1000d337c  mov     x21, x0
  1000d3380  adrp    x8, #0x100416000
  1000d3384  nop
  1000d3388  ldr     x25, [x8, #0xba0]
  1000d338c  mov     x1, x25
  1000d3390  bl      _objc_msgSend                            ; [[self accuracyLabel] setupAsMain]
  1000d3394  mov     x0, x21
  1000d3398  bl      _objc_release
  1000d339c  adrp    x8, #0x100416000
  1000d33a0  nop
  1000d33a4  ldr     x1, [x8, #0xc40]
  1000d33a8  mov     x0, x19
  1000d33ac  bl      _objc_msgSend                            ; [self killsLabel]
  1000d33b0  mov     x29, x29
  1000d33b4  bl      _objc_retainAutoreleasedReturnValue
  1000d33b8  mov     x21, x0
  1000d33bc  mov     x1, x25
  1000d33c0  bl      _objc_msgSend                            ; [[self killsLabel] setupAsMain]
  1000d33c4  mov     x0, x21
  1000d33c8  bl      _objc_release
  1000d33cc  adrp    x8, #0x100418000
  1000d33d0  nop
  1000d33d4  ldr     x1, [x8, #0x7a0]
  1000d33d8  mov     x0, x19
  1000d33dc  bl      _objc_msgSend                            ; [self timeLabel]
  1000d33e0  mov     x29, x29
  1000d33e4  bl      _objc_retainAutoreleasedReturnValue
  1000d33e8  mov     x21, x0
  1000d33ec  mov     x1, x25
  1000d33f0  bl      _objc_msgSend                            ; [[self timeLabel] setupAsMain]
  1000d33f4  mov     x0, x21
  1000d33f8  bl      _objc_release
  1000d33fc  adrp    x8, #0x100418000
  1000d3400  nop
  1000d3404  ldr     x1, [x8, #0x790]
  1000d3408  mov     x0, x19
  1000d340c  bl      _objc_msgSend                            ; [self comboLabel]
  1000d3410  mov     x29, x29
  1000d3414  bl      _objc_retainAutoreleasedReturnValue
  1000d3418  mov     x21, x0
  1000d341c  mov     x1, x25
  1000d3420  bl      _objc_msgSend                            ; [[self comboLabel] setupAsMain]
  1000d3424  mov     x0, x21
  1000d3428  bl      _objc_release
  1000d342c  adrp    x8, #0x100418000
  1000d3430  nop
  1000d3434  ldr     x1, [x8, #0x7e0]
  1000d3438  mov     x0, x19
  1000d343c  bl      _objc_msgSend                            ; [self coinsTotal]
  1000d3440  mov     x29, x29
  1000d3444  bl      _objc_retainAutoreleasedReturnValue
  1000d3448  mov     x21, x0
  1000d344c  mov     x1, x24
  1000d3450  bl      _objc_msgSend                            ; [[self coinsTotal] setupAsTitle]
  1000d3454  mov     x0, x21
  1000d3458  bl      _objc_release
  1000d345c  adrp    x8, #0x10041a000
  1000d3460  nop
  1000d3464  ldr     x1, [x8, #0xdd0]
  1000d3468  mov     x0, x19
  1000d346c  bl      _objc_msgSend                            ; [self diamondsTotal]
  1000d3470  mov     x29, x29
  1000d3474  bl      _objc_retainAutoreleasedReturnValue
  1000d3478  mov     x21, x0
  1000d347c  mov     x1, x24
  1000d3480  bl      _objc_msgSend                            ; [[self diamondsTotal] setupAsTitle]
  1000d3484  mov     x0, x21
  1000d3488  bl      _objc_release
  1000d348c  adrp    x8, #0x100418000
  1000d3490  nop
  1000d3494  ldr     x1, [x8, #0x7d8]
  1000d3498  mov     x0, x19
  1000d349c  bl      _objc_msgSend                            ; [self diamondsLoot]
  1000d34a0  mov     x29, x29
  1000d34a4  bl      _objc_retainAutoreleasedReturnValue
  1000d34a8  mov     x21, x0
  1000d34ac  mov     x1, x24
  1000d34b0  bl      _objc_msgSend                            ; [[self diamondsLoot] setupAsTitle]
  1000d34b4  mov     x0, x21
  1000d34b8  bl      _objc_release
  1000d34bc  adrp    x8, #0x100418000
  1000d34c0  nop
  1000d34c4  ldr     x1, [x8, #0x7b0]
  1000d34c8  mov     x0, x19
  1000d34cc  bl      _objc_msgSend                            ; [self scoreLabel]
  1000d34d0  mov     x29, x29
  1000d34d4  bl      _objc_retainAutoreleasedReturnValue
  1000d34d8  mov     x21, x0
  1000d34dc  mov     x1, x25
  1000d34e0  bl      _objc_msgSend                            ; [[self scoreLabel] setupAsMain]
  1000d34e4  mov     x0, x21
  1000d34e8  bl      _objc_release
  1000d34ec  mov     x0, x19
  1000d34f0  mov     x1, x20
  1000d34f4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d34f8  mov     x29, x29
  1000d34fc  bl      _objc_retainAutoreleasedReturnValue
  1000d3500  mov     x24, x0
  1000d3504  adrp    x8, #0x100417000
  1000d3508  nop
  1000d350c  ldr     x1, [x8, #0x7c8]
  1000d3510  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  1000d3514  stp     x26, x22, [sp, #0x28]
  1000d3518  mov     x29, x29
  1000d351c  bl      _objc_retainAutoreleasedReturnValue
  1000d3520  mov     x22, x0
  1000d3524  adrp    x8, #0x100417000
  1000d3528  nop
  1000d352c  ldr     x1, [x8, #0x920]
  1000d3530  mov     x3, #0
  1000d3534  adrp    x2, #0x1003bc000
  1000d3538  add     x2, x2, #0xff0                           ; @"Main Menu"
  1000d353c  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setTitle:@"Main Menu" forState:0]
  1000d3540  str     x20, [sp, #0x20]
  1000d3544  mov     x0, x22
  1000d3548  bl      _objc_release
  1000d354c  mov     x0, x24
  1000d3550  bl      _objc_release
  1000d3554  adrp    x23, #0x10041d000
  1000d3558  ldr     x0, [x23, #0xfc0]                        ; class ADInGameStats
  1000d355c  adrp    x8, #0x100417000
  1000d3560  nop
  1000d3564  ldr     x26, [x8, #0x228]
  1000d3568  mov     x1, x26
  1000d356c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000d3570  mov     x29, x29
  1000d3574  bl      _objc_retainAutoreleasedReturnValue
  1000d3578  mov     x28, x0
  1000d357c  adrp    x8, #0x100417000
  1000d3580  nop
  1000d3584  ldr     x27, [x8, #0xda0]
  1000d3588  mov     x1, x27
  1000d358c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  1000d3590  mov     x22, x0
  1000d3594  adrp    x8, #0x10041d000
  1000d3598  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000d359c  adrp    x8, #0x100416000
  1000d35a0  nop
  1000d35a4  ldr     x24, [x8, #0xe10]
  1000d35a8  mov     x1, x24
  1000d35ac  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000d35b0  mov     x29, x29
  1000d35b4  bl      _objc_retainAutoreleasedReturnValue
  1000d35b8  mov     x21, x0
  1000d35bc  adrp    x8, #0x100419000
  1000d35c0  nop
  1000d35c4  ldr     x25, [x8, #0xed0]
  1000d35c8  mov     x1, x25
  1000d35cc  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] highScore]
  1000d35d0  mov     x20, x0
  1000d35d4  mov     x0, x21
  1000d35d8  bl      _objc_release
  1000d35dc  mov     x0, x28
  1000d35e0  bl      _objc_release
  1000d35e4  cmp     x22, w20, sxtw
  1000d35e8  b.ls    loc_1000d3620                            ; if ([[ADInGameStats singleton] gameScore] <=u [[ADPersistentStats persistentStats] highScore])
  1000d35ec  mov     x0, x19
  1000d35f0  ldr     x1, [sp, #0x30]
  1000d35f4  bl      _objc_msgSend                            ; [self highScoreLabel]
  1000d35f8  mov     x29, x29
  1000d35fc  bl      _objc_retainAutoreleasedReturnValue
  1000d3600  mov     x21, x0
  1000d3604  adrp    x2, #0x1003c2000
  1000d3608  add     x2, x2, #0x530                           ; @"NEW HIGH SCORE!"
  1000d360c  ldr     x20, [sp, #0x28]
  1000d3610  mov     x1, x20
  1000d3614  bl      _objc_msgSend                            ; [[self highScoreLabel] setText:@"NEW HIGH SCORE!"]
  1000d3618  mov     x0, x21
  1000d361c  b       loc_1000d3774
loc_1000d3620:
  1000d3620  ldr     x0, [x23, #0xfc0]                        ; class ADInGameStats
  1000d3624  mov     x1, x26
  1000d3628  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000d362c  mov     x29, x29
  1000d3630  bl      _objc_retainAutoreleasedReturnValue
  1000d3634  mov     x26, x0
  1000d3638  mov     x1, x27
  1000d363c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  1000d3640  cbz     x0, loc_1000d364c                        ; if ([[ADInGameStats singleton] gameScore] == 0)
  1000d3644  mov     w20, #0
  1000d3648  b       loc_1000d3680
loc_1000d364c:
  1000d364c  adrp    x8, #0x10041d000
  1000d3650  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000d3654  mov     x1, x24
  1000d3658  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000d365c  mov     x29, x29
  1000d3660  bl      _objc_retainAutoreleasedReturnValue
  1000d3664  mov     x22, x0
  1000d3668  mov     x1, x25
  1000d366c  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] highScore]
  1000d3670  cmp     w0, #0
  1000d3674  cset    w20, eq
  1000d3678  mov     x0, x22
  1000d367c  bl      _objc_release
loc_1000d3680:
  1000d3680  ldr     x21, [sp, #0x30]
  1000d3684  mov     x0, x26
  1000d3688  bl      _objc_release
  1000d368c  mov     x0, x19
  1000d3690  mov     x1, x21
  1000d3694  bl      _objc_msgSend                            ; [self highScoreLabel]
  1000d3698  mov     x29, x29
  1000d369c  bl      _objc_retainAutoreleasedReturnValue
  1000d36a0  mov     x23, x0
  1000d36a4  cbz     w20, loc_1000d36c8                       ; if (w20 == 0)
  1000d36a8  mov     w2, #1
  1000d36ac  mov     x0, x23
  1000d36b0  ldr     x1, [sp, #0x18]
  1000d36b4  bl      _objc_msgSend                            ; [[self highScoreLabel] setHidden:1]
  1000d36b8  mov     x0, x23
  1000d36bc  bl      _objc_release
  1000d36c0  ldr     x20, [sp, #0x28]
  1000d36c4  b       loc_1000d3778
loc_1000d36c8:
  1000d36c8  adrp    x8, #0x10041d000
  1000d36cc  ldr     x26, [x8, #0xf78]                        ; class NSString
  1000d36d0  nop
  1000d36d4  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000d36d8  mov     x1, x24
  1000d36dc  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000d36e0  mov     x29, x29
  1000d36e4  bl      _objc_retainAutoreleasedReturnValue
  1000d36e8  mov     x24, x0
  1000d36ec  mov     x1, x25
  1000d36f0  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] highScore]
  1000d36f4  mov     x2, x0
  1000d36f8  adrp    x8, #0x100418000
  1000d36fc  nop
  1000d3700  ldr     x1, [x8, #0x7b8]
  1000d3704  mov     x0, x19
  1000d3708  bl      _objc_msgSend                            ; [self formattedScoreFromInt:[[ADPersistentStats persistentStats] highScore]]
  1000d370c  mov     x29, x29
  1000d3710  bl      _objc_retainAutoreleasedReturnValue
  1000d3714  mov     x25, x0
  1000d3718  adrp    x8, #0x100416000
  1000d371c  nop
  1000d3720  ldr     x1, [x8, #0xee8]
  1000d3724  str     x25, [sp]
  1000d3728  adrp    x2, #0x1003c2000
  1000d372c  add     x2, x2, #0x550                           ; @"HIGH SCORE : %@"
  1000d3730  mov     x0, x26
  1000d3734  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"HIGH SCORE : %@", [self formattedScoreFromInt:[[ADPersistentStats persistentStats] highScore]]]
  1000d3738  mov     x29, x29
  1000d373c  bl      _objc_retainAutoreleasedReturnValue
  1000d3740  mov     x21, x0
  1000d3744  mov     x0, x23
  1000d3748  ldr     x20, [sp, #0x28]
  1000d374c  mov     x1, x20
  1000d3750  mov     x2, x21
  1000d3754  bl      _objc_msgSend                            ; [[self highScoreLabel] setText:[NSString stringWithFormat:@"HIGH SCORE : %@", [self formattedScoreFromInt:[[ADPersistentStats persistentStats] highScore]]]]
  1000d3758  mov     x0, x21
  1000d375c  bl      _objc_release
  1000d3760  mov     x0, x25
  1000d3764  bl      _objc_release
  1000d3768  mov     x0, x24
  1000d376c  bl      _objc_release
  1000d3770  mov     x0, x23
loc_1000d3774:
  1000d3774  bl      _objc_release
loc_1000d3778:
  1000d3778  adrp    x8, #0x10041d000
  1000d377c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000d3780  adrp    x8, #0x100416000
  1000d3784  nop
  1000d3788  ldr     x1, [x8, #0xb28]
  1000d378c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000d3790  mov     x29, x29
  1000d3794  bl      _objc_retainAutoreleasedReturnValue
  1000d3798  mov     x23, x0
  1000d379c  adrp    x8, #0x100416000
  1000d37a0  nop
  1000d37a4  ldr     x1, [x8, #0xc18]
  1000d37a8  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000d37ac  mov     x29, x29
  1000d37b0  bl      _objc_retainAutoreleasedReturnValue
  1000d37b4  mov     x22, x0
  1000d37b8  adrp    x8, #0x100419000
  1000d37bc  nop
  1000d37c0  ldr     x1, [x8, #0xd88]
  1000d37c4  adrp    x2, #0x1003bf000
  1000d37c8  add     x2, x2, #0x810                           ; @"game_over_theme"
  1000d37cc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] startMenuMusic:@"game_over_theme"]
  1000d37d0  mov     x0, x22
  1000d37d4  bl      _objc_release
  1000d37d8  mov     x0, x23
  1000d37dc  bl      _objc_release
  1000d37e0  adrp    x8, #0x10041a000
  1000d37e4  nop
  1000d37e8  ldr     x1, [x8, #0x1a8]
  1000d37ec  mov     x0, x19
  1000d37f0  bl      _objc_msgSend                            ; [self resetCardsModifiersIfNeeded]
  1000d37f4  adrp    x8, #0x10041d000
  1000d37f8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000d37fc  adrp    x8, #0x100417000
  1000d3800  nop
  1000d3804  ldr     x1, [x8, #0xa0]
  1000d3808  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000d380c  mov     x29, x29
  1000d3810  bl      _objc_retainAutoreleasedReturnValue
  1000d3814  mov     x23, x0
  1000d3818  adrp    x8, #0x10041a000
  1000d381c  nop
  1000d3820  ldr     x1, [x8, #0xdd8]
  1000d3824  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] numberOfWeaponsAvailableForSale]
  1000d3828  mov     x22, x0
  1000d382c  mov     x0, x23
  1000d3830  bl      _objc_release
  1000d3834  adrp    x8, #0x10041a000
  1000d3838  nop
  1000d383c  ldr     x1, [x8, #0xde0]
  1000d3840  mov     x0, x19
  1000d3844  bl      _objc_msgSend                            ; [self unlockableWeaponsLabel]
  1000d3848  mov     x29, x29
  1000d384c  bl      _objc_retainAutoreleasedReturnValue
  1000d3850  mov     x23, x0
  1000d3854  cbz     w22, loc_1000d38a4                       ; if ([[ADWeaponManager sharedWeaponManager] numberOfWeaponsAvailableForSale] == 0)
  1000d3858  adrp    x8, #0x10041d000
  1000d385c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d3860  adrp    x8, #0x100416000
  1000d3864  nop
  1000d3868  ldr     x1, [x8, #0xee8]
  1000d386c  str     x22, [sp]
  1000d3870  adrp    x2, #0x1003ba000
  1000d3874  add     x2, x2, #0xc50                           ; @"%i"
  1000d3878  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADWeaponManager sharedWeaponManager] numberOfWeaponsAvailableForSale]]
  1000d387c  mov     x29, x29
  1000d3880  bl      _objc_retainAutoreleasedReturnValue
  1000d3884  mov     x21, x0
  1000d3888  mov     x0, x23
  1000d388c  mov     x1, x20
  1000d3890  mov     x2, x21
  1000d3894  bl      _objc_msgSend                            ; [[self unlockableWeaponsLabel] setText:[NSString stringWithFormat:@"%i", [[ADWeaponManager sharedWeaponManager] numberOfWeaponsAvailableForSale]]]
  1000d3898  mov     x0, x21
  1000d389c  bl      _objc_release
  1000d38a0  b       loc_1000d38b4
loc_1000d38a4:
  1000d38a4  mov     w2, #1
  1000d38a8  mov     x0, x23
  1000d38ac  ldr     x1, [sp, #0x18]
  1000d38b0  bl      _objc_msgSend                            ; [[self unlockableWeaponsLabel] setHidden:1]
loc_1000d38b4:
  1000d38b4  mov     x0, x23
  1000d38b8  bl      _objc_release
  1000d38bc  adrp    x8, #0x100418000
  1000d38c0  nop
  1000d38c4  ldr     x20, [x8, #0x838]
  1000d38c8  mov     x0, x19
  1000d38cc  mov     x1, x20
  1000d38d0  bl      _objc_msgSend                            ; [self contentScrollView]
  1000d38d4  mov     x29, x29
  1000d38d8  bl      _objc_retainAutoreleasedReturnValue
  1000d38dc  mov     x21, x0
  1000d38e0  mov     x0, x19
  1000d38e4  mov     x1, x20
  1000d38e8  bl      _objc_msgSend                            ; [self contentScrollView]
  1000d38ec  mov     x29, x29
  1000d38f0  bl      _objc_retainAutoreleasedReturnValue
  1000d38f4  mov     x22, x0
  1000d38f8  adrp    x8, #0x100416000
  1000d38fc  nop
  1000d3900  ldr     x1, [x8, #0xf38]
  1000d3904  bl      _objc_msgSend                            ; [[self contentScrollView] frame]
  1000d3908  ldr     x20, [sp, #0x20]
  1000d390c  adrp    x8, #0x100418000
  1000d3910  nop
  1000d3914  ldr     x1, [x8, #0x4f8]
  1000d3918  movi    v1.16b, #0
  1000d391c  mov     w2, #1
  1000d3920  mov     x0, x21
  1000d3924  mov     v0.16b, v2.16b
  1000d3928  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{[[self contentScrollView] frame].2, 0} animated:1]
  1000d392c  mov     x0, x22
  1000d3930  bl      _objc_release
  1000d3934  mov     x0, x21
  1000d3938  bl      _objc_release
  1000d393c  adrp    x8, #0x10041e000
  1000d3940  ldr     x0, [x8, #0x50]                          ; class UIDevice
  1000d3944  adrp    x8, #0x100417000
  1000d3948  nop
  1000d394c  ldr     x1, [x8, #0x788]
  1000d3950  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d3954  mov     x29, x29
  1000d3958  bl      _objc_retainAutoreleasedReturnValue
  1000d395c  mov     x21, x0
  1000d3960  adrp    x8, #0x100418000
  1000d3964  nop
  1000d3968  ldr     x1, [x8, #0xa90]
  1000d396c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  1000d3970  mov     x29, x29
  1000d3974  bl      _objc_retainAutoreleasedReturnValue
  1000d3978  mov     x22, x0
  1000d397c  adrp    x8, #0x100417000
  1000d3980  nop
  1000d3984  ldr     x1, [x8, #0x48]
  1000d3988  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] floatValue]
  1000d398c  mov     v8.16b, v0.16b
  1000d3990  mov     x0, x22
  1000d3994  bl      _objc_release
  1000d3998  mov     x0, x21
  1000d399c  bl      _objc_release
  1000d39a0  fmov    s0, #7.00000000
  1000d39a4  fcmp    s8, s0
  1000d39a8  b.lt    loc_1000d39c0                            ; if ([[[UIDevice currentDevice] systemVersion] floatValue] < (or unordered) 7)
  1000d39ac  adrp    x8, #0x100418000
  1000d39b0  nop
  1000d39b4  ldr     x1, [x8, #0xa28]
  1000d39b8  mov     x0, x19
  1000d39bc  bl      _objc_msgSend                            ; [self reportScoreToGameCenter]
loc_1000d39c0:
  1000d39c0  adrp    x8, #0x10041d000
  1000d39c4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000d39c8  adrp    x8, #0x100416000
  1000d39cc  nop
  1000d39d0  ldr     x1, [x8, #0xac0]
  1000d39d4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000d39d8  mov     x29, x29
  1000d39dc  bl      _objc_retainAutoreleasedReturnValue
  1000d39e0  mov     x22, x0
  1000d39e4  adrp    x8, #0x100417000
  1000d39e8  nop
  1000d39ec  ldr     x1, [x8, #0x2f8]
  1000d39f0  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000d39f4  mov     x29, x29
  1000d39f8  bl      _objc_retainAutoreleasedReturnValue
  1000d39fc  mov     x24, x0
  1000d3a00  mov     x0, x22
  1000d3a04  bl      _objc_release
  1000d3a08  adrp    x8, #0x1003b8000
  1000d3a0c  add     x8, x8, #0x398                           ; &d_1003b8398
  1000d3a10  ldr     x2, [x8]                                 ; [&d_1003b8398] -> @"&sc"
  1000d3a14  adrp    x8, #0x100417000
  1000d3a18  nop
  1000d3a1c  ldr     x1, [x8, #0x300]
  1000d3a20  adrp    x3, #0x1003c2000
  1000d3a24  add     x3, x3, #0x570                           ; @"end"
  1000d3a28  mov     x0, x24
  1000d3a2c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&sc" value:@"end"]
  1000d3a30  stp     xzr, xzr, [sp, #0xb8]
  1000d3a34  stp     xzr, xzr, [sp, #0xa8]
  1000d3a38  stp     xzr, xzr, [sp, #0x98]
  1000d3a3c  stp     xzr, xzr, [sp, #0x88]
  1000d3a40  adrp    x8, #0x100418000
  1000d3a44  nop
  1000d3a48  ldr     x1, [x8, #0x850]
  1000d3a4c  mov     x0, x19
  1000d3a50  bl      _objc_msgSend                            ; [self missionView]
  1000d3a54  mov     x21, x20
  1000d3a58  mov     x29, x29
  1000d3a5c  bl      _objc_retainAutoreleasedReturnValue
  1000d3a60  mov     x23, x0
  1000d3a64  adrp    x8, #0x100417000
  1000d3a68  nop
  1000d3a6c  ldr     x1, [x8, #0x1c8]
  1000d3a70  bl      _objc_msgSend                            ; [[self missionView] subviews]
  1000d3a74  str     x24, [sp, #0x30]
  1000d3a78  mov     x29, x29
  1000d3a7c  bl      _objc_retainAutoreleasedReturnValue
  1000d3a80  mov     x22, x0
  1000d3a84  mov     x0, x23
  1000d3a88  bl      _objc_release
  1000d3a8c  adrp    x8, #0x100416000
  1000d3a90  nop
  1000d3a94  ldr     x23, [x8, #0xe00]
  1000d3a98  add     x2, sp, #0x88
  1000d3a9c  add     x3, sp, #0xd8
  1000d3aa0  mov     w4, #0x10
  1000d3aa4  mov     x0, x22
  1000d3aa8  mov     x1, x23
  1000d3aac  bl      _objc_msgSend                            ; [[[self missionView] subviews] countByEnumeratingWithState:&sp[0x88] objects:&sp[0xd8] count:16]
  1000d3ab0  mov     x24, x0
  1000d3ab4  cbz     x24, loc_1000d3b34                       ; if ([[[self missionView] subviews] countByEnumeratingWithState:&sp[0x88] objects:&sp[0xd8] count:16] == 0)
  1000d3ab8  ldr     x8, [sp, #0x98]
  1000d3abc  ldr     x20, [x8]
  1000d3ac0  adrp    x8, #0x100417000
  1000d3ac4  add     x8, x8, #0x670                           ; &@selector(setTag:)
  1000d3ac8  ldr     x25, [x8]
  1000d3acc  mov     w26, #0x11d2
loc_1000d3ad0:
  1000d3ad0  mov     x27, #0
  1000d3ad4  sxtw    x28, w26
loc_1000d3ad8:
  1000d3ad8  ldr     x8, [sp, #0x98]
  1000d3adc  ldr     x8, [x8]
  1000d3ae0  cmp     x8, x20
  1000d3ae4  b.eq    loc_1000d3af0                            ; if (x8 == x20)
  1000d3ae8  mov     x0, x22
  1000d3aec  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self missionView] subviews])
loc_1000d3af0:
  1000d3af0  add     x2, x28, x27
  1000d3af4  ldr     x8, [sp, #0x90]
  1000d3af8  ldr     x0, [x8, x27, lsl #3]
  1000d3afc  mov     x1, x25
  1000d3b00  bl      _objc_msgSend                            ; [x0 setTag:(x28 + x27)]
  1000d3b04  add     x27, x27, #1
  1000d3b08  cmp     x27, x24
  1000d3b0c  b.lo    loc_1000d3ad8                            ; if ((x27 + 1) <u [[[self missionView] subviews] countByEnumeratingWithState:&sp[0x88] objects:&sp[0xd8] count:16])
  1000d3b10  add     x2, sp, #0x88
  1000d3b14  add     x3, sp, #0xd8
  1000d3b18  mov     w4, #0x10
  1000d3b1c  mov     x0, x22
  1000d3b20  mov     x1, x23
  1000d3b24  bl      _objc_msgSend                            ; [[[self missionView] subviews] countByEnumeratingWithState:&sp[0x88] objects:&sp[0xd8] count:16]
  1000d3b28  mov     x24, x0
  1000d3b2c  add     x26, x27, w26, sxtw
  1000d3b30  cbnz    x24, loc_1000d3ad0                       ; if ([[[self missionView] subviews] countByEnumeratingWithState:&sp[0x88] objects:&sp[0xd8] count:16] != 0)
loc_1000d3b34:
  1000d3b34  mov     x0, x22
  1000d3b38  bl      _objc_release
  1000d3b3c  mov     x0, x19
  1000d3b40  mov     x20, x21
  1000d3b44  mov     x1, x20
  1000d3b48  ldr     x24, [sp, #0x30]
  1000d3b4c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d3b50  mov     x29, x29
  1000d3b54  bl      _objc_retainAutoreleasedReturnValue
  1000d3b58  mov     x22, x0
  1000d3b5c  adrp    x8, #0x100418000
  1000d3b60  nop
  1000d3b64  ldr     x1, [x8, #0x3a8]
  1000d3b68  bl      _objc_msgSend                            ; [[self statusBarViewController] deactivateButtons]
  1000d3b6c  mov     x0, x22
  1000d3b70  bl      _objc_release
  1000d3b74  mov     x0, x19
  1000d3b78  mov     x1, x20
  1000d3b7c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d3b80  mov     x29, x29
  1000d3b84  bl      _objc_retainAutoreleasedReturnValue
  1000d3b88  mov     x20, x0
  1000d3b8c  adrp    x22, #0x1003b0000
  1000d3b90  ldr     x22, [x22, #0x118]                       ; __NSConcreteStackBlock
  1000d3b94  adr     x8, #0x1000d3e00                         ; &-[ADGameOverEndlessViewController viewDidLoad]_block_invoke
  1000d3b98  nop
  1000d3b9c  mov     w9, #-0x40000000
  1000d3ba0  adrp    x10, #0x1003b2000
  1000d3ba4  add     x10, x10, #0x990                         ; &d_1003b2990
  1000d3ba8  str     x22, [sp, #0x60]
  1000d3bac  stp     w9, wzr, [sp, #0x68]
  1000d3bb0  stp     x8, x10, [sp, #0x70]
  1000d3bb4  str     x19, [sp, #0x80]
  1000d3bb8  adrp    x8, #0x100418000
  1000d3bbc  nop
  1000d3bc0  ldr     x1, [x8, #0x9d8]
  1000d3bc4  add     x2, sp, #0x60
  1000d3bc8  bl      _objc_msgSend                            ; [[self statusBarViewController] setSlideViewCallBack:^{-[ADGameOverEndlessViewController viewDidLoad]_block_invoke captures +0x20=self, +0x68=self, +0x70=ADGameOverEndlessViewController}]
  1000d3bcc  mov     x0, x20
  1000d3bd0  bl      _objc_release
  1000d3bd4  mov     w1, #0x4d7c0000
  1000d3bd8  movk    w1, #0x6d01
  1000d3bdc  mov     x0, #0
  1000d3be0  bl      _dispatch_time                           ; dispatch_time(0, 0x4d7c6d01)
  1000d3be4  mov     x20, x0
  1000d3be8  str     x22, [sp, #0x38]
  1000d3bec  mov     w8, #-0x3e000000
  1000d3bf0  stp     w8, wzr, [sp, #0x40]
  1000d3bf4  adr     x8, #0x1000d3e14                         ; &-[ADGameOverEndlessViewController viewDidLoad]_block_invoke_2
  1000d3bf8  nop
  1000d3bfc  str     x8, [sp, #0x48]
  1000d3c00  adrp    x8, #0x1003b2000
  1000d3c04  add     x8, x8, #0x9b0                           ; &d_1003b29b0
  1000d3c08  str     x8, [sp, #0x50]
  1000d3c0c  mov     x0, x19
  1000d3c10  bl      _objc_retain
  1000d3c14  str     x0, [sp, #0x58]
  1000d3c18  adrp    x1, #0x1003b0000
  1000d3c1c  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000d3c20  add     x2, sp, #0x38
  1000d3c24  mov     x0, x20
  1000d3c28  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x4d7c6d01), __dispatch_main_q, ^{-[ADGameOverEndlessViewController viewDidLoad]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc0000000, +0x38=&-[ADGameOverEndlessViewController viewD…, +0x40=&d_1003b2990, +0x48=self})
  1000d3c2c  ldr     x0, [sp, #0x58]
  1000d3c30  bl      _objc_release
  1000d3c34  mov     x0, x24
  1000d3c38  bl      _objc_release
  1000d3c3c  ldur    x8, [x29, #-0x68]
  1000d3c40  adrp    x9, #0x1003b0000
  1000d3c44  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000d3c48  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000d3c4c  sub     x8, x9, x8
  1000d3c50  cbnz    x8, loc_1000d3c78                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d3c54  sub     sp, x29, #0x60
  1000d3c58  ldp     x29, x30, [sp, #0x60]
  1000d3c5c  ldp     x20, x19, [sp, #0x50]
  1000d3c60  ldp     x22, x21, [sp, #0x40]
  1000d3c64  ldp     x24, x23, [sp, #0x30]
  1000d3c68  ldp     x26, x25, [sp, #0x20]
  1000d3c6c  ldp     x28, x27, [sp, #0x10]
  1000d3c70  ldp     d9, d8, [sp], #0x70
  1000d3c74  ret
loc_1000d3c78:
  1000d3c78  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000d3c7c:
  1000d3c7c  mov     x19, x0
  1000d3c80  mov     x0, x22
  1000d3c84  bl      _objc_release
  1000d3c88  ldr     x24, [sp, #0x30]
loc_1000d3c8c:
  1000d3c8c  mov     x0, x24
loc_1000d3c90:
  1000d3c90  bl      _objc_release
  1000d3c94  mov     x0, x19
  1000d3c98  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d3c9c  b       loc_1000d3c7c
  1000d3ca0  mov     x19, x0
  1000d3ca4  b       loc_1000d3c8c
  1000d3ca8  mov     x19, x0
  1000d3cac  b       loc_1000d3d14
  1000d3cb0  b       loc_1000d3d38
  1000d3cb4  b       loc_1000d3d9c
  1000d3cb8  b       loc_1000d3d9c
  1000d3cbc  b       loc_1000d3d9c
  1000d3cc0  b       loc_1000d3db8
  1000d3cc4  b       loc_1000d3da8
  1000d3cc8  b       loc_1000d3d9c
  1000d3ccc  b       loc_1000d3d90
  1000d3cd0  b       loc_1000d3d9c
  1000d3cd4  b       loc_1000d3d9c
  1000d3cd8  b       loc_1000d3d9c
  1000d3cdc  b       loc_1000d3d9c
  1000d3ce0  b       loc_1000d3d9c
  1000d3ce4  b       loc_1000d3d9c
  1000d3ce8  b       loc_1000d3d9c
  1000d3cec  b       loc_1000d3d9c
  1000d3cf0  b       loc_1000d3d9c
  1000d3cf4  b       loc_1000d3d9c
  1000d3cf8  b       loc_1000d3d9c
  1000d3cfc  mov     x19, x0
  1000d3d00  b       loc_1000d3c8c
  1000d3d04  b       loc_1000d3d5c
  1000d3d08  mov     x19, x0
  1000d3d0c  mov     x0, x21
  1000d3d10  bl      _objc_release
loc_1000d3d14:
  1000d3d14  mov     x0, x28
  1000d3d18  b       loc_1000d3c90
  1000d3d1c  b       loc_1000d3db8
  1000d3d20  mov     x19, x0
  1000d3d24  mov     x0, x22
  1000d3d28  b       loc_1000d3de0
  1000d3d2c  b       loc_1000d3db8
  1000d3d30  b       loc_1000d3d9c
  1000d3d34  b       loc_1000d3d9c
loc_1000d3d38:
  1000d3d38  mov     x19, x0
  1000d3d3c  mov     x0, x22
  1000d3d40  bl      _objc_release
  1000d3d44  b       loc_1000d3da0
  1000d3d48  b       loc_1000d3d90
  1000d3d4c  mov     x19, x0
  1000d3d50  mov     x0, x23
  1000d3d54  b       loc_1000d3d70
  1000d3d58  b       loc_1000d3c7c
loc_1000d3d5c:
  1000d3d5c  mov     x19, x0
  1000d3d60  mov     x0, x22
  1000d3d64  b       loc_1000d3d70
  1000d3d68  mov     x19, x0
  1000d3d6c  mov     x0, x20
loc_1000d3d70:
  1000d3d70  bl      _objc_release
  1000d3d74  b       loc_1000d3c8c
  1000d3d78  mov     x19, x0
  1000d3d7c  b       loc_1000d3df8
  1000d3d80  b       loc_1000d3db8
  1000d3d84  mov     x19, x0
  1000d3d88  mov     x0, x21
  1000d3d8c  b       loc_1000d3de0
loc_1000d3d90:
  1000d3d90  mov     x19, x0
  1000d3d94  mov     x0, x22
  1000d3d98  b       loc_1000d3c90
loc_1000d3d9c:
  1000d3d9c  mov     x19, x0
loc_1000d3da0:
  1000d3da0  mov     x0, x21
  1000d3da4  b       loc_1000d3c90
loc_1000d3da8:
  1000d3da8  mov     x19, x0
  1000d3dac  b       loc_1000d3ddc
  1000d3db0  b       loc_1000d3db8
  1000d3db4  b       loc_1000d3db8
loc_1000d3db8:
  1000d3db8  mov     x19, x0
  1000d3dbc  b       loc_1000d3de4
  1000d3dc0  mov     x19, x0
  1000d3dc4  b       loc_1000d3dd4
  1000d3dc8  mov     x19, x0
  1000d3dcc  mov     x0, x21
  1000d3dd0  bl      _objc_release
loc_1000d3dd4:
  1000d3dd4  mov     x0, x25
  1000d3dd8  bl      _objc_release
loc_1000d3ddc:
  1000d3ddc  mov     x0, x24
loc_1000d3de0:
  1000d3de0  bl      _objc_release
loc_1000d3de4:
  1000d3de4  mov     x0, x23
  1000d3de8  b       loc_1000d3c90
  1000d3dec  mov     x19, x0
  1000d3df0  mov     x0, x22
  1000d3df4  bl      _objc_release
loc_1000d3df8:
  1000d3df8  mov     x0, x26
  1000d3dfc  b       loc_1000d3c90

; ======================================================================
; -[ADGameOverEndlessViewController viewDidLoad]_block_invoke
; address 0x1000d3e00  size 20  kind block
; ======================================================================
  1000d3e00  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000d3e04  adrp    x8, #0x100418000
  1000d3e08  nop
  1000d3e0c  ldr     x1, [x8, #0x9d0]
  1000d3e10  b       _objc_msgSend                            ; [self animateCoinsAndDiamonds]

; ======================================================================
; -[ADGameOverEndlessViewController viewDidLoad]_block_invoke_2
; address 0x1000d3e14  size 96  kind block
; ======================================================================
  1000d3e14  stp     x20, x19, [sp, #-0x20]!
  1000d3e18  stp     x29, x30, [sp, #0x10]
  1000d3e1c  add     x29, sp, #0x10
  1000d3e20  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000d3e24  adrp    x8, #0x100417000
  1000d3e28  nop
  1000d3e2c  ldr     x1, [x8, #0x2a8]
  1000d3e30  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d3e34  mov     x29, x29
  1000d3e38  bl      _objc_retainAutoreleasedReturnValue
  1000d3e3c  mov     x19, x0
  1000d3e40  adrp    x8, #0x100418000
  1000d3e44  nop
  1000d3e48  ldr     x1, [x8, #0x3c0]
  1000d3e4c  bl      _objc_msgSend                            ; [[self statusBarViewController] activateButtons]
  1000d3e50  mov     x0, x19
  1000d3e54  ldp     x29, x30, [sp, #0x10]
  1000d3e58  ldp     x20, x19, [sp], #0x20
  1000d3e5c  b       _objc_release
  1000d3e60  mov     x20, x0
  1000d3e64  mov     x0, x19
  1000d3e68  bl      _objc_release
  1000d3e6c  mov     x0, x20
  1000d3e70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000d3e74
; address 0x1000d3e74  size 8  kind sub
; ======================================================================
  1000d3e74  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000d3e78  b       _objc_retain

; ======================================================================
; sub_1000d3e7c
; address 0x1000d3e7c  size 8  kind sub
; ======================================================================
  1000d3e7c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000d3e80  b       _objc_release

; ======================================================================
; -[ADGameOverEndlessViewController loadView]
; address 0x1000d3e84  size 876  kind objc
; ======================================================================
  1000d3e84  stp     d9, d8, [sp, #-0x60]!
  1000d3e88  stp     x26, x25, [sp, #0x10]
  1000d3e8c  stp     x24, x23, [sp, #0x20]
  1000d3e90  stp     x22, x21, [sp, #0x30]
  1000d3e94  stp     x20, x19, [sp, #0x40]
  1000d3e98  stp     x29, x30, [sp, #0x50]
  1000d3e9c  add     x29, sp, #0x50
  1000d3ea0  mov     x19, x0
  1000d3ea4  adrp    x25, #0x10041e000
  1000d3ea8  ldr     x0, [x25, #0x50]                         ; class UIDevice
  1000d3eac  adrp    x8, #0x100417000
  1000d3eb0  nop
  1000d3eb4  ldr     x24, [x8, #0x788]
  1000d3eb8  mov     x1, x24
  1000d3ebc  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d3ec0  mov     x29, x29
  1000d3ec4  bl      _objc_retainAutoreleasedReturnValue
  1000d3ec8  mov     x20, x0
  1000d3ecc  adrp    x8, #0x100418000
  1000d3ed0  nop
  1000d3ed4  ldr     x22, [x8, #0x9e8]
  1000d3ed8  mov     x1, x22
  1000d3edc  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000d3ee0  mov     x29, x29
  1000d3ee4  bl      _objc_retainAutoreleasedReturnValue
  1000d3ee8  mov     x21, x0
  1000d3eec  adrp    x8, #0x100416000
  1000d3ef0  nop
  1000d3ef4  ldr     x23, [x8, #0xf58]
  1000d3ef8  adrp    x2, #0x1003bd000
  1000d3efc  add     x2, x2, #0x30                            ; @"iPhone"
  1000d3f00  mov     x1, x23
  1000d3f04  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000d3f08  tbz     w0, #0, loc_1000d3f20                    ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] & 1))
  1000d3f0c  mov     x0, x21
  1000d3f10  bl      _objc_release
  1000d3f14  mov     x0, x20
  1000d3f18  bl      _objc_release
  1000d3f1c  b       loc_1000d3f84
loc_1000d3f20:
  1000d3f20  ldr     x0, [x25, #0x50]                         ; class UIDevice
  1000d3f24  mov     x1, x24
  1000d3f28  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d3f2c  mov     x29, x29
  1000d3f30  bl      _objc_retainAutoreleasedReturnValue
  1000d3f34  mov     x24, x0
  1000d3f38  mov     x1, x22
  1000d3f3c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000d3f40  mov     x29, x29
  1000d3f44  bl      _objc_retainAutoreleasedReturnValue
  1000d3f48  mov     x22, x0
  1000d3f4c  adrp    x2, #0x1003bd000
  1000d3f50  add     x2, x2, #0x50                            ; @"iPod touch"
  1000d3f54  mov     x1, x23
  1000d3f58  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000d3f5c  mov     x23, x0
  1000d3f60  mov     x0, x22
  1000d3f64  bl      _objc_release
  1000d3f68  mov     x0, x24
  1000d3f6c  bl      _objc_release
  1000d3f70  mov     x0, x21
  1000d3f74  bl      _objc_release
  1000d3f78  mov     x0, x20
  1000d3f7c  bl      _objc_release
  1000d3f80  tbz     w23, #0, loc_1000d4064                   ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"] & 1))
loc_1000d3f84:
  1000d3f84  adrp    x24, #0x10041e000
  1000d3f88  ldr     x0, [x24, #0x28]                         ; class UIScreen
  1000d3f8c  adrp    x8, #0x100417000
  1000d3f90  nop
  1000d3f94  ldr     x22, [x8, #0x6e8]
  1000d3f98  mov     x1, x22
  1000d3f9c  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d3fa0  mov     x29, x29
  1000d3fa4  bl      _objc_retainAutoreleasedReturnValue
  1000d3fa8  mov     x20, x0
  1000d3fac  adrp    x8, #0x100418000
  1000d3fb0  nop
  1000d3fb4  ldr     x23, [x8, #0x9f0]
  1000d3fb8  adrp    x8, #0x100417000
  1000d3fbc  nop
  1000d3fc0  ldr     x1, [x8, #0xe90]
  1000d3fc4  mov     x2, x23
  1000d3fc8  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  1000d3fcc  mov     x8, x0
  1000d3fd0  ldr     x0, [x24, #0x28]                         ; class UIScreen
  1000d3fd4  cbz     w8, loc_1000d401c                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  1000d3fd8  mov     x1, x22
  1000d3fdc  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d3fe0  mov     x29, x29
  1000d3fe4  bl      _objc_retainAutoreleasedReturnValue
  1000d3fe8  mov     x21, x0
  1000d3fec  mov     x1, x23
  1000d3ff0  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000d3ff4  nop
  1000d3ff8  ldr     d0, #0x100181bd0                         ; d0 = -1704.0
  1000d3ffc  fadd    d0, d3, d0
  1000d4000  fabs    d0, d0
  1000d4004  adrp    x8, #0x100181000
  1000d4008  ldr     d8, [x8, #0xbc8]                         ; d8 = 2.22044605e-16
  1000d400c  fcmp    d0, d8
  1000d4010  b.pl    loc_1000d4098                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  1000d4014  mov     w23, #1
  1000d4018  b       loc_1000d40d8
loc_1000d401c:
  1000d401c  mov     x1, x22
  1000d4020  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d4024  mov     x29, x29
  1000d4028  bl      _objc_retainAutoreleasedReturnValue
  1000d402c  mov     x21, x0
  1000d4030  adrp    x8, #0x100417000
  1000d4034  nop
  1000d4038  ldr     x1, [x8, #0x748]
  1000d403c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  1000d4040  nop
  1000d4044  ldr     d0, #0x100181bc0                         ; d0 = -568.0
  1000d4048  fadd    d0, d3, d0
  1000d404c  fabs    d0, d0
  1000d4050  adrp    x8, #0x100181000
  1000d4054  ldr     d1, [x8, #0xbc8]                         ; d1 = 2.22044605e-16
  1000d4058  fcmp    d0, d1
  1000d405c  cset    w23, mi
  1000d4060  b       loc_1000d40d8
loc_1000d4064:
  1000d4064  adrp    x8, #0x100418000
  1000d4068  nop
  1000d406c  ldr     x1, [x8, #0xa00]
  1000d4070  adrp    x2, #0x1003bf000
  1000d4074  add     x2, x2, #0x7d0                           ; @"ADGameOverEndlessViewController"
  1000d4078  mov     x0, x19
  1000d407c  ldp     x29, x30, [sp, #0x50]
  1000d4080  ldp     x20, x19, [sp, #0x40]
  1000d4084  ldp     x22, x21, [sp, #0x30]
  1000d4088  ldp     x24, x23, [sp, #0x20]
  1000d408c  ldp     x26, x25, [sp, #0x10]
  1000d4090  ldp     d9, d8, [sp], #0x60
  1000d4094  b       _objc_msgSend                            ; [self loADIPadNib:@"ADGameOverEndlessViewController"]
loc_1000d4098:
  1000d4098  ldr     x0, [x24, #0x28]                         ; class UIScreen
  1000d409c  mov     x1, x22
  1000d40a0  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000d40a4  mov     x29, x29
  1000d40a8  bl      _objc_retainAutoreleasedReturnValue
  1000d40ac  mov     x22, x0
  1000d40b0  mov     x1, x23
  1000d40b4  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  1000d40b8  nop
  1000d40bc  ldr     d0, #0x100181bd8                         ; d0 = -1136.0
  1000d40c0  fadd    d0, d3, d0
  1000d40c4  fabs    d0, d0
  1000d40c8  fcmp    d0, d8
  1000d40cc  cset    w23, mi
  1000d40d0  mov     x0, x22
  1000d40d4  bl      _objc_release
loc_1000d40d8:
  1000d40d8  mov     x0, x21
  1000d40dc  bl      _objc_release
  1000d40e0  mov     x0, x20
  1000d40e4  bl      _objc_release
  1000d40e8  adrp    x8, #0x10041d000
  1000d40ec  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000d40f0  adrp    x8, #0x100416000
  1000d40f4  nop
  1000d40f8  ldr     x1, [x8, #0xb58]
  1000d40fc  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000d4100  mov     x29, x29
  1000d4104  bl      _objc_retainAutoreleasedReturnValue
  1000d4108  mov     x20, x0
  1000d410c  adrp    x8, #0x100418000
  1000d4110  add     x8, x8, #0x9f8                           ; &@selector(loadNibNamed:owner:options:)
  1000d4114  ldr     x1, [x8]
  1000d4118  cbz     w23, loc_1000d413c                       ; if (w23 == 0)
  1000d411c  mov     x4, #0
  1000d4120  adrp    x2, #0x1003c2000
  1000d4124  add     x2, x2, #0x590                           ; @"ADGameOverEndlessViewController_iPhone5"
  1000d4128  mov     x0, x20
  1000d412c  mov     x3, x19
  1000d4130  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADGameOverEndlessViewController_iPhone5" owner:self options:0]
  1000d4134  mov     x29, x29
  1000d4138  b       loc_1000d4158
loc_1000d413c:
  1000d413c  mov     x4, #0
  1000d4140  adrp    x2, #0x1003c2000
  1000d4144  add     x2, x2, #0x5b0                           ; @"ADGameOverEndlessViewController_iPhone4S"
  1000d4148  mov     x0, x20
  1000d414c  mov     x3, x19
  1000d4150  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADGameOverEndlessViewController_iPhone4S" owner:self options:0]
  1000d4154  mov     x29, x29
loc_1000d4158:
  1000d4158  bl      _objc_retainAutoreleasedReturnValue
  1000d415c  bl      _objc_release
  1000d4160  mov     x0, x20
  1000d4164  ldp     x29, x30, [sp, #0x50]
  1000d4168  ldp     x20, x19, [sp, #0x40]
  1000d416c  ldp     x22, x21, [sp, #0x30]
  1000d4170  ldp     x24, x23, [sp, #0x20]
  1000d4174  ldp     x26, x25, [sp, #0x10]
  1000d4178  ldp     d9, d8, [sp], #0x60
  1000d417c  b       _objc_release
  1000d4180  mov     x19, x0
  1000d4184  b       loc_1000d41d8
  1000d4188  b       loc_1000d41c4
  1000d418c  b       loc_1000d41c4
  1000d4190  mov     x19, x0
  1000d4194  b       loc_1000d41d8
  1000d4198  mov     x19, x0
  1000d419c  b       loc_1000d41ac
  1000d41a0  mov     x19, x0
  1000d41a4  mov     x0, x22
  1000d41a8  bl      _objc_release
loc_1000d41ac:
  1000d41ac  mov     x0, x24
  1000d41b0  b       loc_1000d41d4
  1000d41b4  b       loc_1000d41c4
  1000d41b8  mov     x19, x0
  1000d41bc  b       loc_1000d41d8
  1000d41c0  b       loc_1000d41c4
loc_1000d41c4:
  1000d41c4  mov     x19, x0
  1000d41c8  b       loc_1000d41e0
  1000d41cc  mov     x19, x0
  1000d41d0  mov     x0, x22
loc_1000d41d4:
  1000d41d4  bl      _objc_release
loc_1000d41d8:
  1000d41d8  mov     x0, x21
  1000d41dc  bl      _objc_release
loc_1000d41e0:
  1000d41e0  mov     x0, x20
  1000d41e4  bl      _objc_release
  1000d41e8  mov     x0, x19
  1000d41ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController viewDidAppear:]
; address 0x1000d41f0  size 92  kind objc
; ======================================================================
  1000d41f0  stp     x20, x19, [sp, #-0x20]!
  1000d41f4  stp     x29, x30, [sp, #0x10]
  1000d41f8  add     x29, sp, #0x10
  1000d41fc  sub     sp, sp, #0x10
  1000d4200  mov     x19, x0
  1000d4204  str     x19, [sp]
  1000d4208  adrp    x8, #0x10041e000
  1000d420c  ldr     x8, [x8, #0xfd0]
  1000d4210  str     x8, [sp, #8]
  1000d4214  adrp    x8, #0x100417000
  1000d4218  nop
  1000d421c  ldr     x1, [x8, #0x938]
  1000d4220  mov     x0, sp
  1000d4224  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  1000d4228  adrp    x8, #0x10041a000
  1000d422c  nop
  1000d4230  ldr     x1, [x8, #0xde8]
  1000d4234  mov     x0, x19
  1000d4238  bl      _objc_msgSend                            ; [self positionView]
  1000d423c  sub     sp, x29, #0x10
  1000d4240  ldp     x29, x30, [sp, #0x10]
  1000d4244  ldp     x20, x19, [sp], #0x20
  1000d4248  ret

; ======================================================================
; -[ADGameOverEndlessViewController viewWillAppear:]
; address 0x1000d424c  size 92  kind objc
; ======================================================================
  1000d424c  stp     x20, x19, [sp, #-0x20]!
  1000d4250  stp     x29, x30, [sp, #0x10]
  1000d4254  add     x29, sp, #0x10
  1000d4258  sub     sp, sp, #0x10
  1000d425c  mov     x19, x0
  1000d4260  str     x19, [sp]
  1000d4264  adrp    x8, #0x10041e000
  1000d4268  ldr     x8, [x8, #0xfd0]
  1000d426c  str     x8, [sp, #8]
  1000d4270  adrp    x8, #0x100417000
  1000d4274  nop
  1000d4278  ldr     x1, [x8, #0x928]
  1000d427c  mov     x0, sp
  1000d4280  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  1000d4284  adrp    x8, #0x10041a000
  1000d4288  nop
  1000d428c  ldr     x1, [x8, #0xde8]
  1000d4290  mov     x0, x19
  1000d4294  bl      _objc_msgSend                            ; [self positionView]
  1000d4298  sub     sp, x29, #0x10
  1000d429c  ldp     x29, x30, [sp, #0x10]
  1000d42a0  ldp     x20, x19, [sp], #0x20
  1000d42a4  ret

; ======================================================================
; -[ADGameOverEndlessViewController resetCardsModifiersIfNeeded]
; address 0x1000d42a8  size 392  kind objc
; ======================================================================
  1000d42a8  stp     d9, d8, [sp, #-0x60]!
  1000d42ac  stp     x26, x25, [sp, #0x10]
  1000d42b0  stp     x24, x23, [sp, #0x20]
  1000d42b4  stp     x22, x21, [sp, #0x30]
  1000d42b8  stp     x20, x19, [sp, #0x40]
  1000d42bc  stp     x29, x30, [sp, #0x50]
  1000d42c0  add     x29, sp, #0x50
  1000d42c4  sub     sp, sp, #0x10
  1000d42c8  adrp    x8, #0x10041d000
  1000d42cc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000d42d0  adrp    x8, #0x100417000
  1000d42d4  nop
  1000d42d8  ldr     x1, [x8, #0x228]
  1000d42dc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000d42e0  mov     x29, x29
  1000d42e4  bl      _objc_retainAutoreleasedReturnValue
  1000d42e8  mov     x19, x0
  1000d42ec  adrp    x8, #0x100417000
  1000d42f0  nop
  1000d42f4  ldr     x1, [x8, #0xdc0]
  1000d42f8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] timeElapsed]
  1000d42fc  mov     v8.16b, v0.16b
  1000d4300  mov     x0, x19
  1000d4304  bl      _objc_release
  1000d4308  adrp    x8, #0x100181000
  1000d430c  ldr     d0, [x8, #0xa08]                         ; d0 = 60.0
  1000d4310  fcmp    d8, d0
  1000d4314  b.le    loc_1000d43e4                            ; if ([[ADInGameStats singleton] timeElapsed] <= (or unordered) 60)
  1000d4318  adrp    x8, #0x10041d000
  1000d431c  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000d4320  adrp    x8, #0x100416000
  1000d4324  nop
  1000d4328  ldr     x1, [x8, #0xd98]
  1000d432c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000d4330  mov     x29, x29
  1000d4334  bl      _objc_retainAutoreleasedReturnValue
  1000d4338  mov     x19, x0
  1000d433c  adrp    x8, #0x100416000
  1000d4340  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  1000d4344  adrp    x9, #0x100418000
  1000d4348  add     x9, x9, #0x318                           ; &@selector(setValue:forKey:)
  1000d434c  ldr     x20, [x8]
  1000d4350  ldr     x21, [x9]
  1000d4354  mov     w24, #1
  1000d4358  adrp    x25, #0x10041d000
  1000d435c  adrp    x22, #0x1003bc000
  1000d4360  add     x22, x22, #0x3b0                         ; @"tarotCard%i"
loc_1000d4364:
  1000d4364  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000d4368  str     x24, [sp]
  1000d436c  mov     x1, x20
  1000d4370  mov     x2, x22
  1000d4374  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"tarotCard%i", sp[0]]
  1000d4378  mov     x29, x29
  1000d437c  bl      _objc_retainAutoreleasedReturnValue
  1000d4380  mov     x23, x0
  1000d4384  mov     x2, #0
  1000d4388  mov     x0, x19
  1000d438c  mov     x1, x21
  1000d4390  mov     x3, x23
  1000d4394  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setValue:0 forKey:[NSString stringWithFormat:@"tarotCard%i", sp[0]]]
  1000d4398  mov     x0, x23
  1000d439c  bl      _objc_release
  1000d43a0  add     w24, w24, #1
  1000d43a4  cmp     w24, #4
  1000d43a8  b.lt    loc_1000d4364                            ; if ((w24 + 1) < 4)
  1000d43ac  adrp    x8, #0x100416000
  1000d43b0  nop
  1000d43b4  ldr     x1, [x8, #0xdd8]
  1000d43b8  mov     x0, x19
  1000d43bc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000d43c0  mov     x0, x19
  1000d43c4  sub     sp, x29, #0x50
  1000d43c8  ldp     x29, x30, [sp, #0x50]
  1000d43cc  ldp     x20, x19, [sp, #0x40]
  1000d43d0  ldp     x22, x21, [sp, #0x30]
  1000d43d4  ldp     x24, x23, [sp, #0x20]
  1000d43d8  ldp     x26, x25, [sp, #0x10]
  1000d43dc  ldp     d9, d8, [sp], #0x60
  1000d43e0  b       _objc_release
loc_1000d43e4:
  1000d43e4  sub     sp, x29, #0x50
  1000d43e8  ldp     x29, x30, [sp, #0x50]
  1000d43ec  ldp     x20, x19, [sp, #0x40]
  1000d43f0  ldp     x22, x21, [sp, #0x30]
  1000d43f4  ldp     x24, x23, [sp, #0x20]
  1000d43f8  ldp     x26, x25, [sp, #0x10]
  1000d43fc  ldp     d9, d8, [sp], #0x60
  1000d4400  ret
loc_1000d4404:
  1000d4404  mov     x20, x0
  1000d4408  b       loc_1000d4418
  1000d440c  mov     x20, x0
  1000d4410  mov     x0, x23
  1000d4414  bl      _objc_release
loc_1000d4418:
  1000d4418  mov     x0, x19
  1000d441c  bl      _objc_release
  1000d4420  mov     x0, x20
  1000d4424  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d4428  b       loc_1000d4404
  1000d442c  b       loc_1000d4404

; ======================================================================
; -[ADGameOverEndlessViewController backButtonPressed]
; address 0x1000d4430  size 160  kind objc
; ======================================================================
  1000d4430  stp     x22, x21, [sp, #-0x30]!
  1000d4434  stp     x20, x19, [sp, #0x10]
  1000d4438  stp     x29, x30, [sp, #0x20]
  1000d443c  add     x29, sp, #0x20
  1000d4440  adrp    x8, #0x10041d000
  1000d4444  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000d4448  adrp    x8, #0x100416000
  1000d444c  nop
  1000d4450  ldr     x1, [x8, #0xb28]
  1000d4454  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000d4458  mov     x29, x29
  1000d445c  bl      _objc_retainAutoreleasedReturnValue
  1000d4460  mov     x19, x0
  1000d4464  adrp    x8, #0x100416000
  1000d4468  nop
  1000d446c  ldr     x1, [x8, #0xc18]
  1000d4470  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000d4474  mov     x29, x29
  1000d4478  bl      _objc_retainAutoreleasedReturnValue
  1000d447c  mov     x20, x0
  1000d4480  adrp    x8, #0x100416000
  1000d4484  nop
  1000d4488  ldr     x1, [x8, #0xc10]
  1000d448c  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  1000d4490  mov     x0, x20
  1000d4494  bl      _objc_release
  1000d4498  mov     x0, x19
  1000d449c  ldp     x29, x30, [sp, #0x20]
  1000d44a0  ldp     x20, x19, [sp, #0x10]
  1000d44a4  ldp     x22, x21, [sp], #0x30
  1000d44a8  b       _objc_release
  1000d44ac  mov     x21, x0
  1000d44b0  b       loc_1000d44c0
  1000d44b4  mov     x21, x0
  1000d44b8  mov     x0, x20
  1000d44bc  bl      _objc_release
loc_1000d44c0:
  1000d44c0  mov     x0, x19
  1000d44c4  bl      _objc_release
  1000d44c8  mov     x0, x21
  1000d44cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController playAgainButtonPressed:]
; address 0x1000d44d0  size 164  kind objc
; ======================================================================
  1000d44d0  stp     x20, x19, [sp, #-0x20]!
  1000d44d4  stp     x29, x30, [sp, #0x10]
  1000d44d8  add     x29, sp, #0x10
  1000d44dc  adrp    x8, #0x10041d000
  1000d44e0  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000d44e4  adrp    x8, #0x100416000
  1000d44e8  nop
  1000d44ec  ldr     x1, [x8, #0xb28]
  1000d44f0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000d44f4  mov     x29, x29
  1000d44f8  bl      _objc_retainAutoreleasedReturnValue
  1000d44fc  mov     x19, x0
  1000d4500  adrp    x8, #0x100416000
  1000d4504  nop
  1000d4508  ldr     x1, [x8, #0xc18]
  1000d450c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000d4510  mov     x29, x29
  1000d4514  bl      _objc_retainAutoreleasedReturnValue
  1000d4518  mov     x20, x0
  1000d451c  adrp    x8, #0x100418000
  1000d4520  nop
  1000d4524  ldr     x1, [x8, #0x5c8]
  1000d4528  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToTarot]
  1000d452c  mov     x0, x20
  1000d4530  bl      _objc_release
  1000d4534  mov     x0, x19
  1000d4538  ldp     x29, x30, [sp, #0x10]
  1000d453c  ldp     x20, x19, [sp], #0x20
  1000d4540  b       _objc_release
  1000d4544  mov     x20, x0
  1000d4548  b       loc_1000d456c
  1000d454c  mov     x20, x0
  1000d4550  b       loc_1000d4564
  1000d4554  mov     x1, x20
  1000d4558  mov     x20, x0
  1000d455c  mov     x0, x1
  1000d4560  bl      _objc_release
loc_1000d4564:
  1000d4564  mov     x0, x19
  1000d4568  bl      _objc_release
loc_1000d456c:
  1000d456c  mov     x0, x20
  1000d4570  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController showGameStatistics:]
; address 0x1000d4574  size 172  kind objc
; ======================================================================
  1000d4574  stp     x20, x19, [sp, #-0x20]!
  1000d4578  stp     x29, x30, [sp, #0x10]
  1000d457c  add     x29, sp, #0x10
  1000d4580  mov     x19, x0
  1000d4584  adrp    x8, #0x10041e000
  1000d4588  ldr     x0, [x8, #0x1a0]                         ; class ADGameOverEndlessStatsViewController
  1000d458c  adrp    x8, #0x100416000
  1000d4590  nop
  1000d4594  ldr     x1, [x8, #0xac8]
  1000d4598  bl      _objc_msgSend                            ; [ADGameOverEndlessStatsViewController alloc]
  1000d459c  adrp    x8, #0x100416000
  1000d45a0  nop
  1000d45a4  ldr     x1, [x8, #0xb40]
  1000d45a8  mov     x3, #0
  1000d45ac  adrp    x2, #0x1003bd000
  1000d45b0  add     x2, x2, #0xd0                            ; @"ADGameOverEndlessStatsViewController"
  1000d45b4  bl      _objc_msgSend                            ; [[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0]
  1000d45b8  mov     x20, x0
  1000d45bc  adrp    x8, #0x100417000
  1000d45c0  nop
  1000d45c4  ldr     x1, [x8, #0x7d8]
  1000d45c8  mov     x0, x20
  1000d45cc  mov     x2, x19
  1000d45d0  bl      _objc_msgSend                            ; [[[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0] setDelegate:self]
  1000d45d4  adrp    x8, #0x100417000
  1000d45d8  nop
  1000d45dc  ldr     x1, [x8, #0x208]
  1000d45e0  mov     w3, #0
  1000d45e4  mov     x4, #0
  1000d45e8  mov     x0, x19
  1000d45ec  mov     x2, x20
  1000d45f0  bl      _objc_msgSend                            ; [self presentViewController:[[ADGameOverEndlessStatsViewController alloc] initWithNibName:@"ADGameOverEndlessStatsViewController" bundle:0] animated:0 completion:0]
  1000d45f4  mov     x0, x20
  1000d45f8  ldp     x29, x30, [sp, #0x10]
  1000d45fc  ldp     x20, x19, [sp], #0x20
  1000d4600  b       _objc_release
  1000d4604  mov     x19, x0
  1000d4608  b       loc_1000d4618
  1000d460c  mov     x19, x0
  1000d4610  mov     x0, x20
  1000d4614  bl      _objc_release
loc_1000d4618:
  1000d4618  mov     x0, x19
  1000d461c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController positionView]
; address 0x1000d4620  size 204  kind objc
; ======================================================================
  1000d4620  stp     x22, x21, [sp, #-0x30]!
  1000d4624  stp     x20, x19, [sp, #0x10]
  1000d4628  stp     x29, x30, [sp, #0x20]
  1000d462c  add     x29, sp, #0x20
  1000d4630  mov     x20, x0
  1000d4634  adrp    x0, #0x1003c2000
  1000d4638  add     x0, x0, #0x5d0                           ; @"About to check the missions"
  1000d463c  bl      _NSLog                                   ; NSLog(@"About to check the missions", _cmd)
  1000d4640  adrp    x8, #0x100418000
  1000d4644  nop
  1000d4648  ldr     x21, [x8, #0x838]
  1000d464c  mov     x0, x20
  1000d4650  mov     x1, x21
  1000d4654  bl      _objc_msgSend                            ; [self contentScrollView]
  1000d4658  mov     x29, x29
  1000d465c  bl      _objc_retainAutoreleasedReturnValue
  1000d4660  mov     x19, x0
  1000d4664  mov     x0, x20
  1000d4668  mov     x1, x21
  1000d466c  bl      _objc_msgSend                            ; [self contentScrollView]
  1000d4670  mov     x29, x29
  1000d4674  bl      _objc_retainAutoreleasedReturnValue
  1000d4678  mov     x20, x0
  1000d467c  adrp    x8, #0x100416000
  1000d4680  nop
  1000d4684  ldr     x1, [x8, #0xf38]
  1000d4688  bl      _objc_msgSend                            ; [[self contentScrollView] frame]
  1000d468c  adrp    x8, #0x100418000
  1000d4690  nop
  1000d4694  ldr     x1, [x8, #0x4f8]
  1000d4698  movi    v1.16b, #0
  1000d469c  mov     x0, x19
  1000d46a0  mov     v0.16b, v2.16b
  1000d46a4  mov     w2, #0
  1000d46a8  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{[[self contentScrollView] frame].2, 0} animated:0]
  1000d46ac  mov     x0, x20
  1000d46b0  bl      _objc_release
  1000d46b4  mov     x0, x19
  1000d46b8  ldp     x29, x30, [sp, #0x20]
  1000d46bc  ldp     x20, x19, [sp, #0x10]
  1000d46c0  ldp     x22, x21, [sp], #0x30
  1000d46c4  b       _objc_release
  1000d46c8  mov     x21, x0
  1000d46cc  mov     x0, x20
  1000d46d0  bl      _objc_release
  1000d46d4  b       loc_1000d46dc
  1000d46d8  mov     x21, x0
loc_1000d46dc:
  1000d46dc  mov     x0, x19
  1000d46e0  bl      _objc_release
  1000d46e4  mov     x0, x21
  1000d46e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController swipeLeft]
; address 0x1000d46ec  size 4  kind objc
; ======================================================================
  1000d46ec  ret

; ======================================================================
; -[ADGameOverEndlessViewController swipeRight]
; address 0x1000d46f0  size 4  kind objc
; ======================================================================
  1000d46f0  ret

; ======================================================================
; -[ADGameOverEndlessViewController reportScoreToGameCenter]
; address 0x1000d46f4  size 852  kind objc
; ======================================================================
  1000d46f4  stp     x26, x25, [sp, #-0x50]!
  1000d46f8  stp     x24, x23, [sp, #0x10]
  1000d46fc  stp     x22, x21, [sp, #0x20]
  1000d4700  stp     x20, x19, [sp, #0x30]
  1000d4704  stp     x29, x30, [sp, #0x40]
  1000d4708  add     x29, sp, #0x40
  1000d470c  sub     sp, sp, #0x20
  1000d4710  adrp    x23, #0x1003b0000
  1000d4714  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000d4718  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000d471c  str     x23, [sp, #0x18]
  1000d4720  adrp    x8, #0x10041e000
  1000d4724  ldr     x0, [x8, #0x50]                          ; class UIDevice
  1000d4728  adrp    x8, #0x100417000
  1000d472c  nop
  1000d4730  ldr     x1, [x8, #0x788]
  1000d4734  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000d4738  mov     x29, x29
  1000d473c  bl      _objc_retainAutoreleasedReturnValue
  1000d4740  mov     x19, x0
  1000d4744  adrp    x8, #0x100418000
  1000d4748  nop
  1000d474c  ldr     x1, [x8, #0xa90]
  1000d4750  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  1000d4754  mov     x29, x29
  1000d4758  bl      _objc_retainAutoreleasedReturnValue
  1000d475c  mov     x21, x0
  1000d4760  adrp    x8, #0x100418000
  1000d4764  nop
  1000d4768  ldr     x1, [x8, #0xa98]
  1000d476c  adrp    x2, #0x1003bd000
  1000d4770  add     x2, x2, #0xf0                            ; @"7.0.0"
  1000d4774  mov     w3, #0x40
  1000d4778  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64]
  1000d477c  mov     x20, x0
  1000d4780  mov     x0, x21
  1000d4784  bl      _objc_release
  1000d4788  mov     x0, x19
  1000d478c  bl      _objc_release
  1000d4790  cmn     x20, #1
  1000d4794  b.eq    loc_1000d49c4                            ; if ([[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64] == -1)
  1000d4798  adrp    x24, #0x10041e000
  1000d479c  ldr     x0, [x24, #0x1a8]                        ; class GKLocalPlayer
  1000d47a0  adrp    x8, #0x100418000
  1000d47a4  nop
  1000d47a8  ldr     x19, [x8, #0xaa0]
  1000d47ac  mov     x1, x19
  1000d47b0  bl      _objc_msgSend                            ; [GKLocalPlayer localPlayer]
  1000d47b4  mov     x29, x29
  1000d47b8  bl      _objc_retainAutoreleasedReturnValue
  1000d47bc  mov     x21, x0
  1000d47c0  adrp    x8, #0x100418000
  1000d47c4  nop
  1000d47c8  ldr     x20, [x8, #0xaa8]
  1000d47cc  mov     x1, x20
  1000d47d0  bl      _objc_msgSend                            ; [[GKLocalPlayer localPlayer] isAuthenticated]
  1000d47d4  mov     x22, x0
  1000d47d8  mov     x0, x21
  1000d47dc  bl      _objc_release
  1000d47e0  cbz     w22, loc_1000d48bc                       ; if ([[GKLocalPlayer localPlayer] isAuthenticated] == 0)
  1000d47e4  adrp    x25, #0x10041e000
  1000d47e8  ldr     x0, [x25, #0x1b0]                        ; class GKScore
  1000d47ec  adrp    x8, #0x100416000
  1000d47f0  nop
  1000d47f4  ldr     x1, [x8, #0xac8]
  1000d47f8  bl      _objc_msgSend                            ; [GKScore alloc]
  1000d47fc  adrp    x8, #0x100418000
  1000d4800  nop
  1000d4804  ldr     x1, [x8, #0xab0]
  1000d4808  adrp    x2, #0x1003be000
  1000d480c  add     x2, x2, #0xa30                           ; @"EndlessModeScoreLeaderboard"
  1000d4810  bl      _objc_msgSend                            ; [[GKScore alloc] initWithLeaderboardIdentifier:@"EndlessModeScoreLeaderboard"]
  1000d4814  mov     x21, x0
  1000d4818  adrp    x8, #0x10041d000
  1000d481c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000d4820  adrp    x8, #0x100417000
  1000d4824  nop
  1000d4828  ldr     x1, [x8, #0x228]
  1000d482c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000d4830  mov     x29, x29
  1000d4834  bl      _objc_retainAutoreleasedReturnValue
  1000d4838  mov     x22, x0
  1000d483c  adrp    x8, #0x100417000
  1000d4840  nop
  1000d4844  ldr     x1, [x8, #0xda0]
  1000d4848  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  1000d484c  mov     x2, x0
  1000d4850  adrp    x8, #0x100418000
  1000d4854  nop
  1000d4858  ldr     x1, [x8, #0x658]
  1000d485c  mov     x0, x21
  1000d4860  bl      _objc_msgSend                            ; [[[GKScore alloc] initWithLeaderboardIdentifier:@"EndlessModeScoreLeaderboard"] setValue:[[ADInGameStats singleton] gameScore]]
  1000d4864  mov     x0, x22
  1000d4868  bl      _objc_release
  1000d486c  ldr     x22, [x25, #0x1b0]                       ; class GKScore
  1000d4870  str     x21, [sp, #0x10]
  1000d4874  adrp    x8, #0x10041d000
  1000d4878  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000d487c  adrp    x8, #0x100417000
  1000d4880  nop
  1000d4884  ldr     x1, [x8, #0x3c8]
  1000d4888  add     x2, sp, #0x10
  1000d488c  mov     w3, #1
  1000d4890  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:1]
  1000d4894  mov     x2, x0
  1000d4898  adrp    x8, #0x100418000
  1000d489c  nop
  1000d48a0  ldr     x1, [x8, #0xac0]
  1000d48a4  adrp    x3, #0x1003b2000
  1000d48a8  add     x3, x3, #0xa00                           ; ^{-[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke}
  1000d48ac  mov     x0, x22
  1000d48b0  bl      _objc_msgSend                            ; [GKScore reportScores:[NSArray arrayWithObjects:&sp[0x10] count:1] withCompletionHandler:^{-[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke}]
  1000d48b4  mov     x0, x21
  1000d48b8  bl      _objc_release
loc_1000d48bc:
  1000d48bc  ldr     x0, [x24, #0x1a8]                        ; class GKLocalPlayer
  1000d48c0  mov     x1, x19
  1000d48c4  bl      _objc_msgSend                            ; [GKLocalPlayer localPlayer]
  1000d48c8  mov     x29, x29
  1000d48cc  bl      _objc_retainAutoreleasedReturnValue
  1000d48d0  mov     x19, x0
  1000d48d4  mov     x1, x20
  1000d48d8  bl      _objc_msgSend                            ; [[GKLocalPlayer localPlayer] isAuthenticated]
  1000d48dc  mov     x20, x0
  1000d48e0  mov     x0, x19
  1000d48e4  bl      _objc_release
  1000d48e8  cbz     w20, loc_1000d49c4                       ; if ([[GKLocalPlayer localPlayer] isAuthenticated] == 0)
  1000d48ec  adrp    x20, #0x10041e000
  1000d48f0  ldr     x0, [x20, #0x1b0]                        ; class GKScore
  1000d48f4  adrp    x8, #0x100416000
  1000d48f8  nop
  1000d48fc  ldr     x1, [x8, #0xac8]
  1000d4900  bl      _objc_msgSend                            ; [GKScore alloc]
  1000d4904  adrp    x8, #0x100418000
  1000d4908  nop
  1000d490c  ldr     x1, [x8, #0xab0]
  1000d4910  adrp    x2, #0x1003bd000
  1000d4914  add     x2, x2, #0x130                           ; @"TotalZombiesKilled"
  1000d4918  bl      _objc_msgSend                            ; [[GKScore alloc] initWithLeaderboardIdentifier:@"TotalZombiesKilled"]
  1000d491c  mov     x19, x0
  1000d4920  adrp    x8, #0x10041d000
  1000d4924  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000d4928  adrp    x8, #0x100416000
  1000d492c  nop
  1000d4930  ldr     x1, [x8, #0xe10]
  1000d4934  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000d4938  mov     x29, x29
  1000d493c  bl      _objc_retainAutoreleasedReturnValue
  1000d4940  mov     x21, x0
  1000d4944  adrp    x8, #0x100418000
  1000d4948  nop
  1000d494c  ldr     x1, [x8, #0xac8]
  1000d4950  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] computeTotalEnemyKillCount]
  1000d4954  mov     x2, x0
  1000d4958  adrp    x8, #0x100418000
  1000d495c  nop
  1000d4960  ldr     x1, [x8, #0x658]
  1000d4964  mov     x0, x19
  1000d4968  bl      _objc_msgSend                            ; [[[GKScore alloc] initWithLeaderboardIdentifier:@"TotalZombiesKilled"] setValue:[[ADPersistentStats persistentStats] computeTotalEnemyKillCount]]
  1000d496c  mov     x0, x21
  1000d4970  bl      _objc_release
  1000d4974  ldr     x20, [x20, #0x1b0]                       ; class GKScore
  1000d4978  str     x19, [sp, #8]
  1000d497c  adrp    x8, #0x10041d000
  1000d4980  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000d4984  adrp    x8, #0x100417000
  1000d4988  nop
  1000d498c  ldr     x1, [x8, #0x3c8]
  1000d4990  add     x2, sp, #8
  1000d4994  mov     w3, #1
  1000d4998  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:1]
  1000d499c  mov     x2, x0
  1000d49a0  adrp    x8, #0x100418000
  1000d49a4  nop
  1000d49a8  ldr     x1, [x8, #0xac0]
  1000d49ac  adrp    x3, #0x1003b2000
  1000d49b0  add     x3, x3, #0xa40                           ; ^{-[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke_2}
  1000d49b4  mov     x0, x20
  1000d49b8  bl      _objc_msgSend                            ; [GKScore reportScores:[NSArray arrayWithObjects:&sp[0x8] count:1] withCompletionHandler:^{-[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke_2}]
  1000d49bc  mov     x0, x19
  1000d49c0  bl      _objc_release
loc_1000d49c4:
  1000d49c4  ldr     x8, [sp, #0x18]
  1000d49c8  sub     x8, x23, x8
  1000d49cc  cbnz    x8, loc_1000d49ec                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d49d0  sub     sp, x29, #0x40
  1000d49d4  ldp     x29, x30, [sp, #0x40]
  1000d49d8  ldp     x20, x19, [sp, #0x30]
  1000d49dc  ldp     x22, x21, [sp, #0x20]
  1000d49e0  ldp     x24, x23, [sp, #0x10]
  1000d49e4  ldp     x26, x25, [sp], #0x50
  1000d49e8  ret
loc_1000d49ec:
  1000d49ec  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000d49f0  b       loc_1000d4a34
  1000d49f4  b       loc_1000d4a14
  1000d49f8  b       loc_1000d4a28
  1000d49fc  mov     x20, x0
  1000d4a00  mov     x0, x22
  1000d4a04  bl      _objc_release
  1000d4a08  b       loc_1000d4a2c
  1000d4a0c  b       loc_1000d4a28
  1000d4a10  b       loc_1000d4a34
loc_1000d4a14:
  1000d4a14  mov     x20, x0
  1000d4a18  mov     x0, x21
  1000d4a1c  bl      _objc_release
  1000d4a20  b       loc_1000d4a38
  1000d4a24  b       loc_1000d4a34
loc_1000d4a28:
  1000d4a28  mov     x20, x0
loc_1000d4a2c:
  1000d4a2c  mov     x0, x21
  1000d4a30  b       loc_1000d4a3c
loc_1000d4a34:
  1000d4a34  mov     x20, x0
loc_1000d4a38:
  1000d4a38  mov     x0, x19
loc_1000d4a3c:
  1000d4a3c  bl      _objc_release
  1000d4a40  mov     x0, x20
  1000d4a44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke
; address 0x1000d4a48  size 4  kind block
; ======================================================================
  1000d4a48  ret

; ======================================================================
; -[ADGameOverEndlessViewController reportScoreToGameCenter]_block_invoke_2
; address 0x1000d4a4c  size 4  kind block
; ======================================================================
  1000d4a4c  ret

; ======================================================================
; -[ADGameOverEndlessViewController twitterScreenshotButtonPressed:]
; address 0x1000d4a50  size 904  kind objc
; ======================================================================
  1000d4a50  stp     d9, d8, [sp, #-0x60]!
  1000d4a54  stp     x26, x25, [sp, #0x10]
  1000d4a58  stp     x24, x23, [sp, #0x20]
  1000d4a5c  stp     x22, x21, [sp, #0x30]
  1000d4a60  stp     x20, x19, [sp, #0x40]
  1000d4a64  stp     x29, x30, [sp, #0x50]
  1000d4a68  add     x29, sp, #0x50
  1000d4a6c  sub     sp, sp, #0x10
  1000d4a70  mov     x19, x0
  1000d4a74  adrp    x8, #0x10041a000
  1000d4a78  nop
  1000d4a7c  ldr     x20, [x8, #0xdf8]
  1000d4a80  mov     x1, x20
  1000d4a84  bl      _objc_msgSend                            ; [self viewForTwitterScreenshot]
  1000d4a88  mov     x29, x29
  1000d4a8c  bl      _objc_retainAutoreleasedReturnValue
  1000d4a90  mov     x21, x0
  1000d4a94  adrp    x8, #0x100417000
  1000d4a98  nop
  1000d4a9c  ldr     x1, [x8, #0x748]
  1000d4aa0  bl      _objc_msgSend                            ; [[self viewForTwitterScreenshot] bounds]
  1000d4aa4  mov     v8.16b, v2.16b
  1000d4aa8  mov     v9.16b, v3.16b
  1000d4aac  mov     x0, x21
  1000d4ab0  bl      _objc_release
  1000d4ab4  mov     w0, #1
  1000d4ab8  movi    v2.16b, #0
  1000d4abc  mov     v0.16b, v8.16b
  1000d4ac0  mov     v1.16b, v9.16b
  1000d4ac4  bl      _UIGraphicsBeginImageContextWithOptions  ; UIGraphicsBeginImageContextWithOptions(1)
  1000d4ac8  bl      _UIGraphicsGetCurrentContext             ; UIGraphicsGetCurrentContext(UIGraphicsBeginImageContextWithOptions(1))
  1000d4acc  mov     x21, x0
  1000d4ad0  mov     x0, x19
  1000d4ad4  mov     x1, x20
  1000d4ad8  bl      _objc_msgSend                            ; [self viewForTwitterScreenshot]
  1000d4adc  mov     x29, x29
  1000d4ae0  bl      _objc_retainAutoreleasedReturnValue
  1000d4ae4  mov     x20, x0
  1000d4ae8  adrp    x8, #0x100417000
  1000d4aec  nop
  1000d4af0  ldr     x1, [x8, #0x8f8]
  1000d4af4  bl      _objc_msgSend                            ; [[self viewForTwitterScreenshot] layer]
  1000d4af8  mov     x29, x29
  1000d4afc  bl      _objc_retainAutoreleasedReturnValue
  1000d4b00  mov     x22, x0
  1000d4b04  adrp    x8, #0x10041a000
  1000d4b08  nop
  1000d4b0c  ldr     x1, [x8, #0xe00]
  1000d4b10  mov     x2, x21
  1000d4b14  bl      _objc_msgSend                            ; [[[self viewForTwitterScreenshot] layer] renderInContext:UIGraphicsGetCurrentContext(UIGraphicsBeginImageContextWithOptions(1))]
  1000d4b18  mov     x0, x22
  1000d4b1c  bl      _objc_release
  1000d4b20  mov     x0, x20
  1000d4b24  bl      _objc_release
  1000d4b28  bl      _UIGraphicsGetImageFromCurrentImageContext ; UIGraphicsGetImageFromCurrentImageContext()
  1000d4b2c  mov     x29, x29
  1000d4b30  bl      _objc_retainAutoreleasedReturnValue
  1000d4b34  mov     x20, x0
  1000d4b38  bl      _UIGraphicsEndImageContext               ; UIGraphicsEndImageContext(UIGraphicsGetImageFromCurrentImageContext())
  1000d4b3c  adrp    x22, #0x10041e000
  1000d4b40  ldr     x0, [x22, #0x380]                        ; class SLComposeViewController
  1000d4b44  adrp    x8, #0x1003b0000
  1000d4b48  ldr     x8, [x8, #0xa8]                          ; _SLServiceTypeTwitter
  1000d4b4c  ldr     x21, [x8]                                ; x21 = _SLServiceTypeTwitter[+0x0]
  1000d4b50  adrp    x8, #0x10041a000
  1000d4b54  nop
  1000d4b58  ldr     x1, [x8, #0x1c8]
  1000d4b5c  mov     x2, x21
  1000d4b60  bl      _objc_msgSend                            ; [SLComposeViewController isAvailableForServiceType:_SLServiceTypeTwitter[+0x0]]
  1000d4b64  cbz     w0, loc_1000d4cc0                        ; if ([SLComposeViewController isAvailableForServiceType:_SLServiceTypeTwitter[+0x0]] == 0)
  1000d4b68  ldr     x0, [x22, #0x380]                        ; class SLComposeViewController
  1000d4b6c  adrp    x8, #0x10041a000
  1000d4b70  nop
  1000d4b74  ldr     x1, [x8, #0x1d0]
  1000d4b78  mov     x2, x21
  1000d4b7c  bl      _objc_msgSend                            ; [SLComposeViewController composeViewControllerForServiceType:_SLServiceTypeTwitter[+0x0]]
  1000d4b80  mov     x29, x29
  1000d4b84  bl      _objc_retainAutoreleasedReturnValue
  1000d4b88  mov     x21, x0
  1000d4b8c  adrp    x8, #0x10041d000
  1000d4b90  ldr     x24, [x8, #0xf78]                        ; class NSString
  1000d4b94  nop
  1000d4b98  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000d4b9c  adrp    x8, #0x100416000
  1000d4ba0  nop
  1000d4ba4  ldr     x1, [x8, #0xb58]
  1000d4ba8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000d4bac  mov     x29, x29
  1000d4bb0  bl      _objc_retainAutoreleasedReturnValue
  1000d4bb4  mov     x22, x0
  1000d4bb8  adrp    x8, #0x100416000
  1000d4bbc  nop
  1000d4bc0  ldr     x1, [x8, #0xb60]
  1000d4bc4  mov     x4, #0
  1000d4bc8  adrp    x2, #0x1003c2000
  1000d4bcc  add     x2, x2, #0x5f0                           ; @"TWITTER_SHARE"
  1000d4bd0  adrp    x3, #0x1003b9000
  1000d4bd4  add     x3, x3, #0x870                           ; @""
  1000d4bd8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TWITTER_SHARE" value:@"" table:0]
  1000d4bdc  mov     x29, x29
  1000d4be0  bl      _objc_retainAutoreleasedReturnValue
  1000d4be4  mov     x23, x0
  1000d4be8  adrp    x8, #0x10041d000
  1000d4bec  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000d4bf0  adrp    x8, #0x100417000
  1000d4bf4  nop
  1000d4bf8  ldr     x1, [x8, #0x228]
  1000d4bfc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000d4c00  mov     x29, x29
  1000d4c04  bl      _objc_retainAutoreleasedReturnValue
  1000d4c08  mov     x25, x0
  1000d4c0c  adrp    x8, #0x100417000
  1000d4c10  nop
  1000d4c14  ldr     x1, [x8, #0xda0]
  1000d4c18  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  1000d4c1c  adrp    x8, #0x100416000
  1000d4c20  nop
  1000d4c24  ldr     x1, [x8, #0xee8]
  1000d4c28  str     x0, [sp]
  1000d4c2c  mov     x0, x24
  1000d4c30  mov     x2, x23
  1000d4c34  bl      _objc_msgSend                            ; [NSString stringWithFormat:[[NSBundle mainBundle] localizedStringForKey:@"TWITTER_SHARE" value:@"" table:0]]
  1000d4c38  mov     x29, x29
  1000d4c3c  bl      _objc_retainAutoreleasedReturnValue
  1000d4c40  mov     x24, x0
  1000d4c44  adrp    x8, #0x10041a000
  1000d4c48  nop
  1000d4c4c  ldr     x1, [x8, #0x1d8]
  1000d4c50  mov     x0, x21
  1000d4c54  mov     x2, x24
  1000d4c58  bl      _objc_msgSend                            ; [[SLComposeViewController composeViewControllerForServiceType:_SLServiceTypeTwitter[+0x0]] setInitialText:[NSString stringWithFormat:[[NSBundle mainBundle] localizedStringForKey:@"TWITTER_SHARE" value:@"" table:0]]]
  1000d4c5c  mov     x0, x24
  1000d4c60  bl      _objc_release
  1000d4c64  mov     x0, x25
  1000d4c68  bl      _objc_release
  1000d4c6c  mov     x0, x23
  1000d4c70  bl      _objc_release
  1000d4c74  mov     x0, x22
  1000d4c78  bl      _objc_release
  1000d4c7c  adrp    x8, #0x10041a000
  1000d4c80  nop
  1000d4c84  ldr     x1, [x8, #0xe08]
  1000d4c88  mov     x0, x21
  1000d4c8c  mov     x2, x20
  1000d4c90  bl      _objc_msgSend                            ; [[SLComposeViewController composeViewControllerForServiceType:_SLServiceTypeTwitter[+0x0]] addImage:UIGraphicsGetImageFromCurrentImageContext()]
  1000d4c94  adrp    x8, #0x100417000
  1000d4c98  nop
  1000d4c9c  ldr     x1, [x8, #0x208]
  1000d4ca0  mov     w3, #1
  1000d4ca4  mov     x0, x19
  1000d4ca8  mov     x2, x21
  1000d4cac  mov     x4, #0
  1000d4cb0  bl      _objc_msgSend                            ; [self presentViewController:[SLComposeViewController composeViewControllerForServiceType:_SLServiceTypeTwitter[+0x0]] animated:1 completion:0]
  1000d4cb4  b       loc_1000d4d20
  1000d4cb8  mov     x19, x0
  1000d4cbc  b       loc_1000d4dc0
loc_1000d4cc0:
  1000d4cc0  adrp    x8, #0x10041e000
  1000d4cc4  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  1000d4cc8  adrp    x8, #0x100416000
  1000d4ccc  nop
  1000d4cd0  ldr     x1, [x8, #0xac8]
  1000d4cd4  bl      _objc_msgSend                            ; [UIAlertView alloc]
  1000d4cd8  adrp    x8, #0x100417000
  1000d4cdc  nop
  1000d4ce0  ldr     x1, [x8, #0x800]
  1000d4ce4  mov     x6, #0
  1000d4ce8  adrp    x2, #0x1003c0000
  1000d4cec  add     x2, x2, #0x5b0                           ; @"Twitter Sign-In"
  1000d4cf0  adrp    x3, #0x1003c2000
  1000d4cf4  add     x3, x3, #0x610                           ; @"Please sign into Twitter in your device's setting menu"
  1000d4cf8  adrp    x5, #0x1003ba000
  1000d4cfc  add     x5, x5, #0xaf0                           ; @"OK"
  1000d4d00  mov     x4, x19
  1000d4d04  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:@"Twitter Sign-In" message:@"Please sign into Twitter in your device's setting menu" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:0]
  1000d4d08  mov     x21, x0
  1000d4d0c  adrp    x8, #0x100417000
  1000d4d10  nop
  1000d4d14  ldr     x1, [x8, #0x810]
  1000d4d18  mov     x0, x21
  1000d4d1c  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:@"Twitter Sign-In" message:@"Please sign into Twitter in your device's setting menu" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:0] show]
loc_1000d4d20:
  1000d4d20  mov     x0, x21
  1000d4d24  bl      _objc_release
  1000d4d28  mov     x0, x20
  1000d4d2c  sub     sp, x29, #0x50
  1000d4d30  ldp     x29, x30, [sp, #0x50]
  1000d4d34  ldp     x20, x19, [sp, #0x40]
  1000d4d38  ldp     x22, x21, [sp, #0x30]
  1000d4d3c  ldp     x24, x23, [sp, #0x20]
  1000d4d40  ldp     x26, x25, [sp, #0x10]
  1000d4d44  ldp     d9, d8, [sp], #0x60
  1000d4d48  b       _objc_release
  1000d4d4c  mov     x19, x0
  1000d4d50  b       loc_1000d4dd0
  1000d4d54  b       loc_1000d4d64
  1000d4d58  mov     x19, x0
  1000d4d5c  mov     x0, x21
  1000d4d60  b       loc_1000d4dcc
loc_1000d4d64:
  1000d4d64  mov     x19, x0
  1000d4d68  b       loc_1000d4dc8
  1000d4d6c  mov     x19, x0
  1000d4d70  mov     x0, x22
  1000d4d74  bl      _objc_release
  1000d4d78  b       loc_1000d4dc8
  1000d4d7c  mov     x19, x0
  1000d4d80  b       loc_1000d4da0
  1000d4d84  mov     x19, x0
  1000d4d88  b       loc_1000d4db0
  1000d4d8c  mov     x19, x0
  1000d4d90  b       loc_1000d4da8
  1000d4d94  mov     x19, x0
  1000d4d98  mov     x0, x24
  1000d4d9c  bl      _objc_release
loc_1000d4da0:
  1000d4da0  mov     x0, x25
  1000d4da4  bl      _objc_release
loc_1000d4da8:
  1000d4da8  mov     x0, x23
  1000d4dac  bl      _objc_release
loc_1000d4db0:
  1000d4db0  mov     x0, x22
  1000d4db4  bl      _objc_release
  1000d4db8  b       loc_1000d4dc0
  1000d4dbc  mov     x19, x0
loc_1000d4dc0:
  1000d4dc0  mov     x0, x21
  1000d4dc4  bl      _objc_release
loc_1000d4dc8:
  1000d4dc8  mov     x0, x20
loc_1000d4dcc:
  1000d4dcc  bl      _objc_release
loc_1000d4dd0:
  1000d4dd0  mov     x0, x19
  1000d4dd4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController scoreReported:]
; address 0x1000d4dd8  size 4  kind objc
; ======================================================================
  1000d4dd8  ret

; ======================================================================
; -[ADGameOverEndlessViewController didReceiveMemoryWarning]
; address 0x1000d4ddc  size 60  kind objc
; ======================================================================
  1000d4ddc  stp     x29, x30, [sp, #-0x10]!
  1000d4de0  mov     x29, sp
  1000d4de4  sub     sp, sp, #0x10
  1000d4de8  str     x0, [sp]
  1000d4dec  adrp    x8, #0x10041e000
  1000d4df0  ldr     x8, [x8, #0xfd0]
  1000d4df4  str     x8, [sp, #8]
  1000d4df8  adrp    x8, #0x100416000
  1000d4dfc  nop
  1000d4e00  ldr     x1, [x8, #0xbf8]
  1000d4e04  mov     x0, sp
  1000d4e08  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000d4e0c  mov     sp, x29
  1000d4e10  ldp     x29, x30, [sp], #0x10
  1000d4e14  ret

; ======================================================================
; -[ADGameOverEndlessViewController dealloc]
; address 0x1000d4e18  size 284  kind objc
; ======================================================================
  1000d4e18  stp     x22, x21, [sp, #-0x30]!
  1000d4e1c  stp     x20, x19, [sp, #0x10]
  1000d4e20  stp     x29, x30, [sp, #0x20]
  1000d4e24  add     x29, sp, #0x20
  1000d4e28  sub     sp, sp, #0x20
  1000d4e2c  mov     x19, x0
  1000d4e30  adrp    x0, #0x1003c2000
  1000d4e34  add     x0, x0, #0x630                           ; @"Dealloc game over"
  1000d4e38  bl      _NSLog                                   ; NSLog(@"Dealloc game over", _cmd)
  1000d4e3c  adrp    x8, #0x10041d000
  1000d4e40  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000d4e44  adrp    x8, #0x100417000
  1000d4e48  nop
  1000d4e4c  ldr     x1, [x8, #0x4f0]
  1000d4e50  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000d4e54  mov     x29, x29
  1000d4e58  bl      _objc_retainAutoreleasedReturnValue
  1000d4e5c  mov     x20, x0
  1000d4e60  adrp    x8, #0x100417000
  1000d4e64  nop
  1000d4e68  ldr     x1, [x8, #0x4f8]
  1000d4e6c  adrp    x2, #0x1003ba000
  1000d4e70  add     x2, x2, #0xf90                           ; @"revive"
  1000d4e74  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"revive"]
  1000d4e78  mov     x29, x29
  1000d4e7c  bl      _objc_retainAutoreleasedReturnValue
  1000d4e80  mov     x21, x0
  1000d4e84  adrp    x8, #0x100417000
  1000d4e88  nop
  1000d4e8c  ldr     x1, [x8, #0x618]
  1000d4e90  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"revive"] deactivate]
  1000d4e94  mov     x0, x21
  1000d4e98  bl      _objc_release
  1000d4e9c  mov     x0, x20
  1000d4ea0  bl      _objc_release
  1000d4ea4  str     x19, [sp, #0x10]
  1000d4ea8  adrp    x8, #0x10041e000
  1000d4eac  ldr     x8, [x8, #0xfd0]
  1000d4eb0  str     x8, [sp, #0x18]
  1000d4eb4  adrp    x8, #0x100416000
  1000d4eb8  nop
  1000d4ebc  ldr     x1, [x8, #0xfc8]
  1000d4ec0  add     x0, sp, #0x10
  1000d4ec4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000d4ec8  sub     sp, x29, #0x20
  1000d4ecc  ldp     x29, x30, [sp, #0x20]
  1000d4ed0  ldp     x20, x19, [sp, #0x10]
  1000d4ed4  ldp     x22, x21, [sp], #0x30
  1000d4ed8  ret
  1000d4edc  mov     x21, x0
  1000d4ee0  b       loc_1000d4f04
  1000d4ee4  mov     x21, x0
  1000d4ee8  b       loc_1000d4efc
  1000d4eec  mov     x1, x21
  1000d4ef0  mov     x21, x0
  1000d4ef4  mov     x0, x1
  1000d4ef8  bl      _objc_release
loc_1000d4efc:
  1000d4efc  mov     x0, x20
  1000d4f00  bl      _objc_release
loc_1000d4f04:
  1000d4f04  str     x19, [sp]
  1000d4f08  adrp    x8, #0x10041e000
  1000d4f0c  ldr     x8, [x8, #0xfd0]
  1000d4f10  str     x8, [sp, #8]
  1000d4f14  adrp    x8, #0x100416000
  1000d4f18  nop
  1000d4f1c  ldr     x1, [x8, #0xfc8]
  1000d4f20  mov     x0, sp
  1000d4f24  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000d4f28  mov     x0, x21
  1000d4f2c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d4f30  bl      sub_10000b760

; ======================================================================
; -[ADGameOverEndlessViewController refreshMission:WithTag:]
; address 0x1000d4f34  size 632  kind objc
; ======================================================================
  1000d4f34  stp     d11, d10, [sp, #-0x70]!
  1000d4f38  stp     d9, d8, [sp, #0x10]
  1000d4f3c  stp     x26, x25, [sp, #0x20]
  1000d4f40  stp     x24, x23, [sp, #0x30]
  1000d4f44  stp     x22, x21, [sp, #0x40]
  1000d4f48  stp     x20, x19, [sp, #0x50]
  1000d4f4c  stp     x29, x30, [sp, #0x60]
  1000d4f50  add     x29, sp, #0x60
  1000d4f54  mov     x22, x3
  1000d4f58  mov     x21, x0
  1000d4f5c  mov     x0, x2
  1000d4f60  bl      _objc_retain
  1000d4f64  mov     x19, x0
  1000d4f68  adrp    x8, #0x10041e000
  1000d4f6c  ldr     x0, [x8, #0x88]                          ; class ADMissionForTopbarViewController
  1000d4f70  adrp    x8, #0x100416000
  1000d4f74  nop
  1000d4f78  ldr     x1, [x8, #0xac8]
  1000d4f7c  bl      _objc_msgSend                            ; [ADMissionForTopbarViewController alloc]
  1000d4f80  adrp    x8, #0x100417000
  1000d4f84  nop
  1000d4f88  ldr     x1, [x8, #0x850]
  1000d4f8c  mov     w3, #1
  1000d4f90  mov     x2, x19
  1000d4f94  bl      _objc_msgSend                            ; [[ADMissionForTopbarViewController alloc] initWithMission:arg1 skippable:1]
  1000d4f98  mov     x20, x0
  1000d4f9c  adrp    x8, #0x100418000
  1000d4fa0  nop
  1000d4fa4  ldr     x23, [x8, #0x850]
  1000d4fa8  mov     x0, x21
  1000d4fac  mov     x1, x23
  1000d4fb0  bl      _objc_msgSend                            ; [self missionView]
  1000d4fb4  mov     x29, x29
  1000d4fb8  bl      _objc_retainAutoreleasedReturnValue
  1000d4fbc  mov     x25, x0
  1000d4fc0  adrp    x8, #0x100417000
  1000d4fc4  nop
  1000d4fc8  ldr     x24, [x8, #0xd08]
  1000d4fcc  mov     x1, x24
  1000d4fd0  mov     x2, x22
  1000d4fd4  bl      _objc_msgSend                            ; [[self missionView] viewWithTag:arg2]
  1000d4fd8  mov     x29, x29
  1000d4fdc  bl      _objc_retainAutoreleasedReturnValue
  1000d4fe0  mov     x26, x0
  1000d4fe4  adrp    x8, #0x100416000
  1000d4fe8  nop
  1000d4fec  ldr     x1, [x8, #0xf38]
  1000d4ff0  bl      _objc_msgSend                            ; [[[self missionView] viewWithTag:arg2] frame]
  1000d4ff4  mov     v8.16b, v0.16b
  1000d4ff8  mov     v9.16b, v1.16b
  1000d4ffc  mov     v10.16b, v2.16b
  1000d5000  mov     v11.16b, v3.16b
  1000d5004  mov     x0, x26
  1000d5008  bl      _objc_release
  1000d500c  mov     x0, x25
  1000d5010  bl      _objc_release
  1000d5014  mov     x0, x21
  1000d5018  mov     x1, x23
  1000d501c  bl      _objc_msgSend                            ; [self missionView]
  1000d5020  mov     x29, x29
  1000d5024  bl      _objc_retainAutoreleasedReturnValue
  1000d5028  mov     x25, x0
  1000d502c  mov     x1, x24
  1000d5030  mov     x2, x22
  1000d5034  bl      _objc_msgSend                            ; [[self missionView] viewWithTag:arg2]
  1000d5038  mov     x29, x29
  1000d503c  bl      _objc_retainAutoreleasedReturnValue
  1000d5040  mov     x22, x0
  1000d5044  adrp    x8, #0x100417000
  1000d5048  nop
  1000d504c  ldr     x1, [x8, #0x1d0]
  1000d5050  bl      _objc_msgSend                            ; [[[self missionView] viewWithTag:arg2] removeFromSuperview]
  1000d5054  mov     x0, x22
  1000d5058  bl      _objc_release
  1000d505c  mov     x0, x25
  1000d5060  bl      _objc_release
  1000d5064  mov     x0, x21
  1000d5068  mov     x1, x23
  1000d506c  bl      _objc_msgSend                            ; [self missionView]
  1000d5070  mov     x29, x29
  1000d5074  bl      _objc_retainAutoreleasedReturnValue
  1000d5078  mov     x22, x0
  1000d507c  adrp    x8, #0x100416000
  1000d5080  nop
  1000d5084  ldr     x21, [x8, #0xf18]
  1000d5088  mov     x0, x20
  1000d508c  mov     x1, x21
  1000d5090  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:arg1 skippable:1] view]
  1000d5094  mov     x29, x29
  1000d5098  bl      _objc_retainAutoreleasedReturnValue
  1000d509c  mov     x23, x0
  1000d50a0  adrp    x8, #0x100416000
  1000d50a4  nop
  1000d50a8  ldr     x1, [x8, #0xf20]
  1000d50ac  mov     x0, x22
  1000d50b0  mov     x2, x23
  1000d50b4  bl      _objc_msgSend                            ; [[self missionView] addSubview:[[[ADMissionForTopbarViewController alloc] initWithMission:arg1 skippable:1] view]]
  1000d50b8  mov     x0, x23
  1000d50bc  bl      _objc_release
  1000d50c0  mov     x0, x22
  1000d50c4  bl      _objc_release
  1000d50c8  mov     x0, x20
  1000d50cc  mov     x1, x21
  1000d50d0  bl      _objc_msgSend                            ; [[[ADMissionForTopbarViewController alloc] initWithMission:arg1 skippable:1] view]
  1000d50d4  mov     x29, x29
  1000d50d8  bl      _objc_retainAutoreleasedReturnValue
  1000d50dc  mov     x22, x0
  1000d50e0  adrp    x8, #0x100417000
  1000d50e4  nop
  1000d50e8  ldr     x1, [x8, #0x7b8]
  1000d50ec  mov     v0.16b, v8.16b
  1000d50f0  mov     v1.16b, v9.16b
  1000d50f4  mov     v2.16b, v10.16b
  1000d50f8  mov     v3.16b, v11.16b
  1000d50fc  bl      _objc_msgSend                            ; [[[[ADMissionForTopbarViewController alloc] initWithMission:arg1 skippable:1] view] setFrame:{[[[self missionView] viewWithTag:arg2] frame].0, [[[self missionView] viewWithTag:arg2] frame].1, [[[self missionView] viewWithTag:arg2] frame].2, [[[self missionView] viewWithTag:arg2] frame].3}]
  1000d5100  mov     x0, x22
  1000d5104  bl      _objc_release
  1000d5108  mov     x0, x20
  1000d510c  bl      _objc_release
  1000d5110  mov     x0, x19
  1000d5114  ldp     x29, x30, [sp, #0x60]
  1000d5118  ldp     x20, x19, [sp, #0x50]
  1000d511c  ldp     x22, x21, [sp, #0x40]
  1000d5120  ldp     x24, x23, [sp, #0x30]
  1000d5124  ldp     x26, x25, [sp, #0x20]
  1000d5128  ldp     d9, d8, [sp, #0x10]
  1000d512c  ldp     d11, d10, [sp], #0x70
  1000d5130  b       _objc_release
  1000d5134  mov     x21, x0
  1000d5138  b       loc_1000d5194
  1000d513c  mov     x21, x0
  1000d5140  b       loc_1000d519c
  1000d5144  mov     x21, x0
  1000d5148  b       loc_1000d516c
  1000d514c  mov     x21, x0
  1000d5150  mov     x0, x26
  1000d5154  b       loc_1000d5168
  1000d5158  mov     x21, x0
  1000d515c  b       loc_1000d516c
  1000d5160  mov     x21, x0
  1000d5164  mov     x0, x22
loc_1000d5168:
  1000d5168  bl      _objc_release
loc_1000d516c:
  1000d516c  mov     x0, x25
  1000d5170  b       loc_1000d5190
  1000d5174  b       loc_1000d5188
  1000d5178  mov     x21, x0
  1000d517c  mov     x0, x23
  1000d5180  bl      _objc_release
  1000d5184  b       loc_1000d518c
loc_1000d5188:
  1000d5188  mov     x21, x0
loc_1000d518c:
  1000d518c  mov     x0, x22
loc_1000d5190:
  1000d5190  bl      _objc_release
loc_1000d5194:
  1000d5194  mov     x0, x20
  1000d5198  bl      _objc_release
loc_1000d519c:
  1000d519c  mov     x0, x19
  1000d51a0  bl      _objc_release
  1000d51a4  mov     x0, x21
  1000d51a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverEndlessViewController statisticsButton]
; address 0x1000d51ac  size 16  kind objc
; ======================================================================
  1000d51ac  adrp    x8, #0x100420000
  1000d51b0  ldrsw   x2, [x8, #0x444]                         ; ivar offset ADGameOverEndlessViewController._statisticsButton (+0x148)
  1000d51b4  mov     w3, #1
  1000d51b8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADGameOverEndlessViewController setStatisticsButton:]
; address 0x1000d51bc  size 12  kind objc
; ======================================================================
  1000d51bc  adrp    x8, #0x100420000
  1000d51c0  ldrsw   x3, [x8, #0x444]                         ; ivar offset ADGameOverEndlessViewController._statisticsButton (+0x148)
  1000d51c4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADGameOverEndlessViewController extraMoneyImage]
; address 0x1000d51c8  size 16  kind objc
; ======================================================================
  1000d51c8  adrp    x8, #0x100420000
  1000d51cc  ldrsw   x8, [x8, #0x448]                         ; ivar offset ADGameOverEndlessViewController._extraMoneyImage (+0x150)
  1000d51d0  ldr     x0, [x0, x8]                             ; x0 = self->_extraMoneyImage
  1000d51d4  ret

; ======================================================================
; -[ADGameOverEndlessViewController setExtraMoneyImage:]
; address 0x1000d51d8  size 56  kind objc
; ======================================================================
  1000d51d8  stp     x20, x19, [sp, #-0x20]!
  1000d51dc  stp     x29, x30, [sp, #0x10]
  1000d51e0  add     x29, sp, #0x10
  1000d51e4  mov     x19, x0
  1000d51e8  adrp    x8, #0x100420000
  1000d51ec  ldrsw   x20, [x8, #0x448]                        ; ivar offset ADGameOverEndlessViewController._extraMoneyImage (+0x150)
  1000d51f0  mov     x0, x2
  1000d51f4  bl      _objc_retain
  1000d51f8  ldr     x8, [x19, x20]                           ; x8 = self->_extraMoneyImage
  1000d51fc  str     x0, [x19, x20]                           ; self->_extraMoneyImage = arg1
  1000d5200  mov     x0, x8
  1000d5204  ldp     x29, x30, [sp, #0x10]
  1000d5208  ldp     x20, x19, [sp], #0x20
  1000d520c  b       _objc_release

; ======================================================================
; -[ADGameOverEndlessViewController highScoreLabel]
; address 0x1000d5210  size 16  kind objc
; ======================================================================
  1000d5210  adrp    x8, #0x100420000
  1000d5214  ldrsw   x8, [x8, #0x44c]                         ; ivar offset ADGameOverEndlessViewController._highScoreLabel (+0x158)
  1000d5218  ldr     x0, [x0, x8]                             ; x0 = self->_highScoreLabel
  1000d521c  ret

; ======================================================================
; -[ADGameOverEndlessViewController setHighScoreLabel:]
; address 0x1000d5220  size 56  kind objc
; ======================================================================
  1000d5220  stp     x20, x19, [sp, #-0x20]!
  1000d5224  stp     x29, x30, [sp, #0x10]
  1000d5228  add     x29, sp, #0x10
  1000d522c  mov     x19, x0
  1000d5230  adrp    x8, #0x100420000
  1000d5234  ldrsw   x20, [x8, #0x44c]                        ; ivar offset ADGameOverEndlessViewController._highScoreLabel (+0x158)
  1000d5238  mov     x0, x2
  1000d523c  bl      _objc_retain
  1000d5240  ldr     x8, [x19, x20]                           ; x8 = self->_highScoreLabel
  1000d5244  str     x0, [x19, x20]                           ; self->_highScoreLabel = arg1
  1000d5248  mov     x0, x8
  1000d524c  ldp     x29, x30, [sp, #0x10]
  1000d5250  ldp     x20, x19, [sp], #0x20
  1000d5254  b       _objc_release

; ======================================================================
; -[ADGameOverEndlessViewController unlockableWeaponsLabel]
; address 0x1000d5258  size 16  kind objc
; ======================================================================
  1000d5258  adrp    x8, #0x100420000
  1000d525c  ldrsw   x8, [x8, #0x450]                         ; ivar offset ADGameOverEndlessViewController._unlockableWeaponsLabel (+0x160)
  1000d5260  ldr     x0, [x0, x8]                             ; x0 = self->_unlockableWeaponsLabel
  1000d5264  ret

; ======================================================================
; -[ADGameOverEndlessViewController setUnlockableWeaponsLabel:]
; address 0x1000d5268  size 56  kind objc
; ======================================================================
  1000d5268  stp     x20, x19, [sp, #-0x20]!
  1000d526c  stp     x29, x30, [sp, #0x10]
  1000d5270  add     x29, sp, #0x10
  1000d5274  mov     x19, x0
  1000d5278  adrp    x8, #0x100420000
  1000d527c  ldrsw   x20, [x8, #0x450]                        ; ivar offset ADGameOverEndlessViewController._unlockableWeaponsLabel (+0x160)
  1000d5280  mov     x0, x2
  1000d5284  bl      _objc_retain
  1000d5288  ldr     x8, [x19, x20]                           ; x8 = self->_unlockableWeaponsLabel
  1000d528c  str     x0, [x19, x20]                           ; self->_unlockableWeaponsLabel = arg1
  1000d5290  mov     x0, x8
  1000d5294  ldp     x29, x30, [sp, #0x10]
  1000d5298  ldp     x20, x19, [sp], #0x20
  1000d529c  b       _objc_release

; ======================================================================
; -[ADGameOverEndlessViewController viewForTwitterScreenshot]
; address 0x1000d52a0  size 16  kind objc
; ======================================================================
  1000d52a0  adrp    x8, #0x100420000
  1000d52a4  ldrsw   x8, [x8, #0x454]                         ; ivar offset ADGameOverEndlessViewController._viewForTwitterScreenshot (+0x168)
  1000d52a8  ldr     x0, [x0, x8]                             ; x0 = self->_viewForTwitterScreenshot
  1000d52ac  ret

; ======================================================================
; -[ADGameOverEndlessViewController setViewForTwitterScreenshot:]
; address 0x1000d52b0  size 56  kind objc
; ======================================================================
  1000d52b0  stp     x20, x19, [sp, #-0x20]!
  1000d52b4  stp     x29, x30, [sp, #0x10]
  1000d52b8  add     x29, sp, #0x10
  1000d52bc  mov     x19, x0
  1000d52c0  adrp    x8, #0x100420000
  1000d52c4  ldrsw   x20, [x8, #0x454]                        ; ivar offset ADGameOverEndlessViewController._viewForTwitterScreenshot (+0x168)
  1000d52c8  mov     x0, x2
  1000d52cc  bl      _objc_retain
  1000d52d0  ldr     x8, [x19, x20]                           ; x8 = self->_viewForTwitterScreenshot
  1000d52d4  str     x0, [x19, x20]                           ; self->_viewForTwitterScreenshot = arg1
  1000d52d8  mov     x0, x8
  1000d52dc  ldp     x29, x30, [sp, #0x10]
  1000d52e0  ldp     x20, x19, [sp], #0x20
  1000d52e4  b       _objc_release

; ======================================================================
; -[ADGameOverEndlessViewController displayingMissions]
; address 0x1000d52e8  size 20  kind objc
; ======================================================================
  1000d52e8  adrp    x8, #0x100420000
  1000d52ec  ldrsw   x8, [x8, #0x458]                         ; ivar offset ADGameOverEndlessViewController._displayingMissions (+0x140)
  1000d52f0  ldrb    w8, [x0, x8]                             ; w8 = self->_displayingMissions
  1000d52f4  and     w0, w8, #1
  1000d52f8  ret

; ======================================================================
; -[ADGameOverEndlessViewController setDisplayingMissions:]
; address 0x1000d52fc  size 16  kind objc
; ======================================================================
  1000d52fc  adrp    x8, #0x100420000
  1000d5300  ldrsw   x8, [x8, #0x458]                         ; ivar offset ADGameOverEndlessViewController._displayingMissions (+0x140)
  1000d5304  strb    w2, [x0, x8]                             ; self->_displayingMissions = arg1
  1000d5308  ret

; ======================================================================
; -[ADGameOverEndlessViewController .cxx_destruct]
; address 0x1000d530c  size 124  kind objc
; ======================================================================
  1000d530c  stp     x20, x19, [sp, #-0x20]!
  1000d5310  stp     x29, x30, [sp, #0x10]
  1000d5314  add     x29, sp, #0x10
  1000d5318  mov     x19, x0
  1000d531c  adrp    x8, #0x100420000
  1000d5320  ldrsw   x8, [x8, #0x454]                         ; ivar offset ADGameOverEndlessViewController._viewForTwitterScreenshot (+0x168)
  1000d5324  add     x0, x19, x8
  1000d5328  mov     x1, #0
  1000d532c  bl      _objc_storeStrong
  1000d5330  adrp    x8, #0x100420000
  1000d5334  ldrsw   x8, [x8, #0x450]                         ; ivar offset ADGameOverEndlessViewController._unlockableWeaponsLabel (+0x160)
  1000d5338  add     x0, x19, x8
  1000d533c  mov     x1, #0
  1000d5340  bl      _objc_storeStrong
  1000d5344  adrp    x8, #0x100420000
  1000d5348  ldrsw   x8, [x8, #0x44c]                         ; ivar offset ADGameOverEndlessViewController._highScoreLabel (+0x158)
  1000d534c  add     x0, x19, x8
  1000d5350  mov     x1, #0
  1000d5354  bl      _objc_storeStrong
  1000d5358  adrp    x8, #0x100420000
  1000d535c  ldrsw   x8, [x8, #0x448]                         ; ivar offset ADGameOverEndlessViewController._extraMoneyImage (+0x150)
  1000d5360  add     x0, x19, x8
  1000d5364  mov     x1, #0
  1000d5368  bl      _objc_storeStrong
  1000d536c  mov     x1, #0
  1000d5370  adrp    x8, #0x100420000
  1000d5374  ldrsw   x8, [x8, #0x444]                         ; ivar offset ADGameOverEndlessViewController._statisticsButton (+0x148)
  1000d5378  add     x0, x19, x8
  1000d537c  ldp     x29, x30, [sp, #0x10]
  1000d5380  ldp     x20, x19, [sp], #0x20
  1000d5384  b       _objc_storeStrong
