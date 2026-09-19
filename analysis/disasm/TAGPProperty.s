// unit TAGPProperty — 1 functions
//   0x10014c0a4     180  +[TAGPProperty descriptor]

; ======================================================================
; +[TAGPProperty descriptor]
; address 0x10014c0a4  size 180  kind objc
; ======================================================================
  10014c0a4  stp     x29, x30, [sp, #-0x10]!
  10014c0a8  mov     x29, sp
  10014c0ac  stp     x20, x19, [sp, #-0x10]!
  10014c0b0  stp     x22, x21, [sp, #-0x10]!
  10014c0b4  sub     sp, sp, #0x20
  10014c0b8  adrp    x22, #0x10042d000
  10014c0bc  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c0c0  ldr     x0, [x22, #0x48]                         ; load g_10042dea8
  10014c0c4  cbnz    x0, loc_10014c144                        ; if (g_10042dea8 != 0)
  10014c0c8  adrp    x8, #0x10041e000
  10014c0cc  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c0d0  nop
  10014c0d4  ldr     x0, [x8, #0x7f8]                         ; class TAGPProperty
  10014c0d8  adrp    x8, #0x100417000
  10014c0dc  nop
  10014c0e0  ldr     x20, [x8, #0x2e0]
  10014c0e4  mov     x1, x20
  10014c0e8  bl      _objc_msgSend                            ; [TAGPProperty class]
  10014c0ec  mov     x21, x0
  10014c0f0  adrp    x8, #0x10041e000
  10014c0f4  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c0f8  mov     x1, x20
  10014c0fc  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c100  mov     x3, x0
  10014c104  adrp    x8, #0x10041c000
  10014c108  nop
  10014c10c  ldr     x1, [x8, #0x4a0]
  10014c110  strb    wzr, [sp, #0x18]
  10014c114  mov     x8, #0xc
  10014c118  stp     xzr, x8, [sp, #8]
  10014c11c  str     xzr, [sp]
  10014c120  adrp    x4, #0x10042c000
  10014c124  add     x4, x4, #0x430                           ; &d_10042c430
  10014c128  mov     x5, #2
  10014c12c  mov     x0, x19
  10014c130  mov     x2, x21
  10014c134  mov     x6, #0
  10014c138  mov     x7, #0
  10014c13c  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPProperty class] rootClass:[TAGPServingRoot class] fields:&d_10042c430 fieldCount:2 enums:0 enumCount:0 ranges:12 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c140  str     x0, [x22, #0x48]                         ; store g_10042dea8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPProperty class] rootClass:[TAGPServingRoot class] fields:&d_10042c430 fieldCount:2 enums:0 enumCount:0 ranges:12 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c144:
  10014c144  sub     sp, x29, #0x20
  10014c148  ldp     x22, x21, [sp], #0x10
  10014c14c  ldp     x20, x19, [sp], #0x10
  10014c150  ldp     x29, x30, [sp], #0x10
  10014c154  ret
