// unit TAGPBFileDescriptorSet — 1 functions
//   0x10012bcb8     180  +[TAGPBFileDescriptorSet descriptor]

; ======================================================================
; +[TAGPBFileDescriptorSet descriptor]
; address 0x10012bcb8  size 180  kind objc
; ======================================================================
  10012bcb8  stp     x29, x30, [sp, #-0x10]!
  10012bcbc  mov     x29, sp
  10012bcc0  stp     x20, x19, [sp, #-0x10]!
  10012bcc4  stp     x22, x21, [sp, #-0x10]!
  10012bcc8  sub     sp, sp, #0x20
  10012bccc  adrp    x22, #0x10042d000
  10012bcd0  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012bcd4  ldr     x0, [x22]                                ; load g_10042dd00
  10012bcd8  cbnz    x0, loc_10012bd58                        ; if (g_10042dd00 != 0)
  10012bcdc  adrp    x8, #0x10041e000
  10012bce0  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012bce4  nop
  10012bce8  ldr     x0, [x8, #0x668]                         ; class TAGPBFileDescriptorSet
  10012bcec  adrp    x8, #0x100417000
  10012bcf0  nop
  10012bcf4  ldr     x20, [x8, #0x2e0]
  10012bcf8  mov     x1, x20
  10012bcfc  bl      _objc_msgSend                            ; [TAGPBFileDescriptorSet class]
  10012bd00  mov     x21, x0
  10012bd04  adrp    x8, #0x10041e000
  10012bd08  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012bd0c  mov     x1, x20
  10012bd10  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012bd14  mov     x3, x0
  10012bd18  adrp    x8, #0x10041c000
  10012bd1c  nop
  10012bd20  ldr     x1, [x8, #0x4a0]
  10012bd24  strb    wzr, [sp, #0x18]
  10012bd28  mov     x8, #0x10
  10012bd2c  stp     xzr, x8, [sp, #8]
  10012bd30  str     xzr, [sp]
  10012bd34  adrp    x4, #0x100429000
  10012bd38  add     x4, x4, #0x3f0                           ; &d_1004293f0
  10012bd3c  mov     x5, #1
  10012bd40  mov     x0, x19
  10012bd44  mov     x2, x21
  10012bd48  mov     x6, #0
  10012bd4c  mov     x7, #0
  10012bd50  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBFileDescriptorSet class] rootClass:[TAGPBDescriptorRoot class] fields:&d_1004293f0 fieldCount:1 enums:0 enumCount:0 ranges:16 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012bd54  str     x0, [x22]                                ; store g_10042dd00 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBFileDescriptorSet class] rootClass:[TAGPBDescriptorRoot class] fields:&d_1004293f0 fieldCount:1 enums:0 enumCount:0 ranges:16 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012bd58:
  10012bd58  sub     sp, x29, #0x20
  10012bd5c  ldp     x22, x21, [sp], #0x10
  10012bd60  ldp     x20, x19, [sp], #0x10
  10012bd64  ldp     x29, x30, [sp], #0x10
  10012bd68  ret
