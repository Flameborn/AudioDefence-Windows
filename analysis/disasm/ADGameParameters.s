// unit ADGameParameters — 33 functions
//   0x1000a360c     480  -[ADGameParameters init]
//   0x1000a37ec     140  -[ADGameParameters init]_block_invoke
//   0x1000a3878     152  +[ADGameParameters sharedParameters]
//   0x1000a3910     320  -[ADGameParameters isIphone]
//   0x1000a3a50     156  -[ADGameParameters setButtonMode:]
//   0x1000a3aec     180  -[ADGameParameters lastButtonMode]
//   0x1000a3ba0     256  -[ADGameParameters setMasterGain:]
//   0x1000a3ca0     260  -[ADGameParameters lastMasterGain]
//   0x1000a3da4     188  -[ADGameParameters setAnnouncer:]
//   0x1000a3e60     228  -[ADGameParameters lastAnnouncerValue]
//   0x1000a3f44     204  -[ADGameParameters setLastGoodNews:]
//   0x1000a4010     236  -[ADGameParameters timeSinceLastGoodNews]
//   0x1000a40fc     160  -[ADGameParameters setControlScheme:]
//   0x1000a419c     160  -[ADGameParameters setSensivity:]
//   0x1000a423c     288  -[ADGameParameters lastSensivity]
//   0x1000a435c     160  -[ADGameParameters setDebugMapVisible:]
//   0x1000a43fc     236  -[ADGameParameters lastDebugMapVisible]
//   0x1000a44e8     232  -[ADGameParameters lastControlScheme]
//   0x1000a45d0     180  -[ADGameParameters isHeadsetPluggedIn]
//   0x1000a4684      16  -[ADGameParameters controlScheme]
//   0x1000a4694      16  -[ADGameParameters sensivity]
//   0x1000a46a4      16  -[ADGameParameters buttonMode]
//   0x1000a46b4      16  -[ADGameParameters endlessMode]
//   0x1000a46c4      16  -[ADGameParameters setEndlessMode:]
//   0x1000a46d4      16  -[ADGameParameters debugMapVisible]
//   0x1000a46e4      16  -[ADGameParameters currentLevel]
//   0x1000a46f4      56  -[ADGameParameters setCurrentLevel:]
//   0x1000a472c      16  -[ADGameParameters playlistName]
//   0x1000a473c      56  -[ADGameParameters setPlaylistName:]
//   0x1000a4774      16  -[ADGameParameters lastGoodNews]
//   0x1000a4784      16  -[ADGameParameters lastChallengeWorld]
//   0x1000a4794      56  -[ADGameParameters setLastChallengeWorld:]
//   0x1000a47cc     104  -[ADGameParameters .cxx_destruct]

