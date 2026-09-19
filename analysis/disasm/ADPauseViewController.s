// unit ADPauseViewController — 16 functions
//   0x1000555c4     140  -[ADPauseViewController initWithNibName:bundle:]
//   0x100055650     436  -[ADPauseViewController viewDidLoad]
//   0x100055804     332  -[ADPauseViewController loadView]
//   0x100055950      92  -[ADPauseViewController viewWillAppear:]
//   0x1000559ac      20  -[ADPauseViewController backButtonPressed]
//   0x1000559c0     368  -[ADPauseViewController quitButtonTouched:]
//   0x100055b30     124  -[ADPauseViewController quitButtonTouched:]_block_invoke
//   0x100055bac       8  sub_100055bac
//   0x100055bb4       8  sub_100055bb4
//   0x100055bbc     276  -[ADPauseViewController validateButtonPressed:]
//   0x100055cd0      96  -[ADPauseViewController validateButtonPressed:]_block_invoke
//   0x100055d30       8  sub_100055d30
//   0x100055d38       8  sub_100055d38
//   0x100055d40      32  -[ADPauseViewController gameplayViewController]
//   0x100055d60      20  -[ADPauseViewController setGameplayViewController:]
//   0x100055d74      16  -[ADPauseViewController .cxx_destruct]

