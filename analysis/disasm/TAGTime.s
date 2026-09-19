// unit TAGTime — 4 functions
//   0x1001783ac      44  +[TAGTime functionId]
//   0x1001783d8     176  -[TAGTime init]
//   0x100178488       8  -[TAGTime isCacheable]
//   0x100178490     320  -[TAGTime evaluate:]

; ======================================================================
; +[TAGTime functionId]
; address 0x1001783ac  size 44  kind objc
; ======================================================================
  1001783ac  stp     x29, x30, [sp, #-0x10]!
  1001783b0  mov     x29, sp
  1001783b4  stp     x20, x19, [sp, #-0x10]!
  1001783b8  adrp    x19, #0x1003c9000
  1001783bc  add     x19, x19, #0x810                         ; @"_t"
  1001783c0  mov     x0, x19
  1001783c4  bl      _objc_retainAutorelease
  1001783c8  mov     x0, x19
  1001783cc  ldp     x20, x19, [sp], #0x10
  1001783d0  ldp     x29, x30, [sp], #0x10
  1001783d4  ret

; ======================================================================
; -[TAGTime init]
; address 0x1001783d8  size 176  kind objc
; ======================================================================
  1001783d8  stp     x29, x30, [sp, #-0x10]!
  1001783dc  mov     x29, sp
  1001783e0  stp     x20, x19, [sp, #-0x10]!
  1001783e4  stp     x22, x21, [sp, #-0x10]!
  1001783e8  sub     sp, sp, #0x10
  1001783ec  mov     x20, x0
  1001783f0  adrp    x8, #0x10041e000
  1001783f4  ldr     x0, [x8, #0x550]                         ; class NSSet
  1001783f8  adrp    x8, #0x100418000
  1001783fc  nop
  100178400  ldr     x1, [x8, #0x360]
  100178404  bl      _objc_msgSend                            ; [NSSet set]
  100178408  mov     x29, x29
  10017840c  bl      _objc_retainAutoreleasedReturnValue
  100178410  mov     x19, x0
  100178414  str     x20, [sp]
  100178418  adrp    x8, #0x10041f000
  10017841c  ldr     x8, [x8, #0x3f0]
  100178420  str     x8, [sp, #8]
  100178424  adrp    x8, #0x10041d000
  100178428  nop
  10017842c  ldr     x1, [x8, #0xc10]
  100178430  adrp    x2, #0x1003c9000
  100178434  add     x2, x2, #0x810                           ; @"_t"
  100178438  mov     x0, sp
  10017843c  mov     x3, x19
  100178440  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_t" requiredKeys:[NSSet set]]
  100178444  mov     x20, x0
  100178448  mov     x0, x19
  10017844c  bl      _objc_release
  100178450  mov     x0, x20
  100178454  sub     sp, x29, #0x20
  100178458  ldp     x22, x21, [sp], #0x10
  10017845c  ldp     x20, x19, [sp], #0x10
  100178460  ldp     x29, x30, [sp], #0x10
  100178464  ret
  100178468  mov     x21, x0
  10017846c  mov     x0, x20
  100178470  b       loc_10017847c
  100178474  mov     x21, x0
  100178478  mov     x0, x19
loc_10017847c:
  10017847c  bl      _objc_release
  100178480  mov     x0, x21
  100178484  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGTime isCacheable]
; address 0x100178488  size 8  kind objc
; ======================================================================
  100178488  mov     w0, #0
  10017848c  ret

; ======================================================================
; -[TAGTime evaluate:]
; address 0x100178490  size 320  kind objc
; ======================================================================
  100178490  stp     x29, x30, [sp, #-0x10]!
  100178494  mov     x29, sp
  100178498  stp     x20, x19, [sp, #-0x10]!
  10017849c  stp     x22, x21, [sp, #-0x10]!
  1001784a0  adrp    x21, #0x10041d000
  1001784a4  ldr     x19, [x21, #0xf68]                       ; class NSNumber
  1001784a8  adrp    x8, #0x10041e000
  1001784ac  ldr     x0, [x8, #0x38]                          ; class NSDate
  1001784b0  adrp    x8, #0x100418000
  1001784b4  nop
  1001784b8  ldr     x1, [x8, #0x158]
  1001784bc  bl      _objc_msgSend                            ; [NSDate date]
  1001784c0  mov     x29, x29
  1001784c4  bl      _objc_retainAutoreleasedReturnValue
  1001784c8  mov     x20, x0
  1001784cc  adrp    x8, #0x10041d000
  1001784d0  nop
  1001784d4  ldr     x1, [x8, #0x5c8]
  1001784d8  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSince1970]
  1001784dc  nop
  1001784e0  ldr     d1, #0x100181ca8                         ; d1 = 1000.0
  1001784e4  fmul    d0, d0, d1
  1001784e8  adrp    x8, #0x100419000
  1001784ec  nop
  1001784f0  ldr     x1, [x8, #0x60]
  1001784f4  mov     x0, x19
  1001784f8  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:([[NSDate date] timeIntervalSince1970] * 1000)]
  1001784fc  mov     x29, x29
  100178500  bl      _objc_retainAutoreleasedReturnValue
  100178504  mov     x19, x0
  100178508  mov     x0, x20
  10017850c  bl      _objc_release
  100178510  ldr     x20, [x21, #0xf68]                       ; class NSNumber
  100178514  adrp    x8, #0x10041c000
  100178518  nop
  10017851c  ldr     x1, [x8, #0xc70]
  100178520  mov     x0, x19
  100178524  bl      _objc_msgSend                            ; [[NSNumber numberWithDouble:([[NSDate date] timeIntervalSince1970] * 1000)] longLongValue]
  100178528  mov     x2, x0
  10017852c  adrp    x8, #0x10041c000
  100178530  nop
  100178534  ldr     x1, [x8, #0x800]
  100178538  mov     x0, x20
  10017853c  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:[[NSNumber numberWithDouble:([[NSDate date] timeIntervalSince1970] * 1000)] longLongValue]]
  100178540  mov     x29, x29
  100178544  bl      _objc_retainAutoreleasedReturnValue
  100178548  mov     x20, x0
  10017854c  adrp    x8, #0x10041e000
  100178550  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100178554  adrp    x8, #0x10041d000
  100178558  nop
  10017855c  ldr     x1, [x8, #0xc30]
  100178560  mov     x2, x20
  100178564  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[NSNumber numberWithLongLong:[[NSNumber numberWithDouble:([[NSDate date] timeIntervalSince1970] * 1000)] longLongValue]]]
  100178568  mov     x29, x29
  10017856c  bl      _objc_retainAutoreleasedReturnValue
  100178570  mov     x21, x0
  100178574  mov     x0, x20
  100178578  bl      _objc_release
  10017857c  mov     x0, x19
  100178580  bl      _objc_release
  100178584  mov     x0, x21
  100178588  ldp     x22, x21, [sp], #0x10
  10017858c  ldp     x20, x19, [sp], #0x10
  100178590  ldp     x29, x30, [sp], #0x10
  100178594  b       _objc_autoreleaseReturnValue
  100178598  mov     x21, x0
  10017859c  b       loc_1001785c8
  1001785a0  mov     x21, x0
  1001785a4  mov     x0, x20
  1001785a8  b       loc_1001785c4
  1001785ac  mov     x21, x0
  1001785b0  b       loc_1001785c0
  1001785b4  mov     x21, x0
  1001785b8  mov     x0, x20
  1001785bc  bl      _objc_release
loc_1001785c0:
  1001785c0  mov     x0, x19
loc_1001785c4:
  1001785c4  bl      _objc_release
loc_1001785c8:
  1001785c8  mov     x0, x21
  1001785cc  bl      __Unwind_Resume                          ; Unwind_Resume()
