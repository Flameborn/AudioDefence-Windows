// unit TAGStartsWith — 3 functions
//   0x1001795e0      44  +[TAGStartsWith functionId]
//   0x10017960c      68  -[TAGStartsWith init]
//   0x100179650     164  -[TAGStartsWith evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGStartsWith functionId]
; address 0x1001795e0  size 44  kind objc
; ======================================================================
  1001795e0  stp     x29, x30, [sp, #-0x10]!
  1001795e4  mov     x29, sp
  1001795e8  stp     x20, x19, [sp, #-0x10]!
  1001795ec  adrp    x19, #0x1003c9000
  1001795f0  add     x19, x19, #0x950                         ; @"_sw"
  1001795f4  mov     x0, x19
  1001795f8  bl      _objc_retainAutorelease
  1001795fc  mov     x0, x19
  100179600  ldp     x20, x19, [sp], #0x10
  100179604  ldp     x29, x30, [sp], #0x10
  100179608  ret

; ======================================================================
; -[TAGStartsWith init]
; address 0x10017960c  size 68  kind objc
; ======================================================================
  10017960c  stp     x29, x30, [sp, #-0x10]!
  100179610  mov     x29, sp
  100179614  sub     sp, sp, #0x10
  100179618  str     x0, [sp]
  10017961c  adrp    x8, #0x10041f000
  100179620  ldr     x8, [x8, #0x440]
  100179624  str     x8, [sp, #8]
  100179628  adrp    x8, #0x10041d000
  10017962c  nop
  100179630  ldr     x1, [x8, #0xcc8]
  100179634  adrp    x2, #0x1003c9000
  100179638  add     x2, x2, #0x950                           ; @"_sw"
  10017963c  mov     x0, sp
  100179640  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_sw"]
  100179644  mov     sp, x29
  100179648  ldp     x29, x30, [sp], #0x10
  10017964c  ret

; ======================================================================
; -[TAGStartsWith evaluateWithArg0:arg1:parameters:]
; address 0x100179650  size 164  kind objc
; ======================================================================
  100179650  stp     x29, x30, [sp, #-0x10]!
  100179654  mov     x29, sp
  100179658  stp     x20, x19, [sp, #-0x10]!
  10017965c  stp     x22, x21, [sp, #-0x10]!
  100179660  mov     x20, x3
  100179664  mov     x0, x2
  100179668  bl      _objc_retain
  10017966c  mov     x19, x0
  100179670  mov     x0, x20
  100179674  bl      _objc_retain
  100179678  mov     x20, x0
  10017967c  adrp    x8, #0x100417000
  100179680  nop
  100179684  ldr     x1, [x8, #0xc58]
  100179688  bl      _objc_msgSend                            ; [arg2 length]
  10017968c  cbz     x0, loc_1001796cc                        ; if ([arg2 length] == 0)
  100179690  adrp    x8, #0x10041a000
  100179694  nop
  100179698  ldr     x1, [x8, #0x2d0]
  10017969c  mov     x0, x19
  1001796a0  mov     x2, x20
  1001796a4  bl      _objc_msgSend                            ; [arg1 hasPrefix:arg2]
  1001796a8  mov     x21, x0
  1001796ac  b       loc_1001796d0
  1001796b0  mov     x21, x0
  1001796b4  mov     x0, x20
  1001796b8  bl      _objc_release
  1001796bc  mov     x0, x19
  1001796c0  bl      _objc_release
  1001796c4  mov     x0, x21
  1001796c8  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1001796cc:
  1001796cc  mov     w21, #1
loc_1001796d0:
  1001796d0  mov     x0, x20
  1001796d4  bl      _objc_release
  1001796d8  mov     x0, x19
  1001796dc  bl      _objc_release
  1001796e0  mov     x0, x21
  1001796e4  ldp     x22, x21, [sp], #0x10
  1001796e8  ldp     x20, x19, [sp], #0x10
  1001796ec  ldp     x29, x30, [sp], #0x10
  1001796f0  ret
