// unit TAGPGaExperimentSupplemental — 1 functions
//   0x10014c560     180  +[TAGPGaExperimentSupplemental descriptor]

; ======================================================================
; +[TAGPGaExperimentSupplemental descriptor]
; address 0x10014c560  size 180  kind objc
; ======================================================================
  10014c560  stp     x29, x30, [sp, #-0x10]!
  10014c564  mov     x29, sp
  10014c568  stp     x20, x19, [sp, #-0x10]!
  10014c56c  stp     x22, x21, [sp, #-0x10]!
  10014c570  sub     sp, sp, #0x20
  10014c574  adrp    x22, #0x10042d000
  10014c578  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c57c  ldr     x0, [x22, #0x80]                         ; load g_10042dee0
  10014c580  cbnz    x0, loc_10014c600                        ; if (g_10042dee0 != 0)
  10014c584  adrp    x8, #0x10041e000
  10014c588  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c58c  nop
  10014c590  ldr     x0, [x8, #0x828]                         ; class TAGPGaExperimentSupplemental
  10014c594  adrp    x8, #0x100417000
  10014c598  nop
  10014c59c  ldr     x20, [x8, #0x2e0]
  10014c5a0  mov     x1, x20
  10014c5a4  bl      _objc_msgSend                            ; [TAGPGaExperimentSupplemental class]
  10014c5a8  mov     x21, x0
  10014c5ac  adrp    x8, #0x10041e000
  10014c5b0  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c5b4  mov     x1, x20
  10014c5b8  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c5bc  mov     x3, x0
  10014c5c0  adrp    x8, #0x10041c000
  10014c5c4  nop
  10014c5c8  ldr     x1, [x8, #0x4a0]
  10014c5cc  strb    wzr, [sp, #0x18]
  10014c5d0  mov     x8, #0x20
  10014c5d4  stp     xzr, x8, [sp, #8]
  10014c5d8  str     xzr, [sp]
  10014c5dc  adrp    x4, #0x10042c000
  10014c5e0  add     x4, x4, #0xe70                           ; &d_10042ce70
  10014c5e4  mov     x5, #3
  10014c5e8  mov     x0, x19
  10014c5ec  mov     x2, x21
  10014c5f0  mov     x6, #0
  10014c5f4  mov     x7, #0
  10014c5f8  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPGaExperimentSupplemental class] rootClass:[TAGPServingRoot class] fields:&d_10042ce70 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c5fc  str     x0, [x22, #0x80]                         ; store g_10042dee0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPGaExperimentSupplemental class] rootClass:[TAGPServingRoot class] fields:&d_10042ce70 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c600:
  10014c600  sub     sp, x29, #0x20
  10014c604  ldp     x22, x21, [sp], #0x10
  10014c608  ldp     x20, x19, [sp], #0x10
  10014c60c  ldp     x29, x30, [sp], #0x10
  10014c610  ret
