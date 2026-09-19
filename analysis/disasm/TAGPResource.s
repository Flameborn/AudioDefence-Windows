// unit TAGPResource — 1 functions
//   0x10014c3ec     192  +[TAGPResource descriptor]

; ======================================================================
; +[TAGPResource descriptor]
; address 0x10014c3ec  size 192  kind objc
; ======================================================================
  10014c3ec  stp     x29, x30, [sp, #-0x10]!
  10014c3f0  mov     x29, sp
  10014c3f4  stp     x20, x19, [sp, #-0x10]!
  10014c3f8  stp     x22, x21, [sp, #-0x10]!
  10014c3fc  sub     sp, sp, #0x30
  10014c400  adrp    x22, #0x10042d000
  10014c404  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c408  ldr     x0, [x22, #0x70]                         ; load g_10042ded0
  10014c40c  cbnz    x0, loc_10014c498                        ; if (g_10042ded0 != 0)
  10014c410  adrp    x8, #0x10041e000
  10014c414  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c418  nop
  10014c41c  ldr     x0, [x8, #0x818]                         ; class TAGPResource
  10014c420  adrp    x8, #0x100417000
  10014c424  nop
  10014c428  ldr     x20, [x8, #0x2e0]
  10014c42c  mov     x1, x20
  10014c430  bl      _objc_msgSend                            ; [TAGPResource class]
  10014c434  mov     x21, x0
  10014c438  adrp    x8, #0x10041e000
  10014c43c  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c440  mov     x1, x20
  10014c444  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c448  mov     x3, x0
  10014c44c  adrp    x8, #0x10041c000
  10014c450  nop
  10014c454  ldr     x1, [x8, #0xdd8]
  10014c458  adrp    x8, #0x1002fa000
  10014c45c  add     x8, x8, #0xb28                           ; tconst_1002fab28
  10014c460  mov     x9, #0x88
  10014c464  adrp    x4, #0x10042c000
  10014c468  add     x4, x4, #0x9a0                           ; &d_10042c9a0
  10014c46c  mov     x5, #0x11
  10014c470  str     x8, [sp, #0x20]
  10014c474  strb    wzr, [sp, #0x18]
  10014c478  stp     xzr, x9, [sp, #8]
  10014c47c  str     xzr, [sp]
  10014c480  mov     x0, x19
  10014c484  mov     x2, x21
  10014c488  mov     x6, #0
  10014c48c  mov     x7, #0
  10014c490  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPResource class] rootClass:[TAGPServingRoot class] fields:&d_10042c9a0 fieldCount:17 enums:0 enumCount:0 ranges:tconst_1002fab28 rangeCount:136 storageSize:x10 wireFormat:x11 extraTextFormatInfo:x12]
  10014c494  str     x0, [x22, #0x70]                         ; store g_10042ded0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPResource class] rootClass:[TAGPServingRoot class] fields:&d_10042c9a0 fieldCount:17 enums:0 enumCount:0 ranges:tconst_1002fab28 rangeCount:136 storageSize:x10 wireFormat:x11 extraTextFormatInfo:x12]
loc_10014c498:
  10014c498  sub     sp, x29, #0x20
  10014c49c  ldp     x22, x21, [sp], #0x10
  10014c4a0  ldp     x20, x19, [sp], #0x10
  10014c4a4  ldp     x29, x30, [sp], #0x10
  10014c4a8  ret
