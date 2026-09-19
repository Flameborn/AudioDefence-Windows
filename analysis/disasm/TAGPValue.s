// unit TAGPValue — 1 functions
//   0x10014baf4     196  +[TAGPValue descriptor]

; ======================================================================
; +[TAGPValue descriptor]
; address 0x10014baf4  size 196  kind objc
; ======================================================================
  10014baf4  stp     x29, x30, [sp, #-0x10]!
  10014baf8  mov     x29, sp
  10014bafc  stp     x20, x19, [sp, #-0x10]!
  10014bb00  stp     x22, x21, [sp, #-0x10]!
  10014bb04  sub     sp, sp, #0x20
  10014bb08  adrp    x22, #0x10042d000
  10014bb0c  add     x22, x22, #0xe60                         ; &g_10042de60
  10014bb10  ldr     x0, [x22, #8]                            ; load g_10042de68
  10014bb14  cbnz    x0, loc_10014bba4                        ; if (g_10042de68 != 0)
  10014bb18  adrp    x8, #0x10041e000
  10014bb1c  ldr     x19, [x8, #0x660]                        ; class TAGPBDescriptor
  10014bb20  nop
  10014bb24  ldr     x0, [x8, #0x7d0]                         ; class TAGPValue
  10014bb28  adrp    x8, #0x100417000
  10014bb2c  nop
  10014bb30  ldr     x20, [x8, #0x2e0]
  10014bb34  mov     x1, x20
  10014bb38  bl      _objc_msgSend                            ; [TAGPValue class]
  10014bb3c  mov     x21, x0
  10014bb40  adrp    x8, #0x10041e000
  10014bb44  ldr     x0, [x8, #0x7d8]                         ; class TAGPTypeSystemRoot
  10014bb48  mov     x1, x20
  10014bb4c  bl      _objc_msgSend                            ; [TAGPTypeSystemRoot class]
  10014bb50  mov     x3, x0
  10014bb54  adrp    x8, #0x10041c000
  10014bb58  nop
  10014bb5c  ldr     x1, [x8, #0x4a0]
  10014bb60  strb    wzr, [sp, #0x18]
  10014bb64  mov     x8, #0x70
  10014bb68  str     x8, [sp, #0x10]
  10014bb6c  mov     x8, #1
  10014bb70  str     x8, [sp, #8]
  10014bb74  adrp    x8, #0x10042d000
  10014bb78  add     x8, x8, #0x2a0                           ; &d_10042d2a0
  10014bb7c  str     x8, [sp]
  10014bb80  add     x6, x8, #0x10                            ; &d_10042d2b0
  10014bb84  adrp    x4, #0x10042b000
  10014bb88  add     x4, x4, #0xc80                           ; &d_10042bc80
  10014bb8c  mov     x5, #0xd
  10014bb90  mov     x7, #2
  10014bb94  mov     x0, x19
  10014bb98  mov     x2, x21
  10014bb9c  bl      _objc_msgSend                            ; [TAGPBDescriptor allocDescriptorForClass:[TAGPValue class] rootClass:[TAGPTypeSystemRoot class] fields:&d_10042bc80 fieldCount:13 enums:&d_10042d2b0 enumCount:2 ranges:&d_10042d2a0 rangeCount:x9 storageSize:x10 wireFormat:x11]
  10014bba0  str     x0, [x22, #8]                            ; store g_10042de68 = [TAGPBDescriptor allocDescriptorForClass:[TAGPValue class] rootClass:[TAGPTypeSystemRoot class] fields:&d_10042bc80 fieldCount:13 enums:&d_10042d2b0 enumCount:2 ranges:&d_10042d2a0 rangeCount:x9 storageSize:x10 wireFormat:x11]
loc_10014bba4:
  10014bba4  sub     sp, x29, #0x20
  10014bba8  ldp     x22, x21, [sp], #0x10
  10014bbac  ldp     x20, x19, [sp], #0x10
  10014bbb0  ldp     x29, x30, [sp], #0x10
  10014bbb4  ret
