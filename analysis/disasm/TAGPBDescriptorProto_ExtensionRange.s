// unit TAGPBDescriptorProto_ExtensionRange — 1 functions
//   0x10012bed4     180  +[TAGPBDescriptorProto_ExtensionRange descriptor]

; ======================================================================
; +[TAGPBDescriptorProto_ExtensionRange descriptor]
; address 0x10012bed4  size 180  kind objc
; ======================================================================
  10012bed4  stp     x29, x30, [sp, #-0x10]!
  10012bed8  mov     x29, sp
  10012bedc  stp     x20, x19, [sp, #-0x10]!
  10012bee0  stp     x22, x21, [sp, #-0x10]!
  10012bee4  sub     sp, sp, #0x20
  10012bee8  adrp    x22, #0x10042d000
  10012beec  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012bef0  ldr     x0, [x22, #0x18]                         ; load g_10042dd18
  10012bef4  cbnz    x0, loc_10012bf74                        ; if (g_10042dd18 != 0)
  10012bef8  adrp    x8, #0x10041e000
  10012befc  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012bf00  nop
  10012bf04  ldr     x0, [x8, #0x688]                         ; class TAGPBDescriptorProto_ExtensionRange
  10012bf08  adrp    x8, #0x100417000
  10012bf0c  nop
  10012bf10  ldr     x20, [x8, #0x2e0]
  10012bf14  mov     x1, x20
  10012bf18  bl      _objc_msgSend                            ; [TAGPBDescriptorProto_ExtensionRange class]
  10012bf1c  mov     x21, x0
  10012bf20  adrp    x8, #0x10041e000
  10012bf24  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012bf28  mov     x1, x20
  10012bf2c  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012bf30  mov     x3, x0
  10012bf34  adrp    x8, #0x10041c000
  10012bf38  nop
  10012bf3c  ldr     x1, [x8, #0x4a0]
  10012bf40  strb    wzr, [sp, #0x18]
  10012bf44  mov     x8, #0xc
  10012bf48  stp     xzr, x8, [sp, #8]
  10012bf4c  str     xzr, [sp]
  10012bf50  adrp    x4, #0x100429000
  10012bf54  add     x4, x4, #0x850                           ; &d_100429850
  10012bf58  mov     x5, #2
  10012bf5c  mov     x0, x19
  10012bf60  mov     x2, x21
  10012bf64  mov     x6, #0
  10012bf68  mov     x7, #0
  10012bf6c  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBDescriptorProto_ExtensionRange class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429850 fieldCount:2 enums:0 enumCount:0 ranges:12 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012bf70  str     x0, [x22, #0x18]                         ; store g_10042dd18 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBDescriptorProto_ExtensionRange class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429850 fieldCount:2 enums:0 enumCount:0 ranges:12 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012bf74:
  10012bf74  sub     sp, x29, #0x20
  10012bf78  ldp     x22, x21, [sp], #0x10
  10012bf7c  ldp     x20, x19, [sp], #0x10
  10012bf80  ldp     x29, x30, [sp], #0x10
  10012bf84  ret
