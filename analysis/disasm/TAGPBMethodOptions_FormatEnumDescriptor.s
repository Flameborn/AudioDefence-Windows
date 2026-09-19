// unit TAGPBMethodOptions_FormatEnumDescriptor — 2 functions
//   0x10012ce88      12  +[TAGPBMethodOptions_FormatEnumDescriptor enumDescriptor]_block_invoke
//   0x10012ce94      96  +[TAGPBMethodOptions_FormatEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBMethodOptions_FormatEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012ce88  size 12  kind block
; ======================================================================
  10012ce88  cmp     w0, #2
  10012ce8c  cset    w0, lo
  10012ce90  ret

; ======================================================================
; +[TAGPBMethodOptions_FormatEnumDescriptor enumDescriptor]
; address 0x10012ce94  size 96  kind objc
; ======================================================================
  10012ce94  stp     x29, x30, [sp, #-0x10]!
  10012ce98  mov     x29, sp
  10012ce9c  stp     x20, x19, [sp, #-0x10]!
  10012cea0  adrp    x19, #0x10042d000
  10012cea4  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012cea8  ldr     x0, [x19, #0xe0]                         ; load g_10042dde0
  10012ceac  cbnz    x0, loc_10012cee8                        ; if (g_10042dde0 != 0)
  10012ceb0  adrp    x8, #0x10041e000
  10012ceb4  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012ceb8  adrp    x8, #0x10041c000
  10012cebc  nop
  10012cec0  ldr     x1, [x8, #0x4a8]
  10012cec4  adrp    x2, #0x1003c6000
  10012cec8  add     x2, x2, #0xab0                           ; @"TAGPBMethodOptions_Format"
  10012cecc  adrp    x3, #0x10042b000
  10012ced0  add     x3, x3, #0x338                           ; &d_10042b338
  10012ced4  adr     x5, #0x10012ce88                         ; &+[TAGPBMethodOptions_FormatEnumDescriptor enumDescriptor]_block_invoke
  10012ced8  nop
  10012cedc  mov     x4, #2
  10012cee0  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_Format" values:&d_10042b338 valueCount:2 enumVerifier:&+[TAGPBMethodOptions_FormatEnumDescriptor enumDescriptor]_block_invoke]
  10012cee4  str     x0, [x19, #0xe0]                         ; store g_10042dde0 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_Format" values:&d_10042b338 valueCount:2 enumVerifier:&+[TAGPBMethodOptions_FormatEnumDescriptor enumDescriptor]_block_invoke]
loc_10012cee8:
  10012cee8  ldp     x20, x19, [sp], #0x10
  10012ceec  ldp     x29, x30, [sp], #0x10
  10012cef0  ret
