// unit TAGPResourceTypeEnumDescriptor — 2 functions
//   0x10014be5c      16  +[TAGPResourceTypeEnumDescriptor enumDescriptor]_block_invoke
//   0x10014be6c      96  +[TAGPResourceTypeEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPResourceTypeEnumDescriptor enumDescriptor]_block_invoke
; address 0x10014be5c  size 16  kind block
; ======================================================================
  10014be5c  sub     w8, w0, #1
  10014be60  cmp     w8, #7
  10014be64  cset    w0, lo
  10014be68  ret

; ======================================================================
; +[TAGPResourceTypeEnumDescriptor enumDescriptor]
; address 0x10014be6c  size 96  kind objc
; ======================================================================
  10014be6c  stp     x29, x30, [sp, #-0x10]!
  10014be70  mov     x29, sp
  10014be74  stp     x20, x19, [sp, #-0x10]!
  10014be78  adrp    x19, #0x10042d000
  10014be7c  add     x19, x19, #0xe60                         ; &g_10042de60
  10014be80  ldr     x0, [x19, #0x28]                         ; load g_10042de88
  10014be84  cbnz    x0, loc_10014bec0                        ; if (g_10042de88 != 0)
  10014be88  adrp    x8, #0x10041e000
  10014be8c  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10014be90  adrp    x8, #0x10041c000
  10014be94  nop
  10014be98  ldr     x1, [x8, #0x4a8]
  10014be9c  adrp    x2, #0x1003c7000
  10014bea0  add     x2, x2, #0x690                           ; @"TAGPResourceType"
  10014bea4  adrp    x3, #0x10042c000
  10014bea8  add     x3, x3, #0x138                           ; &d_10042c138
  10014beac  adr     x5, #0x10014be5c                         ; &+[TAGPResourceTypeEnumDescriptor enumDescriptor]_block_invoke
  10014beb0  nop
  10014beb4  mov     x4, #7
  10014beb8  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPResourceType" values:&d_10042c138 valueCount:7 enumVerifier:&+[TAGPResourceTypeEnumDescriptor enumDescriptor]_block_invoke]
  10014bebc  str     x0, [x19, #0x28]                         ; store g_10042de88 = [TAGPBEnumDescriptor allocDescriptorForName:@"TAGPResourceType" values:&d_10042c138 valueCount:7 enumVerifier:&+[TAGPResourceTypeEnumDescriptor enumDescriptor]_block_invoke]
loc_10014bec0:
  10014bec0  ldp     x20, x19, [sp], #0x10
  10014bec4  ldp     x29, x30, [sp], #0x10
  10014bec8  ret
