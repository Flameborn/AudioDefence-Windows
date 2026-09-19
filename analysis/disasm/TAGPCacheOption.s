// unit TAGPCacheOption — 1 functions
//   0x10014c2c0     188  +[TAGPCacheOption descriptor]

; ======================================================================
; +[TAGPCacheOption descriptor]
; address 0x10014c2c0  size 188  kind objc
; ======================================================================
  10014c2c0  stp     x29, x30, [sp, #-0x10]!
  10014c2c4  mov     x29, sp
  10014c2c8  stp     x20, x19, [sp, #-0x10]!
  10014c2cc  stp     x22, x21, [sp, #-0x10]!
  10014c2d0  sub     sp, sp, #0x20
  10014c2d4  adrp    x22, #0x10042d000
  10014c2d8  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c2dc  ldr     x0, [x22, #0x60]                         ; load g_10042dec0
  10014c2e0  cbnz    x0, loc_10014c368                        ; if (g_10042dec0 != 0)
  10014c2e4  adrp    x8, #0x10041e000
  10014c2e8  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c2ec  nop
  10014c2f0  ldr     x0, [x8, #0x810]                         ; class TAGPCacheOption
  10014c2f4  adrp    x8, #0x100417000
  10014c2f8  nop
  10014c2fc  ldr     x20, [x8, #0x2e0]
  10014c300  mov     x1, x20
  10014c304  bl      _objc_msgSend                            ; [TAGPCacheOption class]
  10014c308  mov     x21, x0
  10014c30c  adrp    x8, #0x10041e000
  10014c310  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c314  mov     x1, x20
  10014c318  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c31c  mov     x3, x0
  10014c320  adrp    x8, #0x10041c000
  10014c324  nop
  10014c328  ldr     x1, [x8, #0x4a0]
  10014c32c  strb    wzr, [sp, #0x18]
  10014c330  mov     x8, #0x18
  10014c334  stp     xzr, x8, [sp, #8]
  10014c338  adrp    x8, #0x10042d000
  10014c33c  add     x8, x8, #0x2a0                           ; &d_10042d2a0
  10014c340  str     xzr, [sp]
  10014c344  add     x6, x8, #8                               ; &d_10042d2a8
  10014c348  adrp    x4, #0x10042c000
  10014c34c  add     x4, x4, #0x8c8                           ; &d_10042c8c8
  10014c350  mov     x5, #3
  10014c354  mov     x7, #1
  10014c358  mov     x0, x19
  10014c35c  mov     x2, x21
  10014c360  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPCacheOption class] rootClass:[TAGPServingRoot class] fields:&d_10042c8c8 fieldCount:3 enums:&d_10042d2a8 enumCount:1 ranges:&d_10042d2a0 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c364  str     x0, [x22, #0x60]                         ; store g_10042dec0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPCacheOption class] rootClass:[TAGPServingRoot class] fields:&d_10042c8c8 fieldCount:3 enums:&d_10042d2a8 enumCount:1 ranges:&d_10042d2a0 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c368:
  10014c368  sub     sp, x29, #0x20
  10014c36c  ldp     x22, x21, [sp], #0x10
  10014c370  ldp     x20, x19, [sp], #0x10
  10014c374  ldp     x29, x30, [sp], #0x10
  10014c378  ret
