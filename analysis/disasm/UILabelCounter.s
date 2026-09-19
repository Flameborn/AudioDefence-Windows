// unit UILabelCounter — 3 functions
//   0x10007cb24       8  -[UILabelCounter update:]
//   0x10007cb2c      20  -[UILabelCounter rate]
//   0x10007cb40      20  -[UILabelCounter setRate:]

; ======================================================================
; -[UILabelCounter update:]
; address 0x10007cb24  size 8  kind objc
; ======================================================================
  10007cb24  movi    v0.16b, #0
  10007cb28  ret

; ======================================================================
; -[UILabelCounter rate]
; address 0x10007cb2c  size 20  kind objc
; ======================================================================
  10007cb2c  adrp    x8, #0x10041f000
  10007cb30  ldrsw   x8, [x8, #0xdfc]                         ; ivar offset UILabelCounter._rate (+0x8)
  10007cb34  ldr     w8, [x0, x8]                             ; w8 = self->_rate
  10007cb38  fmov    s0, w8
  10007cb3c  ret

; ======================================================================
; -[UILabelCounter setRate:]
; address 0x10007cb40  size 20  kind objc
; ======================================================================
  10007cb40  fmov    w8, s0
  10007cb44  adrp    x9, #0x10041f000
  10007cb48  ldrsw   x9, [x9, #0xdfc]                         ; ivar offset UILabelCounter._rate (+0x8)
  10007cb4c  str     w8, [x0, x9]                             ; self->_rate = arg1
  10007cb50  ret
