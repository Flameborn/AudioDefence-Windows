// unit TAGPBMessageOptions — 1 functions
//   0x10012c710     200  +[TAGPBMessageOptions descriptor]

; ======================================================================
; +[TAGPBMessageOptions descriptor]
; address 0x10012c710  size 200  kind objc
; ======================================================================
  10012c710  stp     x29, x30, [sp, #-0x10]!
  10012c714  mov     x29, sp
  10012c718  stp     x20, x19, [sp, #-0x10]!
  10012c71c  stp     x22, x21, [sp, #-0x10]!
  10012c720  sub     sp, sp, #0x20
  10012c724  adrp    x22, #0x10042d000
  10012c728  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c72c  ldr     x0, [x22, #0x80]                         ; load g_10042dd80
  10012c730  cbnz    x0, loc_10012c7c4                        ; if (g_10042dd80 != 0)
  10012c734  adrp    x8, #0x10041e000
  10012c738  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c73c  nop
  10012c740  ldr     x0, [x8, #0x6d8]                         ; class TAGPBMessageOptions
  10012c744  adrp    x8, #0x100417000
  10012c748  nop
  10012c74c  ldr     x20, [x8, #0x2e0]
  10012c750  mov     x1, x20
  10012c754  bl      _objc_msgSend                            ; [TAGPBMessageOptions class]
  10012c758  mov     x21, x0
  10012c75c  adrp    x8, #0x10041e000
  10012c760  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c764  mov     x1, x20
  10012c768  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c76c  mov     x3, x0
  10012c770  adrp    x8, #0x10041c000
  10012c774  nop
  10012c778  ldr     x1, [x8, #0x4a0]
  10012c77c  strb    wzr, [sp, #0x18]
  10012c780  mov     x8, #0x28
  10012c784  str     x8, [sp, #0x10]
  10012c788  mov     x8, #1
  10012c78c  str     x8, [sp, #8]
  10012c790  mov     x5, #7
  10012c794  adrp    x8, #0x10042b000
  10012c798  add     x8, x8, #0xaa0                           ; &d_10042baa0
  10012c79c  adrp    x4, #0x10042a000
  10012c7a0  add     x4, x4, #0x720                           ; &d_10042a720
  10012c7a4  add     x8, x8, #8                               ; &d_10042baa8
  10012c7a8  str     x8, [sp]
  10012c7ac  mov     x0, x19
  10012c7b0  mov     x2, x21
  10012c7b4  mov     x6, #0
  10012c7b8  mov     x7, #0
  10012c7bc  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBMessageOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042a720 fieldCount:7 enums:0 enumCount:0 ranges:&d_10042baa8 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c7c0  str     x0, [x22, #0x80]                         ; store g_10042dd80 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBMessageOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042a720 fieldCount:7 enums:0 enumCount:0 ranges:&d_10042baa8 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c7c4:
  10012c7c4  sub     sp, x29, #0x20
  10012c7c8  ldp     x22, x21, [sp], #0x10
  10012c7cc  ldp     x20, x19, [sp], #0x10
  10012c7d0  ldp     x29, x30, [sp], #0x10
  10012c7d4  ret
