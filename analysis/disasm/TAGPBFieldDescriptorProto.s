// unit TAGPBFieldDescriptorProto — 1 functions
//   0x10012bf88     188  +[TAGPBFieldDescriptorProto descriptor]

; ======================================================================
; +[TAGPBFieldDescriptorProto descriptor]
; address 0x10012bf88  size 188  kind objc
; ======================================================================
  10012bf88  stp     x29, x30, [sp, #-0x10]!
  10012bf8c  mov     x29, sp
  10012bf90  stp     x20, x19, [sp, #-0x10]!
  10012bf94  stp     x22, x21, [sp, #-0x10]!
  10012bf98  sub     sp, sp, #0x20
  10012bf9c  adrp    x22, #0x10042d000
  10012bfa0  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012bfa4  ldr     x0, [x22, #0x20]                         ; load g_10042dd20
  10012bfa8  cbnz    x0, loc_10012c030                        ; if (g_10042dd20 != 0)
  10012bfac  adrp    x8, #0x10041e000
  10012bfb0  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012bfb4  nop
  10012bfb8  ldr     x0, [x8, #0x690]                         ; class TAGPBFieldDescriptorProto
  10012bfbc  adrp    x8, #0x100417000
  10012bfc0  nop
  10012bfc4  ldr     x20, [x8, #0x2e0]
  10012bfc8  mov     x1, x20
  10012bfcc  bl      _objc_msgSend                            ; [TAGPBFieldDescriptorProto class]
  10012bfd0  mov     x21, x0
  10012bfd4  adrp    x8, #0x10041e000
  10012bfd8  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012bfdc  mov     x1, x20
  10012bfe0  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012bfe4  mov     x3, x0
  10012bfe8  adrp    x8, #0x10041c000
  10012bfec  nop
  10012bff0  ldr     x1, [x8, #0x4a0]
  10012bff4  strb    wzr, [sp, #0x18]
  10012bff8  mov     x8, #0x50
  10012bffc  stp     xzr, x8, [sp, #8]
  10012c000  adrp    x8, #0x10042b000
  10012c004  add     x8, x8, #0xaa0                           ; &d_10042baa0
  10012c008  str     xzr, [sp]
  10012c00c  add     x6, x8, #0x48                            ; &d_10042bae8
  10012c010  adrp    x4, #0x100429000
  10012c014  add     x4, x4, #0x8c0                           ; &d_1004298c0
  10012c018  mov     x5, #9
  10012c01c  mov     x7, #2
  10012c020  mov     x0, x19
  10012c024  mov     x2, x21
  10012c028  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBFieldDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_1004298c0 fieldCount:9 enums:&d_10042bae8 enumCount:2 ranges:&d_10042baa0 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c02c  str     x0, [x22, #0x20]                         ; store g_10042dd20 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBFieldDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_1004298c0 fieldCount:9 enums:&d_10042bae8 enumCount:2 ranges:&d_10042baa0 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c030:
  10012c030  sub     sp, x29, #0x20
  10012c034  ldp     x22, x21, [sp], #0x10
  10012c038  ldp     x20, x19, [sp], #0x10
  10012c03c  ldp     x29, x30, [sp], #0x10
  10012c040  ret
