// unit TAGPBEnumOptions — 1 functions
//   0x10012ca94     200  +[TAGPBEnumOptions descriptor]

; ======================================================================
; +[TAGPBEnumOptions descriptor]
; address 0x10012ca94  size 200  kind objc
; ======================================================================
  10012ca94  stp     x29, x30, [sp, #-0x10]!
  10012ca98  mov     x29, sp
  10012ca9c  stp     x20, x19, [sp, #-0x10]!
  10012caa0  stp     x22, x21, [sp, #-0x10]!
  10012caa4  sub     sp, sp, #0x20
  10012caa8  adrp    x22, #0x10042d000
  10012caac  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012cab0  ldr     x0, [x22, #0xb0]                         ; load g_10042ddb0
  10012cab4  cbnz    x0, loc_10012cb48                        ; if (g_10042ddb0 != 0)
  10012cab8  adrp    x8, #0x10041e000
  10012cabc  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012cac0  nop
  10012cac4  ldr     x0, [x8, #0x6f0]                         ; class TAGPBEnumOptions
  10012cac8  adrp    x8, #0x100417000
  10012cacc  nop
  10012cad0  ldr     x20, [x8, #0x2e0]
  10012cad4  mov     x1, x20
  10012cad8  bl      _objc_msgSend                            ; [TAGPBEnumOptions class]
  10012cadc  mov     x21, x0
  10012cae0  adrp    x8, #0x10041e000
  10012cae4  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012cae8  mov     x1, x20
  10012caec  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012caf0  mov     x3, x0
  10012caf4  adrp    x8, #0x10041c000
  10012caf8  nop
  10012cafc  ldr     x1, [x8, #0x4a0]
  10012cb00  strb    wzr, [sp, #0x18]
  10012cb04  mov     x8, #0x20
  10012cb08  str     x8, [sp, #0x10]
  10012cb0c  mov     x8, #1
  10012cb10  str     x8, [sp, #8]
  10012cb14  mov     x5, #4
  10012cb18  adrp    x8, #0x10042b000
  10012cb1c  add     x8, x8, #0xaa0                           ; &d_10042baa0
  10012cb20  adrp    x4, #0x10042a000
  10012cb24  add     x4, x4, #0xc10                           ; &d_10042ac10
  10012cb28  add     x8, x8, #0x18                            ; &d_10042bab8
  10012cb2c  str     x8, [sp]
  10012cb30  mov     x0, x19
  10012cb34  mov     x2, x21
  10012cb38  mov     x6, #0
  10012cb3c  mov     x7, #0
  10012cb40  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042ac10 fieldCount:4 enums:0 enumCount:0 ranges:&d_10042bab8 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012cb44  str     x0, [x22, #0xb0]                         ; store g_10042ddb0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042ac10 fieldCount:4 enums:0 enumCount:0 ranges:&d_10042bab8 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012cb48:
  10012cb48  sub     sp, x29, #0x20
  10012cb4c  ldp     x22, x21, [sp], #0x10
  10012cb50  ldp     x20, x19, [sp], #0x10
  10012cb54  ldp     x29, x30, [sp], #0x10
  10012cb58  ret
