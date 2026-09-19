// unit ADInfoViewController — 16 functions
//   0x100039738     172  -[ADInfoViewController initWithPageName:]
//   0x1000397e4    1968  -[ADInfoViewController viewDidLoad]
//   0x100039f94     356  -[ADInfoViewController continueButtonPressed:]
//   0x10003a0f8     160  -[ADInfoViewController backButtonPressed]
//   0x10003a198      60  -[ADInfoViewController didReceiveMemoryWarning]
//   0x10003a1d4      16  -[ADInfoViewController infoTitle]
//   0x10003a1e4      56  -[ADInfoViewController setInfoTitle:]
//   0x10003a21c      16  -[ADInfoViewController infoTextView]
//   0x10003a22c      56  -[ADInfoViewController setInfoTextView:]
//   0x10003a264      16  -[ADInfoViewController armoryButton]
//   0x10003a274      56  -[ADInfoViewController setArmoryButton:]
//   0x10003a2ac      16  -[ADInfoViewController continueButton]
//   0x10003a2bc      56  -[ADInfoViewController setContinueButton:]
//   0x10003a2f4      16  -[ADInfoViewController titleLabel]
//   0x10003a304      56  -[ADInfoViewController setTitleLabel:]
//   0x10003a33c     144  -[ADInfoViewController .cxx_destruct]

