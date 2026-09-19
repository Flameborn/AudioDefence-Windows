// unit TAGPValue_EscapingEnumDescriptor — 2 functions
//   0x10014bc28      16  +[TAGPValue_EscapingEnumDescriptor enumDescriptor]_block_invoke
//   0x10014bc38      96  +[TAGPValue_EscapingEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPValue_EscapingEnumDescriptor enumDescriptor]_block_invoke
; address 0x10014bc28  size 16  kind block
; ======================================================================
  10014bc28  sub     w8, w0, #1
  10014bc2c  cmp     w8, #0x11
  10014bc30  cset    w0, lo
  10014bc34  ret

; ======================================================================
; +[TAGPValue_EscapingEnumDescriptor enumDescriptor]
; address 0x10014bc38  size 96  kind objc
; ======================================================================
  10014bc38  stp     x29, x30, [sp, #-0x10]!
  10014bc3c  mov     x29, sp
  10014bc40  stp     x20, x19, [sp, #-0x10]!
  10014bc44  adrp    x19, #0x10042d000
  10014bc48  add     x19, x19, #0xe60                         ; &g_10042de60
  10014bc4c  ldr     x0, [x19, #0x18]                         ; load g_10042de78
  10014bc50  cbnz    x0, loc_10014bc8c                        ; if (g_10042de78 != 0)
  10014bc54  adrp    x8, #0x10041e000
  10014bc58  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10014bc5c  adrp    x8, #0x10041c000
  10014bc60  nop
  10014bc64  ldr     x1, [x8, #0x4a8]
  10014bc68  adrp    x2, #0x1003c7000
  10014bc6c  add     x2, x2, #0x670                           ; @"TAGPValue_Escaping"
  10014bc70  adrp    x3, #0x10042b000
  10014bc74  add     x3, x3, #0xfe8                           ; &d_10042bfe8
  10014bc78  adr     x5, #0x10014bc28                         ; &+[TAGPValue_EscapingEnumDescriptor enumDescriptor]_block_invoke
  10014bc7c  nop
  10014bc80  mov     x4, #0x11
  10014bc84  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPValue_Escaping" values:&d_10042bfe8 valueCount:17 enumVerifier:&+[TAGPValue_EscapingEnumDescriptor enumDescriptor]_block_invoke]
  10014bc88  str     x0, [x19, #0x18]                         ; store g_10042de78 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPValue_Escaping" values:&d_10042bfe8 valueCount:17 enumVerifier:&+[TAGPValue_EscapingEnumDescriptor enumDescriptor]_block_invoke]
loc_10014bc8c:
  10014bc8c  ldp     x20, x19, [sp], #0x10
  10014bc90  ldp     x29, x30, [sp], #0x10
  10014bc94  ret
