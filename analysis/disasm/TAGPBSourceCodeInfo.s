// unit TAGPBSourceCodeInfo — 1 functions
//   0x10012d1f8     180  +[TAGPBSourceCodeInfo descriptor]

; ======================================================================
; +[TAGPBSourceCodeInfo descriptor]
; address 0x10012d1f8  size 180  kind objc
; ======================================================================
  10012d1f8  stp     x29, x30, [sp, #-0x10]!
  10012d1fc  mov     x29, sp
  10012d200  stp     x20, x19, [sp, #-0x10]!
  10012d204  stp     x22, x21, [sp, #-0x10]!
  10012d208  sub     sp, sp, #0x20
  10012d20c  adrp    x22, #0x10042d000
  10012d210  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012d214  ldr     x0, [x22, #0x110]                        ; load g_10042de10
  10012d218  cbnz    x0, loc_10012d298                        ; if (g_10042de10 != 0)
  10012d21c  adrp    x8, #0x10041e000
  10012d220  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012d224  nop
  10012d228  ldr     x0, [x8, #0x728]                         ; class TAGPBSourceCodeInfo
  10012d22c  adrp    x8, #0x100417000
  10012d230  nop
  10012d234  ldr     x20, [x8, #0x2e0]
  10012d238  mov     x1, x20
  10012d23c  bl      _objc_msgSend                            ; [TAGPBSourceCodeInfo class]
  10012d240  mov     x21, x0
  10012d244  adrp    x8, #0x10041e000
  10012d248  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012d24c  mov     x1, x20
  10012d250  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012d254  mov     x3, x0
  10012d258  adrp    x8, #0x10041c000
  10012d25c  nop
  10012d260  ldr     x1, [x8, #0x4a0]
  10012d264  strb    wzr, [sp, #0x18]
  10012d268  mov     x8, #0x10
  10012d26c  stp     xzr, x8, [sp, #8]
  10012d270  str     xzr, [sp]
  10012d274  adrp    x4, #0x10042b000
  10012d278  add     x4, x4, #0x898                           ; &d_10042b898
  10012d27c  mov     x5, #1
  10012d280  mov     x0, x19
  10012d284  mov     x2, x21
  10012d288  mov     x6, #0
  10012d28c  mov     x7, #0
  10012d290  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBSourceCodeInfo class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b898 fieldCount:1 enums:0 enumCount:0 ranges:16 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012d294  str     x0, [x22, #0x110]                        ; store g_10042de10 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBSourceCodeInfo class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b898 fieldCount:1 enums:0 enumCount:0 ranges:16 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012d298:
  10012d298  sub     sp, x29, #0x20
  10012d29c  ldp     x22, x21, [sp], #0x10
  10012d2a0  ldp     x20, x19, [sp], #0x10
  10012d2a4  ldp     x29, x30, [sp], #0x10
  10012d2a8  ret
