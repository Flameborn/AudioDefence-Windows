// unit UILabelCounterEaseOut — 1 functions
//   0x10007cb8c      64  -[UILabelCounterEaseOut update:]

; ======================================================================
; -[UILabelCounterEaseOut update:]
; address 0x10007cb8c  size 64  kind objc
; ======================================================================
  10007cb8c  stp     d9, d8, [sp, #-0x20]!
  10007cb90  stp     x29, x30, [sp, #0x10]
  10007cb94  add     x29, sp, #0x10
  10007cb98  fmov    s9, #1.00000000
  10007cb9c  fsub    s8, s9, s0
  10007cba0  adrp    x8, #0x100419000
  10007cba4  nop
  10007cba8  ldr     x1, [x8, #0xb10]
  10007cbac  bl      _objc_msgSend                            ; [self rate]
  10007cbb0  mov     v1.16b, v0.16b
  10007cbb4  mov     v0.16b, v8.16b
  10007cbb8  bl      _powf                                    ; powf((1 - arg1), [self rate])
  10007cbbc  fsub    s0, s9, s0
  10007cbc0  ldp     x29, x30, [sp, #0x10]
  10007cbc4  ldp     d9, d8, [sp], #0x20
  10007cbc8  ret
