// unit TAGPBGeneratedEnumDescriptor — 2 functions
//   0x100138308      84  +[TAGPBGeneratedEnumDescriptor enumDescriptor]
//   0x10013835c      44  -[TAGPBGeneratedEnumDescriptor enumDescriptor]

; ======================================================================
; +[TAGPBGeneratedEnumDescriptor enumDescriptor]
; address 0x100138308  size 84  kind objc
; ======================================================================
  100138308  stp     x29, x30, [sp, #-0x10]!
  10013830c  mov     x29, sp
  100138310  stp     x20, x19, [sp, #-0x10]!
  100138314  adrp    x19, #0x10042d000
  100138318  add     x19, x19, #0xd00                         ; &g_10042dd00
  10013831c  ldr     x0, [x19, #0x130]                        ; load g_10042de30
  100138320  cbnz    x0, loc_100138350                        ; if (g_10042de30 != 0)
  100138324  adrp    x8, #0x10041e000
  100138328  ldr     x0, [x8, #0x698]                         ; class TAGPBEnumDescriptor
  10013832c  adrp    x8, #0x10041c000
  100138330  nop
  100138334  ldr     x1, [x8, #0x4a8]
  100138338  mov     x2, #0
  10013833c  mov     x3, #0
  100138340  mov     x4, #0
  100138344  mov     x5, #0
  100138348  bl      _objc_msgSend                            ; [TAGPBEnumDescriptor allocDescriptorForName:0 values:0 valueCount:0 enumVerifier:0]
  10013834c  str     x0, [x19, #0x130]                        ; store g_10042de30 = [TAGPBEnumDescriptor allocDescriptorForName:0 values:0 valueCount:0 enumVerifier:0]
loc_100138350:
  100138350  ldp     x20, x19, [sp], #0x10
  100138354  ldp     x29, x30, [sp], #0x10
  100138358  ret

; ======================================================================
; -[TAGPBGeneratedEnumDescriptor enumDescriptor]
; address 0x10013835c  size 44  kind objc
; ======================================================================
  10013835c  stp     x29, x30, [sp, #-0x10]!
  100138360  mov     x29, sp
  100138364  adrp    x8, #0x100417000
  100138368  nop
  10013836c  ldr     x1, [x8, #0x2e0]
  100138370  bl      _objc_msgSend                            ; [self class]
  100138374  adrp    x8, #0x10041c000
  100138378  nop
  10013837c  ldr     x1, [x8, #0x7a8]
  100138380  ldp     x29, x30, [sp], #0x10
  100138384  b       _objc_msgSend                            ; [[self class] enumDescriptor]
