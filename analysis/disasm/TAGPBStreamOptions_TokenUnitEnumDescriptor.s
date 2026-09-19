// unit TAGPBStreamOptions_TokenUnitEnumDescriptor — 2 functions
//   0x10012d024      12  +[TAGPBStreamOptions_TokenUnitEnumDescriptor enumDescriptor]_block_invoke
//   0x10012d030      96  +[TAGPBStreamOptions_TokenUnitEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBStreamOptions_TokenUnitEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012d024  size 12  kind block
; ======================================================================
  10012d024  cmp     w0, #2
  10012d028  cset    w0, lo
  10012d02c  ret

; ======================================================================
; +[TAGPBStreamOptions_TokenUnitEnumDescriptor enumDescriptor]
; address 0x10012d030  size 96  kind objc
; ======================================================================
  10012d030  stp     x29, x30, [sp, #-0x10]!
  10012d034  mov     x29, sp
  10012d038  stp     x20, x19, [sp, #-0x10]!
  10012d03c  adrp    x19, #0x10042d000
  10012d040  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012d044  ldr     x0, [x19, #0xf8]                         ; load g_10042ddf8
  10012d048  cbnz    x0, loc_10012d084                        ; if (g_10042ddf8 != 0)
  10012d04c  adrp    x8, #0x10041e000
  10012d050  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012d054  adrp    x8, #0x10041c000
  10012d058  nop
  10012d05c  ldr     x1, [x8, #0x4a8]
  10012d060  adrp    x2, #0x1003c6000
  10012d064  add     x2, x2, #0xaf0                           ; @"TAGPBStreamOptions_TokenUnit"
  10012d068  adrp    x3, #0x10042b000
  10012d06c  add     x3, x3, #0x680                           ; &d_10042b680
  10012d070  adr     x5, #0x10012d024                         ; &+[TAGPBStreamOptions_TokenUnitEnumDescriptor enumDescriptor]_block_invoke
  10012d074  nop
  10012d078  mov     x4, #2
  10012d07c  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBStreamOptions_TokenUnit" values:&d_10042b680 valueCount:2 enumVerifier:&+[TAGPBStreamOptions_TokenUnitEnumDescriptor enumDescriptor]_block_invoke]
  10012d080  str     x0, [x19, #0xf8]                         ; store g_10042ddf8 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBStreamOptions_TokenUnit" values:&d_10042b680 valueCount:2 enumVerifier:&+[TAGPBStreamOptions_TokenUnitEnumDescriptor enumDescriptor]_block_invoke]
loc_10012d084:
  10012d084  ldp     x20, x19, [sp], #0x10
  10012d088  ldp     x29, x30, [sp], #0x10
  10012d08c  ret
