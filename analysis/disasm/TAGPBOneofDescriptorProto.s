// unit TAGPBOneofDescriptorProto — 1 functions
//   0x10012c124     180  +[TAGPBOneofDescriptorProto descriptor]

; ======================================================================
; +[TAGPBOneofDescriptorProto descriptor]
; address 0x10012c124  size 180  kind objc
; ======================================================================
  10012c124  stp     x29, x30, [sp, #-0x10]!
  10012c128  mov     x29, sp
  10012c12c  stp     x20, x19, [sp, #-0x10]!
  10012c130  stp     x22, x21, [sp, #-0x10]!
  10012c134  sub     sp, sp, #0x20
  10012c138  adrp    x22, #0x10042d000
  10012c13c  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c140  ldr     x0, [x22, #0x38]                         ; load g_10042dd38
  10012c144  cbnz    x0, loc_10012c1c4                        ; if (g_10042dd38 != 0)
  10012c148  adrp    x8, #0x10041e000
  10012c14c  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c150  nop
  10012c154  ldr     x0, [x8, #0x6a0]                         ; class TAGPBOneofDescriptorProto
  10012c158  adrp    x8, #0x100417000
  10012c15c  nop
  10012c160  ldr     x20, [x8, #0x2e0]
  10012c164  mov     x1, x20
  10012c168  bl      _objc_msgSend                            ; [TAGPBOneofDescriptorProto class]
  10012c16c  mov     x21, x0
  10012c170  adrp    x8, #0x10041e000
  10012c174  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c178  mov     x1, x20
  10012c17c  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c180  mov     x3, x0
  10012c184  adrp    x8, #0x10041c000
  10012c188  nop
  10012c18c  ldr     x1, [x8, #0x4a0]
  10012c190  strb    wzr, [sp, #0x18]
  10012c194  mov     x8, #0x10
  10012c198  stp     xzr, x8, [sp, #8]
  10012c19c  str     xzr, [sp]
  10012c1a0  adrp    x4, #0x100429000
  10012c1a4  add     x4, x4, #0xc08                           ; &d_100429c08
  10012c1a8  mov     x5, #1
  10012c1ac  mov     x0, x19
  10012c1b0  mov     x2, x21
  10012c1b4  mov     x6, #0
  10012c1b8  mov     x7, #0
  10012c1bc  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBOneofDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429c08 fieldCount:1 enums:0 enumCount:0 ranges:16 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c1c0  str     x0, [x22, #0x38]                         ; store g_10042dd38 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBOneofDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429c08 fieldCount:1 enums:0 enumCount:0 ranges:16 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c1c4:
  10012c1c4  sub     sp, x29, #0x20
  10012c1c8  ldp     x22, x21, [sp], #0x10
  10012c1cc  ldp     x20, x19, [sp], #0x10
  10012c1d0  ldp     x29, x30, [sp], #0x10
  10012c1d4  ret
