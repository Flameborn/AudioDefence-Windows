// unit TAGPBEnumDescriptor — 11 functions
//   0x100137ab8     324  +[TAGPBEnumDescriptor allocDescriptorForName:values:valueCount:enumVerifier:]
//   0x100137bfc      56  +[TAGPBEnumDescriptor allocDescriptorForName:values:valueCount:enumVerifier:extraTextFormatInfo:]
//   0x100137c34     184  +[TAGPBEnumDescriptor descriptorForName:]
//   0x100137cec     176  -[TAGPBEnumDescriptor initWithName:values:enumVerifier:]
//   0x100137d9c     324  -[TAGPBEnumDescriptor enumValueWithNumber:]
//   0x100137ee0     348  -[TAGPBEnumDescriptor enumValueWithName:]
//   0x10013803c     124  -[TAGPBEnumDescriptor dealloc]
//   0x1001380b8     544  -[TAGPBEnumDescriptor textFormatNameForEnumValue:]
//   0x1001382d8      16  -[TAGPBEnumDescriptor name]
//   0x1001382e8      16  -[TAGPBEnumDescriptor values]
//   0x1001382f8      16  -[TAGPBEnumDescriptor enumVerifier]

; ======================================================================
; +[TAGPBEnumDescriptor allocDescriptorForName:values:valueCount:enumVerifier:]
; address 0x100137ab8  size 324  kind objc
; ======================================================================
  100137ab8  stp     x29, x30, [sp, #-0x10]!
  100137abc  mov     x29, sp
  100137ac0  stp     x20, x19, [sp, #-0x10]!
  100137ac4  stp     x22, x21, [sp, #-0x10]!
  100137ac8  stp     x24, x23, [sp, #-0x10]!
  100137acc  stp     x26, x25, [sp, #-0x10]!
  100137ad0  stp     x28, x27, [sp, #-0x10]!
  100137ad4  sub     sp, sp, #0x10
  100137ad8  str     x5, [sp, #8]
  100137adc  mov     x22, x4
  100137ae0  mov     x24, x3
  100137ae4  mov     x20, x2
  100137ae8  adrp    x8, #0x10041e000
  100137aec  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  100137af0  adrp    x8, #0x100416000
  100137af4  nop
  100137af8  ldr     x23, [x8, #0xac8]
  100137afc  mov     x1, x23
  100137b00  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  100137b04  adrp    x8, #0x10041c000
  100137b08  nop
  100137b0c  ldr     x1, [x8, #0x528]
  100137b10  mov     w2, #0
  100137b14  mov     x3, x22
  100137b18  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:0 capacity:arg3]
  100137b1c  mov     x21, x0
  100137b20  cbz     x22, loc_100137b94                       ; if (arg3 == 0)
  100137b24  adrp    x8, #0x10041c000
  100137b28  nop
  100137b2c  adrp    x9, #0x100416000
  100137b30  add     x9, x9, #0xd90                           ; &@selector(addObject:)
  100137b34  ldr     x25, [x8, #0x798]
  100137b38  ldr     x26, [x9]
  100137b3c  adrp    x8, #0x10041b000
  100137b40  add     x8, x8, #0xd70                           ; &@selector(release)
  100137b44  ldr     x27, [x8]
  100137b48  adrp    x19, #0x10041e000
loc_100137b4c:
  100137b4c  ldr     x0, [x19, #0x7a0]                        ; class TAGPBEnumValueDescriptor
  100137b50  mov     x1, x23
  100137b54  bl      _objc_msgSend                            ; [TAGPBEnumValueDescriptor alloc]
  100137b58  mov     x1, x25
  100137b5c  mov     x2, x24
  100137b60  mov     x3, x20
  100137b64  bl      _objc_msgSend                            ; [[TAGPBEnumValueDescriptor alloc] initWithEnumValueDescription:x2 prefix:arg1]
  100137b68  mov     x28, x0
  100137b6c  mov     x0, x21
  100137b70  mov     x1, x26
  100137b74  mov     x2, x28
  100137b78  bl      _objc_msgSend                            ; [[[TAGPBMutableArray alloc] initWithValueType:0 capacity:arg3] addObject:[[TAGPBEnumValueDescriptor alloc] initWithEnumValueDescription:x2 prefix:arg1]]
  100137b7c  mov     x0, x28
  100137b80  mov     x1, x27
  100137b84  bl      _objc_msgSend                            ; [[[TAGPBEnumValueDescriptor alloc] initWithEnumValueDescription:x2 prefix:arg1] release]
  100137b88  add     x24, x24, #0x10
  100137b8c  sub     x22, x22, #1
  100137b90  cbnz    x22, loc_100137b4c                       ; if ((x22 - 1) != 0)
loc_100137b94:
  100137b94  adrp    x8, #0x10041e000
  100137b98  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  100137b9c  mov     x1, x23
  100137ba0  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor alloc]
  100137ba4  adrp    x8, #0x10041c000
  100137ba8  nop
  100137bac  ldr     x1, [x8, #0x7a0]
  100137bb0  mov     x2, x20
  100137bb4  mov     x3, x21
  100137bb8  ldr     x4, [sp, #8]
  100137bbc  bl      _objc_msgSend                            ; [[TAGPBEnumDescriptor alloc] initWithName:arg1 values:[[TAGPBMutableArray alloc] initWithValueType:0 capacity:arg3] enumVerifier:arg4]
  100137bc0  mov     x19, x0
  100137bc4  adrp    x8, #0x10041b000
  100137bc8  nop
  100137bcc  ldr     x1, [x8, #0xd70]
  100137bd0  mov     x0, x21
  100137bd4  bl      _objc_msgSend                            ; [[[TAGPBMutableArray alloc] initWithValueType:0 capacity:arg3] release]
  100137bd8  mov     x0, x19
  100137bdc  sub     sp, x29, #0x50
  100137be0  ldp     x28, x27, [sp], #0x10
  100137be4  ldp     x26, x25, [sp], #0x10
  100137be8  ldp     x24, x23, [sp], #0x10
  100137bec  ldp     x22, x21, [sp], #0x10
  100137bf0  ldp     x20, x19, [sp], #0x10
  100137bf4  ldp     x29, x30, [sp], #0x10
  100137bf8  ret

; ======================================================================
; +[TAGPBEnumDescriptor allocDescriptorForName:values:valueCount:enumVerifier:extraTextFormatInfo:]
; address 0x100137bfc  size 56  kind objc
; ======================================================================
  100137bfc  stp     x29, x30, [sp, #-0x10]!
  100137c00  mov     x29, sp
  100137c04  stp     x20, x19, [sp, #-0x10]!
  100137c08  mov     x19, x6
  100137c0c  adrp    x8, #0x10041c000
  100137c10  nop
  100137c14  ldr     x1, [x8, #0x4a8]
  100137c18  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:arg1 values:arg2 valueCount:arg3 enumVerifier:arg4]
  100137c1c  adrp    x8, #0x100420000
  100137c20  ldrsw   x8, [x8, #0x990]                         ; ivar offset TAGPBEnumDescriptor.extraTextFormatInfo_ (+0x20)
  100137c24  str     x19, [x0, x8]                            ; [TAGPBEnumDescriptor allocDescriptorForName:arg1 values:arg2 valueCount:arg3 enumVerifier:arg4]->extraTextFormatInfo_ = arg5
  100137c28  ldp     x20, x19, [sp], #0x10
  100137c2c  ldp     x29, x30, [sp], #0x10
  100137c30  ret

; ======================================================================
; +[TAGPBEnumDescriptor descriptorForName:]
; address 0x100137c34  size 184  kind objc
; ======================================================================
  100137c34  stp     x29, x30, [sp, #-0x10]!
  100137c38  mov     x29, sp
  100137c3c  stp     x20, x19, [sp, #-0x10]!
  100137c40  stp     x22, x21, [sp, #-0x10]!
  100137c44  sub     sp, sp, #0x10
  100137c48  mov     x19, x2
  100137c4c  adrp    x22, #0x1003b0000
  100137c50  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100137c54  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  100137c58  stur    x8, [x29, #-0x28]
  100137c5c  mov     x0, x19
  100137c60  bl      _strlen                                  ; strlen(arg1, _cmd, arg1)
  100137c64  mov     x20, x0
  100137c68  mov     x8, sp
  100137c6c  add     x9, x20, #0x1e
  100137c70  and     x9, x9, #0xfffffffffffffff0
  100137c74  sub     x21, x8, x9
  100137c78  mov     sp, x21
  100137c7c  mov     x0, x21
  100137c80  mov     x1, x19
  100137c84  mov     x2, x20
  100137c88  bl      _memcpy                                  ; memcpy((&sp[0x0] - ((strlen(arg1, _cmd, arg1) + 30) & -16)), arg1, strlen(arg1, _cmd, arg1))
  100137c8c  adrp    x8, #0x1002fa000
  100137c90  add     x8, x8, #0xa51                           ; tconst_1002faa51
  100137c94  add     x9, x21, x20
  100137c98  ldur    x10, [x8, #6]                            ; [tconst_1002faa57] -> 0x726f747069726373
  100137c9c  stur    x10, [x9, #6]                            ; ((&sp[0x0] - ((strlen(arg1, _cmd, arg1) + 30) & -16)) + strlen(arg1, _cmd, arg1))[+0x6] = 0x726f747069726373
  100137ca0  ldr     x8, [x8]                                 ; [tconst_1002faa51] -> 0x637365446d756e45
  100137ca4  str     x8, [x9]                                 ; ((&sp[0x0] - ((strlen(arg1, _cmd, arg1) + 30) & -16)) + strlen(arg1, _cmd, arg1))[+0x0] = 0x637365446d756e45
  100137ca8  strb    wzr, [x9, #0xe]                          ; ((&sp[0x0] - ((strlen(arg1, _cmd, arg1) + 30) & -16)) + strlen(arg1, _cmd, arg1))[+0xe] = 0
  100137cac  mov     x0, x21
  100137cb0  bl      _objc_getClass                           ; objc_getClass((&sp[0x0] - ((strlen(arg1, _cmd, arg1) + 30) & -16)))
  100137cb4  adrp    x8, #0x10041c000
  100137cb8  nop
  100137cbc  ldr     x1, [x8, #0x7a8]
  100137cc0  bl      _objc_msgSend                            ; [objc_getClass((&sp[0x0] - ((strlen(arg1, _cmd, arg1) + 30) & -16))) enumDescriptor]
  100137cc4  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  100137cc8  ldur    x9, [x29, #-0x28]
  100137ccc  sub     x8, x8, x9
  100137cd0  cbnz    x8, loc_100137ce8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100137cd4  sub     sp, x29, #0x20
  100137cd8  ldp     x22, x21, [sp], #0x10
  100137cdc  ldp     x20, x19, [sp], #0x10
  100137ce0  ldp     x29, x30, [sp], #0x10
  100137ce4  ret
loc_100137ce8:
  100137ce8  bl      ___stack_chk_fail                        ; stack_chk_fail([objc_getClass((&sp[0x0] - ((strlen(arg1, _cmd, arg1) + 30) & -16))) enumDescriptor])

; ======================================================================
; -[TAGPBEnumDescriptor initWithName:values:enumVerifier:]
; address 0x100137cec  size 176  kind objc
; ======================================================================
  100137cec  stp     x29, x30, [sp, #-0x10]!
  100137cf0  mov     x29, sp
  100137cf4  stp     x20, x19, [sp, #-0x10]!
  100137cf8  stp     x22, x21, [sp, #-0x10]!
  100137cfc  sub     sp, sp, #0x10
  100137d00  mov     x19, x4
  100137d04  mov     x20, x3
  100137d08  mov     x22, x2
  100137d0c  str     x0, [sp]
  100137d10  adrp    x8, #0x10041f000
  100137d14  ldr     x8, [x8, #0x1a0]
  100137d18  str     x8, [sp, #8]
  100137d1c  adrp    x8, #0x100416000
  100137d20  nop
  100137d24  ldr     x1, [x8, #0xab8]
  100137d28  mov     x0, sp
  100137d2c  bl      _objc_msgSendSuper2                      ; [super init]
  100137d30  mov     x21, x0
  100137d34  cbz     x21, loc_100137d84                       ; if (self == 0)
  100137d38  adrp    x8, #0x100419000
  100137d3c  nop
  100137d40  ldr     x1, [x8, #0xc08]
  100137d44  mov     x0, x22
  100137d48  bl      _objc_msgSend                            ; [arg1 copy]
  100137d4c  adrp    x8, #0x100420000
  100137d50  ldrsw   x8, [x8, #0x994]                         ; ivar offset TAGPBEnumDescriptor.name_ (+0x8)
  100137d54  str     x0, [x21, x8]                            ; self->name_ = [arg1 copy]
  100137d58  adrp    x8, #0x10041b000
  100137d5c  nop
  100137d60  ldr     x1, [x8, #0xdb8]
  100137d64  mov     x0, x20
  100137d68  bl      _objc_msgSend                            ; [arg2 retain]
  100137d6c  adrp    x8, #0x100420000
  100137d70  ldrsw   x8, [x8, #0x998]                         ; ivar offset TAGPBEnumDescriptor.values_ (+0x10)
  100137d74  str     x0, [x21, x8]                            ; self->values_ = [arg2 retain]
  100137d78  adrp    x8, #0x100420000
  100137d7c  ldrsw   x8, [x8, #0x99c]                         ; ivar offset TAGPBEnumDescriptor.enumVerifier_ (+0x18)
  100137d80  str     x19, [x21, x8]                           ; self->enumVerifier_ = arg3
loc_100137d84:
  100137d84  mov     x0, x21
  100137d88  sub     sp, x29, #0x20
  100137d8c  ldp     x22, x21, [sp], #0x10
  100137d90  ldp     x20, x19, [sp], #0x10
  100137d94  ldp     x29, x30, [sp], #0x10
  100137d98  ret

; ======================================================================
; -[TAGPBEnumDescriptor enumValueWithNumber:]
; address 0x100137d9c  size 324  kind objc
; ======================================================================
  100137d9c  stp     x29, x30, [sp, #-0x10]!
  100137da0  mov     x29, sp
  100137da4  stp     x20, x19, [sp, #-0x10]!
  100137da8  stp     x22, x21, [sp, #-0x10]!
  100137dac  stp     x24, x23, [sp, #-0x10]!
  100137db0  stp     x26, x25, [sp, #-0x10]!
  100137db4  stp     x28, x27, [sp, #-0x10]!
  100137db8  sub     sp, sp, #0xd0
  100137dbc  mov     x19, x2
  100137dc0  adrp    x23, #0x1003b0000
  100137dc4  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100137dc8  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100137dcc  stur    x8, [x29, #-0x58]
  100137dd0  stp     xzr, xzr, [sp, #0xb8]
  100137dd4  stp     xzr, xzr, [sp, #0xa8]
  100137dd8  stp     xzr, xzr, [sp, #0x98]
  100137ddc  stp     xzr, xzr, [sp, #0x88]
  100137de0  adrp    x8, #0x100420000
  100137de4  ldrsw   x8, [x8, #0x998]                         ; ivar offset TAGPBEnumDescriptor.values_ (+0x10)
  100137de8  ldr     x20, [x0, x8]                            ; x20 = self->values_
  100137dec  adrp    x8, #0x100416000
  100137df0  nop
  100137df4  ldr     x21, [x8, #0xe00]
  100137df8  add     x2, sp, #0x88
  100137dfc  add     x3, sp, #8
  100137e00  mov     x4, #0x10
  100137e04  mov     x0, x20
  100137e08  mov     x1, x21
  100137e0c  bl      _objc_msgSend                            ; [self->values_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100137e10  mov     x22, x0
  100137e14  mov     x26, #0
  100137e18  cbz     x22, loc_100137ea8                       ; if ([self->values_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  100137e1c  ldr     x8, [sp, #0x98]
  100137e20  ldr     x28, [x8]
  100137e24  adrp    x8, #0x10041c000
  100137e28  add     x8, x8, #0x50                            ; &@selector(number)
  100137e2c  ldr     x23, [x8]
  100137e30  add     x24, sp, #0x88
  100137e34  add     x25, sp, #8
loc_100137e38:
  100137e38  mov     x27, #0
loc_100137e3c:
  100137e3c  ldr     x8, [sp, #0x98]
  100137e40  ldr     x8, [x8]
  100137e44  cmp     x8, x28
  100137e48  b.eq    loc_100137e54                            ; if (x8 == x28)
  100137e4c  mov     x0, x20
  100137e50  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->values_)
loc_100137e54:
  100137e54  ldr     x8, [sp, #0x90]
  100137e58  ldr     x26, [x8, x27, lsl #3]
  100137e5c  mov     x0, x26
  100137e60  mov     x1, x23
  100137e64  bl      _objc_msgSend                            ; [x0 number]
  100137e68  cmp     w0, w19
  100137e6c  b.eq    loc_100137ea0                            ; if ([x0 number] == arg1)
  100137e70  add     x27, x27, #1
  100137e74  cmp     x27, x22
  100137e78  b.lo    loc_100137e3c                            ; if ((x27 + 1) <u [self->values_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  100137e7c  mov     x4, #0x10
  100137e80  mov     x0, x20
  100137e84  mov     x1, x21
  100137e88  mov     x2, x24
  100137e8c  mov     x3, x25
  100137e90  bl      _objc_msgSend                            ; [self->values_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100137e94  mov     x22, x0
  100137e98  cbnz    x22, loc_100137e38                       ; if ([self->values_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
  100137e9c  mov     x26, #0
loc_100137ea0:
  100137ea0  adrp    x23, #0x1003b0000
  100137ea4  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
loc_100137ea8:
  100137ea8  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100137eac  ldur    x9, [x29, #-0x58]
  100137eb0  sub     x8, x8, x9
  100137eb4  cbnz    x8, loc_100137edc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100137eb8  mov     x0, x26
  100137ebc  sub     sp, x29, #0x50
  100137ec0  ldp     x28, x27, [sp], #0x10
  100137ec4  ldp     x26, x25, [sp], #0x10
  100137ec8  ldp     x24, x23, [sp], #0x10
  100137ecc  ldp     x22, x21, [sp], #0x10
  100137ed0  ldp     x20, x19, [sp], #0x10
  100137ed4  ldp     x29, x30, [sp], #0x10
  100137ed8  ret
loc_100137edc:
  100137edc  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBEnumDescriptor enumValueWithName:]
; address 0x100137ee0  size 348  kind objc
; ======================================================================
  100137ee0  stp     x29, x30, [sp, #-0x10]!
  100137ee4  mov     x29, sp
  100137ee8  stp     x20, x19, [sp, #-0x10]!
  100137eec  stp     x22, x21, [sp, #-0x10]!
  100137ef0  stp     x24, x23, [sp, #-0x10]!
  100137ef4  stp     x26, x25, [sp, #-0x10]!
  100137ef8  stp     x28, x27, [sp, #-0x10]!
  100137efc  sub     sp, sp, #0xe0
  100137f00  mov     x19, x2
  100137f04  adrp    x23, #0x1003b0000
  100137f08  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100137f0c  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100137f10  stur    x8, [x29, #-0x58]
  100137f14  stp     xzr, xzr, [sp, #0xc8]
  100137f18  stp     xzr, xzr, [sp, #0xb8]
  100137f1c  stp     xzr, xzr, [sp, #0xa8]
  100137f20  stp     xzr, xzr, [sp, #0x98]
  100137f24  adrp    x8, #0x100420000
  100137f28  ldrsw   x8, [x8, #0x998]                         ; ivar offset TAGPBEnumDescriptor.values_ (+0x10)
  100137f2c  ldr     x20, [x0, x8]                            ; x20 = self->values_
  100137f30  adrp    x8, #0x100416000
  100137f34  nop
  100137f38  ldr     x21, [x8, #0xe00]
  100137f3c  add     x2, sp, #0x98
  100137f40  add     x3, sp, #0x18
  100137f44  mov     x4, #0x10
  100137f48  mov     x0, x20
  100137f4c  mov     x1, x21
  100137f50  bl      _objc_msgSend                            ; [self->values_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100137f54  mov     x22, x0
  100137f58  mov     x27, #0
  100137f5c  cbz     x22, loc_100138004                       ; if ([self->values_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  100137f60  ldr     x8, [sp, #0xa8]
  100137f64  ldr     x28, [x8]
  100137f68  adrp    x8, #0x100417000
  100137f6c  nop
  100137f70  ldr     x23, [x8, #0x450]
  100137f74  adrp    x8, #0x100416000
  100137f78  nop
  100137f7c  ldr     x24, [x8, #0xf58]
  100137f80  add     x8, sp, #0x98
  100137f84  str     x8, [sp, #0x10]
  100137f88  add     x26, sp, #0x18
loc_100137f8c:
  100137f8c  mov     x25, #0
loc_100137f90:
  100137f90  ldr     x8, [sp, #0xa8]
  100137f94  ldr     x8, [x8]
  100137f98  cmp     x8, x28
  100137f9c  b.eq    loc_100137fa8                            ; if (x8 == x28)
  100137fa0  mov     x0, x20
  100137fa4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->values_)
loc_100137fa8:
  100137fa8  ldr     x8, [sp, #0xa0]
  100137fac  ldr     x27, [x8, x25, lsl #3]
  100137fb0  mov     x0, x27
  100137fb4  mov     x1, x23
  100137fb8  bl      _objc_msgSend                            ; [x0 name]
  100137fbc  mov     x1, x24
  100137fc0  mov     x2, x19
  100137fc4  bl      _objc_msgSend                            ; [[x0 name] isEqualToString:arg1]
  100137fc8  cbnz    w0, loc_100137ffc                        ; if ([[x0 name] isEqualToString:arg1] != 0)
  100137fcc  add     x25, x25, #1
  100137fd0  cmp     x25, x22
  100137fd4  b.lo    loc_100137f90                            ; if ((x25 + 1) <u [self->values_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  100137fd8  mov     x4, #0x10
  100137fdc  mov     x0, x20
  100137fe0  mov     x1, x21
  100137fe4  ldr     x2, [sp, #0x10]
  100137fe8  mov     x3, x26
  100137fec  bl      _objc_msgSend                            ; [self->values_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100137ff0  mov     x22, x0
  100137ff4  cbnz    x22, loc_100137f8c                       ; if ([self->values_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
  100137ff8  mov     x27, #0
loc_100137ffc:
  100137ffc  adrp    x23, #0x1003b0000
  100138000  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
loc_100138004:
  100138004  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100138008  ldur    x9, [x29, #-0x58]
  10013800c  sub     x8, x8, x9
  100138010  cbnz    x8, loc_100138038                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100138014  mov     x0, x27
  100138018  sub     sp, x29, #0x50
  10013801c  ldp     x28, x27, [sp], #0x10
  100138020  ldp     x26, x25, [sp], #0x10
  100138024  ldp     x24, x23, [sp], #0x10
  100138028  ldp     x22, x21, [sp], #0x10
  10013802c  ldp     x20, x19, [sp], #0x10
  100138030  ldp     x29, x30, [sp], #0x10
  100138034  ret
loc_100138038:
  100138038  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBEnumDescriptor dealloc]
; address 0x10013803c  size 124  kind objc
; ======================================================================
  10013803c  stp     x29, x30, [sp, #-0x10]!
  100138040  mov     x29, sp
  100138044  stp     x20, x19, [sp, #-0x10]!
  100138048  sub     sp, sp, #0x10
  10013804c  mov     x19, x0
  100138050  adrp    x8, #0x100420000
  100138054  ldrsw   x8, [x8, #0x994]                         ; ivar offset TAGPBEnumDescriptor.name_ (+0x8)
  100138058  ldr     x0, [x19, x8]                            ; x0 = self->name_
  10013805c  adrp    x8, #0x10041b000
  100138060  nop
  100138064  ldr     x20, [x8, #0xd70]
  100138068  mov     x1, x20
  10013806c  bl      _objc_msgSend                            ; [self->name_ release]
  100138070  adrp    x8, #0x100420000
  100138074  ldrsw   x8, [x8, #0x998]                         ; ivar offset TAGPBEnumDescriptor.values_ (+0x10)
  100138078  ldr     x0, [x19, x8]                            ; x0 = self->values_
  10013807c  mov     x1, x20
  100138080  bl      _objc_msgSend                            ; [self->values_ release]
  100138084  str     x19, [sp]
  100138088  adrp    x8, #0x10041f000
  10013808c  ldr     x8, [x8, #0x1a0]
  100138090  str     x8, [sp, #8]
  100138094  adrp    x8, #0x100416000
  100138098  nop
  10013809c  ldr     x1, [x8, #0xfc8]
  1001380a0  mov     x0, sp
  1001380a4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001380a8  sub     sp, x29, #0x10
  1001380ac  ldp     x20, x19, [sp], #0x10
  1001380b0  ldp     x29, x30, [sp], #0x10
  1001380b4  ret

; ======================================================================
; -[TAGPBEnumDescriptor textFormatNameForEnumValue:]
; address 0x1001380b8  size 544  kind objc
; ======================================================================
  1001380b8  stp     x29, x30, [sp, #-0x10]!
  1001380bc  mov     x29, sp
  1001380c0  stp     x20, x19, [sp, #-0x10]!
  1001380c4  stp     x22, x21, [sp, #-0x10]!
  1001380c8  stp     x24, x23, [sp, #-0x10]!
  1001380cc  stp     x26, x25, [sp, #-0x10]!
  1001380d0  stp     x28, x27, [sp, #-0x10]!
  1001380d4  sub     sp, sp, #0x10
  1001380d8  mov     x20, x2
  1001380dc  mov     x19, x0
  1001380e0  adrp    x8, #0x100420000
  1001380e4  ldrsw   x26, [x8, #0x998]                        ; ivar offset TAGPBEnumDescriptor.values_ (+0x10)
  1001380e8  ldr     x0, [x19, x26]                           ; x0 = self->values_
  1001380ec  adrp    x8, #0x100416000
  1001380f0  nop
  1001380f4  ldr     x1, [x8, #0xe30]
  1001380f8  bl      _objc_msgSend                            ; [self->values_ count]
  1001380fc  mov     x22, x0
  100138100  mov     x21, #0
  100138104  cbz     x22, loc_100138150                       ; if ([self->values_ count] == 0)
  100138108  adrp    x8, #0x10041b000
  10013810c  nop
  100138110  ldr     x23, [x8, #0xf28]
  100138114  adrp    x8, #0x10041c000
  100138118  add     x8, x8, #0x50                            ; &@selector(number)
  10013811c  ldr     x25, [x8]
loc_100138120:
  100138120  ldr     x0, [x19, x26]                           ; x0 = self->values_
  100138124  mov     x1, x23
  100138128  mov     x2, x21
  10013812c  bl      _objc_msgSend                            ; [self->values_ objectAtIndexedSubscript:x2]
  100138130  mov     x24, x0
  100138134  mov     x1, x25
  100138138  bl      _objc_msgSend                            ; [[self->values_ objectAtIndexedSubscript:x2] number]
  10013813c  cmp     w0, w20
  100138140  b.eq    loc_100138154                            ; if ([[self->values_ objectAtIndexedSubscript:x2] number] == arg1)
  100138144  add     x21, x21, #1
  100138148  cmp     x21, x22
  10013814c  b.lo    loc_100138120                            ; if ((x21 + 1) <u [self->values_ count])
loc_100138150:
  100138150  mov     x24, #0
loc_100138154:
  100138154  adrp    x8, #0x100417000
  100138158  nop
  10013815c  ldr     x20, [x8, #0x450]
  100138160  mov     x0, x24
  100138164  mov     x1, x20
  100138168  bl      _objc_msgSend                            ; [x0 name]
  10013816c  cbz     x0, loc_1001382b0                        ; if ([x0 name] == 0)
  100138170  mov     x0, x24
  100138174  mov     x1, x20
  100138178  bl      _objc_msgSend                            ; [x0 name]
  10013817c  mov     x20, x0
  100138180  adrp    x8, #0x100420000
  100138184  ldrsw   x8, [x8, #0x994]                         ; ivar offset TAGPBEnumDescriptor.name_ (+0x8)
  100138188  ldr     x0, [x19, x8]                            ; x0 = self->name_
  10013818c  adrp    x8, #0x100417000
  100138190  nop
  100138194  ldr     x22, [x8, #0xc58]
  100138198  mov     x1, x22
  10013819c  bl      _objc_msgSend                            ; [self->name_ length]
  1001381a0  mov     x2, x0
  1001381a4  adrp    x8, #0x10041c000
  1001381a8  nop
  1001381ac  ldr     x1, [x8, #0x110]
  1001381b0  mov     x0, x20
  1001381b4  bl      _objc_msgSend                            ; [[x0 name] substringFromIndex:[self->name_ length]]
  1001381b8  mov     x20, x0
  1001381bc  adrp    x8, #0x100420000
  1001381c0  ldrsw   x8, [x8, #0x990]                         ; ivar offset TAGPBEnumDescriptor.extraTextFormatInfo_ (+0x20)
  1001381c4  ldr     x0, [x19, x8]                            ; x0 = self->extraTextFormatInfo_
  1001381c8  cbz     x0, loc_1001381e0                        ; if (self->extraTextFormatInfo_ == 0)
  1001381cc  mov     x1, x21
  1001381d0  mov     x2, x20
  1001381d4  bl      sub_1001374dc                            ; sub_1001374dc(self->extraTextFormatInfo_, x1, [[x0 name] substringFromIndex:[self->name_ length]])
  1001381d8  mov     x19, x0
  1001381dc  cbnz    x19, loc_1001382b4                       ; if (sub_1001374dc(self->extraTextFormatInfo_, x1, [[x0 name] substringFromIndex:[self->name_ length]]) != 0)
loc_1001381e0:
  1001381e0  mov     x0, x20
  1001381e4  mov     x1, x22
  1001381e8  bl      _objc_msgSend                            ; [[[x0 name] substringFromIndex:[self->name_ length]] length]
  1001381ec  mov     x21, x0
  1001381f0  adrp    x8, #0x10041e000
  1001381f4  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  1001381f8  adrp    x8, #0x10041b000
  1001381fc  nop
  100138200  ldr     x1, [x8, #0x210]
  100138204  mov     x2, x21
  100138208  bl      _objc_msgSend                            ; [NSMutableString stringWithCapacity:[[[x0 name] substringFromIndex:[self->name_ length]] length]]
  10013820c  mov     x19, x0
  100138210  cbz     x21, loc_1001382b4                       ; if ([[[x0 name] substringFromIndex:[self->name_ length]] length] == 0)
  100138214  mov     x22, #0
  100138218  adrp    x8, #0x10041b000
  10013821c  nop
  100138220  ldr     x23, [x8, #0x2c0]
  100138224  adrp    x8, #0x10041a000
  100138228  add     x8, x8, #0x950                           ; &@selector(appendString:)
  10013822c  adrp    x9, #0x100417000
  100138230  add     x9, x9, #0xd88                           ; &@selector(appendFormat:)
  100138234  ldr     x24, [x8]
  100138238  ldr     x25, [x9]
  10013823c  adrp    x26, #0x1003c6000
  100138240  add     x26, x26, #0xef0                         ; @"_"
  100138244  adrp    x27, #0x1003c6000
  100138248  add     x27, x27, #0xf10                         ; @"%c"
loc_10013824c:
  10013824c  mov     x0, x20
  100138250  mov     x1, x23
  100138254  mov     x2, x22
  100138258  bl      _objc_msgSend                            ; [[[x0 name] substringFromIndex:[self->name_ length]] characterAtIndex:x2]
  10013825c  mov     x28, x0
  100138260  cbz     x22, loc_100138284                       ; if (x22 == 0)
  100138264  cmp     w28, #0x41
  100138268  b.lo    loc_100138284                            ; if ([[[x0 name] substringFromIndex:[self->name_ length]] characterAtIndex:x2] <u 65)
  10013826c  cmp     w28, #0x5a
  100138270  b.hi    loc_100138284                            ; if ([[[x0 name] substringFromIndex:[self->name_ length]] characterAtIndex:x2] >u 90)
  100138274  mov     x0, x19
  100138278  mov     x1, x24
  10013827c  mov     x2, x26
  100138280  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:[[[x0 name] substringFromIndex:[self->name_ length]] length]] appendString:@"_"]
loc_100138284:
  100138284  sxtb    w0, w28
  100138288  bl      ___toupper                               ; toupper([[[x0 name] substringFromIndex:[self->name_ length]] characterAtIndex:x2])
  10013828c  str     x0, [sp]
  100138290  mov     x0, x19
  100138294  mov     x1, x25
  100138298  mov     x2, x27
  10013829c  bl      _objc_msgSend                            ; [[NSMutableString stringWithCapacity:[[[x0 name] substringFromIndex:[self->name_ length]] length]] appendFormat:@"%c", toupper([[[x0 name] substringFromIndex:[self->name_ length]] characterAtIndex:x2…]
  1001382a0  add     x22, x22, #1
  1001382a4  cmp     x21, x22
  1001382a8  b.ne    loc_10013824c                            ; if ([[[x0 name] substringFromIndex:[self->name_ length]] length] != (x22 + 1))
  1001382ac  b       loc_1001382b4
loc_1001382b0:
  1001382b0  mov     x19, #0
loc_1001382b4:
  1001382b4  mov     x0, x19
  1001382b8  sub     sp, x29, #0x50
  1001382bc  ldp     x28, x27, [sp], #0x10
  1001382c0  ldp     x26, x25, [sp], #0x10
  1001382c4  ldp     x24, x23, [sp], #0x10
  1001382c8  ldp     x22, x21, [sp], #0x10
  1001382cc  ldp     x20, x19, [sp], #0x10
  1001382d0  ldp     x29, x30, [sp], #0x10
  1001382d4  ret

; ======================================================================
; -[TAGPBEnumDescriptor name]
; address 0x1001382d8  size 16  kind objc
; ======================================================================
  1001382d8  adrp    x8, #0x100420000
  1001382dc  ldrsw   x8, [x8, #0x994]                         ; ivar offset TAGPBEnumDescriptor.name_ (+0x8)
  1001382e0  ldr     x0, [x0, x8]                             ; x0 = self->name_
  1001382e4  ret

; ======================================================================
; -[TAGPBEnumDescriptor values]
; address 0x1001382e8  size 16  kind objc
; ======================================================================
  1001382e8  adrp    x8, #0x100420000
  1001382ec  ldrsw   x8, [x8, #0x998]                         ; ivar offset TAGPBEnumDescriptor.values_ (+0x10)
  1001382f0  ldr     x0, [x0, x8]                             ; x0 = self->values_
  1001382f4  ret

; ======================================================================
; -[TAGPBEnumDescriptor enumVerifier]
; address 0x1001382f8  size 16  kind objc
; ======================================================================
  1001382f8  adrp    x8, #0x100420000
  1001382fc  ldrsw   x8, [x8, #0x99c]                         ; ivar offset TAGPBEnumDescriptor.enumVerifier_ (+0x18)
  100138300  ldr     x0, [x0, x8]                             ; x0 = self->enumVerifier_
  100138304  ret
