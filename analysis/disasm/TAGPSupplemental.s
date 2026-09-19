// unit TAGPSupplemental — 1 functions
//   0x10014c77c     180  +[TAGPSupplemental descriptor]

; ======================================================================
; +[TAGPSupplemental descriptor]
; address 0x10014c77c  size 180  kind objc
; ======================================================================
  10014c77c  stp     x29, x30, [sp, #-0x10]!
  10014c780  mov     x29, sp
  10014c784  stp     x20, x19, [sp, #-0x10]!
  10014c788  stp     x22, x21, [sp, #-0x10]!
  10014c78c  sub     sp, sp, #0x20
  10014c790  adrp    x22, #0x10042d000
  10014c794  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c798  ldr     x0, [x22, #0x98]                         ; load g_10042def8
  10014c79c  cbnz    x0, loc_10014c81c                        ; if (g_10042def8 != 0)
  10014c7a0  adrp    x8, #0x10041e000
  10014c7a4  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c7a8  nop
  10014c7ac  ldr     x0, [x8, #0x840]                         ; class TAGPSupplemental
  10014c7b0  adrp    x8, #0x100417000
  10014c7b4  nop
  10014c7b8  ldr     x20, [x8, #0x2e0]
  10014c7bc  mov     x1, x20
  10014c7c0  bl      _objc_msgSend                            ; [TAGPSupplemental class]
  10014c7c4  mov     x21, x0
  10014c7c8  adrp    x8, #0x10041e000
  10014c7cc  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c7d0  mov     x1, x20
  10014c7d4  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c7d8  mov     x3, x0
  10014c7dc  adrp    x8, #0x10041c000
  10014c7e0  nop
  10014c7e4  ldr     x1, [x8, #0x4a0]
  10014c7e8  strb    wzr, [sp, #0x18]
  10014c7ec  mov     x8, #0x28
  10014c7f0  stp     xzr, x8, [sp, #8]
  10014c7f4  str     xzr, [sp]
  10014c7f8  adrp    x4, #0x10042d000
  10014c7fc  add     x4, x4, #0x68                            ; &d_10042d068
  10014c800  mov     x5, #4
  10014c804  mov     x0, x19
  10014c808  mov     x2, x21
  10014c80c  mov     x6, #0
  10014c810  mov     x7, #0
  10014c814  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPSupplemental class] rootClass:[TAGPServingRoot class] fields:&d_10042d068 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c818  str     x0, [x22, #0x98]                         ; store g_10042def8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPSupplemental class] rootClass:[TAGPServingRoot class] fields:&d_10042d068 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c81c:
  10014c81c  sub     sp, x29, #0x20
  10014c820  ldp     x22, x21, [sp], #0x10
  10014c824  ldp     x20, x19, [sp], #0x10
  10014c828  ldp     x29, x30, [sp], #0x10
  10014c82c  ret
