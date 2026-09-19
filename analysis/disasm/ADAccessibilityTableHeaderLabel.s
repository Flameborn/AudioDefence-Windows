// unit ADAccessibilityTableHeaderLabel — 1 functions
//   0x10009e4d0     500  -[ADAccessibilityTableHeaderLabel initWithFrame:]

; ======================================================================
; -[ADAccessibilityTableHeaderLabel initWithFrame:]
; address 0x10009e4d0  size 500  kind objc
; ======================================================================
  10009e4d0  stp     x24, x23, [sp, #-0x40]!
  10009e4d4  stp     x22, x21, [sp, #0x10]
  10009e4d8  stp     x20, x19, [sp, #0x20]
  10009e4dc  stp     x29, x30, [sp, #0x30]
  10009e4e0  add     x29, sp, #0x30
  10009e4e4  sub     sp, sp, #0x10
  10009e4e8  str     x0, [sp]
  10009e4ec  adrp    x8, #0x10041e000
  10009e4f0  ldr     x8, [x8, #0xec8]
  10009e4f4  str     x8, [sp, #8]
  10009e4f8  adrp    x8, #0x100417000
  10009e4fc  nop
  10009e500  ldr     x1, [x8, #0x178]
  10009e504  mov     x20, #0
  10009e508  mov     x0, sp
  10009e50c  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10009e510  mov     x19, x0
  10009e514  cbz     x19, loc_10009e668                       ; if (self == 0)
  10009e518  mov     x20, x19
  10009e51c  adrp    x23, #0x10041d000
  10009e520  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  10009e524  adrp    x8, #0x100417000
  10009e528  nop
  10009e52c  ldr     x1, [x8, #0x180]
  10009e530  bl      _objc_msgSend                            ; [UIColor blackColor]
  10009e534  mov     x29, x29
  10009e538  bl      _objc_retainAutoreleasedReturnValue
  10009e53c  mov     x21, x0
  10009e540  adrp    x8, #0x100417000
  10009e544  nop
  10009e548  ldr     x1, [x8, #0x188]
  10009e54c  mov     x0, x19
  10009e550  mov     x2, x21
  10009e554  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor blackColor]]
  10009e558  mov     x20, x19
  10009e55c  mov     x0, x21
  10009e560  bl      _objc_release
  10009e564  adrp    x8, #0x100418000
  10009e568  nop
  10009e56c  ldr     x1, [x8, #0x230]
  10009e570  mov     w2, #1
  10009e574  mov     x0, x19
  10009e578  bl      _objc_msgSend                            ; [self setTextAlignment:1]
  10009e57c  mov     x20, x19
  10009e580  adrp    x8, #0x10041d000
  10009e584  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009e588  adrp    x8, #0x100416000
  10009e58c  nop
  10009e590  ldr     x1, [x8, #0xc00]
  10009e594  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009e598  mov     x29, x29
  10009e59c  bl      _objc_retainAutoreleasedReturnValue
  10009e5a0  mov     x21, x0
  10009e5a4  adrp    x8, #0x100416000
  10009e5a8  nop
  10009e5ac  ldr     x1, [x8, #0xd18]
  10009e5b0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10009e5b4  mov     x22, x0
  10009e5b8  mov     x20, x19
  10009e5bc  mov     x0, x21
  10009e5c0  bl      _objc_release
  10009e5c4  adrp    x8, #0x10041d000
  10009e5c8  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10009e5cc  cmp     w22, #0
  10009e5d0  nop
  10009e5d4  ldr     d0, #0x100181b90                         ; d0 = 35.0
  10009e5d8  fmov    d1, #12.00000000
  10009e5dc  fcsel   d0, d1, d0, ne
  10009e5e0  adrp    x8, #0x100416000
  10009e5e4  nop
  10009e5e8  ldr     x1, [x8, #0xd20]
  10009e5ec  adrp    x2, #0x1003bc000
  10009e5f0  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  10009e5f4  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 35)]
  10009e5f8  mov     x29, x29
  10009e5fc  bl      _objc_retainAutoreleasedReturnValue
  10009e600  mov     x21, x0
  10009e604  adrp    x8, #0x100416000
  10009e608  nop
  10009e60c  ldr     x1, [x8, #0xd28]
  10009e610  mov     x0, x19
  10009e614  mov     x2, x21
  10009e618  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 35)]]
  10009e61c  mov     x20, x19
  10009e620  mov     x0, x21
  10009e624  bl      _objc_release
  10009e628  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  10009e62c  adrp    x8, #0x100417000
  10009e630  nop
  10009e634  ldr     x1, [x8, #0x328]
  10009e638  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10009e63c  mov     x29, x29
  10009e640  bl      _objc_retainAutoreleasedReturnValue
  10009e644  mov     x20, x0
  10009e648  adrp    x8, #0x100417000
  10009e64c  nop
  10009e650  ldr     x1, [x8, #0x330]
  10009e654  mov     x0, x19
  10009e658  mov     x2, x20
  10009e65c  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  10009e660  mov     x0, x20
  10009e664  bl      _objc_release
loc_10009e668:
  10009e668  mov     x0, x19
  10009e66c  sub     sp, x29, #0x30
  10009e670  ldp     x29, x30, [sp, #0x30]
  10009e674  ldp     x20, x19, [sp, #0x20]
  10009e678  ldp     x22, x21, [sp, #0x10]
  10009e67c  ldp     x24, x23, [sp], #0x40
  10009e680  ret
  10009e684  mov     x21, x0
  10009e688  b       loc_10009e6b4
  10009e68c  b       loc_10009e694
  10009e690  b       loc_10009e694
loc_10009e694:
  10009e694  mov     x1, x21
  10009e698  mov     x21, x0
  10009e69c  mov     x0, x1
  10009e6a0  b       loc_10009e6ac
  10009e6a4  mov     x21, x0
  10009e6a8  mov     x0, x20
loc_10009e6ac:
  10009e6ac  bl      _objc_release
  10009e6b0  mov     x20, x19
loc_10009e6b4:
  10009e6b4  mov     x0, x20
  10009e6b8  bl      _objc_release
  10009e6bc  mov     x0, x21
  10009e6c0  bl      __Unwind_Resume                          ; Unwind_Resume()
