// unit TAGPBEnumDescriptorProto — 1 functions
//   0x10012c1d8     180  +[TAGPBEnumDescriptorProto descriptor]

; ======================================================================
; +[TAGPBEnumDescriptorProto descriptor]
; address 0x10012c1d8  size 180  kind objc
; ======================================================================
  10012c1d8  stp     x29, x30, [sp, #-0x10]!
  10012c1dc  mov     x29, sp
  10012c1e0  stp     x20, x19, [sp, #-0x10]!
  10012c1e4  stp     x22, x21, [sp, #-0x10]!
  10012c1e8  sub     sp, sp, #0x20
  10012c1ec  adrp    x22, #0x10042d000
  10012c1f0  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c1f4  ldr     x0, [x22, #0x40]                         ; load g_10042dd40
  10012c1f8  cbnz    x0, loc_10012c278                        ; if (g_10042dd40 != 0)
  10012c1fc  adrp    x8, #0x10041e000
  10012c200  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c204  nop
  10012c208  ldr     x0, [x8, #0x6a8]                         ; class TAGPBEnumDescriptorProto
  10012c20c  adrp    x8, #0x100417000
  10012c210  nop
  10012c214  ldr     x20, [x8, #0x2e0]
  10012c218  mov     x1, x20
  10012c21c  bl      _objc_msgSend                            ; [TAGPBEnumDescriptorProto class]
  10012c220  mov     x21, x0
  10012c224  adrp    x8, #0x10041e000
  10012c228  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c22c  mov     x1, x20
  10012c230  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c234  mov     x3, x0
  10012c238  adrp    x8, #0x10041c000
  10012c23c  nop
  10012c240  ldr     x1, [x8, #0x4a0]
  10012c244  strb    wzr, [sp, #0x18]
  10012c248  mov     x8, #0x20
  10012c24c  stp     xzr, x8, [sp, #8]
  10012c250  str     xzr, [sp]
  10012c254  adrp    x4, #0x100429000
  10012c258  add     x4, x4, #0xc40                           ; &d_100429c40
  10012c25c  mov     x5, #3
  10012c260  mov     x0, x19
  10012c264  mov     x2, x21
  10012c268  mov     x6, #0
  10012c26c  mov     x7, #0
  10012c270  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429c40 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c274  str     x0, [x22, #0x40]                         ; store g_10042dd40 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBEnumDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429c40 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c278:
  10012c278  sub     sp, x29, #0x20
  10012c27c  ldp     x22, x21, [sp], #0x10
  10012c280  ldp     x20, x19, [sp], #0x10
  10012c284  ldp     x29, x30, [sp], #0x10
  10012c288  ret
