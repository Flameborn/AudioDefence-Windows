// unit ADButtonWithCost — 1 functions
//   0x10007830c      60  -[ADButtonWithCost initWithFrame:]

; ======================================================================
; -[ADButtonWithCost initWithFrame:]
; address 0x10007830c  size 60  kind objc
; ======================================================================
  10007830c  stp     x29, x30, [sp, #-0x10]!
  100078310  mov     x29, sp
  100078314  sub     sp, sp, #0x10
  100078318  str     x0, [sp]
  10007831c  adrp    x8, #0x10041e000
  100078320  ldr     x8, [x8, #0xe00]
  100078324  str     x8, [sp, #8]
  100078328  adrp    x8, #0x100417000
  10007832c  nop
  100078330  ldr     x1, [x8, #0x178]
  100078334  mov     x0, sp
  100078338  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10007833c  mov     sp, x29
  100078340  ldp     x29, x30, [sp], #0x10
  100078344  ret
