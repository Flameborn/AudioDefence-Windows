// unit TAGPBFileDescriptorProto — 1 functions
//   0x10012bd6c     180  +[TAGPBFileDescriptorProto descriptor]

; ======================================================================
; +[TAGPBFileDescriptorProto descriptor]
; address 0x10012bd6c  size 180  kind objc
; ======================================================================
  10012bd6c  stp     x29, x30, [sp, #-0x10]!
  10012bd70  mov     x29, sp
  10012bd74  stp     x20, x19, [sp, #-0x10]!
  10012bd78  stp     x22, x21, [sp, #-0x10]!
  10012bd7c  sub     sp, sp, #0x20
  10012bd80  adrp    x22, #0x10042d000
  10012bd84  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012bd88  ldr     x0, [x22, #8]                            ; load g_10042dd08
  10012bd8c  cbnz    x0, loc_10012be0c                        ; if (g_10042dd08 != 0)
  10012bd90  adrp    x8, #0x10041e000
  10012bd94  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012bd98  nop
  10012bd9c  ldr     x0, [x8, #0x678]                         ; class TAGPBFileDescriptorProto
  10012bda0  adrp    x8, #0x100417000
  10012bda4  nop
  10012bda8  ldr     x20, [x8, #0x2e0]
  10012bdac  mov     x1, x20
  10012bdb0  bl      _objc_msgSend                            ; [TAGPBFileDescriptorProto class]
  10012bdb4  mov     x21, x0
  10012bdb8  adrp    x8, #0x10041e000
  10012bdbc  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012bdc0  mov     x1, x20
  10012bdc4  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012bdc8  mov     x3, x0
  10012bdcc  adrp    x8, #0x10041c000
  10012bdd0  nop
  10012bdd4  ldr     x1, [x8, #0x4a0]
  10012bdd8  strb    wzr, [sp, #0x18]
  10012bddc  mov     x8, #0x60
  10012bde0  stp     xzr, x8, [sp, #8]
  10012bde4  str     xzr, [sp]
  10012bde8  adrp    x4, #0x100429000
  10012bdec  add     x4, x4, #0x428                           ; &d_100429428
  10012bdf0  mov     x5, #0xb
  10012bdf4  mov     x0, x19
  10012bdf8  mov     x2, x21
  10012bdfc  mov     x6, #0
  10012be00  mov     x7, #0
  10012be04  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBFileDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429428 fieldCount:11 enums:0 enumCount:0 ranges:96 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012be08  str     x0, [x22, #8]                            ; store g_10042dd08 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBFileDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429428 fieldCount:11 enums:0 enumCount:0 ranges:96 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012be0c:
  10012be0c  sub     sp, x29, #0x20
  10012be10  ldp     x22, x21, [sp], #0x10
  10012be14  ldp     x20, x19, [sp], #0x10
  10012be18  ldp     x29, x30, [sp], #0x10
  10012be1c  ret
