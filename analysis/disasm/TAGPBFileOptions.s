// unit TAGPBFileOptions — 1 functions
//   0x10012c55c     196  +[TAGPBFileOptions descriptor]

; ======================================================================
; +[TAGPBFileOptions descriptor]
; address 0x10012c55c  size 196  kind objc
; ======================================================================
  10012c55c  stp     x29, x30, [sp, #-0x10]!
  10012c560  mov     x29, sp
  10012c564  stp     x20, x19, [sp, #-0x10]!
  10012c568  stp     x22, x21, [sp, #-0x10]!
  10012c56c  sub     sp, sp, #0x20
  10012c570  adrp    x22, #0x10042d000
  10012c574  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012c578  ldr     x0, [x22, #0x68]                         ; load g_10042dd68
  10012c57c  cbnz    x0, loc_10012c60c                        ; if (g_10042dd68 != 0)
  10012c580  adrp    x8, #0x10041e000
  10012c584  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012c588  nop
  10012c58c  ldr     x0, [x8, #0x6d0]                         ; class TAGPBFileOptions
  10012c590  adrp    x8, #0x100417000
  10012c594  nop
  10012c598  ldr     x20, [x8, #0x2e0]
  10012c59c  mov     x1, x20
  10012c5a0  bl      _objc_msgSend                            ; [TAGPBFileOptions class]
  10012c5a4  mov     x21, x0
  10012c5a8  adrp    x8, #0x10041e000
  10012c5ac  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012c5b0  mov     x1, x20
  10012c5b4  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012c5b8  mov     x3, x0
  10012c5bc  adrp    x8, #0x10041c000
  10012c5c0  nop
  10012c5c4  ldr     x1, [x8, #0x4a0]
  10012c5c8  strb    wzr, [sp, #0x18]
  10012c5cc  mov     x8, #0x90
  10012c5d0  str     x8, [sp, #0x10]
  10012c5d4  mov     x8, #1
  10012c5d8  str     x8, [sp, #8]
  10012c5dc  adrp    x8, #0x10042b000
  10012c5e0  add     x8, x8, #0xaa0                           ; &d_10042baa0
  10012c5e4  str     x8, [sp]
  10012c5e8  add     x6, x8, #0x58                            ; &d_10042baf8
  10012c5ec  adrp    x4, #0x10042a000
  10012c5f0  add     x4, x4, #0x30                            ; &d_10042a030
  10012c5f4  mov     x5, #0x1e
  10012c5f8  mov     x7, #2
  10012c5fc  mov     x0, x19
  10012c600  mov     x2, x21
  10012c604  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBFileOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042a030 fieldCount:30 enums:&d_10042baf8 enumCount:2 ranges:&d_10042baa0 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012c608  str     x0, [x22, #0x68]                         ; store g_10042dd68 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBFileOptions class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042a030 fieldCount:30 enums:&d_10042baf8 enumCount:2 ranges:&d_10042baa0 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012c60c:
  10012c60c  sub     sp, x29, #0x20
  10012c610  ldp     x22, x21, [sp], #0x10
  10012c614  ldp     x20, x19, [sp], #0x10
  10012c618  ldp     x29, x30, [sp], #0x10
  10012c61c  ret
