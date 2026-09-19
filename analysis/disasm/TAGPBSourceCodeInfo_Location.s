// unit TAGPBSourceCodeInfo_Location — 1 functions
//   0x10012d2ac     180  +[TAGPBSourceCodeInfo_Location descriptor]

; ======================================================================
; +[TAGPBSourceCodeInfo_Location descriptor]
; address 0x10012d2ac  size 180  kind objc
; ======================================================================
  10012d2ac  stp     x29, x30, [sp, #-0x10]!
  10012d2b0  mov     x29, sp
  10012d2b4  stp     x20, x19, [sp, #-0x10]!
  10012d2b8  stp     x22, x21, [sp, #-0x10]!
  10012d2bc  sub     sp, sp, #0x20
  10012d2c0  adrp    x22, #0x10042d000
  10012d2c4  add     x22, x22, #0xd00                         ; &g_10042dd00
  10012d2c8  ldr     x0, [x22, #0x118]                        ; load g_10042de18
  10012d2cc  cbnz    x0, loc_10012d34c                        ; if (g_10042de18 != 0)
  10012d2d0  adrp    x8, #0x10041e000
  10012d2d4  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10012d2d8  nop
  10012d2dc  ldr     x0, [x8, #0x730]                         ; class TAGPBSourceCodeInfo_Location
  10012d2e0  adrp    x8, #0x100417000
  10012d2e4  nop
  10012d2e8  ldr     x20, [x8, #0x2e0]
  10012d2ec  mov     x1, x20
  10012d2f0  bl      _objc_msgSend                            ; [TAGPBSourceCodeInfo_Location class]
  10012d2f4  mov     x21, x0
  10012d2f8  adrp    x8, #0x10041e000
  10012d2fc  ldr     x0, [x8, #0x670]                         ; class TAGPBDescriptorRoot
  10012d300  mov     x1, x20
  10012d304  bl      _objc_msgSend                            ; [TAGPBDescriptorRoot class]
  10012d308  mov     x3, x0
  10012d30c  adrp    x8, #0x10041c000
  10012d310  nop
  10012d314  ldr     x1, [x8, #0x4a0]
  10012d318  strb    wzr, [sp, #0x18]
  10012d31c  mov     x8, #0x28
  10012d320  stp     xzr, x8, [sp, #8]
  10012d324  str     xzr, [sp]
  10012d328  adrp    x4, #0x10042b000
  10012d32c  add     x4, x4, #0x8d0                           ; &d_10042b8d0
  10012d330  mov     x5, #4
  10012d334  mov     x0, x19
  10012d338  mov     x2, x21
  10012d33c  mov     x6, #0
  10012d340  mov     x7, #0
  10012d344  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPBSourceCodeInfo_Location class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b8d0 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10012d348  str     x0, [x22, #0x118]                        ; store g_10042de18 = [TAGPBDescriptor allocDescriptorForClass:[TAGPBSourceCodeInfo_Location class] rootClass:[TAGPBDescriptorRoot class] fields:&d_10042b8d0 fieldCount:4 enums:0 enumCount:0 ranges:40 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10012d34c:
  10012d34c  sub     sp, x29, #0x20
  10012d350  ldp     x22, x21, [sp], #0x10
  10012d354  ldp     x20, x19, [sp], #0x10
  10012d358  ldp     x29, x30, [sp], #0x10
  10012d35c  ret
