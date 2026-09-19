// unit TAGPServingValue — 1 functions
//   0x10014bff0     180  +[TAGPServingValue descriptor]

; ======================================================================
; +[TAGPServingValue descriptor]
; address 0x10014bff0  size 180  kind objc
; ======================================================================
  10014bff0  stp     x29, x30, [sp, #-0x10]!
  10014bff4  mov     x29, sp
  10014bff8  stp     x20, x19, [sp, #-0x10]!
  10014bffc  stp     x22, x21, [sp, #-0x10]!
  10014c000  sub     sp, sp, #0x20
  10014c004  adrp    x22, #0x10042d000
  10014c008  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c00c  ldr     x0, [x22, #0x40]                         ; load g_10042dea0
  10014c010  cbnz    x0, loc_10014c090                        ; if (g_10042dea0 != 0)
  10014c014  adrp    x8, #0x10041e000
  10014c018  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c01c  nop
  10014c020  ldr     x0, [x8, #0x7f0]                         ; class TAGPServingValue
  10014c024  adrp    x8, #0x100417000
  10014c028  nop
  10014c02c  ldr     x20, [x8, #0x2e0]
  10014c030  mov     x1, x20
  10014c034  bl      _objc_msgSend                            ; [TAGPServingValue class]
  10014c038  mov     x21, x0
  10014c03c  adrp    x8, #0x10041e000
  10014c040  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c044  mov     x1, x20
  10014c048  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c04c  mov     x3, x0
  10014c050  adrp    x8, #0x10041c000
  10014c054  nop
  10014c058  ldr     x1, [x8, #0x4a0]
  10014c05c  strb    wzr, [sp, #0x18]
  10014c060  mov     x8, #0x38
  10014c064  stp     xzr, x8, [sp, #8]
  10014c068  str     xzr, [sp]
  10014c06c  adrp    x4, #0x10042c000
  10014c070  add     x4, x4, #0x2a8                           ; &d_10042c2a8
  10014c074  mov     x5, #7
  10014c078  mov     x0, x19
  10014c07c  mov     x2, x21
  10014c080  mov     x6, #0
  10014c084  mov     x7, #0
  10014c088  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPServingValue class] rootClass:[TAGPServingRoot class] fields:&d_10042c2a8 fieldCount:7 enums:0 enumCount:0 ranges:56 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c08c  str     x0, [x22, #0x40]                         ; store g_10042dea0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPServingValue class] rootClass:[TAGPServingRoot class] fields:&d_10042c2a8 fieldCount:7 enums:0 enumCount:0 ranges:56 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c090:
  10014c090  sub     sp, x29, #0x20
  10014c094  ldp     x22, x21, [sp], #0x10
  10014c098  ldp     x20, x19, [sp], #0x10
  10014c09c  ldp     x29, x30, [sp], #0x10
  10014c0a0  ret
