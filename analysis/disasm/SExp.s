// unit SExp — 32 functions
//   0x1000e07f8     124  -[SExp dateFormatter]
//   0x1000e0874      56  +[SExp sexp]
//   0x1000e08ac     148  +[SExp sexp:]
//   0x1000e0940     668  +[SExp sexp:root:]
//   0x1000e0bdc     156  -[SExp addAttribute:]
//   0x1000e0c78     204  -[SExp addIntAttribute:]
//   0x1000e0d44     216  -[SExp addFloatAttribute:]
//   0x1000e0e1c     280  -[SExp addDateAttribute:]
//   0x1000e0f34     140  -[SExp addBoolAttribute:]
//   0x1000e0fc0     316  -[SExp init]
//   0x1000e10fc      20  -[SExp stringValue:]
//   0x1000e1110     300  -[SExp stringValue:at:]
//   0x1000e123c      20  -[SExp intValue:]
//   0x1000e1250     160  -[SExp intValue:at:]
//   0x1000e12f0      20  -[SExp dateValue:]
//   0x1000e1304     232  -[SExp dateValue:at:]
//   0x1000e13ec      20  -[SExp floatValue:]
//   0x1000e1400     160  -[SExp floatValue:at:]
//   0x1000e14a0      20  -[SExp boolValue:]
//   0x1000e14b4     272  -[SExp boolValue:at:]
//   0x1000e15c4     160  -[SExp description]
//   0x1000e1664      44  -[SExp subnode:]
//   0x1000e1690     280  -[SExp subnode:sibling:]
//   0x1000e17a8     744  -[SExp subnode:enumerator:sibling:]
//   0x1000e1a90     352  -[SExp each:]
//   0x1000e1bf0      16  -[SExp children]
//   0x1000e1c00      56  -[SExp setChildren:]
//   0x1000e1c38      16  -[SExp attributes]
//   0x1000e1c48      56  -[SExp setAttributes:]
//   0x1000e1c80      16  -[SExp token]
//   0x1000e1c90      56  -[SExp setToken:]
//   0x1000e1cc8      84  -[SExp .cxx_destruct]

