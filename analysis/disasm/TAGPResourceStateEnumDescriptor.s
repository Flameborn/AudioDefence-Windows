// unit TAGPResourceStateEnumDescriptor — 2 functions
//   0x10014becc      16  +[TAGPResourceStateEnumDescriptor enumDescriptor]_block_invoke
//   0x10014bedc      96  +[TAGPResourceStateEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPResourceStateEnumDescriptor enumDescriptor]_block_invoke
; address 0x10014becc  size 16  kind block
; ======================================================================
  10014becc  sub     w8, w0, #1
  10014bed0  cmp     w8, #2
  10014bed4  cset    w0, lo
  10014bed8  ret

; ======================================================================
; +[TAGPResourceStateEnumDescriptor enumDescriptor]
; address 0x10014bedc  size 96  kind objc
; ======================================================================
  10014bedc  stp     x29, x30, [sp, #-0x10]!
  10014bee0  mov     x29, sp
  10014bee4  stp     x20, x19, [sp, #-0x10]!
  10014bee8  adrp    x19, #0x10042d000
  10014beec  add     x19, x19, #0xe60                         ; &g_10042de60
  10014bef0  ldr     x0, [x19, #0x30]                         ; load g_10042de90
  10014bef4  cbnz    x0, loc_10014bf30                        ; if (g_10042de90 != 0)
  10014bef8  adrp    x8, #0x10041e000
  10014befc  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10014bf00  adrp    x8, #0x10041c000
  10014bf04  nop
  10014bf08  ldr     x1, [x8, #0x4a8]
  10014bf0c  adrp    x2, #0x1003c7000
  10014bf10  add     x2, x2, #0x6b0                           ; @"TAGPResourceState"
  10014bf14  adrp    x3, #0x10042c000
  10014bf18  add     x3, x3, #0x1a8                           ; &d_10042c1a8
  10014bf1c  adr     x5, #0x10014becc                         ; &+[TAGPResourceStateEnumDescriptor enumDescriptor]_block_invoke
  10014bf20  nop
  10014bf24  mov     x4, #2
  10014bf28  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPResourceState" values:&d_10042c1a8 valueCount:2 enumVerifier:&+[TAGPResourceStateEnumDescriptor enumDescriptor]_block_invoke]
  10014bf2c  str     x0, [x19, #0x30]                         ; store g_10042de90 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPResourceState" values:&d_10042c1a8 valueCount:2 enumVerifier:&+[TAGPResourceStateEnumDescriptor enumDescriptor]_block_invoke]
loc_10014bf30:
  10014bf30  ldp     x20, x19, [sp], #0x10
  10014bf34  ldp     x29, x30, [sp], #0x10
  10014bf38  ret
