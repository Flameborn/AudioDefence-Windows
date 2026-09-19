// unit TAGPBFieldDescriptorProto_TypeEnumDescriptor — 2 functions
//   0x10012c044      16  +[TAGPBFieldDescriptorProto_TypeEnumDescriptor enumDescriptor]_block_invoke
//   0x10012c054      96  +[TAGPBFieldDescriptorProto_TypeEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBFieldDescriptorProto_TypeEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012c044  size 16  kind block
; ======================================================================
  10012c044  sub     w8, w0, #1
  10012c048  cmp     w8, #0x12
  10012c04c  cset    w0, lo
  10012c050  ret

; ======================================================================
; +[TAGPBFieldDescriptorProto_TypeEnumDescriptor enumDescriptor]
; address 0x10012c054  size 96  kind objc
; ======================================================================
  10012c054  stp     x29, x30, [sp, #-0x10]!
  10012c058  mov     x29, sp
  10012c05c  stp     x20, x19, [sp, #-0x10]!
  10012c060  adrp    x19, #0x10042d000
  10012c064  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012c068  ldr     x0, [x19, #0x28]                         ; load g_10042dd28
  10012c06c  cbnz    x0, loc_10012c0a8                        ; if (g_10042dd28 != 0)
  10012c070  adrp    x8, #0x10041e000
  10012c074  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012c078  adrp    x8, #0x10041c000
  10012c07c  nop
  10012c080  ldr     x1, [x8, #0x4a8]
  10012c084  adrp    x2, #0x1003c6000
  10012c088  add     x2, x2, #0x990                           ; @"TAGPBFieldDescriptorProto_Type"
  10012c08c  adrp    x3, #0x100429000
  10012c090  add     x3, x3, #0xab8                           ; &d_100429ab8
  10012c094  adr     x5, #0x10012c044                         ; &+[TAGPBFieldDescriptorProto_TypeEnumDescriptor enumDescriptor]_block_invoke
  10012c098  nop
  10012c09c  mov     x4, #0x12
  10012c0a0  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldDescriptorProto_Type" values:&d_100429ab8 valueCount:18 enumVerifier:&+[TAGPBFieldDescriptorProto_TypeEnumDescriptor enumDescriptor]_block_invoke]
  10012c0a4  str     x0, [x19, #0x28]                         ; store g_10042dd28 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldDescriptorProto_Type" values:&d_100429ab8 valueCount:18 enumVerifier:&+[TAGPBFieldDescriptorProto_TypeEnumDescriptor enumDescriptor]_block_invoke]
loc_10012c0a8:
  10012c0a8  ldp     x20, x19, [sp], #0x10
  10012c0ac  ldp     x29, x30, [sp], #0x10
  10012c0b0  ret
