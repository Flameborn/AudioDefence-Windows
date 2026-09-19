// unit TAGPBObjectiveCFileOptions — 1 functions
//   0x10012d4f8     180  +[TAGPBObjectiveCFileOptions descriptor]

; ======================================================================
; +[TAGPBObjectiveCFileOptions descriptor]
; address 0x10012d4f8  size 180  kind objc
; ======================================================================
  10012d4f8  stp     x29, x30, [sp, #-0x10]!
  10012d4fc  mov     x29, sp
  10012d500  stp     x20, x19, [sp, #-0x10]!
  10012d504  stp     x22, x21, [sp, #-0x10]!
  10012d508  sub     sp, sp, #0x20
  10012d50c  adrp    x22, #0x10042d000
  10012d510  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012d514  ldr     x0, [x22, #0x128]                        ; load g_10042de28
  10012d518  cbnz    x0, loc_10012d598                        ; if (g_10042de28 != 0)
  10012d51c  adrp    x8, #0x10041e000
  10012d520  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012d524  nop
  10012d528  ldr     x0, [x8, #0x750]                         ; class TAGPBObjectiveCFileOptions
  10012d52c  adrp    x8, #0x100417000
  10012d530  nop
  10012d534  ldr     x20, [x8, #0x2e0]
  10012d538  mov     x1, x20
  10012d53c  bl      _objc_msgSend                            ; [TAGPBObjectiveCFileOptions class]
  10012d540  mov     x21, x0
  10012d544  adrp    x8, #0x10041e000
  10012d548  ldr     x0, [x8, #0x758]                         ; class TAGPBObjectivecDescriptorRoot
  10012d54c  mov     x1, x20
  10012d550  bl      _objc_msgSend                            ; [TAGPBObjectivecDescriptorRoot class]
  10012d554  mov     x3, x0
  10012d558  adrp    x8, #0x10041c000
  10012d55c  nop
  10012d560  ldr     x1, [x8, #0x4a0]
  10012d564  strb    wzr, [sp, #0x18]
  10012d568  mov     x8, #0x20
  10012d56c  stp     xzr, x8, [sp, #8]
  10012d570  str     xzr, [sp]
  10012d574  adrp    x4, #0x10042b000
  10012d578  add     x4, x4, #0x9f0                           ; &d_10042b9f0
  10012d57c  mov     x5, #3
  10012d580  mov     x0, x19
  10012d584  mov     x2, x21
  10012d588  mov     x6, #0
  10012d58c  mov     x7, #0
  10012d590  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBObjectiveCFileOptions class] rootClass:[TAGPBObjectivecDescriptorRoot class] fields:&d_10042b9f0 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012d594  str     x0, [x22, #0x128]                        ; store g_10042de28 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBObjectiveCFileOptions class] rootClass:[TAGPBObjectivecDescriptorRoot class] fields:&d_10042b9f0 fieldCount:3 enums:0 enumCount:0 ranges:32 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012d598:
  10012d598  sub     sp, x29, #0x20
  10012d59c  ldp     x22, x21, [sp], #0x10
  10012d5a0  ldp     x20, x19, [sp], #0x10
  10012d5a4  ldp     x29, x30, [sp], #0x10
  10012d5a8  ret
