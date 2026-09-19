// unit TAGPBUninterpretedOption — 1 functions
//   0x10012d090     180  +[TAGPBUninterpretedOption descriptor]

; ======================================================================
; +[TAGPBUninterpretedOption descriptor]
; address 0x10012d090  size 180  kind objc
; ======================================================================
  10012d090  stp     x29, x30, [sp, #-0x10]!
  10012d094  mov     x29, sp
  10012d098  stp     x20, x19, [sp, #-0x10]!
  10012d09c  stp     x22, x21, [sp, #-0x10]!
  10012d0a0  sub     sp, sp, #0x20
  10012d0a4  adrp    x22, #0x10042d000
  10012d0a8  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012d0ac  ldr     x0, [x22, #0x100]                        ; load g_10042de00
  10012d0b0  cbnz    x0, loc_10012d130                        ; if (g_10042de00 != 0)
  10012d0b4  adrp    x8, #0x10041e000
  10012d0b8  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012d0bc  nop
  10012d0c0  ldr     x0, [x8, #0x718]                         ; class TAGPBUninterpretedOption
  10012d0c4  adrp    x8, #0x100417000
  10012d0c8  nop
  10012d0cc  ldr     x20, [x8, #0x2e0]
  10012d0d0  mov     x1, x20
  10012d0d4  bl      _objc_msgSend                            ; [TAGPBUninterpretedOption class]
  10012d0d8  mov     x21, x0
  10012d0dc  adrp    x8, #0x10041e000
  10012d0e0  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012d0e4  mov     x1, x20
  10012d0e8  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012d0ec  mov     x3, x0
  10012d0f0  adrp    x8, #0x10041c000
  10012d0f4  nop
  10012d0f8  ldr     x1, [x8, #0x4a0]
  10012d0fc  strb    wzr, [sp, #0x18]
  10012d100  mov     x8, #0x40
  10012d104  stp     xzr, x8, [sp, #8]
  10012d108  str     xzr, [sp]
  10012d10c  adrp    x4, #0x10042b000
  10012d110  add     x4, x4, #0x6a0                           ; &d_10042b6a0
  10012d114  mov     x5, #7
  10012d118  mov     x0, x19
  10012d11c  mov     x2, x21
  10012d120  mov     x6, #0
  10012d124  mov     x7, #0
  10012d128  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBUninterpretedOption class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b6a0 fieldCount:7 enums:0 enumCount:0 ranges:64 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012d12c  str     x0, [x22, #0x100]                        ; store g_10042de00 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBUninterpretedOption class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b6a0 fieldCount:7 enums:0 enumCount:0 ranges:64 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012d130:
  10012d130  sub     sp, x29, #0x20
  10012d134  ldp     x22, x21, [sp], #0x10
  10012d138  ldp     x20, x19, [sp], #0x10
  10012d13c  ldp     x29, x30, [sp], #0x10
  10012d140  ret