; ======================================================================
; -[ADInfoViewController initWithPageName:]
; address 0x100039738  size 172  kind objc
; ======================================================================
  100039738  stp     x22, x21, [sp, #-0x30]!
  10003973c  stp     x20, x19, [sp, #0x10]
  100039740  stp     x29, x30, [sp, #0x20]
  100039744  add     x29, sp, #0x20
  100039748  sub     sp, sp, #0x10
  10003974c  mov     x20, x0
  100039750  mov     x0, x2
  100039754  bl      _objc_retain
  100039758  mov     x19, x0
  10003975c  str     x20, [sp]
  100039760  adrp    x8, #0x10041e000
  100039764  ldr     x8, [x8, #0xcb0]
  100039768  str     x8, [sp, #8]
  10003976c  adrp    x8, #0x100416000
  100039770  nop
  100039774  ldr     x1, [x8, #0xb40]
  100039778  mov     x0, sp
  10003977c  mov     x2, #0
  100039780  mov     x3, #0
  100039784  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  100039788  mov     x20, x0
  10003978c  cbz     x20, loc_1000397b0                       ; if (self == 0)
  100039790  adrp    x8, #0x10041f000
  100039794  ldrsw   x21, [x8, #0x888]                        ; ivar offset ADInfoViewController.pageName (+0x140)
  100039798  mov     x0, x19
  10003979c  bl      _objc_retain
  1000397a0  ldr     x8, [x20, x21]                           ; x8 = self->pageName
  1000397a4  str     x0, [x20, x21]                           ; self->pageName = arg1
  1000397a8  mov     x0, x8
  1000397ac  bl      _objc_release
loc_1000397b0:
  1000397b0  mov     x0, x19
  1000397b4  bl      _objc_release
  1000397b8  mov     x0, x20
  1000397bc  sub     sp, x29, #0x20
  1000397c0  ldp     x29, x30, [sp, #0x20]
  1000397c4  ldp     x20, x19, [sp, #0x10]
  1000397c8  ldp     x22, x21, [sp], #0x30
  1000397cc  ret
  1000397d0  mov     x20, x0
  1000397d4  mov     x0, x19
  1000397d8  bl      _objc_release
  1000397dc  mov     x0, x20
  1000397e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfoViewController viewDidLoad]
; address 0x1000397e4  size 1968  kind objc
; ======================================================================
  1000397e4  stp     x28, x27, [sp, #-0x60]!
  1000397e8  stp     x26, x25, [sp, #0x10]
  1000397ec  stp     x24, x23, [sp, #0x20]
  1000397f0  stp     x22, x21, [sp, #0x30]
  1000397f4  stp     x20, x19, [sp, #0x40]
  1000397f8  stp     x29, x30, [sp, #0x50]
  1000397fc  add     x29, sp, #0x50
  100039800  sub     sp, sp, #0x10
  100039804  mov     x19, x0
  100039808  str     x19, [sp]
  10003980c  adrp    x8, #0x10041e000
  100039810  ldr     x8, [x8, #0xcb0]
  100039814  str     x8, [sp, #8]
  100039818  adrp    x8, #0x100416000
  10003981c  nop
  100039820  ldr     x1, [x8, #0xb48]
  100039824  mov     x0, sp
  100039828  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10003982c  adrp    x8, #0x100417000
  100039830  nop
  100039834  ldr     x20, [x8, #0x2a8]
  100039838  mov     x0, x19
  10003983c  mov     x1, x20
  100039840  bl      _objc_msgSend                            ; [self statusBarViewController]
  100039844  mov     x29, x29
  100039848  bl      _objc_retainAutoreleasedReturnValue
  10003984c  mov     x21, x0
  100039850  adrp    x8, #0x100417000
  100039854  nop
  100039858  ldr     x1, [x8, #0x2b0]
  10003985c  mov     w2, #0
  100039860  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  100039864  mov     x0, x21
  100039868  bl      _objc_release
  10003986c  mov     x0, x19
  100039870  mov     x1, x20
  100039874  bl      _objc_msgSend                            ; [self statusBarViewController]
  100039878  mov     x29, x29
  10003987c  bl      _objc_retainAutoreleasedReturnValue
  100039880  mov     x21, x0
  100039884  adrp    x8, #0x100417000
  100039888  nop
  10003988c  ldr     x1, [x8, #0x2b8]
  100039890  mov     w2, #0
  100039894  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  100039898  mov     x0, x21
  10003989c  bl      _objc_release
  1000398a0  mov     x0, x19
  1000398a4  mov     x1, x20
  1000398a8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000398ac  mov     x29, x29
  1000398b0  bl      _objc_retainAutoreleasedReturnValue
  1000398b4  mov     x21, x0
  1000398b8  adrp    x8, #0x100417000
  1000398bc  nop
  1000398c0  ldr     x1, [x8, #0x2c0]
  1000398c4  mov     w2, #0
  1000398c8  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  1000398cc  mov     x0, x21
  1000398d0  bl      _objc_release
  1000398d4  adrp    x8, #0x100416000
  1000398d8  nop
  1000398dc  ldr     x22, [x8, #0xb80]
  1000398e0  mov     x0, x19
  1000398e4  mov     x1, x22
  1000398e8  bl      _objc_msgSend                            ; [self titleLabel]
  1000398ec  mov     x29, x29
  1000398f0  bl      _objc_retainAutoreleasedReturnValue
  1000398f4  mov     x21, x0
  1000398f8  adrp    x8, #0x100416000
  1000398fc  nop
  100039900  ldr     x1, [x8, #0xb88]
  100039904  bl      _objc_msgSend                            ; [[self titleLabel] setupAsTitle]
  100039908  mov     x0, x21
  10003990c  bl      _objc_release
  100039910  mov     x0, x19
  100039914  mov     x1, x20
  100039918  bl      _objc_msgSend                            ; [self statusBarViewController]
  10003991c  mov     x29, x29
  100039920  bl      _objc_retainAutoreleasedReturnValue
  100039924  mov     x23, x0
  100039928  adrp    x8, #0x100417000
  10003992c  nop
  100039930  ldr     x1, [x8, #0x2c8]
  100039934  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100039938  mov     x29, x29
  10003993c  bl      _objc_retainAutoreleasedReturnValue
  100039940  mov     x24, x0
  100039944  adrp    x8, #0x100416000
  100039948  nop
  10003994c  ldr     x21, [x8, #0xb68]
  100039950  adrp    x2, #0x1003bc000
  100039954  add     x2, x2, #0x5d0                           ; @"INFO"
  100039958  mov     x1, x21
  10003995c  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"INFO"]
  100039960  mov     x0, x24
  100039964  bl      _objc_release
  100039968  mov     x0, x23
  10003996c  bl      _objc_release
  100039970  adrp    x8, #0x10041f000
  100039974  ldrsw   x24, [x8, #0x888]                        ; ivar offset ADInfoViewController.pageName (+0x140)
  100039978  ldr     x0, [x19, x24]                           ; x0 = self->pageName
  10003997c  adrp    x8, #0x100416000
  100039980  nop
  100039984  ldr     x23, [x8, #0xf58]
  100039988  adrp    x2, #0x1003bc000
  10003998c  add     x2, x2, #0x5f0                           ; @"challenge"
  100039990  mov     x1, x23
  100039994  bl      _objc_msgSend                            ; [self->pageName isEqualToString:@"challenge"]
  100039998  cbz     w0, loc_100039b84                        ; if ([self->pageName isEqualToString:@"challenge"] == 0)
  10003999c  mov     x0, x19
  1000399a0  mov     x1, x22
  1000399a4  bl      _objc_msgSend                            ; [self titleLabel]
  1000399a8  mov     x29, x29
  1000399ac  bl      _objc_retainAutoreleasedReturnValue
  1000399b0  mov     x24, x0
  1000399b4  adrp    x27, #0x10041d000
  1000399b8  ldr     x0, [x27, #0xee8]                        ; class NSBundle
  1000399bc  adrp    x8, #0x100416000
  1000399c0  nop
  1000399c4  ldr     x23, [x8, #0xb58]
  1000399c8  mov     x1, x23
  1000399cc  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000399d0  mov     x29, x29
  1000399d4  bl      _objc_retainAutoreleasedReturnValue
  1000399d8  mov     x25, x0
  1000399dc  adrp    x8, #0x100416000
  1000399e0  nop
  1000399e4  ldr     x22, [x8, #0xb60]
  1000399e8  mov     x4, #0
  1000399ec  adrp    x2, #0x1003bc000
  1000399f0  add     x2, x2, #0x610                           ; @"CHALLENGE_INFO_TITLE"
  1000399f4  adrp    x3, #0x1003b9000
  1000399f8  add     x3, x3, #0x870                           ; @""
  1000399fc  mov     x1, x22
  100039a00  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"CHALLENGE_INFO_TITLE" value:@"" table:0]
  100039a04  mov     x29, x29
  100039a08  bl      _objc_retainAutoreleasedReturnValue
  100039a0c  mov     x26, x0
  100039a10  mov     x0, x24
  100039a14  mov     x1, x21
  100039a18  mov     x2, x26
  100039a1c  bl      _objc_msgSend                            ; [[self titleLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"CHALLENGE_INFO_TITLE" value:@"" table:0]]
  100039a20  mov     x0, x26
  100039a24  bl      _objc_release
  100039a28  mov     x0, x25
  100039a2c  bl      _objc_release
  100039a30  mov     x0, x24
  100039a34  bl      _objc_release
  100039a38  adrp    x8, #0x100418000
  100039a3c  nop
  100039a40  ldr     x1, [x8, #0x5b0]
  100039a44  mov     x0, x19
  100039a48  bl      _objc_msgSend                            ; [self infoTextView]
  100039a4c  mov     x29, x29
  100039a50  bl      _objc_retainAutoreleasedReturnValue
  100039a54  mov     x24, x0
  100039a58  ldr     x0, [x27, #0xee8]                        ; class NSBundle
  100039a5c  mov     x1, x23
  100039a60  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100039a64  mov     x29, x29
  100039a68  bl      _objc_retainAutoreleasedReturnValue
  100039a6c  mov     x25, x0
  100039a70  mov     x4, #0
  100039a74  adrp    x2, #0x1003bc000
  100039a78  add     x2, x2, #0x630                           ; @"CHALLENGE_INFO_TEXT"
  100039a7c  adrp    x3, #0x1003b9000
  100039a80  add     x3, x3, #0x870                           ; @""
  100039a84  mov     x1, x22
  100039a88  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"CHALLENGE_INFO_TEXT" value:@"" table:0]
  100039a8c  mov     x29, x29
  100039a90  bl      _objc_retainAutoreleasedReturnValue
  100039a94  mov     x26, x0
  100039a98  mov     x0, x24
  100039a9c  mov     x1, x21
  100039aa0  mov     x2, x26
  100039aa4  bl      _objc_msgSend                            ; [[self infoTextView] setText:[[NSBundle mainBundle] localizedStringForKey:@"CHALLENGE_INFO_TEXT" value:@"" table:0]]
  100039aa8  mov     x0, x26
  100039aac  bl      _objc_release
  100039ab0  mov     x0, x25
  100039ab4  bl      _objc_release
  100039ab8  mov     x0, x24
  100039abc  bl      _objc_release
  100039ac0  adrp    x8, #0x100418000
  100039ac4  nop
  100039ac8  ldr     x1, [x8, #0x5b8]
  100039acc  mov     x0, x19
  100039ad0  bl      _objc_msgSend                            ; [self infoTitle]
  100039ad4  mov     x29, x29
  100039ad8  bl      _objc_retainAutoreleasedReturnValue
  100039adc  mov     x24, x0
  100039ae0  ldr     x0, [x27, #0xee8]                        ; class NSBundle
  100039ae4  mov     x1, x23
  100039ae8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100039aec  mov     x29, x29
  100039af0  bl      _objc_retainAutoreleasedReturnValue
  100039af4  mov     x23, x0
  100039af8  mov     x4, #0
  100039afc  adrp    x2, #0x1003bc000
  100039b00  add     x2, x2, #0x610                           ; @"CHALLENGE_INFO_TITLE"
  100039b04  adrp    x3, #0x1003b9000
  100039b08  add     x3, x3, #0x870                           ; @""
  100039b0c  mov     x1, x22
  100039b10  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"CHALLENGE_INFO_TITLE" value:@"" table:0]
  100039b14  mov     x29, x29
  100039b18  bl      _objc_retainAutoreleasedReturnValue
  100039b1c  mov     x22, x0
  100039b20  mov     x0, x24
  100039b24  mov     x1, x21
  100039b28  mov     x2, x22
  100039b2c  bl      _objc_msgSend                            ; [[self infoTitle] setText:[[NSBundle mainBundle] localizedStringForKey:@"CHALLENGE_INFO_TITLE" value:@"" table:0]]
  100039b30  mov     x0, x22
  100039b34  bl      _objc_release
  100039b38  mov     x0, x23
  100039b3c  bl      _objc_release
  100039b40  mov     x0, x24
  100039b44  bl      _objc_release
  100039b48  adrp    x8, #0x100417000
  100039b4c  nop
  100039b50  ldr     x1, [x8, #0x1b0]
  100039b54  mov     x0, x19
  100039b58  bl      _objc_msgSend                            ; [self armoryButton]
  100039b5c  mov     x29, x29
  100039b60  bl      _objc_retainAutoreleasedReturnValue
  100039b64  mov     x21, x0
  100039b68  adrp    x8, #0x100416000
  100039b6c  nop
  100039b70  ldr     x1, [x8, #0xba8]
  100039b74  mov     w2, #1
  100039b78  bl      _objc_msgSend                            ; [[self armoryButton] setHidden:1]
  100039b7c  b       loc_100039d7c
  100039b80  b       loc_100039f80
loc_100039b84:
  100039b84  ldr     x0, [x19, x24]                           ; x0 = self->pageName
  100039b88  adrp    x2, #0x1003bc000
  100039b8c  add     x2, x2, #0x650                           ; @"endless"
  100039b90  mov     x1, x23
  100039b94  bl      _objc_msgSend                            ; [self->pageName isEqualToString:@"endless"]
  100039b98  cbz     w0, loc_100039d84                        ; if ([self->pageName isEqualToString:@"endless"] == 0)
  100039b9c  adrp    x8, #0x100418000
  100039ba0  nop
  100039ba4  ldr     x1, [x8, #0x5b0]
  100039ba8  mov     x0, x19
  100039bac  bl      _objc_msgSend                            ; [self infoTextView]
  100039bb0  mov     x29, x29
  100039bb4  bl      _objc_retainAutoreleasedReturnValue
  100039bb8  mov     x25, x0
  100039bbc  adrp    x28, #0x10041d000
  100039bc0  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  100039bc4  adrp    x8, #0x100416000
  100039bc8  nop
  100039bcc  ldr     x24, [x8, #0xb58]
  100039bd0  mov     x1, x24
  100039bd4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100039bd8  mov     x29, x29
  100039bdc  bl      _objc_retainAutoreleasedReturnValue
  100039be0  mov     x26, x0
  100039be4  adrp    x8, #0x100416000
  100039be8  nop
  100039bec  ldr     x23, [x8, #0xb60]
  100039bf0  mov     x4, #0
  100039bf4  adrp    x2, #0x1003bc000
  100039bf8  add     x2, x2, #0x670                           ; @"ENDLESS_INFO_TEXT"
  100039bfc  adrp    x3, #0x1003b9000
  100039c00  add     x3, x3, #0x870                           ; @""
  100039c04  mov     x1, x23
  100039c08  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"ENDLESS_INFO_TEXT" value:@"" table:0]
  100039c0c  mov     x29, x29
  100039c10  bl      _objc_retainAutoreleasedReturnValue
  100039c14  mov     x27, x0
  100039c18  mov     x0, x25
  100039c1c  mov     x1, x21
  100039c20  mov     x2, x27
  100039c24  bl      _objc_msgSend                            ; [[self infoTextView] setText:[[NSBundle mainBundle] localizedStringForKey:@"ENDLESS_INFO_TEXT" value:@"" table:0]]
  100039c28  mov     x0, x27
  100039c2c  bl      _objc_release
  100039c30  mov     x0, x26
  100039c34  bl      _objc_release
  100039c38  mov     x0, x25
  100039c3c  bl      _objc_release
  100039c40  adrp    x8, #0x100418000
  100039c44  nop
  100039c48  ldr     x1, [x8, #0x5b8]
  100039c4c  mov     x0, x19
  100039c50  bl      _objc_msgSend                            ; [self infoTitle]
  100039c54  mov     x29, x29
  100039c58  bl      _objc_retainAutoreleasedReturnValue
  100039c5c  mov     x25, x0
  100039c60  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  100039c64  mov     x1, x24
  100039c68  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100039c6c  mov     x29, x29
  100039c70  bl      _objc_retainAutoreleasedReturnValue
  100039c74  mov     x26, x0
  100039c78  mov     x4, #0
  100039c7c  adrp    x2, #0x1003bc000
  100039c80  add     x2, x2, #0x690                           ; @"ENDLESS_INFO_TITLE"
  100039c84  adrp    x3, #0x1003b9000
  100039c88  add     x3, x3, #0x870                           ; @""
  100039c8c  mov     x1, x23
  100039c90  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"ENDLESS_INFO_TITLE" value:@"" table:0]
  100039c94  mov     x29, x29
  100039c98  bl      _objc_retainAutoreleasedReturnValue
  100039c9c  mov     x27, x0
  100039ca0  mov     x0, x25
  100039ca4  mov     x1, x21
  100039ca8  mov     x2, x27
  100039cac  bl      _objc_msgSend                            ; [[self infoTitle] setText:[[NSBundle mainBundle] localizedStringForKey:@"ENDLESS_INFO_TITLE" value:@"" table:0]]
  100039cb0  mov     x0, x27
  100039cb4  bl      _objc_release
  100039cb8  mov     x0, x26
  100039cbc  bl      _objc_release
  100039cc0  mov     x0, x25
  100039cc4  bl      _objc_release
  100039cc8  mov     x0, x19
  100039ccc  mov     x1, x22
  100039cd0  bl      _objc_msgSend                            ; [self titleLabel]
  100039cd4  mov     x29, x29
  100039cd8  bl      _objc_retainAutoreleasedReturnValue
  100039cdc  mov     x22, x0
  100039ce0  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  100039ce4  mov     x1, x24
  100039ce8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100039cec  mov     x29, x29
  100039cf0  bl      _objc_retainAutoreleasedReturnValue
  100039cf4  mov     x24, x0
  100039cf8  mov     x4, #0
  100039cfc  adrp    x2, #0x1003bc000
  100039d00  add     x2, x2, #0x690                           ; @"ENDLESS_INFO_TITLE"
  100039d04  adrp    x3, #0x1003b9000
  100039d08  add     x3, x3, #0x870                           ; @""
  100039d0c  mov     x1, x23
  100039d10  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"ENDLESS_INFO_TITLE" value:@"" table:0]
  100039d14  mov     x29, x29
  100039d18  bl      _objc_retainAutoreleasedReturnValue
  100039d1c  mov     x23, x0
  100039d20  mov     x0, x22
  100039d24  mov     x1, x21
  100039d28  mov     x2, x23
  100039d2c  bl      _objc_msgSend                            ; [[self titleLabel] setText:[[NSBundle mainBundle] localizedStringForKey:@"ENDLESS_INFO_TITLE" value:@"" table:0]]
  100039d30  mov     x0, x23
  100039d34  bl      _objc_release
  100039d38  mov     x0, x24
  100039d3c  bl      _objc_release
  100039d40  mov     x0, x22
  100039d44  bl      _objc_release
  100039d48  adrp    x8, #0x100417000
  100039d4c  nop
  100039d50  ldr     x1, [x8, #0x1b0]
  100039d54  mov     x0, x19
  100039d58  bl      _objc_msgSend                            ; [self armoryButton]
  100039d5c  mov     x29, x29
  100039d60  bl      _objc_retainAutoreleasedReturnValue
  100039d64  mov     x21, x0
  100039d68  adrp    x8, #0x100416000
  100039d6c  nop
  100039d70  ldr     x1, [x8, #0xba8]
  100039d74  mov     w2, #0
  100039d78  bl      _objc_msgSend                            ; [[self armoryButton] setHidden:0]
loc_100039d7c:
  100039d7c  mov     x0, x21
  100039d80  bl      _objc_release
loc_100039d84:
  100039d84  adrp    x8, #0x100418000
  100039d88  nop
  100039d8c  ldr     x1, [x8, #0x5b0]
  100039d90  mov     x0, x19
  100039d94  bl      _objc_msgSend                            ; [self infoTextView]
  100039d98  mov     x29, x29
  100039d9c  bl      _objc_retainAutoreleasedReturnValue
  100039da0  mov     x21, x0
  100039da4  adrp    x8, #0x100416000
  100039da8  nop
  100039dac  ldr     x1, [x8, #0xeb8]
  100039db0  bl      _objc_msgSend                            ; [[self infoTextView] setupAsInfo]
  100039db4  mov     x0, x21
  100039db8  bl      _objc_release
  100039dbc  adrp    x8, #0x100416000
  100039dc0  nop
  100039dc4  ldr     x22, [x8, #0xf18]
  100039dc8  mov     x0, x19
  100039dcc  mov     x1, x22
  100039dd0  bl      _objc_msgSend                            ; [self view]
  100039dd4  mov     x29, x29
  100039dd8  bl      _objc_retainAutoreleasedReturnValue
  100039ddc  mov     x21, x0
  100039de0  mov     x0, x19
  100039de4  mov     x1, x20
  100039de8  bl      _objc_msgSend                            ; [self statusBarViewController]
  100039dec  mov     x29, x29
  100039df0  bl      _objc_retainAutoreleasedReturnValue
  100039df4  mov     x20, x0
  100039df8  mov     x1, x22
  100039dfc  bl      _objc_msgSend                            ; [[self statusBarViewController] view]
  100039e00  mov     x29, x29
  100039e04  bl      _objc_retainAutoreleasedReturnValue
  100039e08  mov     x22, x0
  100039e0c  adrp    x8, #0x100417000
  100039e10  nop
  100039e14  ldr     x1, [x8, #0x190]
  100039e18  mov     x0, x21
  100039e1c  mov     x2, x22
  100039e20  bl      _objc_msgSend                            ; [[self view] bringSubviewToFront:[[self statusBarViewController] view]]
  100039e24  mov     x0, x22
  100039e28  bl      _objc_release
  100039e2c  mov     x0, x20
  100039e30  bl      _objc_release
  100039e34  mov     x0, x21
  100039e38  bl      _objc_release
  100039e3c  sub     sp, x29, #0x50
  100039e40  ldp     x29, x30, [sp, #0x50]
  100039e44  ldp     x20, x19, [sp, #0x40]
  100039e48  ldp     x22, x21, [sp, #0x30]
  100039e4c  ldp     x24, x23, [sp, #0x20]
  100039e50  ldp     x26, x25, [sp, #0x10]
  100039e54  ldp     x28, x27, [sp], #0x60
  100039e58  ret
  100039e5c  b       loc_100039f80
  100039e60  b       loc_100039f80
  100039e64  b       loc_100039f80
  100039e68  b       loc_100039f80
  100039e6c  mov     x19, x0
  100039e70  b       loc_100039e80
  100039e74  mov     x19, x0
  100039e78  mov     x0, x24
  100039e7c  bl      _objc_release
loc_100039e80:
  100039e80  mov     x0, x23
  100039e84  b       loc_100039f88
  100039e88  b       loc_100039f80
  100039e8c  b       loc_100039f80
  100039e90  mov     x19, x0
  100039e94  b       loc_100039ea4
  100039e98  mov     x19, x0
  100039e9c  mov     x0, x22
  100039ea0  bl      _objc_release
loc_100039ea4:
  100039ea4  mov     x0, x20
  100039ea8  bl      _objc_release
  100039eac  b       loc_100039f84
  100039eb0  mov     x19, x0
  100039eb4  b       loc_100039f0c
  100039eb8  mov     x19, x0
  100039ebc  b       loc_100039ee0
  100039ec0  b       loc_100039ed4
  100039ec4  mov     x19, x0
  100039ec8  b       loc_100039f0c
  100039ecc  mov     x19, x0
  100039ed0  b       loc_100039ee0
loc_100039ed4:
  100039ed4  mov     x19, x0
  100039ed8  mov     x0, x26
  100039edc  bl      _objc_release
loc_100039ee0:
  100039ee0  mov     x0, x25
  100039ee4  b       loc_100039f08
  100039ee8  mov     x19, x0
  100039eec  b       loc_100039f0c
  100039ef0  mov     x19, x0
  100039ef4  b       loc_100039f04
  100039ef8  mov     x19, x0
  100039efc  mov     x0, x22
  100039f00  bl      _objc_release
loc_100039f04:
  100039f04  mov     x0, x23
loc_100039f08:
  100039f08  bl      _objc_release
loc_100039f0c:
  100039f0c  mov     x0, x24
  100039f10  b       loc_100039f88
  100039f14  mov     x19, x0
  100039f18  b       loc_100039f4c
  100039f1c  mov     x19, x0
  100039f20  b       loc_100039f44
  100039f24  b       loc_100039f38
  100039f28  mov     x19, x0
  100039f2c  b       loc_100039f4c
  100039f30  mov     x19, x0
  100039f34  b       loc_100039f44
loc_100039f38:
  100039f38  mov     x19, x0
  100039f3c  mov     x0, x27
  100039f40  bl      _objc_release
loc_100039f44:
  100039f44  mov     x0, x26
  100039f48  bl      _objc_release
loc_100039f4c:
  100039f4c  mov     x0, x25
  100039f50  b       loc_100039f88
  100039f54  mov     x19, x0
  100039f58  b       loc_100039f78
  100039f5c  mov     x19, x0
  100039f60  b       loc_100039f70
  100039f64  mov     x19, x0
  100039f68  mov     x0, x23
  100039f6c  bl      _objc_release
loc_100039f70:
  100039f70  mov     x0, x24
  100039f74  bl      _objc_release
loc_100039f78:
  100039f78  mov     x0, x22
  100039f7c  b       loc_100039f88
loc_100039f80:
  100039f80  mov     x19, x0
loc_100039f84:
  100039f84  mov     x0, x21
loc_100039f88:
  100039f88  bl      _objc_release
  100039f8c  mov     x0, x19
  100039f90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfoViewController continueButtonPressed:]
; address 0x100039f94  size 356  kind objc
; ======================================================================
  100039f94  stp     x22, x21, [sp, #-0x30]!
  100039f98  stp     x20, x19, [sp, #0x10]
  100039f9c  stp     x29, x30, [sp, #0x20]
  100039fa0  add     x29, sp, #0x20
  100039fa4  mov     x19, x0
  100039fa8  adrp    x8, #0x10041f000
  100039fac  ldrsw   x21, [x8, #0x888]                        ; ivar offset ADInfoViewController.pageName (+0x140)
  100039fb0  ldr     x0, [x19, x21]                           ; x0 = self->pageName
  100039fb4  adrp    x8, #0x100416000
  100039fb8  nop
  100039fbc  ldr     x20, [x8, #0xf58]
  100039fc0  adrp    x2, #0x1003bc000
  100039fc4  add     x2, x2, #0x5f0                           ; @"challenge"
  100039fc8  mov     x1, x20
  100039fcc  bl      _objc_msgSend                            ; [self->pageName isEqualToString:@"challenge"]
  100039fd0  cbz     w0, loc_10003a02c                        ; if ([self->pageName isEqualToString:@"challenge"] == 0)
  100039fd4  adrp    x8, #0x10041d000
  100039fd8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100039fdc  adrp    x8, #0x100416000
  100039fe0  nop
  100039fe4  ldr     x1, [x8, #0xb28]
  100039fe8  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100039fec  mov     x29, x29
  100039ff0  bl      _objc_retainAutoreleasedReturnValue
  100039ff4  mov     x19, x0
  100039ff8  adrp    x8, #0x100416000
  100039ffc  nop
  10003a000  ldr     x1, [x8, #0xc18]
  10003a004  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10003a008  mov     x29, x29
  10003a00c  bl      _objc_retainAutoreleasedReturnValue
  10003a010  mov     x20, x0
  10003a014  adrp    x8, #0x100418000
  10003a018  nop
  10003a01c  ldr     x1, [x8, #0x5c0]
  10003a020  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToTabbedChallengeScreen]
  10003a024  b       loc_10003a094
  10003a028  b       loc_10003a0d8
loc_10003a02c:
  10003a02c  ldr     x0, [x19, x21]                           ; x0 = self->pageName
  10003a030  adrp    x2, #0x1003bc000
  10003a034  add     x2, x2, #0x650                           ; @"endless"
  10003a038  mov     x1, x20
  10003a03c  bl      _objc_msgSend                            ; [self->pageName isEqualToString:@"endless"]
  10003a040  cbz     w0, loc_10003a0b0                        ; if ([self->pageName isEqualToString:@"endless"] == 0)
  10003a044  adrp    x8, #0x10041d000
  10003a048  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10003a04c  adrp    x8, #0x100416000
  10003a050  nop
  10003a054  ldr     x1, [x8, #0xb28]
  10003a058  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10003a05c  mov     x29, x29
  10003a060  bl      _objc_retainAutoreleasedReturnValue
  10003a064  mov     x19, x0
  10003a068  adrp    x8, #0x100416000
  10003a06c  nop
  10003a070  ldr     x1, [x8, #0xc18]
  10003a074  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10003a078  mov     x29, x29
  10003a07c  bl      _objc_retainAutoreleasedReturnValue
  10003a080  mov     x20, x0
  10003a084  adrp    x8, #0x100418000
  10003a088  nop
  10003a08c  ldr     x1, [x8, #0x5c8]
  10003a090  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToTarot]
loc_10003a094:
  10003a094  mov     x0, x20
  10003a098  bl      _objc_release
  10003a09c  mov     x0, x19
  10003a0a0  ldp     x29, x30, [sp, #0x20]
  10003a0a4  ldp     x20, x19, [sp, #0x10]
  10003a0a8  ldp     x22, x21, [sp], #0x30
  10003a0ac  b       _objc_release
loc_10003a0b0:
  10003a0b0  ldp     x29, x30, [sp, #0x20]
  10003a0b4  ldp     x20, x19, [sp, #0x10]
  10003a0b8  ldp     x22, x21, [sp], #0x30
  10003a0bc  ret
  10003a0c0  mov     x20, x0
  10003a0c4  b       loc_10003a0f0
  10003a0c8  mov     x20, x0
  10003a0cc  b       loc_10003a0e8
  10003a0d0  mov     x20, x0
  10003a0d4  b       loc_10003a0e8
loc_10003a0d8:
  10003a0d8  mov     x1, x20
  10003a0dc  mov     x20, x0
  10003a0e0  mov     x0, x1
  10003a0e4  bl      _objc_release
loc_10003a0e8:
  10003a0e8  mov     x0, x19
  10003a0ec  bl      _objc_release
loc_10003a0f0:
  10003a0f0  mov     x0, x20
  10003a0f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfoViewController backButtonPressed]
; address 0x10003a0f8  size 160  kind objc
; ======================================================================
  10003a0f8  stp     x22, x21, [sp, #-0x30]!
  10003a0fc  stp     x20, x19, [sp, #0x10]
  10003a100  stp     x29, x30, [sp, #0x20]
  10003a104  add     x29, sp, #0x20
  10003a108  adrp    x8, #0x10041d000
  10003a10c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10003a110  adrp    x8, #0x100416000
  10003a114  nop
  10003a118  ldr     x1, [x8, #0xb28]
  10003a11c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10003a120  mov     x29, x29
  10003a124  bl      _objc_retainAutoreleasedReturnValue
  10003a128  mov     x19, x0
  10003a12c  adrp    x8, #0x100416000
  10003a130  nop
  10003a134  ldr     x1, [x8, #0xc18]
  10003a138  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10003a13c  mov     x29, x29
  10003a140  bl      _objc_retainAutoreleasedReturnValue
  10003a144  mov     x20, x0
  10003a148  adrp    x8, #0x100418000
  10003a14c  nop
  10003a150  ldr     x1, [x8, #0x450]
  10003a154  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToPlayMenu]
  10003a158  mov     x0, x20
  10003a15c  bl      _objc_release
  10003a160  mov     x0, x19
  10003a164  ldp     x29, x30, [sp, #0x20]
  10003a168  ldp     x20, x19, [sp, #0x10]
  10003a16c  ldp     x22, x21, [sp], #0x30
  10003a170  b       _objc_release
  10003a174  mov     x21, x0
  10003a178  b       loc_10003a188
  10003a17c  mov     x21, x0
  10003a180  mov     x0, x20
  10003a184  bl      _objc_release
loc_10003a188:
  10003a188  mov     x0, x19
  10003a18c  bl      _objc_release
  10003a190  mov     x0, x21
  10003a194  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfoViewController didReceiveMemoryWarning]
; address 0x10003a198  size 60  kind objc
; ======================================================================
  10003a198  stp     x29, x30, [sp, #-0x10]!
  10003a19c  mov     x29, sp
  10003a1a0  sub     sp, sp, #0x10
  10003a1a4  str     x0, [sp]
  10003a1a8  adrp    x8, #0x10041e000
  10003a1ac  ldr     x8, [x8, #0xcb0]
  10003a1b0  str     x8, [sp, #8]
  10003a1b4  adrp    x8, #0x100416000
  10003a1b8  nop
  10003a1bc  ldr     x1, [x8, #0xbf8]
  10003a1c0  mov     x0, sp
  10003a1c4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10003a1c8  mov     sp, x29
  10003a1cc  ldp     x29, x30, [sp], #0x10
  10003a1d0  ret

; ======================================================================
; -[ADInfoViewController infoTitle]
; address 0x10003a1d4  size 16  kind objc
; ======================================================================
  10003a1d4  adrp    x8, #0x10041f000
  10003a1d8  ldrsw   x8, [x8, #0x88c]                         ; ivar offset ADInfoViewController._infoTitle (+0x148)
  10003a1dc  ldr     x0, [x0, x8]                             ; x0 = self->_infoTitle
  10003a1e0  ret

; ======================================================================
; -[ADInfoViewController setInfoTitle:]
; address 0x10003a1e4  size 56  kind objc
; ======================================================================
  10003a1e4  stp     x20, x19, [sp, #-0x20]!
  10003a1e8  stp     x29, x30, [sp, #0x10]
  10003a1ec  add     x29, sp, #0x10
  10003a1f0  mov     x19, x0
  10003a1f4  adrp    x8, #0x10041f000
  10003a1f8  ldrsw   x20, [x8, #0x88c]                        ; ivar offset ADInfoViewController._infoTitle (+0x148)
  10003a1fc  mov     x0, x2
  10003a200  bl      _objc_retain
  10003a204  ldr     x8, [x19, x20]                           ; x8 = self->_infoTitle
  10003a208  str     x0, [x19, x20]                           ; self->_infoTitle = arg1
  10003a20c  mov     x0, x8
  10003a210  ldp     x29, x30, [sp, #0x10]
  10003a214  ldp     x20, x19, [sp], #0x20
  10003a218  b       _objc_release

; ======================================================================
; -[ADInfoViewController infoTextView]
; address 0x10003a21c  size 16  kind objc
; ======================================================================
  10003a21c  adrp    x8, #0x10041f000
  10003a220  ldrsw   x8, [x8, #0x890]                         ; ivar offset ADInfoViewController._infoTextView (+0x150)
  10003a224  ldr     x0, [x0, x8]                             ; x0 = self->_infoTextView
  10003a228  ret

; ======================================================================
; -[ADInfoViewController setInfoTextView:]
; address 0x10003a22c  size 56  kind objc
; ======================================================================
  10003a22c  stp     x20, x19, [sp, #-0x20]!
  10003a230  stp     x29, x30, [sp, #0x10]
  10003a234  add     x29, sp, #0x10
  10003a238  mov     x19, x0
  10003a23c  adrp    x8, #0x10041f000
  10003a240  ldrsw   x20, [x8, #0x890]                        ; ivar offset ADInfoViewController._infoTextView (+0x150)
  10003a244  mov     x0, x2
  10003a248  bl      _objc_retain
  10003a24c  ldr     x8, [x19, x20]                           ; x8 = self->_infoTextView
  10003a250  str     x0, [x19, x20]                           ; self->_infoTextView = arg1
  10003a254  mov     x0, x8
  10003a258  ldp     x29, x30, [sp, #0x10]
  10003a25c  ldp     x20, x19, [sp], #0x20
  10003a260  b       _objc_release

; ======================================================================
; -[ADInfoViewController armoryButton]
; address 0x10003a264  size 16  kind objc
; ======================================================================
  10003a264  adrp    x8, #0x10041f000
  10003a268  ldrsw   x8, [x8, #0x894]                         ; ivar offset ADInfoViewController._armoryButton (+0x158)
  10003a26c  ldr     x0, [x0, x8]                             ; x0 = self->_armoryButton
  10003a270  ret

; ======================================================================
; -[ADInfoViewController setArmoryButton:]
; address 0x10003a274  size 56  kind objc
; ======================================================================
  10003a274  stp     x20, x19, [sp, #-0x20]!
  10003a278  stp     x29, x30, [sp, #0x10]
  10003a27c  add     x29, sp, #0x10
  10003a280  mov     x19, x0
  10003a284  adrp    x8, #0x10041f000
  10003a288  ldrsw   x20, [x8, #0x894]                        ; ivar offset ADInfoViewController._armoryButton (+0x158)
  10003a28c  mov     x0, x2
  10003a290  bl      _objc_retain
  10003a294  ldr     x8, [x19, x20]                           ; x8 = self->_armoryButton
  10003a298  str     x0, [x19, x20]                           ; self->_armoryButton = arg1
  10003a29c  mov     x0, x8
  10003a2a0  ldp     x29, x30, [sp, #0x10]
  10003a2a4  ldp     x20, x19, [sp], #0x20
  10003a2a8  b       _objc_release

; ======================================================================
; -[ADInfoViewController continueButton]
; address 0x10003a2ac  size 16  kind objc
; ======================================================================
  10003a2ac  adrp    x8, #0x10041f000
  10003a2b0  ldrsw   x8, [x8, #0x898]                         ; ivar offset ADInfoViewController._continueButton (+0x160)
  10003a2b4  ldr     x0, [x0, x8]                             ; x0 = self->_continueButton
  10003a2b8  ret

; ======================================================================
; -[ADInfoViewController setContinueButton:]
; address 0x10003a2bc  size 56  kind objc
; ======================================================================
  10003a2bc  stp     x20, x19, [sp, #-0x20]!
  10003a2c0  stp     x29, x30, [sp, #0x10]
  10003a2c4  add     x29, sp, #0x10
  10003a2c8  mov     x19, x0
  10003a2cc  adrp    x8, #0x10041f000
  10003a2d0  ldrsw   x20, [x8, #0x898]                        ; ivar offset ADInfoViewController._continueButton (+0x160)
  10003a2d4  mov     x0, x2
  10003a2d8  bl      _objc_retain
  10003a2dc  ldr     x8, [x19, x20]                           ; x8 = self->_continueButton
  10003a2e0  str     x0, [x19, x20]                           ; self->_continueButton = arg1
  10003a2e4  mov     x0, x8
  10003a2e8  ldp     x29, x30, [sp, #0x10]
  10003a2ec  ldp     x20, x19, [sp], #0x20
  10003a2f0  b       _objc_release

; ======================================================================
; -[ADInfoViewController titleLabel]
; address 0x10003a2f4  size 16  kind objc
; ======================================================================
  10003a2f4  adrp    x8, #0x10041f000
  10003a2f8  ldrsw   x8, [x8, #0x89c]                         ; ivar offset ADInfoViewController._titleLabel (+0x168)
  10003a2fc  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  10003a300  ret

; ======================================================================
; -[ADInfoViewController setTitleLabel:]
; address 0x10003a304  size 56  kind objc
; ======================================================================
  10003a304  stp     x20, x19, [sp, #-0x20]!
  10003a308  stp     x29, x30, [sp, #0x10]
  10003a30c  add     x29, sp, #0x10
  10003a310  mov     x19, x0
  10003a314  adrp    x8, #0x10041f000
  10003a318  ldrsw   x20, [x8, #0x89c]                        ; ivar offset ADInfoViewController._titleLabel (+0x168)
  10003a31c  mov     x0, x2
  10003a320  bl      _objc_retain
  10003a324  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  10003a328  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  10003a32c  mov     x0, x8
  10003a330  ldp     x29, x30, [sp, #0x10]
  10003a334  ldp     x20, x19, [sp], #0x20
  10003a338  b       _objc_release

; ======================================================================
; -[ADInfoViewController .cxx_destruct]
; address 0x10003a33c  size 144  kind objc
; ======================================================================
  10003a33c  stp     x20, x19, [sp, #-0x20]!
  10003a340  stp     x29, x30, [sp, #0x10]
  10003a344  add     x29, sp, #0x10
  10003a348  mov     x19, x0
  10003a34c  adrp    x8, #0x10041f000
  10003a350  ldrsw   x8, [x8, #0x89c]                         ; ivar offset ADInfoViewController._titleLabel (+0x168)
  10003a354  add     x0, x19, x8
  10003a358  mov     x1, #0
  10003a35c  bl      _objc_storeStrong
  10003a360  adrp    x8, #0x10041f000
  10003a364  ldrsw   x8, [x8, #0x898]                         ; ivar offset ADInfoViewController._continueButton (+0x160)
  10003a368  add     x0, x19, x8
  10003a36c  mov     x1, #0
  10003a370  bl      _objc_storeStrong
  10003a374  adrp    x8, #0x10041f000
  10003a378  ldrsw   x8, [x8, #0x894]                         ; ivar offset ADInfoViewController._armoryButton (+0x158)
  10003a37c  add     x0, x19, x8
  10003a380  mov     x1, #0
  10003a384  bl      _objc_storeStrong
  10003a388  adrp    x8, #0x10041f000
  10003a38c  ldrsw   x8, [x8, #0x890]                         ; ivar offset ADInfoViewController._infoTextView (+0x150)
  10003a390  add     x0, x19, x8
  10003a394  mov     x1, #0
  10003a398  bl      _objc_storeStrong
  10003a39c  adrp    x8, #0x10041f000
  10003a3a0  ldrsw   x8, [x8, #0x88c]                         ; ivar offset ADInfoViewController._infoTitle (+0x148)
  10003a3a4  add     x0, x19, x8
  10003a3a8  mov     x1, #0
  10003a3ac  bl      _objc_storeStrong
  10003a3b0  mov     x1, #0
  10003a3b4  adrp    x8, #0x10041f000
  10003a3b8  ldrsw   x8, [x8, #0x888]                         ; ivar offset ADInfoViewController.pageName (+0x140)
  10003a3bc  add     x0, x19, x8
  10003a3c0  ldp     x29, x30, [sp, #0x10]
  10003a3c4  ldp     x20, x19, [sp], #0x20
  10003a3c8  b       _objc_storeStrong
