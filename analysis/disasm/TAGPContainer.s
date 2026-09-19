// unit TAGPContainer — 1 functions
//   0x10014bf3c     180  +[TAGPContainer descriptor]

; ======================================================================
; +[TAGPContainer descriptor]
; address 0x10014bf3c  size 180  kind objc
; ======================================================================
  10014bf3c  stp     x29, x30, [sp, #-0x10]!
  10014bf40  mov     x29, sp
  10014bf44  stp     x20, x19, [sp, #-0x10]!
  10014bf48  stp     x22, x21, [sp, #-0x10]!
  10014bf4c  sub     sp, sp, #0x20
  10014bf50  adrp    x22, #0x10042d000
  10014bf54  add     x22, x22, #0xe60                         ; &g_10042de60
  10014bf58  ldr     x0, [x22, #0x38]                         ; load g_10042de98
  10014bf5c  cbnz    x0, loc_10014bfdc                        ; if (g_10042de98 != 0)
  10014bf60  adrp    x8, #0x10041e000
  10014bf64  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014bf68  nop
  10014bf6c  ldr     x0, [x8, #0x7e0]                         ; class TAGPContainer
  10014bf70  adrp    x8, #0x100417000
  10014bf74  nop
  10014bf78  ldr     x20, [x8, #0x2e0]
  10014bf7c  mov     x1, x20
  10014bf80  bl      _objc_msgSend                            ; [TAGPContainer class]
  10014bf84  mov     x21, x0
  10014bf88  adrp    x8, #0x10041e000
  10014bf8c  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014bf90  mov     x1, x20
  10014bf94  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014bf98  mov     x3, x0
  10014bf9c  adrp    x8, #0x10041c000
  10014bfa0  nop
  10014bfa4  ldr     x1, [x8, #0x4a0]
  10014bfa8  strb    wzr, [sp, #0x18]
  10014bfac  mov     x8, #0x28
  10014bfb0  stp     xzr, x8, [sp, #8]
  10014bfb4  str     xzr, [sp]
  10014bfb8  adrp    x4, #0x10042c000
  10014bfbc  add     x4, x4, #0x1c8                           ; &d_10042c1c8
  10014bfc0  mov     x5, #4
  10014bfc4  mov     x0, x19
  10014bfc8  mov     x2, x21
  10014bfcc  mov     x6, #0
  10014bfd0  mov     x7, #0
  10014bfd4  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPContainer class] rootClass:[TAGPServingRoot class] fields:&d_10042c1c8 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014bfd8  str     x0, [x22, #0x38]                         ; store g_10042de98 = [TAGPBDescriptor allocDescriptorForClass:[TAGPContainer class] rootClass:[TAGPServingRoot class] fields:&d_10042c1c8 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014bfdc:
  10014bfdc  sub     sp, x29, #0x20
  10014bfe0  ldp     x22, x21, [sp], #0x10
  10014bfe4  ldp     x20, x19, [sp], #0x10
  10014bfe8  ldp     x29, x30, [sp], #0x10
  10014bfec  ret
