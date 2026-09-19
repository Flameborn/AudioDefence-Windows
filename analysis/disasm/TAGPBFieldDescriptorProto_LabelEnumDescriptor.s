// unit TAGPBFieldDescriptorProto_LabelEnumDescriptor — 2 functions
//   0x10012c0b4      16  +[TAGPBFieldDescriptorProto_LabelEnumDescriptor enumDescriptor]_block_invoke
//   0x10012c0c4      96  +[TAGPBFieldDescriptorProto_LabelEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBFieldDescriptorProto_LabelEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012c0b4  size 16  kind block
; ======================================================================
  10012c0b4  sub     w8, w0, #1
  10012c0b8  cmp     w8, #3
  10012c0bc  cset    w0, lo
  10012c0c0  ret

; ======================================================================
; +[TAGPBFieldDescriptorProto_LabelEnumDescriptor enumDescriptor]
; address 0x10012c0c4  size 96  kind objc
; ======================================================================
  10012c0c4  stp     x29, x30, [sp, #-0x10]!
  10012c0c8  mov     x29, sp
  10012c0cc  stp     x20, x19, [sp, #-0x10]!
  10012c0d0  adrp    x19, #0x10042d000
  10012c0d4  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012c0d8  ldr     x0, [x19, #0x30]                         ; load g_10042dd30
  10012c0dc  cbnz    x0, loc_10012c118                        ; if (g_10042dd30 != 0)
  10012c0e0  adrp    x8, #0x10041e000
  10012c0e4  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012c0e8  adrp    x8, #0x10041c000
  10012c0ec  nop
  10012c0f0  ldr     x1, [x8, #0x4a8]
  10012c0f4  adrp    x2, #0x1003c6000
  10012c0f8  add     x2, x2, #0x9b0                           ; @"TAGPBFieldDescriptorProto_Label"
  10012c0fc  adrp    x3, #0x100429000
  10012c100  add     x3, x3, #0xbd8                           ; &d_100429bd8
  10012c104  adr     x5, #0x10012c0b4                         ; &+[TAGPBFieldDescriptorProto_LabelEnumDescriptor enumDescriptor]_block_invoke
  10012c108  nop
  10012c10c  mov     x4, #3
  10012c110  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldDescriptorProto_Label" values:&d_100429bd8 valueCount:3 enumVerifier:&+[TAGPBFieldDescriptorProto_LabelEnumDescriptor enumDescriptor]_block_invoke]
  10012c114  str     x0, [x19, #0x30]                         ; store g_10042dd30 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldDescriptorProto_Label" values:&d_100429bd8 valueCount:3 enumVerifier:&+[TAGPBFieldDescriptorProto_LabelEnumDescriptor enumDescriptor]_block_invoke]
loc_10012c118:
  10012c118  ldp     x20, x19, [sp], #0x10
  10012c11c  ldp     x29, x30, [sp], #0x10
  10012c120  ret
