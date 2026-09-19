// unit TAGLessEquals — 3 functions
//   0x100178afc      44  +[TAGLessEquals functionId]
//   0x100178b28      68  -[TAGLessEquals init]
//   0x100178b6c     144  -[TAGLessEquals evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGLessEquals functionId]
; address 0x100178afc  size 44  kind objc
; ======================================================================
  100178afc  stp     x29, x30, [sp, #-0x10]!
  100178b00  mov     x29, sp
  100178b04  stp     x20, x19, [sp, #-0x10]!
  100178b08  adrp    x19, #0x1003c9000
  100178b0c  add     x19, x19, #0x8d0                         ; @"_le"
  100178b10  mov     x0, x19
  100178b14  bl      _objc_retainAutorelease
  100178b18  mov     x0, x19
  100178b1c  ldp     x20, x19, [sp], #0x10
  100178b20  ldp     x29, x30, [sp], #0x10
  100178b24  ret

; ======================================================================
; -[TAGLessEquals init]
; address 0x100178b28  size 68  kind objc
; ======================================================================
  100178b28  stp     x29, x30, [sp, #-0x10]!
  100178b2c  mov     x29, sp
  100178b30  sub     sp, sp, #0x10
  100178b34  str     x0, [sp]
  100178b38  adrp    x8, #0x10041f000
  100178b3c  ldr     x8, [x8, #0x420]
  100178b40  str     x8, [sp, #8]
  100178b44  adrp    x8, #0x10041d000
  100178b48  nop
  100178b4c  ldr     x1, [x8, #0xcc8]
  100178b50  adrp    x2, #0x1003c9000
  100178b54  add     x2, x2, #0x8d0                           ; @"_le"
  100178b58  mov     x0, sp
  100178b5c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_le"]
  100178b60  mov     sp, x29
  100178b64  ldp     x29, x30, [sp], #0x10
  100178b68  ret

; ======================================================================
; -[TAGLessEquals evaluateWithArg0:arg1:parameters:]
; address 0x100178b6c  size 144  kind objc
; ======================================================================
  100178b6c  stp     x29, x30, [sp, #-0x10]!
  100178b70  mov     x29, sp
  100178b74  stp     x20, x19, [sp, #-0x10]!
  100178b78  stp     x22, x21, [sp, #-0x10]!
  100178b7c  mov     x20, x3
  100178b80  mov     x21, x2
  100178b84  mov     x0, x21
  100178b88  bl      _objc_retain
  100178b8c  mov     x19, x0
  100178b90  mov     x0, x20
  100178b94  bl      _objc_retain
  100178b98  mov     x20, x0
  100178b9c  adrp    x8, #0x100419000
  100178ba0  nop
  100178ba4  ldr     x1, [x8, #0x4e8]
  100178ba8  mov     x0, x21
  100178bac  mov     x2, x20
  100178bb0  bl      _objc_msgSend                            ; [arg1 compare:arg2]
  100178bb4  mov     x21, x0
  100178bb8  mov     x0, x20
  100178bbc  bl      _objc_release
  100178bc0  mov     x0, x19
  100178bc4  bl      _objc_release
  100178bc8  cmp     x21, #1
  100178bcc  cset    w0, lt
  100178bd0  ldp     x22, x21, [sp], #0x10
  100178bd4  ldp     x20, x19, [sp], #0x10
  100178bd8  ldp     x29, x30, [sp], #0x10
  100178bdc  ret
  100178be0  mov     x21, x0
  100178be4  mov     x0, x20
  100178be8  bl      _objc_release
  100178bec  mov     x0, x19
  100178bf0  bl      _objc_release
  100178bf4  mov     x0, x21
  100178bf8  bl      __Unwind_Resume                          ; Unwind_Resume()
