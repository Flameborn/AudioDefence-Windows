// unit UIButton+ADMainButton — 4 functions
//   0x1000cbe80     740  -[UIButton(ADMainButton) setupAsMain]
//   0x1000cc164     372  -[UIButton(ADMainButton) setupAsBlocked]
//   0x1000cc2d8     436  -[UIButton(ADMainButton) setupAsTarotCardInfo]
//   0x1000cc48c     276  -[UIButton(ADMainButton) setupAsAccessibleTarotCardInfo]

; ======================================================================
; -[UIButton(ADMainButton) setupAsMain]
; address 0x1000cbe80  size 740  kind objc
; ======================================================================
  1000cbe80  stp     x22, x21, [sp, #-0x30]!
  1000cbe84  stp     x20, x19, [sp, #0x10]
  1000cbe88  stp     x29, x30, [sp, #0x20]
  1000cbe8c  add     x29, sp, #0x20
  1000cbe90  sub     sp, sp, #0x10
  1000cbe94  mov     x20, x0
  1000cbe98  adrp    x8, #0x10041d000
  1000cbe9c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000cbea0  adrp    x8, #0x100416000
  1000cbea4  nop
  1000cbea8  ldr     x1, [x8, #0xc00]
  1000cbeac  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000cbeb0  mov     x29, x29
  1000cbeb4  bl      _objc_retainAutoreleasedReturnValue
  1000cbeb8  mov     x22, x0
  1000cbebc  adrp    x8, #0x100416000
  1000cbec0  nop
  1000cbec4  ldr     x1, [x8, #0xd18]
  1000cbec8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000cbecc  mov     x19, x0
  1000cbed0  mov     x0, x22
  1000cbed4  bl      _objc_release
  1000cbed8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000cbedc  mov     x8, x0
  1000cbee0  adrp    x9, #0x10041d000
  1000cbee4  ldr     x0, [x9, #0xfa0]                         ; class UIColor
  1000cbee8  tbz     w8, #0, loc_1000cbffc                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  1000cbeec  adrp    x8, #0x100417000
  1000cbef0  nop
  1000cbef4  ldr     x1, [x8, #0x328]
  1000cbef8  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000cbefc  mov     x29, x29
  1000cbf00  bl      _objc_retainAutoreleasedReturnValue
  1000cbf04  mov     x19, x0
  1000cbf08  adrp    x8, #0x100418000
  1000cbf0c  nop
  1000cbf10  ldr     x1, [x8, #0x5f0]
  1000cbf14  mov     x3, #0
  1000cbf18  mov     x0, x20
  1000cbf1c  mov     x2, x19
  1000cbf20  bl      _objc_msgSend                            ; [self setTitleColor:[UIColor whiteColor] forState:0]
  1000cbf24  mov     x0, x19
  1000cbf28  bl      _objc_release
  1000cbf2c  adrp    x8, #0x100416000
  1000cbf30  nop
  1000cbf34  ldr     x21, [x8, #0xb80]
  1000cbf38  mov     x0, x20
  1000cbf3c  mov     x1, x21
  1000cbf40  bl      _objc_msgSend                            ; [self titleLabel]
  1000cbf44  mov     x29, x29
  1000cbf48  bl      _objc_retainAutoreleasedReturnValue
  1000cbf4c  mov     x19, x0
  1000cbf50  adrp    x8, #0x10041d000
  1000cbf54  ldr     x22, [x8, #0xf08]                        ; class UIFont
  1000cbf58  mov     x0, x20
  1000cbf5c  mov     x1, x21
  1000cbf60  bl      _objc_msgSend                            ; [self titleLabel]
  1000cbf64  mov     x29, x29
  1000cbf68  bl      _objc_retainAutoreleasedReturnValue
  1000cbf6c  mov     x20, x0
  1000cbf70  adrp    x8, #0x100416000
  1000cbf74  nop
  1000cbf78  ldr     x1, [x8, #0xcc8]
  1000cbf7c  bl      _objc_msgSend                            ; [[self titleLabel] font]
  1000cbf80  mov     x29, x29
  1000cbf84  bl      _objc_retainAutoreleasedReturnValue
  1000cbf88  mov     x21, x0
  1000cbf8c  adrp    x8, #0x100419000
  1000cbf90  nop
  1000cbf94  ldr     x1, [x8, #0x810]
  1000cbf98  bl      _objc_msgSend                            ; [[[self titleLabel] font] pointSize]
  1000cbf9c  adrp    x8, #0x100416000
  1000cbfa0  nop
  1000cbfa4  ldr     x1, [x8, #0xd20]
  1000cbfa8  adrp    x2, #0x1003bc000
  1000cbfac  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  1000cbfb0  mov     x0, x22
  1000cbfb4  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:[[[self titleLabel] font] pointSize]]
  1000cbfb8  mov     x29, x29
  1000cbfbc  bl      _objc_retainAutoreleasedReturnValue
  1000cbfc0  mov     x22, x0
  1000cbfc4  adrp    x8, #0x100416000
  1000cbfc8  nop
  1000cbfcc  ldr     x1, [x8, #0xd28]
  1000cbfd0  mov     x0, x19
  1000cbfd4  mov     x2, x22
  1000cbfd8  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:[[[self titleLabel] font] pointSize]]]
  1000cbfdc  mov     x0, x22
  1000cbfe0  bl      _objc_release
  1000cbfe4  mov     x0, x21
  1000cbfe8  bl      _objc_release
  1000cbfec  mov     x0, x20
  1000cbff0  bl      _objc_release
  1000cbff4  mov     x0, x19
  1000cbff8  b       loc_1000cc0d0
loc_1000cbffc:
  1000cbffc  adrp    x8, #0x100418000
  1000cc000  nop
  1000cc004  ldr     x1, [x8, #0x5e8]
  1000cc008  nop
  1000cc00c  ldr     d0, #0x100181c90                         ; d0 = 255.0
  1000cc010  fmov    d3, #1.00000000
  1000cc014  mov     v1.16b, v0.16b
  1000cc018  mov     v2.16b, v0.16b
  1000cc01c  bl      _objc_msgSend                            ; [UIColor colorWithRed:255 green:255 blue:255 alpha:1]
  1000cc020  mov     x29, x29
  1000cc024  bl      _objc_retainAutoreleasedReturnValue
  1000cc028  mov     x22, x0
  1000cc02c  adrp    x8, #0x100418000
  1000cc030  nop
  1000cc034  ldr     x1, [x8, #0x5f0]
  1000cc038  mov     x3, #0
  1000cc03c  mov     x0, x20
  1000cc040  mov     x2, x22
  1000cc044  bl      _objc_msgSend                            ; [self setTitleColor:[UIColor colorWithRed:255 green:255 blue:255 alpha:1] forState:0]
  1000cc048  mov     x0, x22
  1000cc04c  bl      _objc_release
  1000cc050  adrp    x8, #0x100416000
  1000cc054  nop
  1000cc058  ldr     x1, [x8, #0xb80]
  1000cc05c  mov     x0, x20
  1000cc060  bl      _objc_msgSend                            ; [self titleLabel]
  1000cc064  mov     x29, x29
  1000cc068  bl      _objc_retainAutoreleasedReturnValue
  1000cc06c  mov     x20, x0
  1000cc070  adrp    x8, #0x10041d000
  1000cc074  ldr     x0, [x8, #0xf08]                         ; class UIFont
  1000cc078  cmp     w19, #0
  1000cc07c  fmov    d0, #30.00000000
  1000cc080  fmov    d1, #20.00000000
  1000cc084  fcsel   d0, d1, d0, ne
  1000cc088  adrp    x8, #0x100416000
  1000cc08c  nop
  1000cc090  ldr     x1, [x8, #0xd20]
  1000cc094  adrp    x2, #0x1003b9000
  1000cc098  add     x2, x2, #0xf10                           ; @"Monstro"
  1000cc09c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 30)]
  1000cc0a0  mov     x29, x29
  1000cc0a4  bl      _objc_retainAutoreleasedReturnValue
  1000cc0a8  mov     x19, x0
  1000cc0ac  adrp    x8, #0x100416000
  1000cc0b0  nop
  1000cc0b4  ldr     x1, [x8, #0xd28]
  1000cc0b8  mov     x0, x20
  1000cc0bc  mov     x2, x19
  1000cc0c0  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 30)]]
  1000cc0c4  mov     x0, x19
  1000cc0c8  bl      _objc_release
  1000cc0cc  mov     x0, x20
loc_1000cc0d0:
  1000cc0d0  sub     sp, x29, #0x20
  1000cc0d4  ldp     x29, x30, [sp, #0x20]
  1000cc0d8  ldp     x20, x19, [sp, #0x10]
  1000cc0dc  ldp     x22, x21, [sp], #0x30
  1000cc0e0  b       _objc_release
  1000cc0e4  b       loc_1000cc134
  1000cc0e8  str     x21, [sp, #8]
  1000cc0ec  mov     x21, x0
  1000cc0f0  b       loc_1000cc11c
  1000cc0f4  mov     x21, x0
  1000cc0f8  b       loc_1000cc12c
  1000cc0fc  mov     x21, x0
  1000cc100  b       loc_1000cc12c
  1000cc104  mov     x21, x0
  1000cc108  b       loc_1000cc124
  1000cc10c  str     x21, [sp, #8]
  1000cc110  mov     x21, x0
  1000cc114  mov     x0, x22
  1000cc118  bl      _objc_release
loc_1000cc11c:
  1000cc11c  ldr     x0, [sp, #8]
  1000cc120  bl      _objc_release
loc_1000cc124:
  1000cc124  mov     x0, x20
  1000cc128  bl      _objc_release
loc_1000cc12c:
  1000cc12c  mov     x0, x19
  1000cc130  b       loc_1000cc158
loc_1000cc134:
  1000cc134  mov     x21, x0
  1000cc138  mov     x0, x22
  1000cc13c  b       loc_1000cc158
  1000cc140  mov     x21, x0
  1000cc144  b       loc_1000cc154
  1000cc148  mov     x21, x0
  1000cc14c  mov     x0, x19
  1000cc150  bl      _objc_release
loc_1000cc154:
  1000cc154  mov     x0, x20
loc_1000cc158:
  1000cc158  bl      _objc_release
  1000cc15c  mov     x0, x21
  1000cc160  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIButton(ADMainButton) setupAsBlocked]
; address 0x1000cc164  size 372  kind objc
; ======================================================================
  1000cc164  stp     x22, x21, [sp, #-0x30]!
  1000cc168  stp     x20, x19, [sp, #0x10]
  1000cc16c  stp     x29, x30, [sp, #0x20]
  1000cc170  add     x29, sp, #0x20
  1000cc174  mov     x19, x0
  1000cc178  adrp    x8, #0x10041d000
  1000cc17c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000cc180  adrp    x8, #0x100416000
  1000cc184  nop
  1000cc188  ldr     x1, [x8, #0xc00]
  1000cc18c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000cc190  mov     x29, x29
  1000cc194  bl      _objc_retainAutoreleasedReturnValue
  1000cc198  mov     x21, x0
  1000cc19c  adrp    x8, #0x100416000
  1000cc1a0  nop
  1000cc1a4  ldr     x1, [x8, #0xd18]
  1000cc1a8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000cc1ac  mov     x20, x0
  1000cc1b0  mov     x0, x21
  1000cc1b4  bl      _objc_release
  1000cc1b8  adrp    x8, #0x10041d000
  1000cc1bc  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000cc1c0  adrp    x8, #0x100418000
  1000cc1c4  nop
  1000cc1c8  ldr     x1, [x8, #0x5e8]
  1000cc1cc  nop
  1000cc1d0  ldr     d0, #0x100181c98                         ; d0 = 53.0
  1000cc1d4  fmov    d1, #4.00000000
  1000cc1d8  fmov    d3, #1.00000000
  1000cc1dc  mov     v2.16b, v1.16b
  1000cc1e0  bl      _objc_msgSend                            ; [UIColor colorWithRed:53 green:4 blue:4 alpha:1]
  1000cc1e4  mov     x29, x29
  1000cc1e8  bl      _objc_retainAutoreleasedReturnValue
  1000cc1ec  mov     x21, x0
  1000cc1f0  adrp    x8, #0x100418000
  1000cc1f4  nop
  1000cc1f8  ldr     x1, [x8, #0x5f0]
  1000cc1fc  mov     x3, #0
  1000cc200  mov     x0, x19
  1000cc204  mov     x2, x21
  1000cc208  bl      _objc_msgSend                            ; [self setTitleColor:[UIColor colorWithRed:53 green:4 blue:4 alpha:1] forState:0]
  1000cc20c  mov     x0, x21
  1000cc210  bl      _objc_release
  1000cc214  adrp    x8, #0x100416000
  1000cc218  nop
  1000cc21c  ldr     x1, [x8, #0xb80]
  1000cc220  mov     x0, x19
  1000cc224  bl      _objc_msgSend                            ; [self titleLabel]
  1000cc228  mov     x29, x29
  1000cc22c  bl      _objc_retainAutoreleasedReturnValue
  1000cc230  mov     x19, x0
  1000cc234  adrp    x8, #0x10041d000
  1000cc238  ldr     x0, [x8, #0xf08]                         ; class UIFont
  1000cc23c  cmp     w20, #0
  1000cc240  fmov    d0, #30.00000000
  1000cc244  fmov    d1, #20.00000000
  1000cc248  fcsel   d0, d1, d0, ne
  1000cc24c  adrp    x8, #0x100416000
  1000cc250  nop
  1000cc254  ldr     x1, [x8, #0xd20]
  1000cc258  adrp    x2, #0x1003b9000
  1000cc25c  add     x2, x2, #0xf10                           ; @"Monstro"
  1000cc260  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 30)]
  1000cc264  mov     x29, x29
  1000cc268  bl      _objc_retainAutoreleasedReturnValue
  1000cc26c  mov     x21, x0
  1000cc270  adrp    x8, #0x100416000
  1000cc274  nop
  1000cc278  ldr     x1, [x8, #0xd28]
  1000cc27c  mov     x0, x19
  1000cc280  mov     x2, x21
  1000cc284  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 20 : 30)]]
  1000cc288  mov     x0, x21
  1000cc28c  bl      _objc_release
  1000cc290  mov     x0, x19
  1000cc294  ldp     x29, x30, [sp, #0x20]
  1000cc298  ldp     x20, x19, [sp, #0x10]
  1000cc29c  ldp     x22, x21, [sp], #0x30
  1000cc2a0  b       _objc_release
  1000cc2a4  b       loc_1000cc2a8
loc_1000cc2a8:
  1000cc2a8  mov     x20, x0
  1000cc2ac  mov     x0, x21
  1000cc2b0  b       loc_1000cc2cc
  1000cc2b4  mov     x20, x0
  1000cc2b8  b       loc_1000cc2c8
  1000cc2bc  mov     x20, x0
  1000cc2c0  mov     x0, x21
  1000cc2c4  bl      _objc_release
loc_1000cc2c8:
  1000cc2c8  mov     x0, x19
loc_1000cc2cc:
  1000cc2cc  bl      _objc_release
  1000cc2d0  mov     x0, x20
  1000cc2d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIButton(ADMainButton) setupAsTarotCardInfo]
; address 0x1000cc2d8  size 436  kind objc
; ======================================================================
  1000cc2d8  stp     x24, x23, [sp, #-0x40]!
  1000cc2dc  stp     x22, x21, [sp, #0x10]
  1000cc2e0  stp     x20, x19, [sp, #0x20]
  1000cc2e4  stp     x29, x30, [sp, #0x30]
  1000cc2e8  add     x29, sp, #0x30
  1000cc2ec  mov     x19, x0
  1000cc2f0  adrp    x8, #0x10041d000
  1000cc2f4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000cc2f8  adrp    x8, #0x100416000
  1000cc2fc  nop
  1000cc300  ldr     x1, [x8, #0xc00]
  1000cc304  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000cc308  mov     x29, x29
  1000cc30c  bl      _objc_retainAutoreleasedReturnValue
  1000cc310  mov     x21, x0
  1000cc314  adrp    x8, #0x100416000
  1000cc318  nop
  1000cc31c  ldr     x1, [x8, #0xd18]
  1000cc320  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000cc324  mov     x20, x0
  1000cc328  mov     x0, x21
  1000cc32c  bl      _objc_release
  1000cc330  adrp    x8, #0x100416000
  1000cc334  nop
  1000cc338  ldr     x22, [x8, #0xb80]
  1000cc33c  mov     x0, x19
  1000cc340  mov     x1, x22
  1000cc344  bl      _objc_msgSend                            ; [self titleLabel]
  1000cc348  mov     x29, x29
  1000cc34c  bl      _objc_retainAutoreleasedReturnValue
  1000cc350  mov     x21, x0
  1000cc354  adrp    x8, #0x10041d000
  1000cc358  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000cc35c  adrp    x8, #0x100418000
  1000cc360  nop
  1000cc364  ldr     x1, [x8, #0x5e8]
  1000cc368  nop
  1000cc36c  ldr     d1, #0x100181d88                         ; d1 = 86.0
  1000cc370  nop
  1000cc374  ldr     d2, #0x100181d90                         ; d2 = 145.0
  1000cc378  fmov    d0, #24.00000000
  1000cc37c  fmov    d3, #1.00000000
  1000cc380  bl      _objc_msgSend                            ; [UIColor colorWithRed:24 green:86 blue:145 alpha:1]
  1000cc384  mov     x29, x29
  1000cc388  bl      _objc_retainAutoreleasedReturnValue
  1000cc38c  mov     x23, x0
  1000cc390  adrp    x8, #0x100417000
  1000cc394  nop
  1000cc398  ldr     x1, [x8, #0x330]
  1000cc39c  mov     x0, x21
  1000cc3a0  mov     x2, x23
  1000cc3a4  bl      _objc_msgSend                            ; [[self titleLabel] setTextColor:[UIColor colorWithRed:24 green:86 blue:145 alpha:1]]
  1000cc3a8  mov     x0, x23
  1000cc3ac  bl      _objc_release
  1000cc3b0  mov     x0, x21
  1000cc3b4  bl      _objc_release
  1000cc3b8  mov     x0, x19
  1000cc3bc  mov     x1, x22
  1000cc3c0  bl      _objc_msgSend                            ; [self titleLabel]
  1000cc3c4  mov     x29, x29
  1000cc3c8  bl      _objc_retainAutoreleasedReturnValue
  1000cc3cc  mov     x19, x0
  1000cc3d0  adrp    x8, #0x10041d000
  1000cc3d4  ldr     x0, [x8, #0xf08]                         ; class UIFont
  1000cc3d8  cmp     w20, #0
  1000cc3dc  fmov    d0, #20.00000000
  1000cc3e0  fmov    d1, #10.00000000
  1000cc3e4  fcsel   d0, d1, d0, ne
  1000cc3e8  adrp    x8, #0x100416000
  1000cc3ec  nop
  1000cc3f0  ldr     x1, [x8, #0xd20]
  1000cc3f4  adrp    x2, #0x1003bc000
  1000cc3f8  add     x2, x2, #0x310                           ; @"chainprinter"
  1000cc3fc  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 20)]
  1000cc400  mov     x29, x29
  1000cc404  bl      _objc_retainAutoreleasedReturnValue
  1000cc408  mov     x21, x0
  1000cc40c  adrp    x8, #0x100416000
  1000cc410  nop
  1000cc414  ldr     x1, [x8, #0xd28]
  1000cc418  mov     x0, x19
  1000cc41c  mov     x2, x21
  1000cc420  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 10 : 20)]]
  1000cc424  mov     x0, x21
  1000cc428  bl      _objc_release
  1000cc42c  mov     x0, x19
  1000cc430  ldp     x29, x30, [sp, #0x30]
  1000cc434  ldp     x20, x19, [sp, #0x20]
  1000cc438  ldp     x22, x21, [sp, #0x10]
  1000cc43c  ldp     x24, x23, [sp], #0x40
  1000cc440  b       _objc_release
  1000cc444  mov     x20, x0
  1000cc448  b       loc_1000cc460
  1000cc44c  mov     x20, x0
  1000cc450  b       loc_1000cc460
  1000cc454  mov     x20, x0
  1000cc458  mov     x0, x23
  1000cc45c  bl      _objc_release
loc_1000cc460:
  1000cc460  mov     x0, x21
  1000cc464  b       loc_1000cc480
  1000cc468  mov     x20, x0
  1000cc46c  b       loc_1000cc47c
  1000cc470  mov     x20, x0
  1000cc474  mov     x0, x21
  1000cc478  bl      _objc_release
loc_1000cc47c:
  1000cc47c  mov     x0, x19
loc_1000cc480:
  1000cc480  bl      _objc_release
  1000cc484  mov     x0, x20
  1000cc488  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIButton(ADMainButton) setupAsAccessibleTarotCardInfo]
; address 0x1000cc48c  size 276  kind objc
; ======================================================================
  1000cc48c  stp     x22, x21, [sp, #-0x30]!
  1000cc490  stp     x20, x19, [sp, #0x10]
  1000cc494  stp     x29, x30, [sp, #0x20]
  1000cc498  add     x29, sp, #0x20
  1000cc49c  mov     x19, x0
  1000cc4a0  adrp    x8, #0x10041d000
  1000cc4a4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000cc4a8  adrp    x8, #0x100416000
  1000cc4ac  nop
  1000cc4b0  ldr     x1, [x8, #0xc00]
  1000cc4b4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000cc4b8  mov     x29, x29
  1000cc4bc  bl      _objc_retainAutoreleasedReturnValue
  1000cc4c0  mov     x21, x0
  1000cc4c4  adrp    x8, #0x100416000
  1000cc4c8  nop
  1000cc4cc  ldr     x1, [x8, #0xd18]
  1000cc4d0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000cc4d4  mov     x20, x0
  1000cc4d8  mov     x0, x21
  1000cc4dc  bl      _objc_release
  1000cc4e0  adrp    x8, #0x100416000
  1000cc4e4  nop
  1000cc4e8  ldr     x1, [x8, #0xb80]
  1000cc4ec  mov     x0, x19
  1000cc4f0  bl      _objc_msgSend                            ; [self titleLabel]
  1000cc4f4  mov     x29, x29
  1000cc4f8  bl      _objc_retainAutoreleasedReturnValue
  1000cc4fc  mov     x19, x0
  1000cc500  adrp    x8, #0x10041d000
  1000cc504  ldr     x0, [x8, #0xf08]                         ; class UIFont
  1000cc508  cmp     w20, #0
  1000cc50c  fmov    d0, #25.00000000
  1000cc510  fmov    d1, #12.00000000
  1000cc514  fcsel   d0, d1, d0, ne
  1000cc518  adrp    x8, #0x100416000
  1000cc51c  nop
  1000cc520  ldr     x1, [x8, #0xd20]
  1000cc524  adrp    x2, #0x1003bc000
  1000cc528  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  1000cc52c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 25)]
  1000cc530  mov     x29, x29
  1000cc534  bl      _objc_retainAutoreleasedReturnValue
  1000cc538  mov     x21, x0
  1000cc53c  adrp    x8, #0x100416000
  1000cc540  nop
  1000cc544  ldr     x1, [x8, #0xd28]
  1000cc548  mov     x0, x19
  1000cc54c  mov     x2, x21
  1000cc550  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 25)]]
  1000cc554  mov     x0, x21
  1000cc558  bl      _objc_release
  1000cc55c  mov     x0, x19
  1000cc560  ldp     x29, x30, [sp, #0x20]
  1000cc564  ldp     x20, x19, [sp, #0x10]
  1000cc568  ldp     x22, x21, [sp], #0x30
  1000cc56c  b       _objc_release
  1000cc570  mov     x20, x0
  1000cc574  mov     x0, x21
  1000cc578  b       loc_1000cc594
  1000cc57c  mov     x20, x0
  1000cc580  b       loc_1000cc590
  1000cc584  mov     x20, x0
  1000cc588  mov     x0, x21
  1000cc58c  bl      _objc_release
loc_1000cc590:
  1000cc590  mov     x0, x19
loc_1000cc594:
  1000cc594  bl      _objc_release
  1000cc598  mov     x0, x20
  1000cc59c  bl      __Unwind_Resume                          ; Unwind_Resume()
