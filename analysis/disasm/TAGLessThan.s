// unit TAGLessThan — 3 functions
//   0x100178bfc      44  +[TAGLessThan functionId]
//   0x100178c28      68  -[TAGLessThan init]
//   0x100178c6c     140  -[TAGLessThan evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGLessThan functionId]
; address 0x100178bfc  size 44  kind objc
; ======================================================================
  100178bfc  stp     x29, x30, [sp, #-0x10]!
  100178c00  mov     x29, sp
  100178c04  stp     x20, x19, [sp, #-0x10]!
  100178c08  adrp    x19, #0x1003c9000
  100178c0c  add     x19, x19, #0x8f0                         ; @"_lt"
  100178c10  mov     x0, x19
  100178c14  bl      _objc_retainAutorelease
  100178c18  mov     x0, x19
  100178c1c  ldp     x20, x19, [sp], #0x10
  100178c20  ldp     x29, x30, [sp], #0x10
  100178c24  ret

; ======================================================================
; -[TAGLessThan init]
; address 0x100178c28  size 68  kind objc
; ======================================================================
  100178c28  stp     x29, x30, [sp, #-0x10]!
  100178c2c  mov     x29, sp
  100178c30  sub     sp, sp, #0x10
  100178c34  str     x0, [sp]
  100178c38  adrp    x8, #0x10041f000
  100178c3c  ldr     x8, [x8, #0x428]
  100178c40  str     x8, [sp, #8]
  100178c44  adrp    x8, #0x10041d000
  100178c48  nop
  100178c4c  ldr     x1, [x8, #0xcc8]
  100178c50  adrp    x2, #0x1003c9000
  100178c54  add     x2, x2, #0x8f0                           ; @"_lt"
  100178c58  mov     x0, sp
  100178c5c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_lt"]
  100178c60  mov     sp, x29
  100178c64  ldp     x29, x30, [sp], #0x10
  100178c68  ret

; ======================================================================
; -[TAGLessThan evaluateWithArg0:arg1:parameters:]
; address 0x100178c6c  size 140  kind objc
; ======================================================================
  100178c6c  stp     x29, x30, [sp, #-0x10]!
  100178c70  mov     x29, sp
  100178c74  stp     x20, x19, [sp, #-0x10]!
  100178c78  stp     x22, x21, [sp, #-0x10]!
  100178c7c  mov     x20, x3
  100178c80  mov     x21, x2
  100178c84  mov     x0, x21
  100178c88  bl      _objc_retain
  100178c8c  mov     x19, x0
  100178c90  mov     x0, x20
  100178c94  bl      _objc_retain
  100178c98  mov     x20, x0
  100178c9c  adrp    x8, #0x100419000
  100178ca0  nop
  100178ca4  ldr     x1, [x8, #0x4e8]
  100178ca8  mov     x0, x21
  100178cac  mov     x2, x20
  100178cb0  bl      _objc_msgSend                            ; [arg1 compare:arg2]
  100178cb4  mov     x21, x0
  100178cb8  mov     x0, x20
  100178cbc  bl      _objc_release
  100178cc0  mov     x0, x19
  100178cc4  bl      _objc_release
  100178cc8  lsr     x0, x21, #0x3f
  100178ccc  ldp     x22, x21, [sp], #0x10
  100178cd0  ldp     x20, x19, [sp], #0x10
  100178cd4  ldp     x29, x30, [sp], #0x10
  100178cd8  ret
  100178cdc  mov     x21, x0
  100178ce0  mov     x0, x20
  100178ce4  bl      _objc_release
  100178ce8  mov     x0, x19
  100178cec  bl      _objc_release
  100178cf0  mov     x0, x21
  100178cf4  bl      __Unwind_Resume                          ; Unwind_Resume()
