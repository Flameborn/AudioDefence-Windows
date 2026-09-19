// unit TAGPGaServerSideExperimentCombination — 1 functions
//   0x10014c614     180  +[TAGPGaServerSideExperimentCombination descriptor]

; ======================================================================
; +[TAGPGaServerSideExperimentCombination descriptor]
; address 0x10014c614  size 180  kind objc
; ======================================================================
  10014c614  stp     x29, x30, [sp, #-0x10]!
  10014c618  mov     x29, sp
  10014c61c  stp     x20, x19, [sp, #-0x10]!
  10014c620  stp     x22, x21, [sp, #-0x10]!
  10014c624  sub     sp, sp, #0x20
  10014c628  adrp    x22, #0x10042d000
  10014c62c  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c630  ldr     x0, [x22, #0x88]                         ; load g_10042dee8
  10014c634  cbnz    x0, loc_10014c6b4                        ; if (g_10042dee8 != 0)
  10014c638  adrp    x8, #0x10041e000
  10014c63c  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c640  nop
  10014c644  ldr     x0, [x8, #0x830]                         ; class TAGPGaServerSideExperimentCombination
  10014c648  adrp    x8, #0x100417000
  10014c64c  nop
  10014c650  ldr     x20, [x8, #0x2e0]
  10014c654  mov     x1, x20
  10014c658  bl      _objc_msgSend                            ; [TAGPGaServerSideExperimentCombination class]
  10014c65c  mov     x21, x0
  10014c660  adrp    x8, #0x10041e000
  10014c664  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c668  mov     x1, x20
  10014c66c  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c670  mov     x3, x0
  10014c674  adrp    x8, #0x10041c000
  10014c678  nop
  10014c67c  ldr     x1, [x8, #0x4a0]
  10014c680  strb    wzr, [sp, #0x18]
  10014c684  mov     x8, #0x18
  10014c688  stp     xzr, x8, [sp, #8]
  10014c68c  str     xzr, [sp]
  10014c690  adrp    x4, #0x10042c000
  10014c694  add     x4, x4, #0xf18                           ; &d_10042cf18
  10014c698  mov     x5, #2
  10014c69c  mov     x0, x19
  10014c6a0  mov     x2, x21
  10014c6a4  mov     x6, #0
  10014c6a8  mov     x7, #0
  10014c6ac  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPGaServerSideExperimentCombination class] rootClass:[TAGPServingRoot class] fields:&d_10042cf18 fieldCount:2 enums:0 enumCount:0 ranges:24 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c6b0  str     x0, [x22, #0x88]                         ; store g_10042dee8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPGaServerSideExperimentCombination class] rootClass:[TAGPServingRoot class] fields:&d_10042cf18 fieldCount:2 enums:0 enumCount:0 ranges:24 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c6b4:
  10014c6b4  sub     sp, x29, #0x20
  10014c6b8  ldp     x22, x21, [sp], #0x10
  10014c6bc  ldp     x20, x19, [sp], #0x10
  10014c6c0  ldp     x29, x30, [sp], #0x10
  10014c6c4  ret
