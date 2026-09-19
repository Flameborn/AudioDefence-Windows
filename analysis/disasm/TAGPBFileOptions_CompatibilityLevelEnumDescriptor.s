// unit TAGPBFileOptions_CompatibilityLevelEnumDescriptor — 2 functions
//   0x10012c620      32  +[TAGPBFileOptions_CompatibilityLevelEnumDescriptor enumDescriptor]_block_invoke
//   0x10012c640      96  +[TAGPBFileOptions_CompatibilityLevelEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBFileOptions_CompatibilityLevelEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012c620  size 32  kind block
; ======================================================================
  10012c620  mov     w8, #1
  10012c624  cmp     w0, #0x64
  10012c628  csel    w9, w8, wzr, eq
  10012c62c  cmp     w0, #0x32
  10012c630  csel    w9, w8, w9, eq
  10012c634  cmp     w0, #0
  10012c638  csel    w0, w8, w9, eq
  10012c63c  ret

; ======================================================================
; +[TAGPBFileOptions_CompatibilityLevelEnumDescriptor enumDescriptor]
; address 0x10012c640  size 96  kind objc
; ======================================================================
  10012c640  stp     x29, x30, [sp, #-0x10]!
  10012c644  mov     x29, sp
  10012c648  stp     x20, x19, [sp, #-0x10]!
  10012c64c  adrp    x19, #0x10042d000
  10012c650  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012c654  ldr     x0, [x19, #0x70]                         ; load g_10042dd70
  10012c658  cbnz    x0, loc_10012c694                        ; if (g_10042dd70 != 0)
  10012c65c  adrp    x8, #0x10041e000
  10012c660  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012c664  adrp    x8, #0x10041c000
  10012c668  nop
  10012c66c  ldr     x1, [x8, #0x4a8]
  10012c670  adrp    x2, #0x1003c6000
  10012c674  add     x2, x2, #0x9d0                           ; @"TAGPBFileOptions_CompatibilityLevel"
  10012c678  adrp    x3, #0x10042a000
  10012c67c  add     x3, x3, #0x6c0                           ; &d_10042a6c0
  10012c680  adr     x5, #0x10012c620                         ; &+[TAGPBFileOptions_CompatibilityLevelEnumDescriptor enumDescriptor]_block_invoke
  10012c684  nop
  10012c688  mov     x4, #3
  10012c68c  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFileOptions_CompatibilityLevel" values:&d_10042a6c0 valueCount:3 enumVerifier:&+[TAGPBFileOptions_CompatibilityLevelEnumDescriptor enumDescriptor]_block_invoke]
  10012c690  str     x0, [x19, #0x70]                         ; store g_10042dd70 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFileOptions_CompatibilityLevel" values:&d_10042a6c0 valueCount:3 enumVerifier:&+[TAGPBFileOptions_CompatibilityLevelEnumDescriptor enumDescriptor]_block_invoke]
loc_10012c694:
  10012c694  ldp     x20, x19, [sp], #0x10
  10012c698  ldp     x29, x30, [sp], #0x10
  10012c69c  ret
