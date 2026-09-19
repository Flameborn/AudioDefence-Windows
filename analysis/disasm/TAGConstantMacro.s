// unit TAGConstantMacro — 5 functions
//   0x100173884      44  +[TAGConstantMacro functionId]
//   0x1001738b0     184  -[TAGConstantMacro init]
//   0x100173968      44  +[TAGConstantMacro valueKey]
//   0x100173994       8  -[TAGConstantMacro isCacheable]
//   0x10017399c      56  -[TAGConstantMacro evaluate:]

; ======================================================================
; +[TAGConstantMacro functionId]
; address 0x100173884  size 44  kind objc
; ======================================================================
  100173884  stp     x29, x30, [sp, #-0x10]!
  100173888  mov     x29, sp
  10017388c  stp     x20, x19, [sp, #-0x10]!
  100173890  adrp    x19, #0x1003c9000
  100173894  add     x19, x19, #0x190                         ; @"_c"
  100173898  mov     x0, x19
  10017389c  bl      _objc_retainAutorelease
  1001738a0  mov     x0, x19
  1001738a4  ldp     x20, x19, [sp], #0x10
  1001738a8  ldp     x29, x30, [sp], #0x10
  1001738ac  ret

; ======================================================================
; -[TAGConstantMacro init]
; address 0x1001738b0  size 184  kind objc
; ======================================================================
  1001738b0  stp     x29, x30, [sp, #-0x10]!
  1001738b4  mov     x29, sp
  1001738b8  stp     x20, x19, [sp, #-0x10]!
  1001738bc  stp     x22, x21, [sp, #-0x10]!
  1001738c0  sub     sp, sp, #0x10
  1001738c4  mov     x19, x0
  1001738c8  adrp    x8, #0x10041e000
  1001738cc  ldr     x0, [x8, #0x550]                         ; class NSSet
  1001738d0  adrp    x8, #0x10041b000
  1001738d4  nop
  1001738d8  ldr     x1, [x8, #0x7e0]
  1001738dc  adrp    x2, #0x1003ba000
  1001738e0  add     x2, x2, #0x1b0                           ; @"value"
  1001738e4  bl      _objc_msgSend                            ; [NSSet setWithObject:@"value"]
  1001738e8  mov     x29, x29
  1001738ec  bl      _objc_retainAutoreleasedReturnValue
  1001738f0  mov     x20, x0
  1001738f4  str     x19, [sp]
  1001738f8  adrp    x8, #0x10041f000
  1001738fc  ldr     x8, [x8, #0x360]
  100173900  str     x8, [sp, #8]
  100173904  adrp    x8, #0x10041d000
  100173908  nop
  10017390c  ldr     x1, [x8, #0xc10]
  100173910  adrp    x2, #0x1003c9000
  100173914  add     x2, x2, #0x190                           ; @"_c"
  100173918  mov     x0, sp
  10017391c  mov     x3, x20
  100173920  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_c" requiredKeys:[NSSet setWithObject:@"value"]]
  100173924  mov     x19, x0
  100173928  mov     x0, x20
  10017392c  bl      _objc_release
  100173930  mov     x0, x19
  100173934  sub     sp, x29, #0x20
  100173938  ldp     x22, x21, [sp], #0x10
  10017393c  ldp     x20, x19, [sp], #0x10
  100173940  ldp     x29, x30, [sp], #0x10
  100173944  ret
  100173948  mov     x21, x0
  10017394c  mov     x0, x19
  100173950  b       loc_10017395c
  100173954  mov     x21, x0
  100173958  mov     x0, x20
loc_10017395c:
  10017395c  bl      _objc_release
  100173960  mov     x0, x21
  100173964  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGConstantMacro valueKey]
; address 0x100173968  size 44  kind objc
; ======================================================================
  100173968  stp     x29, x30, [sp, #-0x10]!
  10017396c  mov     x29, sp
  100173970  stp     x20, x19, [sp, #-0x10]!
  100173974  adrp    x19, #0x1003ba000
  100173978  add     x19, x19, #0x1b0                         ; @"value"
  10017397c  mov     x0, x19
  100173980  bl      _objc_retainAutorelease
  100173984  mov     x0, x19
  100173988  ldp     x20, x19, [sp], #0x10
  10017398c  ldp     x29, x30, [sp], #0x10
  100173990  ret

; ======================================================================
; -[TAGConstantMacro isCacheable]
; address 0x100173994  size 8  kind objc
; ======================================================================
  100173994  mov     w0, #1
  100173998  ret

; ======================================================================
; -[TAGConstantMacro evaluate:]
; address 0x10017399c  size 56  kind objc
; ======================================================================
  10017399c  stp     x29, x30, [sp, #-0x10]!
  1001739a0  mov     x29, sp
  1001739a4  adrp    x8, #0x100417000
  1001739a8  nop
  1001739ac  ldr     x1, [x8, #0x40]
  1001739b0  adrp    x8, #0x1003ba000
  1001739b4  add     x8, x8, #0x1b0                           ; @"value"
  1001739b8  mov     x0, x2
  1001739bc  mov     x2, x8
  1001739c0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"value"]
  1001739c4  mov     x29, x29
  1001739c8  bl      _objc_retainAutoreleasedReturnValue
  1001739cc  ldp     x29, x30, [sp], #0x10
  1001739d0  b       _objc_autoreleaseReturnValue
