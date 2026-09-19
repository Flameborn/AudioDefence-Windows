// unit TAGPResourceWithMetadata — 1 functions
//   0x10014ca10     180  +[TAGPResourceWithMetadata descriptor]

; ======================================================================
; +[TAGPResourceWithMetadata descriptor]
; address 0x10014ca10  size 180  kind objc
; ======================================================================
  10014ca10  stp     x29, x30, [sp, #-0x10]!
  10014ca14  mov     x29, sp
  10014ca18  stp     x20, x19, [sp, #-0x10]!
  10014ca1c  stp     x22, x21, [sp, #-0x10]!
  10014ca20  sub     sp, sp, #0x20
  10014ca24  adrp    x22, #0x10042d000
  10014ca28  add     x22, x22, #0xe60                         ; &g_10042de60
  10014ca2c  ldr     x0, [x22, #0xb0]                         ; load g_10042df10
  10014ca30  cbnz    x0, loc_10014cab0                        ; if (g_10042df10 != 0)
  10014ca34  adrp    x8, #0x10041e000
  10014ca38  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014ca3c  nop
  10014ca40  ldr     x0, [x8, #0x850]                         ; class TAGPResourceWithMetadata
  10014ca44  adrp    x8, #0x100417000
  10014ca48  nop
  10014ca4c  ldr     x20, [x8, #0x2e0]
  10014ca50  mov     x1, x20
  10014ca54  bl      _objc_msgSend                            ; [TAGPResourceWithMetadata class]
  10014ca58  mov     x21, x0
  10014ca5c  adrp    x8, #0x10041e000
  10014ca60  ldr     x0, [x8, #0x858]                         ; class TAGPResourcewithmetadataRoot
  10014ca64  mov     x1, x20
  10014ca68  bl      _objc_msgSend                            ; [TAGPResourcewithmetadataRoot class]
  10014ca6c  mov     x3, x0
  10014ca70  adrp    x8, #0x10041c000
  10014ca74  nop
  10014ca78  ldr     x1, [x8, #0x4a0]
  10014ca7c  strb    wzr, [sp, #0x18]
  10014ca80  mov     x8, #0x20
  10014ca84  stp     xzr, x8, [sp, #8]
  10014ca88  str     xzr, [sp]
  10014ca8c  adrp    x4, #0x10042d000
  10014ca90  add     x4, x4, #0x1f0                           ; &d_10042d1f0
  10014ca94  mov     x5, #3
  10014ca98  mov     x0, x19
  10014ca9c  mov     x2, x21
  10014caa0  mov     x6, #0
  10014caa4  mov     x7, #0
  10014caa8  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPResourceWithMetadata class] rootClass:[TAGPResourcewithmetadataRoot class] fields:&d_10042d1f0 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014caac  str     x0, [x22, #0xb0]                         ; store g_10042df10 = [TAGPBDescriptor allocDescriptorForClass:[TAGPResourceWithMetadata class] rootClass:[TAGPResourcewithmetadataRoot class] fields:&d_10042d1f0 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014cab0:
  10014cab0  sub     sp, x29, #0x20
  10014cab4  ldp     x22, x21, [sp], #0x10
  10014cab8  ldp     x20, x19, [sp], #0x10
  10014cabc  ldp     x29, x30, [sp], #0x10
  10014cac0  ret
