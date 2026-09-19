// unit TAGPBMethodOptions — 1 functions
//   0x10012ccec     196  +[TAGPBMethodOptions descriptor]

; ======================================================================
; +[TAGPBMethodOptions descriptor]
; address 0x10012ccec  size 196  kind objc
; ======================================================================
  10012ccec  stp     x29, x30, [sp, #-0x10]!
  10012ccf0  mov     x29, sp
  10012ccf4  stp     x20, x19, [sp, #-0x10]!
  10012ccf8  stp     x22, x21, [sp, #-0x10]!
  10012ccfc  sub     sp, sp, #0x20
  10012cd00  adrp    x22, #0x10042d000
  10012cd04  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012cd08  ldr     x0, [x22, #0xc8]                         ; load g_10042ddc8
  10012cd0c  cbnz    x0, loc_10012cd9c                        ; if (g_10042ddc8 != 0)
  10012cd10  adrp    x8, #0x10041e000
  10012cd14  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012cd18  nop
  10012cd1c  ldr     x0, [x8, #0x708]                         ; class TAGPBMethodOptions
  10012cd20  adrp    x8, #0x100417000
  10012cd24  nop
  10012cd28  ldr     x20, [x8, #0x2e0]
  10012cd2c  mov     x1, x20
  10012cd30  bl      _objc_msgSend                            ; [TAGPBMethodOptions class]
  10012cd34  mov     x21, x0
  10012cd38  adrp    x8, #0x10041e000
  10012cd3c  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012cd40  mov     x1, x20
  10012cd44  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012cd48  mov     x3, x0
  10012cd4c  adrp    x8, #0x10041c000
  10012cd50  nop
  10012cd54  ldr     x1, [x8, #0x4a0]
  10012cd58  strb    wzr, [sp, #0x18]
  10012cd5c  mov     x8, #0x98
  10012cd60  adrp    x9, #0x10042b000
  10012cd64  add     x9, x9, #0xaa0                           ; &d_10042baa0
  10012cd68  mov     x10, #1
  10012cd6c  adrp    x4, #0x10042a000
  10012cd70  add     x4, x4, #0xe40                           ; &d_10042ae40
  10012cd74  stp     x10, x8, [sp, #8]
  10012cd78  mov     x5, #0x15
  10012cd7c  add     x8, x9, #0x30                            ; &d_10042bad0
  10012cd80  str     x8, [sp]
  10012cd84  mov     x7, #4
  10012cd88  add     x6, x9, #0x80                            ; &d_10042bb20
  10012cd8c  mov     x0, x19
  10012cd90  mov     x2, x21
  10012cd94  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBMethodOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042ae40 fieldCount:21 enums:&d_10042bb20 enumCount:4 ranges:&d_10042bad0 rangeCount:&d_10042baa0 storageSize:1 wireFormat:x11]
  10012cd98  str     x0, [x22, #0xc8]                         ; store g_10042ddc8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBMethodOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042ae40 fieldCount:21 enums:&d_10042bb20 enumCount:4 ranges:&d_10042bad0 rangeCount:&d_10042baa0 storageSize:1 wireFormat:x11]
loc_10012cd9c:
  10012cd9c  sub     sp, x29, #0x20
  10012cda0  ldp     x22, x21, [sp], #0x10
  10012cda4  ldp     x20, x19, [sp], #0x10
  10012cda8  ldp     x29, x30, [sp], #0x10
  10012cdac  ret
