// unit TAGPBDescriptor — 18 functions
//   0x100135ab4     932  +[TAGPBDescriptor allocDescriptorForClass:rootClass:fields:fieldCount:enums:enumCount:ranges:rangeCount:storageSize:wireFormat:]
//   0x100135e58     412  +[TAGPBDescriptor allocDescriptorForClass:rootClass:fields:fieldCount:enums:enumCount:ranges:rangeCount:storageSize:wireFormat:extraTextFormatInfo:]
//   0x100135ff4     276  -[TAGPBDescriptor initWithClass:fields:enums:extensions:extensionRanges:storageSize:wireFormat:]
//   0x100136108     164  -[TAGPBDescriptor dealloc]
//   0x1001361ac      16  -[TAGPBDescriptor name]
//   0x1001361bc      16  -[TAGPBDescriptor copyWithZone:]
//   0x1001361cc     304  -[TAGPBDescriptor fieldWithNumber:]
//   0x1001362fc     348  -[TAGPBDescriptor fieldWithName:]
//   0x100136458     348  -[TAGPBDescriptor enumWithName:]
//   0x1001365b4     304  -[TAGPBDescriptor extensionWithNumber:]
//   0x1001366e4     348  -[TAGPBDescriptor extensionWithName:]
//   0x100136840      16  -[TAGPBDescriptor messageClass]
//   0x100136850      16  -[TAGPBDescriptor fields]
//   0x100136860      16  -[TAGPBDescriptor enums]
//   0x100136870      16  -[TAGPBDescriptor extensions]
//   0x100136880      16  -[TAGPBDescriptor extensionRanges]
//   0x100136890      16  -[TAGPBDescriptor storageSize]
//   0x1001368a0      16  -[TAGPBDescriptor isWireFormat]

