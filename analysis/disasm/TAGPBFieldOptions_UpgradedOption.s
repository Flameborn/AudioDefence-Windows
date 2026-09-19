// unit TAGPBFieldOptions_UpgradedOption — 1 functions
//   0x10012c9e0     180  +[TAGPBFieldOptions_UpgradedOption descriptor]

; ======================================================================
; +[TAGPBFieldOptions_UpgradedOption descriptor]
; address 0x10012c9e0  size 180  kind objc
; ======================================================================
  10012c9e0  stp     x29, x30, [sp, #-0x10]!
  10012c9e4  mov     x29, sp
  10012c9e8  stp     x20, x19, [sp, #-0x10]!
  10012c9ec  stp     x22, x21, [sp, #-0x10]!
  10012c9f0  sub     sp, sp, #0x20
  10012c9f4  adrp    x22, #0x10042d000
  10012c9f8  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c9fc  ldr     x0, [x22, #0xa8]                         ; load g_10042dda8
  10012ca00  cbnz    x0, loc_10012ca80                        ; if (g_10042dda8 != 0)
  10012ca04  adrp    x8, #0x10041e000
  10012ca08  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012ca0c  nop
  10012ca10  ldr     x0, [x8, #0x6e8]                         ; class TAGPBFieldOptions_UpgradedOption
  10012ca14  adrp    x8, #0x100417000
  10012ca18  nop
  10012ca1c  ldr     x20, [x8, #0x2e0]
  10012ca20  mov     x1, x20
  10012ca24  bl      _objc_msgSend                            ; [TAGPBFieldOptions_UpgradedOption class]
  10012ca28  mov     x21, x0
  10012ca2c  adrp    x8, #0x10041e000
  10012ca30  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012ca34  mov     x1, x20
  10012ca38  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012ca3c  mov     x3, x0
  10012ca40  adrp    x8, #0x10041c000
  10012ca44  nop
  10012ca48  ldr     x1, [x8, #0x4a0]
  10012ca4c  strb    wzr, [sp, #0x18]
  10012ca50  mov     x8, #0x18
  10012ca54  stp     xzr, x8, [sp, #8]
  10012ca58  str     xzr, [sp]
  10012ca5c  adrp    x4, #0x10042a000
  10012ca60  add     x4, x4, #0xba0                           ; &d_10042aba0
  10012ca64  mov     x5, #2
  10012ca68  mov     x0, x19
  10012ca6c  mov     x2, x21
  10012ca70  mov     x6, #0
  10012ca74  mov     x7, #0
  10012ca78  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBFieldOptions_UpgradedOption class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042aba0 fieldCount:2 enums:0 enumCount:0 ranges:24 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012ca7c  str     x0, [x22, #0xa8]                         ; store g_10042dda8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBFieldOptions_UpgradedOption class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042aba0 fieldCount:2 enums:0 enumCount:0 ranges:24 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012ca80:
  10012ca80  sub     sp, x29, #0x20
  10012ca84  ldp     x22, x21, [sp], #0x10
  10012ca88  ldp     x20, x19, [sp], #0x10
  10012ca8c  ldp     x29, x30, [sp], #0x10
  10012ca90  ret
