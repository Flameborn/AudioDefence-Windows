// unit TAGPBEnumValueOptions — 1 functions
//   0x10012cb5c     200  +[TAGPBEnumValueOptions descriptor]

; ======================================================================
; +[TAGPBEnumValueOptions descriptor]
; address 0x10012cb5c  size 200  kind objc
; ======================================================================
  10012cb5c  stp     x29, x30, [sp, #-0x10]!
  10012cb60  mov     x29, sp
  10012cb64  stp     x20, x19, [sp, #-0x10]!
  10012cb68  stp     x22, x21, [sp, #-0x10]!
  10012cb6c  sub     sp, sp, #0x20
  10012cb70  adrp    x22, #0x10042d000
  10012cb74  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012cb78  ldr     x0, [x22, #0xb8]                         ; load g_10042ddb8
  10012cb7c  cbnz    x0, loc_10012cc10                        ; if (g_10042ddb8 != 0)
  10012cb80  adrp    x8, #0x10041e000
  10012cb84  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012cb88  nop
  10012cb8c  ldr     x0, [x8, #0x6f8]                         ; class TAGPBEnumValueOptions
  10012cb90  adrp    x8, #0x100417000
  10012cb94  nop
  10012cb98  ldr     x20, [x8, #0x2e0]
  10012cb9c  mov     x1, x20
  10012cba0  bl      _objc_msgSend                            ; [TAGPBEnumValueOptions class]
  10012cba4  mov     x21, x0
  10012cba8  adrp    x8, #0x10041e000
  10012cbac  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012cbb0  mov     x1, x20
  10012cbb4  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012cbb8  mov     x3, x0
  10012cbbc  adrp    x8, #0x10041c000
  10012cbc0  nop
  10012cbc4  ldr     x1, [x8, #0x4a0]
  10012cbc8  strb    wzr, [sp, #0x18]
  10012cbcc  mov     x8, #0x10
  10012cbd0  str     x8, [sp, #0x10]
  10012cbd4  mov     x8, #1
  10012cbd8  str     x8, [sp, #8]
  10012cbdc  mov     x5, #2
  10012cbe0  adrp    x8, #0x10042b000
  10012cbe4  add     x8, x8, #0xaa0                           ; &d_10042baa0
  10012cbe8  adrp    x4, #0x10042a000
  10012cbec  add     x4, x4, #0xcf0                           ; &d_10042acf0
  10012cbf0  add     x8, x8, #0x20                            ; &d_10042bac0
  10012cbf4  str     x8, [sp]
  10012cbf8  mov     x0, x19
  10012cbfc  mov     x2, x21
  10012cc00  mov     x6, #0
  10012cc04  mov     x7, #0
  10012cc08  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumValueOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042acf0 fieldCount:2 enums:0 enumCount:0 ranges:&d_10042bac0 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012cc0c  str     x0, [x22, #0xb8]                         ; store g_10042ddb8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumValueOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042acf0 fieldCount:2 enums:0 enumCount:0 ranges:&d_10042bac0 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012cc10:
  10012cc10  sub     sp, x29, #0x20
  10012cc14  ldp     x22, x21, [sp], #0x10
  10012cc18  ldp     x20, x19, [sp], #0x10
  10012cc1c  ldp     x29, x30, [sp], #0x10
  10012cc20  ret
