// unit TAGPBMethodDescriptorProto — 1 functions
//   0x10012c3f4     180  +[TAGPBMethodDescriptorProto descriptor]

; ======================================================================
; +[TAGPBMethodDescriptorProto descriptor]
; address 0x10012c3f4  size 180  kind objc
; ======================================================================
  10012c3f4  stp     x29, x30, [sp, #-0x10]!
  10012c3f8  mov     x29, sp
  10012c3fc  stp     x20, x19, [sp, #-0x10]!
  10012c400  stp     x22, x21, [sp, #-0x10]!
  10012c404  sub     sp, sp, #0x20
  10012c408  adrp    x22, #0x10042d000
  10012c40c  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c410  ldr     x0, [x22, #0x58]                         ; load g_10042dd58
  10012c414  cbnz    x0, loc_10012c494                        ; if (g_10042dd58 != 0)
  10012c418  adrp    x8, #0x10041e000
  10012c41c  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c420  nop
  10012c424  ldr     x0, [x8, #0x6c0]                         ; class TAGPBMethodDescriptorProto
  10012c428  adrp    x8, #0x100417000
  10012c42c  nop
  10012c430  ldr     x20, [x8, #0x2e0]
  10012c434  mov     x1, x20
  10012c438  bl      _objc_msgSend                            ; [TAGPBMethodDescriptorProto class]
  10012c43c  mov     x21, x0
  10012c440  adrp    x8, #0x10041e000
  10012c444  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c448  mov     x1, x20
  10012c44c  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c450  mov     x3, x0
  10012c454  adrp    x8, #0x10041c000
  10012c458  nop
  10012c45c  ldr     x1, [x8, #0x4a0]
  10012c460  strb    wzr, [sp, #0x18]
  10012c464  mov     x8, #0x28
  10012c468  stp     xzr, x8, [sp, #8]
  10012c46c  str     xzr, [sp]
  10012c470  adrp    x4, #0x100429000
  10012c474  add     x4, x4, #0xe70                           ; &d_100429e70
  10012c478  mov     x5, #4
  10012c47c  mov     x0, x19
  10012c480  mov     x2, x21
  10012c484  mov     x6, #0
  10012c488  mov     x7, #0
  10012c48c  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBMethodDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429e70 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c490  str     x0, [x22, #0x58]                         ; store g_10042dd58 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBMethodDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429e70 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c494:
  10012c494  sub     sp, x29, #0x20
  10012c498  ldp     x22, x21, [sp], #0x10
  10012c49c  ldp     x20, x19, [sp], #0x10
  10012c4a0  ldp     x29, x30, [sp], #0x10
  10012c4a4  ret
