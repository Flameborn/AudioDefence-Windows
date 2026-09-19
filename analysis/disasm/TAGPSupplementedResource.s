// unit TAGPSupplementedResource — 1 functions
//   0x10014c830     180  +[TAGPSupplementedResource descriptor]

; ======================================================================
; +[TAGPSupplementedResource descriptor]
; address 0x10014c830  size 180  kind objc
; ======================================================================
  10014c830  stp     x29, x30, [sp, #-0x10]!
  10014c834  mov     x29, sp
  10014c838  stp     x20, x19, [sp, #-0x10]!
  10014c83c  stp     x22, x21, [sp, #-0x10]!
  10014c840  sub     sp, sp, #0x20
  10014c844  adrp    x22, #0x10042d000
  10014c848  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c84c  ldr     x0, [x22, #0xa0]                         ; load g_10042df00
  10014c850  cbnz    x0, loc_10014c8d0                        ; if (g_10042df00 != 0)
  10014c854  adrp    x8, #0x10041e000
  10014c858  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c85c  nop
  10014c860  ldr     x0, [x8, #0x848]                         ; class TAGPSupplementedResource
  10014c864  adrp    x8, #0x100417000
  10014c868  nop
  10014c86c  ldr     x20, [x8, #0x2e0]
  10014c870  mov     x1, x20
  10014c874  bl      _objc_msgSend                            ; [TAGPSupplementedResource class]
  10014c878  mov     x21, x0
  10014c87c  adrp    x8, #0x10041e000
  10014c880  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c884  mov     x1, x20
  10014c888  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c88c  mov     x3, x0
  10014c890  adrp    x8, #0x10041c000
  10014c894  nop
  10014c898  ldr     x1, [x8, #0x4a0]
  10014c89c  strb    wzr, [sp, #0x18]
  10014c8a0  mov     x8, #0x20
  10014c8a4  stp     xzr, x8, [sp, #8]
  10014c8a8  str     xzr, [sp]
  10014c8ac  adrp    x4, #0x10042d000
  10014c8b0  add     x4, x4, #0x148                           ; &d_10042d148
  10014c8b4  mov     x5, #3
  10014c8b8  mov     x0, x19
  10014c8bc  mov     x2, x21
  10014c8c0  mov     x6, #0
  10014c8c4  mov     x7, #0
  10014c8c8  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPSupplementedResource class] rootClass:[TAGPServingRoot class] fields:&d_10042d148 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c8cc  str     x0, [x22, #0xa0]                         ; store g_10042df00 = [TAGPBDescriptor allocDescriptorForClass:[TAGPSupplementedResource class] rootClass:[TAGPServingRoot class] fields:&d_10042d148 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c8d0:
  10014c8d0  sub     sp, x29, #0x20
  10014c8d4  ldp     x22, x21, [sp], #0x10
  10014c8d8  ldp     x20, x19, [sp], #0x10
  10014c8dc  ldp     x29, x30, [sp], #0x10
  10014c8e0  ret
