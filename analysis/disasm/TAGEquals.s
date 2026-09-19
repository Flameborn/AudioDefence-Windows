// unit TAGEquals — 3 functions
//   0x100178800      44  +[TAGEquals functionId]
//   0x10017882c      68  -[TAGEquals init]
//   0x100178870     140  -[TAGEquals evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGEquals functionId]
; address 0x100178800  size 44  kind objc
; ======================================================================
  100178800  stp     x29, x30, [sp, #-0x10]!
  100178804  mov     x29, sp
  100178808  stp     x20, x19, [sp, #-0x10]!
  10017880c  adrp    x19, #0x1003c9000
  100178810  add     x19, x19, #0x870                         ; @"_eq"
  100178814  mov     x0, x19
  100178818  bl      _objc_retainAutorelease
  10017881c  mov     x0, x19
  100178820  ldp     x20, x19, [sp], #0x10
  100178824  ldp     x29, x30, [sp], #0x10
  100178828  ret

; ======================================================================
; -[TAGEquals init]
; address 0x10017882c  size 68  kind objc
; ======================================================================
  10017882c  stp     x29, x30, [sp, #-0x10]!
  100178830  mov     x29, sp
  100178834  sub     sp, sp, #0x10
  100178838  str     x0, [sp]
  10017883c  adrp    x8, #0x10041f000
  100178840  ldr     x8, [x8, #0x408]
  100178844  str     x8, [sp, #8]
  100178848  adrp    x8, #0x10041d000
  10017884c  nop
  100178850  ldr     x1, [x8, #0xcc8]
  100178854  adrp    x2, #0x1003c9000
  100178858  add     x2, x2, #0x870                           ; @"_eq"
  10017885c  mov     x0, sp
  100178860  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_eq"]
  100178864  mov     sp, x29
  100178868  ldp     x29, x30, [sp], #0x10
  10017886c  ret

; ======================================================================
; -[TAGEquals evaluateWithArg0:arg1:parameters:]
; address 0x100178870  size 140  kind objc
; ======================================================================
  100178870  stp     x29, x30, [sp, #-0x10]!
  100178874  mov     x29, sp
  100178878  stp     x20, x19, [sp, #-0x10]!
  10017887c  stp     x22, x21, [sp, #-0x10]!
  100178880  mov     x20, x3
  100178884  mov     x21, x2
  100178888  mov     x0, x21
  10017888c  bl      _objc_retain
  100178890  mov     x19, x0
  100178894  mov     x0, x20
  100178898  bl      _objc_retain
  10017889c  mov     x20, x0
  1001788a0  adrp    x8, #0x100416000
  1001788a4  nop
  1001788a8  ldr     x1, [x8, #0xf58]
  1001788ac  mov     x0, x21
  1001788b0  mov     x2, x20
  1001788b4  bl      _objc_msgSend                            ; [arg1 isEqualToString:arg2]
  1001788b8  mov     x21, x0
  1001788bc  mov     x0, x20
  1001788c0  bl      _objc_release
  1001788c4  mov     x0, x19
  1001788c8  bl      _objc_release
  1001788cc  mov     x0, x21
  1001788d0  ldp     x22, x21, [sp], #0x10
  1001788d4  ldp     x20, x19, [sp], #0x10
  1001788d8  ldp     x29, x30, [sp], #0x10
  1001788dc  ret
  1001788e0  mov     x21, x0
  1001788e4  mov     x0, x20
  1001788e8  bl      _objc_release
  1001788ec  mov     x0, x19
  1001788f0  bl      _objc_release
  1001788f4  mov     x0, x21
  1001788f8  bl      __Unwind_Resume                          ; Unwind_Resume()
