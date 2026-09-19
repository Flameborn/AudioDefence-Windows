// unit TAGPBMethodOptions_LogLevelEnumDescriptor — 2 functions
//   0x10012cef4      12  +[TAGPBMethodOptions_LogLevelEnumDescriptor enumDescriptor]_block_invoke
//   0x10012cf00      96  +[TAGPBMethodOptions_LogLevelEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBMethodOptions_LogLevelEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012cef4  size 12  kind block
; ======================================================================
  10012cef4  cmp     w0, #5
  10012cef8  cset    w0, lo
  10012cefc  ret

; ======================================================================
; +[TAGPBMethodOptions_LogLevelEnumDescriptor enumDescriptor]
; address 0x10012cf00  size 96  kind objc
; ======================================================================
  10012cf00  stp     x29, x30, [sp, #-0x10]!
  10012cf04  mov     x29, sp
  10012cf08  stp     x20, x19, [sp, #-0x10]!
  10012cf0c  adrp    x19, #0x10042d000
  10012cf10  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012cf14  ldr     x0, [x19, #0xe8]                         ; load g_10042dde8
  10012cf18  cbnz    x0, loc_10012cf54                        ; if (g_10042dde8 != 0)
  10012cf1c  adrp    x8, #0x10041e000
  10012cf20  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012cf24  adrp    x8, #0x10041c000
  10012cf28  nop
  10012cf2c  ldr     x1, [x8, #0x4a8]
  10012cf30  adrp    x2, #0x1003c6000
  10012cf34  add     x2, x2, #0xad0                           ; @"TAGPBMethodOptions_LogLevel"
  10012cf38  adrp    x3, #0x10042b000
  10012cf3c  add     x3, x3, #0x358                           ; &d_10042b358
  10012cf40  adr     x5, #0x10012cef4                         ; &+[TAGPBMethodOptions_LogLevelEnumDescriptor enumDescriptor]_block_invoke
  10012cf44  nop
  10012cf48  mov     x4, #5
  10012cf4c  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_LogLevel" values:&d_10042b358 valueCount:5 enumVerifier:&+[TAGPBMethodOptions_LogLevelEnumDescriptor enumDescriptor]_block_invoke]
  10012cf50  str     x0, [x19, #0xe8]                         ; store g_10042dde8 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBMethodOptions_LogLevel" values:&d_10042b358 valueCount:5 enumVerifier:&+[TAGPBMethodOptions_LogLevelEnumDescriptor enumDescriptor]_block_invoke]
loc_10012cf54:
  10012cf54  ldp     x20, x19, [sp], #0x10
  10012cf58  ldp     x29, x30, [sp], #0x10
  10012cf5c  ret
