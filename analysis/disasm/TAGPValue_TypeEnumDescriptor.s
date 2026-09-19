// unit TAGPValue_TypeEnumDescriptor — 2 functions
//   0x10014bbb8      16  +[TAGPValue_TypeEnumDescriptor enumDescriptor]_block_invoke
//   0x10014bbc8      96  +[TAGPValue_TypeEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPValue_TypeEnumDescriptor enumDescriptor]_block_invoke
; address 0x10014bbb8  size 16  kind block
; ======================================================================
  10014bbb8  sub     w8, w0, #1
  10014bbbc  cmp     w8, #9
  10014bbc0  cset    w0, lo
  10014bbc4  ret

; ======================================================================
; +[TAGPValue_TypeEnumDescriptor enumDescriptor]
; address 0x10014bbc8  size 96  kind objc
; ======================================================================
  10014bbc8  stp     x29, x30, [sp, #-0x10]!
  10014bbcc  mov     x29, sp
  10014bbd0  stp     x20, x19, [sp, #-0x10]!
  10014bbd4  adrp    x19, #0x10042d000
  10014bbd8  add     x19, x19, #0xe60                         ; &g_10042de60
  10014bbdc  ldr     x0, [x19, #0x10]                         ; load g_10042de70
  10014bbe0  cbnz    x0, loc_10014bc1c                        ; if (g_10042de70 != 0)
  10014bbe4  adrp    x8, #0x10041e000
  10014bbe8  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10014bbec  adrp    x8, #0x10041c000
  10014bbf0  nop
  10014bbf4  ldr     x1, [x8, #0x4a8]
  10014bbf8  adrp    x2, #0x1003c7000
  10014bbfc  add     x2, x2, #0x650                           ; @"TAGPValue_Type"
  10014bc00  adrp    x3, #0x10042b000
  10014bc04  add     x3, x3, #0xf58                           ; &d_10042bf58
  10014bc08  adr     x5, #0x10014bbb8                         ; &+[TAGPValue_TypeEnumDescriptor enumDescriptor]_block_invoke
  10014bc0c  nop
  10014bc10  mov     x4, #9
  10014bc14  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPValue_Type" values:&d_10042bf58 valueCount:9 enumVerifier:&+[TAGPValue_TypeEnumDescriptor enumDescriptor]_block_invoke]
  10014bc18  str     x0, [x19, #0x10]                         ; store g_10042de70 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPValue_Type" values:&d_10042bf58 valueCount:9 enumVerifier:&+[TAGPValue_TypeEnumDescriptor enumDescriptor]_block_invoke]
loc_10014bc1c:
  10014bc1c  ldp     x20, x19, [sp], #0x10
  10014bc20  ldp     x29, x30, [sp], #0x10
  10014bc24  ret
