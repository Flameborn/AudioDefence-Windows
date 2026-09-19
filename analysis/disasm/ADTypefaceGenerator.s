// unit ADTypefaceGenerator — 5 functions
//   0x100072a40     264  +[ADTypefaceGenerator createTitle:]
//   0x100072b48     276  +[ADTypefaceGenerator createButton:]
//   0x100072c5c     276  +[ADTypefaceGenerator createBlockedButton:]
//   0x100072d70     232  +[ADTypefaceGenerator createInfoText:]
//   0x100072e58     232  +[ADTypefaceGenerator createParagraphText:]

; ======================================================================
; +[ADTypefaceGenerator createTitle:]
; address 0x100072a40  size 264  kind objc
; ======================================================================
  100072a40  stp     x20, x19, [sp, #-0x20]!
  100072a44  stp     x29, x30, [sp, #0x10]
  100072a48  add     x29, sp, #0x10
  100072a4c  mov     x0, x2
  100072a50  bl      _objc_retain
  100072a54  mov     x19, x0
  100072a58  adrp    x8, #0x10041d000
  100072a5c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100072a60  adrp    x8, #0x100418000
  100072a64  nop
  100072a68  ldr     x1, [x8, #0x5e8]
  100072a6c  adrp    x8, #0x100181000
  100072a70  ldr     d0, [x8, #0xc78]                         ; d0 = 237.0
  100072a74  nop
  100072a78  ldr     d1, [x8, #0x9f0]                         ; d1 = 180.0
  100072a7c  adrp    x8, #0x100181000
  100072a80  ldr     d2, [x8, #0xc80]                         ; d2 = 55.0
  100072a84  fmov    d3, #1.00000000
  100072a88  bl      _objc_msgSend                            ; [UIColor colorWithRed:237 green:180 blue:55 alpha:1]
  100072a8c  mov     x29, x29
  100072a90  bl      _objc_retainAutoreleasedReturnValue
  100072a94  mov     x20, x0
  100072a98  adrp    x8, #0x100417000
  100072a9c  nop
  100072aa0  ldr     x1, [x8, #0x330]
  100072aa4  mov     x0, x19
  100072aa8  mov     x2, x20
  100072aac  bl      _objc_msgSend                            ; [arg1 setTextColor:[UIColor colorWithRed:237 green:180 blue:55 alpha:1]]
  100072ab0  mov     x0, x20
  100072ab4  bl      _objc_release
  100072ab8  adrp    x8, #0x10041d000
  100072abc  ldr     x0, [x8, #0xf08]                         ; class UIFont
  100072ac0  adrp    x8, #0x100416000
  100072ac4  nop
  100072ac8  ldr     x1, [x8, #0xd20]
  100072acc  adrp    x2, #0x1003b9000
  100072ad0  add     x2, x2, #0xf10                           ; @"Monstro"
  100072ad4  adrp    x8, #0x100181000
  100072ad8  ldr     d0, [x8, #0xc88]                         ; d0 = 65.0
  100072adc  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:65]
  100072ae0  mov     x29, x29
  100072ae4  bl      _objc_retainAutoreleasedReturnValue
  100072ae8  mov     x20, x0
  100072aec  adrp    x8, #0x100416000
  100072af0  nop
  100072af4  ldr     x1, [x8, #0xd28]
  100072af8  mov     x0, x19
  100072afc  mov     x2, x20
  100072b00  bl      _objc_msgSend                            ; [arg1 setFont:[UIFont fontWithName:@"Monstro" size:65]]
  100072b04  mov     x0, x20
  100072b08  bl      _objc_release
  100072b0c  mov     x0, x19
  100072b10  ldp     x29, x30, [sp, #0x10]
  100072b14  ldp     x20, x19, [sp], #0x20
  100072b18  b       _objc_release
  100072b1c  mov     x20, x0
  100072b20  b       loc_100072b38
  100072b24  b       loc_100072b28
loc_100072b28:
  100072b28  mov     x1, x20
  100072b2c  mov     x20, x0
  100072b30  mov     x0, x1
  100072b34  bl      _objc_release
loc_100072b38:
  100072b38  mov     x0, x19
  100072b3c  bl      _objc_release
  100072b40  mov     x0, x20
  100072b44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTypefaceGenerator createButton:]
; address 0x100072b48  size 276  kind objc
; ======================================================================
  100072b48  stp     x20, x19, [sp, #-0x20]!
  100072b4c  stp     x29, x30, [sp, #0x10]
  100072b50  add     x29, sp, #0x10
  100072b54  mov     x0, x2
  100072b58  bl      _objc_retain
  100072b5c  mov     x19, x0
  100072b60  adrp    x8, #0x10041d000
  100072b64  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100072b68  adrp    x8, #0x100418000
  100072b6c  nop
  100072b70  ldr     x1, [x8, #0x5e8]
  100072b74  adrp    x8, #0x100181000
  100072b78  ldr     d0, [x8, #0xc90]                         ; d0 = 255.0
  100072b7c  fmov    d3, #1.00000000
  100072b80  mov     v1.16b, v0.16b
  100072b84  mov     v2.16b, v0.16b
  100072b88  bl      _objc_msgSend                            ; [UIColor colorWithRed:255 green:255 blue:255 alpha:1]
  100072b8c  mov     x29, x29
  100072b90  bl      _objc_retainAutoreleasedReturnValue
  100072b94  mov     x20, x0
  100072b98  adrp    x8, #0x100418000
  100072b9c  nop
  100072ba0  ldr     x1, [x8, #0x5f0]
  100072ba4  mov     x3, #0
  100072ba8  mov     x0, x19
  100072bac  mov     x2, x20
  100072bb0  bl      _objc_msgSend                            ; [arg1 setTitleColor:[UIColor colorWithRed:255 green:255 blue:255 alpha:1] forState:0]
  100072bb4  mov     x0, x20
  100072bb8  bl      _objc_release
  100072bbc  adrp    x8, #0x100419000
  100072bc0  nop
  100072bc4  ldr     x1, [x8, #0x7e0]
  100072bc8  adrp    x2, #0x1003b9000
  100072bcc  add     x2, x2, #0xf10                           ; @"Monstro"
  100072bd0  mov     x0, x19
  100072bd4  bl      _objc_msgSend                            ; [arg1 setFontName:@"Monstro"]
  100072bd8  adrp    x8, #0x10041d000
  100072bdc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100072be0  adrp    x8, #0x100416000
  100072be4  nop
  100072be8  ldr     x1, [x8, #0xec0]
  100072bec  mov     w2, #0x28
  100072bf0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:40]
  100072bf4  mov     x29, x29
  100072bf8  bl      _objc_retainAutoreleasedReturnValue
  100072bfc  mov     x20, x0
  100072c00  adrp    x8, #0x100419000
  100072c04  nop
  100072c08  ldr     x1, [x8, #0x7e8]
  100072c0c  mov     x0, x19
  100072c10  mov     x2, x20
  100072c14  bl      _objc_msgSend                            ; [arg1 setFontSize:[NSNumber numberWithInt:40]]
  100072c18  mov     x0, x20
  100072c1c  bl      _objc_release
  100072c20  mov     x0, x19
  100072c24  ldp     x29, x30, [sp, #0x10]
  100072c28  ldp     x20, x19, [sp], #0x20
  100072c2c  b       _objc_release
  100072c30  mov     x20, x0
  100072c34  b       loc_100072c4c
  100072c38  b       loc_100072c3c
loc_100072c3c:
  100072c3c  mov     x1, x20
  100072c40  mov     x20, x0
  100072c44  mov     x0, x1
  100072c48  bl      _objc_release
loc_100072c4c:
  100072c4c  mov     x0, x19
  100072c50  bl      _objc_release
  100072c54  mov     x0, x20
  100072c58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTypefaceGenerator createBlockedButton:]
; address 0x100072c5c  size 276  kind objc
; ======================================================================
  100072c5c  stp     x20, x19, [sp, #-0x20]!
  100072c60  stp     x29, x30, [sp, #0x10]
  100072c64  add     x29, sp, #0x10
  100072c68  mov     x0, x2
  100072c6c  bl      _objc_retain
  100072c70  mov     x19, x0
  100072c74  adrp    x8, #0x10041d000
  100072c78  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100072c7c  adrp    x8, #0x100418000
  100072c80  nop
  100072c84  ldr     x1, [x8, #0x5e8]
  100072c88  adrp    x8, #0x100181000
  100072c8c  ldr     d0, [x8, #0xc98]                         ; d0 = 53.0
  100072c90  fmov    d1, #4.00000000
  100072c94  fmov    d3, #1.00000000
  100072c98  mov     v2.16b, v1.16b
  100072c9c  bl      _objc_msgSend                            ; [UIColor colorWithRed:53 green:4 blue:4 alpha:1]
  100072ca0  mov     x29, x29
  100072ca4  bl      _objc_retainAutoreleasedReturnValue
  100072ca8  mov     x20, x0
  100072cac  adrp    x8, #0x100418000
  100072cb0  nop
  100072cb4  ldr     x1, [x8, #0x5f0]
  100072cb8  mov     x3, #0
  100072cbc  mov     x0, x19
  100072cc0  mov     x2, x20
  100072cc4  bl      _objc_msgSend                            ; [arg1 setTitleColor:[UIColor colorWithRed:53 green:4 blue:4 alpha:1] forState:0]
  100072cc8  mov     x0, x20
  100072ccc  bl      _objc_release
  100072cd0  adrp    x8, #0x100419000
  100072cd4  nop
  100072cd8  ldr     x1, [x8, #0x7e0]
  100072cdc  adrp    x2, #0x1003b9000
  100072ce0  add     x2, x2, #0xf10                           ; @"Monstro"
  100072ce4  mov     x0, x19
  100072ce8  bl      _objc_msgSend                            ; [arg1 setFontName:@"Monstro"]
  100072cec  adrp    x8, #0x10041d000
  100072cf0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100072cf4  adrp    x8, #0x100416000
  100072cf8  nop
  100072cfc  ldr     x1, [x8, #0xec0]
  100072d00  mov     w2, #0x28
  100072d04  bl      _objc_msgSend                            ; [NSNumber numberWithInt:40]
  100072d08  mov     x29, x29
  100072d0c  bl      _objc_retainAutoreleasedReturnValue
  100072d10  mov     x20, x0
  100072d14  adrp    x8, #0x100419000
  100072d18  nop
  100072d1c  ldr     x1, [x8, #0x7e8]
  100072d20  mov     x0, x19
  100072d24  mov     x2, x20
  100072d28  bl      _objc_msgSend                            ; [arg1 setFontSize:[NSNumber numberWithInt:40]]
  100072d2c  mov     x0, x20
  100072d30  bl      _objc_release
  100072d34  mov     x0, x19
  100072d38  ldp     x29, x30, [sp, #0x10]
  100072d3c  ldp     x20, x19, [sp], #0x20
  100072d40  b       _objc_release
  100072d44  mov     x20, x0
  100072d48  b       loc_100072d60
  100072d4c  b       loc_100072d50
loc_100072d50:
  100072d50  mov     x1, x20
  100072d54  mov     x20, x0
  100072d58  mov     x0, x1
  100072d5c  bl      _objc_release
loc_100072d60:
  100072d60  mov     x0, x19
  100072d64  bl      _objc_release
  100072d68  mov     x0, x20
  100072d6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTypefaceGenerator createInfoText:]
; address 0x100072d70  size 232  kind objc
; ======================================================================
  100072d70  stp     x20, x19, [sp, #-0x20]!
  100072d74  stp     x29, x30, [sp, #0x10]
  100072d78  add     x29, sp, #0x10
  100072d7c  mov     x0, x2
  100072d80  bl      _objc_retain
  100072d84  mov     x19, x0
  100072d88  adrp    x8, #0x10041d000
  100072d8c  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100072d90  adrp    x8, #0x100417000
  100072d94  nop
  100072d98  ldr     x1, [x8, #0x328]
  100072d9c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100072da0  mov     x29, x29
  100072da4  bl      _objc_retainAutoreleasedReturnValue
  100072da8  mov     x20, x0
  100072dac  adrp    x8, #0x100417000
  100072db0  nop
  100072db4  ldr     x1, [x8, #0x330]
  100072db8  mov     x0, x19
  100072dbc  mov     x2, x20
  100072dc0  bl      _objc_msgSend                            ; [arg1 setTextColor:[UIColor whiteColor]]
  100072dc4  mov     x0, x20
  100072dc8  bl      _objc_release
  100072dcc  adrp    x8, #0x10041d000
  100072dd0  ldr     x0, [x8, #0xf08]                         ; class UIFont
  100072dd4  adrp    x8, #0x100416000
  100072dd8  nop
  100072ddc  ldr     x1, [x8, #0xd20]
  100072de0  adrp    x2, #0x1003bc000
  100072de4  add     x2, x2, #0x310                           ; @"chainprinter"
  100072de8  fmov    d0, #20.00000000
  100072dec  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:20]
  100072df0  mov     x29, x29
  100072df4  bl      _objc_retainAutoreleasedReturnValue
  100072df8  mov     x20, x0
  100072dfc  adrp    x8, #0x100416000
  100072e00  nop
  100072e04  ldr     x1, [x8, #0xd28]
  100072e08  mov     x0, x19
  100072e0c  mov     x2, x20
  100072e10  bl      _objc_msgSend                            ; [arg1 setFont:[UIFont fontWithName:@"chainprinter" size:20]]
  100072e14  mov     x0, x20
  100072e18  bl      _objc_release
  100072e1c  mov     x0, x19
  100072e20  ldp     x29, x30, [sp, #0x10]
  100072e24  ldp     x20, x19, [sp], #0x20
  100072e28  b       _objc_release
  100072e2c  mov     x20, x0
  100072e30  b       loc_100072e48
  100072e34  b       loc_100072e38
loc_100072e38:
  100072e38  mov     x1, x20
  100072e3c  mov     x20, x0
  100072e40  mov     x0, x1
  100072e44  bl      _objc_release
loc_100072e48:
  100072e48  mov     x0, x19
  100072e4c  bl      _objc_release
  100072e50  mov     x0, x20
  100072e54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTypefaceGenerator createParagraphText:]
; address 0x100072e58  size 232  kind objc
; ======================================================================
  100072e58  stp     x20, x19, [sp, #-0x20]!
  100072e5c  stp     x29, x30, [sp, #0x10]
  100072e60  add     x29, sp, #0x10
  100072e64  mov     x0, x2
  100072e68  bl      _objc_retain
  100072e6c  mov     x19, x0
  100072e70  adrp    x8, #0x10041d000
  100072e74  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100072e78  adrp    x8, #0x100417000
  100072e7c  nop
  100072e80  ldr     x1, [x8, #0x328]
  100072e84  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100072e88  mov     x29, x29
  100072e8c  bl      _objc_retainAutoreleasedReturnValue
  100072e90  mov     x20, x0
  100072e94  adrp    x8, #0x100417000
  100072e98  nop
  100072e9c  ldr     x1, [x8, #0x330]
  100072ea0  mov     x0, x19
  100072ea4  mov     x2, x20
  100072ea8  bl      _objc_msgSend                            ; [arg1 setTextColor:[UIColor whiteColor]]
  100072eac  mov     x0, x20
  100072eb0  bl      _objc_release
  100072eb4  adrp    x8, #0x10041d000
  100072eb8  ldr     x0, [x8, #0xf08]                         ; class UIFont
  100072ebc  adrp    x8, #0x100416000
  100072ec0  nop
  100072ec4  ldr     x1, [x8, #0xd20]
  100072ec8  adrp    x2, #0x1003bc000
  100072ecc  add     x2, x2, #0x310                           ; @"chainprinter"
  100072ed0  fmov    d0, #17.00000000
  100072ed4  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:17]
  100072ed8  mov     x29, x29
  100072edc  bl      _objc_retainAutoreleasedReturnValue
  100072ee0  mov     x20, x0
  100072ee4  adrp    x8, #0x100416000
  100072ee8  nop
  100072eec  ldr     x1, [x8, #0xd28]
  100072ef0  mov     x0, x19
  100072ef4  mov     x2, x20
  100072ef8  bl      _objc_msgSend                            ; [arg1 setFont:[UIFont fontWithName:@"chainprinter" size:17]]
  100072efc  mov     x0, x20
  100072f00  bl      _objc_release
  100072f04  mov     x0, x19
  100072f08  ldp     x29, x30, [sp, #0x10]
  100072f0c  ldp     x20, x19, [sp], #0x20
  100072f10  b       _objc_release
  100072f14  mov     x20, x0
  100072f18  b       loc_100072f30
  100072f1c  b       loc_100072f20
loc_100072f20:
  100072f20  mov     x1, x20
  100072f24  mov     x20, x0
  100072f28  mov     x0, x1
  100072f2c  bl      _objc_release
loc_100072f30:
  100072f30  mov     x0, x19
  100072f34  bl      _objc_release
  100072f38  mov     x0, x20
  100072f3c  bl      __Unwind_Resume                          ; Unwind_Resume()
