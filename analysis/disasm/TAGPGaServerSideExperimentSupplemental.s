// unit TAGPGaServerSideExperimentSupplemental — 1 functions
//   0x10014c6c8     180  +[TAGPGaServerSideExperimentSupplemental descriptor]

; ======================================================================
; +[TAGPGaServerSideExperimentSupplemental descriptor]
; address 0x10014c6c8  size 180  kind objc
; ======================================================================
  10014c6c8  stp     x29, x30, [sp, #-0x10]!
  10014c6cc  mov     x29, sp
  10014c6d0  stp     x20, x19, [sp, #-0x10]!
  10014c6d4  stp     x22, x21, [sp, #-0x10]!
  10014c6d8  sub     sp, sp, #0x20
  10014c6dc  adrp    x22, #0x10042d000
  10014c6e0  add     x22, x22, #0xe60                         ; &g_10042de60
  10014c6e4  ldr     x0, [x22, #0x90]                         ; load g_10042def0
  10014c6e8  cbnz    x0, loc_10014c768                        ; if (g_10042def0 != 0)
  10014c6ec  adrp    x8, #0x10041e000
  10014c6f0  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014c6f4  nop
  10014c6f8  ldr     x0, [x8, #0x838]                         ; class TAGPGaServerSideExperimentSupplemental
  10014c6fc  adrp    x8, #0x100417000
  10014c700  nop
  10014c704  ldr     x20, [x8, #0x2e0]
  10014c708  mov     x1, x20
  10014c70c  bl      _objc_msgSend                            ; [TAGPGaServerSideExperimentSupplemental class]
  10014c710  mov     x21, x0
  10014c714  adrp    x8, #0x10041e000
  10014c718  ldr     x0, [x8, #0x7e8]                         ; class TAGPServingRoot
  10014c71c  mov     x1, x20
  10014c720  bl      _objc_msgSend                            ; [TAGPServingRoot class]
  10014c724  mov     x3, x0
  10014c728  adrp    x8, #0x10041c000
  10014c72c  nop
  10014c730  ldr     x1, [x8, #0x4a0]
  10014c734  strb    wzr, [sp, #0x18]
  10014c738  mov     x8, #0x28
  10014c73c  stp     xzr, x8, [sp, #8]
  10014c740  str     xzr, [sp]
  10014c744  adrp    x4, #0x10042c000
  10014c748  add     x4, x4, #0xf88                           ; &d_10042cf88
  10014c74c  mov     x5, #4
  10014c750  mov     x0, x19
  10014c754  mov     x2, x21
  10014c758  mov     x6, #0
  10014c75c  mov     x7, #0
  10014c760  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPGaServerSideExperimentSupplemental class] rootClass:[TAGPServingRoot class] fields:&d_10042cf88 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014c764  str     x0, [x22, #0x90]                         ; store g_10042def0 = [TAGPBDescriptor allocDescriptorForClass:[TAGPGaServerSideExperimentSupplemental class] rootClass:[TAGPServingRoot class] fields:&d_10042cf88 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014c768:
  10014c768  sub     sp, x29, #0x20
  10014c76c  ldp     x22, x21, [sp], #0x10
  10014c770  ldp     x20, x19, [sp], #0x10
  10014c774  ldp     x29, x30, [sp], #0x10
  10014c778  ret
