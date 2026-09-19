// unit ADAccessibleTableCell — 1 functions
//   0x1000a4834     928  -[ADAccessibleTableCell initWithStyle:reuseIdentifier:]

; ======================================================================
; -[ADAccessibleTableCell initWithStyle:reuseIdentifier:]
; address 0x1000a4834  size 928  kind objc
; ======================================================================
  1000a4834  stp     x28, x27, [sp, #-0x60]!
  1000a4838  stp     x26, x25, [sp, #0x10]
  1000a483c  stp     x24, x23, [sp, #0x20]
  1000a4840  stp     x22, x21, [sp, #0x30]
  1000a4844  stp     x20, x19, [sp, #0x40]
  1000a4848  stp     x29, x30, [sp, #0x50]
  1000a484c  add     x29, sp, #0x50
  1000a4850  sub     sp, sp, #0x20
  1000a4854  mov     x20, x2
  1000a4858  mov     x21, x0
  1000a485c  mov     x0, x3
  1000a4860  bl      _objc_retain
  1000a4864  mov     x9, x0
  1000a4868  stp     x9, x21, [sp, #8]
  1000a486c  adrp    x8, #0x10041e000
  1000a4870  ldr     x8, [x8, #0xee8]
  1000a4874  str     x8, [sp, #0x18]
  1000a4878  adrp    x8, #0x100417000
  1000a487c  nop
  1000a4880  ldr     x1, [x8, #0x3c0]
  1000a4884  mov     x24, #0
  1000a4888  add     x0, sp, #0x10
  1000a488c  mov     x2, x20
  1000a4890  mov     x3, x9
  1000a4894  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  1000a4898  mov     x20, x0
  1000a489c  cbz     x20, loc_1000a4b00                       ; if (self == 0)
  1000a48a0  mov     x24, x20
  1000a48a4  adrp    x8, #0x10041d000
  1000a48a8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000a48ac  adrp    x8, #0x100417000
  1000a48b0  nop
  1000a48b4  ldr     x1, [x8, #0x180]
  1000a48b8  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000a48bc  mov     x29, x29
  1000a48c0  bl      _objc_retainAutoreleasedReturnValue
  1000a48c4  mov     x22, x0
  1000a48c8  adrp    x8, #0x100417000
  1000a48cc  nop
  1000a48d0  ldr     x1, [x8, #0x188]
  1000a48d4  mov     x0, x20
  1000a48d8  mov     x2, x22
  1000a48dc  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor blackColor]]
  1000a48e0  mov     x24, x20
  1000a48e4  mov     x0, x22
  1000a48e8  bl      _objc_release
  1000a48ec  adrp    x8, #0x100417000
  1000a48f0  nop
  1000a48f4  ldr     x25, [x8, #0x320]
  1000a48f8  mov     x0, x20
  1000a48fc  mov     x1, x25
  1000a4900  bl      _objc_msgSend                            ; [self textLabel]
  1000a4904  mov     x29, x29
  1000a4908  bl      _objc_retainAutoreleasedReturnValue
  1000a490c  mov     x23, x0
  1000a4910  adrp    x8, #0x10041d000
  1000a4914  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000a4918  adrp    x8, #0x100417000
  1000a491c  nop
  1000a4920  ldr     x21, [x8, #0x328]
  1000a4924  mov     x1, x21
  1000a4928  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000a492c  mov     x29, x29
  1000a4930  bl      _objc_retainAutoreleasedReturnValue
  1000a4934  mov     x26, x0
  1000a4938  adrp    x8, #0x100417000
  1000a493c  nop
  1000a4940  ldr     x22, [x8, #0x330]
  1000a4944  mov     x0, x23
  1000a4948  mov     x1, x22
  1000a494c  mov     x2, x26
  1000a4950  bl      _objc_msgSend                            ; [[self textLabel] setTextColor:[UIColor whiteColor]]
  1000a4954  mov     x24, x20
  1000a4958  mov     x0, x26
  1000a495c  bl      _objc_release
  1000a4960  mov     x0, x23
  1000a4964  bl      _objc_release
  1000a4968  adrp    x8, #0x10041d000
  1000a496c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000a4970  adrp    x8, #0x100416000
  1000a4974  nop
  1000a4978  ldr     x1, [x8, #0xc00]
  1000a497c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000a4980  mov     x29, x29
  1000a4984  bl      _objc_retainAutoreleasedReturnValue
  1000a4988  mov     x26, x0
  1000a498c  adrp    x8, #0x100416000
  1000a4990  nop
  1000a4994  ldr     x1, [x8, #0xd18]
  1000a4998  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000a499c  mov     x23, x0
  1000a49a0  mov     x24, x20
  1000a49a4  mov     x0, x26
  1000a49a8  bl      _objc_release
  1000a49ac  mov     x0, x20
  1000a49b0  mov     x1, x25
  1000a49b4  bl      _objc_msgSend                            ; [self textLabel]
  1000a49b8  mov     x29, x29
  1000a49bc  bl      _objc_retainAutoreleasedReturnValue
  1000a49c0  mov     x27, x0
  1000a49c4  adrp    x19, #0x10041d000
  1000a49c8  ldr     x0, [x19, #0xf08]                        ; class UIFont
  1000a49cc  cmp     w23, #0
  1000a49d0  fmov    d0, #25.00000000
  1000a49d4  fmov    d1, #15.00000000
  1000a49d8  fcsel   d0, d1, d0, ne
  1000a49dc  adrp    x8, #0x100416000
  1000a49e0  nop
  1000a49e4  ldr     x25, [x8, #0xd20]
  1000a49e8  adrp    x2, #0x1003bc000
  1000a49ec  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  1000a49f0  mov     x1, x25
  1000a49f4  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 25)]
  1000a49f8  mov     x29, x29
  1000a49fc  bl      _objc_retainAutoreleasedReturnValue
  1000a4a00  mov     x28, x0
  1000a4a04  adrp    x8, #0x100416000
  1000a4a08  nop
  1000a4a0c  ldr     x26, [x8, #0xd28]
  1000a4a10  mov     x0, x27
  1000a4a14  mov     x1, x26
  1000a4a18  mov     x2, x28
  1000a4a1c  bl      _objc_msgSend                            ; [[self textLabel] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 25)]]
  1000a4a20  mov     x24, x20
  1000a4a24  mov     x0, x28
  1000a4a28  bl      _objc_release
  1000a4a2c  mov     x0, x27
  1000a4a30  bl      _objc_release
  1000a4a34  adrp    x8, #0x100417000
  1000a4a38  nop
  1000a4a3c  ldr     x27, [x8, #0x338]
  1000a4a40  mov     x0, x20
  1000a4a44  mov     x1, x27
  1000a4a48  bl      _objc_msgSend                            ; [self detailTextLabel]
  1000a4a4c  mov     x29, x29
  1000a4a50  bl      _objc_retainAutoreleasedReturnValue
  1000a4a54  mov     x28, x0
  1000a4a58  adrp    x8, #0x10041d000
  1000a4a5c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000a4a60  mov     x1, x21
  1000a4a64  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000a4a68  mov     x29, x29
  1000a4a6c  bl      _objc_retainAutoreleasedReturnValue
  1000a4a70  mov     x21, x0
  1000a4a74  mov     x0, x28
  1000a4a78  mov     x1, x22
  1000a4a7c  mov     x2, x21
  1000a4a80  bl      _objc_msgSend                            ; [[self detailTextLabel] setTextColor:[UIColor whiteColor]]
  1000a4a84  mov     x24, x20
  1000a4a88  mov     x0, x21
  1000a4a8c  bl      _objc_release
  1000a4a90  mov     x0, x28
  1000a4a94  bl      _objc_release
  1000a4a98  mov     x0, x20
  1000a4a9c  mov     x1, x27
  1000a4aa0  bl      _objc_msgSend                            ; [self detailTextLabel]
  1000a4aa4  mov     x29, x29
  1000a4aa8  bl      _objc_retainAutoreleasedReturnValue
  1000a4aac  mov     x22, x0
  1000a4ab0  ldr     x0, [x19, #0xf08]                        ; class UIFont
  1000a4ab4  cmp     w23, #0
  1000a4ab8  fmov    d0, #22.00000000
  1000a4abc  fmov    d1, #14.00000000
  1000a4ac0  fcsel   d0, d1, d0, ne
  1000a4ac4  adrp    x2, #0x1003bc000
  1000a4ac8  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  1000a4acc  mov     x1, x25
  1000a4ad0  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 14 : 22)]
  1000a4ad4  mov     x29, x29
  1000a4ad8  bl      _objc_retainAutoreleasedReturnValue
  1000a4adc  mov     x21, x0
  1000a4ae0  mov     x0, x22
  1000a4ae4  mov     x1, x26
  1000a4ae8  mov     x2, x21
  1000a4aec  bl      _objc_msgSend                            ; [[self detailTextLabel] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 14 : 22)]]
  1000a4af0  mov     x0, x21
  1000a4af4  bl      _objc_release
  1000a4af8  mov     x0, x22
  1000a4afc  bl      _objc_release
loc_1000a4b00:
  1000a4b00  ldr     x0, [sp, #8]
  1000a4b04  bl      _objc_release
  1000a4b08  mov     x0, x20
  1000a4b0c  sub     sp, x29, #0x50
  1000a4b10  ldp     x29, x30, [sp, #0x50]
  1000a4b14  ldp     x20, x19, [sp, #0x40]
  1000a4b18  ldp     x22, x21, [sp, #0x30]
  1000a4b1c  ldp     x24, x23, [sp, #0x20]
  1000a4b20  ldp     x26, x25, [sp, #0x10]
  1000a4b24  ldp     x28, x27, [sp], #0x60
  1000a4b28  ret
  1000a4b2c  mov     x25, x0
  1000a4b30  b       loc_1000a4bbc
  1000a4b34  mov     x25, x0
  1000a4b38  b       loc_1000a4bb0
  1000a4b3c  mov     x25, x0
  1000a4b40  b       loc_1000a4b50
  1000a4b44  mov     x25, x0
  1000a4b48  mov     x0, x26
  1000a4b4c  bl      _objc_release
loc_1000a4b50:
  1000a4b50  mov     x0, x23
  1000a4b54  b       loc_1000a4bb4
  1000a4b58  mov     x25, x0
  1000a4b5c  mov     x0, x26
  1000a4b60  b       loc_1000a4bb4
  1000a4b64  mov     x25, x0
  1000a4b68  b       loc_1000a4b78
  1000a4b6c  mov     x25, x0
  1000a4b70  mov     x0, x28
  1000a4b74  bl      _objc_release
loc_1000a4b78:
  1000a4b78  mov     x0, x27
  1000a4b7c  b       loc_1000a4bb4
  1000a4b80  mov     x25, x0
  1000a4b84  b       loc_1000a4b94
  1000a4b88  mov     x25, x0
  1000a4b8c  mov     x0, x21
  1000a4b90  bl      _objc_release
loc_1000a4b94:
  1000a4b94  mov     x0, x28
  1000a4b98  b       loc_1000a4bb4
  1000a4b9c  mov     x25, x0
  1000a4ba0  b       loc_1000a4bb0
  1000a4ba4  mov     x25, x0
  1000a4ba8  mov     x0, x21
  1000a4bac  bl      _objc_release
loc_1000a4bb0:
  1000a4bb0  mov     x0, x22
loc_1000a4bb4:
  1000a4bb4  bl      _objc_release
  1000a4bb8  mov     x24, x20
loc_1000a4bbc:
  1000a4bbc  ldr     x0, [sp, #8]
  1000a4bc0  bl      _objc_release
  1000a4bc4  mov     x0, x24
  1000a4bc8  bl      _objc_release
  1000a4bcc  mov     x0, x25
  1000a4bd0  bl      __Unwind_Resume                          ; Unwind_Resume()
