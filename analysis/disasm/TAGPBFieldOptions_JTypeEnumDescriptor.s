// unit TAGPBFieldOptions_JTypeEnumDescriptor — 2 functions
//   0x10012c908      12  +[TAGPBFieldOptions_JTypeEnumDescriptor enumDescriptor]_block_invoke
//   0x10012c914      96  +[TAGPBFieldOptions_JTypeEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBFieldOptions_JTypeEnumDescriptor enumDescriptor]_block_invoke
; address 0x10012c908  size 12  kind block
; ======================================================================
  10012c908  cmp     w0, #3
  10012c90c  cset    w0, lo
  10012c910  ret

; ======================================================================
; +[TAGPBFieldOptions_JTypeEnumDescriptor enumDescriptor]
; address 0x10012c914  size 96  kind objc
; ======================================================================
  10012c914  stp     x29, x30, [sp, #-0x10]!
  10012c918  mov     x29, sp
  10012c91c  stp     x20, x19, [sp, #-0x10]!
  10012c920  adrp    x19, #0x10042d000
  10012c924  add     x19, x19, #0xd00                         ; &g_10042dd00
  10012c928  ldr     x0, [x19, #0x98]                         ; load g_10042dd98
  10012c92c  cbnz    x0, loc_10012c968                        ; if (g_10042dd98 != 0)
  10012c930  adrp    x8, #0x10041e000
  10012c934  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10012c938  adrp    x8, #0x10041c000
  10012c93c  nop
  10012c940  ldr     x1, [x8, #0x4a8]
  10012c944  adrp    x2, #0x1003c6000
  10012c948  add     x2, x2, #0xa30                           ; @"TAGPBFieldOptions_JType"
  10012c94c  adrp    x3, #0x10042a000
  10012c950  add     x3, x3, #0xb40                           ; &d_10042ab40
  10012c954  adr     x5, #0x10012c908                         ; &+[TAGPBFieldOptions_JTypeEnumDescriptor enumDescriptor]_block_invoke
  10012c958  nop
  10012c95c  mov     x4, #3
  10012c960  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldOptions_JType" values:&d_10042ab40 valueCount:3 enumVerifier:&+[TAGPBFieldOptions_JTypeEnumDescriptor enumDescriptor]_block_invoke]
  10012c964  str     x0, [x19, #0x98]                         ; store g_10042dd98 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPBFieldOptions_JType" values:&d_10042ab40 valueCount:3 enumVerifier:&+[TAGPBFieldOptions_JTypeEnumDescriptor enumDescriptor]_block_invoke]
loc_10012c968:
  10012c968  ldp     x20, x19, [sp], #0x10
  10012c96c  ldp     x29, x30, [sp], #0x10
  10012c970  ret
