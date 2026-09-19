// unit TAGMD5HashAlgorithm — 1 functions
//   0x100174d38     196  -[TAGMD5HashAlgorithm hashData:]

; ======================================================================
; -[TAGMD5HashAlgorithm hashData:]
; address 0x100174d38  size 196  kind objc
; ======================================================================
  100174d38  stp     x29, x30, [sp, #-0x10]!
  100174d3c  mov     x29, sp
  100174d40  stp     x20, x19, [sp, #-0x10]!
  100174d44  stp     x22, x21, [sp, #-0x10]!
  100174d48  mov     x0, x2
  100174d4c  bl      _objc_retain
  100174d50  mov     x19, x0
  100174d54  mov     x0, #0x10
  100174d58  bl      _malloc                                  ; malloc(16)
  100174d5c  mov     x20, x0
  100174d60  adrp    x8, #0x100417000
  100174d64  nop
  100174d68  ldr     x1, [x8, #0xc58]
  100174d6c  mov     x0, x19
  100174d70  bl      _objc_msgSend                            ; [arg1 length]
  100174d74  mov     x22, x0
  100174d78  mov     x0, x19
  100174d7c  bl      _objc_retainAutorelease
  100174d80  mov     x21, x0
  100174d84  adrp    x8, #0x10041c000
  100174d88  nop
  100174d8c  ldr     x1, [x8, #0x490]
  100174d90  bl      _objc_msgSend                            ; [arg1 bytes]
  100174d94  mov     x1, x22
  100174d98  mov     x2, x20
  100174d9c  bl      _CC_MD5                                  ; CC_MD5([arg1 bytes], [arg1 length], malloc(16))
  100174da0  adrp    x8, #0x10041e000
  100174da4  ldr     x0, [x8, #0x770]                         ; class NSData
  100174da8  adrp    x8, #0x10041d000
  100174dac  nop
  100174db0  ldr     x1, [x8, #0xc70]
  100174db4  mov     x3, #0x10
  100174db8  mov     x2, x20
  100174dbc  bl      _objc_msgSend                            ; [NSData dataWithBytesNoCopy:malloc(16) length:16]
  100174dc0  mov     x29, x29
  100174dc4  bl      _objc_retainAutoreleasedReturnValue
  100174dc8  mov     x19, x0
  100174dcc  mov     x0, x21
  100174dd0  bl      _objc_release
  100174dd4  mov     x0, x19
  100174dd8  ldp     x22, x21, [sp], #0x10
  100174ddc  ldp     x20, x19, [sp], #0x10
  100174de0  ldp     x29, x30, [sp], #0x10
  100174de4  b       _objc_autoreleaseReturnValue
  100174de8  mov     x20, x0
  100174dec  mov     x0, x19
  100174df0  bl      _objc_release
  100174df4  mov     x0, x20
  100174df8  bl      __Unwind_Resume                          ; Unwind_Resume()
