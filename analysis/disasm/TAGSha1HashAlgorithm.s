// unit TAGSha1HashAlgorithm — 1 functions
//   0x100174dfc     196  -[TAGSha1HashAlgorithm hashData:]

; ======================================================================
; -[TAGSha1HashAlgorithm hashData:]
; address 0x100174dfc  size 196  kind objc
; ======================================================================
  100174dfc  stp     x29, x30, [sp, #-0x10]!
  100174e00  mov     x29, sp
  100174e04  stp     x20, x19, [sp, #-0x10]!
  100174e08  stp     x22, x21, [sp, #-0x10]!
  100174e0c  mov     x0, x2
  100174e10  bl      _objc_retain
  100174e14  mov     x19, x0
  100174e18  mov     x0, #0x14
  100174e1c  bl      _malloc                                  ; malloc(20)
  100174e20  mov     x20, x0
  100174e24  adrp    x8, #0x100417000
  100174e28  nop
  100174e2c  ldr     x1, [x8, #0xc58]
  100174e30  mov     x0, x19
  100174e34  bl      _objc_msgSend                            ; [arg1 length]
  100174e38  mov     x22, x0
  100174e3c  mov     x0, x19
  100174e40  bl      _objc_retainAutorelease
  100174e44  mov     x21, x0
  100174e48  adrp    x8, #0x10041c000
  100174e4c  nop
  100174e50  ldr     x1, [x8, #0x490]
  100174e54  bl      _objc_msgSend                            ; [arg1 bytes]
  100174e58  mov     x1, x22
  100174e5c  mov     x2, x20
  100174e60  bl      _CC_SHA1                                 ; CC_SHA1([arg1 bytes], [arg1 length], malloc(20))
  100174e64  adrp    x8, #0x10041e000
  100174e68  ldr     x0, [x8, #0x770]                         ; class NSData
  100174e6c  adrp    x8, #0x10041d000
  100174e70  nop
  100174e74  ldr     x1, [x8, #0xc70]
  100174e78  mov     x3, #0x14
  100174e7c  mov     x2, x20
  100174e80  bl      _objc_msgSend                            ; [NSData dataWithBytesNoCopy:malloc(20) length:20]
  100174e84  mov     x29, x29
  100174e88  bl      _objc_retainAutoreleasedReturnValue
  100174e8c  mov     x19, x0
  100174e90  mov     x0, x21
  100174e94  bl      _objc_release
  100174e98  mov     x0, x19
  100174e9c  ldp     x22, x21, [sp], #0x10
  100174ea0  ldp     x20, x19, [sp], #0x10
  100174ea4  ldp     x29, x30, [sp], #0x10
  100174ea8  b       _objc_autoreleaseReturnValue
  100174eac  mov     x20, x0
  100174eb0  mov     x0, x19
  100174eb4  bl      _objc_release
  100174eb8  mov     x0, x20
  100174ebc  bl      __Unwind_Resume                          ; Unwind_Resume()
