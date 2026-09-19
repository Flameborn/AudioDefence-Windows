// unit TAGPBFieldOptions_JSTypeEnumDescriptor — 2 functions
//   0x10012c974      12  +[TAGPBFieldOptions_JSTypeEnumDescriptor enumDescriptor]_block_invoke
//   0x10012c980      96  +[TAGPBFieldOptions_JSTypeEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBFieldOptions_JSTypeEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012c974  size 12  kind block
; ======================================================================
  10012c974  cmp     w0, #3
  10012c978  cset    w0, lo
  10012c97c  ret

; ======================================================================
; +[TAGPBFieldOptions_JSTypeEnumDescriptor enumDescriptor]
; address 0x10012c980  size 96  kind objc
; ======================================================================
  10012c980  stp     x29, x30, [sp, #-0x10]!
  10012c984  mov     x29, sp
  10012c988  stp     x20, x19, [sp, #-0x10]!
  10012c98c  adrp    x19, #0x10042d000
  10012c990  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012c994  ldr     x0, [x19, #0xa0]                         ; load g_10042dda0
  10012c998  cbnz    x0, loc_10012c9d4                        ; if (g_10042dda0 != 0)
  10012c99c  adrp    x8, #0x10041e000
  10012c9a0  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012c9a4  adrp    x8, #0x10041c000
  10012c9a8  nop
  10012c9ac  ldr     x1, [x8, #0x4a8]
  10012c9b0  adrp    x2, #0x1003c6000
  10012c9b4  add     x2, x2, #0xa50                           ; @"TAGPBFieldOptions_JSType"
  10012c9b8  adrp    x3, #0x10042a000
  10012c9bc  add     x3, x3, #0xb70                           ; &d_10042ab70
  10012c9c0  adr     x5, #0x10012c974                         ; &+[TAGPBFieldOptions_JSTypeEnumDescriptor enumDescriptor]_block_invoke
  10012c9c4  nop
  10012c9c8  mov     x4, #3
  10012c9cc  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldOptions_JSType" values:&d_10042ab70 valueCount:3 enumVerifier:&+[TAGPBFieldOptions_JSTypeEnumDescriptor enumDescriptor]_block_invoke]
  10012c9d0  str     x0, [x19, #0xa0]                         ; store g_10042dda0 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldOptions_JSType" values:&d_10042ab70 valueCount:3 enumVerifier:&+[TAGPBFieldOptions_JSTypeEnumDescriptor enumDescriptor]_block_invoke]
loc_10012c9d4:
  10012c9d4  ldp     x20, x19, [sp], #0x10
  10012c9d8  ldp     x29, x30, [sp], #0x10
  10012c9dc  ret
