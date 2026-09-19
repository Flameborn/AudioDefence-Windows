// unit TAGPGaExperimentRandom — 1 functions
//   0x10014c4ac     180  +[TAGPGaExperimentRandom descriptor]

; ======================================================================
; +[TAGPGaExperimentRandom descriptor]
; address 0x10014c4ac  size 180  kind objc
; ======================================================================
  10014c4ac  stp     x29, x30, [sp, #-0x10]!
  10014c4b0  mov     x29, sp
  10014c4b4  stp     x20, x19, [sp, #-0x10]!
  10014c4b8  stp     x22, x21, [sp, #-0x10]!
  10014c4bc  sub     sp, sp, #0x20
  10014c4c0  adrp    x22, #0x10042d000
  10014c4c4  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c4c8  ldr     x0, [x22, #0x78]                         ; load g_10042ded8
  10014c4cc  cbnz    x0, loc_10014c54c                        ; if (g_10042ded8 != 0)
  10014c4d0  adrp    x8, #0x10041e000
  10014c4d4  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c4d8  nop
  10014c4dc  ldr     x0, [x8, #0x820]                         ; class TAGPGaExperimentRandom
  10014c4e0  adrp    x8, #0x100417000
  10014c4e4  nop
  10014c4e8  ldr     x20, [x8, #0x2e0]
  10014c4ec  mov     x1, x20
  10014c4f0  bl      _objc_msgSend                            ; [TAGPGaExperimentRandom class]
  10014c4f4  mov     x21, x0
  10014c4f8  adrp    x8, #0x10041e000
  10014c4fc  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c500  mov     x1, x20
  10014c504  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c508  mov     x3, x0
  10014c50c  adrp    x8, #0x10041c000
  10014c510  nop
  10014c514  ldr     x1, [x8, #0x4a0]
  10014c518  strb    wzr, [sp, #0x18]
  10014c51c  mov     x8, #0x30
  10014c520  stp     xzr, x8, [sp, #8]
  10014c524  str     xzr, [sp]
  10014c528  adrp    x4, #0x10042c000
  10014c52c  add     x4, x4, #0xd58                           ; &d_10042cd58
  10014c530  mov     x5, #5
  10014c534  mov     x0, x19
  10014c538  mov     x2, x21
  10014c53c  mov     x6, #0
  10014c540  mov     x7, #0
  10014c544  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPGaExperimentRandom class] rootClass:[TAGPServingRoot class] fields:&d_10042cd58 fieldCount:5 enums:0 enumCount:0 ranges:48 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c548  str     x0, [x22, #0x78]                         ; store g_10042ded8 = [TAGPBDescriptor allocDescriptorForClass:[TAGPGaExperimentRandom class] rootClass:[TAGPServingRoot class] fields:&d_10042cd58 fieldCount:5 enums:0 enumCount:0 ranges:48 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c54c:
  10014c54c  sub     sp, x29, #0x20
  10014c550  ldp     x22, x21, [sp], #0x10
  10014c554  ldp     x20, x19, [sp], #0x10
  10014c558  ldp     x29, x30, [sp], #0x10
  10014c55c  ret
