// unit UILabelCounterEaseInOut — 1 functions
//   0x10007cbcc     196  -[UILabelCounterEaseInOut update:]

; ======================================================================
; -[UILabelCounterEaseInOut update:]
; address 0x10007cbcc  size 196  kind objc
; ======================================================================
  10007cbcc  stp     d9, d8, [sp, #-0x40]!
  10007cbd0  stp     x22, x21, [sp, #0x10]
  10007cbd4  stp     x20, x19, [sp, #0x20]
  10007cbd8  stp     x29, x30, [sp, #0x30]
  10007cbdc  add     x29, sp, #0x30
  10007cbe0  mov     v8.16b, v0.16b
  10007cbe4  mov     x19, x0
  10007cbe8  adrp    x8, #0x100419000
  10007cbec  nop
  10007cbf0  ldr     x20, [x8, #0xb10]
  10007cbf4  mov     x1, x20
  10007cbf8  bl      _objc_msgSend                            ; [self rate]
  10007cbfc  fadd    s8, s8, s8
  10007cc00  fmov    s1, #1.00000000
  10007cc04  fcmp    s8, s1
  10007cc08  b.pl    loc_10007cc30                            ; if ((arg1 + arg1) >= (or unordered) 1)
  10007cc0c  mov     x0, x19
  10007cc10  mov     x1, x20
  10007cc14  bl      _objc_msgSend                            ; [self rate]
  10007cc18  mov     v1.16b, v0.16b
  10007cc1c  mov     v0.16b, v8.16b
  10007cc20  bl      _powf                                    ; powf((arg1 + arg1), [self rate])
  10007cc24  fmov    s1, #0.50000000
  10007cc28  fmul    s0, s0, s1
  10007cc2c  b       loc_10007cc7c
loc_10007cc30:
  10007cc30  fcvtzs  w8, s0
  10007cc34  lsl     w8, w8, #1
  10007cc38  and     w8, w8, #2
  10007cc3c  sub     w21, w8, #1
  10007cc40  scvtf   s0, w21
  10007cc44  fmov    s1, #0.50000000
  10007cc48  fmul    s9, s0, s1
  10007cc4c  fmov    s0, #-2.00000000
  10007cc50  fadd    s8, s8, s0
  10007cc54  mov     x0, x19
  10007cc58  mov     x1, x20
  10007cc5c  bl      _objc_msgSend                            ; [self rate]
  10007cc60  mov     v1.16b, v0.16b
  10007cc64  mov     v0.16b, v8.16b
  10007cc68  bl      _powf                                    ; powf(((arg1 + arg1) + -2), [self rate])
  10007cc6c  lsl     w8, w21, #1
  10007cc70  scvtf   s1, w8
  10007cc74  fadd    s0, s1, s0                               ; t1 = ((float)(((((int)[self rate] << 1) & 2) - 1) << 1) + powf(((arg1 + arg1) + -2), [self rate]))
  10007cc78  fmul    s0, s9, s0
loc_10007cc7c:
  10007cc7c  ldp     x29, x30, [sp, #0x30]
  10007cc80  ldp     x20, x19, [sp, #0x20]
  10007cc84  ldp     x22, x21, [sp, #0x10]
  10007cc88  ldp     d9, d8, [sp], #0x40
  10007cc8c  ret
