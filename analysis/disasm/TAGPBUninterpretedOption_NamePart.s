// unit TAGPBUninterpretedOption_NamePart — 1 functions
//   0x10012d144     180  +[TAGPBUninterpretedOption_NamePart descriptor]

; ======================================================================
; +[TAGPBUninterpretedOption_NamePart descriptor]
; address 0x10012d144  size 180  kind objc
; ======================================================================
  10012d144  stp     x29, x30, [sp, #-0x10]!
  10012d148  mov     x29, sp
  10012d14c  stp     x20, x19, [sp, #-0x10]!
  10012d150  stp     x22, x21, [sp, #-0x10]!
  10012d154  sub     sp, sp, #0x20
  10012d158  adrp    x22, #0x10042d000
  10012d15c  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012d160  ldr     x0, [x22, #0x108]                        ; load g_10042de08
  10012d164  cbnz    x0, loc_10012d1e4                        ; if (g_10042de08 != 0)
  10012d168  adrp    x8, #0x10041e000
  10012d16c  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012d170  nop
  10012d174  ldr     x0, [x8, #0x720]                         ; class TAGPBUninterpretedOption_NamePart
  10012d178  adrp    x8, #0x100417000
  10012d17c  nop
  10012d180  ldr     x20, [x8, #0x2e0]
  10012d184  mov     x1, x20
  10012d188  bl      _objc_msgSend                            ; [TAGPBUninterpretedOption_NamePart class]
  10012d18c  mov     x21, x0
  10012d190  adrp    x8, #0x10041e000
  10012d194  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012d198  mov     x1, x20
  10012d19c  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012d1a0  mov     x3, x0
  10012d1a4  adrp    x8, #0x10041c000
  10012d1a8  nop
  10012d1ac  ldr     x1, [x8, #0x4a0]
  10012d1b0  strb    wzr, [sp, #0x18]
  10012d1b4  mov     x8, #0x18
  10012d1b8  stp     xzr, x8, [sp, #8]
  10012d1bc  str     xzr, [sp]
  10012d1c0  adrp    x4, #0x10042b000
  10012d1c4  add     x4, x4, #0x828                           ; &d_10042b828
  10012d1c8  mov     x5, #2
  10012d1cc  mov     x0, x19
  10012d1d0  mov     x2, x21
  10012d1d4  mov     x6, #0
  10012d1d8  mov     x7, #0
  10012d1dc  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBUninterpretedOption_NamePart class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b828 fieldCount:2 enums:0 enumCount:0 ranges:24 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012d1e0  str     x0, [x22, #0x108]                        ; store g_10042de08 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBUninterpretedOption_NamePart class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b828 fieldCount:2 enums:0 enumCount:0 ranges:24 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012d1e4:
  10012d1e4  sub     sp, x29, #0x20
  10012d1e8  ldp     x22, x21, [sp], #0x10
  10012d1ec  ldp     x20, x19, [sp], #0x10
  10012d1f0  ldp     x29, x30, [sp], #0x10
  10012d1f4  ret
