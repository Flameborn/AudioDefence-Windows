// unit ADButtonWithFont+ImageWithTitle — 9 functions
//   0x1000076e8     556  -[ADButtonWithFont(ImageWithTitle) centerButtonTextWithCoinsImage]
//   0x100007914     556  -[ADButtonWithFont(ImageWithTitle) centerButtonTextWithDiamondsImage]
//   0x100007b40      76  -[ADButtonWithFont(ImageWithTitle) centerButtonWithoutImage]
//   0x100007b8c     340  -[ADButtonWithFont(ImageWithTitle) setFontByDeviceType]
//   0x100007ce0     104  -[ADButtonWithFont(ImageWithTitle) setEdgeInsetsWithSpacingTextSpacing:WithImageSpacing:]
//   0x100007d48      68  +[ADButtonWithFont(ImageWithTitle) sharedDiamondImage]
//   0x100007d8c     152  +[ADButtonWithFont(ImageWithTitle) sharedDiamondImage]_block_invoke
//   0x100007e24     168  +[ADButtonWithFont(ImageWithTitle) cropDiamondsImage:]
//   0x100007ecc      32  +[ADButtonWithFont(ImageWithTitle) sharedCoinsImage]

; ======================================================================
; -[ADButtonWithFont(ImageWithTitle) centerButtonTextWithCoinsImage]
; address 0x1000076e8  size 556  kind objc
; ======================================================================
  1000076e8  stp     d9, d8, [sp, #-0x50]!
  1000076ec  stp     x24, x23, [sp, #0x10]
  1000076f0  stp     x22, x21, [sp, #0x20]
  1000076f4  stp     x20, x19, [sp, #0x30]
  1000076f8  stp     x29, x30, [sp, #0x40]
  1000076fc  add     x29, sp, #0x40
  100007700  sub     sp, sp, #0x20
  100007704  mov     x19, x0
  100007708  adrp    x23, #0x1003b0000
  10000770c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100007710  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100007714  str     x23, [sp, #0x18]
  100007718  adrp    x8, #0x100416000
  10000771c  nop
  100007720  ldr     x1, [x8, #0xcc0]
  100007724  mov     x2, #0
  100007728  bl      _objc_msgSend                            ; [self titleForState:0]
  10000772c  mov     x29, x29
  100007730  bl      _objc_retainAutoreleasedReturnValue
  100007734  mov     x20, x0
  100007738  adrp    x8, #0x1003b0000
  10000773c  ldr     x8, [x8, #0x28]                          ; _NSFontAttributeName
  100007740  ldr     x8, [x8]                                 ; x8 = _NSFontAttributeName[+0x0]
  100007744  str     x8, [sp, #8]
  100007748  adrp    x8, #0x100416000
  10000774c  nop
  100007750  ldr     x1, [x8, #0xb80]
  100007754  mov     x0, x19
  100007758  bl      _objc_msgSend                            ; [self titleLabel]
  10000775c  mov     x29, x29
  100007760  bl      _objc_retainAutoreleasedReturnValue
  100007764  mov     x21, x0
  100007768  adrp    x8, #0x100416000
  10000776c  nop
  100007770  ldr     x1, [x8, #0xcc8]
  100007774  bl      _objc_msgSend                            ; [[self titleLabel] font]
  100007778  mov     x29, x29
  10000777c  bl      _objc_retainAutoreleasedReturnValue
  100007780  mov     x22, x0
  100007784  str     x22, [sp, #0x10]
  100007788  adrp    x8, #0x10041d000
  10000778c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100007790  adrp    x8, #0x100416000
  100007794  nop
  100007798  ldr     x1, [x8, #0xcd0]
  10000779c  add     x2, sp, #0x10
  1000077a0  add     x3, sp, #8
  1000077a4  mov     w4, #1
  1000077a8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  1000077ac  mov     x2, x0
  1000077b0  adrp    x8, #0x100416000
  1000077b4  nop
  1000077b8  ldr     x1, [x8, #0xcd8]
  1000077bc  mov     x0, x20
  1000077c0  bl      _objc_msgSend                            ; [[self titleForState:0] sizeWithAttributes:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  1000077c4  mov     v8.16b, v0.16b
  1000077c8  mov     x0, x22
  1000077cc  bl      _objc_release
  1000077d0  mov     x0, x21
  1000077d4  bl      _objc_release
  1000077d8  mov     x0, x20
  1000077dc  bl      _objc_release
  1000077e0  adrp    x8, #0x10041d000
  1000077e4  ldr     x0, [x8, #0xf00]                         ; class ADButtonWithFont
  1000077e8  adrp    x8, #0x100416000
  1000077ec  nop
  1000077f0  ldr     x1, [x8, #0xce0]
  1000077f4  bl      _objc_msgSend                            ; [ADButtonWithFont sharedCoinsImage]
  1000077f8  mov     x29, x29
  1000077fc  bl      _objc_retainAutoreleasedReturnValue
  100007800  mov     x20, x0
  100007804  adrp    x8, #0x100416000
  100007808  nop
  10000780c  ldr     x1, [x8, #0xce8]
  100007810  mov     x3, #0
  100007814  mov     x0, x19
  100007818  mov     x2, x20
  10000781c  bl      _objc_msgSend                            ; [self setImage:[ADButtonWithFont sharedCoinsImage] forState:0]
  100007820  adrp    x8, #0x100416000
  100007824  nop
  100007828  ldr     x1, [x8, #0xcf0]
  10000782c  mov     x0, x19
  100007830  bl      _objc_msgSend                            ; [self imageView]
  100007834  mov     x29, x29
  100007838  bl      _objc_retainAutoreleasedReturnValue
  10000783c  mov     x21, x0
  100007840  adrp    x8, #0x100416000
  100007844  nop
  100007848  ldr     x1, [x8, #0xcf8]
  10000784c  bl      _objc_msgSend                            ; [[self imageView] image]
  100007850  mov     x29, x29
  100007854  bl      _objc_retainAutoreleasedReturnValue
  100007858  mov     x22, x0
  10000785c  adrp    x8, #0x100416000
  100007860  nop
  100007864  ldr     x1, [x8, #0xd00]
  100007868  bl      _objc_msgSend                            ; [[[self imageView] image] size]
  10000786c  adrp    x8, #0x100416000
  100007870  nop
  100007874  ldr     x1, [x8, #0xd08]
  100007878  mov     x0, x19
  10000787c  mov     v1.16b, v8.16b
  100007880  bl      _objc_msgSend                            ; [self setEdgeInsetsWithSpacingTextSpacing:[[[self imageView] image] size].0 WithImageSpacing:[[self titleForState:0] sizeWithAttributes:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]].0]
  100007884  mov     x0, x22
  100007888  bl      _objc_release
  10000788c  mov     x0, x21
  100007890  bl      _objc_release
  100007894  mov     x0, x20
  100007898  bl      _objc_release
  10000789c  ldr     x8, [sp, #0x18]
  1000078a0  sub     x8, x23, x8
  1000078a4  cbnz    x8, loc_1000078c4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000078a8  sub     sp, x29, #0x40
  1000078ac  ldp     x29, x30, [sp, #0x40]
  1000078b0  ldp     x20, x19, [sp, #0x30]
  1000078b4  ldp     x22, x21, [sp, #0x20]
  1000078b8  ldp     x24, x23, [sp, #0x10]
  1000078bc  ldp     d9, d8, [sp], #0x50
  1000078c0  ret
loc_1000078c4:
  1000078c4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000078c8  mov     x19, x0
  1000078cc  b       loc_100007904
  1000078d0  b       loc_1000078e8
  1000078d4  mov     x19, x0
  1000078d8  b       loc_100007904
  1000078dc  mov     x19, x0
  1000078e0  b       loc_1000078fc
  1000078e4  b       loc_1000078e8
loc_1000078e8:
  1000078e8  mov     x19, x0
  1000078ec  mov     x0, x22
  1000078f0  bl      _objc_release
  1000078f4  b       loc_1000078fc
  1000078f8  mov     x19, x0
loc_1000078fc:
  1000078fc  mov     x0, x21
  100007900  bl      _objc_release
loc_100007904:
  100007904  mov     x0, x20
  100007908  bl      _objc_release
  10000790c  mov     x0, x19
  100007910  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithFont(ImageWithTitle) centerButtonTextWithDiamondsImage]
; address 0x100007914  size 556  kind objc
; ======================================================================
  100007914  stp     d9, d8, [sp, #-0x50]!
  100007918  stp     x24, x23, [sp, #0x10]
  10000791c  stp     x22, x21, [sp, #0x20]
  100007920  stp     x20, x19, [sp, #0x30]
  100007924  stp     x29, x30, [sp, #0x40]
  100007928  add     x29, sp, #0x40
  10000792c  sub     sp, sp, #0x20
  100007930  mov     x19, x0
  100007934  adrp    x23, #0x1003b0000
  100007938  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10000793c  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100007940  str     x23, [sp, #0x18]
  100007944  adrp    x8, #0x100416000
  100007948  nop
  10000794c  ldr     x1, [x8, #0xcc0]
  100007950  mov     x2, #0
  100007954  bl      _objc_msgSend                            ; [self titleForState:0]
  100007958  mov     x29, x29
  10000795c  bl      _objc_retainAutoreleasedReturnValue
  100007960  mov     x20, x0
  100007964  adrp    x8, #0x1003b0000
  100007968  ldr     x8, [x8, #0x28]                          ; _NSFontAttributeName
  10000796c  ldr     x8, [x8]                                 ; x8 = _NSFontAttributeName[+0x0]
  100007970  str     x8, [sp, #8]
  100007974  adrp    x8, #0x100416000
  100007978  nop
  10000797c  ldr     x1, [x8, #0xb80]
  100007980  mov     x0, x19
  100007984  bl      _objc_msgSend                            ; [self titleLabel]
  100007988  mov     x29, x29
  10000798c  bl      _objc_retainAutoreleasedReturnValue
  100007990  mov     x21, x0
  100007994  adrp    x8, #0x100416000
  100007998  nop
  10000799c  ldr     x1, [x8, #0xcc8]
  1000079a0  bl      _objc_msgSend                            ; [[self titleLabel] font]
  1000079a4  mov     x29, x29
  1000079a8  bl      _objc_retainAutoreleasedReturnValue
  1000079ac  mov     x22, x0
  1000079b0  str     x22, [sp, #0x10]
  1000079b4  adrp    x8, #0x10041d000
  1000079b8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000079bc  adrp    x8, #0x100416000
  1000079c0  nop
  1000079c4  ldr     x1, [x8, #0xcd0]
  1000079c8  add     x2, sp, #0x10
  1000079cc  add     x3, sp, #8
  1000079d0  mov     w4, #1
  1000079d4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  1000079d8  mov     x2, x0
  1000079dc  adrp    x8, #0x100416000
  1000079e0  nop
  1000079e4  ldr     x1, [x8, #0xcd8]
  1000079e8  mov     x0, x20
  1000079ec  bl      _objc_msgSend                            ; [[self titleForState:0] sizeWithAttributes:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  1000079f0  mov     v8.16b, v0.16b
  1000079f4  mov     x0, x22
  1000079f8  bl      _objc_release
  1000079fc  mov     x0, x21
  100007a00  bl      _objc_release
  100007a04  mov     x0, x20
  100007a08  bl      _objc_release
  100007a0c  adrp    x8, #0x10041d000
  100007a10  ldr     x0, [x8, #0xf00]                         ; class ADButtonWithFont
  100007a14  adrp    x8, #0x100416000
  100007a18  nop
  100007a1c  ldr     x1, [x8, #0xd10]
  100007a20  bl      _objc_msgSend                            ; [ADButtonWithFont sharedDiamondImage]
  100007a24  mov     x29, x29
  100007a28  bl      _objc_retainAutoreleasedReturnValue
  100007a2c  mov     x20, x0
  100007a30  adrp    x8, #0x100416000
  100007a34  nop
  100007a38  ldr     x1, [x8, #0xce8]
  100007a3c  mov     x3, #0
  100007a40  mov     x0, x19
  100007a44  mov     x2, x20
  100007a48  bl      _objc_msgSend                            ; [self setImage:[ADButtonWithFont sharedDiamondImage] forState:0]
  100007a4c  adrp    x8, #0x100416000
  100007a50  nop
  100007a54  ldr     x1, [x8, #0xcf0]
  100007a58  mov     x0, x19
  100007a5c  bl      _objc_msgSend                            ; [self imageView]
  100007a60  mov     x29, x29
  100007a64  bl      _objc_retainAutoreleasedReturnValue
  100007a68  mov     x21, x0
  100007a6c  adrp    x8, #0x100416000
  100007a70  nop
  100007a74  ldr     x1, [x8, #0xcf8]
  100007a78  bl      _objc_msgSend                            ; [[self imageView] image]
  100007a7c  mov     x29, x29
  100007a80  bl      _objc_retainAutoreleasedReturnValue
  100007a84  mov     x22, x0
  100007a88  adrp    x8, #0x100416000
  100007a8c  nop
  100007a90  ldr     x1, [x8, #0xd00]
  100007a94  bl      _objc_msgSend                            ; [[[self imageView] image] size]
  100007a98  adrp    x8, #0x100416000
  100007a9c  nop
  100007aa0  ldr     x1, [x8, #0xd08]
  100007aa4  mov     x0, x19
  100007aa8  mov     v1.16b, v8.16b
  100007aac  bl      _objc_msgSend                            ; [self setEdgeInsetsWithSpacingTextSpacing:[[[self imageView] image] size].0 WithImageSpacing:[[self titleForState:0] sizeWithAttributes:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]].0]
  100007ab0  mov     x0, x22
  100007ab4  bl      _objc_release
  100007ab8  mov     x0, x21
  100007abc  bl      _objc_release
  100007ac0  mov     x0, x20
  100007ac4  bl      _objc_release
  100007ac8  ldr     x8, [sp, #0x18]
  100007acc  sub     x8, x23, x8
  100007ad0  cbnz    x8, loc_100007af0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100007ad4  sub     sp, x29, #0x40
  100007ad8  ldp     x29, x30, [sp, #0x40]
  100007adc  ldp     x20, x19, [sp, #0x30]
  100007ae0  ldp     x22, x21, [sp, #0x20]
  100007ae4  ldp     x24, x23, [sp, #0x10]
  100007ae8  ldp     d9, d8, [sp], #0x50
  100007aec  ret
loc_100007af0:
  100007af0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100007af4  mov     x19, x0
  100007af8  b       loc_100007b30
  100007afc  b       loc_100007b14
  100007b00  mov     x19, x0
  100007b04  b       loc_100007b30
  100007b08  mov     x19, x0
  100007b0c  b       loc_100007b28
  100007b10  b       loc_100007b14
loc_100007b14:
  100007b14  mov     x19, x0
  100007b18  mov     x0, x22
  100007b1c  bl      _objc_release
  100007b20  b       loc_100007b28
  100007b24  mov     x19, x0
loc_100007b28:
  100007b28  mov     x0, x21
  100007b2c  bl      _objc_release
loc_100007b30:
  100007b30  mov     x0, x20
  100007b34  bl      _objc_release
  100007b38  mov     x0, x19
  100007b3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithFont(ImageWithTitle) centerButtonWithoutImage]
; address 0x100007b40  size 76  kind objc
; ======================================================================
  100007b40  stp     x20, x19, [sp, #-0x20]!
  100007b44  stp     x29, x30, [sp, #0x10]
  100007b48  add     x29, sp, #0x10
  100007b4c  mov     x19, x0
  100007b50  adrp    x8, #0x100416000
  100007b54  nop
  100007b58  ldr     x1, [x8, #0xce8]
  100007b5c  mov     x2, #0
  100007b60  mov     x3, #0
  100007b64  bl      _objc_msgSend                            ; [self setImage:0 forState:0]
  100007b68  adrp    x8, #0x100416000
  100007b6c  nop
  100007b70  ldr     x1, [x8, #0xd08]
  100007b74  movi    v0.16b, #0
  100007b78  movi    v1.16b, #0
  100007b7c  mov     x0, x19
  100007b80  ldp     x29, x30, [sp, #0x10]
  100007b84  ldp     x20, x19, [sp], #0x20
  100007b88  b       _objc_msgSend                            ; [self setEdgeInsetsWithSpacingTextSpacing:0 WithImageSpacing:0]

; ======================================================================
; -[ADButtonWithFont(ImageWithTitle) setFontByDeviceType]
; address 0x100007b8c  size 340  kind objc
; ======================================================================
  100007b8c  stp     x22, x21, [sp, #-0x30]!
  100007b90  stp     x20, x19, [sp, #0x10]
  100007b94  stp     x29, x30, [sp, #0x20]
  100007b98  add     x29, sp, #0x20
  100007b9c  mov     x19, x0
  100007ba0  adrp    x8, #0x10041d000
  100007ba4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100007ba8  adrp    x8, #0x100416000
  100007bac  nop
  100007bb0  ldr     x1, [x8, #0xc00]
  100007bb4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100007bb8  mov     x29, x29
  100007bbc  bl      _objc_retainAutoreleasedReturnValue
  100007bc0  mov     x21, x0
  100007bc4  adrp    x8, #0x100416000
  100007bc8  nop
  100007bcc  ldr     x1, [x8, #0xd18]
  100007bd0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100007bd4  mov     x20, x0
  100007bd8  mov     x0, x21
  100007bdc  bl      _objc_release
  100007be0  adrp    x8, #0x100416000
  100007be4  nop
  100007be8  ldr     x1, [x8, #0xb80]
  100007bec  mov     x0, x19
  100007bf0  bl      _objc_msgSend                            ; [self titleLabel]
  100007bf4  mov     x29, x29
  100007bf8  bl      _objc_retainAutoreleasedReturnValue
  100007bfc  mov     x19, x0
  100007c00  adrp    x8, #0x10041d000
  100007c04  ldr     x0, [x8, #0xf08]                         ; class UIFont
  100007c08  adrp    x8, #0x100416000
  100007c0c  add     x8, x8, #0xd20                           ; &@selector(fontWithName:size:)
  100007c10  ldr     x1, [x8]
  100007c14  cbz     w20, loc_100007c54                       ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  100007c18  adrp    x2, #0x1003b9000
  100007c1c  add     x2, x2, #0x9f0                           ; @"AxeHandel"
  100007c20  fmov    d0, #25.00000000
  100007c24  bl      _objc_msgSend                            ; [UIFont fontWithName:@"AxeHandel" size:25]
  100007c28  mov     x29, x29
  100007c2c  bl      _objc_retainAutoreleasedReturnValue
  100007c30  mov     x21, x0
  100007c34  adrp    x8, #0x100416000
  100007c38  nop
  100007c3c  ldr     x1, [x8, #0xd28]
  100007c40  mov     x0, x19
  100007c44  mov     x2, x21
  100007c48  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"AxeHandel" size:25]]
  100007c4c  b       loc_100007c8c
  100007c50  b       loc_100007cc4
loc_100007c54:
  100007c54  adrp    x2, #0x1003b9000
  100007c58  add     x2, x2, #0x9f0                           ; @"AxeHandel"
  100007c5c  adrp    x8, #0x100181000
  100007c60  ldr     d0, [x8, #0x9d0]                         ; d0 = 50.0
  100007c64  bl      _objc_msgSend                            ; [UIFont fontWithName:@"AxeHandel" size:50]
  100007c68  mov     x29, x29
  100007c6c  bl      _objc_retainAutoreleasedReturnValue
  100007c70  mov     x21, x0
  100007c74  adrp    x8, #0x100416000
  100007c78  nop
  100007c7c  ldr     x1, [x8, #0xd28]
  100007c80  mov     x0, x19
  100007c84  mov     x2, x21
  100007c88  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"AxeHandel" size:50]]
loc_100007c8c:
  100007c8c  mov     x0, x21
  100007c90  bl      _objc_release
  100007c94  mov     x0, x19
  100007c98  ldp     x29, x30, [sp, #0x20]
  100007c9c  ldp     x20, x19, [sp, #0x10]
  100007ca0  ldp     x22, x21, [sp], #0x30
  100007ca4  b       _objc_release
  100007ca8  mov     x20, x0
  100007cac  mov     x0, x21
  100007cb0  b       loc_100007cd4
  100007cb4  mov     x20, x0
  100007cb8  b       loc_100007cd0
  100007cbc  mov     x20, x0
  100007cc0  b       loc_100007cd0
loc_100007cc4:
  100007cc4  mov     x20, x0
  100007cc8  mov     x0, x21
  100007ccc  bl      _objc_release
loc_100007cd0:
  100007cd0  mov     x0, x19
loc_100007cd4:
  100007cd4  bl      _objc_release
  100007cd8  mov     x0, x20
  100007cdc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithFont(ImageWithTitle) setEdgeInsetsWithSpacingTextSpacing:WithImageSpacing:]
; address 0x100007ce0  size 104  kind objc
; ======================================================================
  100007ce0  stp     d9, d8, [sp, #-0x30]!
  100007ce4  stp     x20, x19, [sp, #0x10]
  100007ce8  stp     x29, x30, [sp, #0x20]
  100007cec  add     x29, sp, #0x20
  100007cf0  mov     v8.16b, v0.16b
  100007cf4  mov     x19, x0
  100007cf8  fneg    d3, d1
  100007cfc  adrp    x8, #0x100416000
  100007d00  nop
  100007d04  ldr     x1, [x8, #0xd30]
  100007d08  movi    v0.16b, #0
  100007d0c  movi    v2.16b, #0
  100007d10  bl      _objc_msgSend                            ; [self setImageEdgeInsets:{0, arg2, 0, -arg2}]
  100007d14  fmov    d0, #5.00000000
  100007d18  fadd    d3, d8, d0
  100007d1c  fneg    d1, d3
  100007d20  adrp    x8, #0x100416000
  100007d24  nop
  100007d28  ldr     x1, [x8, #0xd38]
  100007d2c  movi    v0.16b, #0
  100007d30  movi    v2.16b, #0
  100007d34  mov     x0, x19
  100007d38  ldp     x29, x30, [sp, #0x20]
  100007d3c  ldp     x20, x19, [sp, #0x10]
  100007d40  ldp     d9, d8, [sp], #0x30
  100007d44  b       _objc_msgSend                            ; [self setTitleEdgeInsets:{0, -(arg1 + 5), 0, (arg1 + 5)}]

; ======================================================================
; +[ADButtonWithFont(ImageWithTitle) sharedDiamondImage]
; address 0x100007d48  size 68  kind objc
; ======================================================================
  100007d48  stp     x20, x19, [sp, #-0x20]!
  100007d4c  stp     x29, x30, [sp, #0x10]
  100007d50  add     x29, sp, #0x10
  100007d54  adrp    x19, #0x10042d000
  100007d58  add     x19, x19, #0x940                         ; &g_10042d940
  100007d5c  ldr     x8, [x19, #8]                            ; load g_10042d948
  100007d60  cmn     x8, #1
  100007d64  b.ne    loc_100007d78                            ; if (g_10042d948 != -1)
loc_100007d68:
  100007d68  ldr     x0, [x19]                                ; load g_10042d940
  100007d6c  ldp     x29, x30, [sp, #0x10]
  100007d70  ldp     x20, x19, [sp], #0x20
  100007d74  b       _objc_retainAutoreleaseReturnValue
loc_100007d78:
  100007d78  add     x0, x19, #8                              ; &g_10042d948
  100007d7c  adrp    x1, #0x1003b0000
  100007d80  add     x1, x1, #0xfa0                           ; ^{+[ADButtonWithFont(ImageWithTitle) sharedDiamondImage]_block_invoke}
  100007d84  bl      _dispatch_once                           ; dispatch_once(&g_10042d948, ^{+[ADButtonWithFont(ImageWithTitle) sharedDiamondImage]_block_invoke})
  100007d88  b       loc_100007d68

; ======================================================================
; +[ADButtonWithFont(ImageWithTitle) sharedDiamondImage]_block_invoke
; address 0x100007d8c  size 152  kind block
; ======================================================================
  100007d8c  stp     x20, x19, [sp, #-0x20]!
  100007d90  stp     x29, x30, [sp, #0x10]
  100007d94  add     x29, sp, #0x10
  100007d98  adrp    x8, #0x10041d000
  100007d9c  ldr     x0, [x8, #0xf10]                         ; class UIImage
  100007da0  adrp    x8, #0x100416000
  100007da4  nop
  100007da8  ldr     x1, [x8, #0xd40]
  100007dac  adrp    x2, #0x1003b9000
  100007db0  add     x2, x2, #0xa10                           ; @"icon_diamond_small"
  100007db4  bl      _objc_msgSend                            ; [UIImage imageNamed:@"icon_diamond_small"]
  100007db8  mov     x29, x29
  100007dbc  bl      _objc_retainAutoreleasedReturnValue
  100007dc0  mov     x19, x0
  100007dc4  adrp    x8, #0x10041d000
  100007dc8  ldr     x0, [x8, #0xf00]                         ; class ADButtonWithFont
  100007dcc  adrp    x8, #0x100416000
  100007dd0  nop
  100007dd4  ldr     x1, [x8, #0xd48]
  100007dd8  mov     x2, x19
  100007ddc  bl      _objc_msgSend                            ; [ADButtonWithFont cropDiamondsImage:[UIImage imageNamed:@"icon_diamond_small"]]
  100007de0  mov     x29, x29
  100007de4  bl      _objc_retainAutoreleasedReturnValue
  100007de8  adrp    x9, #0x10042d000
  100007dec  add     x9, x9, #0x940                           ; &g_10042d940
  100007df0  ldr     x8, [x9]                                 ; load g_10042d940
  100007df4  str     x0, [x9]                                 ; store g_10042d940 = [ADButtonWithFont cropDiamondsImage:[UIImage imageNamed:@"icon_diamond_small"]]
  100007df8  mov     x0, x8
  100007dfc  bl      _objc_release
  100007e00  mov     x0, x19
  100007e04  ldp     x29, x30, [sp, #0x10]
  100007e08  ldp     x20, x19, [sp], #0x20
  100007e0c  b       _objc_release
  100007e10  mov     x20, x0
  100007e14  mov     x0, x19
  100007e18  bl      _objc_release
  100007e1c  mov     x0, x20
  100007e20  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADButtonWithFont(ImageWithTitle) cropDiamondsImage:]
; address 0x100007e24  size 168  kind objc
; ======================================================================
  100007e24  stp     x22, x21, [sp, #-0x30]!
  100007e28  stp     x20, x19, [sp, #0x10]
  100007e2c  stp     x29, x30, [sp, #0x20]
  100007e30  add     x29, sp, #0x20
  100007e34  mov     x0, x2
  100007e38  bl      _objc_retain
  100007e3c  mov     x19, x0
  100007e40  fmov    d0, #20.00000000
  100007e44  movi    v2.16b, #0
  100007e48  mov     v1.16b, v0.16b
  100007e4c  mov     w0, #0
  100007e50  bl      _UIGraphicsBeginImageContextWithOptions  ; UIGraphicsBeginImageContextWithOptions(0)
  100007e54  adrp    x8, #0x100416000
  100007e58  nop
  100007e5c  ldr     x1, [x8, #0xd50]
  100007e60  fmov    d2, #20.00000000
  100007e64  movi    v0.16b, #0
  100007e68  movi    v1.16b, #0
  100007e6c  mov     x0, x19
  100007e70  mov     v3.16b, v2.16b
  100007e74  bl      _objc_msgSend                            ; [arg1 drawInRect:{0, 0, 20, 20}]
  100007e78  bl      _UIGraphicsGetImageFromCurrentImageContext ; UIGraphicsGetImageFromCurrentImageContext([arg1 drawInRect:{0, 0, 20, 20}])
  100007e7c  mov     x29, x29
  100007e80  bl      _objc_retainAutoreleasedReturnValue
  100007e84  mov     x20, x0
  100007e88  bl      _UIGraphicsEndImageContext               ; UIGraphicsEndImageContext(UIGraphicsGetImageFromCurrentImageContext([arg1 drawInRect:{0, 0, 20, 20}]))
  100007e8c  mov     x0, x19
  100007e90  bl      _objc_release
  100007e94  mov     x0, x20
  100007e98  ldp     x29, x30, [sp, #0x20]
  100007e9c  ldp     x20, x19, [sp, #0x10]
  100007ea0  ldp     x22, x21, [sp], #0x30
  100007ea4  b       _objc_autoreleaseReturnValue
  100007ea8  mov     x21, x0
  100007eac  b       loc_100007ebc
  100007eb0  mov     x21, x0
  100007eb4  mov     x0, x20
  100007eb8  bl      _objc_release
loc_100007ebc:
  100007ebc  mov     x0, x19
  100007ec0  bl      _objc_release
  100007ec4  mov     x0, x21
  100007ec8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADButtonWithFont(ImageWithTitle) sharedCoinsImage]
; address 0x100007ecc  size 32  kind objc
; ======================================================================
  100007ecc  adrp    x8, #0x10041d000
  100007ed0  ldr     x0, [x8, #0xf10]                         ; class UIImage
  100007ed4  adrp    x8, #0x100416000
  100007ed8  nop
  100007edc  ldr     x1, [x8, #0xd40]
  100007ee0  adrp    x2, #0x1003b9000
  100007ee4  add     x2, x2, #0xa30                           ; @"icon_currency_small"
  100007ee8  b       _objc_msgSend                            ; [UIImage imageNamed:@"icon_currency_small"]
