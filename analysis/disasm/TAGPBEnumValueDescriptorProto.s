// unit TAGPBEnumValueDescriptorProto — 1 functions
//   0x10012c28c     180  +[TAGPBEnumValueDescriptorProto descriptor]

; ======================================================================
; +[TAGPBEnumValueDescriptorProto descriptor]
; address 0x10012c28c  size 180  kind objc
; ======================================================================
  10012c28c  stp     x29, x30, [sp, #-0x10]!
  10012c290  mov     x29, sp
  10012c294  stp     x20, x19, [sp, #-0x10]!
  10012c298  stp     x22, x21, [sp, #-0x10]!
  10012c29c  sub     sp, sp, #0x20
  10012c2a0  adrp    x22, #0x10042d000
  10012c2a4  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c2a8  ldr     x0, [x22, #0x48]                         ; load g_10042dd48
  10012c2ac  cbnz    x0, loc_10012c32c                        ; if (g_10042dd48 != 0)
  10012c2b0  adrp    x8, #0x10041e000
  10012c2b4  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c2b8  nop
  10012c2bc  ldr     x0, [x8, #0x6b0]                         ; class TAGPBEnumValueDescriptorProto
  10012c2c0  adrp    x8, #0x100417000
  10012c2c4  nop
  10012c2c8  ldr     x20, [x8, #0x2e0]
  10012c2cc  mov     x1, x20
  10012c2d0  bl      _objc_msgSend                            ; [TAGPBEnumValueDescriptorProto class]
  10012c2d4  mov     x21, x0
  10012c2d8  adrp    x8, #0x10041e000
  10012c2dc  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c2e0  mov     x1, x20
  10012c2e4  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c2e8  mov     x3, x0
  10012c2ec  adrp    x8, #0x10041c000
  10012c2f0  nop
  10012c2f4  ldr     x1, [x8, #0x4a0]
  10012c2f8  strb    wzr, [sp, #0x18]
  10012c2fc  mov     x8, #0x20
  10012c300  stp     xzr, x8, [sp, #8]
  10012c304  str     xzr, [sp]
  10012c308  adrp    x4, #0x100429000
  10012c30c  add     x4, x4, #0xce8                           ; &d_100429ce8
  10012c310  mov     x5, #3
  10012c314  mov     x0, x19
  10012c318  mov     x2, x21
  10012c31c  mov     x6, #0
  10012c320  mov     x7, #0
  10012c324  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumValueDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429ce8 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c328  str     x0, [x22, #0x48]                         ; store g_10042dd48 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumValueDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429ce8 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c32c:
  10012c32c  sub     sp, x29, #0x20
  10012c330  ldp     x22, x21, [sp], #0x10
  10012c334  ldp     x20, x19, [sp], #0x10
  10012c338  ldp     x29, x30, [sp], #0x10
  10012c33c  ret
