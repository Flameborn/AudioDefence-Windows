// unit TAGContains — 3 functions
//   0x1001785d0      44  +[TAGContains functionId]
//   0x1001785fc      68  -[TAGContains init]
//   0x100178640     172  -[TAGContains evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGContains functionId]
; address 0x1001785d0  size 44  kind objc
; ======================================================================
  1001785d0  stp     x29, x30, [sp, #-0x10]!
  1001785d4  mov     x29, sp
  1001785d8  stp     x20, x19, [sp, #-0x10]!
  1001785dc  adrp    x19, #0x1003c9000
  1001785e0  add     x19, x19, #0x830                         ; @"_cn"
  1001785e4  mov     x0, x19
  1001785e8  bl      _objc_retainAutorelease
  1001785ec  mov     x0, x19
  1001785f0  ldp     x20, x19, [sp], #0x10
  1001785f4  ldp     x29, x30, [sp], #0x10
  1001785f8  ret

; ======================================================================
; -[TAGContains init]
; address 0x1001785fc  size 68  kind objc
; ======================================================================
  1001785fc  stp     x29, x30, [sp, #-0x10]!
  100178600  mov     x29, sp
  100178604  sub     sp, sp, #0x10
  100178608  str     x0, [sp]
  10017860c  adrp    x8, #0x10041f000
  100178610  ldr     x8, [x8, #0x3f8]
  100178614  str     x8, [sp, #8]
  100178618  adrp    x8, #0x10041d000
  10017861c  nop
  100178620  ldr     x1, [x8, #0xcc8]
  100178624  adrp    x2, #0x1003c9000
  100178628  add     x2, x2, #0x830                           ; @"_cn"
  10017862c  mov     x0, sp
  100178630  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_cn"]
  100178634  mov     sp, x29
  100178638  ldp     x29, x30, [sp], #0x10
  10017863c  ret

; ======================================================================
; -[TAGContains evaluateWithArg0:arg1:parameters:]
; address 0x100178640  size 172  kind objc
; ======================================================================
  100178640  stp     x29, x30, [sp, #-0x10]!
  100178644  mov     x29, sp
  100178648  stp     x20, x19, [sp, #-0x10]!
  10017864c  stp     x22, x21, [sp, #-0x10]!
  100178650  mov     x20, x3
  100178654  mov     x0, x2
  100178658  bl      _objc_retain
  10017865c  mov     x19, x0
  100178660  mov     x0, x20
  100178664  bl      _objc_retain
  100178668  mov     x20, x0
  10017866c  adrp    x8, #0x100417000
  100178670  nop
  100178674  ldr     x1, [x8, #0xc58]
  100178678  bl      _objc_msgSend                            ; [arg2 length]
  10017867c  cbz     x0, loc_1001786a8                        ; if ([arg2 length] == 0)
  100178680  adrp    x8, #0x100417000
  100178684  nop
  100178688  ldr     x1, [x8, #0x58]
  10017868c  mov     x0, x19
  100178690  mov     x2, x20
  100178694  bl      _objc_msgSend                            ; [arg1 rangeOfString:arg2]
  100178698  mov     x8, #0x7fffffffffffffff
  10017869c  cmp     x0, x8
  1001786a0  cset    w21, ne
  1001786a4  b       loc_1001786ac
loc_1001786a8:
  1001786a8  mov     w21, #1
loc_1001786ac:
  1001786ac  mov     x0, x20
  1001786b0  bl      _objc_release
  1001786b4  mov     x0, x19
  1001786b8  bl      _objc_release
  1001786bc  and     w0, w21, #1
  1001786c0  ldp     x22, x21, [sp], #0x10
  1001786c4  ldp     x20, x19, [sp], #0x10
  1001786c8  ldp     x29, x30, [sp], #0x10
  1001786cc  ret
  1001786d0  mov     x21, x0
  1001786d4  mov     x0, x20
  1001786d8  bl      _objc_release
  1001786dc  mov     x0, x19
  1001786e0  bl      _objc_release
  1001786e4  mov     x0, x21
  1001786e8  bl      __Unwind_Resume                          ; Unwind_Resume()