; ======================================================================
; -[ADPauseViewController initWithNibName:bundle:]
; address 0x1000555c4  size 140  kind objc
; ======================================================================
  1000555c4  stp     x22, x21, [sp, #-0x30]!
  1000555c8  stp     x20, x19, [sp, #0x10]
  1000555cc  stp     x29, x30, [sp, #0x20]
  1000555d0  add     x29, sp, #0x20
  1000555d4  sub     sp, sp, #0x10
  1000555d8  mov     x20, x3
  1000555dc  mov     x21, x0
  1000555e0  mov     x0, x2
  1000555e4  bl      _objc_retain
  1000555e8  mov     x19, x0
  1000555ec  str     x21, [sp]
  1000555f0  adrp    x8, #0x10041e000
  1000555f4  ldr     x8, [x8, #0xd68]
  1000555f8  str     x8, [sp, #8]
  1000555fc  adrp    x8, #0x100416000
  100055600  nop
  100055604  ldr     x1, [x8, #0xb40]
  100055608  mov     x0, sp
  10005560c  mov     x2, x19
  100055610  mov     x3, x20
  100055614  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100055618  mov     x20, x0
  10005561c  mov     x0, x19
  100055620  bl      _objc_release
  100055624  mov     x0, x20
  100055628  sub     sp, x29, #0x20
  10005562c  ldp     x29, x30, [sp, #0x20]
  100055630  ldp     x20, x19, [sp, #0x10]
  100055634  ldp     x22, x21, [sp], #0x30
  100055638  ret
  10005563c  mov     x20, x0
  100055640  mov     x0, x19
  100055644  bl      _objc_release
  100055648  mov     x0, x20
  10005564c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPauseViewController viewDidLoad]
; address 0x100055650  size 436  kind objc
; ======================================================================
  100055650  stp     x22, x21, [sp, #-0x30]!
  100055654  stp     x20, x19, [sp, #0x10]
  100055658  stp     x29, x30, [sp, #0x20]
  10005565c  add     x29, sp, #0x20
  100055660  sub     sp, sp, #0x10
  100055664  mov     x19, x0
  100055668  str     x19, [sp]
  10005566c  adrp    x8, #0x10041e000
  100055670  ldr     x8, [x8, #0xd68]
  100055674  str     x8, [sp, #8]
  100055678  adrp    x8, #0x100416000
  10005567c  nop
  100055680  ldr     x1, [x8, #0xb48]
  100055684  mov     x0, sp
  100055688  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10005568c  adrp    x8, #0x100417000
  100055690  nop
  100055694  ldr     x21, [x8, #0x2a8]
  100055698  mov     x0, x19
  10005569c  mov     x1, x21
  1000556a0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000556a4  mov     x29, x29
  1000556a8  bl      _objc_retainAutoreleasedReturnValue
  1000556ac  mov     x20, x0
  1000556b0  adrp    x8, #0x100417000
  1000556b4  nop
  1000556b8  ldr     x1, [x8, #0x7c8]
  1000556bc  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  1000556c0  mov     x29, x29
  1000556c4  bl      _objc_retainAutoreleasedReturnValue
  1000556c8  mov     x22, x0
  1000556cc  adrp    x8, #0x100417000
  1000556d0  nop
  1000556d4  ldr     x1, [x8, #0x920]
  1000556d8  mov     x3, #0
  1000556dc  adrp    x2, #0x1003bd000
  1000556e0  add     x2, x2, #0xa30                           ; @"Resume"
  1000556e4  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setTitle:@"Resume" forState:0]
  1000556e8  mov     x0, x22
  1000556ec  bl      _objc_release
  1000556f0  mov     x0, x20
  1000556f4  bl      _objc_release
  1000556f8  mov     x0, x19
  1000556fc  mov     x1, x21
  100055700  bl      _objc_msgSend                            ; [self statusBarViewController]
  100055704  mov     x29, x29
  100055708  bl      _objc_retainAutoreleasedReturnValue
  10005570c  mov     x20, x0
  100055710  adrp    x8, #0x100417000
  100055714  nop
  100055718  ldr     x1, [x8, #0x2b8]
  10005571c  mov     w2, #0
  100055720  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  100055724  mov     x0, x20
  100055728  bl      _objc_release
  10005572c  adrp    x8, #0x100418000
  100055730  nop
  100055734  ldr     x1, [x8, #0x388]
  100055738  mov     x0, x19
  10005573c  bl      _objc_msgSend                            ; [self loadMissionOverlay]
  100055740  adrp    x8, #0x10041d000
  100055744  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100055748  adrp    x8, #0x100417000
  10005574c  nop
  100055750  ldr     x1, [x8, #0x4f0]
  100055754  bl      _objc_msgSend                            ; [S3DEngine engine]
  100055758  mov     x29, x29
  10005575c  bl      _objc_retainAutoreleasedReturnValue
  100055760  mov     x19, x0
  100055764  adrp    x8, #0x100417000
  100055768  nop
  10005576c  ldr     x1, [x8, #0x4f8]
  100055770  adrp    x2, #0x1003bd000
  100055774  add     x2, x2, #0x910                           ; @"headphonesTest"
  100055778  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"headphonesTest"]
  10005577c  mov     x29, x29
  100055780  bl      _objc_retainAutoreleasedReturnValue
  100055784  mov     x20, x0
  100055788  adrp    x8, #0x100417000
  10005578c  nop
  100055790  ldr     x1, [x8, #0x508]
  100055794  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"headphonesTest"] activate]
  100055798  mov     x0, x20
  10005579c  bl      _objc_release
  1000557a0  mov     x0, x19
  1000557a4  bl      _objc_release
  1000557a8  sub     sp, x29, #0x20
  1000557ac  ldp     x29, x30, [sp, #0x20]
  1000557b0  ldp     x20, x19, [sp, #0x10]
  1000557b4  ldp     x22, x21, [sp], #0x30
  1000557b8  ret
  1000557bc  mov     x21, x0
  1000557c0  b       loc_1000557d8
  1000557c4  mov     x21, x0
  1000557c8  mov     x0, x22
  1000557cc  bl      _objc_release
  1000557d0  b       loc_1000557d8
  1000557d4  mov     x21, x0
loc_1000557d8:
  1000557d8  mov     x0, x20
  1000557dc  b       loc_1000557f8
  1000557e0  mov     x21, x0
  1000557e4  b       loc_1000557f4
  1000557e8  mov     x21, x0
  1000557ec  mov     x0, x20
  1000557f0  bl      _objc_release
loc_1000557f4:
  1000557f4  mov     x0, x19
loc_1000557f8:
  1000557f8  bl      _objc_release
  1000557fc  mov     x0, x21
  100055800  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPauseViewController loadView]
; address 0x100055804  size 332  kind objc
; ======================================================================
  100055804  stp     x24, x23, [sp, #-0x40]!
  100055808  stp     x22, x21, [sp, #0x10]
  10005580c  stp     x20, x19, [sp, #0x20]
  100055810  stp     x29, x30, [sp, #0x30]
  100055814  add     x29, sp, #0x30
  100055818  sub     sp, sp, #0x30
  10005581c  mov     x19, x0
  100055820  adrp    x23, #0x1003b0000
  100055824  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100055828  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  10005582c  str     x23, [sp, #0x28]
  100055830  adrp    x8, #0x1003bd000
  100055834  add     x8, x8, #0xa50                           ; @"controlSchemeView"
  100055838  str     x8, [sp, #8]
  10005583c  adrp    x22, #0x10041d000
  100055840  ldr     x0, [x22, #0xf68]                        ; class NSNumber
  100055844  adrp    x8, #0x100416000
  100055848  nop
  10005584c  ldr     x21, [x8, #0xec0]
  100055850  mov     w2, #1
  100055854  mov     x1, x21
  100055858  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10005585c  mov     x29, x29
  100055860  bl      _objc_retainAutoreleasedReturnValue
  100055864  mov     x20, x0
  100055868  adrp    x8, #0x1003bd000
  10005586c  add     x8, x8, #0xa70                           ; @"firstAccessibleElement"
  100055870  stp     x8, x20, [sp, #0x10]
  100055874  ldr     x0, [x22, #0xf68]                        ; class NSNumber
  100055878  mov     w2, #1
  10005587c  mov     x1, x21
  100055880  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100055884  bl      _objc_retain
  100055888  mov     x21, x0
  10005588c  str     x21, [sp, #0x20]
  100055890  adrp    x8, #0x10041d000
  100055894  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100055898  adrp    x8, #0x100416000
  10005589c  nop
  1000558a0  ldr     x1, [x8, #0xcd0]
  1000558a4  add     x2, sp, #0x18
  1000558a8  add     x3, sp, #8
  1000558ac  mov     w4, #2
  1000558b0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]
  1000558b4  mov     x29, x29
  1000558b8  bl      _objc_retainAutoreleasedReturnValue
  1000558bc  mov     x22, x0
  1000558c0  mov     x0, x21
  1000558c4  bl      _objc_release
  1000558c8  mov     x0, x20
  1000558cc  bl      _objc_release
  1000558d0  adrp    x8, #0x100416000
  1000558d4  nop
  1000558d8  ldr     x1, [x8, #0xbf0]
  1000558dc  adrp    x2, #0x1003bd000
  1000558e0  add     x2, x2, #0xa90                           ; @"ADPauseViewController"
  1000558e4  mov     x0, x19
  1000558e8  mov     x3, x22
  1000558ec  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADPauseViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]]
  1000558f0  mov     x0, x22
  1000558f4  bl      _objc_release
  1000558f8  ldr     x8, [sp, #0x28]
  1000558fc  sub     x8, x23, x8
  100055900  cbnz    x8, loc_10005591c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100055904  sub     sp, x29, #0x30
  100055908  ldp     x29, x30, [sp, #0x30]
  10005590c  ldp     x20, x19, [sp, #0x20]
  100055910  ldp     x22, x21, [sp, #0x10]
  100055914  ldp     x24, x23, [sp], #0x40
  100055918  ret
loc_10005591c:
  10005591c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100055920  mov     x19, x0
  100055924  b       loc_100055934
  100055928  mov     x19, x0
  10005592c  mov     x0, x21
  100055930  bl      _objc_release
loc_100055934:
  100055934  mov     x0, x20
  100055938  b       loc_100055944
  10005593c  mov     x19, x0
  100055940  mov     x0, x22
loc_100055944:
  100055944  bl      _objc_release
  100055948  mov     x0, x19
  10005594c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPauseViewController viewWillAppear:]
; address 0x100055950  size 92  kind objc
; ======================================================================
  100055950  stp     x20, x19, [sp, #-0x20]!
  100055954  stp     x29, x30, [sp, #0x10]
  100055958  add     x29, sp, #0x10
  10005595c  adrp    x8, #0x100416000
  100055960  nop
  100055964  ldr     x1, [x8, #0xf18]
  100055968  bl      _objc_msgSend                            ; [self view]
  10005596c  mov     x29, x29
  100055970  bl      _objc_retainAutoreleasedReturnValue
  100055974  mov     x19, x0
  100055978  adrp    x8, #0x100417000
  10005597c  nop
  100055980  ldr     x1, [x8, #0x7c0]
  100055984  bl      _objc_msgSend                            ; [[self view] setNeedsLayout]
  100055988  mov     x0, x19
  10005598c  ldp     x29, x30, [sp, #0x10]
  100055990  ldp     x20, x19, [sp], #0x20
  100055994  b       _objc_release
  100055998  mov     x20, x0
  10005599c  mov     x0, x19
  1000559a0  bl      _objc_release
  1000559a4  mov     x0, x20
  1000559a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPauseViewController backButtonPressed]
; address 0x1000559ac  size 20  kind objc
; ======================================================================
  1000559ac  mov     x2, #0
  1000559b0  adrp    x8, #0x100418000
  1000559b4  nop
  1000559b8  ldr     x1, [x8, #0xe50]
  1000559bc  b       _objc_msgSend                            ; [self validateButtonPressed:0]

; ======================================================================
; -[ADPauseViewController quitButtonTouched:]
; address 0x1000559c0  size 368  kind objc
; ======================================================================
  1000559c0  stp     x20, x19, [sp, #-0x20]!
  1000559c4  stp     x29, x30, [sp, #0x10]
  1000559c8  add     x29, sp, #0x10
  1000559cc  sub     sp, sp, #0x30
  1000559d0  mov     x19, x0
  1000559d4  adrp    x8, #0x10041d000
  1000559d8  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  1000559dc  adrp    x8, #0x100417000
  1000559e0  nop
  1000559e4  ldr     x1, [x8, #0x848]
  1000559e8  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  1000559ec  mov     x29, x29
  1000559f0  bl      _objc_retainAutoreleasedReturnValue
  1000559f4  mov     x20, x0
  1000559f8  adrp    x8, #0x100416000
  1000559fc  nop
  100055a00  ldr     x1, [x8, #0xe58]
  100055a04  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] endGameplay]
  100055a08  mov     x0, x20
  100055a0c  bl      _objc_release
  100055a10  adrp    x8, #0x1003b0000
  100055a14  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100055a18  mov     w9, #-0x3e000000
  100055a1c  str     x8, [sp, #8]
  100055a20  stp     w9, wzr, [sp, #0x10]
  100055a24  adr     x8, #0x100055b30                         ; &-[ADPauseViewController quitButtonTouched:]_block_invoke
  100055a28  nop
  100055a2c  str     x8, [sp, #0x18]
  100055a30  adrp    x8, #0x1003b1000
  100055a34  add     x8, x8, #0xa20                           ; &d_1003b1a20
  100055a38  str     x8, [sp, #0x20]
  100055a3c  mov     x0, x19
  100055a40  bl      _objc_retain
  100055a44  str     x0, [sp, #0x28]
  100055a48  adrp    x8, #0x100417000
  100055a4c  nop
  100055a50  ldr     x1, [x8, #0x420]
  100055a54  add     x3, sp, #8
  100055a58  mov     w2, #0
  100055a5c  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADPauseViewController quitButtonTouched:]_block_invoke captures +0x20=self}]
  100055a60  adrp    x8, #0x10041d000
  100055a64  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100055a68  adrp    x8, #0x100417000
  100055a6c  nop
  100055a70  ldr     x1, [x8, #0x4f0]
  100055a74  bl      _objc_msgSend                            ; [S3DEngine engine]
  100055a78  mov     x29, x29
  100055a7c  bl      _objc_retainAutoreleasedReturnValue
  100055a80  mov     x19, x0
  100055a84  adrp    x8, #0x100417000
  100055a88  nop
  100055a8c  ldr     x1, [x8, #0x4f8]
  100055a90  adrp    x2, #0x1003bd000
  100055a94  add     x2, x2, #0x910                           ; @"headphonesTest"
  100055a98  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"headphonesTest"]
  100055a9c  mov     x29, x29
  100055aa0  bl      _objc_retainAutoreleasedReturnValue
  100055aa4  mov     x20, x0
  100055aa8  adrp    x8, #0x100417000
  100055aac  nop
  100055ab0  ldr     x1, [x8, #0x618]
  100055ab4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"headphonesTest"] deactivate]
  100055ab8  mov     x0, x20
  100055abc  bl      _objc_release
  100055ac0  mov     x0, x19
  100055ac4  bl      _objc_release
  100055ac8  ldr     x0, [sp, #0x28]
  100055acc  bl      _objc_release
  100055ad0  sub     sp, x29, #0x10
  100055ad4  ldp     x29, x30, [sp, #0x10]
  100055ad8  ldp     x20, x19, [sp], #0x20
  100055adc  ret
  100055ae0  mov     x20, x0
  100055ae4  b       loc_100055b20
  100055ae8  mov     x20, x0
  100055aec  b       loc_100055b28
  100055af0  mov     x1, x20
  100055af4  mov     x20, x0
  100055af8  mov     x0, x1
  100055afc  b       loc_100055b24
  100055b00  mov     x20, x0
  100055b04  b       loc_100055b18
  100055b08  mov     x1, x20
  100055b0c  mov     x20, x0
  100055b10  mov     x0, x1
  100055b14  bl      _objc_release
loc_100055b18:
  100055b18  mov     x0, x19
  100055b1c  bl      _objc_release
loc_100055b20:
  100055b20  ldr     x0, [sp, #0x28]
loc_100055b24:
  100055b24  bl      _objc_release
loc_100055b28:
  100055b28  mov     x0, x20
  100055b2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPauseViewController quitButtonTouched:]_block_invoke
; address 0x100055b30  size 124  kind block
; ======================================================================
  100055b30  stp     x20, x19, [sp, #-0x20]!
  100055b34  stp     x29, x30, [sp, #0x10]
  100055b38  add     x29, sp, #0x10
  100055b3c  mov     x19, x0
  100055b40  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100055b44  adrp    x8, #0x100417000
  100055b48  nop
  100055b4c  ldr     x1, [x8, #0xac0]
  100055b50  bl      _objc_msgSend                            ; [self gameplayViewController]
  100055b54  mov     x29, x29
  100055b58  bl      _objc_retainAutoreleasedReturnValue
  100055b5c  mov     x20, x0
  100055b60  adrp    x8, #0x100418000
  100055b64  nop
  100055b68  ldr     x1, [x8, #0xe58]
  100055b6c  bl      _objc_msgSend                            ; [[self gameplayViewController] quitGameplayWithFail]
  100055b70  mov     x0, x20
  100055b74  bl      _objc_release
  100055b78  mov     x2, #0
  100055b7c  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  100055b80  adrp    x8, #0x100417000
  100055b84  nop
  100055b88  ldr     x1, [x8, #0xc10]
  100055b8c  ldp     x29, x30, [sp, #0x10]
  100055b90  ldp     x20, x19, [sp], #0x20
  100055b94  b       _objc_msgSend                            ; [self setGameplayViewController:0]
  100055b98  mov     x19, x0
  100055b9c  mov     x0, x20
  100055ba0  bl      _objc_release
  100055ba4  mov     x0, x19
  100055ba8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100055bac
; address 0x100055bac  size 8  kind sub
; ======================================================================
  100055bac  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100055bb0  b       _objc_retain

; ======================================================================
; sub_100055bb4
; address 0x100055bb4  size 8  kind sub
; ======================================================================
  100055bb4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100055bb8  b       _objc_release

; ======================================================================
; -[ADPauseViewController validateButtonPressed:]
; address 0x100055bbc  size 276  kind objc
; ======================================================================
  100055bbc  stp     x20, x19, [sp, #-0x20]!
  100055bc0  stp     x29, x30, [sp, #0x10]
  100055bc4  add     x29, sp, #0x10
  100055bc8  sub     sp, sp, #0x30
  100055bcc  adrp    x8, #0x1003b0000
  100055bd0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100055bd4  mov     w9, #-0x3e000000
  100055bd8  str     x8, [sp, #8]
  100055bdc  stp     w9, wzr, [sp, #0x10]
  100055be0  adr     x8, #0x100055cd0                         ; &-[ADPauseViewController validateButtonPressed:]_block_invoke
  100055be4  nop
  100055be8  str     x8, [sp, #0x18]
  100055bec  adrp    x8, #0x1003b1000
  100055bf0  add     x8, x8, #0xa50                           ; &d_1003b1a50
  100055bf4  str     x8, [sp, #0x20]
  100055bf8  bl      _objc_retain
  100055bfc  str     x0, [sp, #0x28]
  100055c00  adrp    x8, #0x100417000
  100055c04  nop
  100055c08  ldr     x1, [x8, #0x420]
  100055c0c  add     x3, sp, #8
  100055c10  mov     w2, #0
  100055c14  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADPauseViewController validateButtonPressed:]_block_invoke captures +0x20=self}]
  100055c18  adrp    x8, #0x10041d000
  100055c1c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100055c20  adrp    x8, #0x100417000
  100055c24  nop
  100055c28  ldr     x1, [x8, #0x4f0]
  100055c2c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100055c30  mov     x29, x29
  100055c34  bl      _objc_retainAutoreleasedReturnValue
  100055c38  mov     x19, x0
  100055c3c  adrp    x8, #0x100417000
  100055c40  nop
  100055c44  ldr     x1, [x8, #0x4f8]
  100055c48  adrp    x2, #0x1003bd000
  100055c4c  add     x2, x2, #0x910                           ; @"headphonesTest"
  100055c50  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"headphonesTest"]
  100055c54  mov     x29, x29
  100055c58  bl      _objc_retainAutoreleasedReturnValue
  100055c5c  mov     x20, x0
  100055c60  adrp    x8, #0x100417000
  100055c64  nop
  100055c68  ldr     x1, [x8, #0x618]
  100055c6c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"headphonesTest"] deactivate]
  100055c70  mov     x0, x20
  100055c74  bl      _objc_release
  100055c78  mov     x0, x19
  100055c7c  bl      _objc_release
  100055c80  ldr     x0, [sp, #0x28]
  100055c84  bl      _objc_release
  100055c88  sub     sp, x29, #0x10
  100055c8c  ldp     x29, x30, [sp, #0x10]
  100055c90  ldp     x20, x19, [sp], #0x20
  100055c94  ret
  100055c98  mov     x20, x0
  100055c9c  b       loc_100055cc0
  100055ca0  mov     x20, x0
  100055ca4  b       loc_100055cb8
  100055ca8  mov     x1, x20
  100055cac  mov     x20, x0
  100055cb0  mov     x0, x1
  100055cb4  bl      _objc_release
loc_100055cb8:
  100055cb8  mov     x0, x19
  100055cbc  bl      _objc_release
loc_100055cc0:
  100055cc0  ldr     x0, [sp, #0x28]
  100055cc4  bl      _objc_release
  100055cc8  mov     x0, x20
  100055ccc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPauseViewController validateButtonPressed:]_block_invoke
; address 0x100055cd0  size 96  kind block
; ======================================================================
  100055cd0  stp     x20, x19, [sp, #-0x20]!
  100055cd4  stp     x29, x30, [sp, #0x10]
  100055cd8  add     x29, sp, #0x10
  100055cdc  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100055ce0  adrp    x8, #0x100417000
  100055ce4  nop
  100055ce8  ldr     x1, [x8, #0xac0]
  100055cec  bl      _objc_msgSend                            ; [self gameplayViewController]
  100055cf0  mov     x29, x29
  100055cf4  bl      _objc_retainAutoreleasedReturnValue
  100055cf8  mov     x19, x0
  100055cfc  adrp    x8, #0x100418000
  100055d00  nop
  100055d04  ldr     x1, [x8, #0xe60]
  100055d08  bl      _objc_msgSend                            ; [[self gameplayViewController] resumeGame]
  100055d0c  mov     x0, x19
  100055d10  ldp     x29, x30, [sp, #0x10]
  100055d14  ldp     x20, x19, [sp], #0x20
  100055d18  b       _objc_release
  100055d1c  mov     x20, x0
  100055d20  mov     x0, x19
  100055d24  bl      _objc_release
  100055d28  mov     x0, x20
  100055d2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100055d30
; address 0x100055d30  size 8  kind sub
; ======================================================================
  100055d30  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100055d34  b       _objc_retain

; ======================================================================
; sub_100055d38
; address 0x100055d38  size 8  kind sub
; ======================================================================
  100055d38  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100055d3c  b       _objc_release

; ======================================================================
; -[ADPauseViewController gameplayViewController]
; address 0x100055d40  size 32  kind objc
; ======================================================================
  100055d40  stp     x29, x30, [sp, #-0x10]!
  100055d44  mov     x29, sp
  100055d48  adrp    x8, #0x10041f000
  100055d4c  ldrsw   x8, [x8, #0xae8]                         ; ivar offset ADPauseViewController._gameplayViewController (+0x140)
  100055d50  add     x0, x0, x8
  100055d54  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100055d58  ldp     x29, x30, [sp], #0x10
  100055d5c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADPauseViewController setGameplayViewController:]
; address 0x100055d60  size 20  kind objc
; ======================================================================
  100055d60  adrp    x8, #0x10041f000
  100055d64  ldrsw   x8, [x8, #0xae8]                         ; ivar offset ADPauseViewController._gameplayViewController (+0x140)
  100055d68  add     x0, x0, x8
  100055d6c  mov     x1, x2
  100055d70  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADPauseViewController .cxx_destruct]
; address 0x100055d74  size 16  kind objc
; ======================================================================
  100055d74  adrp    x8, #0x10041f000
  100055d78  ldrsw   x8, [x8, #0xae8]                         ; ivar offset ADPauseViewController._gameplayViewController (+0x140)
  100055d7c  add     x0, x0, x8
  100055d80  b       _objc_destroyWeak
