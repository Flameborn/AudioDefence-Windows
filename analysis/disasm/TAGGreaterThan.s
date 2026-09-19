// unit TAGGreaterThan — 3 functions
//   0x1001789fc      44  +[TAGGreaterThan functionId]
//   0x100178a28      68  -[TAGGreaterThan init]
//   0x100178a6c     144  -[TAGGreaterThan evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGGreaterThan functionId]
; address 0x1001789fc  size 44  kind objc
; ======================================================================
  1001789fc  stp     x29, x30, [sp, #-0x10]!
  100178a00  mov     x29, sp
  100178a04  stp     x20, x19, [sp, #-0x10]!
  100178a08  adrp    x19, #0x1003c9000
  100178a0c  add     x19, x19, #0x8b0                         ; @"_gt"
  100178a10  mov     x0, x19
  100178a14  bl      _objc_retainAutorelease
  100178a18  mov     x0, x19
  100178a1c  ldp     x20, x19, [sp], #0x10
  100178a20  ldp     x29, x30, [sp], #0x10
  100178a24  ret

; ======================================================================
; -[TAGGreaterThan init]
; address 0x100178a28  size 68  kind objc
; ======================================================================
  100178a28  stp     x29, x30, [sp, #-0x10]!
  100178a2c  mov     x29, sp
  100178a30  sub     sp, sp, #0x10
  100178a34  str     x0, [sp]
  100178a38  adrp    x8, #0x10041f000
  100178a3c  ldr     x8, [x8, #0x418]
  100178a40  str     x8, [sp, #8]
  100178a44  adrp    x8, #0x10041d000
  100178a48  nop
  100178a4c  ldr     x1, [x8, #0xcc8]
  100178a50  adrp    x2, #0x1003c9000
  100178a54  add     x2, x2, #0x8b0                           ; @"_gt"
  100178a58  mov     x0, sp
  100178a5c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_gt"]
  100178a60  mov     sp, x29
  100178a64  ldp     x29, x30, [sp], #0x10
  100178a68  ret

; ======================================================================
; -[TAGGreaterThan evaluateWithArg0:arg1:parameters:]
; address 0x100178a6c  size 144  kind objc
; ======================================================================
  100178a6c  stp     x29, x30, [sp, #-0x10]!
  100178a70  mov     x29, sp
  100178a74  stp     x20, x19, [sp, #-0x10]!
  100178a78  stp     x22, x21, [sp, #-0x10]!
  100178a7c  mov     x20, x3
  100178a80  mov     x21, x2
  100178a84  mov     x0, x21
  100178a88  bl      _objc_retain
  100178a8c  mov     x19, x0
  100178a90  mov     x0, x20
  100178a94  bl      _objc_retain
  100178a98  mov     x20, x0
  100178a9c  adrp    x8, #0x100419000
  100178aa0  nop
  100178aa4  ldr     x1, [x8, #0x4e8]
  100178aa8  mov     x0, x21
  100178aac  mov     x2, x20
  100178ab0  bl      _objc_msgSend                            ; [arg1 compare:arg2]
  100178ab4  mov     x21, x0
  100178ab8  mov     x0, x20
  100178abc  bl      _objc_release
  100178ac0  mov     x0, x19
  100178ac4  bl      _objc_release
  100178ac8  cmp     x21, #0
  100178acc  cset    w0, gt
  100178ad0  ldp     x22, x21, [sp], #0x10
  100178ad4  ldp     x20, x19, [sp], #0x10
  100178ad8  ldp     x29, x30, [sp], #0x10
  100178adc  ret
  100178ae0  mov     x21, x0
  100178ae4  mov     x0, x20
  100178ae8  bl      _objc_release
  100178aec  mov     x0, x19
  100178af0  bl      _objc_release
  100178af4  mov     x0, x21
  100178af8  bl      __Unwind_Resume                          ; Unwind_Resume()
