// unit TAGPBServiceOptions — 1 functions
//   0x10012cc24     200  +[TAGPBServiceOptions descriptor]

; ======================================================================
; +[TAGPBServiceOptions descriptor]
; address 0x10012cc24  size 200  kind objc
; ======================================================================
  10012cc24  stp     x29, x30, [sp, #-0x10]!
  10012cc28  mov     x29, sp
  10012cc2c  stp     x20, x19, [sp, #-0x10]!
  10012cc30  stp     x22, x21, [sp, #-0x10]!
  10012cc34  sub     sp, sp, #0x20
  10012cc38  adrp    x22, #0x10042d000
  10012cc3c  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012cc40  ldr     x0, [x22, #0xc0]                         ; load g_10042ddc0
  10012cc44  cbnz    x0, loc_10012ccd8                        ; if (g_10042ddc0 != 0)
  10012cc48  adrp    x8, #0x10041e000
  10012cc4c  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012cc50  nop
  10012cc54  ldr     x0, [x8, #0x700]                         ; class TAGPBServiceOptions
  10012cc58  adrp    x8, #0x100417000
  10012cc5c  nop
  10012cc60  ldr     x20, [x8, #0x2e0]
  10012cc64  mov     x1, x20
  10012cc68  bl      _objc_msgSend                            ; [TAGPBServiceOptions class]
  10012cc6c  mov     x21, x0
  10012cc70  adrp    x8, #0x10041e000
  10012cc74  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012cc78  mov     x1, x20
  10012cc7c  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012cc80  mov     x3, x0
  10012cc84  adrp    x8, #0x10041c000
  10012cc88  nop
  10012cc8c  ldr     x1, [x8, #0x4a0]
  10012cc90  strb    wzr, [sp, #0x18]
  10012cc94  mov     x8, #0x20
  10012cc98  str     x8, [sp, #0x10]
  10012cc9c  mov     x8, #1
  10012cca0  str     x8, [sp, #8]
  10012cca4  mov     x5, #4
  10012cca8  adrp    x8, #0x10042b000
  10012ccac  add     x8, x8, #0xaa0                           ; &d_10042baa0
  10012ccb0  adrp    x4, #0x10042a000
  10012ccb4  add     x4, x4, #0xd60                           ; &d_10042ad60
  10012ccb8  add     x8, x8, #0x28                            ; &d_10042bac8
  10012ccbc  str     x8, [sp]
  10012ccc0  mov     x0, x19
  10012ccc4  mov     x2, x21
  10012ccc8  mov     x6, #0
  10012cccc  mov     x7, #0
  10012ccd0  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBServiceOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042ad60 fieldCount:4 enums:0 enumCount:0 ranges:&d_10042bac8 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012ccd4  str     x0, [x22, #0xc0]                         ; store g_10042ddc0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBServiceOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042ad60 fieldCount:4 enums:0 enumCount:0 ranges:&d_10042bac8 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012ccd8:
  10012ccd8  sub     sp, x29, #0x20
  10012ccdc  ldp     x22, x21, [sp], #0x10
  10012cce0  ldp     x20, x19, [sp], #0x10
  10012cce4  ldp     x29, x30, [sp], #0x10
  10012cce8  ret
