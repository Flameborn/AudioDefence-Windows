// unit TAGPBMethodOptions_ProtocolEnumDescriptor — 2 functions
//   0x10012cdb0      12  +[TAGPBMethodOptions_ProtocolEnumDescriptor enumDescriptor]_block_invoke
//   0x10012cdbc      96  +[TAGPBMethodOptions_ProtocolEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBMethodOptions_ProtocolEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012cdb0  size 12  kind block
; ======================================================================
  10012cdb0  cmp     w0, #2
  10012cdb4  cset    w0, lo
  10012cdb8  ret

; ======================================================================
; +[TAGPBMethodOptions_ProtocolEnumDescriptor enumDescriptor]
; address 0x10012cdbc  size 96  kind objc
; ======================================================================
  10012cdbc  stp     x29, x30, [sp, #-0x10]!
  10012cdc0  mov     x29, sp
  10012cdc4  stp     x20, x19, [sp, #-0x10]!
  10012cdc8  adrp    x19, #0x10042d000
  10012cdcc  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012cdd0  ldr     x0, [x19, #0xd0]                         ; load g_10042ddd0
  10012cdd4  cbnz    x0, loc_10012ce10                        ; if (g_10042ddd0 != 0)
  10012cdd8  adrp    x8, #0x10041e000
  10012cddc  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012cde0  adrp    x8, #0x10041c000
  10012cde4  nop
  10012cde8  ldr     x1, [x8, #0x4a8]
  10012cdec  adrp    x2, #0x1003c6000
  10012cdf0  add     x2, x2, #0xa70                           ; @"TAGPBMethodOptions_Protocol"
  10012cdf4  adrp    x3, #0x10042b000
  10012cdf8  add     x3, x3, #0x2d8                           ; &d_10042b2d8
  10012cdfc  adr     x5, #0x10012cdb0                         ; &+[TAGPBMethodOptions_ProtocolEnumDescriptor enumDescriptor]_block_invoke
  10012ce00  nop
  10012ce04  mov     x4, #2
  10012ce08  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_Protocol" values:&d_10042b2d8 valueCount:2 enumVerifier:&+[TAGPBMethodOptions_ProtocolEnumDescriptor enumDescriptor]_block_invoke]
  10012ce0c  str     x0, [x19, #0xd0]                         ; store g_10042ddd0 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_Protocol" values:&d_10042b2d8 valueCount:2 enumVerifier:&+[TAGPBMethodOptions_ProtocolEnumDescriptor enumDescriptor]_block_invoke]
loc_10012ce10:
  10012ce10  ldp     x20, x19, [sp], #0x10
  10012ce14  ldp     x29, x30, [sp], #0x10
  10012ce18  ret
