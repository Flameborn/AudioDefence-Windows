// unit TAGPBDescriptorProto — 1 functions
//   0x10012be20     180  +[TAGPBDescriptorProto descriptor]

; ======================================================================
; +[TAGPBDescriptorProto descriptor]
; address 0x10012be20  size 180  kind objc
; ======================================================================
  10012be20  stp     x29, x30, [sp, #-0x10]!
  10012be24  mov     x29, sp
  10012be28  stp     x20, x19, [sp, #-0x10]!
  10012be2c  stp     x22, x21, [sp, #-0x10]!
  10012be30  sub     sp, sp, #0x20
  10012be34  adrp    x22, #0x10042d000
  10012be38  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012be3c  ldr     x0, [x22, #0x10]                         ; load g_10042dd10
  10012be40  cbnz    x0, loc_10012bec0                        ; if (g_10042dd10 != 0)
  10012be44  adrp    x8, #0x10041e000
  10012be48  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012be4c  nop
  10012be50  ldr     x0, [x8, #0x680]                         ; class TAGPBDescriptorProto
  10012be54  adrp    x8, #0x100417000
  10012be58  nop
  10012be5c  ldr     x20, [x8, #0x2e0]
  10012be60  mov     x1, x20
  10012be64  bl      _objc_msgSend                            ; [TAGPBDescriptorProto class]
  10012be68  mov     x21, x0
  10012be6c  adrp    x8, #0x10041e000
  10012be70  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012be74  mov     x1, x20
  10012be78  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012be7c  mov     x3, x0
  10012be80  adrp    x8, #0x10041c000
  10012be84  nop
  10012be88  ldr     x1, [x8, #0x4a0]
  10012be8c  strb    wzr, [sp, #0x18]
  10012be90  mov     x8, #0x48
  10012be94  stp     xzr, x8, [sp, #8]
  10012be98  str     xzr, [sp]
  10012be9c  adrp    x4, #0x100429000
  10012bea0  add     x4, x4, #0x690                           ; &d_100429690
  10012bea4  mov     x5, #8
  10012bea8  mov     x0, x19
  10012beac  mov     x2, x21
  10012beb0  mov     x6, #0
  10012beb4  mov     x7, #0
  10012beb8  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429690 fieldCount:8 enums:0 enumCount:0 ranges:72 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012bebc  str     x0, [x22, #0x10]                         ; store g_10042dd10 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBDescriptorProto class] rootClass:[TAGPBDescriptorRoot class] fields:&d_100429690 fieldCount:8 enums:0 enumCount:0 ranges:72 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012bec0:
  10012bec0  sub     sp, x29, #0x20
  10012bec4  ldp     x22, x21, [sp], #0x10
  10012bec8  ldp     x20, x19, [sp], #0x10
  10012becc  ldp     x29, x30, [sp], #0x10
  10012bed0  ret
