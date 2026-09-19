// unit TAGPRule — 1 functions
//   0x10014c20c     180  +[TAGPRule descriptor]

; ======================================================================
; +[TAGPRule descriptor]
; address 0x10014c20c  size 180  kind objc
; ======================================================================
  10014c20c  stp     x29, x30, [sp, #-0x10]!
  10014c210  mov     x29, sp
  10014c214  stp     x20, x19, [sp, #-0x10]!
  10014c218  stp     x22, x21, [sp, #-0x10]!
  10014c21c  sub     sp, sp, #0x20
  10014c220  adrp    x22, #0x10042d000
  10014c224  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c228  ldr     x0, [x22, #0x58]                         ; load g_10042deb8
  10014c22c  cbnz    x0, loc_10014c2ac                        ; if (g_10042deb8 != 0)
  10014c230  adrp    x8, #0x10041e000
  10014c234  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c238  nop
  10014c23c  ldr     x0, [x8, #0x808]                         ; class TAGPRule
  10014c240  adrp    x8, #0x100417000
  10014c244  nop
  10014c248  ldr     x20, [x8, #0x2e0]
  10014c24c  mov     x1, x20
  10014c250  bl      _objc_msgSend                            ; [TAGPRule class]
  10014c254  mov     x21, x0
  10014c258  adrp    x8, #0x10041e000
  10014c25c  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c260  mov     x1, x20
  10014c264  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c268  mov     x3, x0
  10014c26c  adrp    x8, #0x10041c000
  10014c270  nop
  10014c274  ldr     x1, [x8, #0x4a0]
  10014c278  strb    wzr, [sp, #0x18]
  10014c27c  mov     x8, #0x78
  10014c280  stp     xzr, x8, [sp, #8]
  10014c284  str     xzr, [sp]
  10014c288  adrp    x4, #0x10042c000
  10014c28c  add     x4, x4, #0x5b8                           ; &d_10042c5b8
  10014c290  mov     x5, #0xe
  10014c294  mov     x0, x19
  10014c298  mov     x2, x21
  10014c29c  mov     x6, #0
  10014c2a0  mov     x7, #0
  10014c2a4  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPRule class] rootClass:[TAGPServingRoot class] fields:&d_10042c5b8 fieldCount:14 enums:0 enumCount:0 ranges:120 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c2a8  str     x0, [x22, #0x58]                         ; store g_10042deb8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPRule class] rootClass:[TAGPServingRoot class] fields:&d_10042c5b8 fieldCount:14 enums:0 enumCount:0 ranges:120 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c2ac:
  10014c2ac  sub     sp, x29, #0x20
  10014c2b0  ldp     x22, x21, [sp], #0x10
  10014c2b4  ldp     x20, x19, [sp], #0x10
  10014c2b8  ldp     x29, x30, [sp], #0x10
  10014c2bc  ret
