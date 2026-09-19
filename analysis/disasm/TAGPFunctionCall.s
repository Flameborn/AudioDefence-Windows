// unit TAGPFunctionCall — 1 functions
//   0x10014c158     180  +[TAGPFunctionCall descriptor]

; ======================================================================
; +[TAGPFunctionCall descriptor]
; address 0x10014c158  size 180  kind objc
; ======================================================================
  10014c158  stp     x29, x30, [sp, #-0x10]!
  10014c15c  mov     x29, sp
  10014c160  stp     x20, x19, [sp, #-0x10]!
  10014c164  stp     x22, x21, [sp, #-0x10]!
  10014c168  sub     sp, sp, #0x20
  10014c16c  adrp    x22, #0x10042d000
  10014c170  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c174  ldr     x0, [x22, #0x50]                         ; load g_10042deb0
  10014c178  cbnz    x0, loc_10014c1f8                        ; if (g_10042deb0 != 0)
  10014c17c  adrp    x8, #0x10041e000
  10014c180  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c184  nop
  10014c188  ldr     x0, [x8, #0x800]                         ; class TAGPFunctionCall
  10014c18c  adrp    x8, #0x100417000
  10014c190  nop
  10014c194  ldr     x20, [x8, #0x2e0]
  10014c198  mov     x1, x20
  10014c19c  bl      _objc_msgSend                            ; [TAGPFunctionCall class]
  10014c1a0  mov     x21, x0
  10014c1a4  adrp    x8, #0x10041e000
  10014c1a8  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c1ac  mov     x1, x20
  10014c1b0  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c1b4  mov     x3, x0
  10014c1b8  adrp    x8, #0x10041c000
  10014c1bc  nop
  10014c1c0  ldr     x1, [x8, #0x4a0]
  10014c1c4  strb    wzr, [sp, #0x18]
  10014c1c8  mov     x8, #0x20
  10014c1cc  stp     xzr, x8, [sp, #8]
  10014c1d0  str     xzr, [sp]
  10014c1d4  adrp    x4, #0x10042c000
  10014c1d8  add     x4, x4, #0x4a0                           ; &d_10042c4a0
  10014c1dc  mov     x5, #5
  10014c1e0  mov     x0, x19
  10014c1e4  mov     x2, x21
  10014c1e8  mov     x6, #0
  10014c1ec  mov     x7, #0
  10014c1f0  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPFunctionCall class] rootClass:[TAGPServingRoot class] fields:&d_10042c4a0 fieldCount:5 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c1f4  str     x0, [x22, #0x50]                         ; store g_10042deb0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPFunctionCall class] rootClass:[TAGPServingRoot class] fields:&d_10042c4a0 fieldCount:5 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c1f8:
  10014c1f8  sub     sp, x29, #0x20
  10014c1fc  ldp     x22, x21, [sp], #0x10
  10014c200  ldp     x20, x19, [sp], #0x10
  10014c204  ldp     x29, x30, [sp], #0x10
  10014c208  ret
