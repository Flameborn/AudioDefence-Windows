// unit TAGPBFileOptions_OptimizeModeEnumDescriptor — 2 functions
//   0x10012c6a0      16  +[TAGPBFileOptions_OptimizeModeEnumDescriptor enumDescriptor]_block_invoke
//   0x10012c6b0      96  +[TAGPBFileOptions_OptimizeModeEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBFileOptions_OptimizeModeEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012c6a0  size 16  kind block
; ======================================================================
  10012c6a0  sub     w8, w0, #1
  10012c6a4  cmp     w8, #3
  10012c6a8  cset    w0, lo
  10012c6ac  ret

; ======================================================================
; +[TAGPBFileOptions_OptimizeModeEnumDescriptor enumDescriptor]
; address 0x10012c6b0  size 96  kind objc
; ======================================================================
  10012c6b0  stp     x29, x30, [sp, #-0x10]!
  10012c6b4  mov     x29, sp
  10012c6b8  stp     x20, x19, [sp, #-0x10]!
  10012c6bc  adrp    x19, #0x10042d000
  10012c6c0  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012c6c4  ldr     x0, [x19, #0x78]                         ; load g_10042dd78
  10012c6c8  cbnz    x0, loc_10012c704                        ; if (g_10042dd78 != 0)
  10012c6cc  adrp    x8, #0x10041e000
  10012c6d0  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012c6d4  adrp    x8, #0x10041c000
  10012c6d8  nop
  10012c6dc  ldr     x1, [x8, #0x4a8]
  10012c6e0  adrp    x2, #0x1003c6000
  10012c6e4  add     x2, x2, #0x9f0                           ; @"TAGPBFileOptions_OptimizeMode"
  10012c6e8  adrp    x3, #0x10042a000
  10012c6ec  add     x3, x3, #0x6f0                           ; &d_10042a6f0
  10012c6f0  adr     x5, #0x10012c6a0                         ; &+[TAGPBFileOptions_OptimizeModeEnumDescriptor enumDescriptor]_block_invoke
  10012c6f4  nop
  10012c6f8  mov     x4, #3
  10012c6fc  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFileOptions_OptimizeMode" values:&d_10042a6f0 valueCount:3 enumVerifier:&+[TAGPBFileOptions_OptimizeModeEnumDescriptor enumDescriptor]_block_invoke]
  10012c700  str     x0, [x19, #0x78]                         ; store g_10042dd78 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFileOptions_OptimizeMode" values:&d_10042a6f0 valueCount:3 enumVerifier:&+[TAGPBFileOptions_OptimizeModeEnumDescriptor enumDescriptor]_block_invoke]
loc_10012c704:
  10012c704  ldp     x20, x19, [sp], #0x10
  10012c708  ldp     x29, x30, [sp], #0x10
  10012c70c  ret
