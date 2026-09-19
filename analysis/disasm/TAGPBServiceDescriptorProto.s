// unit TAGPBServiceDescriptorProto — 1 functions
//   0x10012c340     180  +[TAGPBServiceDescriptorProto descriptor]

; ======================================================================
; +[TAGPBServiceDescriptorProto descriptor]
; address 0x10012c340  size 180  kind objc
; ======================================================================
  10012c340  stp     x29, x30, [sp, #-0x10]!
  10012c344  mov     x29, sp
  10012c348  stp     x20, x19, [sp, #-0x10]!
  10012c34c  stp     x22, x21, [sp, #-0x10]!
  10012c350  sub     sp, sp, #0x20
  10012c354  adrp    x22, #0x10042d000
  10012c358  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c35c  ldr     x0, [x22, #0x50]                         ; load g_10042dd50
  10012c360  cbnz    x0, loc_10012c3e0                        ; if (g_10042dd50 != 0)
  10012c364  adrp    x8, #0x10041e000
  10012c368  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c36c  nop
  10012c370  ldr     x0, [x8, #0x6b8]                         ; class TAGPBServiceDescriptorProto
  10012c374  adrp    x8, #0x100417000
  10012c378  nop
  10012c37c  ldr     x20, [x8, #0x2e0]
  10012c380  mov     x1, x20
  10012c384  bl      _objc_msgSend                            ; [TAGPBServiceDescriptorProto class]
  10012c388  mov     x21, x0
  10012c38c  adrp    x8, #0x10041e000
  10012c390  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c394  mov     x1, x20
  10012c398  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c39c  mov     x3, x0
  10012c3a0  adrp    x8, #0x10041c000
  10012c3a4  nop
  10012c3a8  ldr     x1, [x8, #0x4a0]
  10012c3ac  strb    wzr, [sp, #0x18]
  10012c3b0  mov     x8, #0x28
  10012c3b4  stp     xzr, x8, [sp, #8]
  10012c3b8  str     xzr, [sp]
  10012c3bc  adrp    x4, #0x100429000
  10012c3c0  add     x4, x4, #0xd90                           ; &d_100429d90
  10012c3c4  mov     x5, #4
  10012c3c8  mov     x0, x19
  10012c3cc  mov     x2, x21
  10012c3d0  mov     x6, #0
  10012c3d4  mov     x7, #0
  10012c3d8  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBServiceDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429d90 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c3dc  str     x0, [x22, #0x50]                         ; store g_10042dd50 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBServiceDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429d90 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c3e0:
  10012c3e0  sub     sp, x29, #0x20
  10012c3e4  ldp     x22, x21, [sp], #0x10
  10012c3e8  ldp     x20, x19, [sp], #0x10
  10012c3ec  ldp     x29, x30, [sp], #0x10
  10012c3f0  ret
