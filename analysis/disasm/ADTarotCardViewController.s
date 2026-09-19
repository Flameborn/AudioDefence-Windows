// unit ADTarotCardViewController — 32 functions
//   0x1000a4bd4    1448  -[ADTarotCardViewController viewDidLoad]
//   0x1000a517c     840  -[ADTarotCardViewController initWithCardLevel:forbiddenModifier:]
//   0x1000a54c4    1052  -[ADTarotCardViewController initWithCardLevel:modifier:]
//   0x1000a58e0    1392  -[ADTarotCardViewController refreshCard]
//   0x1000a5e50     640  -[ADTarotCardViewController flipCard:]
//   0x1000a60d0     208  -[ADTarotCardViewController flipCard:]_block_invoke
//   0x1000a61a0     280  -[ADTarotCardViewController accessibleDescription]
//   0x1000a62b8     748  -[ADTarotCardViewController changeCardButtonPressed:]
//   0x1000a65a4     804  -[ADTarotCardViewController changeCard]
//   0x1000a68c8      36  -[ADTarotCardViewController modifierName]
//   0x1000a68ec     132  -[ADTarotCardViewController isGood]
//   0x1000a6970      16  -[ADTarotCardViewController cardDescription]
//   0x1000a6980      56  -[ADTarotCardViewController setCardDescription:]
//   0x1000a69b8      16  -[ADTarotCardViewController cardTitle]
//   0x1000a69c8      56  -[ADTarotCardViewController setCardTitle:]
//   0x1000a6a00      16  -[ADTarotCardViewController cardLevel]
//   0x1000a6a10      16  -[ADTarotCardViewController setCardLevel:]
//   0x1000a6a20      32  -[ADTarotCardViewController tarotViewController]
//   0x1000a6a40      20  -[ADTarotCardViewController setTarotViewController:]
//   0x1000a6a54      16  -[ADTarotCardViewController changeCardButton]
//   0x1000a6a64      56  -[ADTarotCardViewController setChangeCardButton:]
//   0x1000a6a9c      16  -[ADTarotCardViewController backgroundImage]
//   0x1000a6aac      56  -[ADTarotCardViewController setBackgroundImage:]
//   0x1000a6ae4      16  -[ADTarotCardViewController accessibleCard]
//   0x1000a6af4      56  -[ADTarotCardViewController setAccessibleCard:]
//   0x1000a6b2c      16  -[ADTarotCardViewController cardBack]
//   0x1000a6b3c      56  -[ADTarotCardViewController setCardBack:]
//   0x1000a6b74      16  -[ADTarotCardViewController cardFront]
//   0x1000a6b84      56  -[ADTarotCardViewController setCardFront:]
//   0x1000a6bbc      20  -[ADTarotCardViewController flipped]
//   0x1000a6bd0      16  -[ADTarotCardViewController setFlipped:]
//   0x1000a6be0     220  -[ADTarotCardViewController .cxx_destruct]

