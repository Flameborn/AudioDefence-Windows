// unit TAGTrackingTag — 3 functions
//   0x10017ae5c       8  -[TAGTrackingTag isCacheable]
//   0x10017ae64     132  -[TAGTrackingTag evaluate:]
//   0x10017aee8      40  -[TAGTrackingTag evaluateTrackingTag:]

; ======================================================================
; -[TAGTrackingTag isCacheable]
; address 0x10017ae5c  size 8  kind objc
; ======================================================================
  10017ae5c  mov     w0, #0
  10017ae60  ret

; ======================================================================
; -[TAGTrackingTag evaluate:]
; address 0x10017ae64  size 132  kind objc
; ======================================================================
  10017ae64  stp     x29, x30, [sp, #-0x10]!
  10017ae68  mov     x29, sp
  10017ae6c  stp     x20, x19, [sp, #-0x10]!
  10017ae70  mov     x20, x0
  10017ae74  mov     x0, x2
  10017ae78  bl      _objc_retain
  10017ae7c  mov     x19, x0
  10017ae80  adrp    x8, #0x10041d000
  10017ae84  nop
  10017ae88  ldr     x1, [x8, #0xd38]
  10017ae8c  mov     x0, x20
  10017ae90  mov     x2, x19
  10017ae94  bl      _objc_msgSend                            ; [self evaluateTrackingTag:arg1]
  10017ae98  adrp    x8, #0x10041e000
  10017ae9c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10017aea0  adrp    x8, #0x10041c000
  10017aea4  nop
  10017aea8  ldr     x1, [x8, #0xa98]
  10017aeac  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  10017aeb0  mov     x29, x29
  10017aeb4  bl      _objc_retainAutoreleasedReturnValue
  10017aeb8  mov     x20, x0
  10017aebc  mov     x0, x19
  10017aec0  bl      _objc_release
  10017aec4  mov     x0, x20
  10017aec8  ldp     x20, x19, [sp], #0x10
  10017aecc  ldp     x29, x30, [sp], #0x10
  10017aed0  b       _objc_autoreleaseReturnValue
  10017aed4  mov     x20, x0
  10017aed8  mov     x0, x19
  10017aedc  bl      _objc_release
  10017aee0  mov     x0, x20
  10017aee4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGTrackingTag evaluateTrackingTag:]
; address 0x10017aee8  size 40  kind objc
; ======================================================================
  10017aee8  stp     x29, x30, [sp, #-0x10]!
  10017aeec  mov     x29, sp
  10017aef0  mov     x8, x1
  10017aef4  adrp    x9, #0x10041b000
  10017aef8  nop
  10017aefc  ldr     x1, [x9, #0xd68]
  10017af00  mov     x2, x8
  10017af04  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  10017af08  ldp     x29, x30, [sp], #0x10
  10017af0c  ret
