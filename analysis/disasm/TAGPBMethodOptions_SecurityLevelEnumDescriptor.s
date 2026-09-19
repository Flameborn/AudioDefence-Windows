// unit TAGPBMethodOptions_SecurityLevelEnumDescriptor — 2 functions
//   0x10012ce1c      12  +[TAGPBMethodOptions_SecurityLevelEnumDescriptor enumDescriptor]_block_invoke
//   0x10012ce28      96  +[TAGPBMethodOptions_SecurityLevelEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBMethodOptions_SecurityLevelEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012ce1c  size 12  kind block
; ======================================================================
  10012ce1c  cmp     w0, #4
  10012ce20  cset    w0, lo
  10012ce24  ret

; ======================================================================
; +[TAGPBMethodOptions_SecurityLevelEnumDescriptor enumDescriptor]
; address 0x10012ce28  size 96  kind objc
; ======================================================================
  10012ce28  stp     x29, x30, [sp, #-0x10]!
  10012ce2c  mov     x29, sp
  10012ce30  stp     x20, x19, [sp, #-0x10]!
  10012ce34  adrp    x19, #0x10042d000
  10012ce38  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012ce3c  ldr     x0, [x19, #0xd8]                         ; load g_10042ddd8
  10012ce40  cbnz    x0, loc_10012ce7c                        ; if (g_10042ddd8 != 0)
  10012ce44  adrp    x8, #0x10041e000
  10012ce48  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012ce4c  adrp    x8, #0x10041c000
  10012ce50  nop
  10012ce54  ldr     x1, [x8, #0x4a8]
  10012ce58  adrp    x2, #0x1003c6000
  10012ce5c  add     x2, x2, #0xa90                           ; @"TAGPBMethodOptions_SecurityLevel"
  10012ce60  adrp    x3, #0x10042b000
  10012ce64  add     x3, x3, #0x2f8                           ; &d_10042b2f8
  10012ce68  adr     x5, #0x10012ce1c                         ; &+[TAGPBMethodOptions_SecurityLevelEnumDescriptor enumDescriptor]_block_invoke
  10012ce6c  nop
  10012ce70  mov     x4, #4
  10012ce74  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_SecurityLevel" values:&d_10042b2f8 valueCount:4 enumVerifier:&+[TAGPBMethodOptions_SecurityLevelEnumDescriptor enumDescriptor]_block_invoke]
  10012ce78  str     x0, [x19, #0xd8]                         ; store g_10042ddd8 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_SecurityLevel" values:&d_10042b2f8 valueCount:4 enumVerifier:&+[TAGPBMethodOptions_SecurityLevelEnumDescriptor enumDescriptor]_block_invoke]
loc_10012ce7c:
  10012ce7c  ldp     x20, x19, [sp], #0x10
  10012ce80  ldp     x29, x30, [sp], #0x10
  10012ce84  ret
