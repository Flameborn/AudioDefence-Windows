// unit TAGPBStreamDescriptorProto — 1 functions
//   0x10012c4a8     180  +[TAGPBStreamDescriptorProto descriptor]

; ======================================================================
; +[TAGPBStreamDescriptorProto descriptor]
; address 0x10012c4a8  size 180  kind objc
; ======================================================================
  10012c4a8  stp     x29, x30, [sp, #-0x10]!
  10012c4ac  mov     x29, sp
  10012c4b0  stp     x20, x19, [sp, #-0x10]!
  10012c4b4  stp     x22, x21, [sp, #-0x10]!
  10012c4b8  sub     sp, sp, #0x20
  10012c4bc  adrp    x22, #0x10042d000
  10012c4c0  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c4c4  ldr     x0, [x22, #0x60]                         ; load g_10042dd60
  10012c4c8  cbnz    x0, loc_10012c548                        ; if (g_10042dd60 != 0)
  10012c4cc  adrp    x8, #0x10041e000
  10012c4d0  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c4d4  nop
  10012c4d8  ldr     x0, [x8, #0x6c8]                         ; class TAGPBStreamDescriptorProto
  10012c4dc  adrp    x8, #0x100417000
  10012c4e0  nop
  10012c4e4  ldr     x20, [x8, #0x2e0]
  10012c4e8  mov     x1, x20
  10012c4ec  bl      _objc_msgSend                            ; [TAGPBStreamDescriptorProto class]
  10012c4f0  mov     x21, x0
  10012c4f4  adrp    x8, #0x10041e000
  10012c4f8  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c4fc  mov     x1, x20
  10012c500  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c504  mov     x3, x0
  10012c508  adrp    x8, #0x10041c000
  10012c50c  nop
  10012c510  ldr     x1, [x8, #0x4a0]
  10012c514  strb    wzr, [sp, #0x18]
  10012c518  mov     x8, #0x28
  10012c51c  stp     xzr, x8, [sp, #8]
  10012c520  str     xzr, [sp]
  10012c524  adrp    x4, #0x100429000
  10012c528  add     x4, x4, #0xf50                           ; &d_100429f50
  10012c52c  mov     x5, #4
  10012c530  mov     x0, x19
  10012c534  mov     x2, x21
  10012c538  mov     x6, #0
  10012c53c  mov     x7, #0
  10012c540  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBStreamDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429f50 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c544  str     x0, [x22, #0x60]                         ; store g_10042dd60 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBStreamDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429f50 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c548:
  10012c548  sub     sp, x29, #0x20
  10012c54c  ldp     x22, x21, [sp], #0x10
  10012c550  ldp     x20, x19, [sp], #0x10
  10012c554  ldp     x29, x30, [sp], #0x10
  10012c558  ret
