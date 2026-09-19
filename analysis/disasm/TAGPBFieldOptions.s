// unit TAGPBFieldOptions — 1 functions
//   0x10012c7d8     196  +[TAGPBFieldOptions descriptor]

; ======================================================================
; +[TAGPBFieldOptions descriptor]
; address 0x10012c7d8  size 196  kind objc
; ======================================================================
  10012c7d8  stp     x29, x30, [sp, #-0x10]!
  10012c7dc  mov     x29, sp
  10012c7e0  stp     x20, x19, [sp, #-0x10]!
  10012c7e4  stp     x22, x21, [sp, #-0x10]!
  10012c7e8  sub     sp, sp, #0x20
  10012c7ec  adrp    x22, #0x10042d000
  10012c7f0  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c7f4  ldr     x0, [x22, #0x88]                         ; load g_10042dd88
  10012c7f8  cbnz    x0, loc_10012c888                        ; if (g_10042dd88 != 0)
  10012c7fc  adrp    x8, #0x10041e000
  10012c800  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c804  nop
  10012c808  ldr     x0, [x8, #0x6e0]                         ; class TAGPBFieldOptions
  10012c80c  adrp    x8, #0x100417000
  10012c810  nop
  10012c814  ldr     x20, [x8, #0x2e0]
  10012c818  mov     x1, x20
  10012c81c  bl      _objc_msgSend                            ; [TAGPBFieldOptions class]
  10012c820  mov     x21, x0
  10012c824  adrp    x8, #0x10041e000
  10012c828  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c82c  mov     x1, x20
  10012c830  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c834  mov     x3, x0
  10012c838  adrp    x8, #0x10041c000
  10012c83c  nop
  10012c840  ldr     x1, [x8, #0x4a0]
  10012c844  strb    wzr, [sp, #0x18]
  10012c848  mov     x8, #0x58
  10012c84c  adrp    x9, #0x10042b000
  10012c850  add     x9, x9, #0xaa0                           ; &d_10042baa0
  10012c854  mov     x10, #1
  10012c858  adrp    x4, #0x10042a000
  10012c85c  add     x4, x4, #0x8a8                           ; &d_10042a8a8
  10012c860  stp     x10, x8, [sp, #8]
  10012c864  mov     x5, #0xb
  10012c868  add     x8, x9, #0x10                            ; &d_10042bab0
  10012c86c  str     x8, [sp]
  10012c870  mov     x7, #3
  10012c874  add     x6, x9, #0x68                            ; &d_10042bb08
  10012c878  mov     x0, x19
  10012c87c  mov     x2, x21
  10012c880  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBFieldOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042a8a8 fieldCount:11 enums:&d_10042bb08 enumCount:3 ranges:&d_10042bab0 rangeCount:&d_10042baa0 storageSize:1 wireFormat:x11]
  10012c884  str     x0, [x22, #0x88]                         ; store g_10042dd88 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBFieldOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042a8a8 fieldCount:11 enums:&d_10042bb08 enumCount:3 ranges:&d_10042bab0 rangeCount:&d_10042baa0 storageSize:1 wireFormat:x11]
loc_10012c888:
  10012c888  sub     sp, x29, #0x20
  10012c88c  ldp     x22, x21, [sp], #0x10
  10012c890  ldp     x20, x19, [sp], #0x10
  10012c894  ldp     x29, x30, [sp], #0x10
  10012c898  ret
