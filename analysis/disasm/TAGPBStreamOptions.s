// unit TAGPBStreamOptions — 1 functions
//   0x10012cf60     196  +[TAGPBStreamOptions descriptor]

; ======================================================================
; +[TAGPBStreamOptions descriptor]
; address 0x10012cf60  size 196  kind objc
; ======================================================================
  10012cf60  stp     x29, x30, [sp, #-0x10]!
  10012cf64  mov     x29, sp
  10012cf68  stp     x20, x19, [sp, #-0x10]!
  10012cf6c  stp     x22, x21, [sp, #-0x10]!
  10012cf70  sub     sp, sp, #0x20
  10012cf74  adrp    x22, #0x10042d000
  10012cf78  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012cf7c  ldr     x0, [x22, #0xf0]                         ; load g_10042ddf0
  10012cf80  cbnz    x0, loc_10012d010                        ; if (g_10042ddf0 != 0)
  10012cf84  adrp    x8, #0x10041e000
  10012cf88  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012cf8c  nop
  10012cf90  ldr     x0, [x8, #0x710]                         ; class TAGPBStreamOptions
  10012cf94  adrp    x8, #0x100417000
  10012cf98  nop
  10012cf9c  ldr     x20, [x8, #0x2e0]
  10012cfa0  mov     x1, x20
  10012cfa4  bl      _objc_msgSend                            ; [TAGPBStreamOptions class]
  10012cfa8  mov     x21, x0
  10012cfac  adrp    x8, #0x10041e000
  10012cfb0  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012cfb4  mov     x1, x20
  10012cfb8  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012cfbc  mov     x3, x0
  10012cfc0  adrp    x8, #0x10041c000
  10012cfc4  nop
  10012cfc8  ldr     x1, [x8, #0x4a0]
  10012cfcc  strb    wzr, [sp, #0x18]
  10012cfd0  mov     x8, #0x60
  10012cfd4  adrp    x9, #0x10042b000
  10012cfd8  add     x9, x9, #0xaa0                           ; &d_10042baa0
  10012cfdc  mov     x10, #1
  10012cfe0  adrp    x4, #0x10042b000
  10012cfe4  add     x4, x4, #0x3a8                           ; &d_10042b3a8
  10012cfe8  stp     x10, x8, [sp, #8]
  10012cfec  mov     x5, #0xd
  10012cff0  add     x8, x9, #0x40                            ; &d_10042bae0
  10012cff4  str     x8, [sp]
  10012cff8  mov     x7, #1
  10012cffc  add     x6, x9, #0x38                            ; &d_10042bad8
  10012d000  mov     x0, x19
  10012d004  mov     x2, x21
  10012d008  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBStreamOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b3a8 fieldCount:13 enums:&d_10042bad8 enumCount:1 ranges:&d_10042bae0 rangeCount:&d_10042baa0 storageSize:1 wireFormat:x11]
  10012d00c  str     x0, [x22, #0xf0]                         ; store g_10042ddf0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBStreamOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b3a8 fieldCount:13 enums:&d_10042bad8 enumCount:1 ranges:&d_10042bae0 rangeCount:&d_10042baa0 storageSize:1 wireFormat:x11]
loc_10012d010:
  10012d010  sub     sp, x29, #0x20
  10012d014  ldp     x22, x21, [sp], #0x10
  10012d018  ldp     x20, x19, [sp], #0x10
  10012d01c  ldp     x29, x30, [sp], #0x10
  10012d020  ret