; ======================================================================
; -[ADTarotCardViewController viewDidLoad]
; address 0x1000a4bd4  size 1448  kind objc
; ======================================================================
  1000a4bd4  stp     x26, x25, [sp, #-0x50]!
  1000a4bd8  stp     x24, x23, [sp, #0x10]
  1000a4bdc  stp     x22, x21, [sp, #0x20]
  1000a4be0  stp     x20, x19, [sp, #0x30]
  1000a4be4  stp     x29, x30, [sp, #0x40]
  1000a4be8  add     x29, sp, #0x40
  1000a4bec  sub     sp, sp, #0x20
  1000a4bf0  mov     x19, x0
  1000a4bf4  str     x19, [sp, #0x10]
  1000a4bf8  adrp    x8, #0x10041e000
  1000a4bfc  ldr     x8, [x8, #0xef0]
  1000a4c00  str     x8, [sp, #0x18]
  1000a4c04  adrp    x8, #0x100416000
  1000a4c08  nop
  1000a4c0c  ldr     x1, [x8, #0xb48]
  1000a4c10  add     x0, sp, #0x10
  1000a4c14  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000a4c18  adrp    x8, #0x100418000
  1000a4c1c  nop
  1000a4c20  ldr     x20, [x8, #0x448]
  1000a4c24  mov     x0, x19
  1000a4c28  mov     x1, x20
  1000a4c2c  bl      _objc_msgSend                            ; [self cardLevel]
  1000a4c30  cmp     w0, #1
  1000a4c34  b.ne    loc_1000a4c48                            ; if ([self cardLevel] != 1)
  1000a4c38  adrp    x8, #0x100420000
  1000a4c3c  ldrsw   x8, [x8, #0xcc]                          ; ivar offset ADTarotCardViewController.cost (+0x148)
  1000a4c40  mov     w9, #3
  1000a4c44  str     w9, [x19, x8]                            ; self->cost = 3
loc_1000a4c48:
  1000a4c48  mov     x0, x19
  1000a4c4c  mov     x1, x20
  1000a4c50  bl      _objc_msgSend                            ; [self cardLevel]
  1000a4c54  cmp     w0, #2
  1000a4c58  b.ne    loc_1000a4c6c                            ; if ([self cardLevel] != 2)
  1000a4c5c  adrp    x8, #0x100420000
  1000a4c60  ldrsw   x8, [x8, #0xcc]                          ; ivar offset ADTarotCardViewController.cost (+0x148)
  1000a4c64  mov     w9, #2
  1000a4c68  str     w9, [x19, x8]                            ; self->cost = 2
loc_1000a4c6c:
  1000a4c6c  mov     x0, x19
  1000a4c70  mov     x1, x20
  1000a4c74  bl      _objc_msgSend                            ; [self cardLevel]
  1000a4c78  cmp     w0, #3
  1000a4c7c  b.ne    loc_1000a4c90                            ; if ([self cardLevel] != 3)
  1000a4c80  adrp    x8, #0x100420000
  1000a4c84  ldrsw   x8, [x8, #0xcc]                          ; ivar offset ADTarotCardViewController.cost (+0x148)
  1000a4c88  mov     w9, #1
  1000a4c8c  str     w9, [x19, x8]                            ; self->cost = 1
loc_1000a4c90:
  1000a4c90  adrp    x8, #0x10041a000
  1000a4c94  nop
  1000a4c98  ldr     x20, [x8, #0x3a0]
  1000a4c9c  mov     x0, x19
  1000a4ca0  mov     x1, x20
  1000a4ca4  bl      _objc_msgSend                            ; [self changeCardButton]
  1000a4ca8  mov     x29, x29
  1000a4cac  bl      _objc_retainAutoreleasedReturnValue
  1000a4cb0  mov     x21, x0
  1000a4cb4  adrp    x8, #0x100420000
  1000a4cb8  ldrsw   x25, [x8, #0xcc]                         ; ivar offset ADTarotCardViewController.cost (+0x148)
  1000a4cbc  ldr     w2, [x19, x25]                           ; w2 = self->cost
  1000a4cc0  adrp    x8, #0x100417000
  1000a4cc4  nop
  1000a4cc8  ldr     x1, [x8, #0x98]
  1000a4ccc  bl      _objc_msgSend                            ; [[self changeCardButton] setDiamonds:self->cost]
  1000a4cd0  mov     x0, x21
  1000a4cd4  bl      _objc_release
  1000a4cd8  mov     x0, x19
  1000a4cdc  mov     x1, x20
  1000a4ce0  bl      _objc_msgSend                            ; [self changeCardButton]
  1000a4ce4  mov     x29, x29
  1000a4ce8  bl      _objc_retainAutoreleasedReturnValue
  1000a4cec  mov     x21, x0
  1000a4cf0  adrp    x8, #0x100416000
  1000a4cf4  nop
  1000a4cf8  ldr     x1, [x8, #0xb80]
  1000a4cfc  bl      _objc_msgSend                            ; [[self changeCardButton] titleLabel]
  1000a4d00  mov     x29, x29
  1000a4d04  bl      _objc_retainAutoreleasedReturnValue
  1000a4d08  mov     x22, x0
  1000a4d0c  adrp    x8, #0x10041d000
  1000a4d10  ldr     x24, [x8, #0xf08]                        ; class UIFont
  1000a4d14  nop
  1000a4d18  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000a4d1c  adrp    x8, #0x100416000
  1000a4d20  nop
  1000a4d24  ldr     x1, [x8, #0xc00]
  1000a4d28  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000a4d2c  mov     x29, x29
  1000a4d30  bl      _objc_retainAutoreleasedReturnValue
  1000a4d34  mov     x23, x0
  1000a4d38  adrp    x8, #0x100416000
  1000a4d3c  nop
  1000a4d40  ldr     x1, [x8, #0xd18]
  1000a4d44  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000a4d48  cmp     w0, #0
  1000a4d4c  fmov    d0, #25.00000000
  1000a4d50  fmov    d1, #12.00000000
  1000a4d54  fcsel   d0, d1, d0, ne
  1000a4d58  adrp    x8, #0x100416000
  1000a4d5c  nop
  1000a4d60  ldr     x1, [x8, #0xd20]
  1000a4d64  adrp    x2, #0x1003b9000
  1000a4d68  add     x2, x2, #0xf10                           ; @"Monstro"
  1000a4d6c  mov     x0, x24
  1000a4d70  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 25)]
  1000a4d74  mov     x29, x29
  1000a4d78  bl      _objc_retainAutoreleasedReturnValue
  1000a4d7c  mov     x24, x0
  1000a4d80  adrp    x8, #0x100416000
  1000a4d84  nop
  1000a4d88  ldr     x1, [x8, #0xd28]
  1000a4d8c  mov     x0, x22
  1000a4d90  mov     x2, x24
  1000a4d94  bl      _objc_msgSend                            ; [[[self changeCardButton] titleLabel] setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 25)]]
  1000a4d98  mov     x0, x24
  1000a4d9c  bl      _objc_release
  1000a4da0  mov     x0, x23
  1000a4da4  bl      _objc_release
  1000a4da8  mov     x0, x22
  1000a4dac  bl      _objc_release
  1000a4db0  mov     x0, x21
  1000a4db4  bl      _objc_release
  1000a4db8  mov     x0, x19
  1000a4dbc  mov     x1, x20
  1000a4dc0  bl      _objc_msgSend                            ; [self changeCardButton]
  1000a4dc4  mov     x29, x29
  1000a4dc8  bl      _objc_retainAutoreleasedReturnValue
  1000a4dcc  mov     x21, x0
  1000a4dd0  adrp    x8, #0x10041d000
  1000a4dd4  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000a4dd8  adrp    x8, #0x100417000
  1000a4ddc  nop
  1000a4de0  ldr     x1, [x8, #0x180]
  1000a4de4  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000a4de8  mov     x29, x29
  1000a4dec  bl      _objc_retainAutoreleasedReturnValue
  1000a4df0  mov     x22, x0
  1000a4df4  adrp    x8, #0x100418000
  1000a4df8  nop
  1000a4dfc  ldr     x1, [x8, #0x5f0]
  1000a4e00  mov     x3, #0
  1000a4e04  mov     x0, x21
  1000a4e08  mov     x2, x22
  1000a4e0c  bl      _objc_msgSend                            ; [[self changeCardButton] setTitleColor:[UIColor blackColor] forState:0]
  1000a4e10  mov     x0, x22
  1000a4e14  bl      _objc_release
  1000a4e18  mov     x0, x21
  1000a4e1c  bl      _objc_release
  1000a4e20  mov     x0, x19
  1000a4e24  mov     x1, x20
  1000a4e28  bl      _objc_msgSend                            ; [self changeCardButton]
  1000a4e2c  mov     x29, x29
  1000a4e30  bl      _objc_retainAutoreleasedReturnValue
  1000a4e34  mov     x21, x0
  1000a4e38  adrp    x8, #0x10041d000
  1000a4e3c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000a4e40  adrp    x8, #0x100416000
  1000a4e44  nop
  1000a4e48  ldr     x1, [x8, #0xee8]
  1000a4e4c  ldr     w8, [x19, x25]                           ; w8 = self->cost
  1000a4e50  str     x8, [sp]
  1000a4e54  adrp    x2, #0x1003c0000
  1000a4e58  add     x2, x2, #0xaf0                           ; @"Change for %d"
  1000a4e5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Change for %d", self->cost]
  1000a4e60  mov     x29, x29
  1000a4e64  bl      _objc_retainAutoreleasedReturnValue
  1000a4e68  mov     x22, x0
  1000a4e6c  adrp    x8, #0x100417000
  1000a4e70  nop
  1000a4e74  ldr     x1, [x8, #0x920]
  1000a4e78  mov     x3, #0
  1000a4e7c  mov     x0, x21
  1000a4e80  mov     x2, x22
  1000a4e84  bl      _objc_msgSend                            ; [[self changeCardButton] setTitle:[NSString stringWithFormat:@"Change for %d", self->cost] forState:0]
  1000a4e88  mov     x0, x22
  1000a4e8c  bl      _objc_release
  1000a4e90  mov     x0, x21
  1000a4e94  bl      _objc_release
  1000a4e98  mov     x0, x19
  1000a4e9c  mov     x1, x20
  1000a4ea0  bl      _objc_msgSend                            ; [self changeCardButton]
  1000a4ea4  mov     x29, x29
  1000a4ea8  bl      _objc_retainAutoreleasedReturnValue
  1000a4eac  mov     x20, x0
  1000a4eb0  adrp    x8, #0x100417000
  1000a4eb4  nop
  1000a4eb8  ldr     x1, [x8, #0xa90]
  1000a4ebc  bl      _objc_msgSend                            ; [[self changeCardButton] centerButtonTextWithDiamondsImage]
  1000a4ec0  mov     x0, x20
  1000a4ec4  bl      _objc_release
  1000a4ec8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000a4ecc  tbz     w0, #0, loc_1000a5038                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  1000a4ed0  adrp    x8, #0x100416000
  1000a4ed4  nop
  1000a4ed8  ldr     x20, [x8, #0xf18]
  1000a4edc  mov     x0, x19
  1000a4ee0  mov     x1, x20
  1000a4ee4  bl      _objc_msgSend                            ; [self view]
  1000a4ee8  mov     x29, x29
  1000a4eec  bl      _objc_retainAutoreleasedReturnValue
  1000a4ef0  mov     x21, x0
  1000a4ef4  adrp    x8, #0x100417000
  1000a4ef8  nop
  1000a4efc  ldr     x1, [x8, #0x1c8]
  1000a4f00  bl      _objc_msgSend                            ; [[self view] subviews]
  1000a4f04  mov     x29, x29
  1000a4f08  bl      _objc_retainAutoreleasedReturnValue
  1000a4f0c  mov     x22, x0
  1000a4f10  adrp    x8, #0x100417000
  1000a4f14  nop
  1000a4f18  ldr     x2, [x8, #0x1d0]
  1000a4f1c  adrp    x8, #0x100416000
  1000a4f20  nop
  1000a4f24  ldr     x1, [x8, #0xe48]
  1000a4f28  bl      _objc_msgSend                            ; [[[self view] subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)]
  1000a4f2c  mov     x0, x22
  1000a4f30  bl      _objc_release
  1000a4f34  mov     x0, x21
  1000a4f38  bl      _objc_release
  1000a4f3c  adrp    x8, #0x10041d000
  1000a4f40  ldr     x0, [x8, #0xf00]                         ; class ADButtonWithFont
  1000a4f44  adrp    x8, #0x100416000
  1000a4f48  nop
  1000a4f4c  ldr     x1, [x8, #0xac8]
  1000a4f50  bl      _objc_msgSend                            ; [ADButtonWithFont alloc]
  1000a4f54  mov     x22, x0
  1000a4f58  mov     x0, x19
  1000a4f5c  mov     x1, x20
  1000a4f60  bl      _objc_msgSend                            ; [self view]
  1000a4f64  mov     x29, x29
  1000a4f68  bl      _objc_retainAutoreleasedReturnValue
  1000a4f6c  mov     x21, x0
  1000a4f70  adrp    x8, #0x100416000
  1000a4f74  nop
  1000a4f78  ldr     x1, [x8, #0xf38]
  1000a4f7c  bl      _objc_msgSend                            ; [[self view] frame]
  1000a4f80  adrp    x8, #0x100417000
  1000a4f84  nop
  1000a4f88  ldr     x1, [x8, #0x178]
  1000a4f8c  mov     x0, x22
  1000a4f90  bl      _objc_msgSend                            ; [[ADButtonWithFont alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}]
  1000a4f94  mov     x22, x0
  1000a4f98  adrp    x8, #0x10041a000
  1000a4f9c  nop
  1000a4fa0  ldr     x1, [x8, #0x3b8]
  1000a4fa4  mov     x0, x19
  1000a4fa8  mov     x2, x22
  1000a4fac  bl      _objc_msgSend                            ; [self setAccessibleCard:[[ADButtonWithFont alloc] initWithFrame:{[[self view] frame].0, [[self view] frame].1, [[self view] frame].2, [[self view] frame].3}]]
  1000a4fb0  mov     x0, x22
  1000a4fb4  bl      _objc_release
  1000a4fb8  mov     x0, x21
  1000a4fbc  bl      _objc_release
  1000a4fc0  mov     x0, x19
  1000a4fc4  mov     x1, x20
  1000a4fc8  bl      _objc_msgSend                            ; [self view]
  1000a4fcc  mov     x29, x29
  1000a4fd0  bl      _objc_retainAutoreleasedReturnValue
  1000a4fd4  mov     x20, x0
  1000a4fd8  adrp    x8, #0x10041a000
  1000a4fdc  nop
  1000a4fe0  ldr     x1, [x8, #0x3c0]
  1000a4fe4  mov     x0, x19
  1000a4fe8  bl      _objc_msgSend                            ; [self accessibleCard]
  1000a4fec  mov     x29, x29
  1000a4ff0  bl      _objc_retainAutoreleasedReturnValue
  1000a4ff4  mov     x21, x0
  1000a4ff8  adrp    x8, #0x100416000
  1000a4ffc  nop
  1000a5000  ldr     x1, [x8, #0xf20]
  1000a5004  mov     x0, x20
  1000a5008  mov     x2, x21
  1000a500c  bl      _objc_msgSend                            ; [[self view] addSubview:[self accessibleCard]]
  1000a5010  mov     x0, x21
  1000a5014  bl      _objc_release
  1000a5018  mov     x0, x20
  1000a501c  bl      _objc_release
  1000a5020  adrp    x8, #0x10041a000
  1000a5024  nop
  1000a5028  ldr     x1, [x8, #0x3a8]
  1000a502c  mov     x0, x19
  1000a5030  bl      _objc_msgSend                            ; [self refreshCard]
  1000a5034  b       loc_1000a50b4
loc_1000a5038:
  1000a5038  adrp    x8, #0x10041a000
  1000a503c  nop
  1000a5040  ldr     x1, [x8, #0x3a8]
  1000a5044  mov     x0, x19
  1000a5048  bl      _objc_msgSend                            ; [self refreshCard]
  1000a504c  adrp    x8, #0x100416000
  1000a5050  nop
  1000a5054  ldr     x1, [x8, #0xf18]
  1000a5058  mov     x0, x19
  1000a505c  bl      _objc_msgSend                            ; [self view]
  1000a5060  mov     x29, x29
  1000a5064  bl      _objc_retainAutoreleasedReturnValue
  1000a5068  mov     x20, x0
  1000a506c  adrp    x8, #0x10041a000
  1000a5070  nop
  1000a5074  ldr     x1, [x8, #0x3b0]
  1000a5078  mov     x0, x19
  1000a507c  bl      _objc_msgSend                            ; [self cardBack]
  1000a5080  mov     x29, x29
  1000a5084  bl      _objc_retainAutoreleasedReturnValue
  1000a5088  mov     x21, x0
  1000a508c  adrp    x8, #0x100416000
  1000a5090  nop
  1000a5094  ldr     x1, [x8, #0xf20]
  1000a5098  mov     x0, x20
  1000a509c  mov     x2, x21
  1000a50a0  bl      _objc_msgSend                            ; [[self view] addSubview:[self cardBack]]
  1000a50a4  mov     x0, x21
  1000a50a8  bl      _objc_release
  1000a50ac  mov     x0, x20
  1000a50b0  bl      _objc_release
loc_1000a50b4:
  1000a50b4  sub     sp, x29, #0x40
  1000a50b8  ldp     x29, x30, [sp, #0x40]
  1000a50bc  ldp     x20, x19, [sp, #0x30]
  1000a50c0  ldp     x22, x21, [sp, #0x20]
  1000a50c4  ldp     x24, x23, [sp, #0x10]
  1000a50c8  ldp     x26, x25, [sp], #0x50
  1000a50cc  ret
  1000a50d0  mov     x19, x0
  1000a50d4  b       loc_1000a50f8
  1000a50d8  mov     x19, x0
  1000a50dc  b       loc_1000a5144
  1000a50e0  mov     x19, x0
  1000a50e4  b       loc_1000a5144
  1000a50e8  b       loc_1000a5138
  1000a50ec  mov     x19, x0
  1000a50f0  mov     x0, x24
  1000a50f4  bl      _objc_release
loc_1000a50f8:
  1000a50f8  mov     x0, x23
  1000a50fc  bl      _objc_release
  1000a5100  b       loc_1000a513c
  1000a5104  mov     x19, x0
  1000a5108  b       loc_1000a5144
  1000a510c  b       loc_1000a5138
  1000a5110  mov     x19, x0
  1000a5114  b       loc_1000a5144
  1000a5118  b       loc_1000a5138
  1000a511c  mov     x19, x0
  1000a5120  b       loc_1000a516c
  1000a5124  mov     x19, x0
  1000a5128  b       loc_1000a5144
  1000a512c  mov     x19, x0
  1000a5130  b       loc_1000a5144
  1000a5134  b       loc_1000a5138
loc_1000a5138:
  1000a5138  mov     x19, x0
loc_1000a513c:
  1000a513c  mov     x0, x22
  1000a5140  bl      _objc_release
loc_1000a5144:
  1000a5144  mov     x0, x21
  1000a5148  b       loc_1000a5170
  1000a514c  mov     x19, x0
  1000a5150  b       loc_1000a516c
  1000a5154  b       loc_1000a5160
  1000a5158  mov     x19, x0
  1000a515c  b       loc_1000a516c
loc_1000a5160:
  1000a5160  mov     x19, x0
  1000a5164  mov     x0, x21
  1000a5168  bl      _objc_release
loc_1000a516c:
  1000a516c  mov     x0, x20
loc_1000a5170:
  1000a5170  bl      _objc_release
  1000a5174  mov     x0, x19
  1000a5178  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotCardViewController initWithCardLevel:forbiddenModifier:]
; address 0x1000a517c  size 840  kind objc
; ======================================================================
  1000a517c  stp     x28, x27, [sp, #-0x60]!
  1000a5180  stp     x26, x25, [sp, #0x10]
  1000a5184  stp     x24, x23, [sp, #0x20]
  1000a5188  stp     x22, x21, [sp, #0x30]
  1000a518c  stp     x20, x19, [sp, #0x40]
  1000a5190  stp     x29, x30, [sp, #0x50]
  1000a5194  add     x29, sp, #0x50
  1000a5198  sub     sp, sp, #0x30
  1000a519c  mov     x23, x2
  1000a51a0  mov     x20, x0
  1000a51a4  mov     x0, x3
  1000a51a8  bl      _objc_retain
  1000a51ac  stp     x0, x20, [sp, #0x18]
  1000a51b0  adrp    x8, #0x10041e000
  1000a51b4  ldr     x8, [x8, #0xef0]
  1000a51b8  str     x8, [sp, #0x28]
  1000a51bc  adrp    x8, #0x100416000
  1000a51c0  nop
  1000a51c4  ldr     x1, [x8, #0xb40]
  1000a51c8  mov     x21, #0
  1000a51cc  add     x0, sp, #0x20
  1000a51d0  mov     x2, #0
  1000a51d4  mov     x3, #0
  1000a51d8  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000a51dc  mov     x20, x0
  1000a51e0  cbz     x20, loc_1000a5418                       ; if (self == 0)
  1000a51e4  mov     x21, x20
  1000a51e8  adrp    x8, #0x10041a000
  1000a51ec  nop
  1000a51f0  ldr     x1, [x8, #0x3c8]
  1000a51f4  mov     x0, x20
  1000a51f8  mov     x2, x23
  1000a51fc  bl      _objc_msgSend                            ; [self setCardLevel:arg1]
  1000a5200  mov     x21, x20
  1000a5204  adrp    x8, #0x10041d000
  1000a5208  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000a520c  adrp    x8, #0x100416000
  1000a5210  nop
  1000a5214  ldr     x1, [x8, #0xb58]
  1000a5218  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000a521c  mov     x29, x29
  1000a5220  bl      _objc_retainAutoreleasedReturnValue
  1000a5224  mov     x22, x0
  1000a5228  adrp    x8, #0x100416000
  1000a522c  nop
  1000a5230  ldr     x1, [x8, #0xd60]
  1000a5234  adrp    x2, #0x1003c0000
  1000a5238  add     x2, x2, #0xb10                           ; @"Tarot"
  1000a523c  adrp    x3, #0x1003b9000
  1000a5240  add     x3, x3, #0xa70                           ; @"plist"
  1000a5244  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]
  1000a5248  mov     x29, x29
  1000a524c  bl      _objc_retainAutoreleasedReturnValue
  1000a5250  mov     x19, x0
  1000a5254  mov     x0, x22
  1000a5258  bl      _objc_release
  1000a525c  adrp    x8, #0x10041d000
  1000a5260  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000a5264  adrp    x8, #0x100416000
  1000a5268  nop
  1000a526c  ldr     x1, [x8, #0xac8]
  1000a5270  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000a5274  adrp    x8, #0x100416000
  1000a5278  nop
  1000a527c  ldr     x1, [x8, #0xd68]
  1000a5280  mov     x2, x19
  1000a5284  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]]
  1000a5288  mov     x21, x0
  1000a528c  adrp    x8, #0x10041d000
  1000a5290  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000a5294  adrp    x8, #0x100416000
  1000a5298  nop
  1000a529c  ldr     x1, [x8, #0xee8]
  1000a52a0  str     x23, [sp]
  1000a52a4  adrp    x2, #0x1003ba000
  1000a52a8  add     x2, x2, #0x450                           ; @"level_%i"
  1000a52ac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", arg1]
  1000a52b0  mov     x29, x29
  1000a52b4  bl      _objc_retainAutoreleasedReturnValue
  1000a52b8  mov     x25, x0
  1000a52bc  adrp    x8, #0x100417000
  1000a52c0  nop
  1000a52c4  ldr     x24, [x8, #0x40]
  1000a52c8  mov     x0, x21
  1000a52cc  str     x21, [sp, #8]
  1000a52d0  mov     x1, x24
  1000a52d4  mov     x2, x25
  1000a52d8  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]]
  1000a52dc  str     x19, [sp, #0x10]
  1000a52e0  mov     x29, x29
  1000a52e4  bl      _objc_retainAutoreleasedReturnValue
  1000a52e8  mov     x23, x0
  1000a52ec  mov     x0, x25
  1000a52f0  bl      _objc_release
  1000a52f4  bl      _rand                                    ; rand()
  1000a52f8  mov     x21, x0
  1000a52fc  adrp    x8, #0x100416000
  1000a5300  nop
  1000a5304  ldr     x25, [x8, #0xe30]
  1000a5308  mov     x0, x23
  1000a530c  mov     x1, x25
  1000a5310  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count]
  1000a5314  sxtw    x8, w21
  1000a5318  udiv    x9, x8, x0                               ; t1 = (rand() / [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count])
  1000a531c  msub    x2, x9, x0, x8                           ; t2 = (rand() - t1 * [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count])
  1000a5320  adrp    x8, #0x100416000
  1000a5324  nop
  1000a5328  ldr     x26, [x8, #0xc30]
  1000a532c  mov     x0, x23
  1000a5330  mov     x1, x26
  1000a5334  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] objectAtIndex:t2]
  1000a5338  mov     x29, x29
  1000a533c  bl      _objc_retainAutoreleasedReturnValue
  1000a5340  adrp    x8, #0x100420000
  1000a5344  ldrsw   x19, [x8, #0xd0]                         ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a5348  ldr     x8, [x20, x19]                           ; x8 = self->cardDictionary
  1000a534c  str     x0, [x20, x19]                           ; self->cardDictionary = [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] objectAtIndex:t2]
  1000a5350  mov     x0, x8
  1000a5354  bl      _objc_release
  1000a5358  ldr     x8, [sp, #0x18]
  1000a535c  cbz     x8, loc_1000a5400                        ; if (arg2 == 0)
  1000a5360  adrp    x8, #0x100416000
  1000a5364  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  1000a5368  ldr     x27, [x8]
  1000a536c  adrp    x28, #0x1003c0000
  1000a5370  add     x28, x28, #0xb30                         ; @"selector"
  1000a5374  b       loc_1000a5390
loc_1000a5378:
  1000a5378  mov     x29, x29
  1000a537c  bl      _objc_retainAutoreleasedReturnValue
  1000a5380  ldr     x8, [x20, x19]                           ; x8 = self->cardDictionary
  1000a5384  str     x0, [x20, x19]                           ; self->cardDictionary = [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] objectAtIndex:t4]
  1000a5388  mov     x0, x8
  1000a538c  bl      _objc_release
loc_1000a5390:
  1000a5390  ldr     x0, [x20, x19]                           ; x0 = self->cardDictionary
  1000a5394  mov     x1, x24
  1000a5398  mov     x2, x28
  1000a539c  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"selector"]
  1000a53a0  mov     x29, x29
  1000a53a4  bl      _objc_retainAutoreleasedReturnValue
  1000a53a8  mov     x21, x0
  1000a53ac  mov     x1, x27
  1000a53b0  ldr     x2, [sp, #0x18]
  1000a53b4  bl      _objc_msgSend                            ; [[self->cardDictionary objectForKey:@"selector"] isEqualToString:arg2]
  1000a53b8  mov     x22, x0
  1000a53bc  mov     x0, x21
  1000a53c0  bl      _objc_release
  1000a53c4  cbz     w22, loc_1000a5400                       ; if ([[self->cardDictionary objectForKey:@"selector"] isEqualToString:arg2] == 0)
  1000a53c8  bl      _rand                                    ; rand()
  1000a53cc  mov     x21, x0
  1000a53d0  mov     x0, x23
  1000a53d4  mov     x1, x25
  1000a53d8  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count]
  1000a53dc  sxtw    x8, w21
  1000a53e0  udiv    x9, x8, x0                               ; t3 = (rand() / [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count])
  1000a53e4  msub    x2, x9, x0, x8                           ; t4 = (rand() - t3 * [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count])
  1000a53e8  mov     x0, x23
  1000a53ec  mov     x1, x26
  1000a53f0  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] objectAtIndex:t4]
  1000a53f4  b       loc_1000a5378
loc_1000a53f8:
  1000a53f8  mov     x24, x0
  1000a53fc  b       loc_1000a5450
loc_1000a5400:
  1000a5400  mov     x0, x23
  1000a5404  bl      _objc_release
  1000a5408  ldr     x0, [sp, #8]
  1000a540c  bl      _objc_release
  1000a5410  ldr     x0, [sp, #0x10]
  1000a5414  bl      _objc_release
loc_1000a5418:
  1000a5418  ldr     x0, [sp, #0x18]
  1000a541c  bl      _objc_release
  1000a5420  mov     x0, x20
  1000a5424  sub     sp, x29, #0x50
  1000a5428  ldp     x29, x30, [sp, #0x50]
  1000a542c  ldp     x20, x19, [sp, #0x40]
  1000a5430  ldp     x22, x21, [sp, #0x30]
  1000a5434  ldp     x24, x23, [sp, #0x20]
  1000a5438  ldp     x26, x25, [sp, #0x10]
  1000a543c  ldp     x28, x27, [sp], #0x60
  1000a5440  ret
  1000a5444  mov     x24, x0
  1000a5448  mov     x0, x21
  1000a544c  bl      _objc_release
loc_1000a5450:
  1000a5450  mov     x0, x23
loc_1000a5454:
  1000a5454  bl      _objc_release
loc_1000a5458:
  1000a5458  ldr     x0, [sp, #8]
  1000a545c  bl      _objc_release
loc_1000a5460:
  1000a5460  ldr     x0, [sp, #0x10]
loc_1000a5464:
  1000a5464  bl      _objc_release
  1000a5468  mov     x21, x20
loc_1000a546c:
  1000a546c  ldr     x0, [sp, #0x18]
  1000a5470  bl      _objc_release
  1000a5474  mov     x0, x21
  1000a5478  bl      _objc_release
  1000a547c  mov     x0, x24
  1000a5480  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a5484  mov     x24, x0
  1000a5488  b       loc_1000a546c
  1000a548c  b       loc_1000a53f8
  1000a5490  str     x19, [sp, #0x10]
  1000a5494  mov     x24, x0
  1000a5498  b       loc_1000a5460
  1000a549c  mov     x24, x0
  1000a54a0  mov     x0, x22
  1000a54a4  b       loc_1000a5464
  1000a54a8  stp     x21, x19, [sp, #8]
  1000a54ac  mov     x24, x0
  1000a54b0  b       loc_1000a5458
  1000a54b4  str     x19, [sp, #0x10]
  1000a54b8  mov     x24, x0
  1000a54bc  mov     x0, x25
  1000a54c0  b       loc_1000a5454

; ======================================================================
; -[ADTarotCardViewController initWithCardLevel:modifier:]
; address 0x1000a54c4  size 1052  kind objc
; ======================================================================
  1000a54c4  stp     x28, x27, [sp, #-0x60]!
  1000a54c8  stp     x26, x25, [sp, #0x10]
  1000a54cc  stp     x24, x23, [sp, #0x20]
  1000a54d0  stp     x22, x21, [sp, #0x30]
  1000a54d4  stp     x20, x19, [sp, #0x40]
  1000a54d8  stp     x29, x30, [sp, #0x50]
  1000a54dc  add     x29, sp, #0x50
  1000a54e0  sub     sp, sp, #0x110
  1000a54e4  mov     x23, x2
  1000a54e8  mov     x20, x0
  1000a54ec  adrp    x19, #0x1003b0000
  1000a54f0  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000a54f4  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000a54f8  stur    x19, [x29, #-0x58]
  1000a54fc  mov     x0, x3
  1000a5500  bl      _objc_retain
  1000a5504  str     x0, [sp, #0x30]
  1000a5508  str     x20, [sp, #0x78]
  1000a550c  adrp    x8, #0x10041e000
  1000a5510  ldr     x8, [x8, #0xef0]
  1000a5514  str     x8, [sp, #0x80]
  1000a5518  adrp    x8, #0x100416000
  1000a551c  nop
  1000a5520  ldr     x1, [x8, #0xb40]
  1000a5524  mov     x21, #0
  1000a5528  add     x0, sp, #0x78
  1000a552c  mov     x2, #0
  1000a5530  mov     x3, #0
  1000a5534  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000a5538  mov     x20, x0
  1000a553c  cbz     x20, loc_1000a57f0                       ; if (self == 0)
  1000a5540  mov     x21, x20
  1000a5544  adrp    x8, #0x10041a000
  1000a5548  nop
  1000a554c  ldr     x1, [x8, #0x3c8]
  1000a5550  mov     x0, x20
  1000a5554  mov     x2, x23
  1000a5558  bl      _objc_msgSend                            ; [self setCardLevel:arg1]
  1000a555c  mov     x21, x20
  1000a5560  adrp    x8, #0x10041d000
  1000a5564  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000a5568  adrp    x8, #0x100416000
  1000a556c  nop
  1000a5570  ldr     x1, [x8, #0xb58]
  1000a5574  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000a5578  mov     x29, x29
  1000a557c  bl      _objc_retainAutoreleasedReturnValue
  1000a5580  mov     x21, x0
  1000a5584  adrp    x8, #0x100416000
  1000a5588  nop
  1000a558c  ldr     x1, [x8, #0xd60]
  1000a5590  adrp    x2, #0x1003c0000
  1000a5594  add     x2, x2, #0xb10                           ; @"Tarot"
  1000a5598  adrp    x3, #0x1003b9000
  1000a559c  add     x3, x3, #0xa70                           ; @"plist"
  1000a55a0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]
  1000a55a4  mov     x29, x29
  1000a55a8  bl      _objc_retainAutoreleasedReturnValue
  1000a55ac  mov     x19, x0
  1000a55b0  mov     x0, x21
  1000a55b4  bl      _objc_release
  1000a55b8  adrp    x8, #0x10041d000
  1000a55bc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000a55c0  adrp    x8, #0x100416000
  1000a55c4  nop
  1000a55c8  ldr     x1, [x8, #0xac8]
  1000a55cc  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000a55d0  adrp    x8, #0x100416000
  1000a55d4  nop
  1000a55d8  ldr     x1, [x8, #0xd68]
  1000a55dc  mov     x2, x19
  1000a55e0  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]]
  1000a55e4  mov     x22, x0
  1000a55e8  adrp    x8, #0x10041d000
  1000a55ec  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000a55f0  adrp    x8, #0x100416000
  1000a55f4  nop
  1000a55f8  ldr     x1, [x8, #0xee8]
  1000a55fc  str     x23, [sp]
  1000a5600  adrp    x2, #0x1003ba000
  1000a5604  add     x2, x2, #0x450                           ; @"level_%i"
  1000a5608  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", arg1]
  1000a560c  mov     x28, x20
  1000a5610  mov     x29, x29
  1000a5614  bl      _objc_retainAutoreleasedReturnValue
  1000a5618  mov     x21, x0
  1000a561c  adrp    x8, #0x100417000
  1000a5620  nop
  1000a5624  ldr     x24, [x8, #0x40]
  1000a5628  mov     x0, x22
  1000a562c  mov     x1, x24
  1000a5630  mov     x2, x21
  1000a5634  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]]
  1000a5638  str     x22, [sp, #0x18]
  1000a563c  mov     x29, x29
  1000a5640  bl      _objc_retainAutoreleasedReturnValue
  1000a5644  mov     x22, x0
  1000a5648  mov     x0, x21
  1000a564c  bl      _objc_release
  1000a5650  stp     xzr, xzr, [sp, #0x68]
  1000a5654  stp     xzr, xzr, [sp, #0x58]
  1000a5658  stp     xzr, xzr, [sp, #0x48]
  1000a565c  stp     xzr, xzr, [sp, #0x38]
  1000a5660  mov     x0, x22
  1000a5664  bl      _objc_retain
  1000a5668  str     x0, [sp, #0x28]
  1000a566c  adrp    x8, #0x100416000
  1000a5670  nop
  1000a5674  ldr     x1, [x8, #0xe00]
  1000a5678  str     x1, [sp, #0x20]
  1000a567c  add     x2, sp, #0x38
  1000a5680  add     x3, sp, #0x88
  1000a5684  mov     w4, #0x10
  1000a5688  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16]
  1000a568c  mov     x26, x0
  1000a5690  str     x19, [sp, #0x10]
  1000a5694  cbz     x26, loc_1000a5754                       ; if ([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16] == 0)
  1000a5698  ldr     x8, [sp, #0x48]
  1000a569c  adrp    x9, #0x100416000
  1000a56a0  add     x9, x9, #0xf58                           ; &@selector(isEqualToString:)
  1000a56a4  ldr     x19, [x8]
  1000a56a8  ldr     x27, [x9]
  1000a56ac  adrp    x8, #0x100420000
  1000a56b0  ldrsw   x23, [x8, #0xd0]                         ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
loc_1000a56b4:
  1000a56b4  mov     x20, #0
loc_1000a56b8:
  1000a56b8  ldr     x8, [sp, #0x48]
  1000a56bc  ldr     x8, [x8]
  1000a56c0  cmp     x8, x19
  1000a56c4  b.eq    loc_1000a56d0                            ; if (x8 == x19)
  1000a56c8  ldr     x0, [sp, #0x28]
  1000a56cc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]])
loc_1000a56d0:
  1000a56d0  ldr     x8, [sp, #0x40]
  1000a56d4  ldr     x21, [x8, x20, lsl #3]
  1000a56d8  mov     x0, x21
  1000a56dc  mov     x1, x24
  1000a56e0  adrp    x2, #0x1003c0000
  1000a56e4  add     x2, x2, #0xb30                           ; @"selector"
  1000a56e8  bl      _objc_msgSend                            ; [x0 objectForKey:@"selector"]
  1000a56ec  mov     x29, x29
  1000a56f0  bl      _objc_retainAutoreleasedReturnValue
  1000a56f4  mov     x22, x0
  1000a56f8  mov     x1, x27
  1000a56fc  ldr     x2, [sp, #0x30]
  1000a5700  bl      _objc_msgSend                            ; [[x0 objectForKey:@"selector"] isEqualToString:arg2]
  1000a5704  mov     x25, x0
  1000a5708  mov     x0, x22
  1000a570c  bl      _objc_release
  1000a5710  cbz     w25, loc_1000a572c                       ; if ([[x0 objectForKey:@"selector"] isEqualToString:arg2] == 0)
  1000a5714  mov     x0, x21
  1000a5718  bl      _objc_retain
  1000a571c  ldr     x8, [x28, x23]                           ; x8 = self->cardDictionary
  1000a5720  str     x0, [x28, x23]                           ; self->cardDictionary = x0
  1000a5724  mov     x0, x8
  1000a5728  bl      _objc_release
loc_1000a572c:
  1000a572c  add     x20, x20, #1
  1000a5730  cmp     x20, x26
  1000a5734  b.lo    loc_1000a56b8                            ; if ((x20 + 1) <u [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] ob…)
  1000a5738  add     x2, sp, #0x38
  1000a573c  add     x3, sp, #0x88
  1000a5740  mov     w4, #0x10
  1000a5744  ldp     x1, x0, [sp, #0x20]
  1000a5748  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16]
  1000a574c  mov     x26, x0
  1000a5750  cbnz    x26, loc_1000a56b4                       ; if ([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x88] count:16] != 0)
loc_1000a5754:
  1000a5754  ldr     x23, [sp, #0x28]
  1000a5758  mov     x0, x23
  1000a575c  bl      _objc_release
  1000a5760  adrp    x8, #0x100420000
  1000a5764  ldrsw   x19, [x8, #0xd0]                         ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a5768  mov     x20, x28
  1000a576c  ldr     x8, [x20, x19]                           ; x8 = self->cardDictionary
  1000a5770  ldr     x22, [sp, #0x18]
  1000a5774  cbnz    x8, loc_1000a57cc                        ; if (self->cardDictionary != 0)
  1000a5778  bl      _rand                                    ; rand()
  1000a577c  mov     x21, x0
  1000a5780  adrp    x8, #0x100416000
  1000a5784  nop
  1000a5788  ldr     x1, [x8, #0xe30]
  1000a578c  mov     x0, x23
  1000a5790  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count]
  1000a5794  sxtw    x8, w21
  1000a5798  udiv    x9, x8, x0                               ; t1 = (rand() / [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count])
  1000a579c  msub    x2, x9, x0, x8                           ; t2 = (rand() - t1 * [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] count])
  1000a57a0  adrp    x8, #0x100416000
  1000a57a4  nop
  1000a57a8  ldr     x1, [x8, #0xc30]
  1000a57ac  mov     x0, x23
  1000a57b0  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] objectAtIndex:t2]
  1000a57b4  mov     x29, x29
  1000a57b8  bl      _objc_retainAutoreleasedReturnValue
  1000a57bc  ldr     x8, [x20, x19]                           ; x8 = self->cardDictionary
  1000a57c0  str     x0, [x20, x19]                           ; self->cardDictionary = [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", arg1]] objectAtIndex:t2]
  1000a57c4  mov     x0, x8
  1000a57c8  bl      _objc_release
loc_1000a57cc:
  1000a57cc  mov     x0, x23
  1000a57d0  bl      _objc_release
  1000a57d4  mov     x0, x22
  1000a57d8  bl      _objc_release
  1000a57dc  ldr     x0, [sp, #0x10]
  1000a57e0  bl      _objc_release
  1000a57e4  adrp    x19, #0x1003b0000
  1000a57e8  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000a57ec  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
loc_1000a57f0:
  1000a57f0  ldr     x0, [sp, #0x30]
  1000a57f4  bl      _objc_release
  1000a57f8  ldur    x8, [x29, #-0x58]
  1000a57fc  sub     x8, x19, x8
  1000a5800  cbnz    x8, loc_1000a5828                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a5804  mov     x0, x20
  1000a5808  sub     sp, x29, #0x50
  1000a580c  ldp     x29, x30, [sp, #0x50]
  1000a5810  ldp     x20, x19, [sp, #0x40]
  1000a5814  ldp     x22, x21, [sp, #0x30]
  1000a5818  ldp     x24, x23, [sp, #0x20]
  1000a581c  ldp     x26, x25, [sp, #0x10]
  1000a5820  ldp     x28, x27, [sp], #0x60
  1000a5824  ret
loc_1000a5828:
  1000a5828  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a582c:
  1000a582c  mov     x24, x0
  1000a5830  b       loc_1000a5840
  1000a5834  mov     x24, x0
  1000a5838  mov     x0, x22
  1000a583c  bl      _objc_release
loc_1000a5840:
  1000a5840  mov     x20, x28
  1000a5844  ldr     x19, [sp, #0x10]
loc_1000a5848:
  1000a5848  ldr     x22, [sp, #0x18]
  1000a584c  ldr     x23, [sp, #0x28]
  1000a5850  mov     x0, x23
  1000a5854  bl      _objc_release
loc_1000a5858:
  1000a5858  mov     x0, x23
  1000a585c  bl      _objc_release
loc_1000a5860:
  1000a5860  mov     x0, x22
  1000a5864  bl      _objc_release
loc_1000a5868:
  1000a5868  mov     x0, x19
loc_1000a586c:
  1000a586c  bl      _objc_release
  1000a5870  mov     x21, x20
loc_1000a5874:
  1000a5874  ldr     x0, [sp, #0x30]
  1000a5878  bl      _objc_release
  1000a587c  mov     x0, x21
  1000a5880  bl      _objc_release
  1000a5884  mov     x0, x24
  1000a5888  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a588c  b       loc_1000a582c
  1000a5890  mov     x24, x0
  1000a5894  b       loc_1000a5874
  1000a5898  mov     x24, x0
  1000a589c  b       loc_1000a5868
  1000a58a0  mov     x24, x0
  1000a58a4  mov     x0, x21
  1000a58a8  b       loc_1000a586c
  1000a58ac  mov     x24, x0
  1000a58b0  b       loc_1000a5860
  1000a58b4  mov     x24, x0
  1000a58b8  mov     x0, x21
  1000a58bc  bl      _objc_release
  1000a58c0  mov     x20, x28
  1000a58c4  b       loc_1000a5860
  1000a58c8  mov     x24, x0
  1000a58cc  mov     x20, x28
  1000a58d0  b       loc_1000a5848
  1000a58d4  mov     x24, x0
  1000a58d8  ldr     x19, [sp, #0x10]
  1000a58dc  b       loc_1000a5858

; ======================================================================
; -[ADTarotCardViewController refreshCard]
; address 0x1000a58e0  size 1392  kind objc
; ======================================================================
  1000a58e0  stp     x24, x23, [sp, #-0x40]!
  1000a58e4  stp     x22, x21, [sp, #0x10]
  1000a58e8  stp     x20, x19, [sp, #0x20]
  1000a58ec  stp     x29, x30, [sp, #0x30]
  1000a58f0  add     x29, sp, #0x30
  1000a58f4  sub     sp, sp, #0x10
  1000a58f8  mov     x19, x0
  1000a58fc  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000a5900  cbz     w0, loc_1000a5b90                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  1000a5904  adrp    x8, #0x100416000
  1000a5908  nop
  1000a590c  ldr     x1, [x8, #0xf18]
  1000a5910  mov     x0, x19
  1000a5914  bl      _objc_msgSend                            ; [self view]
  1000a5918  mov     x29, x29
  1000a591c  bl      _objc_retainAutoreleasedReturnValue
  1000a5920  mov     x20, x0
  1000a5924  adrp    x8, #0x10041d000
  1000a5928  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000a592c  adrp    x8, #0x10041a000
  1000a5930  nop
  1000a5934  ldr     x1, [x8, #0x3d0]
  1000a5938  bl      _objc_msgSend                            ; [UIColor greenColor]
  1000a593c  mov     x29, x29
  1000a5940  bl      _objc_retainAutoreleasedReturnValue
  1000a5944  mov     x21, x0
  1000a5948  adrp    x8, #0x100417000
  1000a594c  nop
  1000a5950  ldr     x1, [x8, #0x188]
  1000a5954  mov     x0, x20
  1000a5958  mov     x2, x21
  1000a595c  bl      _objc_msgSend                            ; [[self view] setBackgroundColor:[UIColor greenColor]]
  1000a5960  mov     x0, x21
  1000a5964  bl      _objc_release
  1000a5968  mov     x0, x20
  1000a596c  bl      _objc_release
  1000a5970  adrp    x8, #0x10041a000
  1000a5974  nop
  1000a5978  ldr     x20, [x8, #0x3c0]
  1000a597c  mov     x0, x19
  1000a5980  mov     x1, x20
  1000a5984  bl      _objc_msgSend                            ; [self accessibleCard]
  1000a5988  mov     x29, x29
  1000a598c  bl      _objc_retainAutoreleasedReturnValue
  1000a5990  mov     x21, x0
  1000a5994  adrp    x8, #0x10041a000
  1000a5998  nop
  1000a599c  ldr     x22, [x8, #0x3d8]
  1000a59a0  mov     x0, x19
  1000a59a4  mov     x1, x22
  1000a59a8  bl      _objc_msgSend                            ; [self accessibleDescription]
  1000a59ac  mov     x29, x29
  1000a59b0  bl      _objc_retainAutoreleasedReturnValue
  1000a59b4  mov     x23, x0
  1000a59b8  adrp    x8, #0x100417000
  1000a59bc  nop
  1000a59c0  ldr     x1, [x8, #0x920]
  1000a59c4  mov     x3, #0
  1000a59c8  mov     x0, x21
  1000a59cc  mov     x2, x23
  1000a59d0  bl      _objc_msgSend                            ; [[self accessibleCard] setTitle:[self accessibleDescription] forState:0]
  1000a59d4  mov     x0, x23
  1000a59d8  bl      _objc_release
  1000a59dc  mov     x0, x21
  1000a59e0  bl      _objc_release
  1000a59e4  mov     x0, x19
  1000a59e8  mov     x1, x20
  1000a59ec  bl      _objc_msgSend                            ; [self accessibleCard]
  1000a59f0  mov     x29, x29
  1000a59f4  bl      _objc_retainAutoreleasedReturnValue
  1000a59f8  mov     x21, x0
  1000a59fc  mov     x0, x19
  1000a5a00  mov     x1, x22
  1000a5a04  bl      _objc_msgSend                            ; [self accessibleDescription]
  1000a5a08  mov     x29, x29
  1000a5a0c  bl      _objc_retainAutoreleasedReturnValue
  1000a5a10  mov     x22, x0
  1000a5a14  adrp    x8, #0x100417000
  1000a5a18  nop
  1000a5a1c  ldr     x1, [x8, #0x7e8]
  1000a5a20  mov     x0, x21
  1000a5a24  mov     x2, x22
  1000a5a28  bl      _objc_msgSend                            ; [[self accessibleCard] setAccessibilityLabel:[self accessibleDescription]]
  1000a5a2c  mov     x0, x22
  1000a5a30  bl      _objc_release
  1000a5a34  mov     x0, x21
  1000a5a38  bl      _objc_release
  1000a5a3c  mov     x0, x19
  1000a5a40  mov     x1, x20
  1000a5a44  bl      _objc_msgSend                            ; [self accessibleCard]
  1000a5a48  mov     x29, x29
  1000a5a4c  bl      _objc_retainAutoreleasedReturnValue
  1000a5a50  mov     x21, x0
  1000a5a54  adrp    x8, #0x10041a000
  1000a5a58  nop
  1000a5a5c  ldr     x3, [x8, #0x3e0]
  1000a5a60  adrp    x8, #0x100417000
  1000a5a64  nop
  1000a5a68  ldr     x1, [x8, #0x7d0]
  1000a5a6c  mov     w4, #0x40
  1000a5a70  mov     x2, x19
  1000a5a74  bl      _objc_msgSend                            ; [[self accessibleCard] addTarget:self action:@selector(changeCardButtonPressed:) forControlEvents:64]
  1000a5a78  mov     x0, x21
  1000a5a7c  bl      _objc_release
  1000a5a80  mov     x0, x19
  1000a5a84  mov     x1, x20
  1000a5a88  bl      _objc_msgSend                            ; [self accessibleCard]
  1000a5a8c  mov     x29, x29
  1000a5a90  bl      _objc_retainAutoreleasedReturnValue
  1000a5a94  mov     x21, x0
  1000a5a98  adrp    x8, #0x10041d000
  1000a5a9c  ldr     x23, [x8, #0xf78]                        ; class NSString
  1000a5aa0  nop
  1000a5aa4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000a5aa8  adrp    x8, #0x100416000
  1000a5aac  nop
  1000a5ab0  ldr     x1, [x8, #0xec8]
  1000a5ab4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a5ab8  mov     x29, x29
  1000a5abc  bl      _objc_retainAutoreleasedReturnValue
  1000a5ac0  mov     x22, x0
  1000a5ac4  adrp    x8, #0x100417000
  1000a5ac8  nop
  1000a5acc  ldr     x1, [x8, #0x960]
  1000a5ad0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  1000a5ad4  adrp    x8, #0x100416000
  1000a5ad8  nop
  1000a5adc  ldr     x1, [x8, #0xee8]
  1000a5ae0  str     x0, [sp]
  1000a5ae4  adrp    x2, #0x1003c0000
  1000a5ae8  add     x2, x2, #0xb50                           ; @"You have %i diamonds"
  1000a5aec  mov     x0, x23
  1000a5af0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You have %i diamonds", [[ADInventory sharedInventory] diamonds]]
  1000a5af4  mov     x29, x29
  1000a5af8  bl      _objc_retainAutoreleasedReturnValue
  1000a5afc  mov     x23, x0
  1000a5b00  adrp    x8, #0x100416000
  1000a5b04  nop
  1000a5b08  ldr     x1, [x8, #0xbd0]
  1000a5b0c  mov     x0, x21
  1000a5b10  mov     x2, x23
  1000a5b14  bl      _objc_msgSend                            ; [[self accessibleCard] setAccessibilityHint:[NSString stringWithFormat:@"You have %i diamonds", [[ADInventory sharedInventory] diamonds]]]
  1000a5b18  mov     x0, x23
  1000a5b1c  bl      _objc_release
  1000a5b20  mov     x0, x22
  1000a5b24  bl      _objc_release
  1000a5b28  mov     x0, x21
  1000a5b2c  bl      _objc_release
  1000a5b30  mov     x0, x19
  1000a5b34  mov     x1, x20
  1000a5b38  bl      _objc_msgSend                            ; [self accessibleCard]
  1000a5b3c  mov     x29, x29
  1000a5b40  bl      _objc_retainAutoreleasedReturnValue
  1000a5b44  mov     x21, x0
  1000a5b48  adrp    x8, #0x100419000
  1000a5b4c  nop
  1000a5b50  ldr     x1, [x8, #0x7f8]
  1000a5b54  bl      _objc_msgSend                            ; [[self accessibleCard] makeAccessible]
  1000a5b58  mov     x0, x21
  1000a5b5c  bl      _objc_release
  1000a5b60  mov     x0, x19
  1000a5b64  mov     x1, x20
  1000a5b68  bl      _objc_msgSend                            ; [self accessibleCard]
  1000a5b6c  mov     x29, x29
  1000a5b70  bl      _objc_retainAutoreleasedReturnValue
  1000a5b74  mov     x20, x0
  1000a5b78  adrp    x8, #0x10041a000
  1000a5b7c  nop
  1000a5b80  ldr     x1, [x8, #0x3e8]
  1000a5b84  bl      _objc_msgSend                            ; [[self accessibleCard] setupAsAccessibleTarotCardInfo]
  1000a5b88  b       loc_1000a5d5c
  1000a5b8c  b       loc_1000a5e2c
loc_1000a5b90:
  1000a5b90  adrp    x8, #0x10041a000
  1000a5b94  nop
  1000a5b98  ldr     x1, [x8, #0x3f0]
  1000a5b9c  mov     x0, x19
  1000a5ba0  bl      _objc_msgSend                            ; [self cardTitle]
  1000a5ba4  mov     x29, x29
  1000a5ba8  bl      _objc_retainAutoreleasedReturnValue
  1000a5bac  mov     x21, x0
  1000a5bb0  adrp    x8, #0x100420000
  1000a5bb4  ldrsw   x24, [x8, #0xd0]                         ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a5bb8  ldr     x0, [x19, x24]                           ; x0 = self->cardDictionary
  1000a5bbc  adrp    x8, #0x100417000
  1000a5bc0  nop
  1000a5bc4  ldr     x20, [x8, #0x40]
  1000a5bc8  adrp    x2, #0x1003bc000
  1000a5bcc  add     x2, x2, #0x950                           ; @"title"
  1000a5bd0  mov     x1, x20
  1000a5bd4  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"title"]
  1000a5bd8  mov     x29, x29
  1000a5bdc  bl      _objc_retainAutoreleasedReturnValue
  1000a5be0  mov     x23, x0
  1000a5be4  adrp    x8, #0x100416000
  1000a5be8  nop
  1000a5bec  ldr     x22, [x8, #0xb68]
  1000a5bf0  mov     x0, x21
  1000a5bf4  mov     x1, x22
  1000a5bf8  mov     x2, x23
  1000a5bfc  bl      _objc_msgSend                            ; [[self cardTitle] setText:[self->cardDictionary objectForKey:@"title"]]
  1000a5c00  mov     x0, x23
  1000a5c04  bl      _objc_release
  1000a5c08  mov     x0, x21
  1000a5c0c  bl      _objc_release
  1000a5c10  adrp    x8, #0x10041a000
  1000a5c14  nop
  1000a5c18  ldr     x1, [x8, #0x3f8]
  1000a5c1c  mov     x0, x19
  1000a5c20  bl      _objc_msgSend                            ; [self cardDescription]
  1000a5c24  mov     x29, x29
  1000a5c28  bl      _objc_retainAutoreleasedReturnValue
  1000a5c2c  mov     x21, x0
  1000a5c30  ldr     x0, [x19, x24]                           ; x0 = self->cardDictionary
  1000a5c34  adrp    x2, #0x1003bc000
  1000a5c38  add     x2, x2, #0xdf0                           ; @"description"
  1000a5c3c  mov     x1, x20
  1000a5c40  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"description"]
  1000a5c44  mov     x29, x29
  1000a5c48  bl      _objc_retainAutoreleasedReturnValue
  1000a5c4c  mov     x23, x0
  1000a5c50  mov     x0, x21
  1000a5c54  mov     x1, x22
  1000a5c58  mov     x2, x23
  1000a5c5c  bl      _objc_msgSend                            ; [[self cardDescription] setText:[self->cardDictionary objectForKey:@"description"]]
  1000a5c60  mov     x0, x23
  1000a5c64  bl      _objc_release
  1000a5c68  mov     x0, x21
  1000a5c6c  bl      _objc_release
  1000a5c70  ldr     x0, [x19, x24]                           ; x0 = self->cardDictionary
  1000a5c74  adrp    x2, #0x1003c0000
  1000a5c78  add     x2, x2, #0xb70                           ; @"goodbad"
  1000a5c7c  mov     x1, x20
  1000a5c80  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"goodbad"]
  1000a5c84  mov     x29, x29
  1000a5c88  bl      _objc_retainAutoreleasedReturnValue
  1000a5c8c  mov     x20, x0
  1000a5c90  adrp    x8, #0x100416000
  1000a5c94  nop
  1000a5c98  ldr     x1, [x8, #0xf58]
  1000a5c9c  adrp    x2, #0x1003c0000
  1000a5ca0  add     x2, x2, #0xb90                           ; @"bad"
  1000a5ca4  bl      _objc_msgSend                            ; [[self->cardDictionary objectForKey:@"goodbad"] isEqualToString:@"bad"]
  1000a5ca8  mov     x21, x0
  1000a5cac  mov     x0, x20
  1000a5cb0  bl      _objc_release
  1000a5cb4  adrp    x8, #0x10041a000
  1000a5cb8  nop
  1000a5cbc  ldr     x1, [x8, #0x400]
  1000a5cc0  mov     x0, x19
  1000a5cc4  bl      _objc_msgSend                            ; [self backgroundImage]
  1000a5cc8  mov     x29, x29
  1000a5ccc  bl      _objc_retainAutoreleasedReturnValue
  1000a5cd0  mov     x20, x0
  1000a5cd4  adrp    x8, #0x10041d000
  1000a5cd8  ldr     x0, [x8, #0xf10]                         ; class UIImage
  1000a5cdc  adrp    x8, #0x100416000
  1000a5ce0  add     x8, x8, #0xd40                           ; &@selector(imageNamed:)
  1000a5ce4  ldr     x1, [x8]
  1000a5ce8  cbz     w21, loc_1000a5d24                       ; if ([[self->cardDictionary objectForKey:@"goodbad"] isEqualToString:@"bad"] == 0)
  1000a5cec  adrp    x2, #0x1003c0000
  1000a5cf0  add     x2, x2, #0xbb0                           ; @"cards_front_bad"
  1000a5cf4  bl      _objc_msgSend                            ; [UIImage imageNamed:@"cards_front_bad"]
  1000a5cf8  mov     x29, x29
  1000a5cfc  bl      _objc_retainAutoreleasedReturnValue
  1000a5d00  mov     x21, x0
  1000a5d04  adrp    x8, #0x100416000
  1000a5d08  nop
  1000a5d0c  ldr     x1, [x8, #0xef0]
  1000a5d10  mov     x0, x20
  1000a5d14  mov     x2, x21
  1000a5d18  bl      _objc_msgSend                            ; [[self backgroundImage] setImage:[UIImage imageNamed:@"cards_front_bad"]]
  1000a5d1c  b       loc_1000a5d54
  1000a5d20  b       loc_1000a5e34
loc_1000a5d24:
  1000a5d24  adrp    x2, #0x1003c0000
  1000a5d28  add     x2, x2, #0xbd0                           ; @"cards_front_good"
  1000a5d2c  bl      _objc_msgSend                            ; [UIImage imageNamed:@"cards_front_good"]
  1000a5d30  mov     x29, x29
  1000a5d34  bl      _objc_retainAutoreleasedReturnValue
  1000a5d38  mov     x21, x0
  1000a5d3c  adrp    x8, #0x100416000
  1000a5d40  nop
  1000a5d44  ldr     x1, [x8, #0xef0]
  1000a5d48  mov     x0, x20
  1000a5d4c  mov     x2, x21
  1000a5d50  bl      _objc_msgSend                            ; [[self backgroundImage] setImage:[UIImage imageNamed:@"cards_front_good"]]
loc_1000a5d54:
  1000a5d54  mov     x0, x21
  1000a5d58  bl      _objc_release
loc_1000a5d5c:
  1000a5d5c  mov     x0, x20
  1000a5d60  bl      _objc_release
  1000a5d64  adrp    x8, #0x100420000
  1000a5d68  ldrsw   x8, [x8, #0xd0]                          ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a5d6c  ldr     x0, [x19, x8]                            ; x0 = self->cardDictionary
  1000a5d70  adrp    x8, #0x100417000
  1000a5d74  nop
  1000a5d78  ldr     x1, [x8, #0x40]
  1000a5d7c  adrp    x2, #0x1003bc000
  1000a5d80  add     x2, x2, #0x950                           ; @"title"
  1000a5d84  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"title"]
  1000a5d88  mov     x29, x29
  1000a5d8c  bl      _objc_retainAutoreleasedReturnValue
  1000a5d90  adrp    x8, #0x100420000
  1000a5d94  ldrsw   x9, [x8, #0xd4]                          ; ivar offset ADTarotCardViewController.currentTitle (+0x150)
  1000a5d98  ldr     x8, [x19, x9]                            ; x8 = self->currentTitle
  1000a5d9c  str     x0, [x19, x9]                            ; self->currentTitle = [self->cardDictionary objectForKey:@"title"]
  1000a5da0  mov     x0, x8
  1000a5da4  sub     sp, x29, #0x30
  1000a5da8  ldp     x29, x30, [sp, #0x30]
  1000a5dac  ldp     x20, x19, [sp, #0x20]
  1000a5db0  ldp     x22, x21, [sp, #0x10]
  1000a5db4  ldp     x24, x23, [sp], #0x40
  1000a5db8  b       _objc_release
  1000a5dbc  mov     x19, x0
  1000a5dc0  b       loc_1000a5e10
  1000a5dc4  b       loc_1000a5e2c
  1000a5dc8  b       loc_1000a5e34
  1000a5dcc  b       loc_1000a5e1c
  1000a5dd0  b       loc_1000a5df0
  1000a5dd4  b       loc_1000a5e1c
  1000a5dd8  mov     x19, x0
  1000a5ddc  b       loc_1000a5e10
  1000a5de0  b       loc_1000a5e1c
  1000a5de4  b       loc_1000a5e1c
  1000a5de8  b       loc_1000a5df0
  1000a5dec  b       loc_1000a5e1c
loc_1000a5df0:
  1000a5df0  mov     x19, x0
  1000a5df4  mov     x0, x23
  1000a5df8  b       loc_1000a5e14
  1000a5dfc  b       loc_1000a5e2c
  1000a5e00  b       loc_1000a5e1c
  1000a5e04  mov     x19, x0
  1000a5e08  mov     x0, x23
  1000a5e0c  bl      _objc_release
loc_1000a5e10:
  1000a5e10  mov     x0, x22
loc_1000a5e14:
  1000a5e14  bl      _objc_release
  1000a5e18  b       loc_1000a5e20
loc_1000a5e1c:
  1000a5e1c  mov     x19, x0
loc_1000a5e20:
  1000a5e20  mov     x0, x21
  1000a5e24  b       loc_1000a5e44
  1000a5e28  b       loc_1000a5e2c
loc_1000a5e2c:
  1000a5e2c  mov     x19, x0
  1000a5e30  b       loc_1000a5e40
loc_1000a5e34:
  1000a5e34  mov     x19, x0
  1000a5e38  mov     x0, x21
  1000a5e3c  bl      _objc_release
loc_1000a5e40:
  1000a5e40  mov     x0, x20
loc_1000a5e44:
  1000a5e44  bl      _objc_release
  1000a5e48  mov     x0, x19
  1000a5e4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotCardViewController flipCard:]
; address 0x1000a5e50  size 640  kind objc
; ======================================================================
  1000a5e50  stp     x24, x23, [sp, #-0x40]!
  1000a5e54  stp     x22, x21, [sp, #0x10]
  1000a5e58  stp     x20, x19, [sp, #0x20]
  1000a5e5c  stp     x29, x30, [sp, #0x30]
  1000a5e60  add     x29, sp, #0x30
  1000a5e64  sub     sp, sp, #0x30
  1000a5e68  mov     x22, x0
  1000a5e6c  mov     x0, x2
  1000a5e70  bl      _objc_retain
  1000a5e74  mov     x19, x0
  1000a5e78  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000a5e7c  tbnz    w0, #0, loc_1000a6050                    ; if ((UIAccessibilityIsVoiceOverRunning() & 1))
  1000a5e80  adrp    x8, #0x100417000
  1000a5e84  nop
  1000a5e88  ldr     x1, [x8, #0xd8]
  1000a5e8c  mov     x0, x19
  1000a5e90  bl      _objc_msgSend                            ; [arg1 boolValue]
  1000a5e94  mov     x23, x0
  1000a5e98  adrp    x8, #0x10041a000
  1000a5e9c  nop
  1000a5ea0  ldr     x1, [x8, #0x408]
  1000a5ea4  mov     x21, #0
  1000a5ea8  mov     x20, #0
  1000a5eac  mov     x0, x22
  1000a5eb0  bl      _objc_msgSend                            ; [self flipped]
  1000a5eb4  tbz     w0, #0, loc_1000a5f00                    ; if (!([self flipped] & 1))
  1000a5eb8  adrp    x8, #0x10041a000
  1000a5ebc  nop
  1000a5ec0  ldr     x1, [x8, #0x3b0]
  1000a5ec4  mov     x21, #0
  1000a5ec8  mov     x20, #0
  1000a5ecc  mov     x0, x22
  1000a5ed0  bl      _objc_msgSend                            ; [self cardBack]
  1000a5ed4  mov     x29, x29
  1000a5ed8  bl      _objc_retainAutoreleasedReturnValue
  1000a5edc  mov     x20, x0
  1000a5ee0  mov     x21, #0
  1000a5ee4  adrp    x8, #0x10041a000
  1000a5ee8  nop
  1000a5eec  ldr     x1, [x8, #0x410]
  1000a5ef0  mov     x0, x22
  1000a5ef4  bl      _objc_msgSend                            ; [self cardFront]
  1000a5ef8  mov     x29, x29
  1000a5efc  b       loc_1000a5f44
loc_1000a5f00:
  1000a5f00  adrp    x8, #0x10041a000
  1000a5f04  nop
  1000a5f08  ldr     x1, [x8, #0x410]
  1000a5f0c  mov     x21, #0
  1000a5f10  mov     x20, #0
  1000a5f14  mov     x0, x22
  1000a5f18  bl      _objc_msgSend                            ; [self cardFront]
  1000a5f1c  mov     x29, x29
  1000a5f20  bl      _objc_retainAutoreleasedReturnValue
  1000a5f24  mov     x20, x0
  1000a5f28  mov     x21, #0
  1000a5f2c  adrp    x8, #0x10041a000
  1000a5f30  nop
  1000a5f34  ldr     x1, [x8, #0x3b0]
  1000a5f38  mov     x0, x22
  1000a5f3c  bl      _objc_msgSend                            ; [self cardBack]
  1000a5f40  mov     x29, x29
loc_1000a5f44:
  1000a5f44  bl      _objc_retainAutoreleasedReturnValue
  1000a5f48  mov     x21, x0
  1000a5f4c  adrp    x8, #0x1003b0000
  1000a5f50  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000a5f54  mov     w9, #-0x40000000
  1000a5f58  str     x8, [sp]
  1000a5f5c  adr     x8, #0x1000a60d0                         ; &-[ADTarotCardViewController flipCard:]_block_invoke
  1000a5f60  nop
  1000a5f64  stp     w9, wzr, [sp, #8]
  1000a5f68  adrp    x9, #0x10041d000
  1000a5f6c  str     x8, [sp, #0x10]
  1000a5f70  adrp    x8, #0x1003b2000
  1000a5f74  add     x8, x8, #0x3e0                           ; &d_1003b23e0
  1000a5f78  ldr     x0, [x9, #0xf98]                         ; class UIView
  1000a5f7c  stp     x8, x22, [sp, #0x18]
  1000a5f80  strb    w23, [sp, #0x28]
  1000a5f84  adrp    x8, #0x10041a000
  1000a5f88  nop
  1000a5f8c  ldr     x1, [x8, #0x428]
  1000a5f90  fmov    d0, #0.50000000
  1000a5f94  mov     w4, #0x200000
  1000a5f98  mov     x5, sp
  1000a5f9c  mov     x2, x21
  1000a5fa0  mov     x3, x20
  1000a5fa4  bl      _objc_msgSend                            ; [UIView transitionFromView:x2 toView:x3 duration:0.5 options:0x200000 completion:^{-[ADTarotCardViewController flipCard:]_block_invoke captures +0x20=self, +0x28=[arg1 boolValue]}]
  1000a5fa8  adrp    x8, #0x10041d000
  1000a5fac  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000a5fb0  adrp    x8, #0x100417000
  1000a5fb4  nop
  1000a5fb8  ldr     x1, [x8, #0x4f0]
  1000a5fbc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000a5fc0  mov     x29, x29
  1000a5fc4  bl      _objc_retainAutoreleasedReturnValue
  1000a5fc8  mov     x23, x0
  1000a5fcc  adrp    x8, #0x100417000
  1000a5fd0  nop
  1000a5fd4  ldr     x1, [x8, #0x4f8]
  1000a5fd8  adrp    x2, #0x1003bc000
  1000a5fdc  add     x2, x2, #0x290                           ; @"tarot"
  1000a5fe0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"tarot"]
  1000a5fe4  mov     x29, x29
  1000a5fe8  bl      _objc_retainAutoreleasedReturnValue
  1000a5fec  mov     x22, x0
  1000a5ff0  mov     x0, x23
  1000a5ff4  bl      _objc_release
  1000a5ff8  adrp    x8, #0x100416000
  1000a5ffc  nop
  1000a6000  ldr     x1, [x8, #0xca0]
  1000a6004  adrp    x2, #0x1003c0000
  1000a6008  add     x2, x2, #0xbf0                           ; @"flip"
  1000a600c  mov     x0, x22
  1000a6010  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"tarot"] anySoundContaining:@"flip"]
  1000a6014  mov     x29, x29
  1000a6018  bl      _objc_retainAutoreleasedReturnValue
  1000a601c  mov     x23, x0
  1000a6020  adrp    x8, #0x100417000
  1000a6024  nop
  1000a6028  ldr     x1, [x8, #0x600]
  1000a602c  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"tarot"] anySoundContaining:@"flip"] play]
  1000a6030  mov     x0, x23
  1000a6034  bl      _objc_release
  1000a6038  mov     x0, x22
  1000a603c  bl      _objc_release
  1000a6040  mov     x0, x20
  1000a6044  bl      _objc_release
  1000a6048  mov     x0, x21
  1000a604c  bl      _objc_release
loc_1000a6050:
  1000a6050  mov     x0, x19
  1000a6054  bl      _objc_release
  1000a6058  sub     sp, x29, #0x30
  1000a605c  ldp     x29, x30, [sp, #0x30]
  1000a6060  ldp     x20, x19, [sp, #0x20]
  1000a6064  ldp     x22, x21, [sp, #0x10]
  1000a6068  ldp     x24, x23, [sp], #0x40
  1000a606c  ret
  1000a6070  mov     x23, x0
  1000a6074  b       loc_1000a60b0
  1000a6078  mov     x23, x0
  1000a607c  b       loc_1000a60c0
  1000a6080  mov     x1, x23
  1000a6084  mov     x23, x0
  1000a6088  mov     x0, x1
  1000a608c  b       loc_1000a60ac
  1000a6090  mov     x23, x0
  1000a6094  b       loc_1000a60a8
  1000a6098  mov     x1, x23
  1000a609c  mov     x23, x0
  1000a60a0  mov     x0, x1
  1000a60a4  bl      _objc_release
loc_1000a60a8:
  1000a60a8  mov     x0, x22
loc_1000a60ac:
  1000a60ac  bl      _objc_release
loc_1000a60b0:
  1000a60b0  mov     x0, x20
  1000a60b4  bl      _objc_release
  1000a60b8  mov     x0, x21
  1000a60bc  bl      _objc_release
loc_1000a60c0:
  1000a60c0  mov     x0, x19
  1000a60c4  bl      _objc_release
  1000a60c8  mov     x0, x23
  1000a60cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotCardViewController flipCard:]_block_invoke
; address 0x1000a60d0  size 208  kind block
; ======================================================================
  1000a60d0  stp     x20, x19, [sp, #-0x20]!
  1000a60d4  stp     x29, x30, [sp, #0x10]
  1000a60d8  add     x29, sp, #0x10
  1000a60dc  mov     x19, x0
  1000a60e0  ldr     x20, [x19, #0x20]                        ; x20 = captured self
  1000a60e4  adrp    x8, #0x10041a000
  1000a60e8  nop
  1000a60ec  ldr     x1, [x8, #0x408]
  1000a60f0  mov     x0, x20
  1000a60f4  bl      _objc_msgSend                            ; [self flipped]
  1000a60f8  eor     w2, w0, #1
  1000a60fc  adrp    x8, #0x10041a000
  1000a6100  nop
  1000a6104  ldr     x1, [x8, #0x418]
  1000a6108  mov     x0, x20
  1000a610c  bl      _objc_msgSend                            ; [self setFlipped:([self flipped] ^ 1)]
  1000a6110  ldrb    w8, [x19, #0x28]                         ; w8 = captured [arg1 boolValue]
  1000a6114  cbz     w8, loc_1000a6180                        ; if ([arg1 boolValue] == 0)
  1000a6118  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  1000a611c  adrp    x8, #0x10041a000
  1000a6120  nop
  1000a6124  ldr     x1, [x8, #0x420]
  1000a6128  bl      _objc_msgSend                            ; [self changeCard]
  1000a612c  ldr     x20, [x19, #0x20]                        ; x20 = captured self
  1000a6130  adrp    x8, #0x10041d000
  1000a6134  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000a6138  adrp    x8, #0x100417000
  1000a613c  nop
  1000a6140  ldr     x1, [x8, #0xb8]
  1000a6144  mov     w2, #0
  1000a6148  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000a614c  mov     x29, x29
  1000a6150  bl      _objc_retainAutoreleasedReturnValue
  1000a6154  mov     x19, x0
  1000a6158  adrp    x8, #0x100418000
  1000a615c  nop
  1000a6160  ldr     x1, [x8, #0x3e8]
  1000a6164  mov     x0, x20
  1000a6168  mov     x2, x19
  1000a616c  bl      _objc_msgSend                            ; [self flipCard:[NSNumber numberWithBool:0]]
  1000a6170  mov     x0, x19
  1000a6174  ldp     x29, x30, [sp, #0x10]
  1000a6178  ldp     x20, x19, [sp], #0x20
  1000a617c  b       _objc_release
loc_1000a6180:
  1000a6180  ldp     x29, x30, [sp, #0x10]
  1000a6184  ldp     x20, x19, [sp], #0x20
  1000a6188  ret
  1000a618c  mov     x20, x0
  1000a6190  mov     x0, x19
  1000a6194  bl      _objc_release
  1000a6198  mov     x0, x20
  1000a619c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotCardViewController accessibleDescription]
; address 0x1000a61a0  size 280  kind objc
; ======================================================================
  1000a61a0  stp     x24, x23, [sp, #-0x40]!
  1000a61a4  stp     x22, x21, [sp, #0x10]
  1000a61a8  stp     x20, x19, [sp, #0x20]
  1000a61ac  stp     x29, x30, [sp, #0x30]
  1000a61b0  add     x29, sp, #0x30
  1000a61b4  sub     sp, sp, #0x20
  1000a61b8  mov     x21, x0
  1000a61bc  adrp    x8, #0x10041d000
  1000a61c0  ldr     x20, [x8, #0xf78]                        ; class NSString
  1000a61c4  adrp    x8, #0x100418000
  1000a61c8  nop
  1000a61cc  ldr     x1, [x8, #0x448]
  1000a61d0  bl      _objc_msgSend                            ; [self cardLevel]
  1000a61d4  mov     x22, x0
  1000a61d8  adrp    x8, #0x100420000
  1000a61dc  ldrsw   x24, [x8, #0xd0]                         ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a61e0  ldr     x0, [x21, x24]                           ; x0 = self->cardDictionary
  1000a61e4  adrp    x8, #0x100417000
  1000a61e8  nop
  1000a61ec  ldr     x23, [x8, #0x40]
  1000a61f0  adrp    x2, #0x1003bc000
  1000a61f4  add     x2, x2, #0x950                           ; @"title"
  1000a61f8  mov     x1, x23
  1000a61fc  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"title"]
  1000a6200  mov     x29, x29
  1000a6204  bl      _objc_retainAutoreleasedReturnValue
  1000a6208  mov     x19, x0
  1000a620c  ldr     x0, [x21, x24]                           ; x0 = self->cardDictionary
  1000a6210  adrp    x2, #0x1003bc000
  1000a6214  add     x2, x2, #0xdf0                           ; @"description"
  1000a6218  mov     x1, x23
  1000a621c  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"description"]
  1000a6220  mov     x29, x29
  1000a6224  bl      _objc_retainAutoreleasedReturnValue
  1000a6228  mov     x23, x0
  1000a622c  adrp    x8, #0x100420000
  1000a6230  ldrsw   x8, [x8, #0xcc]                          ; ivar offset ADTarotCardViewController.cost (+0x148)
  1000a6234  adrp    x9, #0x100416000
  1000a6238  nop
  1000a623c  ldr     x1, [x9, #0xee8]
  1000a6240  ldr     w8, [x21, x8]                            ; w8 = self->cost
  1000a6244  stp     x23, x8, [sp, #0x10]
  1000a6248  stp     x22, x19, [sp]
  1000a624c  adrp    x2, #0x1003c0000
  1000a6250  add     x2, x2, #0xc10                           ; @"Tarot card number %i : %@ \n\n %@ \n\n(double tap to change for %i diamonds)"
  1000a6254  mov     x0, x20
  1000a6258  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Tarot card number %i : %@ \n\n %@ \n\n(double tap to change for %i diamonds)", [self cardLevel], [self->cardDictionary objectForKey:@"title"], [self->cardDictionary objectForKey:@"description"], self->cost]
  1000a625c  mov     x29, x29
  1000a6260  bl      _objc_retainAutoreleasedReturnValue
  1000a6264  mov     x20, x0
  1000a6268  mov     x0, x23
  1000a626c  bl      _objc_release
  1000a6270  mov     x0, x19
  1000a6274  bl      _objc_release
  1000a6278  mov     x0, x20
  1000a627c  sub     sp, x29, #0x30
  1000a6280  ldp     x29, x30, [sp, #0x30]
  1000a6284  ldp     x20, x19, [sp, #0x20]
  1000a6288  ldp     x22, x21, [sp, #0x10]
  1000a628c  ldp     x24, x23, [sp], #0x40
  1000a6290  b       _objc_autoreleaseReturnValue
  1000a6294  mov     x20, x0
  1000a6298  b       loc_1000a62a8
  1000a629c  mov     x20, x0
  1000a62a0  mov     x0, x23
  1000a62a4  bl      _objc_release
loc_1000a62a8:
  1000a62a8  mov     x0, x19
  1000a62ac  bl      _objc_release
  1000a62b0  mov     x0, x20
  1000a62b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotCardViewController changeCardButtonPressed:]
; address 0x1000a62b8  size 748  kind objc
; ======================================================================
  1000a62b8  stp     x26, x25, [sp, #-0x50]!
  1000a62bc  stp     x24, x23, [sp, #0x10]
  1000a62c0  stp     x22, x21, [sp, #0x20]
  1000a62c4  stp     x20, x19, [sp, #0x30]
  1000a62c8  stp     x29, x30, [sp, #0x40]
  1000a62cc  add     x29, sp, #0x40
  1000a62d0  mov     x19, x0
  1000a62d4  adrp    x25, #0x10041d000
  1000a62d8  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  1000a62dc  adrp    x8, #0x100416000
  1000a62e0  nop
  1000a62e4  ldr     x20, [x8, #0xec8]
  1000a62e8  mov     x1, x20
  1000a62ec  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a62f0  mov     x29, x29
  1000a62f4  bl      _objc_retainAutoreleasedReturnValue
  1000a62f8  mov     x22, x0
  1000a62fc  adrp    x8, #0x100417000
  1000a6300  nop
  1000a6304  ldr     x21, [x8, #0x960]
  1000a6308  mov     x1, x21
  1000a630c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  1000a6310  mov     x23, x0
  1000a6314  adrp    x8, #0x100420000
  1000a6318  ldrsw   x26, [x8, #0xcc]                         ; ivar offset ADTarotCardViewController.cost (+0x148)
  1000a631c  ldr     w24, [x19, x26]                          ; w24 = self->cost
  1000a6320  mov     x0, x22
  1000a6324  bl      _objc_release
  1000a6328  cmp     w23, w24
  1000a632c  b.ge    loc_1000a635c                            ; if ([[ADInventory sharedInventory] diamonds] >= self->cost)
  1000a6330  adrp    x8, #0x100417000
  1000a6334  nop
  1000a6338  ldr     x1, [x8, #0xae0]
  1000a633c  mov     x0, x19
  1000a6340  bl      _objc_msgSend                            ; [self showNoDiamondsAlert]
  1000a6344  ldp     x29, x30, [sp, #0x40]
  1000a6348  ldp     x20, x19, [sp, #0x30]
  1000a634c  ldp     x22, x21, [sp, #0x20]
  1000a6350  ldp     x24, x23, [sp, #0x10]
  1000a6354  ldp     x26, x25, [sp], #0x50
  1000a6358  ret
loc_1000a635c:
  1000a635c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000a6360  cbz     w0, loc_1000a640c                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  1000a6364  adrp    x8, #0x10041d000
  1000a6368  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000a636c  adrp    x8, #0x100417000
  1000a6370  nop
  1000a6374  ldr     x1, [x8, #0x4f0]
  1000a6378  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000a637c  mov     x29, x29
  1000a6380  bl      _objc_retainAutoreleasedReturnValue
  1000a6384  mov     x23, x0
  1000a6388  adrp    x8, #0x100417000
  1000a638c  nop
  1000a6390  ldr     x1, [x8, #0x4f8]
  1000a6394  adrp    x2, #0x1003bc000
  1000a6398  add     x2, x2, #0x290                           ; @"tarot"
  1000a639c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"tarot"]
  1000a63a0  mov     x29, x29
  1000a63a4  bl      _objc_retainAutoreleasedReturnValue
  1000a63a8  mov     x22, x0
  1000a63ac  mov     x0, x23
  1000a63b0  bl      _objc_release
  1000a63b4  adrp    x8, #0x100416000
  1000a63b8  nop
  1000a63bc  ldr     x1, [x8, #0xca0]
  1000a63c0  adrp    x2, #0x1003c0000
  1000a63c4  add     x2, x2, #0xbf0                           ; @"flip"
  1000a63c8  mov     x0, x22
  1000a63cc  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"tarot"] anySoundContaining:@"flip"]
  1000a63d0  mov     x29, x29
  1000a63d4  bl      _objc_retainAutoreleasedReturnValue
  1000a63d8  mov     x23, x0
  1000a63dc  adrp    x8, #0x100417000
  1000a63e0  nop
  1000a63e4  ldr     x1, [x8, #0x600]
  1000a63e8  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"tarot"] anySoundContaining:@"flip"] play]
  1000a63ec  adrp    x8, #0x10041a000
  1000a63f0  nop
  1000a63f4  ldr     x1, [x8, #0x420]
  1000a63f8  mov     x0, x19
  1000a63fc  bl      _objc_msgSend                            ; [self changeCard]
  1000a6400  mov     x0, x23
  1000a6404  bl      _objc_release
  1000a6408  b       loc_1000a644c
loc_1000a640c:
  1000a640c  adrp    x8, #0x10041d000
  1000a6410  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000a6414  adrp    x8, #0x100417000
  1000a6418  nop
  1000a641c  ldr     x1, [x8, #0xb8]
  1000a6420  mov     w2, #1
  1000a6424  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000a6428  mov     x29, x29
  1000a642c  bl      _objc_retainAutoreleasedReturnValue
  1000a6430  mov     x22, x0
  1000a6434  adrp    x8, #0x100418000
  1000a6438  nop
  1000a643c  ldr     x1, [x8, #0x3e8]
  1000a6440  mov     x0, x19
  1000a6444  mov     x2, x22
  1000a6448  bl      _objc_msgSend                            ; [self flipCard:[NSNumber numberWithBool:1]]
loc_1000a644c:
  1000a644c  mov     x0, x22
  1000a6450  bl      _objc_release
  1000a6454  adrp    x8, #0x10041d000
  1000a6458  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000a645c  adrp    x8, #0x100416000
  1000a6460  nop
  1000a6464  ldr     x1, [x8, #0xb28]
  1000a6468  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000a646c  mov     x29, x29
  1000a6470  bl      _objc_retainAutoreleasedReturnValue
  1000a6474  mov     x22, x0
  1000a6478  adrp    x8, #0x100416000
  1000a647c  nop
  1000a6480  ldr     x1, [x8, #0xc18]
  1000a6484  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000a6488  mov     x29, x29
  1000a648c  bl      _objc_retainAutoreleasedReturnValue
  1000a6490  mov     x23, x0
  1000a6494  adrp    x8, #0x100417000
  1000a6498  nop
  1000a649c  ldr     x1, [x8, #0xb08]
  1000a64a0  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  1000a64a4  mov     x29, x29
  1000a64a8  bl      _objc_retainAutoreleasedReturnValue
  1000a64ac  mov     x24, x0
  1000a64b0  ldr     w8, [x19, x26]                           ; w8 = self->cost
  1000a64b4  neg     w2, w8
  1000a64b8  adrp    x8, #0x100418000
  1000a64bc  nop
  1000a64c0  ldr     x1, [x8, #0x6b8]
  1000a64c4  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateDiamonds:-self->cost]
  1000a64c8  mov     x0, x24
  1000a64cc  bl      _objc_release
  1000a64d0  mov     x0, x23
  1000a64d4  bl      _objc_release
  1000a64d8  mov     x0, x22
  1000a64dc  bl      _objc_release
  1000a64e0  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  1000a64e4  mov     x1, x20
  1000a64e8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000a64ec  mov     x29, x29
  1000a64f0  bl      _objc_retainAutoreleasedReturnValue
  1000a64f4  mov     x20, x0
  1000a64f8  mov     x1, x21
  1000a64fc  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  1000a6500  ldr     w8, [x19, x26]                           ; w8 = self->cost
  1000a6504  sub     w2, w0, w8
  1000a6508  adrp    x8, #0x100417000
  1000a650c  nop
  1000a6510  ldr     x1, [x8, #0x98]
  1000a6514  mov     x0, x20
  1000a6518  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] - self->cost)]
  1000a651c  mov     x0, x20
  1000a6520  ldp     x29, x30, [sp, #0x40]
  1000a6524  ldp     x20, x19, [sp, #0x30]
  1000a6528  ldp     x22, x21, [sp, #0x20]
  1000a652c  ldp     x24, x23, [sp, #0x10]
  1000a6530  ldp     x26, x25, [sp], #0x50
  1000a6534  b       _objc_release
  1000a6538  mov     x19, x0
  1000a653c  b       loc_1000a659c
  1000a6540  b       loc_1000a6590
  1000a6544  mov     x19, x0
  1000a6548  mov     x0, x20
  1000a654c  bl      _objc_release
  1000a6550  b       loc_1000a659c
  1000a6554  b       loc_1000a655c
  1000a6558  b       loc_1000a6590
loc_1000a655c:
  1000a655c  mov     x19, x0
  1000a6560  b       loc_1000a6570
  1000a6564  mov     x19, x0
  1000a6568  mov     x0, x24
  1000a656c  bl      _objc_release
loc_1000a6570:
  1000a6570  mov     x0, x23
  1000a6574  bl      _objc_release
  1000a6578  b       loc_1000a6594
  1000a657c  mov     x19, x0
  1000a6580  mov     x0, x23
  1000a6584  bl      _objc_release
  1000a6588  b       loc_1000a659c
  1000a658c  b       loc_1000a6590
loc_1000a6590:
  1000a6590  mov     x19, x0
loc_1000a6594:
  1000a6594  mov     x0, x22
  1000a6598  bl      _objc_release
loc_1000a659c:
  1000a659c  mov     x0, x19
  1000a65a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotCardViewController changeCard]
; address 0x1000a65a4  size 804  kind objc
; ======================================================================
  1000a65a4  stp     x28, x27, [sp, #-0x60]!
  1000a65a8  stp     x26, x25, [sp, #0x10]
  1000a65ac  stp     x24, x23, [sp, #0x20]
  1000a65b0  stp     x22, x21, [sp, #0x30]
  1000a65b4  stp     x20, x19, [sp, #0x40]
  1000a65b8  stp     x29, x30, [sp, #0x50]
  1000a65bc  add     x29, sp, #0x50
  1000a65c0  sub     sp, sp, #0x20
  1000a65c4  mov     x21, x0
  1000a65c8  adrp    x8, #0x10041d000
  1000a65cc  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000a65d0  adrp    x8, #0x100416000
  1000a65d4  nop
  1000a65d8  ldr     x1, [x8, #0xb58]
  1000a65dc  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000a65e0  mov     x29, x29
  1000a65e4  bl      _objc_retainAutoreleasedReturnValue
  1000a65e8  mov     x20, x0
  1000a65ec  adrp    x8, #0x100416000
  1000a65f0  nop
  1000a65f4  ldr     x1, [x8, #0xd60]
  1000a65f8  adrp    x2, #0x1003c0000
  1000a65fc  add     x2, x2, #0xb10                           ; @"Tarot"
  1000a6600  adrp    x3, #0x1003b9000
  1000a6604  add     x3, x3, #0xa70                           ; @"plist"
  1000a6608  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]
  1000a660c  mov     x29, x29
  1000a6610  bl      _objc_retainAutoreleasedReturnValue
  1000a6614  mov     x19, x0
  1000a6618  mov     x0, x20
  1000a661c  bl      _objc_release
  1000a6620  adrp    x8, #0x10041d000
  1000a6624  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000a6628  adrp    x8, #0x100416000
  1000a662c  nop
  1000a6630  ldr     x1, [x8, #0xac8]
  1000a6634  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000a6638  adrp    x8, #0x100416000
  1000a663c  nop
  1000a6640  ldr     x1, [x8, #0xd68]
  1000a6644  mov     x2, x19
  1000a6648  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]]
  1000a664c  mov     x20, x0
  1000a6650  str     x19, [sp, #0x18]
  1000a6654  adrp    x8, #0x10041d000
  1000a6658  ldr     x22, [x8, #0xf78]                        ; class NSString
  1000a665c  adrp    x8, #0x100418000
  1000a6660  nop
  1000a6664  ldr     x1, [x8, #0x448]
  1000a6668  mov     x0, x21
  1000a666c  bl      _objc_msgSend                            ; [self cardLevel]
  1000a6670  adrp    x8, #0x100416000
  1000a6674  nop
  1000a6678  ldr     x1, [x8, #0xee8]
  1000a667c  str     x0, [sp]
  1000a6680  adrp    x2, #0x1003ba000
  1000a6684  add     x2, x2, #0x450                           ; @"level_%i"
  1000a6688  mov     x0, x22
  1000a668c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", [self cardLevel]]
  1000a6690  mov     x29, x29
  1000a6694  bl      _objc_retainAutoreleasedReturnValue
  1000a6698  mov     x24, x0
  1000a669c  adrp    x8, #0x100417000
  1000a66a0  nop
  1000a66a4  ldr     x23, [x8, #0x40]
  1000a66a8  mov     x0, x20
  1000a66ac  str     x20, [sp, #0x10]
  1000a66b0  mov     x1, x23
  1000a66b4  mov     x2, x24
  1000a66b8  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]]
  1000a66bc  mov     x29, x29
  1000a66c0  bl      _objc_retainAutoreleasedReturnValue
  1000a66c4  mov     x22, x0
  1000a66c8  mov     x0, x24
  1000a66cc  bl      _objc_release
  1000a66d0  bl      _rand                                    ; rand()
  1000a66d4  mov     x25, x0
  1000a66d8  adrp    x8, #0x100416000
  1000a66dc  nop
  1000a66e0  ldr     x24, [x8, #0xe30]
  1000a66e4  mov     x0, x22
  1000a66e8  mov     x1, x24
  1000a66ec  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] count]
  1000a66f0  sxtw    x8, w25
  1000a66f4  udiv    x9, x8, x0                               ; t1 = (rand() / [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] count])
  1000a66f8  msub    x2, x9, x0, x8                           ; t2 = (rand() - t1 * [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] count])
  1000a66fc  adrp    x8, #0x100416000
  1000a6700  nop
  1000a6704  ldr     x25, [x8, #0xc30]
  1000a6708  mov     x0, x22
  1000a670c  mov     x1, x25
  1000a6710  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] objectAtIndex:t2]
  1000a6714  mov     x29, x29
  1000a6718  bl      _objc_retainAutoreleasedReturnValue
  1000a671c  adrp    x8, #0x100420000
  1000a6720  ldrsw   x20, [x8, #0xd0]                         ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a6724  ldr     x8, [x21, x20]                           ; x8 = self->cardDictionary
  1000a6728  str     x0, [x21, x20]                           ; self->cardDictionary = [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] objectAtIndex:t2]
  1000a672c  mov     x0, x8
  1000a6730  bl      _objc_release
  1000a6734  ldr     x0, [x21, x20]                           ; x0 = self->cardDictionary
  1000a6738  adrp    x2, #0x1003bc000
  1000a673c  add     x2, x2, #0x950                           ; @"title"
  1000a6740  mov     x1, x23
  1000a6744  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"title"]
  1000a6748  mov     x29, x29
  1000a674c  bl      _objc_retainAutoreleasedReturnValue
  1000a6750  mov     x19, x0
  1000a6754  adrp    x8, #0x100420000
  1000a6758  ldrsw   x27, [x8, #0xd4]                         ; ivar offset ADTarotCardViewController.currentTitle (+0x150)
  1000a675c  ldr     x2, [x21, x27]                           ; x2 = self->currentTitle
  1000a6760  adrp    x8, #0x100416000
  1000a6764  nop
  1000a6768  ldr     x26, [x8, #0xf58]
  1000a676c  mov     x1, x26
  1000a6770  bl      _objc_msgSend                            ; [[self->cardDictionary objectForKey:@"title"] isEqualToString:self->currentTitle]
  1000a6774  mov     x28, x0
  1000a6778  mov     x0, x19
  1000a677c  bl      _objc_release
  1000a6780  cbz     w28, loc_1000a6814                       ; if ([[self->cardDictionary objectForKey:@"title"] isEqualToString:self->currentTitle] == 0)
  1000a6784  b       loc_1000a67a0
loc_1000a6788:
  1000a6788  mov     x29, x29
  1000a678c  bl      _objc_retainAutoreleasedReturnValue
  1000a6790  ldr     x8, [x21, x20]                           ; x8 = self->cardDictionary
  1000a6794  str     x0, [x21, x20]                           ; self->cardDictionary = [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] objectAtIndex:t4]
  1000a6798  mov     x0, x8
  1000a679c  bl      _objc_release
loc_1000a67a0:
  1000a67a0  ldr     x0, [x21, x20]                           ; x0 = self->cardDictionary
  1000a67a4  mov     x1, x23
  1000a67a8  adrp    x2, #0x1003bc000
  1000a67ac  add     x2, x2, #0x950                           ; @"title"
  1000a67b0  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"title"]
  1000a67b4  mov     x29, x29
  1000a67b8  bl      _objc_retainAutoreleasedReturnValue
  1000a67bc  mov     x28, x0
  1000a67c0  ldr     x2, [x21, x27]                           ; x2 = self->currentTitle
  1000a67c4  mov     x1, x26
  1000a67c8  bl      _objc_msgSend                            ; [[self->cardDictionary objectForKey:@"title"] isEqualToString:self->currentTitle]
  1000a67cc  mov     x19, x0
  1000a67d0  mov     x0, x28
  1000a67d4  bl      _objc_release
  1000a67d8  cbz     w19, loc_1000a6814                       ; if ([[self->cardDictionary objectForKey:@"title"] isEqualToString:self->currentTitle] == 0)
  1000a67dc  bl      _rand                                    ; rand()
  1000a67e0  mov     x28, x0
  1000a67e4  mov     x0, x22
  1000a67e8  mov     x1, x24
  1000a67ec  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] count]
  1000a67f0  sxtw    x8, w28
  1000a67f4  udiv    x9, x8, x0                               ; t3 = (rand() / [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] count])
  1000a67f8  msub    x2, x9, x0, x8                           ; t4 = (rand() - t3 * [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] count])
  1000a67fc  mov     x0, x22
  1000a6800  mov     x1, x25
  1000a6804  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tarot" withExtension:@"plist"]] objectForKey:[NSString stringWithFormat:@"level_%i", [self cardLevel]]] objectAtIndex:t4]
  1000a6808  b       loc_1000a6788
loc_1000a680c:
  1000a680c  mov     x21, x0
  1000a6810  b       loc_1000a6868
loc_1000a6814:
  1000a6814  adrp    x8, #0x10041a000
  1000a6818  nop
  1000a681c  ldr     x1, [x8, #0x3a8]
  1000a6820  mov     x0, x21
  1000a6824  bl      _objc_msgSend                            ; [self refreshCard]
  1000a6828  mov     x0, x22
  1000a682c  bl      _objc_release
  1000a6830  ldr     x0, [sp, #0x10]
  1000a6834  bl      _objc_release
  1000a6838  ldr     x0, [sp, #0x18]
  1000a683c  sub     sp, x29, #0x50
  1000a6840  ldp     x29, x30, [sp, #0x50]
  1000a6844  ldp     x20, x19, [sp, #0x40]
  1000a6848  ldp     x22, x21, [sp, #0x30]
  1000a684c  ldp     x24, x23, [sp, #0x20]
  1000a6850  ldp     x26, x25, [sp, #0x10]
  1000a6854  ldp     x28, x27, [sp], #0x60
  1000a6858  b       _objc_release
  1000a685c  mov     x21, x0
  1000a6860  mov     x0, x28
loc_1000a6864:
  1000a6864  bl      _objc_release
loc_1000a6868:
  1000a6868  mov     x0, x22
loc_1000a686c:
  1000a686c  bl      _objc_release
loc_1000a6870:
  1000a6870  ldr     x0, [sp, #0x10]
  1000a6874  bl      _objc_release
loc_1000a6878:
  1000a6878  ldr     x0, [sp, #0x18]
loc_1000a687c:
  1000a687c  bl      _objc_release
  1000a6880  mov     x0, x21
  1000a6884  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a6888  b       loc_1000a680c
  1000a688c  str     x19, [sp, #0x18]
  1000a6890  mov     x21, x0
  1000a6894  b       loc_1000a6878
  1000a6898  str     x20, [sp, #0x10]
  1000a689c  mov     x21, x0
  1000a68a0  b       loc_1000a6870
  1000a68a4  mov     x21, x0
  1000a68a8  mov     x0, x20
  1000a68ac  b       loc_1000a687c
  1000a68b0  mov     x21, x0
  1000a68b4  mov     x0, x24
  1000a68b8  b       loc_1000a686c
  1000a68bc  mov     x21, x0
  1000a68c0  mov     x0, x19
  1000a68c4  b       loc_1000a6864

; ======================================================================
; -[ADTarotCardViewController modifierName]
; address 0x1000a68c8  size 36  kind objc
; ======================================================================
  1000a68c8  adrp    x8, #0x100420000
  1000a68cc  ldrsw   x8, [x8, #0xd0]                          ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a68d0  ldr     x0, [x0, x8]                             ; x0 = self->cardDictionary
  1000a68d4  adrp    x8, #0x100417000
  1000a68d8  nop
  1000a68dc  ldr     x1, [x8, #0x40]
  1000a68e0  adrp    x2, #0x1003c0000
  1000a68e4  add     x2, x2, #0xb30                           ; @"selector"
  1000a68e8  b       _objc_msgSend                            ; [self->cardDictionary objectForKey:@"selector"]

; ======================================================================
; -[ADTarotCardViewController isGood]
; address 0x1000a68ec  size 132  kind objc
; ======================================================================
  1000a68ec  stp     x20, x19, [sp, #-0x20]!
  1000a68f0  stp     x29, x30, [sp, #0x10]
  1000a68f4  add     x29, sp, #0x10
  1000a68f8  adrp    x8, #0x100420000
  1000a68fc  ldrsw   x8, [x8, #0xd0]                          ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a6900  ldr     x0, [x0, x8]                             ; x0 = self->cardDictionary
  1000a6904  adrp    x8, #0x100417000
  1000a6908  nop
  1000a690c  ldr     x1, [x8, #0x40]
  1000a6910  adrp    x2, #0x1003c0000
  1000a6914  add     x2, x2, #0xb70                           ; @"goodbad"
  1000a6918  bl      _objc_msgSend                            ; [self->cardDictionary objectForKey:@"goodbad"]
  1000a691c  mov     x29, x29
  1000a6920  bl      _objc_retainAutoreleasedReturnValue
  1000a6924  mov     x19, x0
  1000a6928  adrp    x8, #0x100416000
  1000a692c  nop
  1000a6930  ldr     x1, [x8, #0xf58]
  1000a6934  adrp    x2, #0x1003c0000
  1000a6938  add     x2, x2, #0xc30                           ; @"good"
  1000a693c  bl      _objc_msgSend                            ; [[self->cardDictionary objectForKey:@"goodbad"] isEqualToString:@"good"]
  1000a6940  mov     x20, x0
  1000a6944  mov     x0, x19
  1000a6948  bl      _objc_release
  1000a694c  mov     x0, x20
  1000a6950  ldp     x29, x30, [sp, #0x10]
  1000a6954  ldp     x20, x19, [sp], #0x20
  1000a6958  ret
  1000a695c  mov     x20, x0
  1000a6960  mov     x0, x19
  1000a6964  bl      _objc_release
  1000a6968  mov     x0, x20
  1000a696c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotCardViewController cardDescription]
; address 0x1000a6970  size 16  kind objc
; ======================================================================
  1000a6970  adrp    x8, #0x100420000
  1000a6974  ldrsw   x8, [x8, #0xd8]                          ; ivar offset ADTarotCardViewController._cardDescription (+0x160)
  1000a6978  ldr     x0, [x0, x8]                             ; x0 = self->_cardDescription
  1000a697c  ret

; ======================================================================
; -[ADTarotCardViewController setCardDescription:]
; address 0x1000a6980  size 56  kind objc
; ======================================================================
  1000a6980  stp     x20, x19, [sp, #-0x20]!
  1000a6984  stp     x29, x30, [sp, #0x10]
  1000a6988  add     x29, sp, #0x10
  1000a698c  mov     x19, x0
  1000a6990  adrp    x8, #0x100420000
  1000a6994  ldrsw   x20, [x8, #0xd8]                         ; ivar offset ADTarotCardViewController._cardDescription (+0x160)
  1000a6998  mov     x0, x2
  1000a699c  bl      _objc_retain
  1000a69a0  ldr     x8, [x19, x20]                           ; x8 = self->_cardDescription
  1000a69a4  str     x0, [x19, x20]                           ; self->_cardDescription = arg1
  1000a69a8  mov     x0, x8
  1000a69ac  ldp     x29, x30, [sp, #0x10]
  1000a69b0  ldp     x20, x19, [sp], #0x20
  1000a69b4  b       _objc_release

; ======================================================================
; -[ADTarotCardViewController cardTitle]
; address 0x1000a69b8  size 16  kind objc
; ======================================================================
  1000a69b8  adrp    x8, #0x100420000
  1000a69bc  ldrsw   x8, [x8, #0xdc]                          ; ivar offset ADTarotCardViewController._cardTitle (+0x168)
  1000a69c0  ldr     x0, [x0, x8]                             ; x0 = self->_cardTitle
  1000a69c4  ret

; ======================================================================
; -[ADTarotCardViewController setCardTitle:]
; address 0x1000a69c8  size 56  kind objc
; ======================================================================
  1000a69c8  stp     x20, x19, [sp, #-0x20]!
  1000a69cc  stp     x29, x30, [sp, #0x10]
  1000a69d0  add     x29, sp, #0x10
  1000a69d4  mov     x19, x0
  1000a69d8  adrp    x8, #0x100420000
  1000a69dc  ldrsw   x20, [x8, #0xdc]                         ; ivar offset ADTarotCardViewController._cardTitle (+0x168)
  1000a69e0  mov     x0, x2
  1000a69e4  bl      _objc_retain
  1000a69e8  ldr     x8, [x19, x20]                           ; x8 = self->_cardTitle
  1000a69ec  str     x0, [x19, x20]                           ; self->_cardTitle = arg1
  1000a69f0  mov     x0, x8
  1000a69f4  ldp     x29, x30, [sp, #0x10]
  1000a69f8  ldp     x20, x19, [sp], #0x20
  1000a69fc  b       _objc_release

; ======================================================================
; -[ADTarotCardViewController cardLevel]
; address 0x1000a6a00  size 16  kind objc
; ======================================================================
  1000a6a00  adrp    x8, #0x100420000
  1000a6a04  ldrsw   x8, [x8, #0xe0]                          ; ivar offset ADTarotCardViewController._cardLevel (+0x15c)
  1000a6a08  ldr     w0, [x0, x8]                             ; w0 = self->_cardLevel
  1000a6a0c  ret

; ======================================================================
; -[ADTarotCardViewController setCardLevel:]
; address 0x1000a6a10  size 16  kind objc
; ======================================================================
  1000a6a10  adrp    x8, #0x100420000
  1000a6a14  ldrsw   x8, [x8, #0xe0]                          ; ivar offset ADTarotCardViewController._cardLevel (+0x15c)
  1000a6a18  str     w2, [x0, x8]                             ; self->_cardLevel = arg1
  1000a6a1c  ret

; ======================================================================
; -[ADTarotCardViewController tarotViewController]
; address 0x1000a6a20  size 32  kind objc
; ======================================================================
  1000a6a20  stp     x29, x30, [sp, #-0x10]!
  1000a6a24  mov     x29, sp
  1000a6a28  adrp    x8, #0x100420000
  1000a6a2c  ldrsw   x8, [x8, #0xe4]                          ; ivar offset ADTarotCardViewController._tarotViewController (+0x170)
  1000a6a30  add     x0, x0, x8
  1000a6a34  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000a6a38  ldp     x29, x30, [sp], #0x10
  1000a6a3c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADTarotCardViewController setTarotViewController:]
; address 0x1000a6a40  size 20  kind objc
; ======================================================================
  1000a6a40  adrp    x8, #0x100420000
  1000a6a44  ldrsw   x8, [x8, #0xe4]                          ; ivar offset ADTarotCardViewController._tarotViewController (+0x170)
  1000a6a48  add     x0, x0, x8
  1000a6a4c  mov     x1, x2
  1000a6a50  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADTarotCardViewController changeCardButton]
; address 0x1000a6a54  size 16  kind objc
; ======================================================================
  1000a6a54  adrp    x8, #0x100420000
  1000a6a58  ldrsw   x8, [x8, #0xe8]                          ; ivar offset ADTarotCardViewController._changeCardButton (+0x178)
  1000a6a5c  ldr     x0, [x0, x8]                             ; x0 = self->_changeCardButton
  1000a6a60  ret

; ======================================================================
; -[ADTarotCardViewController setChangeCardButton:]
; address 0x1000a6a64  size 56  kind objc
; ======================================================================
  1000a6a64  stp     x20, x19, [sp, #-0x20]!
  1000a6a68  stp     x29, x30, [sp, #0x10]
  1000a6a6c  add     x29, sp, #0x10
  1000a6a70  mov     x19, x0
  1000a6a74  adrp    x8, #0x100420000
  1000a6a78  ldrsw   x20, [x8, #0xe8]                         ; ivar offset ADTarotCardViewController._changeCardButton (+0x178)
  1000a6a7c  mov     x0, x2
  1000a6a80  bl      _objc_retain
  1000a6a84  ldr     x8, [x19, x20]                           ; x8 = self->_changeCardButton
  1000a6a88  str     x0, [x19, x20]                           ; self->_changeCardButton = arg1
  1000a6a8c  mov     x0, x8
  1000a6a90  ldp     x29, x30, [sp, #0x10]
  1000a6a94  ldp     x20, x19, [sp], #0x20
  1000a6a98  b       _objc_release

; ======================================================================
; -[ADTarotCardViewController backgroundImage]
; address 0x1000a6a9c  size 16  kind objc
; ======================================================================
  1000a6a9c  adrp    x8, #0x100420000
  1000a6aa0  ldrsw   x8, [x8, #0xec]                          ; ivar offset ADTarotCardViewController._backgroundImage (+0x180)
  1000a6aa4  ldr     x0, [x0, x8]                             ; x0 = self->_backgroundImage
  1000a6aa8  ret

; ======================================================================
; -[ADTarotCardViewController setBackgroundImage:]
; address 0x1000a6aac  size 56  kind objc
; ======================================================================
  1000a6aac  stp     x20, x19, [sp, #-0x20]!
  1000a6ab0  stp     x29, x30, [sp, #0x10]
  1000a6ab4  add     x29, sp, #0x10
  1000a6ab8  mov     x19, x0
  1000a6abc  adrp    x8, #0x100420000
  1000a6ac0  ldrsw   x20, [x8, #0xec]                         ; ivar offset ADTarotCardViewController._backgroundImage (+0x180)
  1000a6ac4  mov     x0, x2
  1000a6ac8  bl      _objc_retain
  1000a6acc  ldr     x8, [x19, x20]                           ; x8 = self->_backgroundImage
  1000a6ad0  str     x0, [x19, x20]                           ; self->_backgroundImage = arg1
  1000a6ad4  mov     x0, x8
  1000a6ad8  ldp     x29, x30, [sp, #0x10]
  1000a6adc  ldp     x20, x19, [sp], #0x20
  1000a6ae0  b       _objc_release

; ======================================================================
; -[ADTarotCardViewController accessibleCard]
; address 0x1000a6ae4  size 16  kind objc
; ======================================================================
  1000a6ae4  adrp    x8, #0x100420000
  1000a6ae8  ldrsw   x8, [x8, #0xf0]                          ; ivar offset ADTarotCardViewController._accessibleCard (+0x188)
  1000a6aec  ldr     x0, [x0, x8]                             ; x0 = self->_accessibleCard
  1000a6af0  ret

; ======================================================================
; -[ADTarotCardViewController setAccessibleCard:]
; address 0x1000a6af4  size 56  kind objc
; ======================================================================
  1000a6af4  stp     x20, x19, [sp, #-0x20]!
  1000a6af8  stp     x29, x30, [sp, #0x10]
  1000a6afc  add     x29, sp, #0x10
  1000a6b00  mov     x19, x0
  1000a6b04  adrp    x8, #0x100420000
  1000a6b08  ldrsw   x20, [x8, #0xf0]                         ; ivar offset ADTarotCardViewController._accessibleCard (+0x188)
  1000a6b0c  mov     x0, x2
  1000a6b10  bl      _objc_retain
  1000a6b14  ldr     x8, [x19, x20]                           ; x8 = self->_accessibleCard
  1000a6b18  str     x0, [x19, x20]                           ; self->_accessibleCard = arg1
  1000a6b1c  mov     x0, x8
  1000a6b20  ldp     x29, x30, [sp, #0x10]
  1000a6b24  ldp     x20, x19, [sp], #0x20
  1000a6b28  b       _objc_release

; ======================================================================
; -[ADTarotCardViewController cardBack]
; address 0x1000a6b2c  size 16  kind objc
; ======================================================================
  1000a6b2c  adrp    x8, #0x100420000
  1000a6b30  ldrsw   x8, [x8, #0xf4]                          ; ivar offset ADTarotCardViewController._cardBack (+0x190)
  1000a6b34  ldr     x0, [x0, x8]                             ; x0 = self->_cardBack
  1000a6b38  ret

; ======================================================================
; -[ADTarotCardViewController setCardBack:]
; address 0x1000a6b3c  size 56  kind objc
; ======================================================================
  1000a6b3c  stp     x20, x19, [sp, #-0x20]!
  1000a6b40  stp     x29, x30, [sp, #0x10]
  1000a6b44  add     x29, sp, #0x10
  1000a6b48  mov     x19, x0
  1000a6b4c  adrp    x8, #0x100420000
  1000a6b50  ldrsw   x20, [x8, #0xf4]                         ; ivar offset ADTarotCardViewController._cardBack (+0x190)
  1000a6b54  mov     x0, x2
  1000a6b58  bl      _objc_retain
  1000a6b5c  ldr     x8, [x19, x20]                           ; x8 = self->_cardBack
  1000a6b60  str     x0, [x19, x20]                           ; self->_cardBack = arg1
  1000a6b64  mov     x0, x8
  1000a6b68  ldp     x29, x30, [sp, #0x10]
  1000a6b6c  ldp     x20, x19, [sp], #0x20
  1000a6b70  b       _objc_release

; ======================================================================
; -[ADTarotCardViewController cardFront]
; address 0x1000a6b74  size 16  kind objc
; ======================================================================
  1000a6b74  adrp    x8, #0x100420000
  1000a6b78  ldrsw   x8, [x8, #0xf8]                          ; ivar offset ADTarotCardViewController._cardFront (+0x198)
  1000a6b7c  ldr     x0, [x0, x8]                             ; x0 = self->_cardFront
  1000a6b80  ret

; ======================================================================
; -[ADTarotCardViewController setCardFront:]
; address 0x1000a6b84  size 56  kind objc
; ======================================================================
  1000a6b84  stp     x20, x19, [sp, #-0x20]!
  1000a6b88  stp     x29, x30, [sp, #0x10]
  1000a6b8c  add     x29, sp, #0x10
  1000a6b90  mov     x19, x0
  1000a6b94  adrp    x8, #0x100420000
  1000a6b98  ldrsw   x20, [x8, #0xf8]                         ; ivar offset ADTarotCardViewController._cardFront (+0x198)
  1000a6b9c  mov     x0, x2
  1000a6ba0  bl      _objc_retain
  1000a6ba4  ldr     x8, [x19, x20]                           ; x8 = self->_cardFront
  1000a6ba8  str     x0, [x19, x20]                           ; self->_cardFront = arg1
  1000a6bac  mov     x0, x8
  1000a6bb0  ldp     x29, x30, [sp, #0x10]
  1000a6bb4  ldp     x20, x19, [sp], #0x20
  1000a6bb8  b       _objc_release

; ======================================================================
; -[ADTarotCardViewController flipped]
; address 0x1000a6bbc  size 20  kind objc
; ======================================================================
  1000a6bbc  adrp    x8, #0x100420000
  1000a6bc0  ldrsw   x8, [x8, #0xfc]                          ; ivar offset ADTarotCardViewController._flipped (+0x158)
  1000a6bc4  ldrb    w8, [x0, x8]                             ; w8 = self->_flipped
  1000a6bc8  and     w0, w8, #1
  1000a6bcc  ret

; ======================================================================
; -[ADTarotCardViewController setFlipped:]
; address 0x1000a6bd0  size 16  kind objc
; ======================================================================
  1000a6bd0  adrp    x8, #0x100420000
  1000a6bd4  ldrsw   x8, [x8, #0xfc]                          ; ivar offset ADTarotCardViewController._flipped (+0x158)
  1000a6bd8  strb    w2, [x0, x8]                             ; self->_flipped = arg1
  1000a6bdc  ret

; ======================================================================
; -[ADTarotCardViewController .cxx_destruct]
; address 0x1000a6be0  size 220  kind objc
; ======================================================================
  1000a6be0  stp     x20, x19, [sp, #-0x20]!
  1000a6be4  stp     x29, x30, [sp, #0x10]
  1000a6be8  add     x29, sp, #0x10
  1000a6bec  mov     x19, x0
  1000a6bf0  adrp    x8, #0x100420000
  1000a6bf4  ldrsw   x8, [x8, #0xf8]                          ; ivar offset ADTarotCardViewController._cardFront (+0x198)
  1000a6bf8  add     x0, x19, x8
  1000a6bfc  mov     x1, #0
  1000a6c00  bl      _objc_storeStrong
  1000a6c04  adrp    x8, #0x100420000
  1000a6c08  ldrsw   x8, [x8, #0xf4]                          ; ivar offset ADTarotCardViewController._cardBack (+0x190)
  1000a6c0c  add     x0, x19, x8
  1000a6c10  mov     x1, #0
  1000a6c14  bl      _objc_storeStrong
  1000a6c18  adrp    x8, #0x100420000
  1000a6c1c  ldrsw   x8, [x8, #0xf0]                          ; ivar offset ADTarotCardViewController._accessibleCard (+0x188)
  1000a6c20  add     x0, x19, x8
  1000a6c24  mov     x1, #0
  1000a6c28  bl      _objc_storeStrong
  1000a6c2c  adrp    x8, #0x100420000
  1000a6c30  ldrsw   x8, [x8, #0xec]                          ; ivar offset ADTarotCardViewController._backgroundImage (+0x180)
  1000a6c34  add     x0, x19, x8
  1000a6c38  mov     x1, #0
  1000a6c3c  bl      _objc_storeStrong
  1000a6c40  adrp    x8, #0x100420000
  1000a6c44  ldrsw   x8, [x8, #0xe8]                          ; ivar offset ADTarotCardViewController._changeCardButton (+0x178)
  1000a6c48  add     x0, x19, x8
  1000a6c4c  mov     x1, #0
  1000a6c50  bl      _objc_storeStrong
  1000a6c54  adrp    x8, #0x100420000
  1000a6c58  ldrsw   x8, [x8, #0xe4]                          ; ivar offset ADTarotCardViewController._tarotViewController (+0x170)
  1000a6c5c  add     x0, x19, x8
  1000a6c60  bl      _objc_destroyWeak
  1000a6c64  adrp    x8, #0x100420000
  1000a6c68  ldrsw   x8, [x8, #0xdc]                          ; ivar offset ADTarotCardViewController._cardTitle (+0x168)
  1000a6c6c  add     x0, x19, x8
  1000a6c70  mov     x1, #0
  1000a6c74  bl      _objc_storeStrong
  1000a6c78  adrp    x8, #0x100420000
  1000a6c7c  ldrsw   x8, [x8, #0xd8]                          ; ivar offset ADTarotCardViewController._cardDescription (+0x160)
  1000a6c80  add     x0, x19, x8
  1000a6c84  mov     x1, #0
  1000a6c88  bl      _objc_storeStrong
  1000a6c8c  adrp    x8, #0x100420000
  1000a6c90  ldrsw   x8, [x8, #0xd4]                          ; ivar offset ADTarotCardViewController.currentTitle (+0x150)
  1000a6c94  add     x0, x19, x8
  1000a6c98  mov     x1, #0
  1000a6c9c  bl      _objc_storeStrong
  1000a6ca0  mov     x1, #0
  1000a6ca4  adrp    x8, #0x100420000
  1000a6ca8  ldrsw   x8, [x8, #0xd0]                          ; ivar offset ADTarotCardViewController.cardDictionary (+0x140)
  1000a6cac  add     x0, x19, x8
  1000a6cb0  ldp     x29, x30, [sp, #0x10]
  1000a6cb4  ldp     x20, x19, [sp], #0x20
  1000a6cb8  b       _objc_storeStrong
