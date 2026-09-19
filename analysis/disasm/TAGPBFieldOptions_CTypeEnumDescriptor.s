// unit TAGPBFieldOptions_CTypeEnumDescriptor — 2 functions
//   0x10012c89c      12  +[TAGPBFieldOptions_CTypeEnumDescriptor enumDescriptor]_block_invoke
//   0x10012c8a8      96  +[TAGPBFieldOptions_CTypeEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBFieldOptions_CTypeEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012c89c  size 12  kind block
; ======================================================================
  10012c89c  cmp     w0, #3
  10012c8a0  cset    w0, lo
  10012c8a4  ret

; ======================================================================
; +[TAGPBFieldOptions_CTypeEnumDescriptor enumDescriptor]
; address 0x10012c8a8  size 96  kind objc
; ======================================================================
  10012c8a8  stp     x29, x30, [sp, #-0x10]!
  10012c8ac  mov     x29, sp
  10012c8b0  stp     x20, x19, [sp, #-0x10]!
  10012c8b4  adrp    x19, #0x10042d000
  10012c8b8  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012c8bc  ldr     x0, [x19, #0x90]                         ; load g_10042dd90
  10012c8c0  cbnz    x0, loc_10012c8fc                        ; if (g_10042dd90 != 0)
  10012c8c4  adrp    x8, #0x10041e000
  10012c8c8  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012c8cc  adrp    x8, #0x10041c000
  10012c8d0  nop
  10012c8d4  ldr     x1, [x8, #0x4a8]
  10012c8d8  adrp    x2, #0x1003c6000
  10012c8dc  add     x2, x2, #0xa10                           ; @"TAGPBFieldOptions_CType"
  10012c8e0  adrp    x3, #0x10042a000
  10012c8e4  add     x3, x3, #0xb10                           ; &d_10042ab10
  10012c8e8  adr     x5, #0x10012c89c                         ; &+[TAGPBFieldOptions_CTypeEnumDescriptor enumDescriptor]_block_invoke
  10012c8ec  nop
  10012c8f0  mov     x4, #3
  10012c8f4  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldOptions_CType" values:&d_10042ab10 valueCount:3 enumVerifier:&+[TAGPBFieldOptions_CTypeEnumDescriptor enumDescriptor]_block_invoke]
  10012c8f8  str     x0, [x19, #0x90]                         ; store g_10042dd90 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldOptions_CType" values:&d_10042ab10 valueCount:3 enumVerifier:&+[TAGPBFieldOptions_CTypeEnumDescriptor enumDescriptor]_block_invoke]
loc_10012c8fc:
  10012c8fc  ldp     x20, x19, [sp], #0x10
  10012c900  ldp     x29, x30, [sp], #0x10
  10012c904  ret
