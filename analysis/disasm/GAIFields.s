// unit GAIFields — 3 functions
//   0x100121fe4      60  +[GAIFields contentGroupForIndex:]
//   0x100122020      60  +[GAIFields customDimensionForIndex:]
//   0x10012205c      60  +[GAIFields customMetricForIndex:]

; ======================================================================
; +[GAIFields contentGroupForIndex:]
; address 0x100121fe4  size 60  kind objc
; ======================================================================
  100121fe4  stp     x29, x30, [sp, #-0x10]!
  100121fe8  mov     x29, sp
  100121fec  sub     sp, sp, #0x10
  100121ff0  adrp    x8, #0x10041d000
  100121ff4  ldr     x0, [x8, #0xf78]                         ; class NSString
  100121ff8  adrp    x8, #0x100416000
  100121ffc  nop
  100122000  ldr     x1, [x8, #0xee8]
  100122004  str     x2, [sp]
  100122008  adrp    x2, #0x1003c5000
  10012200c  add     x2, x2, #0xd50                           ; @"&cg%lu"
  100122010  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"&cg%lu", arg1]
  100122014  mov     sp, x29
  100122018  ldp     x29, x30, [sp], #0x10
  10012201c  ret

; ======================================================================
; +[GAIFields customDimensionForIndex:]
; address 0x100122020  size 60  kind objc
; ======================================================================
  100122020  stp     x29, x30, [sp, #-0x10]!
  100122024  mov     x29, sp
  100122028  sub     sp, sp, #0x10
  10012202c  adrp    x8, #0x10041d000
  100122030  ldr     x0, [x8, #0xf78]                         ; class NSString
  100122034  adrp    x8, #0x100416000
  100122038  nop
  10012203c  ldr     x1, [x8, #0xee8]
  100122040  str     x2, [sp]
  100122044  adrp    x2, #0x1003c5000
  100122048  add     x2, x2, #0xd70                           ; @"&cd%lu"
  10012204c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"&cd%lu", arg1]
  100122050  mov     sp, x29
  100122054  ldp     x29, x30, [sp], #0x10
  100122058  ret

; ======================================================================
; +[GAIFields customMetricForIndex:]
; address 0x10012205c  size 60  kind objc
; ======================================================================
  10012205c  stp     x29, x30, [sp, #-0x10]!
  100122060  mov     x29, sp
  100122064  sub     sp, sp, #0x10
  100122068  adrp    x8, #0x10041d000
  10012206c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100122070  adrp    x8, #0x100416000
  100122074  nop
  100122078  ldr     x1, [x8, #0xee8]
  10012207c  str     x2, [sp]
  100122080  adrp    x2, #0x1003c5000
  100122084  add     x2, x2, #0xd90                           ; @"&cm%lu"
  100122088  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"&cm%lu", arg1]
  10012208c  mov     sp, x29
  100122090  ldp     x29, x30, [sp], #0x10
  100122094  ret
