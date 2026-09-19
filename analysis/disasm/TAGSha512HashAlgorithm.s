// unit TAGSha512HashAlgorithm — 1 functions
//   0x100175048     196  -[TAGSha512HashAlgorithm hashData:]

; ======================================================================
; -[TAGSha512HashAlgorithm hashData:]
; address 0x100175048  size 196  kind objc
; ======================================================================
  100175048  stp     x29, x30, [sp, #-0x10]!
  10017504c  mov     x29, sp
  100175050  stp     x20, x19, [sp, #-0x10]!
  100175054  stp     x22, x21, [sp, #-0x10]!
  100175058  mov     x0, x2
  10017505c  bl      _objc_retain
  100175060  mov     x19, x0
  100175064  mov     x0, #0x40
  100175068  bl      _malloc                                  ; malloc(64)
  10017506c  mov     x20, x0
  100175070  adrp    x8, #0x100417000
  100175074  nop
  100175078  ldr     x1, [x8, #0xc58]
  10017507c  mov     x0, x19
  100175080  bl      _objc_msgSend                            ; [arg1 length]
  100175084  mov     x22, x0
  100175088  mov     x0, x19
  10017508c  bl      _objc_retainAutorelease
  100175090  mov     x21, x0
  100175094  adrp    x8, #0x10041c000
  100175098  nop
  10017509c  ldr     x1, [x8, #0x490]
  1001750a0  bl      _objc_msgSend                            ; [arg1 bytes]
  1001750a4  mov     x1, x22
  1001750a8  mov     x2, x20
  1001750ac  bl      _CC_SHA512                               ; CC_SHA512([arg1 bytes], [arg1 length], malloc(64))
  1001750b0  adrp    x8, #0x10041e000
  1001750b4  ldr     x0, [x8, #0x770]                         ; class NSData
  1001750b8  adrp    x8, #0x10041d000
  1001750bc  nop
  1001750c0  ldr     x1, [x8, #0xc70]
  1001750c4  mov     x3, #0x40
  1001750c8  mov     x2, x20
  1001750cc  bl      _objc_msgSend                            ; [NSData dataWithBytesNoCopy:malloc(64) length:64]
  1001750d0  mov     x29, x29
  1001750d4  bl      _objc_retainAutoreleasedReturnValue
  1001750d8  mov     x19, x0
  1001750dc  mov     x0, x21
  1001750e0  bl      _objc_release
  1001750e4  mov     x0, x19
  1001750e8  ldp     x22, x21, [sp], #0x10
  1001750ec  ldp     x20, x19, [sp], #0x10
  1001750f0  ldp     x29, x30, [sp], #0x10
  1001750f4  b       _objc_autoreleaseReturnValue
  1001750f8  mov     x20, x0
  1001750fc  mov     x0, x19
  100175100  bl      _objc_release
  100175104  mov     x0, x20
  100175108  bl      __Unwind_Resume                          ; Unwind_Resume()
