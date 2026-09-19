// unit TAGSha384HashAlgorithm — 1 functions
//   0x100174f84     196  -[TAGSha384HashAlgorithm hashData:]

; ======================================================================
; -[TAGSha384HashAlgorithm hashData:]
; address 0x100174f84  size 196  kind objc
; ======================================================================
  100174f84  stp     x29, x30, [sp, #-0x10]!
  100174f88  mov     x29, sp
  100174f8c  stp     x20, x19, [sp, #-0x10]!
  100174f90  stp     x22, x21, [sp, #-0x10]!
  100174f94  mov     x0, x2
  100174f98  bl      _objc_retain
  100174f9c  mov     x19, x0
  100174fa0  mov     x0, #0x30
  100174fa4  bl      _malloc                                  ; malloc(48)
  100174fa8  mov     x20, x0
  100174fac  adrp    x8, #0x100417000
  100174fb0  nop
  100174fb4  ldr     x1, [x8, #0xc58]
  100174fb8  mov     x0, x19
  100174fbc  bl      _objc_msgSend                            ; [arg1 length]
  100174fc0  mov     x22, x0
  100174fc4  mov     x0, x19
  100174fc8  bl      _objc_retainAutorelease
  100174fcc  mov     x21, x0
  100174fd0  adrp    x8, #0x10041c000
  100174fd4  nop
  100174fd8  ldr     x1, [x8, #0x490]
  100174fdc  bl      _objc_msgSend                            ; [arg1 bytes]
  100174fe0  mov     x1, x22
  100174fe4  mov     x2, x20
  100174fe8  bl      _CC_SHA384                               ; CC_SHA384([arg1 bytes], [arg1 length], malloc(48))
  100174fec  adrp    x8, #0x10041e000
  100174ff0  ldr     x0, [x8, #0x770]                         ; class NSData
  100174ff4  adrp    x8, #0x10041d000
  100174ff8  nop
  100174ffc  ldr     x1, [x8, #0xc70]
  100175000  mov     x3, #0x30
  100175004  mov     x2, x20
  100175008  bl      _objc_msgSend                            ; [NSData dataWithBytesNoCopy:malloc(48) length:48]
  10017500c  mov     x29, x29
  100175010  bl      _objc_retainAutoreleasedReturnValue
  100175014  mov     x19, x0
  100175018  mov     x0, x21
  10017501c  bl      _objc_release
  100175020  mov     x0, x19
  100175024  ldp     x22, x21, [sp], #0x10
  100175028  ldp     x20, x19, [sp], #0x10
  10017502c  ldp     x29, x30, [sp], #0x10
  100175030  b       _objc_autoreleaseReturnValue
  100175034  mov     x20, x0
  100175038  mov     x0, x19
  10017503c  bl      _objc_release
  100175040  mov     x0, x20
  100175044  bl      __Unwind_Resume                          ; Unwind_Resume()
