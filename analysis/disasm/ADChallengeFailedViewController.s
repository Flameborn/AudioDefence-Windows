// unit ADChallengeFailedViewController — 13 functions
//   0x1000716dc      60  -[ADChallengeFailedViewController didReceiveMemoryWarning]
//   0x100071718    1332  -[ADChallengeFailedViewController viewDidLoad]
//   0x100071c4c     116  -[ADChallengeFailedViewController viewDidLoad]_block_invoke
//   0x100071cc0       8  sub_100071cc0
//   0x100071cc8       8  sub_100071cc8
//   0x100071cd0     332  -[ADChallengeFailedViewController loadView]
//   0x100071e1c     204  -[ADChallengeFailedViewController missionSelectButtonPressed:]
//   0x100071ee8     284  -[ADChallengeFailedViewController tryAgainButtonPressed:]
//   0x100072004     192  -[ADChallengeFailedViewController backButtonPressed]
//   0x1000720c4     252  -[ADChallengeFailedViewController playButtonSound]
//   0x1000721c0      16  -[ADChallengeFailedViewController tipTextView]
//   0x1000721d0      56  -[ADChallengeFailedViewController setTipTextView:]
//   0x100072208      64  -[ADChallengeFailedViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeFailedViewController didReceiveMemoryWarning]
; address 0x1000716dc  size 60  kind objc
; ======================================================================
  1000716dc  stp     x29, x30, [sp, #-0x10]!
  1000716e0  mov     x29, sp
  1000716e4  sub     sp, sp, #0x10
  1000716e8  str     x0, [sp]
  1000716ec  adrp    x8, #0x10041e000
  1000716f0  ldr     x8, [x8, #0xdd8]
  1000716f4  str     x8, [sp, #8]
  1000716f8  adrp    x8, #0x100416000
  1000716fc  nop
  100071700  ldr     x1, [x8, #0xbf8]
  100071704  mov     x0, sp
  100071708  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10007170c  mov     sp, x29
  100071710  ldp     x29, x30, [sp], #0x10
  100071714  ret

; ======================================================================
; -[ADChallengeFailedViewController viewDidLoad]
; address 0x100071718  size 1332  kind objc
; ======================================================================
  100071718  stp     x26, x25, [sp, #-0x50]!
  10007171c  stp     x24, x23, [sp, #0x10]
  100071720  stp     x22, x21, [sp, #0x20]
  100071724  stp     x20, x19, [sp, #0x30]
  100071728  stp     x29, x30, [sp, #0x40]
  10007172c  add     x29, sp, #0x40
  100071730  sub     sp, sp, #0x40
  100071734  mov     x19, x0
  100071738  str     x19, [sp, #0x30]
  10007173c  adrp    x8, #0x10041e000
  100071740  ldr     x8, [x8, #0xdd8]
  100071744  str     x8, [sp, #0x38]
  100071748  adrp    x8, #0x100416000
  10007174c  nop
  100071750  ldr     x1, [x8, #0xb48]
  100071754  add     x0, sp, #0x30
  100071758  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10007175c  adrp    x8, #0x100417000
  100071760  nop
  100071764  ldr     x21, [x8, #0x2a8]
  100071768  mov     x0, x19
  10007176c  mov     x1, x21
  100071770  bl      _objc_msgSend                            ; [self statusBarViewController]
  100071774  mov     x29, x29
  100071778  bl      _objc_retainAutoreleasedReturnValue
  10007177c  mov     x22, x0
  100071780  adrp    x8, #0x100417000
  100071784  nop
  100071788  ldr     x20, [x8, #0x2b0]
  10007178c  mov     w2, #1
  100071790  mov     x1, x20
  100071794  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  100071798  mov     x0, x22
  10007179c  bl      _objc_release
  1000717a0  mov     x0, x19
  1000717a4  mov     x1, x21
  1000717a8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000717ac  mov     x29, x29
  1000717b0  bl      _objc_retainAutoreleasedReturnValue
  1000717b4  mov     x23, x0
  1000717b8  adrp    x8, #0x100417000
  1000717bc  nop
  1000717c0  ldr     x22, [x8, #0x2b8]
  1000717c4  mov     w2, #0
  1000717c8  mov     x1, x22
  1000717cc  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000717d0  mov     x0, x23
  1000717d4  bl      _objc_release
  1000717d8  mov     x0, x19
  1000717dc  mov     x1, x21
  1000717e0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000717e4  mov     x29, x29
  1000717e8  bl      _objc_retainAutoreleasedReturnValue
  1000717ec  mov     x23, x0
  1000717f0  adrp    x8, #0x100417000
  1000717f4  nop
  1000717f8  ldr     x1, [x8, #0x2c0]
  1000717fc  mov     w2, #0
  100071800  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  100071804  mov     x0, x23
  100071808  bl      _objc_release
  10007180c  mov     x0, x19
  100071810  mov     x1, x21
  100071814  bl      _objc_msgSend                            ; [self statusBarViewController]
  100071818  mov     x29, x29
  10007181c  bl      _objc_retainAutoreleasedReturnValue
  100071820  mov     x23, x0
  100071824  adrp    x8, #0x100417000
  100071828  nop
  10007182c  ldr     x1, [x8, #0x7c8]
  100071830  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  100071834  mov     x29, x29
  100071838  bl      _objc_retainAutoreleasedReturnValue
  10007183c  mov     x24, x0
  100071840  adrp    x8, #0x100417000
  100071844  nop
  100071848  ldr     x1, [x8, #0x920]
  10007184c  mov     x3, #0
  100071850  adrp    x2, #0x1003bc000
  100071854  add     x2, x2, #0xff0                           ; @"Main Menu"
  100071858  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setTitle:@"Main Menu" forState:0]
  10007185c  mov     x0, x24
  100071860  bl      _objc_release
  100071864  mov     x0, x23
  100071868  bl      _objc_release
  10007186c  adrp    x25, #0x10041e000
  100071870  ldr     x0, [x25, #8]                            ; class ADTracker
  100071874  adrp    x8, #0x100416000
  100071878  nop
  10007187c  ldr     x23, [x8, #0xac0]
  100071880  mov     x1, x23
  100071884  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100071888  mov     x29, x29
  10007188c  bl      _objc_retainAutoreleasedReturnValue
  100071890  mov     x24, x0
  100071894  adrp    x8, #0x100418000
  100071898  nop
  10007189c  ldr     x1, [x8, #0x9a8]
  1000718a0  mov     w2, #0
  1000718a4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] challengeCompleted:0]
  1000718a8  mov     x0, x24
  1000718ac  bl      _objc_release
  1000718b0  ldr     x0, [x25, #8]                            ; class ADTracker
  1000718b4  mov     x1, x23
  1000718b8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000718bc  mov     x29, x29
  1000718c0  bl      _objc_retainAutoreleasedReturnValue
  1000718c4  mov     x24, x0
  1000718c8  adrp    x8, #0x100418000
  1000718cc  nop
  1000718d0  ldr     x1, [x8, #0x9b0]
  1000718d4  mov     w2, #0
  1000718d8  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] accuracyObjectiveReached:0]
  1000718dc  mov     x0, x24
  1000718e0  bl      _objc_release
  1000718e4  ldr     x0, [x25, #8]                            ; class ADTracker
  1000718e8  mov     x1, x23
  1000718ec  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000718f0  mov     x29, x29
  1000718f4  bl      _objc_retainAutoreleasedReturnValue
  1000718f8  mov     x23, x0
  1000718fc  adrp    x8, #0x100418000
  100071900  nop
  100071904  ldr     x1, [x8, #0x9b8]
  100071908  mov     w2, #0
  10007190c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] timeObjectiveReached:0]
  100071910  mov     x0, x23
  100071914  bl      _objc_release
  100071918  adrp    x8, #0x100417000
  10007191c  nop
  100071920  ldr     x1, [x8, #0xaa0]
  100071924  mov     x0, x19
  100071928  bl      _objc_msgSend                            ; [self tipTextView]
  10007192c  mov     x29, x29
  100071930  bl      _objc_retainAutoreleasedReturnValue
  100071934  mov     x23, x0
  100071938  adrp    x8, #0x100417000
  10007193c  nop
  100071940  ldr     x1, [x8, #0x150]
  100071944  mov     x0, x19
  100071948  bl      _objc_msgSend                            ; [self challengeDict]
  10007194c  mov     x29, x29
  100071950  bl      _objc_retainAutoreleasedReturnValue
  100071954  mov     x25, x0
  100071958  adrp    x8, #0x100417000
  10007195c  nop
  100071960  ldr     x1, [x8, #0x40]
  100071964  adrp    x2, #0x1003be000
  100071968  add     x2, x2, #0xf70                           ; @"tip"
  10007196c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"tip"]
  100071970  mov     x29, x29
  100071974  bl      _objc_retainAutoreleasedReturnValue
  100071978  mov     x26, x0
  10007197c  adrp    x8, #0x100416000
  100071980  nop
  100071984  ldr     x24, [x8, #0xb68]
  100071988  mov     x0, x23
  10007198c  mov     x1, x24
  100071990  mov     x2, x26
  100071994  bl      _objc_msgSend                            ; [[self tipTextView] setText:[[self challengeDict] objectForKey:@"tip"]]
  100071998  mov     x0, x26
  10007199c  bl      _objc_release
  1000719a0  mov     x0, x25
  1000719a4  bl      _objc_release
  1000719a8  mov     x0, x23
  1000719ac  bl      _objc_release
  1000719b0  mov     x0, x19
  1000719b4  mov     x1, x21
  1000719b8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000719bc  mov     x29, x29
  1000719c0  bl      _objc_retainAutoreleasedReturnValue
  1000719c4  mov     x23, x0
  1000719c8  adrp    x8, #0x100417000
  1000719cc  nop
  1000719d0  ldr     x1, [x8, #0x2c8]
  1000719d4  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000719d8  mov     x29, x29
  1000719dc  bl      _objc_retainAutoreleasedReturnValue
  1000719e0  mov     x25, x0
  1000719e4  adrp    x2, #0x1003bd000
  1000719e8  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  1000719ec  mov     x1, x24
  1000719f0  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"CHALLENGE"]
  1000719f4  mov     x0, x25
  1000719f8  bl      _objc_release
  1000719fc  mov     x0, x23
  100071a00  bl      _objc_release
  100071a04  mov     x0, x19
  100071a08  mov     x1, x21
  100071a0c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100071a10  mov     x29, x29
  100071a14  bl      _objc_retainAutoreleasedReturnValue
  100071a18  mov     x23, x0
  100071a1c  mov     w2, #0
  100071a20  mov     x1, x22
  100071a24  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  100071a28  mov     x0, x23
  100071a2c  bl      _objc_release
  100071a30  mov     x0, x19
  100071a34  mov     x1, x21
  100071a38  bl      _objc_msgSend                            ; [self statusBarViewController]
  100071a3c  mov     x29, x29
  100071a40  bl      _objc_retainAutoreleasedReturnValue
  100071a44  mov     x21, x0
  100071a48  mov     w2, #1
  100071a4c  mov     x1, x20
  100071a50  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  100071a54  mov     x0, x21
  100071a58  bl      _objc_release
  100071a5c  bl      _rand                                    ; rand()
  100071a60  sxtw    x8, w0
  100071a64  mov     w9, #0x55550000
  100071a68  movk    w9, #0x5556
  100071a6c  mul     x8, x8, x9
  100071a70  lsr     x9, x8, #0x3f
  100071a74  lsr     x8, x8, #0x20
  100071a78  add     w8, w8, w9
  100071a7c  add     w8, w8, w8, lsl #1                       ; t1 = ((((rand() * 0x55555556) >>> 32) + ((rand() * 0x55555556) >>> 63)) + ((((rand() * 0x55555556) >>> 32) + ((rand() * 0x55555556) >>> 63)) << 1))
  100071a80  sub     w8, w0, w8
  100071a84  add     w21, w8, #1
  100071a88  adrp    x8, #0x10041d000
  100071a8c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100071a90  adrp    x8, #0x100417000
  100071a94  nop
  100071a98  ldr     x1, [x8, #0x4f0]
  100071a9c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100071aa0  mov     x29, x29
  100071aa4  bl      _objc_retainAutoreleasedReturnValue
  100071aa8  mov     x20, x0
  100071aac  adrp    x8, #0x10041d000
  100071ab0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100071ab4  adrp    x8, #0x100416000
  100071ab8  nop
  100071abc  ldr     x1, [x8, #0xee8]
  100071ac0  str     x21, [sp]
  100071ac4  adrp    x2, #0x1003be000
  100071ac8  add     x2, x2, #0xf90                           ; @"gameover_%i"
  100071acc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"gameover_%i", ((rand() - t1) + 1)]
  100071ad0  mov     x29, x29
  100071ad4  bl      _objc_retainAutoreleasedReturnValue
  100071ad8  mov     x21, x0
  100071adc  adrp    x8, #0x100417000
  100071ae0  nop
  100071ae4  ldr     x1, [x8, #0x4f8]
  100071ae8  mov     x0, x20
  100071aec  mov     x2, x21
  100071af0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:[NSString stringWithFormat:@"gameover_%i", ((rand() - t1) + 1)]]
  100071af4  mov     x29, x29
  100071af8  bl      _objc_retainAutoreleasedReturnValue
  100071afc  adrp    x8, #0x10041f000
  100071b00  ldrsw   x22, [x8, #0xd14]                        ; ivar offset ADChallengeFailedViewController.gameOverPlaylist (+0x140)
  100071b04  ldr     x8, [x19, x22]                           ; x8 = self->gameOverPlaylist
  100071b08  str     x0, [x19, x22]                           ; self->gameOverPlaylist = [[S3DEngine engine] playListWithName:[NSString stringWithFormat:@"gameover_%i", ((rand() - t1) + 1)]]
  100071b0c  mov     x0, x8
  100071b10  bl      _objc_release
  100071b14  mov     x0, x21
  100071b18  bl      _objc_release
  100071b1c  mov     x0, x20
  100071b20  bl      _objc_release
  100071b24  adrp    x8, #0x1003b0000
  100071b28  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100071b2c  ldr     x20, [x19, x22]                          ; x20 = self->gameOverPlaylist
  100071b30  mov     w9, #-0x3e000000
  100071b34  str     x8, [sp, #8]
  100071b38  stp     w9, wzr, [sp, #0x10]
  100071b3c  adr     x8, #0x100071c4c                         ; &-[ADChallengeFailedViewController viewDidLoad]_block_invoke
  100071b40  nop
  100071b44  str     x8, [sp, #0x18]
  100071b48  adrp    x8, #0x1003b1000
  100071b4c  add     x8, x8, #0xe40                           ; &d_1003b1e40
  100071b50  str     x8, [sp, #0x20]
  100071b54  mov     x0, x19
  100071b58  bl      _objc_retain
  100071b5c  str     x0, [sp, #0x28]
  100071b60  adrp    x8, #0x100419000
  100071b64  nop
  100071b68  ldr     x1, [x8, #0x408]
  100071b6c  add     x2, sp, #8
  100071b70  mov     x0, x20
  100071b74  bl      _objc_msgSend                            ; [self->gameOverPlaylist activate:^{-[ADChallengeFailedViewController viewDidLoad]_block_invoke captures +0x20=self, +0x28=self, +0x30=ADChallengeFailedViewController}]
  100071b78  ldr     x0, [sp, #0x28]
  100071b7c  bl      _objc_release
  100071b80  sub     sp, x29, #0x40
  100071b84  ldp     x29, x30, [sp, #0x40]
  100071b88  ldp     x20, x19, [sp, #0x30]
  100071b8c  ldp     x22, x21, [sp, #0x20]
  100071b90  ldp     x24, x23, [sp, #0x10]
  100071b94  ldp     x26, x25, [sp], #0x50
  100071b98  ret
  100071b9c  mov     x19, x0
  100071ba0  mov     x0, x22
  100071ba4  b       loc_100071c0c
  100071ba8  b       loc_100071c04
  100071bac  b       loc_100071c04
  100071bb0  b       loc_100071c04
  100071bb4  mov     x19, x0
  100071bb8  mov     x0, x24
  100071bbc  b       loc_100071bfc
  100071bc0  b       loc_100071bc4
loc_100071bc4:
  100071bc4  mov     x19, x0
  100071bc8  mov     x0, x24
  100071bcc  b       loc_100071c0c
  100071bd0  b       loc_100071c04
  100071bd4  b       loc_100071c04
  100071bd8  mov     x19, x0
  100071bdc  b       loc_100071bf8
  100071be0  mov     x19, x0
  100071be4  mov     x0, x26
  100071be8  bl      _objc_release
  100071bec  b       loc_100071bf8
  100071bf0  b       loc_100071c04
  100071bf4  mov     x19, x0
loc_100071bf8:
  100071bf8  mov     x0, x25
loc_100071bfc:
  100071bfc  bl      _objc_release
  100071c00  b       loc_100071c08
loc_100071c04:
  100071c04  mov     x19, x0
loc_100071c08:
  100071c08  mov     x0, x23
loc_100071c0c:
  100071c0c  bl      _objc_release
  100071c10  mov     x0, x19
  100071c14  bl      __Unwind_Resume                          ; Unwind_Resume()
  100071c18  mov     x19, x0
  100071c1c  mov     x0, x21
  100071c20  b       loc_100071c0c
  100071c24  mov     x19, x0
  100071c28  b       loc_100071c38
  100071c2c  mov     x19, x0
  100071c30  mov     x0, x21
  100071c34  bl      _objc_release
loc_100071c38:
  100071c38  mov     x0, x20
  100071c3c  b       loc_100071c0c
  100071c40  mov     x19, x0
  100071c44  ldr     x0, [sp, #0x28]
  100071c48  b       loc_100071c0c

; ======================================================================
; -[ADChallengeFailedViewController viewDidLoad]_block_invoke
; address 0x100071c4c  size 116  kind block
; ======================================================================
  100071c4c  stp     x20, x19, [sp, #-0x20]!
  100071c50  stp     x29, x30, [sp, #0x10]
  100071c54  add     x29, sp, #0x10
  100071c58  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  100071c5c  adrp    x9, #0x10041f000
  100071c60  ldrsw   x9, [x9, #0xd14]                         ; ivar offset ADChallengeFailedViewController.gameOverPlaylist (+0x140)
  100071c64  ldr     x0, [x8, x9]                             ; x0 = self->gameOverPlaylist
  100071c68  adrp    x8, #0x100419000
  100071c6c  nop
  100071c70  ldr     x1, [x8, #0x778]
  100071c74  bl      _objc_msgSend                            ; [self->gameOverPlaylist anySound]
  100071c78  mov     x29, x29
  100071c7c  bl      _objc_retainAutoreleasedReturnValue
  100071c80  mov     x19, x0
  100071c84  adrp    x8, #0x100417000
  100071c88  nop
  100071c8c  ldr     x1, [x8, #0x600]
  100071c90  bl      _objc_msgSend                            ; [[self->gameOverPlaylist anySound] play]
  100071c94  mov     x0, x19
  100071c98  ldp     x29, x30, [sp, #0x10]
  100071c9c  ldp     x20, x19, [sp], #0x20
  100071ca0  b       _objc_release
  100071ca4  mov     x20, x0
  100071ca8  b       loc_100071cb8
  100071cac  mov     x20, x0
  100071cb0  mov     x0, x19
  100071cb4  bl      _objc_release
loc_100071cb8:
  100071cb8  mov     x0, x20
  100071cbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100071cc0
; address 0x100071cc0  size 8  kind sub
; ======================================================================
  100071cc0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100071cc4  b       _objc_retain

; ======================================================================
; sub_100071cc8
; address 0x100071cc8  size 8  kind sub
; ======================================================================
  100071cc8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100071ccc  b       _objc_release

; ======================================================================
; -[ADChallengeFailedViewController loadView]
; address 0x100071cd0  size 332  kind objc
; ======================================================================
  100071cd0  stp     x24, x23, [sp, #-0x40]!
  100071cd4  stp     x22, x21, [sp, #0x10]
  100071cd8  stp     x20, x19, [sp, #0x20]
  100071cdc  stp     x29, x30, [sp, #0x30]
  100071ce0  add     x29, sp, #0x30
  100071ce4  sub     sp, sp, #0x30
  100071ce8  mov     x19, x0
  100071cec  adrp    x23, #0x1003b0000
  100071cf0  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100071cf4  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100071cf8  str     x23, [sp, #0x28]
  100071cfc  adrp    x8, #0x1003bd000
  100071d00  add     x8, x8, #0xa70                           ; @"firstAccessibleElement"
  100071d04  str     x8, [sp, #8]
  100071d08  adrp    x22, #0x10041d000
  100071d0c  ldr     x0, [x22, #0xf68]                        ; class NSNumber
  100071d10  adrp    x8, #0x100416000
  100071d14  nop
  100071d18  ldr     x21, [x8, #0xec0]
  100071d1c  mov     w2, #1
  100071d20  mov     x1, x21
  100071d24  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100071d28  mov     x29, x29
  100071d2c  bl      _objc_retainAutoreleasedReturnValue
  100071d30  mov     x20, x0
  100071d34  adrp    x8, #0x1003be000
  100071d38  add     x8, x8, #0xfb0                           ; @"tipTextView"
  100071d3c  stp     x8, x20, [sp, #0x10]
  100071d40  ldr     x0, [x22, #0xf68]                        ; class NSNumber
  100071d44  mov     w2, #1
  100071d48  mov     x1, x21
  100071d4c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100071d50  bl      _objc_retain
  100071d54  mov     x21, x0
  100071d58  str     x21, [sp, #0x20]
  100071d5c  adrp    x8, #0x10041d000
  100071d60  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100071d64  adrp    x8, #0x100416000
  100071d68  nop
  100071d6c  ldr     x1, [x8, #0xcd0]
  100071d70  add     x2, sp, #0x18
  100071d74  add     x3, sp, #8
  100071d78  mov     w4, #2
  100071d7c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]
  100071d80  mov     x29, x29
  100071d84  bl      _objc_retainAutoreleasedReturnValue
  100071d88  mov     x22, x0
  100071d8c  mov     x0, x21
  100071d90  bl      _objc_release
  100071d94  mov     x0, x20
  100071d98  bl      _objc_release
  100071d9c  adrp    x8, #0x100416000
  100071da0  nop
  100071da4  ldr     x1, [x8, #0xbf0]
  100071da8  adrp    x2, #0x1003be000
  100071dac  add     x2, x2, #0xfd0                           ; @"ADChallengeFailedViewController"
  100071db0  mov     x0, x19
  100071db4  mov     x3, x22
  100071db8  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADChallengeFailedViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]]
  100071dbc  mov     x0, x22
  100071dc0  bl      _objc_release
  100071dc4  ldr     x8, [sp, #0x28]
  100071dc8  sub     x8, x23, x8
  100071dcc  cbnz    x8, loc_100071de8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100071dd0  sub     sp, x29, #0x30
  100071dd4  ldp     x29, x30, [sp, #0x30]
  100071dd8  ldp     x20, x19, [sp, #0x20]
  100071ddc  ldp     x22, x21, [sp, #0x10]
  100071de0  ldp     x24, x23, [sp], #0x40
  100071de4  ret
loc_100071de8:
  100071de8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100071dec  mov     x19, x0
  100071df0  b       loc_100071e00
  100071df4  mov     x19, x0
  100071df8  mov     x0, x21
  100071dfc  bl      _objc_release
loc_100071e00:
  100071e00  mov     x0, x20
  100071e04  b       loc_100071e10
  100071e08  mov     x19, x0
  100071e0c  mov     x0, x22
loc_100071e10:
  100071e10  bl      _objc_release
  100071e14  mov     x0, x19
  100071e18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeFailedViewController missionSelectButtonPressed:]
; address 0x100071e1c  size 204  kind objc
; ======================================================================
  100071e1c  stp     x22, x21, [sp, #-0x30]!
  100071e20  stp     x20, x19, [sp, #0x10]
  100071e24  stp     x29, x30, [sp, #0x20]
  100071e28  add     x29, sp, #0x20
  100071e2c  mov     x19, x0
  100071e30  adrp    x8, #0x10041d000
  100071e34  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100071e38  adrp    x8, #0x100416000
  100071e3c  nop
  100071e40  ldr     x1, [x8, #0xb28]
  100071e44  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100071e48  mov     x29, x29
  100071e4c  bl      _objc_retainAutoreleasedReturnValue
  100071e50  mov     x20, x0
  100071e54  adrp    x8, #0x100416000
  100071e58  nop
  100071e5c  ldr     x1, [x8, #0xc18]
  100071e60  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100071e64  mov     x29, x29
  100071e68  bl      _objc_retainAutoreleasedReturnValue
  100071e6c  mov     x21, x0
  100071e70  adrp    x8, #0x100417000
  100071e74  nop
  100071e78  ldr     x1, [x8, #0x148]
  100071e7c  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeSelector]
  100071e80  mov     x0, x21
  100071e84  bl      _objc_release
  100071e88  mov     x0, x20
  100071e8c  bl      _objc_release
  100071e90  adrp    x8, #0x10041f000
  100071e94  ldrsw   x8, [x8, #0xd14]                         ; ivar offset ADChallengeFailedViewController.gameOverPlaylist (+0x140)
  100071e98  ldr     x0, [x19, x8]                            ; x0 = self->gameOverPlaylist
  100071e9c  adrp    x8, #0x100417000
  100071ea0  nop
  100071ea4  ldr     x1, [x8, #0x618]
  100071ea8  bl      _objc_msgSend                            ; [self->gameOverPlaylist deactivate]
  100071eac  ldp     x29, x30, [sp, #0x20]
  100071eb0  ldp     x20, x19, [sp, #0x10]
  100071eb4  ldp     x22, x21, [sp], #0x30
  100071eb8  ret
  100071ebc  mov     x19, x0
  100071ec0  b       loc_100071ee0
  100071ec4  mov     x19, x0
  100071ec8  b       loc_100071ed8
  100071ecc  mov     x19, x0
  100071ed0  mov     x0, x21
  100071ed4  bl      _objc_release
loc_100071ed8:
  100071ed8  mov     x0, x20
  100071edc  bl      _objc_release
loc_100071ee0:
  100071ee0  mov     x0, x19
  100071ee4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeFailedViewController tryAgainButtonPressed:]
; address 0x100071ee8  size 284  kind objc
; ======================================================================
  100071ee8  stp     x22, x21, [sp, #-0x30]!
  100071eec  stp     x20, x19, [sp, #0x10]
  100071ef0  stp     x29, x30, [sp, #0x20]
  100071ef4  add     x29, sp, #0x20
  100071ef8  mov     x19, x0
  100071efc  adrp    x8, #0x100418000
  100071f00  nop
  100071f04  ldr     x1, [x8, #0xa78]
  100071f08  bl      _objc_msgSend                            ; [self playButtonSound]
  100071f0c  adrp    x8, #0x10041d000
  100071f10  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100071f14  adrp    x8, #0x100416000
  100071f18  nop
  100071f1c  ldr     x1, [x8, #0xb28]
  100071f20  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100071f24  mov     x29, x29
  100071f28  bl      _objc_retainAutoreleasedReturnValue
  100071f2c  mov     x20, x0
  100071f30  adrp    x8, #0x100416000
  100071f34  nop
  100071f38  ldr     x1, [x8, #0xc18]
  100071f3c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100071f40  mov     x29, x29
  100071f44  bl      _objc_retainAutoreleasedReturnValue
  100071f48  mov     x21, x0
  100071f4c  adrp    x8, #0x100417000
  100071f50  nop
  100071f54  ldr     x1, [x8, #0x150]
  100071f58  mov     x0, x19
  100071f5c  bl      _objc_msgSend                            ; [self challengeDict]
  100071f60  mov     x29, x29
  100071f64  bl      _objc_retainAutoreleasedReturnValue
  100071f68  mov     x22, x0
  100071f6c  adrp    x8, #0x100418000
  100071f70  nop
  100071f74  ldr     x1, [x8, #0xa88]
  100071f78  mov     x0, x21
  100071f7c  mov     x2, x22
  100071f80  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeWithDict:[self challengeDict]]
  100071f84  mov     x0, x22
  100071f88  bl      _objc_release
  100071f8c  mov     x0, x21
  100071f90  bl      _objc_release
  100071f94  mov     x0, x20
  100071f98  bl      _objc_release
  100071f9c  adrp    x8, #0x10041f000
  100071fa0  ldrsw   x8, [x8, #0xd14]                         ; ivar offset ADChallengeFailedViewController.gameOverPlaylist (+0x140)
  100071fa4  ldr     x0, [x19, x8]                            ; x0 = self->gameOverPlaylist
  100071fa8  adrp    x8, #0x100417000
  100071fac  nop
  100071fb0  ldr     x1, [x8, #0x618]
  100071fb4  bl      _objc_msgSend                            ; [self->gameOverPlaylist deactivate]
  100071fb8  ldp     x29, x30, [sp, #0x20]
  100071fbc  ldp     x20, x19, [sp, #0x10]
  100071fc0  ldp     x22, x21, [sp], #0x30
  100071fc4  ret
  100071fc8  mov     x19, x0
  100071fcc  b       loc_100071ffc
  100071fd0  mov     x19, x0
  100071fd4  b       loc_100071ff4
  100071fd8  mov     x19, x0
  100071fdc  b       loc_100071fec
  100071fe0  mov     x19, x0
  100071fe4  mov     x0, x22
  100071fe8  bl      _objc_release
loc_100071fec:
  100071fec  mov     x0, x21
  100071ff0  bl      _objc_release
loc_100071ff4:
  100071ff4  mov     x0, x20
  100071ff8  bl      _objc_release
loc_100071ffc:
  100071ffc  mov     x0, x19
  100072000  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeFailedViewController backButtonPressed]
; address 0x100072004  size 192  kind objc
; ======================================================================
  100072004  stp     x22, x21, [sp, #-0x30]!
  100072008  stp     x20, x19, [sp, #0x10]
  10007200c  stp     x29, x30, [sp, #0x20]
  100072010  add     x29, sp, #0x20
  100072014  mov     x19, x0
  100072018  adrp    x8, #0x10041d000
  10007201c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100072020  adrp    x8, #0x100416000
  100072024  nop
  100072028  ldr     x1, [x8, #0xb28]
  10007202c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100072030  mov     x29, x29
  100072034  bl      _objc_retainAutoreleasedReturnValue
  100072038  mov     x20, x0
  10007203c  adrp    x8, #0x100416000
  100072040  nop
  100072044  ldr     x1, [x8, #0xc18]
  100072048  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10007204c  mov     x29, x29
  100072050  bl      _objc_retainAutoreleasedReturnValue
  100072054  mov     x21, x0
  100072058  adrp    x8, #0x100416000
  10007205c  nop
  100072060  ldr     x1, [x8, #0xc10]
  100072064  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  100072068  mov     x0, x21
  10007206c  bl      _objc_release
  100072070  mov     x0, x20
  100072074  bl      _objc_release
  100072078  adrp    x8, #0x10041f000
  10007207c  ldrsw   x8, [x8, #0xd14]                         ; ivar offset ADChallengeFailedViewController.gameOverPlaylist (+0x140)
  100072080  ldr     x0, [x19, x8]                            ; x0 = self->gameOverPlaylist
  100072084  adrp    x8, #0x100417000
  100072088  nop
  10007208c  ldr     x1, [x8, #0x618]
  100072090  ldp     x29, x30, [sp, #0x20]
  100072094  ldp     x20, x19, [sp, #0x10]
  100072098  ldp     x22, x21, [sp], #0x30
  10007209c  b       _objc_msgSend                            ; [self->gameOverPlaylist deactivate]
  1000720a0  mov     x19, x0
  1000720a4  b       loc_1000720b4
  1000720a8  mov     x19, x0
  1000720ac  mov     x0, x21
  1000720b0  bl      _objc_release
loc_1000720b4:
  1000720b4  mov     x0, x20
  1000720b8  bl      _objc_release
  1000720bc  mov     x0, x19
  1000720c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeFailedViewController playButtonSound]
; address 0x1000720c4  size 252  kind objc
; ======================================================================
  1000720c4  stp     x22, x21, [sp, #-0x30]!
  1000720c8  stp     x20, x19, [sp, #0x10]
  1000720cc  stp     x29, x30, [sp, #0x20]
  1000720d0  add     x29, sp, #0x20
  1000720d4  adrp    x8, #0x10041d000
  1000720d8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000720dc  adrp    x8, #0x100417000
  1000720e0  nop
  1000720e4  ldr     x1, [x8, #0x4f0]
  1000720e8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000720ec  mov     x29, x29
  1000720f0  bl      _objc_retainAutoreleasedReturnValue
  1000720f4  mov     x19, x0
  1000720f8  adrp    x8, #0x100417000
  1000720fc  nop
  100072100  ldr     x1, [x8, #0x4f8]
  100072104  adrp    x2, #0x1003ba000
  100072108  add     x2, x2, #0xcb0                           ; @"buttons"
  10007210c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  100072110  mov     x29, x29
  100072114  bl      _objc_retainAutoreleasedReturnValue
  100072118  mov     x21, x0
  10007211c  adrp    x8, #0x100417000
  100072120  nop
  100072124  ldr     x1, [x8, #0x990]
  100072128  adrp    x2, #0x1003be000
  10007212c  add     x2, x2, #0xff0                           ; @"start_level_button"
  100072130  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_level_button"]
  100072134  mov     x29, x29
  100072138  bl      _objc_retainAutoreleasedReturnValue
  10007213c  mov     x20, x0
  100072140  mov     x0, x21
  100072144  bl      _objc_release
  100072148  mov     x0, x19
  10007214c  bl      _objc_release
  100072150  adrp    x8, #0x100416000
  100072154  nop
  100072158  ldr     x1, [x8, #0xcb0]
  10007215c  fmov    s0, #3.00000000
  100072160  mov     x0, x20
  100072164  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_level_button"] setGain:3]
  100072168  adrp    x8, #0x100417000
  10007216c  nop
  100072170  ldr     x1, [x8, #0x600]
  100072174  mov     x0, x20
  100072178  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_level_button"] play]
  10007217c  mov     x0, x20
  100072180  ldp     x29, x30, [sp, #0x20]
  100072184  ldp     x20, x19, [sp, #0x10]
  100072188  ldp     x22, x21, [sp], #0x30
  10007218c  b       _objc_release
  100072190  mov     x22, x0
  100072194  mov     x0, x20
  100072198  b       loc_1000721b4
  10007219c  mov     x22, x0
  1000721a0  b       loc_1000721b0
  1000721a4  mov     x22, x0
  1000721a8  mov     x0, x21
  1000721ac  bl      _objc_release
loc_1000721b0:
  1000721b0  mov     x0, x19
loc_1000721b4:
  1000721b4  bl      _objc_release
  1000721b8  mov     x0, x22
  1000721bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeFailedViewController tipTextView]
; address 0x1000721c0  size 16  kind objc
; ======================================================================
  1000721c0  adrp    x8, #0x10041f000
  1000721c4  ldrsw   x8, [x8, #0xd18]                         ; ivar offset ADChallengeFailedViewController._tipTextView (+0x148)
  1000721c8  ldr     x0, [x0, x8]                             ; x0 = self->_tipTextView
  1000721cc  ret

; ======================================================================
; -[ADChallengeFailedViewController setTipTextView:]
; address 0x1000721d0  size 56  kind objc
; ======================================================================
  1000721d0  stp     x20, x19, [sp, #-0x20]!
  1000721d4  stp     x29, x30, [sp, #0x10]
  1000721d8  add     x29, sp, #0x10
  1000721dc  mov     x19, x0
  1000721e0  adrp    x8, #0x10041f000
  1000721e4  ldrsw   x20, [x8, #0xd18]                        ; ivar offset ADChallengeFailedViewController._tipTextView (+0x148)
  1000721e8  mov     x0, x2
  1000721ec  bl      _objc_retain
  1000721f0  ldr     x8, [x19, x20]                           ; x8 = self->_tipTextView
  1000721f4  str     x0, [x19, x20]                           ; self->_tipTextView = arg1
  1000721f8  mov     x0, x8
  1000721fc  ldp     x29, x30, [sp, #0x10]
  100072200  ldp     x20, x19, [sp], #0x20
  100072204  b       _objc_release

; ======================================================================
; -[ADChallengeFailedViewController .cxx_destruct]
; address 0x100072208  size 64  kind objc
; ======================================================================
  100072208  stp     x20, x19, [sp, #-0x20]!
  10007220c  stp     x29, x30, [sp, #0x10]
  100072210  add     x29, sp, #0x10
  100072214  mov     x19, x0
  100072218  adrp    x8, #0x10041f000
  10007221c  ldrsw   x8, [x8, #0xd18]                         ; ivar offset ADChallengeFailedViewController._tipTextView (+0x148)
  100072220  add     x0, x19, x8
  100072224  mov     x1, #0
  100072228  bl      _objc_storeStrong
  10007222c  mov     x1, #0
  100072230  adrp    x8, #0x10041f000
  100072234  ldrsw   x8, [x8, #0xd14]                         ; ivar offset ADChallengeFailedViewController.gameOverPlaylist (+0x140)
  100072238  add     x0, x19, x8
  10007223c  ldp     x29, x30, [sp, #0x10]
  100072240  ldp     x20, x19, [sp], #0x20
  100072244  b       _objc_storeStrong