; ======================================================================
; +[TAGPBDescriptor allocDescriptorForClass:rootClass:fields:fieldCount:enums:enumCount:ranges:rangeCount:storageSize:wireFormat:]
; address 0x100135ab4  size 932  kind objc
; ======================================================================
  100135ab4  stp     x29, x30, [sp, #-0x10]!
  100135ab8  mov     x29, sp
  100135abc  stp     x20, x19, [sp, #-0x10]!
  100135ac0  stp     x22, x21, [sp, #-0x10]!
  100135ac4  stp     x24, x23, [sp, #-0x10]!
  100135ac8  stp     x26, x25, [sp, #-0x10]!
  100135acc  stp     x28, x27, [sp, #-0x10]!
  100135ad0  sub     sp, sp, #0x70
  100135ad4  str     x7, [sp, #8]
  100135ad8  stur    x6, [x29, #-0x58]
  100135adc  mov     x20, x4
  100135ae0  mov     x22, x3
  100135ae4  str     x2, [sp, #0x18]
  100135ae8  stp     x0, x1, [sp, #0x50]
  100135aec  ldrb    w8, [x29, #0x28]
  100135af0  str     w8, [sp, #0x14]
  100135af4  ldr     x8, [x29, #0x20]
  100135af8  str     x8, [sp, #0x20]
  100135afc  ldr     x8, [x29, #0x18]
  100135b00  str     x8, [sp, #0x60]
  100135b04  ldr     x23, [x29, #0x10]
  100135b08  mov     x21, #0
  100135b0c  cbz     x5, loc_100135bc8                        ; if (arg4 == 0)
  100135b10  adrp    x8, #0x100416000
  100135b14  nop
  100135b18  ldr     x24, [x8, #0xac8]
  100135b1c  adrp    x8, #0x10041c000
  100135b20  nop
  100135b24  ldr     x8, [x8, #0x528]
  100135b28  str     x8, [sp, #0x40]
  100135b2c  adrp    x8, #0x10041c000
  100135b30  nop
  100135b34  ldr     x28, [x8, #0x738]
  100135b38  adrp    x8, #0x100416000
  100135b3c  nop
  100135b40  ldr     x27, [x8, #0xd90]
  100135b44  adrp    x8, #0x10041b000
  100135b48  add     x8, x8, #0xd70                           ; &@selector(release)
  100135b4c  ldr     x19, [x8]
  100135b50  mov     x25, x5
  100135b54  str     x5, [sp, #0x48]
loc_100135b58:
  100135b58  cbnz    x21, loc_100135b7c                       ; if (x21 != 0)
  100135b5c  adrp    x8, #0x10041e000
  100135b60  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  100135b64  mov     x1, x24
  100135b68  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  100135b6c  mov     w2, #0
  100135b70  ldp     x1, x3, [sp, #0x40]
  100135b74  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:0 capacity:arg4]
  100135b78  mov     x21, x0
loc_100135b7c:
  100135b7c  adrp    x8, #0x10041e000
  100135b80  ldr     x0, [x8, #0x790]                         ; class TAGPBFieldDescriptor
  100135b84  mov     x1, x24
  100135b88  bl      _objc_msgSend                            ; [TAGPBFieldDescriptor alloc]
  100135b8c  mov     x1, x28
  100135b90  mov     x2, x20
  100135b94  mov     x3, x22
  100135b98  bl      _objc_msgSend                            ; [[TAGPBFieldDescriptor alloc] initWithFieldDescription:x2 rootClass:arg2]
  100135b9c  mov     x26, x0
  100135ba0  mov     x0, x21
  100135ba4  mov     x1, x27
  100135ba8  mov     x2, x26
  100135bac  bl      _objc_msgSend                            ; [x0 addObject:[[TAGPBFieldDescriptor alloc] initWithFieldDescription:x2 rootClass:arg2]]
  100135bb0  mov     x0, x26
  100135bb4  mov     x1, x19
  100135bb8  bl      _objc_msgSend                            ; [[[TAGPBFieldDescriptor alloc] initWithFieldDescription:x2 rootClass:arg2] release]
  100135bbc  add     x20, x20, #0x38
  100135bc0  sub     x25, x25, #1
  100135bc4  cbnz    x25, loc_100135b58                       ; if ((x25 - 1) != 0)
loc_100135bc8:
  100135bc8  ldr     x25, [sp, #8]
  100135bcc  mov     x24, #0
  100135bd0  cbz     x25, loc_100135cfc                       ; if (arg6 == 0)
  100135bd4  mov     x28, #0
  100135bd8  adrp    x8, #0x100416000
  100135bdc  nop
  100135be0  adrp    x9, #0x10041c000
  100135be4  add     x9, x9, #0x528                           ; &@selector(initWithValueType:capacity:)
  100135be8  ldr     x8, [x8, #0xac8]
  100135bec  str     x8, [sp, #0x48]
  100135bf0  ldr     x8, [x9]
  100135bf4  str     x8, [sp, #0x40]
  100135bf8  adrp    x8, #0x10041c000
  100135bfc  nop
  100135c00  ldr     x22, [x8, #0x740]
  100135c04  adrp    x8, #0x10041c000
  100135c08  nop
  100135c0c  ldr     x8, [x8, #0x470]
  100135c10  str     x8, [sp, #0x38]
  100135c14  adrp    x8, #0x10041c000
  100135c18  nop
  100135c1c  ldr     x8, [x8, #0x478]
  100135c20  str     x8, [sp, #0x30]
  100135c24  adrp    x8, #0x10041c000
  100135c28  nop
  100135c2c  ldr     x8, [x8, #0x480]
  100135c30  str     x8, [sp, #0x28]
  100135c34  adrp    x8, #0x100416000
  100135c38  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  100135c3c  ldr     x20, [x8]
  100135c40  adrp    x19, #0x10041e000
loc_100135c44:
  100135c44  cbnz    x24, loc_100135c6c                       ; if (x24 != 0)
  100135c48  adrp    x8, #0x10041e000
  100135c4c  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  100135c50  ldr     x1, [sp, #0x48]
  100135c54  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  100135c58  mov     w2, #0
  100135c5c  ldr     x1, [sp, #0x40]
  100135c60  mov     x3, x25
  100135c64  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:0 capacity:arg6]
  100135c68  mov     x24, x0
loc_100135c6c:
  100135c6c  ldr     x0, [x19, #0x698]                        ; class TAGPBEnumDescriptor
  100135c70  ldur    x8, [x29, #-0x58]
  100135c74  ldr     x2, [x8, x28, lsl #3]
  100135c78  mov     x1, x22
  100135c7c  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor descriptorForName:x2]
  100135c80  mov     x27, x0
  100135c84  cbnz    x27, loc_100135ce0                       ; if ([TAGPBEnumDescriptor descriptorForName:x2] != 0)
  100135c88  adrp    x8, #0x10041e000
  100135c8c  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  100135c90  ldr     x1, [sp, #0x38]
  100135c94  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  100135c98  mov     x26, x0
  100135c9c  adrp    x8, #0x10041d000
  100135ca0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100135ca4  ldr     x1, [sp, #0x30]
  100135ca8  adrp    x2, #0x100393000
  100135cac  add     x2, x2, #0xcb4                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100135cb0  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  100135cb4  mov     x4, x0
  100135cb8  ldur    x8, [x29, #-0x58]
  100135cbc  ldr     x8, [x8, x28, lsl #3]
  100135cc0  str     x8, [sp]
  100135cc4  mov     x5, #0x6a
  100135cc8  mov     x0, x26
  100135ccc  ldr     x1, [sp, #0x28]
  100135cd0  ldp     x3, x2, [sp, #0x50]
  100135cd4  adrp    x6, #0x1003c6000
  100135cd8  add     x6, x6, #0xdf0                           ; @"Unable to find enum descriptor %s"
  100135cdc  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:TAGPBDescriptor file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:106 description:@"Unable to find enum descriptor %s"]
loc_100135ce0:
  100135ce0  mov     x0, x24
  100135ce4  mov     x1, x20
  100135ce8  mov     x2, x27
  100135cec  bl      _objc_msgSend                            ; [x0 addObject:[TAGPBEnumDescriptor descriptorForName:x2]]
  100135cf0  add     x28, x28, #1
  100135cf4  cmp     x25, x28
  100135cf8  b.ne    loc_100135c44                            ; if (arg6 != (x28 + 1))
loc_100135cfc:
  100135cfc  ldr     x9, [sp, #0x60]
  100135d00  mov     x25, #0
  100135d04  cbz     x9, loc_100135dbc                        ; if (x9 == 0)
  100135d08  adrp    x8, #0x100416000
  100135d0c  nop
  100135d10  ldr     x19, [x8, #0xac8]
  100135d14  adrp    x8, #0x10041c000
  100135d18  nop
  100135d1c  ldr     x8, [x8, #0x528]
  100135d20  stur    x8, [x29, #-0x58]
  100135d24  adrp    x8, #0x10041c000
  100135d28  nop
  100135d2c  ldr     x22, [x8, #0x748]
  100135d30  adrp    x8, #0x100416000
  100135d34  nop
  100135d38  ldr     x26, [x8, #0xd90]
  100135d3c  adrp    x8, #0x10041b000
  100135d40  add     x8, x8, #0xd70                           ; &@selector(release)
  100135d44  ldr     x27, [x8]
  100135d48  mov     x20, x9
loc_100135d4c:
  100135d4c  cbnz    x25, loc_100135d74                       ; if (x25 != 0)
  100135d50  adrp    x8, #0x10041e000
  100135d54  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  100135d58  mov     x1, x19
  100135d5c  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  100135d60  mov     w2, #0
  100135d64  ldur    x1, [x29, #-0x58]
  100135d68  ldr     x3, [sp, #0x60]
  100135d6c  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:0 capacity:x3]
  100135d70  mov     x25, x0
loc_100135d74:
  100135d74  adrp    x8, #0x10041e000
  100135d78  ldr     x0, [x8, #0x798]                         ; class TAGPBExtensionRange
  100135d7c  mov     x1, x19
  100135d80  bl      _objc_msgSend                            ; [TAGPBExtensionRange alloc]
  100135d84  mov     x1, x22
  100135d88  mov     x2, x23
  100135d8c  bl      _objc_msgSend                            ; [[TAGPBExtensionRange alloc] initWithRangeDescription:x2]
  100135d90  mov     x28, x0
  100135d94  mov     x0, x25
  100135d98  mov     x1, x26
  100135d9c  mov     x2, x28
  100135da0  bl      _objc_msgSend                            ; [x0 addObject:[[TAGPBExtensionRange alloc] initWithRangeDescription:x2]]
  100135da4  mov     x0, x28
  100135da8  mov     x1, x27
  100135dac  bl      _objc_msgSend                            ; [[[TAGPBExtensionRange alloc] initWithRangeDescription:x2] release]
  100135db0  add     x23, x23, #8
  100135db4  sub     x20, x20, #1
  100135db8  cbnz    x20, loc_100135d4c                       ; if ((x20 - 1) != 0)
loc_100135dbc:
  100135dbc  adrp    x8, #0x10041e000
  100135dc0  ldr     x0, [x8, #0x660]                         ; class TAGPBDescriptor
  100135dc4  adrp    x8, #0x100416000
  100135dc8  nop
  100135dcc  ldr     x1, [x8, #0xac8]
  100135dd0  bl      _objc_msgSend                            ; [TAGPBDescriptor alloc]
  100135dd4  adrp    x8, #0x10041c000
  100135dd8  nop
  100135ddc  ldr     x1, [x8, #0x750]
  100135de0  mov     x5, #0
  100135de4  ldr     w8, [sp, #0x14]
  100135de8  strb    w8, [sp]
  100135dec  ldp     x2, x7, [sp, #0x18]
  100135df0  mov     x3, x21
  100135df4  mov     x4, x24
  100135df8  mov     x6, x25
  100135dfc  bl      _objc_msgSend                            ; [[TAGPBDescriptor alloc] initWithClass:arg1 fields:x3 enums:x4 extensions:0 extensionRanges:x6 storageSize:x7 wireFormat:x8]
  100135e00  mov     x19, x0
  100135e04  adrp    x8, #0x10041b000
  100135e08  nop
  100135e0c  ldr     x20, [x8, #0xd70]
  100135e10  mov     x0, x21
  100135e14  mov     x1, x20
  100135e18  bl      _objc_msgSend                            ; [x0 release]
  100135e1c  mov     x0, x24
  100135e20  mov     x1, x20
  100135e24  bl      _objc_msgSend                            ; [x0 release]
  100135e28  mov     x0, x25
  100135e2c  mov     x1, x20
  100135e30  bl      _objc_msgSend                            ; [x0 release]
  100135e34  mov     x0, x19
  100135e38  sub     sp, x29, #0x50
  100135e3c  ldp     x28, x27, [sp], #0x10
  100135e40  ldp     x26, x25, [sp], #0x10
  100135e44  ldp     x24, x23, [sp], #0x10
  100135e48  ldp     x22, x21, [sp], #0x10
  100135e4c  ldp     x20, x19, [sp], #0x10
  100135e50  ldp     x29, x30, [sp], #0x10
  100135e54  ret

; ======================================================================
; +[TAGPBDescriptor allocDescriptorForClass:rootClass:fields:fieldCount:enums:enumCount:ranges:rangeCount:storageSize:wireFormat:extraTextFormatInfo:]
; address 0x100135e58  size 412  kind objc
; ======================================================================
  100135e58  stp     x29, x30, [sp, #-0x10]!
  100135e5c  mov     x29, sp
  100135e60  stp     x20, x19, [sp, #-0x10]!
  100135e64  stp     x22, x21, [sp, #-0x10]!
  100135e68  stp     x24, x23, [sp, #-0x10]!
  100135e6c  stp     x26, x25, [sp, #-0x10]!
  100135e70  stp     x28, x27, [sp, #-0x10]!
  100135e74  sub     sp, sp, #0x100
  100135e78  adrp    x9, #0x1003b0000
  100135e7c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100135e80  adrp    x8, #0x10041c000
  100135e84  nop
  100135e88  ldr     x1, [x8, #0x4a0]
  100135e8c  ldr     x8, [x9]                                 ; x8 = ___stack_chk_guard[+0x0]
  100135e90  ldr     x20, [x29, #0x30]
  100135e94  ldp     x9, x10, [x29, #0x10]
  100135e98  ldr     x11, [x29, #0x20]
  100135e9c  stur    x8, [x29, #-0x58]
  100135ea0  ldrb    w8, [x29, #0x28]
  100135ea4  strb    w8, [sp, #0x18]
  100135ea8  stp     x10, x11, [sp, #8]
  100135eac  str     x9, [sp]
  100135eb0  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 ranges:x8 rangeCount:x9 storageSize:x10 wireFormat:x11]
  100135eb4  str     x0, [sp, #0x30]
  100135eb8  cbz     x20, loc_100135fb4                       ; if (x20 == 0)
  100135ebc  adrp    x8, #0x10041e000
  100135ec0  ldr     x0, [x8, #0x4d0]                         ; class NSValue
  100135ec4  adrp    x8, #0x10041c000
  100135ec8  nop
  100135ecc  ldr     x1, [x8, #0x758]
  100135ed0  mov     x2, x20
  100135ed4  bl      _objc_msgSend                            ; [NSValue valueWithPointer:x2]
  100135ed8  mov     x20, x0
  100135edc  stp     xzr, xzr, [x29, #-0x68]
  100135ee0  stp     xzr, xzr, [x29, #-0x78]
  100135ee4  stp     xzr, xzr, [x29, #-0x88]
  100135ee8  stp     xzr, xzr, [x29, #-0x98]
  100135eec  adrp    x8, #0x100420000
  100135ef0  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100135ef4  ldr     x9, [sp, #0x30]
  100135ef8  ldr     x21, [x9, x8]                            ; x21 = [TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 ranges:x8 rangeCount:x9 storageSize:x10 wireFormat:x11]->fields_
  100135efc  adrp    x8, #0x100416000
  100135f00  nop
  100135f04  ldr     x22, [x8, #0xe00]
  100135f08  sub     x2, x29, #0x98
  100135f0c  add     x3, sp, #0x38
  100135f10  mov     x4, #0x10
  100135f14  mov     x0, x21
  100135f18  mov     x1, x22
  100135f1c  bl      _objc_msgSend                            ; [[TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 ranges:x8 rangeCount:x9 storageSize:x10 wireFormat:x11]->fields_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  100135f20  mov     x23, x0
  100135f24  cbz     x23, loc_100135fb4                       ; if ([[TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 ranges:x8 rangeCount:x9 storageSize:x10 wireFormat:x11]->fields_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  100135f28  ldur    x8, [x29, #-0x88]
  100135f2c  ldr     x28, [x8]
  100135f30  adrp    x8, #0x100420000
  100135f34  ldrsw   x27, [x8, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100135f38  sub     x24, x29, #0x98
  100135f3c  add     x25, sp, #0x38
  100135f40  adrp    x26, #0x1002fa000
  100135f44  add     x26, x26, #0xa50                         ; tconst_1002faa50
loc_100135f48:
  100135f48  mov     x19, #0
loc_100135f4c:
  100135f4c  ldur    x8, [x29, #-0x88]
  100135f50  ldr     x8, [x8]
  100135f54  cmp     x8, x28
  100135f58  b.eq    loc_100135f64                            ; if (x8 == x28)
  100135f5c  mov     x0, x21
  100135f60  bl      _objc_enumerationMutation                ; objc_enumerationMutation([TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 ranges:x8 rangeCount:x9 storageSize:x10 wireFormat:x11]->fields_)
loc_100135f64:
  100135f64  ldur    x8, [x29, #-0x90]
  100135f68  ldr     x0, [x8, x19, lsl #3]
  100135f6c  ldr     x8, [x0, x27]                            ; x8 = x0->description_
  100135f70  ldrb    w8, [x8, #0x12]                          ; w8 = x0->description_[+0x12]
  100135f74  tbz     w8, #5, loc_100135f88                    ; if (!(x0->description_[+0x12] & (1<<5)))
  100135f78  mov     x3, #1
  100135f7c  mov     x1, x26
  100135f80  mov     x2, x20
  100135f84  bl      _objc_setAssociatedObject                ; objc_setAssociatedObject(x0, tconst_1002faa50, [NSValue valueWithPointer:x2], 1)
loc_100135f88:
  100135f88  add     x19, x19, #1
  100135f8c  cmp     x19, x23
  100135f90  b.lo    loc_100135f4c                            ; if ((x19 + 1) <u [[TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 rang…)
  100135f94  mov     x4, #0x10
  100135f98  mov     x0, x21
  100135f9c  mov     x1, x22
  100135fa0  mov     x2, x24
  100135fa4  mov     x3, x25
  100135fa8  bl      _objc_msgSend                            ; [[TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 ranges:x8 rangeCount:x9 storageSize:x10 wireFormat:x11]->fields_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  100135fac  mov     x23, x0
  100135fb0  cbnz    x23, loc_100135f48                       ; if ([[TAGPBDescriptor allocDescriptorForClass:arg1 rootClass:arg2 fields:arg3 fieldCount:arg4 enums:arg5 enumCount:arg6 ranges:x8 rangeCount:x9 storageSize:x10 wireFormat:x11]->fields_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_100135fb4:
  100135fb4  adrp    x8, #0x1003b0000
  100135fb8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100135fbc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100135fc0  ldur    x9, [x29, #-0x58]
  100135fc4  sub     x8, x8, x9
  100135fc8  cbnz    x8, loc_100135ff0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100135fcc  ldr     x0, [sp, #0x30]
  100135fd0  sub     sp, x29, #0x50
  100135fd4  ldp     x28, x27, [sp], #0x10
  100135fd8  ldp     x26, x25, [sp], #0x10
  100135fdc  ldp     x24, x23, [sp], #0x10
  100135fe0  ldp     x22, x21, [sp], #0x10
  100135fe4  ldp     x20, x19, [sp], #0x10
  100135fe8  ldp     x29, x30, [sp], #0x10
  100135fec  ret
loc_100135ff0:
  100135ff0  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBDescriptor initWithClass:fields:enums:extensions:extensionRanges:storageSize:wireFormat:]
; address 0x100135ff4  size 276  kind objc
; ======================================================================
  100135ff4  stp     x29, x30, [sp, #-0x10]!
  100135ff8  mov     x29, sp
  100135ffc  stp     x20, x19, [sp, #-0x10]!
  100136000  stp     x22, x21, [sp, #-0x10]!
  100136004  stp     x24, x23, [sp, #-0x10]!
  100136008  stp     x26, x25, [sp, #-0x10]!
  10013600c  sub     sp, sp, #0x10
  100136010  mov     x19, x7
  100136014  mov     x20, x6
  100136018  mov     x22, x5
  10013601c  mov     x23, x4
  100136020  mov     x24, x3
  100136024  mov     x25, x2
  100136028  str     x0, [sp]
  10013602c  adrp    x8, #0x10041f000
  100136030  ldr     x8, [x8, #0x188]
  100136034  str     x8, [sp, #8]
  100136038  adrp    x8, #0x100416000
  10013603c  nop
  100136040  ldr     x1, [x8, #0xab8]
  100136044  mov     x0, sp
  100136048  bl      _objc_msgSendSuper2                      ; [super init]
  10013604c  mov     x21, x0
  100136050  cbz     x21, loc_1001360e8                       ; if (self == 0)
  100136054  ldrb    w26, [x29, #0x10]
  100136058  adrp    x8, #0x100420000
  10013605c  ldrsw   x8, [x8, #0x950]                         ; ivar offset TAGPBDescriptor.messageClass_ (+0x10)
  100136060  str     x25, [x21, x8]                           ; self->messageClass_ = arg1
  100136064  adrp    x8, #0x10041b000
  100136068  nop
  10013606c  ldr     x25, [x8, #0xdb8]
  100136070  mov     x0, x24
  100136074  mov     x1, x25
  100136078  bl      _objc_msgSend                            ; [arg2 retain]
  10013607c  adrp    x8, #0x100420000
  100136080  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100136084  str     x0, [x21, x8]                            ; self->fields_ = [arg2 retain]
  100136088  mov     x0, x23
  10013608c  mov     x1, x25
  100136090  bl      _objc_msgSend                            ; [arg3 retain]
  100136094  adrp    x8, #0x100420000
  100136098  ldrsw   x8, [x8, #0x954]                         ; ivar offset TAGPBDescriptor.enums_ (+0x18)
  10013609c  str     x0, [x21, x8]                            ; self->enums_ = [arg3 retain]
  1001360a0  mov     x0, x22
  1001360a4  mov     x1, x25
  1001360a8  bl      _objc_msgSend                            ; [arg4 retain]
  1001360ac  adrp    x8, #0x100420000
  1001360b0  ldrsw   x8, [x8, #0x958]                         ; ivar offset TAGPBDescriptor.extensions_ (+0x20)
  1001360b4  str     x0, [x21, x8]                            ; self->extensions_ = [arg4 retain]
  1001360b8  mov     x0, x20
  1001360bc  mov     x1, x25
  1001360c0  bl      _objc_msgSend                            ; [arg5 retain]
  1001360c4  adrp    x8, #0x100420000
  1001360c8  ldrsw   x8, [x8, #0x95c]                         ; ivar offset TAGPBDescriptor.extensionRanges_ (+0x38)
  1001360cc  str     x0, [x21, x8]                            ; self->extensionRanges_ = [arg5 retain]
  1001360d0  adrp    x8, #0x100420000
  1001360d4  ldrsw   x8, [x8, #0x960]                         ; ivar offset TAGPBDescriptor.storageSize_ (+0x28)
  1001360d8  str     x19, [x21, x8]                           ; self->storageSize_ = arg6
  1001360dc  adrp    x8, #0x100420000
  1001360e0  ldrsw   x8, [x8, #0x964]                         ; ivar offset TAGPBDescriptor.wireFormat_ (+0x30)
  1001360e4  strb    w26, [x21, x8]                           ; self->wireFormat_ = w26
loc_1001360e8:
  1001360e8  mov     x0, x21
  1001360ec  sub     sp, x29, #0x40
  1001360f0  ldp     x26, x25, [sp], #0x10
  1001360f4  ldp     x24, x23, [sp], #0x10
  1001360f8  ldp     x22, x21, [sp], #0x10
  1001360fc  ldp     x20, x19, [sp], #0x10
  100136100  ldp     x29, x30, [sp], #0x10
  100136104  ret

; ======================================================================
; -[TAGPBDescriptor dealloc]
; address 0x100136108  size 164  kind objc
; ======================================================================
  100136108  stp     x29, x30, [sp, #-0x10]!
  10013610c  mov     x29, sp
  100136110  stp     x20, x19, [sp, #-0x10]!
  100136114  sub     sp, sp, #0x10
  100136118  mov     x19, x0
  10013611c  adrp    x8, #0x100420000
  100136120  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100136124  ldr     x0, [x19, x8]                            ; x0 = self->fields_
  100136128  adrp    x8, #0x10041b000
  10013612c  nop
  100136130  ldr     x20, [x8, #0xd70]
  100136134  mov     x1, x20
  100136138  bl      _objc_msgSend                            ; [self->fields_ release]
  10013613c  adrp    x8, #0x100420000
  100136140  ldrsw   x8, [x8, #0x954]                         ; ivar offset TAGPBDescriptor.enums_ (+0x18)
  100136144  ldr     x0, [x19, x8]                            ; x0 = self->enums_
  100136148  mov     x1, x20
  10013614c  bl      _objc_msgSend                            ; [self->enums_ release]
  100136150  adrp    x8, #0x100420000
  100136154  ldrsw   x8, [x8, #0x958]                         ; ivar offset TAGPBDescriptor.extensions_ (+0x20)
  100136158  ldr     x0, [x19, x8]                            ; x0 = self->extensions_
  10013615c  mov     x1, x20
  100136160  bl      _objc_msgSend                            ; [self->extensions_ release]
  100136164  adrp    x8, #0x100420000
  100136168  ldrsw   x8, [x8, #0x95c]                         ; ivar offset TAGPBDescriptor.extensionRanges_ (+0x38)
  10013616c  ldr     x0, [x19, x8]                            ; x0 = self->extensionRanges_
  100136170  mov     x1, x20
  100136174  bl      _objc_msgSend                            ; [self->extensionRanges_ release]
  100136178  str     x19, [sp]
  10013617c  adrp    x8, #0x10041f000
  100136180  ldr     x8, [x8, #0x188]
  100136184  str     x8, [sp, #8]
  100136188  adrp    x8, #0x100416000
  10013618c  nop
  100136190  ldr     x1, [x8, #0xfc8]
  100136194  mov     x0, sp
  100136198  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10013619c  sub     sp, x29, #0x10
  1001361a0  ldp     x20, x19, [sp], #0x10
  1001361a4  ldp     x29, x30, [sp], #0x10
  1001361a8  ret

; ======================================================================
; -[TAGPBDescriptor name]
; address 0x1001361ac  size 16  kind objc
; ======================================================================
  1001361ac  adrp    x8, #0x100420000
  1001361b0  ldrsw   x8, [x8, #0x950]                         ; ivar offset TAGPBDescriptor.messageClass_ (+0x10)
  1001361b4  ldr     x0, [x0, x8]                             ; x0 = self->messageClass_
  1001361b8  b       _NSStringFromClass                       ; NSStringFromClass(self->messageClass_, _cmd)

; ======================================================================
; -[TAGPBDescriptor copyWithZone:]
; address 0x1001361bc  size 16  kind objc
; ======================================================================
  1001361bc  adrp    x8, #0x10041b000
  1001361c0  nop
  1001361c4  ldr     x1, [x8, #0xdb8]
  1001361c8  b       _objc_msgSend                            ; [self retain]

; ======================================================================
; -[TAGPBDescriptor fieldWithNumber:]
; address 0x1001361cc  size 304  kind objc
; ======================================================================
  1001361cc  stp     x29, x30, [sp, #-0x10]!
  1001361d0  mov     x29, sp
  1001361d4  stp     x20, x19, [sp, #-0x10]!
  1001361d8  stp     x22, x21, [sp, #-0x10]!
  1001361dc  stp     x24, x23, [sp, #-0x10]!
  1001361e0  stp     x26, x25, [sp, #-0x10]!
  1001361e4  stp     x28, x27, [sp, #-0x10]!
  1001361e8  sub     sp, sp, #0xd0
  1001361ec  mov     x19, x2
  1001361f0  adrp    x25, #0x1003b0000
  1001361f4  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1001361f8  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  1001361fc  stur    x8, [x29, #-0x58]
  100136200  stp     xzr, xzr, [sp, #0xb8]
  100136204  stp     xzr, xzr, [sp, #0xa8]
  100136208  stp     xzr, xzr, [sp, #0x98]
  10013620c  stp     xzr, xzr, [sp, #0x88]
  100136210  adrp    x8, #0x100420000
  100136214  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100136218  ldr     x20, [x0, x8]                            ; x20 = self->fields_
  10013621c  adrp    x8, #0x100416000
  100136220  nop
  100136224  ldr     x21, [x8, #0xe00]
  100136228  add     x2, sp, #0x88
  10013622c  add     x3, sp, #8
  100136230  mov     x4, #0x10
  100136234  mov     x0, x20
  100136238  mov     x1, x21
  10013623c  bl      _objc_msgSend                            ; [self->fields_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100136240  mov     x22, x0
  100136244  mov     x0, #0
  100136248  cbz     x22, loc_1001362c8                       ; if ([self->fields_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  10013624c  ldr     x8, [sp, #0x98]
  100136250  ldr     x26, [x8]
  100136254  adrp    x27, #0x100420000
  100136258  add     x23, sp, #0x88
  10013625c  add     x24, sp, #8
loc_100136260:
  100136260  mov     x28, #0
loc_100136264:
  100136264  ldr     x8, [sp, #0x98]
  100136268  ldr     x8, [x8]
  10013626c  cmp     x8, x26
  100136270  b.eq    loc_10013627c                            ; if (x8 == x26)
  100136274  mov     x0, x20
  100136278  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->fields_)
loc_10013627c:
  10013627c  ldr     x8, [sp, #0x90]
  100136280  ldr     x0, [x8, x28, lsl #3]
  100136284  ldrsw   x8, [x27, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100136288  ldr     x8, [x0, x8]                             ; x8 = x0->description_
  10013628c  ldr     w8, [x8, #8]                             ; w8 = x0->description_[+0x8]
  100136290  cmp     w8, w19
  100136294  b.eq    loc_1001362c8                            ; if (x0->description_[+0x8] == arg1)
  100136298  add     x28, x28, #1
  10013629c  cmp     x28, x22
  1001362a0  b.lo    loc_100136264                            ; if ((x28 + 1) <u [self->fields_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  1001362a4  mov     x4, #0x10
  1001362a8  mov     x0, x20
  1001362ac  mov     x1, x21
  1001362b0  mov     x2, x23
  1001362b4  mov     x3, x24
  1001362b8  bl      _objc_msgSend                            ; [self->fields_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  1001362bc  mov     x22, x0
  1001362c0  cbnz    x22, loc_100136260                       ; if ([self->fields_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
  1001362c4  mov     x0, #0
loc_1001362c8:
  1001362c8  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  1001362cc  ldur    x9, [x29, #-0x58]
  1001362d0  sub     x8, x8, x9
  1001362d4  cbnz    x8, loc_1001362f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001362d8  sub     sp, x29, #0x50
  1001362dc  ldp     x28, x27, [sp], #0x10
  1001362e0  ldp     x26, x25, [sp], #0x10
  1001362e4  ldp     x24, x23, [sp], #0x10
  1001362e8  ldp     x22, x21, [sp], #0x10
  1001362ec  ldp     x20, x19, [sp], #0x10
  1001362f0  ldp     x29, x30, [sp], #0x10
  1001362f4  ret
loc_1001362f8:
  1001362f8  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBDescriptor fieldWithName:]
; address 0x1001362fc  size 348  kind objc
; ======================================================================
  1001362fc  stp     x29, x30, [sp, #-0x10]!
  100136300  mov     x29, sp
  100136304  stp     x20, x19, [sp, #-0x10]!
  100136308  stp     x22, x21, [sp, #-0x10]!
  10013630c  stp     x24, x23, [sp, #-0x10]!
  100136310  stp     x26, x25, [sp, #-0x10]!
  100136314  stp     x28, x27, [sp, #-0x10]!
  100136318  sub     sp, sp, #0xe0
  10013631c  mov     x19, x2
  100136320  adrp    x23, #0x1003b0000
  100136324  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100136328  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10013632c  stur    x8, [x29, #-0x58]
  100136330  stp     xzr, xzr, [sp, #0xc8]
  100136334  stp     xzr, xzr, [sp, #0xb8]
  100136338  stp     xzr, xzr, [sp, #0xa8]
  10013633c  stp     xzr, xzr, [sp, #0x98]
  100136340  adrp    x8, #0x100420000
  100136344  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100136348  ldr     x20, [x0, x8]                            ; x20 = self->fields_
  10013634c  adrp    x8, #0x100416000
  100136350  nop
  100136354  ldr     x21, [x8, #0xe00]
  100136358  add     x2, sp, #0x98
  10013635c  add     x3, sp, #0x18
  100136360  mov     x4, #0x10
  100136364  mov     x0, x20
  100136368  mov     x1, x21
  10013636c  bl      _objc_msgSend                            ; [self->fields_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100136370  mov     x22, x0
  100136374  mov     x27, #0
  100136378  cbz     x22, loc_100136420                       ; if ([self->fields_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  10013637c  ldr     x8, [sp, #0xa8]
  100136380  ldr     x28, [x8]
  100136384  adrp    x8, #0x100417000
  100136388  nop
  10013638c  ldr     x23, [x8, #0x450]
  100136390  adrp    x8, #0x100416000
  100136394  nop
  100136398  ldr     x24, [x8, #0xf58]
  10013639c  add     x8, sp, #0x98
  1001363a0  str     x8, [sp, #0x10]
  1001363a4  add     x26, sp, #0x18
loc_1001363a8:
  1001363a8  mov     x25, #0
loc_1001363ac:
  1001363ac  ldr     x8, [sp, #0xa8]
  1001363b0  ldr     x8, [x8]
  1001363b4  cmp     x8, x28
  1001363b8  b.eq    loc_1001363c4                            ; if (x8 == x28)
  1001363bc  mov     x0, x20
  1001363c0  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->fields_)
loc_1001363c4:
  1001363c4  ldr     x8, [sp, #0xa0]
  1001363c8  ldr     x27, [x8, x25, lsl #3]
  1001363cc  mov     x0, x27
  1001363d0  mov     x1, x23
  1001363d4  bl      _objc_msgSend                            ; [x0 name]
  1001363d8  mov     x1, x24
  1001363dc  mov     x2, x19
  1001363e0  bl      _objc_msgSend                            ; [[x0 name] isEqualToString:arg1]
  1001363e4  cbnz    w0, loc_100136418                        ; if ([[x0 name] isEqualToString:arg1] != 0)
  1001363e8  add     x25, x25, #1
  1001363ec  cmp     x25, x22
  1001363f0  b.lo    loc_1001363ac                            ; if ((x25 + 1) <u [self->fields_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  1001363f4  mov     x4, #0x10
  1001363f8  mov     x0, x20
  1001363fc  mov     x1, x21
  100136400  ldr     x2, [sp, #0x10]
  100136404  mov     x3, x26
  100136408  bl      _objc_msgSend                            ; [self->fields_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10013640c  mov     x22, x0
  100136410  cbnz    x22, loc_1001363a8                       ; if ([self->fields_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
  100136414  mov     x27, #0
loc_100136418:
  100136418  adrp    x23, #0x1003b0000
  10013641c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
loc_100136420:
  100136420  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100136424  ldur    x9, [x29, #-0x58]
  100136428  sub     x8, x8, x9
  10013642c  cbnz    x8, loc_100136454                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100136430  mov     x0, x27
  100136434  sub     sp, x29, #0x50
  100136438  ldp     x28, x27, [sp], #0x10
  10013643c  ldp     x26, x25, [sp], #0x10
  100136440  ldp     x24, x23, [sp], #0x10
  100136444  ldp     x22, x21, [sp], #0x10
  100136448  ldp     x20, x19, [sp], #0x10
  10013644c  ldp     x29, x30, [sp], #0x10
  100136450  ret
loc_100136454:
  100136454  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBDescriptor enumWithName:]
; address 0x100136458  size 348  kind objc
; ======================================================================
  100136458  stp     x29, x30, [sp, #-0x10]!
  10013645c  mov     x29, sp
  100136460  stp     x20, x19, [sp, #-0x10]!
  100136464  stp     x22, x21, [sp, #-0x10]!
  100136468  stp     x24, x23, [sp, #-0x10]!
  10013646c  stp     x26, x25, [sp, #-0x10]!
  100136470  stp     x28, x27, [sp, #-0x10]!
  100136474  sub     sp, sp, #0xe0
  100136478  mov     x19, x2
  10013647c  adrp    x23, #0x1003b0000
  100136480  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100136484  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100136488  stur    x8, [x29, #-0x58]
  10013648c  stp     xzr, xzr, [sp, #0xc8]
  100136490  stp     xzr, xzr, [sp, #0xb8]
  100136494  stp     xzr, xzr, [sp, #0xa8]
  100136498  stp     xzr, xzr, [sp, #0x98]
  10013649c  adrp    x8, #0x100420000
  1001364a0  ldrsw   x8, [x8, #0x954]                         ; ivar offset TAGPBDescriptor.enums_ (+0x18)
  1001364a4  ldr     x20, [x0, x8]                            ; x20 = self->enums_
  1001364a8  adrp    x8, #0x100416000
  1001364ac  nop
  1001364b0  ldr     x21, [x8, #0xe00]
  1001364b4  add     x2, sp, #0x98
  1001364b8  add     x3, sp, #0x18
  1001364bc  mov     x4, #0x10
  1001364c0  mov     x0, x20
  1001364c4  mov     x1, x21
  1001364c8  bl      _objc_msgSend                            ; [self->enums_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  1001364cc  mov     x22, x0
  1001364d0  mov     x27, #0
  1001364d4  cbz     x22, loc_10013657c                       ; if ([self->enums_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  1001364d8  ldr     x8, [sp, #0xa8]
  1001364dc  ldr     x28, [x8]
  1001364e0  adrp    x8, #0x100417000
  1001364e4  nop
  1001364e8  ldr     x23, [x8, #0x450]
  1001364ec  adrp    x8, #0x100416000
  1001364f0  nop
  1001364f4  ldr     x24, [x8, #0xf58]
  1001364f8  add     x8, sp, #0x98
  1001364fc  str     x8, [sp, #0x10]
  100136500  add     x26, sp, #0x18
loc_100136504:
  100136504  mov     x25, #0
loc_100136508:
  100136508  ldr     x8, [sp, #0xa8]
  10013650c  ldr     x8, [x8]
  100136510  cmp     x8, x28
  100136514  b.eq    loc_100136520                            ; if (x8 == x28)
  100136518  mov     x0, x20
  10013651c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->enums_)
loc_100136520:
  100136520  ldr     x8, [sp, #0xa0]
  100136524  ldr     x27, [x8, x25, lsl #3]
  100136528  mov     x0, x27
  10013652c  mov     x1, x23
  100136530  bl      _objc_msgSend                            ; [x0 name]
  100136534  mov     x1, x24
  100136538  mov     x2, x19
  10013653c  bl      _objc_msgSend                            ; [[x0 name] isEqualToString:arg1]
  100136540  cbnz    w0, loc_100136574                        ; if ([[x0 name] isEqualToString:arg1] != 0)
  100136544  add     x25, x25, #1
  100136548  cmp     x25, x22
  10013654c  b.lo    loc_100136508                            ; if ((x25 + 1) <u [self->enums_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  100136550  mov     x4, #0x10
  100136554  mov     x0, x20
  100136558  mov     x1, x21
  10013655c  ldr     x2, [sp, #0x10]
  100136560  mov     x3, x26
  100136564  bl      _objc_msgSend                            ; [self->enums_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100136568  mov     x22, x0
  10013656c  cbnz    x22, loc_100136504                       ; if ([self->enums_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
  100136570  mov     x27, #0
loc_100136574:
  100136574  adrp    x23, #0x1003b0000
  100136578  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
loc_10013657c:
  10013657c  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100136580  ldur    x9, [x29, #-0x58]
  100136584  sub     x8, x8, x9
  100136588  cbnz    x8, loc_1001365b0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013658c  mov     x0, x27
  100136590  sub     sp, x29, #0x50
  100136594  ldp     x28, x27, [sp], #0x10
  100136598  ldp     x26, x25, [sp], #0x10
  10013659c  ldp     x24, x23, [sp], #0x10
  1001365a0  ldp     x22, x21, [sp], #0x10
  1001365a4  ldp     x20, x19, [sp], #0x10
  1001365a8  ldp     x29, x30, [sp], #0x10
  1001365ac  ret
loc_1001365b0:
  1001365b0  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBDescriptor extensionWithNumber:]
; address 0x1001365b4  size 304  kind objc
; ======================================================================
  1001365b4  stp     x29, x30, [sp, #-0x10]!
  1001365b8  mov     x29, sp
  1001365bc  stp     x20, x19, [sp, #-0x10]!
  1001365c0  stp     x22, x21, [sp, #-0x10]!
  1001365c4  stp     x24, x23, [sp, #-0x10]!
  1001365c8  stp     x26, x25, [sp, #-0x10]!
  1001365cc  stp     x28, x27, [sp, #-0x10]!
  1001365d0  sub     sp, sp, #0xd0
  1001365d4  mov     x19, x2
  1001365d8  adrp    x25, #0x1003b0000
  1001365dc  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1001365e0  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  1001365e4  stur    x8, [x29, #-0x58]
  1001365e8  stp     xzr, xzr, [sp, #0xb8]
  1001365ec  stp     xzr, xzr, [sp, #0xa8]
  1001365f0  stp     xzr, xzr, [sp, #0x98]
  1001365f4  stp     xzr, xzr, [sp, #0x88]
  1001365f8  adrp    x8, #0x100420000
  1001365fc  ldrsw   x8, [x8, #0x958]                         ; ivar offset TAGPBDescriptor.extensions_ (+0x20)
  100136600  ldr     x20, [x0, x8]                            ; x20 = self->extensions_
  100136604  adrp    x8, #0x100416000
  100136608  nop
  10013660c  ldr     x21, [x8, #0xe00]
  100136610  add     x2, sp, #0x88
  100136614  add     x3, sp, #8
  100136618  mov     x4, #0x10
  10013661c  mov     x0, x20
  100136620  mov     x1, x21
  100136624  bl      _objc_msgSend                            ; [self->extensions_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100136628  mov     x22, x0
  10013662c  mov     x0, #0
  100136630  cbz     x22, loc_1001366b0                       ; if ([self->extensions_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  100136634  ldr     x8, [sp, #0x98]
  100136638  ldr     x26, [x8]
  10013663c  adrp    x27, #0x100420000
  100136640  add     x23, sp, #0x88
  100136644  add     x24, sp, #8
loc_100136648:
  100136648  mov     x28, #0
loc_10013664c:
  10013664c  ldr     x8, [sp, #0x98]
  100136650  ldr     x8, [x8]
  100136654  cmp     x8, x26
  100136658  b.eq    loc_100136664                            ; if (x8 == x26)
  10013665c  mov     x0, x20
  100136660  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->extensions_)
loc_100136664:
  100136664  ldr     x8, [sp, #0x90]
  100136668  ldr     x0, [x8, x28, lsl #3]
  10013666c  ldrsw   x8, [x27, #0x94c]                        ; ivar offset TAGPBFieldDescriptor.description_ (+0x8)
  100136670  ldr     x8, [x0, x8]                             ; x8 = x0->description_
  100136674  ldr     w8, [x8, #8]                             ; w8 = x0->description_[+0x8]
  100136678  cmp     w8, w19
  10013667c  b.eq    loc_1001366b0                            ; if (x0->description_[+0x8] == arg1)
  100136680  add     x28, x28, #1
  100136684  cmp     x28, x22
  100136688  b.lo    loc_10013664c                            ; if ((x28 + 1) <u [self->extensions_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  10013668c  mov     x4, #0x10
  100136690  mov     x0, x20
  100136694  mov     x1, x21
  100136698  mov     x2, x23
  10013669c  mov     x3, x24
  1001366a0  bl      _objc_msgSend                            ; [self->extensions_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  1001366a4  mov     x22, x0
  1001366a8  cbnz    x22, loc_100136648                       ; if ([self->extensions_ countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
  1001366ac  mov     x0, #0
loc_1001366b0:
  1001366b0  ldr     x8, [x25]                                ; x8 = ___stack_chk_guard[+0x0]
  1001366b4  ldur    x9, [x29, #-0x58]
  1001366b8  sub     x8, x8, x9
  1001366bc  cbnz    x8, loc_1001366e0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001366c0  sub     sp, x29, #0x50
  1001366c4  ldp     x28, x27, [sp], #0x10
  1001366c8  ldp     x26, x25, [sp], #0x10
  1001366cc  ldp     x24, x23, [sp], #0x10
  1001366d0  ldp     x22, x21, [sp], #0x10
  1001366d4  ldp     x20, x19, [sp], #0x10
  1001366d8  ldp     x29, x30, [sp], #0x10
  1001366dc  ret
loc_1001366e0:
  1001366e0  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBDescriptor extensionWithName:]
; address 0x1001366e4  size 348  kind objc
; ======================================================================
  1001366e4  stp     x29, x30, [sp, #-0x10]!
  1001366e8  mov     x29, sp
  1001366ec  stp     x20, x19, [sp, #-0x10]!
  1001366f0  stp     x22, x21, [sp, #-0x10]!
  1001366f4  stp     x24, x23, [sp, #-0x10]!
  1001366f8  stp     x26, x25, [sp, #-0x10]!
  1001366fc  stp     x28, x27, [sp, #-0x10]!
  100136700  sub     sp, sp, #0xe0
  100136704  mov     x19, x2
  100136708  adrp    x23, #0x1003b0000
  10013670c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100136710  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  100136714  stur    x8, [x29, #-0x58]
  100136718  stp     xzr, xzr, [sp, #0xc8]
  10013671c  stp     xzr, xzr, [sp, #0xb8]
  100136720  stp     xzr, xzr, [sp, #0xa8]
  100136724  stp     xzr, xzr, [sp, #0x98]
  100136728  adrp    x8, #0x100420000
  10013672c  ldrsw   x8, [x8, #0x958]                         ; ivar offset TAGPBDescriptor.extensions_ (+0x20)
  100136730  ldr     x20, [x0, x8]                            ; x20 = self->extensions_
  100136734  adrp    x8, #0x100416000
  100136738  nop
  10013673c  ldr     x21, [x8, #0xe00]
  100136740  add     x2, sp, #0x98
  100136744  add     x3, sp, #0x18
  100136748  mov     x4, #0x10
  10013674c  mov     x0, x20
  100136750  mov     x1, x21
  100136754  bl      _objc_msgSend                            ; [self->extensions_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100136758  mov     x22, x0
  10013675c  mov     x27, #0
  100136760  cbz     x22, loc_100136808                       ; if ([self->extensions_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  100136764  ldr     x8, [sp, #0xa8]
  100136768  ldr     x28, [x8]
  10013676c  adrp    x8, #0x100417000
  100136770  nop
  100136774  ldr     x23, [x8, #0x450]
  100136778  adrp    x8, #0x100416000
  10013677c  nop
  100136780  ldr     x24, [x8, #0xf58]
  100136784  add     x8, sp, #0x98
  100136788  str     x8, [sp, #0x10]
  10013678c  add     x26, sp, #0x18
loc_100136790:
  100136790  mov     x25, #0
loc_100136794:
  100136794  ldr     x8, [sp, #0xa8]
  100136798  ldr     x8, [x8]
  10013679c  cmp     x8, x28
  1001367a0  b.eq    loc_1001367ac                            ; if (x8 == x28)
  1001367a4  mov     x0, x20
  1001367a8  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->extensions_)
loc_1001367ac:
  1001367ac  ldr     x8, [sp, #0xa0]
  1001367b0  ldr     x27, [x8, x25, lsl #3]
  1001367b4  mov     x0, x27
  1001367b8  mov     x1, x23
  1001367bc  bl      _objc_msgSend                            ; [x0 name]
  1001367c0  mov     x1, x24
  1001367c4  mov     x2, x19
  1001367c8  bl      _objc_msgSend                            ; [[x0 name] isEqualToString:arg1]
  1001367cc  cbnz    w0, loc_100136800                        ; if ([[x0 name] isEqualToString:arg1] != 0)
  1001367d0  add     x25, x25, #1
  1001367d4  cmp     x25, x22
  1001367d8  b.lo    loc_100136794                            ; if ((x25 + 1) <u [self->extensions_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  1001367dc  mov     x4, #0x10
  1001367e0  mov     x0, x20
  1001367e4  mov     x1, x21
  1001367e8  ldr     x2, [sp, #0x10]
  1001367ec  mov     x3, x26
  1001367f0  bl      _objc_msgSend                            ; [self->extensions_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  1001367f4  mov     x22, x0
  1001367f8  cbnz    x22, loc_100136790                       ; if ([self->extensions_ countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
  1001367fc  mov     x27, #0
loc_100136800:
  100136800  adrp    x23, #0x1003b0000
  100136804  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
loc_100136808:
  100136808  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10013680c  ldur    x9, [x29, #-0x58]
  100136810  sub     x8, x8, x9
  100136814  cbnz    x8, loc_10013683c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100136818  mov     x0, x27
  10013681c  sub     sp, x29, #0x50
  100136820  ldp     x28, x27, [sp], #0x10
  100136824  ldp     x26, x25, [sp], #0x10
  100136828  ldp     x24, x23, [sp], #0x10
  10013682c  ldp     x22, x21, [sp], #0x10
  100136830  ldp     x20, x19, [sp], #0x10
  100136834  ldp     x29, x30, [sp], #0x10
  100136838  ret
loc_10013683c:
  10013683c  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBDescriptor messageClass]
; address 0x100136840  size 16  kind objc
; ======================================================================
  100136840  adrp    x8, #0x100420000
  100136844  ldrsw   x8, [x8, #0x950]                         ; ivar offset TAGPBDescriptor.messageClass_ (+0x10)
  100136848  ldr     x0, [x0, x8]                             ; x0 = self->messageClass_
  10013684c  ret

; ======================================================================
; -[TAGPBDescriptor fields]
; address 0x100136850  size 16  kind objc
; ======================================================================
  100136850  adrp    x8, #0x100420000
  100136854  ldrsw   x8, [x8, #0x948]                         ; ivar offset TAGPBDescriptor.fields_ (+0x8)
  100136858  ldr     x0, [x0, x8]                             ; x0 = self->fields_
  10013685c  ret

; ======================================================================
; -[TAGPBDescriptor enums]
; address 0x100136860  size 16  kind objc
; ======================================================================
  100136860  adrp    x8, #0x100420000
  100136864  ldrsw   x8, [x8, #0x954]                         ; ivar offset TAGPBDescriptor.enums_ (+0x18)
  100136868  ldr     x0, [x0, x8]                             ; x0 = self->enums_
  10013686c  ret

; ======================================================================
; -[TAGPBDescriptor extensions]
; address 0x100136870  size 16  kind objc
; ======================================================================
  100136870  adrp    x8, #0x100420000
  100136874  ldrsw   x8, [x8, #0x958]                         ; ivar offset TAGPBDescriptor.extensions_ (+0x20)
  100136878  ldr     x0, [x0, x8]                             ; x0 = self->extensions_
  10013687c  ret

; ======================================================================
; -[TAGPBDescriptor extensionRanges]
; address 0x100136880  size 16  kind objc
; ======================================================================
  100136880  adrp    x8, #0x100420000
  100136884  ldrsw   x8, [x8, #0x95c]                         ; ivar offset TAGPBDescriptor.extensionRanges_ (+0x38)
  100136888  ldr     x0, [x0, x8]                             ; x0 = self->extensionRanges_
  10013688c  ret

; ======================================================================
; -[TAGPBDescriptor storageSize]
; address 0x100136890  size 16  kind objc
; ======================================================================
  100136890  adrp    x8, #0x100420000
  100136894  ldrsw   x8, [x8, #0x960]                         ; ivar offset TAGPBDescriptor.storageSize_ (+0x28)
  100136898  ldr     x0, [x0, x8]                             ; x0 = self->storageSize_
  10013689c  ret

; ======================================================================
; -[TAGPBDescriptor isWireFormat]
; address 0x1001368a0  size 16  kind objc
; ======================================================================
  1001368a0  adrp    x8, #0x100420000
  1001368a4  ldrsw   x8, [x8, #0x964]                         ; ivar offset TAGPBDescriptor.wireFormat_ (+0x30)
  1001368a8  ldrb    w0, [x0, x8]                             ; w0 = self->wireFormat_
  1001368ac  ret
