// unit TAGGreaterEquals — 3 functions
//   0x1001788fc      44  +[TAGGreaterEquals functionId]
//   0x100178928      68  -[TAGGreaterEquals init]
//   0x10017896c     144  -[TAGGreaterEquals evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGGreaterEquals functionId]
; address 0x1001788fc  size 44  kind objc
; ======================================================================
  1001788fc  stp     x29, x30, [sp, #-0x10]!
  100178900  mov     x29, sp
  100178904  stp     x20, x19, [sp, #-0x10]!
  100178908  adrp    x19, #0x1003c9000
  10017890c  add     x19, x19, #0x890                         ; @"_ge"
  100178910  mov     x0, x19
  100178914  bl      _objc_retainAutorelease
  100178918  mov     x0, x19
  10017891c  ldp     x20, x19, [sp], #0x10
  100178920  ldp     x29, x30, [sp], #0x10
  100178924  ret

; ======================================================================
; -[TAGGreaterEquals init]
; address 0x100178928  size 68  kind objc
; ======================================================================
  100178928  stp     x29, x30, [sp, #-0x10]!
  10017892c  mov     x29, sp
  100178930  sub     sp, sp, #0x10
  100178934  str     x0, [sp]
  100178938  adrp    x8, #0x10041f000
  10017893c  ldr     x8, [x8, #0x410]
  100178940  str     x8, [sp, #8]
  100178944  adrp    x8, #0x10041d000
  100178948  nop
  10017894c  ldr     x1, [x8, #0xcc8]
  100178950  adrp    x2, #0x1003c9000
  100178954  add     x2, x2, #0x890                           ; @"_ge"
  100178958  mov     x0, sp
  10017895c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_ge"]
  100178960  mov     sp, x29
  100178964  ldp     x29, x30, [sp], #0x10
  100178968  ret

; ======================================================================
; -[TAGGreaterEquals evaluateWithArg0:arg1:parameters:]
; address 0x10017896c  size 144  kind objc
; ======================================================================
  10017896c  stp     x29, x30, [sp, #-0x10]!
  100178970  mov     x29, sp
  100178974  stp     x20, x19, [sp, #-0x10]!
  100178978  stp     x22, x21, [sp, #-0x10]!
  10017897c  mov     x20, x3
  100178980  mov     x21, x2
  100178984  mov     x0, x21
  100178988  bl      _objc_retain
  10017898c  mov     x19, x0
  100178990  mov     x0, x20
  100178994  bl      _objc_retain
  100178998  mov     x20, x0
  10017899c  adrp    x8, #0x100419000
  1001789a0  nop
  1001789a4  ldr     x1, [x8, #0x4e8]
  1001789a8  mov     x0, x21
  1001789ac  mov     x2, x20
  1001789b0  bl      _objc_msgSend                            ; [arg1 compare:arg2]
  1001789b4  mov     x21, x0
  1001789b8  mov     x0, x20
  1001789bc  bl      _objc_release
  1001789c0  mov     x0, x19
  1001789c4  bl      _objc_release
  1001789c8  cmp     x21, #0
  1001789cc  cset    w0, ge
  1001789d0  ldp     x22, x21, [sp], #0x10
  1001789d4  ldp     x20, x19, [sp], #0x10
  1001789d8  ldp     x29, x30, [sp], #0x10
  1001789dc  ret
  1001789e0  mov     x21, x0
  1001789e4  mov     x0, x20
  1001789e8  bl      _objc_release
  1001789ec  mov     x0, x19
  1001789f0  bl      _objc_release
  1001789f4  mov     x0, x21
  1001789f8  bl      __Unwind_Resume                          ; Unwind_Resume()