; ======================================================================
; -[ADGameParameters init]
; address 0x1000a360c  size 480  kind objc
; ======================================================================
  1000a360c  stp     x22, x21, [sp, #-0x30]!
  1000a3610  stp     x20, x19, [sp, #0x10]
  1000a3614  stp     x29, x30, [sp, #0x20]
  1000a3618  add     x29, sp, #0x20
  1000a361c  sub     sp, sp, #0x10
  1000a3620  str     x0, [sp]
  1000a3624  adrp    x8, #0x10041e000
  1000a3628  ldr     x8, [x8, #0xee0]
  1000a362c  str     x8, [sp, #8]
  1000a3630  adrp    x8, #0x100416000
  1000a3634  nop
  1000a3638  ldr     x1, [x8, #0xab8]
  1000a363c  mov     x20, #0
  1000a3640  mov     x0, sp
  1000a3644  bl      _objc_msgSendSuper2                      ; [super init]
  1000a3648  mov     x19, x0
  1000a364c  cbz     x19, loc_1000a37ac                       ; if (self == 0)
  1000a3650  mov     x20, x19
  1000a3654  adrp    x8, #0x10041a000
  1000a3658  nop
  1000a365c  ldr     x1, [x8, #0x348]
  1000a3660  mov     x0, x19
  1000a3664  bl      _objc_msgSend                            ; [self lastControlScheme]
  1000a3668  mov     x2, x0
  1000a366c  mov     x20, x19
  1000a3670  adrp    x8, #0x100416000
  1000a3674  nop
  1000a3678  ldr     x1, [x8, #0xc08]
  1000a367c  mov     x0, x19
  1000a3680  bl      _objc_msgSend                            ; [self setControlScheme:[self lastControlScheme]]
  1000a3684  mov     x20, x19
  1000a3688  adrp    x8, #0x10041a000
  1000a368c  nop
  1000a3690  ldr     x1, [x8, #0x350]
  1000a3694  mov     w2, #0
  1000a3698  mov     x0, x19
  1000a369c  bl      _objc_msgSend                            ; [self setEndlessMode:0]
  1000a36a0  mov     x20, x19
  1000a36a4  adrp    x8, #0x10041a000
  1000a36a8  nop
  1000a36ac  ldr     x1, [x8, #0x358]
  1000a36b0  mov     x0, x19
  1000a36b4  bl      _objc_msgSend                            ; [self lastButtonMode]
  1000a36b8  mov     x2, x0
  1000a36bc  mov     x20, x19
  1000a36c0  adrp    x8, #0x100418000
  1000a36c4  nop
  1000a36c8  ldr     x1, [x8, #0xde0]
  1000a36cc  mov     x0, x19
  1000a36d0  bl      _objc_msgSend                            ; [self setButtonMode:[self lastButtonMode]]
  1000a36d4  mov     x20, x19
  1000a36d8  adrp    x8, #0x10041a000
  1000a36dc  nop
  1000a36e0  ldr     x1, [x8, #0x360]
  1000a36e4  mov     x0, x19
  1000a36e8  bl      _objc_msgSend                            ; [self lastSensivity]
  1000a36ec  mov     x20, x19
  1000a36f0  adrp    x8, #0x100418000
  1000a36f4  nop
  1000a36f8  ldr     x1, [x8, #0xdd8]
  1000a36fc  mov     x0, x19
  1000a3700  bl      _objc_msgSend                            ; [self setSensivity:[self lastSensivity]]
  1000a3704  mov     x20, x19
  1000a3708  adrp    x8, #0x10041a000
  1000a370c  nop
  1000a3710  ldr     x1, [x8, #0x368]
  1000a3714  mov     x0, x19
  1000a3718  bl      _objc_msgSend                            ; [self lastDebugMapVisible]
  1000a371c  mov     x2, x0
  1000a3720  mov     x20, x19
  1000a3724  adrp    x8, #0x10041a000
  1000a3728  nop
  1000a372c  ldr     x1, [x8, #0x370]
  1000a3730  mov     x0, x19
  1000a3734  bl      _objc_msgSend                            ; [self setDebugMapVisible:[self lastDebugMapVisible]]
  1000a3738  mov     x20, x19
  1000a373c  mov     x0, #0
  1000a3740  bl      _time                                    ; time()
  1000a3744  mov     x20, x19
  1000a3748  bl      _srand                                   ; srand(time())
  1000a374c  mov     x20, x19
  1000a3750  adrp    x8, #0x10041e000
  1000a3754  ldr     x0, [x8, #0x3c0]                         ; class AVAudioSession
  1000a3758  adrp    x8, #0x100416000
  1000a375c  nop
  1000a3760  ldr     x1, [x8, #0xac0]
  1000a3764  bl      _objc_msgSend                            ; [AVAudioSession sharedInstance]
  1000a3768  mov     x29, x29
  1000a376c  bl      _objc_retainAutoreleasedReturnValue
  1000a3770  mov     x21, x0
  1000a3774  adrp    x8, #0x100417000
  1000a3778  nop
  1000a377c  ldr     x1, [x8, #0x7d8]
  1000a3780  mov     x2, x19
  1000a3784  bl      _objc_msgSend                            ; [[AVAudioSession sharedInstance] setDelegate:self]
  1000a3788  mov     x20, x19
  1000a378c  mov     x0, x21
  1000a3790  bl      _objc_release
  1000a3794  adr     x1, #0x1000a37ec                         ; &-[ADGameParameters init]_block_invoke
  1000a3798  nop
  1000a379c  mov     w0, #0x726f0000
  1000a37a0  movk    w0, #0x6368
  1000a37a4  mov     x2, x19
  1000a37a8  bl      _AudioSessionAddPropertyListener         ; AudioSessionAddPropertyListener(0x726f6368, &-[ADGameParameters init]_block_invoke, self)
loc_1000a37ac:
  1000a37ac  mov     x0, x19
  1000a37b0  sub     sp, x29, #0x20
  1000a37b4  ldp     x29, x30, [sp, #0x20]
  1000a37b8  ldp     x20, x19, [sp, #0x10]
  1000a37bc  ldp     x22, x21, [sp], #0x30
  1000a37c0  ret
  1000a37c4  mov     x22, x0
loc_1000a37c8:
  1000a37c8  mov     x0, x20
  1000a37cc  bl      _objc_release
  1000a37d0  mov     x0, x22
  1000a37d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a37d8  mov     x22, x0
  1000a37dc  mov     x0, x21
  1000a37e0  bl      _objc_release
  1000a37e4  mov     x20, x19
  1000a37e8  b       loc_1000a37c8

; ======================================================================
; -[ADGameParameters init]_block_invoke
; address 0x1000a37ec  size 140  kind block
; ======================================================================
  1000a37ec  stp     x20, x19, [sp, #-0x20]!
  1000a37f0  stp     x29, x30, [sp, #0x10]
  1000a37f4  add     x29, sp, #0x10
  1000a37f8  mov     w8, #0x726f0000
  1000a37fc  movk    w8, #0x6368
  1000a3800  cmp     w1, w8
  1000a3804  b.ne    loc_1000a3858                            ; if (blockarg1 != 0x726f6368)
  1000a3808  adrp    x8, #0x10041d000
  1000a380c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1000a3810  adrp    x8, #0x100416000
  1000a3814  nop
  1000a3818  ldr     x1, [x8, #0xe88]
  1000a381c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000a3820  mov     x29, x29
  1000a3824  bl      _objc_retainAutoreleasedReturnValue
  1000a3828  mov     x19, x0
  1000a382c  adrp    x8, #0x10041a000
  1000a3830  nop
  1000a3834  ldr     x1, [x8, #0x40]
  1000a3838  mov     x3, #0
  1000a383c  adrp    x2, #0x1003be000
  1000a3840  add     x2, x2, #0x8b0                           ; @"AD_MESSAGE_AudioRouteChanged"
  1000a3844  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"AD_MESSAGE_AudioRouteChanged" object:0]
  1000a3848  mov     x0, x19
  1000a384c  ldp     x29, x30, [sp, #0x10]
  1000a3850  ldp     x20, x19, [sp], #0x20
  1000a3854  b       _objc_release
loc_1000a3858:
  1000a3858  ldp     x29, x30, [sp, #0x10]
  1000a385c  ldp     x20, x19, [sp], #0x20
  1000a3860  ret
  1000a3864  mov     x20, x0
  1000a3868  mov     x0, x19
  1000a386c  bl      _objc_release
  1000a3870  mov     x0, x20
  1000a3874  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADGameParameters sharedParameters]
; address 0x1000a3878  size 152  kind objc
; ======================================================================
  1000a3878  stp     x20, x19, [sp, #-0x20]!
  1000a387c  stp     x29, x30, [sp, #0x10]
  1000a3880  add     x29, sp, #0x10
  1000a3884  bl      _objc_retain
  1000a3888  mov     x19, x0
  1000a388c  bl      _objc_sync_enter                         ; objc_sync_enter(ADGameParameters)
  1000a3890  adrp    x20, #0x10042d000
  1000a3894  ldr     x8, [x20, #0xa28]                        ; load g_10042da28
  1000a3898  cbnz    x8, loc_1000a38d4                        ; if (g_10042da28 != 0)
  1000a389c  adrp    x8, #0x10041d000
  1000a38a0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000a38a4  adrp    x8, #0x100416000
  1000a38a8  nop
  1000a38ac  ldr     x1, [x8, #0xac8]
  1000a38b0  bl      _objc_msgSend                            ; [ADGameParameters alloc]
  1000a38b4  adrp    x8, #0x100416000
  1000a38b8  nop
  1000a38bc  ldr     x1, [x8, #0xab8]
  1000a38c0  bl      _objc_msgSend                            ; [[ADGameParameters alloc] init]
  1000a38c4  ldr     x8, [x20, #0xa28]                        ; load g_10042da28
  1000a38c8  str     x0, [x20, #0xa28]                        ; store g_10042da28 = [[ADGameParameters alloc] init]
  1000a38cc  mov     x0, x8
  1000a38d0  bl      _objc_release
loc_1000a38d4:
  1000a38d4  mov     x0, x19
  1000a38d8  bl      _objc_sync_exit                          ; objc_sync_exit(ADGameParameters)
  1000a38dc  mov     x0, x19
  1000a38e0  bl      _objc_release
  1000a38e4  ldr     x0, [x20, #0xa28]                        ; load g_10042da28
  1000a38e8  ldp     x29, x30, [sp, #0x10]
  1000a38ec  ldp     x20, x19, [sp], #0x20
  1000a38f0  b       _objc_retainAutoreleaseReturnValue
  1000a38f4  mov     x20, x0
  1000a38f8  mov     x0, x19
  1000a38fc  bl      _objc_sync_exit                          ; objc_sync_exit()
  1000a3900  mov     x0, x19
  1000a3904  bl      _objc_release
  1000a3908  mov     x0, x20
  1000a390c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters isIphone]
; address 0x1000a3910  size 320  kind objc
; ======================================================================
  1000a3910  stp     x24, x23, [sp, #-0x40]!
  1000a3914  stp     x22, x21, [sp, #0x10]
  1000a3918  stp     x20, x19, [sp, #0x20]
  1000a391c  stp     x29, x30, [sp, #0x30]
  1000a3920  add     x29, sp, #0x30
  1000a3924  adrp    x24, #0x10041e000
  1000a3928  ldr     x0, [x24, #0x50]                         ; class UIDevice
  1000a392c  adrp    x8, #0x100417000
  1000a3930  nop
  1000a3934  ldr     x23, [x8, #0x788]
  1000a3938  mov     x1, x23
  1000a393c  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000a3940  mov     x29, x29
  1000a3944  bl      _objc_retainAutoreleasedReturnValue
  1000a3948  mov     x19, x0
  1000a394c  adrp    x8, #0x100418000
  1000a3950  nop
  1000a3954  ldr     x21, [x8, #0x9e8]
  1000a3958  mov     x1, x21
  1000a395c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000a3960  mov     x29, x29
  1000a3964  bl      _objc_retainAutoreleasedReturnValue
  1000a3968  mov     x20, x0
  1000a396c  adrp    x8, #0x100416000
  1000a3970  nop
  1000a3974  ldr     x22, [x8, #0xf58]
  1000a3978  adrp    x2, #0x1003bd000
  1000a397c  add     x2, x2, #0x30                            ; @"iPhone"
  1000a3980  mov     x1, x22
  1000a3984  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000a3988  tbz     w0, #0, loc_1000a3994                    ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] & 1))
  1000a398c  mov     w21, #1
  1000a3990  b       loc_1000a39e4
loc_1000a3994:
  1000a3994  ldr     x0, [x24, #0x50]                         ; class UIDevice
  1000a3998  mov     x1, x23
  1000a399c  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000a39a0  mov     x29, x29
  1000a39a4  bl      _objc_retainAutoreleasedReturnValue
  1000a39a8  mov     x23, x0
  1000a39ac  mov     x1, x21
  1000a39b0  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000a39b4  mov     x29, x29
  1000a39b8  bl      _objc_retainAutoreleasedReturnValue
  1000a39bc  mov     x24, x0
  1000a39c0  adrp    x2, #0x1003bd000
  1000a39c4  add     x2, x2, #0x50                            ; @"iPod touch"
  1000a39c8  mov     x1, x22
  1000a39cc  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000a39d0  mov     x21, x0
  1000a39d4  mov     x0, x24
  1000a39d8  bl      _objc_release
  1000a39dc  mov     x0, x23
  1000a39e0  bl      _objc_release
loc_1000a39e4:
  1000a39e4  mov     x0, x20
  1000a39e8  bl      _objc_release
  1000a39ec  mov     x0, x19
  1000a39f0  bl      _objc_release
  1000a39f4  mov     x0, x21
  1000a39f8  ldp     x29, x30, [sp, #0x30]
  1000a39fc  ldp     x20, x19, [sp, #0x20]
  1000a3a00  ldp     x22, x21, [sp, #0x10]
  1000a3a04  ldp     x24, x23, [sp], #0x40
  1000a3a08  ret
  1000a3a0c  mov     x21, x0
  1000a3a10  b       loc_1000a3a38
  1000a3a14  mov     x21, x0
  1000a3a18  b       loc_1000a3a40
  1000a3a1c  mov     x21, x0
  1000a3a20  b       loc_1000a3a30
  1000a3a24  mov     x21, x0
  1000a3a28  mov     x0, x24
  1000a3a2c  bl      _objc_release
loc_1000a3a30:
  1000a3a30  mov     x0, x23
  1000a3a34  bl      _objc_release
loc_1000a3a38:
  1000a3a38  mov     x0, x20
  1000a3a3c  bl      _objc_release
loc_1000a3a40:
  1000a3a40  mov     x0, x19
  1000a3a44  bl      _objc_release
  1000a3a48  mov     x0, x21
  1000a3a4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters setButtonMode:]
; address 0x1000a3a50  size 156  kind objc
; ======================================================================
  1000a3a50  stp     x22, x21, [sp, #-0x30]!
  1000a3a54  stp     x20, x19, [sp, #0x10]
  1000a3a58  stp     x29, x30, [sp, #0x20]
  1000a3a5c  add     x29, sp, #0x20
  1000a3a60  mov     x20, x0
  1000a3a64  adrp    x8, #0x100420000
  1000a3a68  ldrsw   x21, [x8, #0xa8]                         ; ivar offset ADGameParameters._buttonMode (+0x8)
  1000a3a6c  strb    w2, [x20, x21]                           ; self->_buttonMode = arg1
  1000a3a70  adrp    x8, #0x10041d000
  1000a3a74  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a3a78  adrp    x8, #0x100416000
  1000a3a7c  nop
  1000a3a80  ldr     x1, [x8, #0xd98]
  1000a3a84  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3a88  mov     x29, x29
  1000a3a8c  bl      _objc_retainAutoreleasedReturnValue
  1000a3a90  mov     x19, x0
  1000a3a94  adrp    x8, #0x100417000
  1000a3a98  nop
  1000a3a9c  ldr     x1, [x8, #0xb00]
  1000a3aa0  ldrb    w2, [x20, x21]                           ; w2 = self->_buttonMode
  1000a3aa4  adrp    x3, #0x1003c0000
  1000a3aa8  add     x3, x3, #0x9f0                           ; @"buttonMode"
  1000a3aac  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setBool:self->_buttonMode forKey:@"buttonMode"]
  1000a3ab0  adrp    x8, #0x100416000
  1000a3ab4  nop
  1000a3ab8  ldr     x1, [x8, #0xdd8]
  1000a3abc  mov     x0, x19
  1000a3ac0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000a3ac4  mov     x0, x19
  1000a3ac8  ldp     x29, x30, [sp, #0x20]
  1000a3acc  ldp     x20, x19, [sp, #0x10]
  1000a3ad0  ldp     x22, x21, [sp], #0x30
  1000a3ad4  b       _objc_release
  1000a3ad8  mov     x20, x0
  1000a3adc  mov     x0, x19
  1000a3ae0  bl      _objc_release
  1000a3ae4  mov     x0, x20
  1000a3ae8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters lastButtonMode]
; address 0x1000a3aec  size 180  kind objc
; ======================================================================
  1000a3aec  stp     x20, x19, [sp, #-0x20]!
  1000a3af0  stp     x29, x30, [sp, #0x10]
  1000a3af4  add     x29, sp, #0x10
  1000a3af8  adrp    x8, #0x10041d000
  1000a3afc  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a3b00  adrp    x8, #0x100416000
  1000a3b04  nop
  1000a3b08  ldr     x1, [x8, #0xd98]
  1000a3b0c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3b10  mov     x29, x29
  1000a3b14  bl      _objc_retainAutoreleasedReturnValue
  1000a3b18  mov     x19, x0
  1000a3b1c  adrp    x8, #0x100417000
  1000a3b20  nop
  1000a3b24  ldr     x1, [x8, #0x40]
  1000a3b28  adrp    x2, #0x1003c0000
  1000a3b2c  add     x2, x2, #0x9f0                           ; @"buttonMode"
  1000a3b30  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] objectForKey:@"buttonMode"]
  1000a3b34  mov     x29, x29
  1000a3b38  bl      _objc_retainAutoreleasedReturnValue
  1000a3b3c  mov     x20, x0
  1000a3b40  bl      _objc_release
  1000a3b44  cbz     x20, loc_1000a3b6c                       ; if ([[NSUserDefaults standardUserDefaults] objectForKey:@"buttonMode"] == 0)
  1000a3b48  adrp    x8, #0x10041a000
  1000a3b4c  nop
  1000a3b50  ldr     x1, [x8, #0x378]
  1000a3b54  adrp    x2, #0x1003c0000
  1000a3b58  add     x2, x2, #0x9f0                           ; @"buttonMode"
  1000a3b5c  mov     x0, x19
  1000a3b60  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] boolForKey:@"buttonMode"]
  1000a3b64  mov     x20, x0
  1000a3b68  b       loc_1000a3b74
loc_1000a3b6c:
  1000a3b6c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000a3b70  eor     w20, w0, #1
loc_1000a3b74:
  1000a3b74  mov     x0, x19
  1000a3b78  bl      _objc_release
  1000a3b7c  mov     x0, x20
  1000a3b80  ldp     x29, x30, [sp, #0x10]
  1000a3b84  ldp     x20, x19, [sp], #0x20
  1000a3b88  ret
  1000a3b8c  mov     x20, x0
  1000a3b90  mov     x0, x19
  1000a3b94  bl      _objc_release
  1000a3b98  mov     x0, x20
  1000a3b9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters setMasterGain:]
; address 0x1000a3ba0  size 256  kind objc
; ======================================================================
  1000a3ba0  stp     d9, d8, [sp, #-0x40]!
  1000a3ba4  stp     x22, x21, [sp, #0x10]
  1000a3ba8  stp     x20, x19, [sp, #0x20]
  1000a3bac  stp     x29, x30, [sp, #0x30]
  1000a3bb0  add     x29, sp, #0x30
  1000a3bb4  mov     v8.16b, v0.16b
  1000a3bb8  adrp    x8, #0x10041d000
  1000a3bbc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000a3bc0  adrp    x8, #0x100417000
  1000a3bc4  nop
  1000a3bc8  ldr     x1, [x8, #0x4f0]
  1000a3bcc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000a3bd0  mov     x29, x29
  1000a3bd4  bl      _objc_retainAutoreleasedReturnValue
  1000a3bd8  mov     x20, x0
  1000a3bdc  adrp    x8, #0x100418000
  1000a3be0  nop
  1000a3be4  ldr     x1, [x8, #0xde8]
  1000a3be8  mov     v0.16b, v8.16b
  1000a3bec  bl      _objc_msgSend                            ; [[S3DEngine engine] setMasterGain:arg1]
  1000a3bf0  mov     x0, x20
  1000a3bf4  bl      _objc_release
  1000a3bf8  adrp    x21, #0x10041d000
  1000a3bfc  ldr     x0, [x21, #0xf38]                        ; class NSUserDefaults
  1000a3c00  adrp    x8, #0x100416000
  1000a3c04  nop
  1000a3c08  ldr     x19, [x8, #0xd98]
  1000a3c0c  mov     x1, x19
  1000a3c10  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3c14  mov     x29, x29
  1000a3c18  bl      _objc_retainAutoreleasedReturnValue
  1000a3c1c  mov     x20, x0
  1000a3c20  adrp    x8, #0x10041a000
  1000a3c24  nop
  1000a3c28  ldr     x1, [x8, #0x380]
  1000a3c2c  adrp    x2, #0x1003c0000
  1000a3c30  add     x2, x2, #0xa10                           ; @"masterGain"
  1000a3c34  mov     v0.16b, v8.16b
  1000a3c38  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setFloat:arg1 forKey:@"masterGain"]
  1000a3c3c  mov     x0, x20
  1000a3c40  bl      _objc_release
  1000a3c44  ldr     x0, [x21, #0xf38]                        ; class NSUserDefaults
  1000a3c48  mov     x1, x19
  1000a3c4c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3c50  mov     x29, x29
  1000a3c54  bl      _objc_retainAutoreleasedReturnValue
  1000a3c58  mov     x20, x0
  1000a3c5c  adrp    x8, #0x100416000
  1000a3c60  nop
  1000a3c64  ldr     x1, [x8, #0xdd8]
  1000a3c68  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000a3c6c  mov     x0, x20
  1000a3c70  ldp     x29, x30, [sp, #0x30]
  1000a3c74  ldp     x20, x19, [sp, #0x20]
  1000a3c78  ldp     x22, x21, [sp, #0x10]
  1000a3c7c  ldp     d9, d8, [sp], #0x40
  1000a3c80  b       _objc_release
  1000a3c84  b       loc_1000a3c8c
  1000a3c88  b       loc_1000a3c8c
loc_1000a3c8c:
  1000a3c8c  mov     x19, x0
  1000a3c90  mov     x0, x20
  1000a3c94  bl      _objc_release
  1000a3c98  mov     x0, x19
  1000a3c9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters lastMasterGain]
; address 0x1000a3ca0  size 260  kind objc
; ======================================================================
  1000a3ca0  stp     d9, d8, [sp, #-0x50]!
  1000a3ca4  stp     x24, x23, [sp, #0x10]
  1000a3ca8  stp     x22, x21, [sp, #0x20]
  1000a3cac  stp     x20, x19, [sp, #0x30]
  1000a3cb0  stp     x29, x30, [sp, #0x40]
  1000a3cb4  add     x29, sp, #0x40
  1000a3cb8  mov     x19, x0
  1000a3cbc  adrp    x23, #0x10041d000
  1000a3cc0  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  1000a3cc4  adrp    x8, #0x100416000
  1000a3cc8  nop
  1000a3ccc  ldr     x20, [x8, #0xd98]
  1000a3cd0  mov     x1, x20
  1000a3cd4  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3cd8  mov     x29, x29
  1000a3cdc  bl      _objc_retainAutoreleasedReturnValue
  1000a3ce0  mov     x22, x0
  1000a3ce4  adrp    x8, #0x10041a000
  1000a3ce8  nop
  1000a3cec  ldr     x21, [x8, #0x388]
  1000a3cf0  adrp    x2, #0x1003c0000
  1000a3cf4  add     x2, x2, #0xa10                           ; @"masterGain"
  1000a3cf8  mov     x1, x21
  1000a3cfc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] floatForKey:@"masterGain"]
  1000a3d00  mov     v8.16b, v0.16b
  1000a3d04  mov     x0, x22
  1000a3d08  bl      _objc_release
  1000a3d0c  fcmp    s8, #0.0
  1000a3d10  b.eq    loc_1000a3d4c                            ; if ([[NSUserDefaults standardUserDefaults] floatForKey:@"masterGain"] == 0.0)
  1000a3d14  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  1000a3d18  mov     x1, x20
  1000a3d1c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3d20  mov     x29, x29
  1000a3d24  bl      _objc_retainAutoreleasedReturnValue
  1000a3d28  mov     x19, x0
  1000a3d2c  adrp    x2, #0x1003c0000
  1000a3d30  add     x2, x2, #0xa10                           ; @"masterGain"
  1000a3d34  mov     x1, x21
  1000a3d38  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] floatForKey:@"masterGain"]
  1000a3d3c  mov     v8.16b, v0.16b
  1000a3d40  mov     x0, x19
  1000a3d44  bl      _objc_release
  1000a3d48  b       loc_1000a3d68
loc_1000a3d4c:
  1000a3d4c  adrp    x8, #0x100418000
  1000a3d50  nop
  1000a3d54  ldr     x1, [x8, #0xde8]
  1000a3d58  fmov    s8, #1.00000000
  1000a3d5c  mov     x0, x19
  1000a3d60  mov     v0.16b, v8.16b
  1000a3d64  bl      _objc_msgSend                            ; [self setMasterGain:1]
loc_1000a3d68:
  1000a3d68  mov     v0.16b, v8.16b
  1000a3d6c  ldp     x29, x30, [sp, #0x40]
  1000a3d70  ldp     x20, x19, [sp, #0x30]
  1000a3d74  ldp     x22, x21, [sp, #0x20]
  1000a3d78  ldp     x24, x23, [sp, #0x10]
  1000a3d7c  ldp     d9, d8, [sp], #0x50
  1000a3d80  ret
  1000a3d84  mov     x20, x0
  1000a3d88  mov     x0, x22
  1000a3d8c  b       loc_1000a3d98
  1000a3d90  mov     x20, x0
  1000a3d94  mov     x0, x19
loc_1000a3d98:
  1000a3d98  bl      _objc_release
  1000a3d9c  mov     x0, x20
  1000a3da0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters setAnnouncer:]
; address 0x1000a3da4  size 188  kind objc
; ======================================================================
  1000a3da4  stp     x22, x21, [sp, #-0x30]!
  1000a3da8  stp     x20, x19, [sp, #0x10]
  1000a3dac  stp     x29, x30, [sp, #0x20]
  1000a3db0  add     x29, sp, #0x20
  1000a3db4  mov     x21, x2
  1000a3db8  adrp    x22, #0x10041d000
  1000a3dbc  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  1000a3dc0  adrp    x8, #0x100416000
  1000a3dc4  nop
  1000a3dc8  ldr     x19, [x8, #0xd98]
  1000a3dcc  mov     x1, x19
  1000a3dd0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3dd4  mov     x29, x29
  1000a3dd8  bl      _objc_retainAutoreleasedReturnValue
  1000a3ddc  mov     x20, x0
  1000a3de0  adrp    x8, #0x100417000
  1000a3de4  nop
  1000a3de8  ldr     x1, [x8, #0xb00]
  1000a3dec  adrp    x3, #0x1003ba000
  1000a3df0  add     x3, x3, #0x830                           ; @"announcer"
  1000a3df4  mov     x2, x21
  1000a3df8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setBool:arg1 forKey:@"announcer"]
  1000a3dfc  mov     x0, x20
  1000a3e00  bl      _objc_release
  1000a3e04  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  1000a3e08  mov     x1, x19
  1000a3e0c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3e10  mov     x29, x29
  1000a3e14  bl      _objc_retainAutoreleasedReturnValue
  1000a3e18  mov     x19, x0
  1000a3e1c  adrp    x8, #0x100416000
  1000a3e20  nop
  1000a3e24  ldr     x1, [x8, #0xdd8]
  1000a3e28  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000a3e2c  mov     x0, x19
  1000a3e30  ldp     x29, x30, [sp, #0x20]
  1000a3e34  ldp     x20, x19, [sp, #0x10]
  1000a3e38  ldp     x22, x21, [sp], #0x30
  1000a3e3c  b       _objc_release
  1000a3e40  mov     x21, x0
  1000a3e44  mov     x0, x20
  1000a3e48  b       loc_1000a3e54
  1000a3e4c  mov     x21, x0
  1000a3e50  mov     x0, x19
loc_1000a3e54:
  1000a3e54  bl      _objc_release
  1000a3e58  mov     x0, x21
  1000a3e5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters lastAnnouncerValue]
; address 0x1000a3e60  size 228  kind objc
; ======================================================================
  1000a3e60  stp     x22, x21, [sp, #-0x30]!
  1000a3e64  stp     x20, x19, [sp, #0x10]
  1000a3e68  stp     x29, x30, [sp, #0x20]
  1000a3e6c  add     x29, sp, #0x20
  1000a3e70  adrp    x22, #0x10041d000
  1000a3e74  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  1000a3e78  adrp    x8, #0x100416000
  1000a3e7c  nop
  1000a3e80  ldr     x19, [x8, #0xd98]
  1000a3e84  mov     x1, x19
  1000a3e88  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3e8c  mov     x29, x29
  1000a3e90  bl      _objc_retainAutoreleasedReturnValue
  1000a3e94  mov     x20, x0
  1000a3e98  adrp    x8, #0x100417000
  1000a3e9c  nop
  1000a3ea0  ldr     x1, [x8, #0x40]
  1000a3ea4  adrp    x2, #0x1003ba000
  1000a3ea8  add     x2, x2, #0x830                           ; @"announcer"
  1000a3eac  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] objectForKey:@"announcer"]
  1000a3eb0  mov     x29, x29
  1000a3eb4  bl      _objc_retainAutoreleasedReturnValue
  1000a3eb8  mov     x21, x0
  1000a3ebc  bl      _objc_release
  1000a3ec0  mov     x0, x20
  1000a3ec4  bl      _objc_release
  1000a3ec8  cbz     x21, loc_1000a3f0c                       ; if ([[NSUserDefaults standardUserDefaults] objectForKey:@"announcer"] == 0)
  1000a3ecc  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  1000a3ed0  mov     x1, x19
  1000a3ed4  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3ed8  mov     x29, x29
  1000a3edc  bl      _objc_retainAutoreleasedReturnValue
  1000a3ee0  mov     x19, x0
  1000a3ee4  adrp    x8, #0x10041a000
  1000a3ee8  nop
  1000a3eec  ldr     x1, [x8, #0x378]
  1000a3ef0  adrp    x2, #0x1003ba000
  1000a3ef4  add     x2, x2, #0x830                           ; @"announcer"
  1000a3ef8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] boolForKey:@"announcer"]
  1000a3efc  mov     x20, x0
  1000a3f00  mov     x0, x19
  1000a3f04  bl      _objc_release
  1000a3f08  b       loc_1000a3f10
loc_1000a3f0c:
  1000a3f0c  mov     w20, #1
loc_1000a3f10:
  1000a3f10  mov     x0, x20
  1000a3f14  ldp     x29, x30, [sp, #0x20]
  1000a3f18  ldp     x20, x19, [sp, #0x10]
  1000a3f1c  ldp     x22, x21, [sp], #0x30
  1000a3f20  ret
  1000a3f24  mov     x21, x0
  1000a3f28  mov     x0, x20
  1000a3f2c  b       loc_1000a3f38
  1000a3f30  mov     x21, x0
  1000a3f34  mov     x0, x19
loc_1000a3f38:
  1000a3f38  bl      _objc_release
  1000a3f3c  mov     x0, x21
  1000a3f40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters setLastGoodNews:]
; address 0x1000a3f44  size 204  kind objc
; ======================================================================
  1000a3f44  stp     x22, x21, [sp, #-0x30]!
  1000a3f48  stp     x20, x19, [sp, #0x10]
  1000a3f4c  stp     x29, x30, [sp, #0x20]
  1000a3f50  add     x29, sp, #0x20
  1000a3f54  mov     x20, x0
  1000a3f58  mov     x0, x2
  1000a3f5c  bl      _objc_retain
  1000a3f60  adrp    x8, #0x100420000
  1000a3f64  ldrsw   x21, [x8, #0xac]                         ; ivar offset ADGameParameters._lastGoodNews (+0x28)
  1000a3f68  bl      _objc_retain
  1000a3f6c  mov     x19, x0
  1000a3f70  ldr     x0, [x20, x21]                           ; x0 = self->_lastGoodNews
  1000a3f74  str     x19, [x20, x21]                          ; self->_lastGoodNews = arg1
  1000a3f78  bl      _objc_release
  1000a3f7c  adrp    x8, #0x10041d000
  1000a3f80  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a3f84  adrp    x8, #0x100416000
  1000a3f88  nop
  1000a3f8c  ldr     x1, [x8, #0xd98]
  1000a3f90  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a3f94  mov     x29, x29
  1000a3f98  bl      _objc_retainAutoreleasedReturnValue
  1000a3f9c  mov     x20, x0
  1000a3fa0  adrp    x8, #0x100416000
  1000a3fa4  nop
  1000a3fa8  ldr     x1, [x8, #0xdc8]
  1000a3fac  adrp    x3, #0x1003c0000
  1000a3fb0  add     x3, x3, #0xa30                           ; @"lastGoodNews"
  1000a3fb4  mov     x2, x19
  1000a3fb8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:arg1 forKey:@"lastGoodNews"]
  1000a3fbc  adrp    x8, #0x100416000
  1000a3fc0  nop
  1000a3fc4  ldr     x1, [x8, #0xdd8]
  1000a3fc8  mov     x0, x20
  1000a3fcc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000a3fd0  mov     x0, x20
  1000a3fd4  bl      _objc_release
  1000a3fd8  mov     x0, x19
  1000a3fdc  ldp     x29, x30, [sp, #0x20]
  1000a3fe0  ldp     x20, x19, [sp, #0x10]
  1000a3fe4  ldp     x22, x21, [sp], #0x30
  1000a3fe8  b       _objc_release
  1000a3fec  mov     x21, x0
  1000a3ff0  mov     x0, x20
  1000a3ff4  bl      _objc_release
  1000a3ff8  b       loc_1000a4000
  1000a3ffc  mov     x21, x0
loc_1000a4000:
  1000a4000  mov     x0, x19
  1000a4004  bl      _objc_release
  1000a4008  mov     x0, x21
  1000a400c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters timeSinceLastGoodNews]
; address 0x1000a4010  size 236  kind objc
; ======================================================================
  1000a4010  stp     d9, d8, [sp, #-0x40]!
  1000a4014  stp     x22, x21, [sp, #0x10]
  1000a4018  stp     x20, x19, [sp, #0x20]
  1000a401c  stp     x29, x30, [sp, #0x30]
  1000a4020  add     x29, sp, #0x30
  1000a4024  adrp    x8, #0x10041d000
  1000a4028  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a402c  adrp    x8, #0x100416000
  1000a4030  nop
  1000a4034  ldr     x1, [x8, #0xd98]
  1000a4038  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a403c  mov     x29, x29
  1000a4040  bl      _objc_retainAutoreleasedReturnValue
  1000a4044  mov     x19, x0
  1000a4048  adrp    x8, #0x100416000
  1000a404c  nop
  1000a4050  ldr     x1, [x8, #0xda0]
  1000a4054  adrp    x2, #0x1003c0000
  1000a4058  add     x2, x2, #0xa30                           ; @"lastGoodNews"
  1000a405c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"lastGoodNews"]
  1000a4060  mov     x29, x29
  1000a4064  bl      _objc_retainAutoreleasedReturnValue
  1000a4068  mov     x20, x0
  1000a406c  cbnz    x20, loc_1000a4094                       ; if ([[NSUserDefaults standardUserDefaults] valueForKey:@"lastGoodNews"] != 0)
  1000a4070  adrp    x8, #0x10041e000
  1000a4074  ldr     x0, [x8, #0x38]                          ; class NSDate
  1000a4078  adrp    x8, #0x10041a000
  1000a407c  nop
  1000a4080  ldr     x1, [x8, #0x390]
  1000a4084  bl      _objc_msgSend                            ; [NSDate distantPast]
  1000a4088  mov     x29, x29
  1000a408c  bl      _objc_retainAutoreleasedReturnValue
  1000a4090  mov     x20, x0
loc_1000a4094:
  1000a4094  adrp    x8, #0x10041a000
  1000a4098  nop
  1000a409c  ldr     x1, [x8, #0x398]
  1000a40a0  mov     x0, x20
  1000a40a4  bl      _objc_msgSend                            ; [x0 timeIntervalSinceNow]
  1000a40a8  fabs    d0, d0
  1000a40ac  fcvt    s8, d0
  1000a40b0  mov     x0, x20
  1000a40b4  bl      _objc_release
  1000a40b8  mov     x0, x19
  1000a40bc  bl      _objc_release
  1000a40c0  mov     v0.16b, v8.16b
  1000a40c4  ldp     x29, x30, [sp, #0x30]
  1000a40c8  ldp     x20, x19, [sp, #0x20]
  1000a40cc  ldp     x22, x21, [sp, #0x10]
  1000a40d0  ldp     d9, d8, [sp], #0x40
  1000a40d4  ret
  1000a40d8  mov     x21, x0
  1000a40dc  mov     x0, x20
  1000a40e0  bl      _objc_release
  1000a40e4  b       loc_1000a40ec
  1000a40e8  mov     x21, x0
loc_1000a40ec:
  1000a40ec  mov     x0, x19
  1000a40f0  bl      _objc_release
  1000a40f4  mov     x0, x21
  1000a40f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters setControlScheme:]
; address 0x1000a40fc  size 160  kind objc
; ======================================================================
  1000a40fc  stp     x22, x21, [sp, #-0x30]!
  1000a4100  stp     x20, x19, [sp, #0x10]
  1000a4104  stp     x29, x30, [sp, #0x20]
  1000a4108  add     x29, sp, #0x20
  1000a410c  mov     x19, x2
  1000a4110  mov     x20, x0
  1000a4114  adrp    x8, #0x10041d000
  1000a4118  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a411c  adrp    x8, #0x100416000
  1000a4120  nop
  1000a4124  ldr     x1, [x8, #0xd98]
  1000a4128  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a412c  mov     x29, x29
  1000a4130  bl      _objc_retainAutoreleasedReturnValue
  1000a4134  mov     x21, x0
  1000a4138  sxtw    x2, w19
  1000a413c  adrp    x8, #0x100416000
  1000a4140  nop
  1000a4144  ldr     x1, [x8, #0xdd0]
  1000a4148  adrp    x3, #0x1003c0000
  1000a414c  add     x3, x3, #0xa50                           ; @"controlScheme"
  1000a4150  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setInteger:arg1 forKey:@"controlScheme"]
  1000a4154  adrp    x8, #0x100416000
  1000a4158  nop
  1000a415c  ldr     x1, [x8, #0xdd8]
  1000a4160  mov     x0, x21
  1000a4164  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000a4168  adrp    x8, #0x100420000
  1000a416c  ldrsw   x8, [x8, #0xb0]                          ; ivar offset ADGameParameters._controlScheme (+0xc)
  1000a4170  str     w19, [x20, x8]                           ; self->_controlScheme = arg1
  1000a4174  mov     x0, x21
  1000a4178  ldp     x29, x30, [sp, #0x20]
  1000a417c  ldp     x20, x19, [sp, #0x10]
  1000a4180  ldp     x22, x21, [sp], #0x30
  1000a4184  b       _objc_release
  1000a4188  mov     x19, x0
  1000a418c  mov     x0, x21
  1000a4190  bl      _objc_release
  1000a4194  mov     x0, x19
  1000a4198  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters setSensivity:]
; address 0x1000a419c  size 160  kind objc
; ======================================================================
  1000a419c  stp     d9, d8, [sp, #-0x30]!
  1000a41a0  stp     x20, x19, [sp, #0x10]
  1000a41a4  stp     x29, x30, [sp, #0x20]
  1000a41a8  add     x29, sp, #0x20
  1000a41ac  mov     v8.16b, v0.16b
  1000a41b0  mov     x19, x0
  1000a41b4  adrp    x8, #0x10041d000
  1000a41b8  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a41bc  adrp    x8, #0x100416000
  1000a41c0  nop
  1000a41c4  ldr     x1, [x8, #0xd98]
  1000a41c8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a41cc  mov     x29, x29
  1000a41d0  bl      _objc_retainAutoreleasedReturnValue
  1000a41d4  mov     x20, x0
  1000a41d8  fcvtzs  x2, s8
  1000a41dc  adrp    x8, #0x100416000
  1000a41e0  nop
  1000a41e4  ldr     x1, [x8, #0xdd0]
  1000a41e8  adrp    x3, #0x1003c0000
  1000a41ec  add     x3, x3, #0xa70                           ; @"sensivity"
  1000a41f0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setInteger:(int)arg1 forKey:@"sensivity"]
  1000a41f4  adrp    x8, #0x100416000
  1000a41f8  nop
  1000a41fc  ldr     x1, [x8, #0xdd8]
  1000a4200  mov     x0, x20
  1000a4204  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000a4208  adrp    x8, #0x100420000
  1000a420c  ldrsw   x8, [x8, #0xb4]                          ; ivar offset ADGameParameters._sensivity (+0x10)
  1000a4210  str     s8, [x19, x8]                            ; self->_sensivity = arg1
  1000a4214  mov     x0, x20
  1000a4218  ldp     x29, x30, [sp, #0x20]
  1000a421c  ldp     x20, x19, [sp, #0x10]
  1000a4220  ldp     d9, d8, [sp], #0x30
  1000a4224  b       _objc_release
  1000a4228  mov     x19, x0
  1000a422c  mov     x0, x20
  1000a4230  bl      _objc_release
  1000a4234  mov     x0, x19
  1000a4238  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters lastSensivity]
; address 0x1000a423c  size 288  kind objc
; ======================================================================
  1000a423c  stp     d9, d8, [sp, #-0x40]!
  1000a4240  stp     x22, x21, [sp, #0x10]
  1000a4244  stp     x20, x19, [sp, #0x20]
  1000a4248  stp     x29, x30, [sp, #0x30]
  1000a424c  add     x29, sp, #0x30
  1000a4250  mov     x20, x0
  1000a4254  adrp    x8, #0x10041d000
  1000a4258  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a425c  adrp    x8, #0x100416000
  1000a4260  nop
  1000a4264  ldr     x1, [x8, #0xd98]
  1000a4268  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a426c  mov     x29, x29
  1000a4270  bl      _objc_retainAutoreleasedReturnValue
  1000a4274  mov     x19, x0
  1000a4278  adrp    x8, #0x100416000
  1000a427c  nop
  1000a4280  ldr     x21, [x8, #0xda0]
  1000a4284  adrp    x2, #0x1003c0000
  1000a4288  add     x2, x2, #0xa70                           ; @"sensivity"
  1000a428c  mov     x1, x21
  1000a4290  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"sensivity"]
  1000a4294  mov     x29, x29
  1000a4298  bl      _objc_retainAutoreleasedReturnValue
  1000a429c  mov     x22, x0
  1000a42a0  bl      _objc_release
  1000a42a4  cbz     x22, loc_1000a42e8                       ; if ([[NSUserDefaults standardUserDefaults] valueForKey:@"sensivity"] == 0)
  1000a42a8  adrp    x2, #0x1003c0000
  1000a42ac  add     x2, x2, #0xa70                           ; @"sensivity"
  1000a42b0  mov     x0, x19
  1000a42b4  mov     x1, x21
  1000a42b8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"sensivity"]
  1000a42bc  mov     x29, x29
  1000a42c0  bl      _objc_retainAutoreleasedReturnValue
  1000a42c4  mov     x20, x0
  1000a42c8  adrp    x8, #0x100417000
  1000a42cc  nop
  1000a42d0  ldr     x1, [x8, #0x48]
  1000a42d4  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"sensivity"] floatValue]
  1000a42d8  mov     v8.16b, v0.16b
  1000a42dc  mov     x0, x20
  1000a42e0  bl      _objc_release
  1000a42e4  b       loc_1000a4318
loc_1000a42e8:
  1000a42e8  adrp    x8, #0x100418000
  1000a42ec  nop
  1000a42f0  ldr     x1, [x8, #0xdd8]
  1000a42f4  fmov    s0, #1.50000000
  1000a42f8  mov     x0, x20
  1000a42fc  bl      _objc_msgSend                            ; [self setSensivity:1.5]
  1000a4300  adrp    x8, #0x100418000
  1000a4304  nop
  1000a4308  ldr     x1, [x8, #0xd68]
  1000a430c  mov     x0, x20
  1000a4310  bl      _objc_msgSend                            ; [self sensivity]
  1000a4314  mov     v8.16b, v0.16b
loc_1000a4318:
  1000a4318  mov     x0, x19
  1000a431c  bl      _objc_release
  1000a4320  mov     v0.16b, v8.16b
  1000a4324  ldp     x29, x30, [sp, #0x30]
  1000a4328  ldp     x20, x19, [sp, #0x20]
  1000a432c  ldp     x22, x21, [sp, #0x10]
  1000a4330  ldp     d9, d8, [sp], #0x40
  1000a4334  ret
  1000a4338  mov     x21, x0
  1000a433c  b       loc_1000a434c
  1000a4340  mov     x21, x0
  1000a4344  mov     x0, x20
  1000a4348  bl      _objc_release
loc_1000a434c:
  1000a434c  mov     x0, x19
  1000a4350  bl      _objc_release
  1000a4354  mov     x0, x21
  1000a4358  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters setDebugMapVisible:]
; address 0x1000a435c  size 160  kind objc
; ======================================================================
  1000a435c  stp     x22, x21, [sp, #-0x30]!
  1000a4360  stp     x20, x19, [sp, #0x10]
  1000a4364  stp     x29, x30, [sp, #0x20]
  1000a4368  add     x29, sp, #0x20
  1000a436c  mov     x19, x2
  1000a4370  mov     x20, x0
  1000a4374  adrp    x8, #0x10041d000
  1000a4378  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a437c  adrp    x8, #0x100416000
  1000a4380  nop
  1000a4384  ldr     x1, [x8, #0xd98]
  1000a4388  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a438c  mov     x29, x29
  1000a4390  bl      _objc_retainAutoreleasedReturnValue
  1000a4394  mov     x21, x0
  1000a4398  adrp    x8, #0x100416000
  1000a439c  nop
  1000a43a0  ldr     x1, [x8, #0xdd0]
  1000a43a4  adrp    x3, #0x1003c0000
  1000a43a8  add     x3, x3, #0xa90                           ; @"debugMapVisible"
  1000a43ac  mov     x2, x19
  1000a43b0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setInteger:arg1 forKey:@"debugMapVisible"]
  1000a43b4  adrp    x8, #0x100416000
  1000a43b8  nop
  1000a43bc  ldr     x1, [x8, #0xdd8]
  1000a43c0  mov     x0, x21
  1000a43c4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000a43c8  adrp    x8, #0x100420000
  1000a43cc  ldrsw   x8, [x8, #0xb8]                          ; ivar offset ADGameParameters._debugMapVisible (+0xa)
  1000a43d0  strb    w19, [x20, x8]                           ; self->_debugMapVisible = arg1
  1000a43d4  mov     x0, x21
  1000a43d8  ldp     x29, x30, [sp, #0x20]
  1000a43dc  ldp     x20, x19, [sp, #0x10]
  1000a43e0  ldp     x22, x21, [sp], #0x30
  1000a43e4  b       _objc_release
  1000a43e8  mov     x19, x0
  1000a43ec  mov     x0, x21
  1000a43f0  bl      _objc_release
  1000a43f4  mov     x0, x19
  1000a43f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters lastDebugMapVisible]
; address 0x1000a43fc  size 236  kind objc
; ======================================================================
  1000a43fc  stp     x22, x21, [sp, #-0x30]!
  1000a4400  stp     x20, x19, [sp, #0x10]
  1000a4404  stp     x29, x30, [sp, #0x20]
  1000a4408  add     x29, sp, #0x20
  1000a440c  adrp    x8, #0x10041d000
  1000a4410  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a4414  adrp    x8, #0x100416000
  1000a4418  nop
  1000a441c  ldr     x1, [x8, #0xd98]
  1000a4420  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a4424  mov     x29, x29
  1000a4428  bl      _objc_retainAutoreleasedReturnValue
  1000a442c  mov     x19, x0
  1000a4430  adrp    x8, #0x100416000
  1000a4434  nop
  1000a4438  ldr     x20, [x8, #0xda0]
  1000a443c  adrp    x2, #0x1003c0000
  1000a4440  add     x2, x2, #0xa90                           ; @"debugMapVisible"
  1000a4444  mov     x1, x20
  1000a4448  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"debugMapVisible"]
  1000a444c  mov     x29, x29
  1000a4450  bl      _objc_retainAutoreleasedReturnValue
  1000a4454  mov     x21, x0
  1000a4458  bl      _objc_release
  1000a445c  cbz     x21, loc_1000a44a4                       ; if ([[NSUserDefaults standardUserDefaults] valueForKey:@"debugMapVisible"] == 0)
  1000a4460  adrp    x2, #0x1003c0000
  1000a4464  add     x2, x2, #0xa90                           ; @"debugMapVisible"
  1000a4468  mov     x0, x19
  1000a446c  mov     x1, x20
  1000a4470  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"debugMapVisible"]
  1000a4474  mov     x29, x29
  1000a4478  bl      _objc_retainAutoreleasedReturnValue
  1000a447c  mov     x20, x0
  1000a4480  adrp    x8, #0x100417000
  1000a4484  nop
  1000a4488  ldr     x1, [x8, #0x48]
  1000a448c  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"debugMapVisible"] floatValue]
  1000a4490  fcmp    s0, #0.0
  1000a4494  cset    w21, ne                                  ; t1 = ([[[NSUserDefaults standardUserDefaults] valueForKey:@"debugMapVisible"] floatValue] != 0.0)
  1000a4498  mov     x0, x20
  1000a449c  bl      _objc_release
  1000a44a0  b       loc_1000a44a8
loc_1000a44a4:
  1000a44a4  mov     w21, #0
loc_1000a44a8:
  1000a44a8  mov     x0, x19
  1000a44ac  bl      _objc_release
  1000a44b0  mov     x0, x21
  1000a44b4  ldp     x29, x30, [sp, #0x20]
  1000a44b8  ldp     x20, x19, [sp, #0x10]
  1000a44bc  ldp     x22, x21, [sp], #0x30
  1000a44c0  ret
  1000a44c4  mov     x21, x0
  1000a44c8  b       loc_1000a44d8
  1000a44cc  mov     x21, x0
  1000a44d0  mov     x0, x20
  1000a44d4  bl      _objc_release
loc_1000a44d8:
  1000a44d8  mov     x0, x19
  1000a44dc  bl      _objc_release
  1000a44e0  mov     x0, x21
  1000a44e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters lastControlScheme]
; address 0x1000a44e8  size 232  kind objc
; ======================================================================
  1000a44e8  stp     x22, x21, [sp, #-0x30]!
  1000a44ec  stp     x20, x19, [sp, #0x10]
  1000a44f0  stp     x29, x30, [sp, #0x20]
  1000a44f4  add     x29, sp, #0x20
  1000a44f8  adrp    x8, #0x10041d000
  1000a44fc  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000a4500  adrp    x8, #0x100416000
  1000a4504  nop
  1000a4508  ldr     x1, [x8, #0xd98]
  1000a450c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000a4510  mov     x29, x29
  1000a4514  bl      _objc_retainAutoreleasedReturnValue
  1000a4518  mov     x19, x0
  1000a451c  adrp    x8, #0x100416000
  1000a4520  nop
  1000a4524  ldr     x20, [x8, #0xda0]
  1000a4528  adrp    x2, #0x1003c0000
  1000a452c  add     x2, x2, #0xa50                           ; @"controlScheme"
  1000a4530  mov     x1, x20
  1000a4534  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"controlScheme"]
  1000a4538  mov     x29, x29
  1000a453c  bl      _objc_retainAutoreleasedReturnValue
  1000a4540  mov     x21, x0
  1000a4544  bl      _objc_release
  1000a4548  cbz     x21, loc_1000a458c                       ; if ([[NSUserDefaults standardUserDefaults] valueForKey:@"controlScheme"] == 0)
  1000a454c  adrp    x2, #0x1003c0000
  1000a4550  add     x2, x2, #0xa50                           ; @"controlScheme"
  1000a4554  mov     x0, x19
  1000a4558  mov     x1, x20
  1000a455c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"controlScheme"]
  1000a4560  mov     x29, x29
  1000a4564  bl      _objc_retainAutoreleasedReturnValue
  1000a4568  mov     x20, x0
  1000a456c  adrp    x8, #0x100417000
  1000a4570  nop
  1000a4574  ldr     x1, [x8, #0x110]
  1000a4578  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] valueForKey:@"controlScheme"] intValue]
  1000a457c  mov     x21, x0
  1000a4580  mov     x0, x20
  1000a4584  bl      _objc_release
  1000a4588  b       loc_1000a4590
loc_1000a458c:
  1000a458c  mov     w21, #-1
loc_1000a4590:
  1000a4590  mov     x0, x19
  1000a4594  bl      _objc_release
  1000a4598  mov     x0, x21
  1000a459c  ldp     x29, x30, [sp, #0x20]
  1000a45a0  ldp     x20, x19, [sp, #0x10]
  1000a45a4  ldp     x22, x21, [sp], #0x30
  1000a45a8  ret
  1000a45ac  mov     x21, x0
  1000a45b0  b       loc_1000a45c0
  1000a45b4  mov     x21, x0
  1000a45b8  mov     x0, x20
  1000a45bc  bl      _objc_release
loc_1000a45c0:
  1000a45c0  mov     x0, x19
  1000a45c4  bl      _objc_release
  1000a45c8  mov     x0, x21
  1000a45cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters isHeadsetPluggedIn]
; address 0x1000a45d0  size 180  kind objc
; ======================================================================
  1000a45d0  stp     x20, x19, [sp, #-0x20]!
  1000a45d4  stp     x29, x30, [sp, #0x10]
  1000a45d8  add     x29, sp, #0x10
  1000a45dc  sub     sp, sp, #0x20
  1000a45e0  mov     w8, #8
  1000a45e4  stur    w8, [x29, #-0x14]
  1000a45e8  mov     w0, #0x726f0000
  1000a45ec  movk    w0, #0x7574
  1000a45f0  sub     x1, x29, #0x14
  1000a45f4  add     x2, sp, #0x10
  1000a45f8  bl      _AudioSessionGetProperty                 ; AudioSessionGetProperty(0x726f7574, &x29[-0x14], &sp[0x10])
  1000a45fc  cbnz    w0, loc_1000a4654                        ; if (AudioSessionGetProperty(0x726f7574, &x29[-0x14], &sp[0x10]) != 0)
  1000a4600  ldr     x0, [sp, #0x10]
  1000a4604  cbz     x0, loc_1000a4654                        ; if (x0 == 0)
  1000a4608  bl      _objc_retain
  1000a460c  mov     x19, x0
  1000a4610  str     x19, [sp]
  1000a4614  adrp    x0, #0x1003c0000
  1000a4618  add     x0, x0, #0xab0                           ; @"Route : %@"
  1000a461c  bl      _NSLog                                   ; NSLog(@"Route : %@", sp[0])
  1000a4620  adrp    x8, #0x100417000
  1000a4624  nop
  1000a4628  ldr     x1, [x8, #0x58]
  1000a462c  adrp    x2, #0x1003c0000
  1000a4630  add     x2, x2, #0xad0                           ; @"Head"
  1000a4634  mov     x0, x19
  1000a4638  bl      _objc_msgSend                            ; [x0 rangeOfString:@"Head"]
  1000a463c  mov     x20, x0
  1000a4640  mov     x0, x19
  1000a4644  bl      _objc_release
  1000a4648  mov     x8, #0x7fffffffffffffff
  1000a464c  cmp     x20, x8
  1000a4650  b.ne    loc_1000a465c                            ; if ([x0 rangeOfString:@"Head"] != 0x7fffffffffffffff)
loc_1000a4654:
  1000a4654  mov     w0, #0
  1000a4658  b       loc_1000a4660
loc_1000a465c:
  1000a465c  mov     w0, #1
loc_1000a4660:
  1000a4660  sub     sp, x29, #0x10
  1000a4664  ldp     x29, x30, [sp, #0x10]
  1000a4668  ldp     x20, x19, [sp], #0x20
  1000a466c  ret
  1000a4670  mov     x20, x0
  1000a4674  mov     x0, x19
  1000a4678  bl      _objc_release
  1000a467c  mov     x0, x20
  1000a4680  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameParameters controlScheme]
; address 0x1000a4684  size 16  kind objc
; ======================================================================
  1000a4684  adrp    x8, #0x100420000
  1000a4688  ldrsw   x8, [x8, #0xb0]                          ; ivar offset ADGameParameters._controlScheme (+0xc)
  1000a468c  ldr     w0, [x0, x8]                             ; w0 = self->_controlScheme
  1000a4690  ret

; ======================================================================
; -[ADGameParameters sensivity]
; address 0x1000a4694  size 16  kind objc
; ======================================================================
  1000a4694  adrp    x8, #0x100420000
  1000a4698  ldrsw   x8, [x8, #0xb4]                          ; ivar offset ADGameParameters._sensivity (+0x10)
  1000a469c  ldr     s0, [x0, x8]                             ; s0 = self->_sensivity
  1000a46a0  ret

; ======================================================================
; -[ADGameParameters buttonMode]
; address 0x1000a46a4  size 16  kind objc
; ======================================================================
  1000a46a4  adrp    x8, #0x100420000
  1000a46a8  ldrsw   x8, [x8, #0xa8]                          ; ivar offset ADGameParameters._buttonMode (+0x8)
  1000a46ac  ldrb    w0, [x0, x8]                             ; w0 = self->_buttonMode
  1000a46b0  ret

; ======================================================================
; -[ADGameParameters endlessMode]
; address 0x1000a46b4  size 16  kind objc
; ======================================================================
  1000a46b4  adrp    x8, #0x100420000
  1000a46b8  ldrsw   x8, [x8, #0xbc]                          ; ivar offset ADGameParameters._endlessMode (+0x9)
  1000a46bc  ldrb    w0, [x0, x8]                             ; w0 = self->_endlessMode
  1000a46c0  ret

; ======================================================================
; -[ADGameParameters setEndlessMode:]
; address 0x1000a46c4  size 16  kind objc
; ======================================================================
  1000a46c4  adrp    x8, #0x100420000
  1000a46c8  ldrsw   x8, [x8, #0xbc]                          ; ivar offset ADGameParameters._endlessMode (+0x9)
  1000a46cc  strb    w2, [x0, x8]                             ; self->_endlessMode = arg1
  1000a46d0  ret

; ======================================================================
; -[ADGameParameters debugMapVisible]
; address 0x1000a46d4  size 16  kind objc
; ======================================================================
  1000a46d4  adrp    x8, #0x100420000
  1000a46d8  ldrsw   x8, [x8, #0xb8]                          ; ivar offset ADGameParameters._debugMapVisible (+0xa)
  1000a46dc  ldrb    w0, [x0, x8]                             ; w0 = self->_debugMapVisible
  1000a46e0  ret

; ======================================================================
; -[ADGameParameters currentLevel]
; address 0x1000a46e4  size 16  kind objc
; ======================================================================
  1000a46e4  adrp    x8, #0x100420000
  1000a46e8  ldrsw   x8, [x8, #0xc0]                          ; ivar offset ADGameParameters._currentLevel (+0x18)
  1000a46ec  ldr     x0, [x0, x8]                             ; x0 = self->_currentLevel
  1000a46f0  ret

; ======================================================================
; -[ADGameParameters setCurrentLevel:]
; address 0x1000a46f4  size 56  kind objc
; ======================================================================
  1000a46f4  stp     x20, x19, [sp, #-0x20]!
  1000a46f8  stp     x29, x30, [sp, #0x10]
  1000a46fc  add     x29, sp, #0x10
  1000a4700  mov     x19, x0
  1000a4704  adrp    x8, #0x100420000
  1000a4708  ldrsw   x20, [x8, #0xc0]                         ; ivar offset ADGameParameters._currentLevel (+0x18)
  1000a470c  mov     x0, x2
  1000a4710  bl      _objc_retain
  1000a4714  ldr     x8, [x19, x20]                           ; x8 = self->_currentLevel
  1000a4718  str     x0, [x19, x20]                           ; self->_currentLevel = arg1
  1000a471c  mov     x0, x8
  1000a4720  ldp     x29, x30, [sp, #0x10]
  1000a4724  ldp     x20, x19, [sp], #0x20
  1000a4728  b       _objc_release

; ======================================================================
; -[ADGameParameters playlistName]
; address 0x1000a472c  size 16  kind objc
; ======================================================================
  1000a472c  adrp    x8, #0x100420000
  1000a4730  ldrsw   x8, [x8, #0xc4]                          ; ivar offset ADGameParameters._playlistName (+0x20)
  1000a4734  ldr     x0, [x0, x8]                             ; x0 = self->_playlistName
  1000a4738  ret

; ======================================================================
; -[ADGameParameters setPlaylistName:]
; address 0x1000a473c  size 56  kind objc
; ======================================================================
  1000a473c  stp     x20, x19, [sp, #-0x20]!
  1000a4740  stp     x29, x30, [sp, #0x10]
  1000a4744  add     x29, sp, #0x10
  1000a4748  mov     x19, x0
  1000a474c  adrp    x8, #0x100420000
  1000a4750  ldrsw   x20, [x8, #0xc4]                         ; ivar offset ADGameParameters._playlistName (+0x20)
  1000a4754  mov     x0, x2
  1000a4758  bl      _objc_retain
  1000a475c  ldr     x8, [x19, x20]                           ; x8 = self->_playlistName
  1000a4760  str     x0, [x19, x20]                           ; self->_playlistName = arg1
  1000a4764  mov     x0, x8
  1000a4768  ldp     x29, x30, [sp, #0x10]
  1000a476c  ldp     x20, x19, [sp], #0x20
  1000a4770  b       _objc_release

; ======================================================================
; -[ADGameParameters lastGoodNews]
; address 0x1000a4774  size 16  kind objc
; ======================================================================
  1000a4774  adrp    x8, #0x100420000
  1000a4778  ldrsw   x8, [x8, #0xac]                          ; ivar offset ADGameParameters._lastGoodNews (+0x28)
  1000a477c  ldr     x0, [x0, x8]                             ; x0 = self->_lastGoodNews
  1000a4780  ret

; ======================================================================
; -[ADGameParameters lastChallengeWorld]
; address 0x1000a4784  size 16  kind objc
; ======================================================================
  1000a4784  adrp    x8, #0x100420000
  1000a4788  ldrsw   x8, [x8, #0xc8]                          ; ivar offset ADGameParameters._lastChallengeWorld (+0x30)
  1000a478c  ldr     x0, [x0, x8]                             ; x0 = self->_lastChallengeWorld
  1000a4790  ret

; ======================================================================
; -[ADGameParameters setLastChallengeWorld:]
; address 0x1000a4794  size 56  kind objc
; ======================================================================
  1000a4794  stp     x20, x19, [sp, #-0x20]!
  1000a4798  stp     x29, x30, [sp, #0x10]
  1000a479c  add     x29, sp, #0x10
  1000a47a0  mov     x19, x0
  1000a47a4  adrp    x8, #0x100420000
  1000a47a8  ldrsw   x20, [x8, #0xc8]                         ; ivar offset ADGameParameters._lastChallengeWorld (+0x30)
  1000a47ac  mov     x0, x2
  1000a47b0  bl      _objc_retain
  1000a47b4  ldr     x8, [x19, x20]                           ; x8 = self->_lastChallengeWorld
  1000a47b8  str     x0, [x19, x20]                           ; self->_lastChallengeWorld = arg1
  1000a47bc  mov     x0, x8
  1000a47c0  ldp     x29, x30, [sp, #0x10]
  1000a47c4  ldp     x20, x19, [sp], #0x20
  1000a47c8  b       _objc_release

; ======================================================================
; -[ADGameParameters .cxx_destruct]
; address 0x1000a47cc  size 104  kind objc
; ======================================================================
  1000a47cc  stp     x20, x19, [sp, #-0x20]!
  1000a47d0  stp     x29, x30, [sp, #0x10]
  1000a47d4  add     x29, sp, #0x10
  1000a47d8  mov     x19, x0
  1000a47dc  adrp    x8, #0x100420000
  1000a47e0  ldrsw   x8, [x8, #0xc8]                          ; ivar offset ADGameParameters._lastChallengeWorld (+0x30)
  1000a47e4  add     x0, x19, x8
  1000a47e8  mov     x1, #0
  1000a47ec  bl      _objc_storeStrong
  1000a47f0  adrp    x8, #0x100420000
  1000a47f4  ldrsw   x8, [x8, #0xac]                          ; ivar offset ADGameParameters._lastGoodNews (+0x28)
  1000a47f8  add     x0, x19, x8
  1000a47fc  mov     x1, #0
  1000a4800  bl      _objc_storeStrong
  1000a4804  adrp    x8, #0x100420000
  1000a4808  ldrsw   x8, [x8, #0xc4]                          ; ivar offset ADGameParameters._playlistName (+0x20)
  1000a480c  add     x0, x19, x8
  1000a4810  mov     x1, #0
  1000a4814  bl      _objc_storeStrong
  1000a4818  mov     x1, #0
  1000a481c  adrp    x8, #0x100420000
  1000a4820  ldrsw   x8, [x8, #0xc0]                          ; ivar offset ADGameParameters._currentLevel (+0x18)
  1000a4824  add     x0, x19, x8
  1000a4828  ldp     x29, x30, [sp, #0x10]
  1000a482c  ldp     x20, x19, [sp], #0x20
  1000a4830  b       _objc_storeStrong
