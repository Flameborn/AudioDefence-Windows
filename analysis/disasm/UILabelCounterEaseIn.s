// unit UILabelCounterEaseIn — 1 functions
//   0x10007cb58      52  -[UILabelCounterEaseIn update:]

; ======================================================================
; -[UILabelCounterEaseIn update:]
; address 0x10007cb58  size 52  kind objc
; ======================================================================
  10007cb58  stp     d9, d8, [sp, #-0x20]!
  10007cb5c  stp     x29, x30, [sp, #0x10]
  10007cb60  add     x29, sp, #0x10
  10007cb64  mov     v8.16b, v0.16b
  10007cb68  adrp    x8, #0x100419000
  10007cb6c  nop
  10007cb70  ldr     x1, [x8, #0xb10]
  10007cb74  bl      _objc_msgSend                            ; [self rate]
  10007cb78  mov     v1.16b, v0.16b
  10007cb7c  mov     v0.16b, v8.16b
  10007cb80  ldp     x29, x30, [sp, #0x10]
  10007cb84  ldp     d9, d8, [sp], #0x20
  10007cb88  b       _powf                                    ; powf(arg1, [self rate])