; ======================================================================
; -[SExp dateFormatter]
; address 0x1000e07f8  size 124  kind objc
; ======================================================================
  1000e07f8  stp     x20, x19, [sp, #-0x20]!
  1000e07fc  stp     x29, x30, [sp, #0x10]
  1000e0800  add     x29, sp, #0x10
  1000e0804  adrp    x19, #0x10042d000
  1000e0808  ldr     x0, [x19, #0xb70]                        ; load g_10042db70
  1000e080c  cbnz    x0, loc_1000e0868                        ; if (g_10042db70 != 0)
  1000e0810  adrp    x8, #0x10041e000
  1000e0814  ldr     x0, [x8, #0x250]                         ; class NSDateFormatter
  1000e0818  adrp    x8, #0x100416000
  1000e081c  nop
  1000e0820  ldr     x1, [x8, #0xac8]
  1000e0824  bl      _objc_msgSend                            ; [NSDateFormatter alloc]
  1000e0828  adrp    x8, #0x100416000
  1000e082c  nop
  1000e0830  ldr     x1, [x8, #0xab8]
  1000e0834  bl      _objc_msgSend                            ; [[NSDateFormatter alloc] init]
  1000e0838  ldr     x8, [x19, #0xb70]                        ; load g_10042db70
  1000e083c  str     x0, [x19, #0xb70]                        ; store g_10042db70 = [[NSDateFormatter alloc] init]
  1000e0840  mov     x0, x8
  1000e0844  bl      _objc_release
  1000e0848  ldr     x0, [x19, #0xb70]                        ; load g_10042db70
  1000e084c  adrp    x8, #0x100419000
  1000e0850  nop
  1000e0854  ldr     x1, [x8, #0x4d8]
  1000e0858  adrp    x2, #0x1003c2000
  1000e085c  add     x2, x2, #0xaf0                           ; @"yyyyMMdd"
  1000e0860  bl      _objc_msgSend                            ; [g_10042db70 setDateFormat:@"yyyyMMdd"]
  1000e0864  ldr     x0, [x19, #0xb70]                        ; load g_10042db70
loc_1000e0868:
  1000e0868  ldp     x29, x30, [sp, #0x10]
  1000e086c  ldp     x20, x19, [sp], #0x20
  1000e0870  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[SExp sexp]
; address 0x1000e0874  size 56  kind objc
; ======================================================================
  1000e0874  stp     x29, x30, [sp, #-0x10]!
  1000e0878  mov     x29, sp
  1000e087c  adrp    x8, #0x10041e000
  1000e0880  ldr     x0, [x8, #0x488]                         ; class SExp
  1000e0884  adrp    x8, #0x100416000
  1000e0888  nop
  1000e088c  ldr     x1, [x8, #0xac8]
  1000e0890  bl      _objc_msgSend                            ; [SExp alloc]
  1000e0894  adrp    x8, #0x100416000
  1000e0898  nop
  1000e089c  ldr     x1, [x8, #0xab8]
  1000e08a0  bl      _objc_msgSend                            ; [[SExp alloc] init]
  1000e08a4  ldp     x29, x30, [sp], #0x10
  1000e08a8  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[SExp sexp:]
; address 0x1000e08ac  size 148  kind objc
; ======================================================================
  1000e08ac  stp     x22, x21, [sp, #-0x30]!
  1000e08b0  stp     x20, x19, [sp, #0x10]
  1000e08b4  stp     x29, x30, [sp, #0x20]
  1000e08b8  add     x29, sp, #0x20
  1000e08bc  mov     x0, x2
  1000e08c0  bl      _objc_retain
  1000e08c4  mov     x19, x0
  1000e08c8  adrp    x8, #0x10041e000
  1000e08cc  ldr     x0, [x8, #0x488]                         ; class SExp
  1000e08d0  adrp    x8, #0x10041b000
  1000e08d4  nop
  1000e08d8  ldr     x1, [x8, #0x250]
  1000e08dc  bl      _objc_msgSend                            ; [SExp sexp]
  1000e08e0  mov     x29, x29
  1000e08e4  bl      _objc_retainAutoreleasedReturnValue
  1000e08e8  mov     x20, x0
  1000e08ec  adrp    x8, #0x10041b000
  1000e08f0  nop
  1000e08f4  ldr     x1, [x8, #0x258]
  1000e08f8  mov     x2, x19
  1000e08fc  bl      _objc_msgSend                            ; [[SExp sexp] setToken:arg1]
  1000e0900  mov     x0, x19
  1000e0904  bl      _objc_release
  1000e0908  mov     x0, x20
  1000e090c  ldp     x29, x30, [sp, #0x20]
  1000e0910  ldp     x20, x19, [sp, #0x10]
  1000e0914  ldp     x22, x21, [sp], #0x30
  1000e0918  b       _objc_autoreleaseReturnValue
  1000e091c  mov     x21, x0
  1000e0920  b       loc_1000e0930
  1000e0924  mov     x21, x0
  1000e0928  mov     x0, x20
  1000e092c  bl      _objc_release
loc_1000e0930:
  1000e0930  mov     x0, x19
  1000e0934  bl      _objc_release
  1000e0938  mov     x0, x21
  1000e093c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[SExp sexp:root:]
; address 0x1000e0940  size 668  kind objc
; ======================================================================
  1000e0940  stp     x28, x27, [sp, #-0x60]!
  1000e0944  stp     x26, x25, [sp, #0x10]
  1000e0948  stp     x24, x23, [sp, #0x20]
  1000e094c  stp     x22, x21, [sp, #0x30]
  1000e0950  stp     x20, x19, [sp, #0x40]
  1000e0954  stp     x29, x30, [sp, #0x50]
  1000e0958  add     x29, sp, #0x50
  1000e095c  sub     sp, sp, #0xf0
  1000e0960  mov     x20, x3
  1000e0964  adrp    x8, #0x1003b0000
  1000e0968  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000e096c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000e0970  stur    x8, [x29, #-0x58]
  1000e0974  mov     x0, x2
  1000e0978  bl      _objc_retain
  1000e097c  mov     x19, x0
  1000e0980  adrp    x8, #0x100419000
  1000e0984  nop
  1000e0988  ldr     x1, [x8, #0x188]
  1000e098c  adrp    x2, #0x1003c2000
  1000e0990  add     x2, x2, #0xb10                           ; @"/"
  1000e0994  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@"/"]
  1000e0998  mov     x29, x29
  1000e099c  bl      _objc_retainAutoreleasedReturnValue
  1000e09a0  stp     xzr, xzr, [sp, #0x58]
  1000e09a4  stp     xzr, xzr, [sp, #0x48]
  1000e09a8  stp     xzr, xzr, [sp, #0x38]
  1000e09ac  stp     xzr, xzr, [sp, #0x28]
  1000e09b0  bl      _objc_retain
  1000e09b4  str     x0, [sp, #0x20]
  1000e09b8  adrp    x8, #0x100416000
  1000e09bc  nop
  1000e09c0  ldr     x1, [x8, #0xe00]
  1000e09c4  str     x1, [sp, #0x18]
  1000e09c8  add     x2, sp, #0x28
  1000e09cc  add     x3, sp, #0x68
  1000e09d0  mov     w4, #0x10
  1000e09d4  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"/"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000e09d8  mov     x25, x0
  1000e09dc  stp     x20, x19, [sp, #8]
  1000e09e0  cbz     x25, loc_1000e0ae0                       ; if ([[arg1 componentsSeparatedByString:@"/"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  1000e09e4  mov     x23, #0
  1000e09e8  mov     x20, #0
  1000e09ec  ldr     x8, [sp, #0x38]
  1000e09f0  ldr     x24, [x8]
  1000e09f4  adrp    x8, #0x10041b000
  1000e09f8  nop
  1000e09fc  adrp    x9, #0x100418000
  1000e0a00  add     x9, x9, #0x590                           ; &@selector(children)
  1000e0a04  ldr     x27, [x8, #0x260]
  1000e0a08  ldr     x28, [x9]
  1000e0a0c  adrp    x8, #0x100416000
  1000e0a10  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  1000e0a14  ldr     x21, [x8]
loc_1000e0a18:
  1000e0a18  mov     x22, #0
loc_1000e0a1c:
  1000e0a1c  ldr     x8, [sp, #0x38]
  1000e0a20  ldr     x8, [x8]
  1000e0a24  cmp     x8, x24
  1000e0a28  b.eq    loc_1000e0a34                            ; if (x8 == x24)
  1000e0a2c  ldr     x0, [sp, #0x20]
  1000e0a30  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 componentsSeparatedByString:@"/"])
loc_1000e0a34:
  1000e0a34  ldr     x8, [sp, #0x30]
  1000e0a38  ldr     x2, [x8, x22, lsl #3]
  1000e0a3c  adrp    x8, #0x10041e000
  1000e0a40  ldr     x0, [x8, #0x488]                         ; class SExp
  1000e0a44  mov     x1, x27
  1000e0a48  bl      _objc_msgSend                            ; [SExp sexp:x2]
  1000e0a4c  mov     x29, x29
  1000e0a50  bl      _objc_retainAutoreleasedReturnValue
  1000e0a54  mov     x26, x0
  1000e0a58  cbz     x23, loc_1000e0a94                       ; if (x23 == 0)
  1000e0a5c  mov     x0, x23
  1000e0a60  mov     x1, x28
  1000e0a64  bl      _objc_msgSend                            ; [x0 children]
  1000e0a68  mov     x29, x29
  1000e0a6c  bl      _objc_retainAutoreleasedReturnValue
  1000e0a70  mov     x19, x0
  1000e0a74  mov     x1, x21
  1000e0a78  mov     x2, x26
  1000e0a7c  bl      _objc_msgSend                            ; [[x0 children] addObject:[SExp sexp:x2]]
  1000e0a80  mov     x0, x19
  1000e0a84  bl      _objc_release
  1000e0a88  mov     x0, x23
  1000e0a8c  mov     x23, x26
  1000e0a90  b       loc_1000e0ab0
loc_1000e0a94:
  1000e0a94  mov     x0, x26
  1000e0a98  bl      _objc_retain
  1000e0a9c  mov     x23, x0
  1000e0aa0  mov     x0, x20
  1000e0aa4  bl      _objc_release
  1000e0aa8  mov     x0, #0
  1000e0aac  mov     x20, x23
loc_1000e0ab0:
  1000e0ab0  bl      _objc_release
  1000e0ab4  add     x22, x22, #1
  1000e0ab8  cmp     x22, x25
  1000e0abc  b.lo    loc_1000e0a1c                            ; if ((x22 + 1) <u [[arg1 componentsSeparatedByString:@"/"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  1000e0ac0  add     x2, sp, #0x28
  1000e0ac4  add     x3, sp, #0x68
  1000e0ac8  mov     w4, #0x10
  1000e0acc  ldp     x1, x0, [sp, #0x18]
  1000e0ad0  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"/"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000e0ad4  mov     x25, x0
  1000e0ad8  cbnz    x25, loc_1000e0a18                       ; if ([[arg1 componentsSeparatedByString:@"/"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
  1000e0adc  b       loc_1000e0ae8
loc_1000e0ae0:
  1000e0ae0  mov     x26, #0
  1000e0ae4  mov     x20, #0
loc_1000e0ae8:
  1000e0ae8  ldr     x19, [sp, #0x20]
  1000e0aec  mov     x0, x19
  1000e0af0  bl      _objc_release
  1000e0af4  mov     x0, x20
  1000e0af8  bl      _objc_retainAutorelease
  1000e0afc  ldr     x8, [sp, #8]
  1000e0b00  str     x0, [x8]                                 ; arg2[+0x0] = x0
  1000e0b04  bl      _objc_release
  1000e0b08  mov     x0, x19
  1000e0b0c  bl      _objc_release
  1000e0b10  ldr     x0, [sp, #0x10]
  1000e0b14  bl      _objc_release
  1000e0b18  ldur    x8, [x29, #-0x58]
  1000e0b1c  adrp    x9, #0x1003b0000
  1000e0b20  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000e0b24  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000e0b28  sub     x8, x9, x8
  1000e0b2c  cbnz    x8, loc_1000e0b54                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e0b30  mov     x0, x26
  1000e0b34  sub     sp, x29, #0x50
  1000e0b38  ldp     x29, x30, [sp, #0x50]
  1000e0b3c  ldp     x20, x19, [sp, #0x40]
  1000e0b40  ldp     x22, x21, [sp, #0x30]
  1000e0b44  ldp     x24, x23, [sp, #0x20]
  1000e0b48  ldp     x26, x25, [sp, #0x10]
  1000e0b4c  ldp     x28, x27, [sp], #0x60
  1000e0b50  b       _objc_autoreleaseReturnValue
loc_1000e0b54:
  1000e0b54  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000e0b58  mov     x21, x0
  1000e0b5c  b       loc_1000e0b7c
  1000e0b60  mov     x21, x0
  1000e0b64  b       loc_1000e0b74
  1000e0b68  mov     x21, x0
  1000e0b6c  mov     x0, x19
  1000e0b70  bl      _objc_release
loc_1000e0b74:
  1000e0b74  mov     x0, x26
  1000e0b78  bl      _objc_release
loc_1000e0b7c:
  1000e0b7c  ldr     x19, [sp, #0x10]
  1000e0b80  mov     x22, x20
  1000e0b84  ldr     x20, [sp, #0x20]
  1000e0b88  mov     x0, x20
  1000e0b8c  bl      _objc_release
  1000e0b90  mov     x0, x23
  1000e0b94  bl      _objc_release
  1000e0b98  mov     x0, x22
  1000e0b9c  bl      _objc_release
  1000e0ba0  mov     x0, x20
  1000e0ba4  bl      _objc_release
loc_1000e0ba8:
  1000e0ba8  mov     x0, x19
  1000e0bac  bl      _objc_release
  1000e0bb0  mov     x0, x21
  1000e0bb4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e0bb8  mov     x21, x0
  1000e0bbc  b       loc_1000e0b7c
  1000e0bc0  mov     x21, x0
  1000e0bc4  b       loc_1000e0ba8
  1000e0bc8  str     x19, [sp, #0x10]
  1000e0bcc  mov     x21, x0
  1000e0bd0  mov     x23, #0
  1000e0bd4  mov     x20, #0
  1000e0bd8  b       loc_1000e0b7c

; ======================================================================
; -[SExp addAttribute:]
; address 0x1000e0bdc  size 156  kind objc
; ======================================================================
  1000e0bdc  stp     x22, x21, [sp, #-0x30]!
  1000e0be0  stp     x20, x19, [sp, #0x10]
  1000e0be4  stp     x29, x30, [sp, #0x20]
  1000e0be8  add     x29, sp, #0x20
  1000e0bec  mov     x20, x0
  1000e0bf0  mov     x0, x2
  1000e0bf4  bl      _objc_retain
  1000e0bf8  mov     x19, x0
  1000e0bfc  adrp    x8, #0x10041b000
  1000e0c00  nop
  1000e0c04  ldr     x1, [x8, #0x268]
  1000e0c08  mov     x0, x20
  1000e0c0c  bl      _objc_msgSend                            ; [self attributes]
  1000e0c10  mov     x29, x29
  1000e0c14  bl      _objc_retainAutoreleasedReturnValue
  1000e0c18  mov     x21, x0
  1000e0c1c  adrp    x8, #0x100416000
  1000e0c20  nop
  1000e0c24  ldr     x1, [x8, #0xd90]
  1000e0c28  mov     x2, x19
  1000e0c2c  bl      _objc_msgSend                            ; [[self attributes] addObject:arg1]
  1000e0c30  mov     x0, x21
  1000e0c34  bl      _objc_release
  1000e0c38  mov     x0, x19
  1000e0c3c  bl      _objc_release
  1000e0c40  mov     x0, x20
  1000e0c44  ldp     x29, x30, [sp, #0x20]
  1000e0c48  ldp     x20, x19, [sp, #0x10]
  1000e0c4c  ldp     x22, x21, [sp], #0x30
  1000e0c50  ret
  1000e0c54  mov     x20, x0
  1000e0c58  b       loc_1000e0c68
  1000e0c5c  mov     x20, x0
  1000e0c60  mov     x0, x21
  1000e0c64  bl      _objc_release
loc_1000e0c68:
  1000e0c68  mov     x0, x19
  1000e0c6c  bl      _objc_release
  1000e0c70  mov     x0, x20
  1000e0c74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp addIntAttribute:]
; address 0x1000e0c78  size 204  kind objc
; ======================================================================
  1000e0c78  stp     x22, x21, [sp, #-0x30]!
  1000e0c7c  stp     x20, x19, [sp, #0x10]
  1000e0c80  stp     x29, x30, [sp, #0x20]
  1000e0c84  add     x29, sp, #0x20
  1000e0c88  sub     sp, sp, #0x10
  1000e0c8c  mov     x21, x2
  1000e0c90  mov     x20, x0
  1000e0c94  adrp    x8, #0x10041b000
  1000e0c98  nop
  1000e0c9c  ldr     x1, [x8, #0x268]
  1000e0ca0  bl      _objc_msgSend                            ; [self attributes]
  1000e0ca4  mov     x29, x29
  1000e0ca8  bl      _objc_retainAutoreleasedReturnValue
  1000e0cac  mov     x19, x0
  1000e0cb0  adrp    x8, #0x10041d000
  1000e0cb4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e0cb8  adrp    x8, #0x100416000
  1000e0cbc  nop
  1000e0cc0  ldr     x1, [x8, #0xee8]
  1000e0cc4  str     x21, [sp]
  1000e0cc8  adrp    x2, #0x1003ba000
  1000e0ccc  add     x2, x2, #0x1f0                           ; @"%d"
  1000e0cd0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", arg1]
  1000e0cd4  mov     x29, x29
  1000e0cd8  bl      _objc_retainAutoreleasedReturnValue
  1000e0cdc  mov     x21, x0
  1000e0ce0  adrp    x8, #0x100416000
  1000e0ce4  nop
  1000e0ce8  ldr     x1, [x8, #0xd90]
  1000e0cec  mov     x0, x19
  1000e0cf0  mov     x2, x21
  1000e0cf4  bl      _objc_msgSend                            ; [[self attributes] addObject:[NSString stringWithFormat:@"%d", arg1]]
  1000e0cf8  mov     x0, x21
  1000e0cfc  bl      _objc_release
  1000e0d00  mov     x0, x19
  1000e0d04  bl      _objc_release
  1000e0d08  mov     x0, x20
  1000e0d0c  sub     sp, x29, #0x20
  1000e0d10  ldp     x29, x30, [sp, #0x20]
  1000e0d14  ldp     x20, x19, [sp, #0x10]
  1000e0d18  ldp     x22, x21, [sp], #0x30
  1000e0d1c  ret
  1000e0d20  mov     x20, x0
  1000e0d24  b       loc_1000e0d34
  1000e0d28  mov     x20, x0
  1000e0d2c  mov     x0, x21
  1000e0d30  bl      _objc_release
loc_1000e0d34:
  1000e0d34  mov     x0, x19
  1000e0d38  bl      _objc_release
  1000e0d3c  mov     x0, x20
  1000e0d40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp addFloatAttribute:]
; address 0x1000e0d44  size 216  kind objc
; ======================================================================
  1000e0d44  stp     d9, d8, [sp, #-0x40]!
  1000e0d48  stp     x22, x21, [sp, #0x10]
  1000e0d4c  stp     x20, x19, [sp, #0x20]
  1000e0d50  stp     x29, x30, [sp, #0x30]
  1000e0d54  add     x29, sp, #0x30
  1000e0d58  sub     sp, sp, #0x10
  1000e0d5c  mov     v8.16b, v0.16b
  1000e0d60  mov     x20, x0
  1000e0d64  adrp    x8, #0x10041b000
  1000e0d68  nop
  1000e0d6c  ldr     x1, [x8, #0x268]
  1000e0d70  bl      _objc_msgSend                            ; [self attributes]
  1000e0d74  mov     x29, x29
  1000e0d78  bl      _objc_retainAutoreleasedReturnValue
  1000e0d7c  mov     x19, x0
  1000e0d80  adrp    x8, #0x10041d000
  1000e0d84  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e0d88  fcvt    d0, s8
  1000e0d8c  adrp    x8, #0x100416000
  1000e0d90  nop
  1000e0d94  ldr     x1, [x8, #0xee8]
  1000e0d98  str     d0, [sp]
  1000e0d9c  adrp    x2, #0x1003bf000
  1000e0da0  add     x2, x2, #0x590                           ; @"%f"
  1000e0da4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%f", arg1]
  1000e0da8  mov     x29, x29
  1000e0dac  bl      _objc_retainAutoreleasedReturnValue
  1000e0db0  mov     x21, x0
  1000e0db4  adrp    x8, #0x100416000
  1000e0db8  nop
  1000e0dbc  ldr     x1, [x8, #0xd90]
  1000e0dc0  mov     x0, x19
  1000e0dc4  mov     x2, x21
  1000e0dc8  bl      _objc_msgSend                            ; [[self attributes] addObject:[NSString stringWithFormat:@"%f", arg1]]
  1000e0dcc  mov     x0, x21
  1000e0dd0  bl      _objc_release
  1000e0dd4  mov     x0, x19
  1000e0dd8  bl      _objc_release
  1000e0ddc  mov     x0, x20
  1000e0de0  sub     sp, x29, #0x30
  1000e0de4  ldp     x29, x30, [sp, #0x30]
  1000e0de8  ldp     x20, x19, [sp, #0x20]
  1000e0dec  ldp     x22, x21, [sp, #0x10]
  1000e0df0  ldp     d9, d8, [sp], #0x40
  1000e0df4  ret
  1000e0df8  mov     x20, x0
  1000e0dfc  b       loc_1000e0e0c
  1000e0e00  mov     x20, x0
  1000e0e04  mov     x0, x21
  1000e0e08  bl      _objc_release
loc_1000e0e0c:
  1000e0e0c  mov     x0, x19
  1000e0e10  bl      _objc_release
  1000e0e14  mov     x0, x20
  1000e0e18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp addDateAttribute:]
; address 0x1000e0e1c  size 280  kind objc
; ======================================================================
  1000e0e1c  stp     x24, x23, [sp, #-0x40]!
  1000e0e20  stp     x22, x21, [sp, #0x10]
  1000e0e24  stp     x20, x19, [sp, #0x20]
  1000e0e28  stp     x29, x30, [sp, #0x30]
  1000e0e2c  add     x29, sp, #0x30
  1000e0e30  mov     x20, x0
  1000e0e34  mov     x0, x2
  1000e0e38  bl      _objc_retain
  1000e0e3c  mov     x19, x0
  1000e0e40  adrp    x8, #0x10041b000
  1000e0e44  nop
  1000e0e48  ldr     x1, [x8, #0x268]
  1000e0e4c  mov     x0, x20
  1000e0e50  bl      _objc_msgSend                            ; [self attributes]
  1000e0e54  mov     x29, x29
  1000e0e58  bl      _objc_retainAutoreleasedReturnValue
  1000e0e5c  mov     x21, x0
  1000e0e60  adrp    x8, #0x10041b000
  1000e0e64  nop
  1000e0e68  ldr     x1, [x8, #0x270]
  1000e0e6c  mov     x0, x20
  1000e0e70  bl      _objc_msgSend                            ; [self dateFormatter]
  1000e0e74  mov     x29, x29
  1000e0e78  bl      _objc_retainAutoreleasedReturnValue
  1000e0e7c  mov     x22, x0
  1000e0e80  adrp    x8, #0x10041b000
  1000e0e84  nop
  1000e0e88  ldr     x1, [x8, #0x278]
  1000e0e8c  mov     x2, x19
  1000e0e90  bl      _objc_msgSend                            ; [[self dateFormatter] stringFromDate:arg1]
  1000e0e94  mov     x29, x29
  1000e0e98  bl      _objc_retainAutoreleasedReturnValue
  1000e0e9c  mov     x23, x0
  1000e0ea0  adrp    x8, #0x100416000
  1000e0ea4  nop
  1000e0ea8  ldr     x1, [x8, #0xd90]
  1000e0eac  mov     x0, x21
  1000e0eb0  mov     x2, x23
  1000e0eb4  bl      _objc_msgSend                            ; [[self attributes] addObject:[[self dateFormatter] stringFromDate:arg1]]
  1000e0eb8  mov     x0, x23
  1000e0ebc  bl      _objc_release
  1000e0ec0  mov     x0, x22
  1000e0ec4  bl      _objc_release
  1000e0ec8  mov     x0, x21
  1000e0ecc  bl      _objc_release
  1000e0ed0  mov     x0, x19
  1000e0ed4  bl      _objc_release
  1000e0ed8  mov     x0, x20
  1000e0edc  ldp     x29, x30, [sp, #0x30]
  1000e0ee0  ldp     x20, x19, [sp, #0x20]
  1000e0ee4  ldp     x22, x21, [sp, #0x10]
  1000e0ee8  ldp     x24, x23, [sp], #0x40
  1000e0eec  ret
  1000e0ef0  mov     x20, x0
  1000e0ef4  b       loc_1000e0f24
  1000e0ef8  mov     x20, x0
  1000e0efc  b       loc_1000e0f1c
  1000e0f00  mov     x20, x0
  1000e0f04  b       loc_1000e0f14
  1000e0f08  mov     x20, x0
  1000e0f0c  mov     x0, x23
  1000e0f10  bl      _objc_release
loc_1000e0f14:
  1000e0f14  mov     x0, x22
  1000e0f18  bl      _objc_release
loc_1000e0f1c:
  1000e0f1c  mov     x0, x21
  1000e0f20  bl      _objc_release
loc_1000e0f24:
  1000e0f24  mov     x0, x19
  1000e0f28  bl      _objc_release
  1000e0f2c  mov     x0, x20
  1000e0f30  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp addBoolAttribute:]
; address 0x1000e0f34  size 140  kind objc
; ======================================================================
  1000e0f34  stp     x22, x21, [sp, #-0x30]!
  1000e0f38  stp     x20, x19, [sp, #0x10]
  1000e0f3c  stp     x29, x30, [sp, #0x20]
  1000e0f40  add     x29, sp, #0x20
  1000e0f44  mov     x21, x2
  1000e0f48  mov     x19, x0
  1000e0f4c  adrp    x8, #0x10041b000
  1000e0f50  nop
  1000e0f54  ldr     x1, [x8, #0x268]
  1000e0f58  bl      _objc_msgSend                            ; [self attributes]
  1000e0f5c  mov     x29, x29
  1000e0f60  bl      _objc_retainAutoreleasedReturnValue
  1000e0f64  mov     x20, x0
  1000e0f68  adrp    x8, #0x1003c2000
  1000e0f6c  add     x8, x8, #0xb50                           ; @"false"
  1000e0f70  adrp    x9, #0x1003c2000
  1000e0f74  add     x9, x9, #0xb30                           ; @"true"
  1000e0f78  cmp     w21, #0
  1000e0f7c  csel    x2, x9, x8, ne
  1000e0f80  adrp    x8, #0x100416000
  1000e0f84  nop
  1000e0f88  ldr     x1, [x8, #0xd90]
  1000e0f8c  bl      _objc_msgSend                            ; [[self attributes] addObject:(arg1 != 0 ? @"true" : @"false")]
  1000e0f90  mov     x0, x20
  1000e0f94  bl      _objc_release
  1000e0f98  mov     x0, x19
  1000e0f9c  ldp     x29, x30, [sp, #0x20]
  1000e0fa0  ldp     x20, x19, [sp, #0x10]
  1000e0fa4  ldp     x22, x21, [sp], #0x30
  1000e0fa8  ret
  1000e0fac  mov     x19, x0
  1000e0fb0  mov     x0, x20
  1000e0fb4  bl      _objc_release
  1000e0fb8  mov     x0, x19
  1000e0fbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp init]
; address 0x1000e0fc0  size 316  kind objc
; ======================================================================
  1000e0fc0  stp     x24, x23, [sp, #-0x40]!
  1000e0fc4  stp     x22, x21, [sp, #0x10]
  1000e0fc8  stp     x20, x19, [sp, #0x20]
  1000e0fcc  stp     x29, x30, [sp, #0x30]
  1000e0fd0  add     x29, sp, #0x30
  1000e0fd4  sub     sp, sp, #0x10
  1000e0fd8  str     x0, [sp]
  1000e0fdc  adrp    x8, #0x10041f000
  1000e0fe0  ldr     x8, [x8, #0x48]
  1000e0fe4  str     x8, [sp, #8]
  1000e0fe8  adrp    x8, #0x100416000
  1000e0fec  nop
  1000e0ff0  ldr     x1, [x8, #0xab8]
  1000e0ff4  mov     x20, #0
  1000e0ff8  mov     x0, sp
  1000e0ffc  bl      _objc_msgSendSuper2                      ; [super init]
  1000e1000  mov     x19, x0
  1000e1004  cbz     x19, loc_1000e10b4                       ; if (self == 0)
  1000e1008  mov     x20, x19
  1000e100c  adrp    x23, #0x10041d000
  1000e1010  ldr     x0, [x23, #0xf28]                        ; class NSMutableArray
  1000e1014  adrp    x8, #0x10041b000
  1000e1018  nop
  1000e101c  ldr     x21, [x8, #0x280]
  1000e1020  mov     w2, #5
  1000e1024  mov     x1, x21
  1000e1028  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:5]
  1000e102c  mov     x29, x29
  1000e1030  bl      _objc_retainAutoreleasedReturnValue
  1000e1034  mov     x22, x0
  1000e1038  adrp    x8, #0x10041b000
  1000e103c  nop
  1000e1040  ldr     x1, [x8, #0x288]
  1000e1044  mov     x0, x19
  1000e1048  mov     x2, x22
  1000e104c  bl      _objc_msgSend                            ; [self setChildren:[NSMutableArray arrayWithCapacity:5]]
  1000e1050  mov     x20, x19
  1000e1054  mov     x0, x22
  1000e1058  bl      _objc_release
  1000e105c  ldr     x0, [x23, #0xf28]                        ; class NSMutableArray
  1000e1060  mov     w2, #1
  1000e1064  mov     x1, x21
  1000e1068  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:1]
  1000e106c  mov     x29, x29
  1000e1070  bl      _objc_retainAutoreleasedReturnValue
  1000e1074  mov     x22, x0
  1000e1078  adrp    x8, #0x10041b000
  1000e107c  nop
  1000e1080  ldr     x1, [x8, #0x290]
  1000e1084  mov     x0, x19
  1000e1088  mov     x2, x22
  1000e108c  bl      _objc_msgSend                            ; [self setAttributes:[NSMutableArray arrayWithCapacity:1]]
  1000e1090  mov     x20, x19
  1000e1094  mov     x0, x22
  1000e1098  bl      _objc_release
  1000e109c  adrp    x8, #0x10041b000
  1000e10a0  nop
  1000e10a4  ldr     x1, [x8, #0x258]
  1000e10a8  mov     x2, #0
  1000e10ac  mov     x0, x19
  1000e10b0  bl      _objc_msgSend                            ; [self setToken:0]
loc_1000e10b4:
  1000e10b4  mov     x0, x19
  1000e10b8  sub     sp, x29, #0x30
  1000e10bc  ldp     x29, x30, [sp, #0x30]
  1000e10c0  ldp     x20, x19, [sp, #0x20]
  1000e10c4  ldp     x22, x21, [sp, #0x10]
  1000e10c8  ldp     x24, x23, [sp], #0x40
  1000e10cc  ret
  1000e10d0  mov     x21, x0
  1000e10d4  b       loc_1000e10ec
  1000e10d8  b       loc_1000e10dc
loc_1000e10dc:
  1000e10dc  mov     x21, x0
  1000e10e0  mov     x0, x22
  1000e10e4  bl      _objc_release
  1000e10e8  mov     x20, x19
loc_1000e10ec:
  1000e10ec  mov     x0, x20
  1000e10f0  bl      _objc_release
  1000e10f4  mov     x0, x21
  1000e10f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp stringValue:]
; address 0x1000e10fc  size 20  kind objc
; ======================================================================
  1000e10fc  mov     x3, #0
  1000e1100  adrp    x8, #0x10041b000
  1000e1104  nop
  1000e1108  ldr     x1, [x8, #0x298]
  1000e110c  b       _objc_msgSend                            ; [self stringValue:arg1 at:0]

; ======================================================================
; -[SExp stringValue:at:]
; address 0x1000e1110  size 300  kind objc
; ======================================================================
  1000e1110  stp     x26, x25, [sp, #-0x50]!
  1000e1114  stp     x24, x23, [sp, #0x10]
  1000e1118  stp     x22, x21, [sp, #0x20]
  1000e111c  stp     x20, x19, [sp, #0x30]
  1000e1120  stp     x29, x30, [sp, #0x40]
  1000e1124  add     x29, sp, #0x40
  1000e1128  mov     x20, x3
  1000e112c  mov     x19, x2
  1000e1130  mov     x21, x0
  1000e1134  adrp    x8, #0x10041b000
  1000e1138  nop
  1000e113c  ldr     x23, [x8, #0x268]
  1000e1140  mov     x1, x23
  1000e1144  bl      _objc_msgSend                            ; [self attributes]
  1000e1148  mov     x29, x29
  1000e114c  bl      _objc_retainAutoreleasedReturnValue
  1000e1150  mov     x22, x0
  1000e1154  cbz     x22, loc_1000e11e8                       ; if ([self attributes] == 0)
  1000e1158  mov     x0, x21
  1000e115c  mov     x1, x23
  1000e1160  bl      _objc_msgSend                            ; [self attributes]
  1000e1164  mov     x29, x29
  1000e1168  bl      _objc_retainAutoreleasedReturnValue
  1000e116c  mov     x24, x0
  1000e1170  adrp    x8, #0x100416000
  1000e1174  nop
  1000e1178  ldr     x1, [x8, #0xe30]
  1000e117c  bl      _objc_msgSend                            ; [[self attributes] count]
  1000e1180  mov     x25, x0
  1000e1184  mov     x0, x24
  1000e1188  bl      _objc_release
  1000e118c  mov     x0, x22
  1000e1190  bl      _objc_release
  1000e1194  cmp     x25, x20
  1000e1198  b.ls    loc_1000e11f0                            ; if ([[self attributes] count] <=u arg2)
  1000e119c  mov     x0, x21
  1000e11a0  mov     x1, x23
  1000e11a4  bl      _objc_msgSend                            ; [self attributes]
  1000e11a8  mov     x29, x29
  1000e11ac  bl      _objc_retainAutoreleasedReturnValue
  1000e11b0  mov     x21, x0
  1000e11b4  adrp    x8, #0x100416000
  1000e11b8  nop
  1000e11bc  ldr     x1, [x8, #0xc30]
  1000e11c0  mov     x2, x20
  1000e11c4  bl      _objc_msgSend                            ; [[self attributes] objectAtIndex:arg2]
  1000e11c8  mov     x29, x29
  1000e11cc  bl      _objc_retainAutoreleasedReturnValue
  1000e11d0  bl      _objc_autorelease
  1000e11d4  str     x0, [x19]                                ; arg1[+0x0] = [[self attributes] objectAtIndex:arg2]
  1000e11d8  mov     x0, x21
  1000e11dc  bl      _objc_release
  1000e11e0  mov     w0, #1
  1000e11e4  b       loc_1000e11f4
loc_1000e11e8:
  1000e11e8  mov     x0, x22
  1000e11ec  bl      _objc_release
loc_1000e11f0:
  1000e11f0  mov     w0, #0
loc_1000e11f4:
  1000e11f4  ldp     x29, x30, [sp, #0x40]
  1000e11f8  ldp     x20, x19, [sp, #0x30]
  1000e11fc  ldp     x22, x21, [sp, #0x20]
  1000e1200  ldp     x24, x23, [sp, #0x10]
  1000e1204  ldp     x26, x25, [sp], #0x50
  1000e1208  ret
  1000e120c  mov     x19, x0
  1000e1210  b       loc_1000e1220
  1000e1214  mov     x19, x0
  1000e1218  mov     x0, x24
  1000e121c  bl      _objc_release
loc_1000e1220:
  1000e1220  mov     x0, x22
  1000e1224  b       loc_1000e1230
  1000e1228  mov     x19, x0
  1000e122c  mov     x0, x21
loc_1000e1230:
  1000e1230  bl      _objc_release
  1000e1234  mov     x0, x19
  1000e1238  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp intValue:]
; address 0x1000e123c  size 20  kind objc
; ======================================================================
  1000e123c  mov     x3, #0
  1000e1240  adrp    x8, #0x10041b000
  1000e1244  nop
  1000e1248  ldr     x1, [x8, #0x2a0]
  1000e124c  b       _objc_msgSend                            ; [self intValue:arg1 at:0]

; ======================================================================
; -[SExp intValue:at:]
; address 0x1000e1250  size 160  kind objc
; ======================================================================
  1000e1250  stp     x22, x21, [sp, #-0x30]!
  1000e1254  stp     x20, x19, [sp, #0x10]
  1000e1258  stp     x29, x30, [sp, #0x20]
  1000e125c  add     x29, sp, #0x20
  1000e1260  sub     sp, sp, #0x10
  1000e1264  mov     x20, x2
  1000e1268  str     xzr, [sp, #8]
  1000e126c  adrp    x8, #0x10041b000
  1000e1270  nop
  1000e1274  ldr     x1, [x8, #0x298]
  1000e1278  mov     x19, #0
  1000e127c  add     x2, sp, #8
  1000e1280  bl      _objc_msgSend                            ; [self stringValue:&sp[0x8] at:arg2]
  1000e1284  mov     x21, x0
  1000e1288  ldr     x0, [sp, #8]
  1000e128c  bl      _objc_retain
  1000e1290  mov     x19, x0
  1000e1294  cbz     w21, loc_1000e12b8                       ; if ([self stringValue:&sp[0x8] at:arg2] == 0)
  1000e1298  adrp    x8, #0x100417000
  1000e129c  nop
  1000e12a0  ldr     x1, [x8, #0x110]
  1000e12a4  mov     x0, x19
  1000e12a8  bl      _objc_msgSend                            ; [0 intValue]
  1000e12ac  str     w0, [x20]                                ; arg1[+0x0] = [0 intValue]
  1000e12b0  mov     w20, #1
  1000e12b4  b       loc_1000e12bc
loc_1000e12b8:
  1000e12b8  mov     w20, #0
loc_1000e12bc:
  1000e12bc  mov     x0, x19
  1000e12c0  bl      _objc_release
  1000e12c4  mov     x0, x20
  1000e12c8  sub     sp, x29, #0x20
  1000e12cc  ldp     x29, x30, [sp, #0x20]
  1000e12d0  ldp     x20, x19, [sp, #0x10]
  1000e12d4  ldp     x22, x21, [sp], #0x30
  1000e12d8  ret
  1000e12dc  mov     x20, x0
  1000e12e0  mov     x0, x19
  1000e12e4  bl      _objc_release
  1000e12e8  mov     x0, x20
  1000e12ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp dateValue:]
; address 0x1000e12f0  size 20  kind objc
; ======================================================================
  1000e12f0  mov     x3, #0
  1000e12f4  adrp    x8, #0x10041b000
  1000e12f8  nop
  1000e12fc  ldr     x1, [x8, #0x2a8]
  1000e1300  b       _objc_msgSend                            ; [self dateValue:arg1 at:0]

; ======================================================================
; -[SExp dateValue:at:]
; address 0x1000e1304  size 232  kind objc
; ======================================================================
  1000e1304  stp     x22, x21, [sp, #-0x30]!
  1000e1308  stp     x20, x19, [sp, #0x10]
  1000e130c  stp     x29, x30, [sp, #0x20]
  1000e1310  add     x29, sp, #0x20
  1000e1314  sub     sp, sp, #0x10
  1000e1318  mov     x20, x2
  1000e131c  mov     x21, x0
  1000e1320  str     xzr, [sp, #8]
  1000e1324  adrp    x8, #0x10041b000
  1000e1328  nop
  1000e132c  ldr     x1, [x8, #0x298]
  1000e1330  mov     x19, #0
  1000e1334  add     x2, sp, #8
  1000e1338  bl      _objc_msgSend                            ; [self stringValue:&sp[0x8] at:arg2]
  1000e133c  mov     x22, x0
  1000e1340  ldr     x0, [sp, #8]
  1000e1344  bl      _objc_retain
  1000e1348  mov     x19, x0
  1000e134c  cbz     w22, loc_1000e13a4                       ; if ([self stringValue:&sp[0x8] at:arg2] == 0)
  1000e1350  adrp    x8, #0x10041b000
  1000e1354  nop
  1000e1358  ldr     x1, [x8, #0x270]
  1000e135c  mov     x0, x21
  1000e1360  bl      _objc_msgSend                            ; [self dateFormatter]
  1000e1364  mov     x29, x29
  1000e1368  bl      _objc_retainAutoreleasedReturnValue
  1000e136c  mov     x21, x0
  1000e1370  adrp    x8, #0x100419000
  1000e1374  nop
  1000e1378  ldr     x1, [x8, #0x4e0]
  1000e137c  mov     x2, x19
  1000e1380  bl      _objc_msgSend                            ; [[self dateFormatter] dateFromString:0]
  1000e1384  mov     x29, x29
  1000e1388  bl      _objc_retainAutoreleasedReturnValue
  1000e138c  bl      _objc_autorelease
  1000e1390  str     x0, [x20]                                ; arg1[+0x0] = [[self dateFormatter] dateFromString:0]
  1000e1394  mov     x0, x21
  1000e1398  bl      _objc_release
  1000e139c  mov     w20, #1
  1000e13a0  b       loc_1000e13a8
loc_1000e13a4:
  1000e13a4  mov     w20, #0
loc_1000e13a8:
  1000e13a8  mov     x0, x19
  1000e13ac  bl      _objc_release
  1000e13b0  mov     x0, x20
  1000e13b4  sub     sp, x29, #0x20
  1000e13b8  ldp     x29, x30, [sp, #0x20]
  1000e13bc  ldp     x20, x19, [sp, #0x10]
  1000e13c0  ldp     x22, x21, [sp], #0x30
  1000e13c4  ret
  1000e13c8  mov     x20, x0
  1000e13cc  b       loc_1000e13dc
  1000e13d0  mov     x20, x0
  1000e13d4  mov     x0, x21
  1000e13d8  bl      _objc_release
loc_1000e13dc:
  1000e13dc  mov     x0, x19
  1000e13e0  bl      _objc_release
  1000e13e4  mov     x0, x20
  1000e13e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp floatValue:]
; address 0x1000e13ec  size 20  kind objc
; ======================================================================
  1000e13ec  mov     x3, #0
  1000e13f0  adrp    x8, #0x10041b000
  1000e13f4  nop
  1000e13f8  ldr     x1, [x8, #0x2b0]
  1000e13fc  b       _objc_msgSend                            ; [self floatValue:arg1 at:0]

; ======================================================================
; -[SExp floatValue:at:]
; address 0x1000e1400  size 160  kind objc
; ======================================================================
  1000e1400  stp     x22, x21, [sp, #-0x30]!
  1000e1404  stp     x20, x19, [sp, #0x10]
  1000e1408  stp     x29, x30, [sp, #0x20]
  1000e140c  add     x29, sp, #0x20
  1000e1410  sub     sp, sp, #0x10
  1000e1414  mov     x20, x2
  1000e1418  str     xzr, [sp, #8]
  1000e141c  adrp    x8, #0x10041b000
  1000e1420  nop
  1000e1424  ldr     x1, [x8, #0x298]
  1000e1428  mov     x19, #0
  1000e142c  add     x2, sp, #8
  1000e1430  bl      _objc_msgSend                            ; [self stringValue:&sp[0x8] at:arg2]
  1000e1434  mov     x21, x0
  1000e1438  ldr     x0, [sp, #8]
  1000e143c  bl      _objc_retain
  1000e1440  mov     x19, x0
  1000e1444  cbz     w21, loc_1000e1468                       ; if ([self stringValue:&sp[0x8] at:arg2] == 0)
  1000e1448  adrp    x8, #0x100417000
  1000e144c  nop
  1000e1450  ldr     x1, [x8, #0x48]
  1000e1454  mov     x0, x19
  1000e1458  bl      _objc_msgSend                            ; [0 floatValue]
  1000e145c  str     s0, [x20]                                ; arg1[+0x0] = [0 floatValue]
  1000e1460  mov     w20, #1
  1000e1464  b       loc_1000e146c
loc_1000e1468:
  1000e1468  mov     w20, #0
loc_1000e146c:
  1000e146c  mov     x0, x19
  1000e1470  bl      _objc_release
  1000e1474  mov     x0, x20
  1000e1478  sub     sp, x29, #0x20
  1000e147c  ldp     x29, x30, [sp, #0x20]
  1000e1480  ldp     x20, x19, [sp, #0x10]
  1000e1484  ldp     x22, x21, [sp], #0x30
  1000e1488  ret
  1000e148c  mov     x20, x0
  1000e1490  mov     x0, x19
  1000e1494  bl      _objc_release
  1000e1498  mov     x0, x20
  1000e149c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp boolValue:]
; address 0x1000e14a0  size 20  kind objc
; ======================================================================
  1000e14a0  mov     x3, #0
  1000e14a4  adrp    x8, #0x10041b000
  1000e14a8  nop
  1000e14ac  ldr     x1, [x8, #0x2b8]
  1000e14b0  b       _objc_msgSend                            ; [self boolValue:arg1 at:0]

; ======================================================================
; -[SExp boolValue:at:]
; address 0x1000e14b4  size 272  kind objc
; ======================================================================
  1000e14b4  stp     x22, x21, [sp, #-0x30]!
  1000e14b8  stp     x20, x19, [sp, #0x10]
  1000e14bc  stp     x29, x30, [sp, #0x20]
  1000e14c0  add     x29, sp, #0x20
  1000e14c4  sub     sp, sp, #0x10
  1000e14c8  mov     x20, x2
  1000e14cc  str     xzr, [sp, #8]
  1000e14d0  adrp    x8, #0x10041b000
  1000e14d4  nop
  1000e14d8  ldr     x1, [x8, #0x298]
  1000e14dc  mov     x19, #0
  1000e14e0  add     x2, sp, #8
  1000e14e4  bl      _objc_msgSend                            ; [self stringValue:&sp[0x8] at:arg2]
  1000e14e8  mov     x21, x0
  1000e14ec  ldr     x0, [sp, #8]
  1000e14f0  bl      _objc_retain
  1000e14f4  mov     x19, x0
  1000e14f8  cmp     x19, #0
  1000e14fc  cset    w8, ne
  1000e1500  and     w8, w21, w8
  1000e1504  cmp     w8, #1
  1000e1508  b.ne    loc_1000e1550                            ; if (([self stringValue:&sp[0x8] at:arg2] & (0 != 0)) != 1)
  1000e150c  adrp    x8, #0x100417000
  1000e1510  nop
  1000e1514  ldr     x1, [x8, #0xc58]
  1000e1518  mov     x0, x19
  1000e151c  bl      _objc_msgSend                            ; [0 length]
  1000e1520  cbz     x0, loc_1000e1550                        ; if ([0 length] == 0)
  1000e1524  adrp    x8, #0x10041b000
  1000e1528  nop
  1000e152c  ldr     x1, [x8, #0x2c0]
  1000e1530  mov     x2, #0
  1000e1534  mov     x0, x19
  1000e1538  bl      _objc_msgSend                            ; [0 characterAtIndex:0]
  1000e153c  cmp     w0, #0x53
  1000e1540  b.gt    loc_1000e1558                            ; if ([0 characterAtIndex:0] > 83)
  1000e1544  cmp     w0, #0x31
  1000e1548  b.ne    loc_1000e1588                            ; if ([0 characterAtIndex:0] != 49)
  1000e154c  b       loc_1000e157c
loc_1000e1550:
  1000e1550  mov     w21, #0
  1000e1554  b       loc_1000e1590
loc_1000e1558:
  1000e1558  sub     w8, w0, #0x54
  1000e155c  mov     w9, #1
  1000e1560  lsl     x9, x9, x8
  1000e1564  mov     x10, #0x2100000000
  1000e1568  movk    x10, #0x21
  1000e156c  and     x9, x9, x10
  1000e1570  cmp     w8, #0x25
  1000e1574  ccmp    x9, #0, #4, ls
  1000e1578  b.eq    loc_1000e1588                            ; if (flags ==)
loc_1000e157c:
  1000e157c  mov     w21, #1
  1000e1580  strb    w21, [x20]                               ; arg1[+0x0] = 1
  1000e1584  b       loc_1000e1590
loc_1000e1588:
  1000e1588  strb    wzr, [x20]                               ; arg1[+0x0] = 0
  1000e158c  mov     w21, #1
loc_1000e1590:
  1000e1590  mov     x0, x19
  1000e1594  bl      _objc_release
  1000e1598  mov     x0, x21
  1000e159c  sub     sp, x29, #0x20
  1000e15a0  ldp     x29, x30, [sp, #0x20]
  1000e15a4  ldp     x20, x19, [sp, #0x10]
  1000e15a8  ldp     x22, x21, [sp], #0x30
  1000e15ac  ret
  1000e15b0  mov     x20, x0
  1000e15b4  mov     x0, x19
  1000e15b8  bl      _objc_release
  1000e15bc  mov     x0, x20
  1000e15c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp description]
; address 0x1000e15c4  size 160  kind objc
; ======================================================================
  1000e15c4  stp     x20, x19, [sp, #-0x20]!
  1000e15c8  stp     x29, x30, [sp, #0x10]
  1000e15cc  add     x29, sp, #0x10
  1000e15d0  mov     x19, x0
  1000e15d4  adrp    x8, #0x10041d000
  1000e15d8  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000e15dc  adrp    x8, #0x100416000
  1000e15e0  nop
  1000e15e4  ldr     x1, [x8, #0xac8]
  1000e15e8  bl      _objc_msgSend                            ; [NSString alloc]
  1000e15ec  mov     x20, x0
  1000e15f0  adrp    x8, #0x10041e000
  1000e15f4  ldr     x0, [x8, #0x490]                         ; class SExpIO
  1000e15f8  adrp    x8, #0x10041b000
  1000e15fc  nop
  1000e1600  ldr     x1, [x8, #0x2c8]
  1000e1604  mov     x2, x19
  1000e1608  bl      _objc_msgSend                            ; [SExpIO encode:self]
  1000e160c  mov     x29, x29
  1000e1610  bl      _objc_retainAutoreleasedReturnValue
  1000e1614  mov     x19, x0
  1000e1618  adrp    x8, #0x10041b000
  1000e161c  nop
  1000e1620  ldr     x1, [x8, #0x2d0]
  1000e1624  mov     w3, #4
  1000e1628  mov     x0, x20
  1000e162c  mov     x2, x19
  1000e1630  bl      _objc_msgSend                            ; [[NSString alloc] initWithData:[SExpIO encode:self] encoding:4]
  1000e1634  mov     x20, x0
  1000e1638  mov     x0, x19
  1000e163c  bl      _objc_release
  1000e1640  mov     x0, x20
  1000e1644  ldp     x29, x30, [sp, #0x10]
  1000e1648  ldp     x20, x19, [sp], #0x20
  1000e164c  b       _objc_autoreleaseReturnValue
  1000e1650  mov     x20, x0
  1000e1654  mov     x0, x19
  1000e1658  bl      _objc_release
  1000e165c  mov     x0, x20
  1000e1660  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp subnode:]
; address 0x1000e1664  size 44  kind objc
; ======================================================================
  1000e1664  stp     x29, x30, [sp, #-0x10]!
  1000e1668  mov     x29, sp
  1000e166c  adrp    x8, #0x10041b000
  1000e1670  nop
  1000e1674  ldr     x1, [x8, #0x2d8]
  1000e1678  mov     x3, #0
  1000e167c  bl      _objc_msgSend                            ; [self subnode:arg1 sibling:0]
  1000e1680  mov     x29, x29
  1000e1684  bl      _objc_retainAutoreleasedReturnValue
  1000e1688  ldp     x29, x30, [sp], #0x10
  1000e168c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[SExp subnode:sibling:]
; address 0x1000e1690  size 280  kind objc
; ======================================================================
  1000e1690  stp     x24, x23, [sp, #-0x40]!
  1000e1694  stp     x22, x21, [sp, #0x10]
  1000e1698  stp     x20, x19, [sp, #0x20]
  1000e169c  stp     x29, x30, [sp, #0x30]
  1000e16a0  add     x29, sp, #0x30
  1000e16a4  mov     x20, x3
  1000e16a8  mov     x22, x0
  1000e16ac  adrp    x8, #0x100419000
  1000e16b0  nop
  1000e16b4  ldr     x1, [x8, #0x188]
  1000e16b8  adrp    x8, #0x1003c2000
  1000e16bc  add     x8, x8, #0xb10                           ; @"/"
  1000e16c0  mov     x0, x2
  1000e16c4  mov     x2, x8
  1000e16c8  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@"/"]
  1000e16cc  mov     x29, x29
  1000e16d0  bl      _objc_retainAutoreleasedReturnValue
  1000e16d4  mov     x19, x0
  1000e16d8  adrp    x8, #0x100419000
  1000e16dc  nop
  1000e16e0  ldr     x1, [x8, #0xec8]
  1000e16e4  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"/"] objectEnumerator]
  1000e16e8  mov     x29, x29
  1000e16ec  bl      _objc_retainAutoreleasedReturnValue
  1000e16f0  mov     x21, x0
  1000e16f4  adrp    x8, #0x100417000
  1000e16f8  nop
  1000e16fc  ldr     x1, [x8, #0xa20]
  1000e1700  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByString:@"/"] objectEnumerator] nextObject]
  1000e1704  mov     x29, x29
  1000e1708  bl      _objc_retainAutoreleasedReturnValue
  1000e170c  mov     x23, x0
  1000e1710  adrp    x8, #0x10041b000
  1000e1714  nop
  1000e1718  ldr     x1, [x8, #0x2e0]
  1000e171c  mov     x0, x22
  1000e1720  mov     x2, x23
  1000e1724  mov     x3, x21
  1000e1728  mov     x4, x20
  1000e172c  bl      _objc_msgSend                            ; [self subnode:[[[arg1 componentsSeparatedByString:@"/"] objectEnumerator] nextObject] enumerator:[[arg1 componentsSeparatedByString:@"/"] objectEnumerator] sibling:arg2]
  1000e1730  mov     x29, x29
  1000e1734  bl      _objc_retainAutoreleasedReturnValue
  1000e1738  mov     x20, x0
  1000e173c  mov     x0, x23
  1000e1740  bl      _objc_release
  1000e1744  mov     x0, x21
  1000e1748  bl      _objc_release
  1000e174c  mov     x0, x19
  1000e1750  bl      _objc_release
  1000e1754  mov     x0, x20
  1000e1758  ldp     x29, x30, [sp, #0x30]
  1000e175c  ldp     x20, x19, [sp, #0x20]
  1000e1760  ldp     x22, x21, [sp, #0x10]
  1000e1764  ldp     x24, x23, [sp], #0x40
  1000e1768  b       _objc_autoreleaseReturnValue
  1000e176c  mov     x20, x0
  1000e1770  b       loc_1000e17a0
  1000e1774  mov     x20, x0
  1000e1778  b       loc_1000e1798
  1000e177c  mov     x20, x0
  1000e1780  b       loc_1000e1790
  1000e1784  mov     x20, x0
  1000e1788  mov     x0, x23
  1000e178c  bl      _objc_release
loc_1000e1790:
  1000e1790  mov     x0, x21
  1000e1794  bl      _objc_release
loc_1000e1798:
  1000e1798  mov     x0, x19
  1000e179c  bl      _objc_release
loc_1000e17a0:
  1000e17a0  mov     x0, x20
  1000e17a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[SExp subnode:enumerator:sibling:]
; address 0x1000e17a8  size 744  kind objc
; ======================================================================
  1000e17a8  stp     x28, x27, [sp, #-0x60]!
  1000e17ac  stp     x26, x25, [sp, #0x10]
  1000e17b0  stp     x24, x23, [sp, #0x20]
  1000e17b4  stp     x22, x21, [sp, #0x30]
  1000e17b8  stp     x20, x19, [sp, #0x40]
  1000e17bc  stp     x29, x30, [sp, #0x50]
  1000e17c0  add     x29, sp, #0x50
  1000e17c4  sub     sp, sp, #0x100
  1000e17c8  str     x4, [sp, #0x28]
  1000e17cc  mov     x20, x3
  1000e17d0  mov     x21, x0
  1000e17d4  adrp    x22, #0x1003b0000
  1000e17d8  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000e17dc  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000e17e0  stur    x22, [x29, #-0x58]
  1000e17e4  mov     x0, x2
  1000e17e8  bl      _objc_retain
  1000e17ec  mov     x19, x0
  1000e17f0  mov     x0, x20
  1000e17f4  bl      _objc_retain
  1000e17f8  mov     x20, x0
  1000e17fc  cbz     x19, loc_1000e195c                       ; if (arg1 == 0)
  1000e1800  adrp    x8, #0x100418000
  1000e1804  nop
  1000e1808  ldr     x1, [x8, #0x590]
  1000e180c  mov     x0, x21
  1000e1810  bl      _objc_msgSend                            ; [self children]
  1000e1814  mov     x29, x29
  1000e1818  bl      _objc_retainAutoreleasedReturnValue
  1000e181c  mov     x21, x0
  1000e1820  cbz     x21, loc_1000e1964                       ; if ([self children] == 0)
  1000e1824  adrp    x8, #0x100417000
  1000e1828  nop
  1000e182c  ldr     x1, [x8, #0xa20]
  1000e1830  mov     x0, x20
  1000e1834  bl      _objc_msgSend                            ; [arg2 nextObject]
  1000e1838  mov     x29, x29
  1000e183c  bl      _objc_retainAutoreleasedReturnValue
  1000e1840  str     x0, [sp, #0x20]
  1000e1844  stp     xzr, xzr, [sp, #0x68]
  1000e1848  stp     xzr, xzr, [sp, #0x58]
  1000e184c  stp     xzr, xzr, [sp, #0x48]
  1000e1850  stp     xzr, xzr, [sp, #0x38]
  1000e1854  mov     x0, x21
  1000e1858  bl      _objc_retain
  1000e185c  str     x0, [sp, #0x30]
  1000e1860  adrp    x8, #0x100416000
  1000e1864  nop
  1000e1868  ldr     x1, [x8, #0xe00]
  1000e186c  str     x1, [sp, #0x18]
  1000e1870  add     x2, sp, #0x38
  1000e1874  add     x3, sp, #0x78
  1000e1878  mov     w4, #0x10
  1000e187c  bl      _objc_msgSend                            ; [[self children] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000e1880  mov     x27, x0
  1000e1884  cbz     x27, loc_1000e196c                       ; if ([[self children] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  1000e1888  stp     x21, x20, [sp, #8]
  1000e188c  ldr     x8, [sp, #0x48]
  1000e1890  adrp    x9, #0x10041b000
  1000e1894  add     x9, x9, #0x2e8                           ; &@selector(token)
  1000e1898  ldr     x22, [x8]
  1000e189c  ldr     x26, [x9]
  1000e18a0  adrp    x8, #0x100419000
  1000e18a4  add     x8, x8, #0x4e8                           ; &@selector(compare:)
  1000e18a8  ldr     x28, [x8]
  1000e18ac  mov     w23, #-1
loc_1000e18b0:
  1000e18b0  mov     x24, #0
loc_1000e18b4:
  1000e18b4  ldr     x8, [sp, #0x48]
  1000e18b8  ldr     x8, [x8]
  1000e18bc  cmp     x8, x22
  1000e18c0  b.eq    loc_1000e18cc                            ; if (x8 == x22)
  1000e18c4  ldr     x0, [sp, #0x30]
  1000e18c8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self children])
loc_1000e18cc:
  1000e18cc  ldr     x8, [sp, #0x40]
  1000e18d0  ldr     x25, [x8, x24, lsl #3]
  1000e18d4  mov     x0, x25
  1000e18d8  mov     x1, x26
  1000e18dc  bl      _objc_msgSend                            ; [x0 token]
  1000e18e0  mov     x29, x29
  1000e18e4  bl      _objc_retainAutoreleasedReturnValue
  1000e18e8  mov     x20, x0
  1000e18ec  mov     x0, x19
  1000e18f0  mov     x1, x28
  1000e18f4  mov     x2, x20
  1000e18f8  bl      _objc_msgSend                            ; [arg1 compare:[x0 token]]
  1000e18fc  mov     x21, x0
  1000e1900  mov     x0, x20
  1000e1904  bl      _objc_release
  1000e1908  cbnz    x21, loc_1000e1928                       ; if ([arg1 compare:[x0 token]] != 0)
  1000e190c  ldr     x8, [sp, #0x20]
  1000e1910  cbnz    x8, loc_1000e1974                        ; if ([arg2 nextObject] != 0)
  1000e1914  add     w23, w23, #1
  1000e1918  sxtw    x8, w23
  1000e191c  ldr     x9, [sp, #0x28]
  1000e1920  cmp     x8, x9
  1000e1924  b.eq    loc_1000e19b0                            ; if ((w23 + 1) == arg3)
loc_1000e1928:
  1000e1928  add     x24, x24, #1
  1000e192c  cmp     x24, x27
  1000e1930  b.lo    loc_1000e18b4                            ; if ((x24 + 1) <u [[self children] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  1000e1934  add     x2, sp, #0x38
  1000e1938  add     x3, sp, #0x78
  1000e193c  mov     w4, #0x10
  1000e1940  ldr     x0, [sp, #0x30]
  1000e1944  ldr     x1, [sp, #0x18]
  1000e1948  bl      _objc_msgSend                            ; [[self children] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000e194c  mov     x27, x0
  1000e1950  cbnz    x27, loc_1000e18b0                       ; if ([[self children] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
  1000e1954  mov     x23, #0
  1000e1958  b       loc_1000e19bc
loc_1000e195c:
  1000e195c  mov     x23, #0
  1000e1960  b       loc_1000e19e4
loc_1000e1964:
  1000e1964  mov     x23, #0
  1000e1968  b       loc_1000e19dc
loc_1000e196c:
  1000e196c  mov     x23, #0
  1000e1970  b       loc_1000e19cc
loc_1000e1974:
  1000e1974  adrp    x8, #0x10041b000
  1000e1978  nop
  1000e197c  ldr     x1, [x8, #0x2e0]
  1000e1980  mov     x0, x25
  1000e1984  ldp     x2, x4, [sp, #0x20]
  1000e1988  ldp     x21, x20, [sp, #8]
  1000e198c  mov     x3, x20
  1000e1990  bl      _objc_msgSend                            ; [x0 subnode:[arg2 nextObject] enumerator:arg2 sibling:arg3]
  1000e1994  adrp    x22, #0x1003b0000
  1000e1998  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000e199c  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000e19a0  mov     x29, x29
  1000e19a4  bl      _objc_retainAutoreleasedReturnValue
  1000e19a8  mov     x23, x0
  1000e19ac  b       loc_1000e19cc
loc_1000e19b0:
  1000e19b0  mov     x0, x25
  1000e19b4  bl      _objc_retain
  1000e19b8  mov     x23, x0
loc_1000e19bc:
  1000e19bc  ldp     x21, x20, [sp, #8]
  1000e19c0  adrp    x22, #0x1003b0000
  1000e19c4  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000e19c8  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
loc_1000e19cc:
  1000e19cc  ldr     x0, [sp, #0x30]
  1000e19d0  bl      _objc_release
  1000e19d4  ldr     x0, [sp, #0x20]
  1000e19d8  bl      _objc_release
loc_1000e19dc:
  1000e19dc  mov     x0, x21
  1000e19e0  bl      _objc_release
loc_1000e19e4:
  1000e19e4  mov     x0, x20
  1000e19e8  bl      _objc_release
  1000e19ec  mov     x0, x19
  1000e19f0  bl      _objc_release
  1000e19f4  ldur    x8, [x29, #-0x58]
  1000e19f8  sub     x8, x22, x8
  1000e19fc  cbnz    x8, loc_1000e1a24                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e1a00  mov     x0, x23
  1000e1a04  sub     sp, x29, #0x50
  1000e1a08  ldp     x29, x30, [sp, #0x50]
  1000e1a0c  ldp     x20, x19, [sp, #0x40]
  1000e1a10  ldp     x22, x21, [sp, #0x30]
  1000e1a14  ldp     x24, x23, [sp, #0x20]
  1000e1a18  ldp     x26, x25, [sp, #0x10]
  1000e1a1c  ldp     x28, x27, [sp], #0x60
  1000e1a20  b       _objc_autoreleaseReturnValue
loc_1000e1a24:
  1000e1a24  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000e1a28:
  1000e1a28  mov     x23, x0
  1000e1a2c  b       loc_1000e1a3c
  1000e1a30  mov     x23, x0
  1000e1a34  mov     x0, x20
  1000e1a38  bl      _objc_release
loc_1000e1a3c:
  1000e1a3c  ldr     x0, [sp, #0x30]
  1000e1a40  bl      _objc_release
  1000e1a44  ldr     x0, [sp, #0x20]
  1000e1a48  bl      _objc_release
loc_1000e1a4c:
  1000e1a4c  ldr     x0, [sp, #8]
  1000e1a50  bl      _objc_release
loc_1000e1a54:
  1000e1a54  ldr     x0, [sp, #0x10]
  1000e1a58  bl      _objc_release
  1000e1a5c  mov     x0, x19
  1000e1a60  bl      _objc_release
  1000e1a64  mov     x0, x23
  1000e1a68  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e1a6c  str     x20, [sp, #0x10]
  1000e1a70  mov     x23, x0
  1000e1a74  b       loc_1000e1a54
  1000e1a78  stp     x21, x20, [sp, #8]
  1000e1a7c  b       loc_1000e1a28
  1000e1a80  stp     x21, x20, [sp, #8]
  1000e1a84  mov     x23, x0
  1000e1a88  b       loc_1000e1a4c
  1000e1a8c  b       loc_1000e1a28

; ======================================================================
; -[SExp each:]
; address 0x1000e1a90  size 352  kind objc
; ======================================================================
  1000e1a90  stp     x26, x25, [sp, #-0x50]!
  1000e1a94  stp     x24, x23, [sp, #0x10]
  1000e1a98  stp     x22, x21, [sp, #0x20]
  1000e1a9c  stp     x20, x19, [sp, #0x30]
  1000e1aa0  stp     x29, x30, [sp, #0x40]
  1000e1aa4  add     x29, sp, #0x40
  1000e1aa8  sub     sp, sp, #0xd0
  1000e1aac  mov     x20, x0
  1000e1ab0  adrp    x23, #0x1003b0000
  1000e1ab4  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000e1ab8  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000e1abc  stur    x23, [x29, #-0x48]
  1000e1ac0  mov     x0, x2
  1000e1ac4  bl      _objc_retain
  1000e1ac8  mov     x19, x0
  1000e1acc  stp     xzr, xzr, [sp, #0x38]
  1000e1ad0  stp     xzr, xzr, [sp, #0x28]
  1000e1ad4  stp     xzr, xzr, [sp, #0x18]
  1000e1ad8  stp     xzr, xzr, [sp, #8]
  1000e1adc  adrp    x8, #0x100418000
  1000e1ae0  nop
  1000e1ae4  ldr     x1, [x8, #0x590]
  1000e1ae8  mov     x0, x20
  1000e1aec  bl      _objc_msgSend                            ; [self children]
  1000e1af0  mov     x29, x29
  1000e1af4  bl      _objc_retainAutoreleasedReturnValue
  1000e1af8  mov     x20, x0
  1000e1afc  adrp    x8, #0x100416000
  1000e1b00  nop
  1000e1b04  ldr     x21, [x8, #0xe00]
  1000e1b08  add     x2, sp, #8
  1000e1b0c  add     x3, sp, #0x48
  1000e1b10  mov     w4, #0x10
  1000e1b14  mov     x1, x21
  1000e1b18  bl      _objc_msgSend                            ; [[self children] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000e1b1c  mov     x22, x0
  1000e1b20  cbz     x22, loc_1000e1b88                       ; if ([[self children] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000e1b24  ldr     x8, [sp, #0x18]
  1000e1b28  ldr     x24, [x8]
loc_1000e1b2c:
  1000e1b2c  mov     x25, #0
loc_1000e1b30:
  1000e1b30  ldr     x8, [sp, #0x18]
  1000e1b34  ldr     x8, [x8]
  1000e1b38  cmp     x8, x24
  1000e1b3c  b.eq    loc_1000e1b48                            ; if (x8 == x24)
  1000e1b40  mov     x0, x20
  1000e1b44  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self children])
loc_1000e1b48:
  1000e1b48  ldr     x8, [sp, #0x10]
  1000e1b4c  ldr     x1, [x8, x25, lsl #3]
  1000e1b50  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  1000e1b54  mov     x0, x19
  1000e1b58  blr     x8                                       ; call arg1[+0x10]
  1000e1b5c  add     x25, x25, #1
  1000e1b60  cmp     x25, x22
  1000e1b64  b.lo    loc_1000e1b30                            ; if ((x25 + 1) <u [[self children] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000e1b68  add     x2, sp, #8
  1000e1b6c  add     x3, sp, #0x48
  1000e1b70  mov     w4, #0x10
  1000e1b74  mov     x0, x20
  1000e1b78  mov     x1, x21
  1000e1b7c  bl      _objc_msgSend                            ; [[self children] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000e1b80  mov     x22, x0
  1000e1b84  cbnz    x22, loc_1000e1b2c                       ; if ([[self children] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000e1b88:
  1000e1b88  mov     x0, x20
  1000e1b8c  bl      _objc_release
  1000e1b90  mov     x0, x19
  1000e1b94  bl      _objc_release
  1000e1b98  ldur    x8, [x29, #-0x48]
  1000e1b9c  sub     x8, x23, x8
  1000e1ba0  cbnz    x8, loc_1000e1bc0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000e1ba4  sub     sp, x29, #0x40
  1000e1ba8  ldp     x29, x30, [sp, #0x40]
  1000e1bac  ldp     x20, x19, [sp, #0x30]
  1000e1bb0  ldp     x22, x21, [sp, #0x20]
  1000e1bb4  ldp     x24, x23, [sp, #0x10]
  1000e1bb8  ldp     x26, x25, [sp], #0x50
  1000e1bbc  ret
loc_1000e1bc0:
  1000e1bc0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000e1bc4:
  1000e1bc4  mov     x21, x0
  1000e1bc8  mov     x0, x20
  1000e1bcc  bl      _objc_release
loc_1000e1bd0:
  1000e1bd0  mov     x0, x19
  1000e1bd4  bl      _objc_release
  1000e1bd8  mov     x0, x21
  1000e1bdc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000e1be0  b       loc_1000e1bc4
  1000e1be4  mov     x21, x0
  1000e1be8  b       loc_1000e1bd0
  1000e1bec  b       loc_1000e1bc4

; ======================================================================
; -[SExp children]
; address 0x1000e1bf0  size 16  kind objc
; ======================================================================
  1000e1bf0  adrp    x8, #0x100420000
  1000e1bf4  ldrsw   x8, [x8, #0x5c0]                         ; ivar offset SExp.children (+0x8)
  1000e1bf8  ldr     x0, [x0, x8]                             ; x0 = self->children
  1000e1bfc  ret

; ======================================================================
; -[SExp setChildren:]
; address 0x1000e1c00  size 56  kind objc
; ======================================================================
  1000e1c00  stp     x20, x19, [sp, #-0x20]!
  1000e1c04  stp     x29, x30, [sp, #0x10]
  1000e1c08  add     x29, sp, #0x10
  1000e1c0c  mov     x19, x0
  1000e1c10  adrp    x8, #0x100420000
  1000e1c14  ldrsw   x20, [x8, #0x5c0]                        ; ivar offset SExp.children (+0x8)
  1000e1c18  mov     x0, x2
  1000e1c1c  bl      _objc_retain
  1000e1c20  ldr     x8, [x19, x20]                           ; x8 = self->children
  1000e1c24  str     x0, [x19, x20]                           ; self->children = arg1
  1000e1c28  mov     x0, x8
  1000e1c2c  ldp     x29, x30, [sp, #0x10]
  1000e1c30  ldp     x20, x19, [sp], #0x20
  1000e1c34  b       _objc_release

; ======================================================================
; -[SExp attributes]
; address 0x1000e1c38  size 16  kind objc
; ======================================================================
  1000e1c38  adrp    x8, #0x100420000
  1000e1c3c  ldrsw   x8, [x8, #0x5c4]                         ; ivar offset SExp.attributes (+0x10)
  1000e1c40  ldr     x0, [x0, x8]                             ; x0 = self->attributes
  1000e1c44  ret

; ======================================================================
; -[SExp setAttributes:]
; address 0x1000e1c48  size 56  kind objc
; ======================================================================
  1000e1c48  stp     x20, x19, [sp, #-0x20]!
  1000e1c4c  stp     x29, x30, [sp, #0x10]
  1000e1c50  add     x29, sp, #0x10
  1000e1c54  mov     x19, x0
  1000e1c58  adrp    x8, #0x100420000
  1000e1c5c  ldrsw   x20, [x8, #0x5c4]                        ; ivar offset SExp.attributes (+0x10)
  1000e1c60  mov     x0, x2
  1000e1c64  bl      _objc_retain
  1000e1c68  ldr     x8, [x19, x20]                           ; x8 = self->attributes
  1000e1c6c  str     x0, [x19, x20]                           ; self->attributes = arg1
  1000e1c70  mov     x0, x8
  1000e1c74  ldp     x29, x30, [sp, #0x10]
  1000e1c78  ldp     x20, x19, [sp], #0x20
  1000e1c7c  b       _objc_release

; ======================================================================
; -[SExp token]
; address 0x1000e1c80  size 16  kind objc
; ======================================================================
  1000e1c80  adrp    x8, #0x100420000
  1000e1c84  ldrsw   x8, [x8, #0x5c8]                         ; ivar offset SExp.token (+0x18)
  1000e1c88  ldr     x0, [x0, x8]                             ; x0 = self->token
  1000e1c8c  ret

; ======================================================================
; -[SExp setToken:]
; address 0x1000e1c90  size 56  kind objc
; ======================================================================
  1000e1c90  stp     x20, x19, [sp, #-0x20]!
  1000e1c94  stp     x29, x30, [sp, #0x10]
  1000e1c98  add     x29, sp, #0x10
  1000e1c9c  mov     x19, x0
  1000e1ca0  adrp    x8, #0x100420000
  1000e1ca4  ldrsw   x20, [x8, #0x5c8]                        ; ivar offset SExp.token (+0x18)
  1000e1ca8  mov     x0, x2
  1000e1cac  bl      _objc_retain
  1000e1cb0  ldr     x8, [x19, x20]                           ; x8 = self->token
  1000e1cb4  str     x0, [x19, x20]                           ; self->token = arg1
  1000e1cb8  mov     x0, x8
  1000e1cbc  ldp     x29, x30, [sp, #0x10]
  1000e1cc0  ldp     x20, x19, [sp], #0x20
  1000e1cc4  b       _objc_release

; ======================================================================
; -[SExp .cxx_destruct]
; address 0x1000e1cc8  size 84  kind objc
; ======================================================================
  1000e1cc8  stp     x20, x19, [sp, #-0x20]!
  1000e1ccc  stp     x29, x30, [sp, #0x10]
  1000e1cd0  add     x29, sp, #0x10
  1000e1cd4  mov     x19, x0
  1000e1cd8  adrp    x8, #0x100420000
  1000e1cdc  ldrsw   x8, [x8, #0x5c8]                         ; ivar offset SExp.token (+0x18)
  1000e1ce0  add     x0, x19, x8
  1000e1ce4  mov     x1, #0
  1000e1ce8  bl      _objc_storeStrong
  1000e1cec  adrp    x8, #0x100420000
  1000e1cf0  ldrsw   x8, [x8, #0x5c4]                         ; ivar offset SExp.attributes (+0x10)
  1000e1cf4  add     x0, x19, x8
  1000e1cf8  mov     x1, #0
  1000e1cfc  bl      _objc_storeStrong
  1000e1d00  mov     x1, #0
  1000e1d04  adrp    x8, #0x100420000
  1000e1d08  ldrsw   x8, [x8, #0x5c0]                         ; ivar offset SExp.children (+0x8)
  1000e1d0c  add     x0, x19, x8
  1000e1d10  ldp     x29, x30, [sp, #0x10]
  1000e1d14  ldp     x20, x19, [sp], #0x20
  1000e1d18  b       _objc_storeStrong
