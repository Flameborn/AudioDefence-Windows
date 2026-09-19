// unit TAGSha256HashAlgorithm — 1 functions
//   0x100174ec0     196  -[TAGSha256HashAlgorithm hashData:]

; ======================================================================
; -[TAGSha256HashAlgorithm hashData:]
; address 0x100174ec0  size 196  kind objc
; ======================================================================
  100174ec0  stp     x29, x30, [sp, #-0x10]!
  100174ec4  mov     x29, sp
  100174ec8  stp     x20, x19, [sp, #-0x10]!
  100174ecc  stp     x22, x21, [sp, #-0x10]!
  100174ed0  mov     x0, x2
  100174ed4  bl      _objc_retain
  100174ed8  mov     x19, x0
  100174edc  mov     x0, #0x20
  100174ee0  bl      _malloc                                  ; malloc(32)
  100174ee4  mov     x20, x0
  100174ee8  adrp    x8, #0x100417000
  100174eec  nop
  100174ef0  ldr     x1, [x8, #0xc58]
  100174ef4  mov     x0, x19
  100174ef8  bl      _objc_msgSend                            ; [arg1 length]
  100174efc  mov     x22, x0
  100174f00  mov     x0, x19
  100174f04  bl      _objc_retainAutorelease
  100174f08  mov     x21, x0
  100174f0c  adrp    x8, #0x10041c000
  100174f10  nop
  100174f14  ldr     x1, [x8, #0x490]
  100174f18  bl      _objc_msgSend                            ; [arg1 bytes]
  100174f1c  mov     x1, x22
  100174f20  mov     x2, x20
  100174f24  bl      _CC_SHA256                               ; CC_SHA256([arg1 bytes], [arg1 length], malloc(32))
  100174f28  adrp    x8, #0x10041e000
  100174f2c  ldr     x0, [x8, #0x770]                         ; class NSData
  100174f30  adrp    x8, #0x10041d000
  100174f34  nop
  100174f38  ldr     x1, [x8, #0xc70]
  100174f3c  mov     x3, #0x20
  100174f40  mov     x2, x20
  100174f44  bl      _objc_msgSend                            ; [NSData dataWithBytesNoCopy:malloc(32) length:32]
  100174f48  mov     x29, x29
  100174f4c  bl      _objc_retainAutoreleasedReturnValue
  100174f50  mov     x19, x0
  100174f54  mov     x0, x21
  100174f58  bl      _objc_release
  100174f5c  mov     x0, x19
  100174f60  ldp     x22, x21, [sp], #0x10
  100174f64  ldp     x20, x19, [sp], #0x10
  100174f68  ldp     x29, x30, [sp], #0x10
  100174f6c  b       _objc_autoreleaseReturnValue
  100174f70  mov     x20, x0
  100174f74  mov     x0, x19
  100174f78  bl      _objc_release
  100174f7c  mov     x0, x20
  100174f80  bl      __Unwind_Resume                          ; Unwind_Resume()
