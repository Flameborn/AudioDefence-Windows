// unit TAGPredicate — 6 functions
//   0x100178ee8     220  -[TAGPredicate initWithFunctionId:]
//   0x100178fc4     792  -[TAGPredicate evaluate:]
//   0x1001792dc       8  -[TAGPredicate isCacheable]
//   0x1001792e4      44  -[TAGPredicate evaluateNoDefaultValues:arg1:parameters:]
//   0x100179310      44  +[TAGPredicate arg0Key]
//   0x10017933c      44  +[TAGPredicate arg1Key]

; ======================================================================
; -[TAGPredicate initWithFunctionId:]
; address 0x100178ee8  size 220  kind objc
; ======================================================================
  100178ee8  stp     x29, x30, [sp, #-0x10]!
  100178eec  mov     x29, sp
  100178ef0  stp     x20, x19, [sp, #-0x10]!
  100178ef4  stp     x22, x21, [sp, #-0x10]!
  100178ef8  sub     sp, sp, #0x20
  100178efc  mov     x20, x0
  100178f00  mov     x0, x2
  100178f04  bl      _objc_retain
  100178f08  mov     x19, x0
  100178f0c  adrp    x8, #0x10041e000
  100178f10  ldr     x0, [x8, #0x550]                         ; class NSSet
  100178f14  adrp    x8, #0x10041b000
  100178f18  nop
  100178f1c  ldr     x1, [x8, #0xb68]
  100178f20  adrp    x8, #0x1003c9000
  100178f24  add     x8, x8, #0x730                           ; @"arg1"
  100178f28  stp     x8, xzr, [sp]
  100178f2c  adrp    x2, #0x1003c9000
  100178f30  add     x2, x2, #0x250                           ; @"arg0"
  100178f34  bl      _objc_msgSend                            ; [NSSet setWithObjects:@"arg0", @"arg1", nil]
  100178f38  mov     x29, x29
  100178f3c  bl      _objc_retainAutoreleasedReturnValue
  100178f40  mov     x21, x0
  100178f44  str     x20, [sp, #0x10]
  100178f48  adrp    x8, #0x10041f000
  100178f4c  ldr     x8, [x8, #0x430]
  100178f50  str     x8, [sp, #0x18]
  100178f54  adrp    x8, #0x10041d000
  100178f58  nop
  100178f5c  ldr     x1, [x8, #0xc10]
  100178f60  add     x0, sp, #0x10
  100178f64  mov     x2, x19
  100178f68  mov     x3, x21
  100178f6c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:arg1 requiredKeys:[NSSet setWithObjects:@"arg0", @"arg1", nil]]
  100178f70  mov     x20, x0
  100178f74  mov     x0, x21
  100178f78  bl      _objc_release
  100178f7c  mov     x0, x19
  100178f80  bl      _objc_release
  100178f84  mov     x0, x20
  100178f88  sub     sp, x29, #0x20
  100178f8c  ldp     x22, x21, [sp], #0x10
  100178f90  ldp     x20, x19, [sp], #0x10
  100178f94  ldp     x29, x30, [sp], #0x10
  100178f98  ret
  100178f9c  mov     x22, x0
  100178fa0  mov     x0, x20
  100178fa4  b       loc_100178fb0
  100178fa8  mov     x22, x0
  100178fac  mov     x0, x21
loc_100178fb0:
  100178fb0  bl      _objc_release
  100178fb4  mov     x0, x19
  100178fb8  bl      _objc_release
  100178fbc  mov     x0, x22
  100178fc0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGPredicate evaluate:]
; address 0x100178fc4  size 792  kind objc
; ======================================================================
  100178fc4  stp     x29, x30, [sp, #-0x10]!
  100178fc8  mov     x29, sp
  100178fcc  stp     x20, x19, [sp, #-0x10]!
  100178fd0  stp     x22, x21, [sp, #-0x10]!
  100178fd4  stp     x24, x23, [sp, #-0x10]!
  100178fd8  stp     x26, x25, [sp, #-0x10]!
  100178fdc  stp     x28, x27, [sp, #-0x10]!
  100178fe0  sub     sp, sp, #0xf0
  100178fe4  str     x0, [sp, #0x10]
  100178fe8  adrp    x8, #0x1003b0000
  100178fec  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100178ff0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100178ff4  stur    x8, [x29, #-0x58]
  100178ff8  mov     x0, x2
  100178ffc  bl      _objc_retain
  100179000  mov     x19, x0
  100179004  stp     xzr, xzr, [x29, #-0x68]
  100179008  stp     xzr, xzr, [x29, #-0x78]
  10017900c  stp     xzr, xzr, [x29, #-0x88]
  100179010  stp     xzr, xzr, [x29, #-0x98]
  100179014  adrp    x8, #0x10041b000
  100179018  nop
  10017901c  ldr     x1, [x8, #0x488]
  100179020  bl      _objc_msgSend                            ; [arg1 allValues]
  100179024  str     x19, [sp, #0x20]
  100179028  mov     x29, x29
  10017902c  bl      _objc_retainAutoreleasedReturnValue
  100179030  mov     x21, x0
  100179034  adrp    x8, #0x100416000
  100179038  nop
  10017903c  ldr     x22, [x8, #0xe00]
  100179040  sub     x2, x29, #0x98
  100179044  add     x3, sp, #0x28
  100179048  mov     x4, #0x10
  10017904c  mov     x1, x22
  100179050  bl      _objc_msgSend                            ; [[arg1 allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  100179054  mov     x23, x0
  100179058  cbz     x23, loc_1001790f4                       ; if ([[arg1 allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  10017905c  ldur    x8, [x29, #-0x88]
  100179060  ldr     x28, [x8]
  100179064  adrp    x8, #0x10041c000
  100179068  nop
  10017906c  ldr     x24, [x8, #0xa98]
  100179070  adrp    x20, #0x10041e000
  100179074  sub     x8, x29, #0x98
  100179078  str     x8, [sp, #0x18]
  10017907c  add     x26, sp, #0x28
loc_100179080:
  100179080  mov     x19, #0
loc_100179084:
  100179084  ldur    x8, [x29, #-0x88]
  100179088  ldr     x8, [x8]
  10017908c  cmp     x8, x28
  100179090  b.eq    loc_10017909c                            ; if (x8 == x28)
  100179094  mov     x0, x21
  100179098  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 allValues])
loc_10017909c:
  10017909c  ldur    x8, [x29, #-0x90]
  1001790a0  ldr     x25, [x8, x19, lsl #3]
  1001790a4  ldr     x0, [x20, #0xb58]                        ; class TAGTypes
  1001790a8  mov     x1, x24
  1001790ac  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  1001790b0  mov     x29, x29
  1001790b4  bl      _objc_retainAutoreleasedReturnValue
  1001790b8  mov     x27, x0
  1001790bc  bl      _objc_release
  1001790c0  cmp     x25, x27
  1001790c4  b.eq    loc_1001791d8                            ; if (x25 == [TAGTypes defaultValue])
  1001790c8  add     x19, x19, #1
  1001790cc  cmp     x19, x23
  1001790d0  b.lo    loc_100179084                            ; if ((x19 + 1) <u [[arg1 allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  1001790d4  mov     x4, #0x10
  1001790d8  mov     x0, x21
  1001790dc  mov     x1, x22
  1001790e0  ldr     x2, [sp, #0x18]
  1001790e4  mov     x3, x26
  1001790e8  bl      _objc_msgSend                            ; [[arg1 allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  1001790ec  mov     x23, x0
  1001790f0  cbnz    x23, loc_100179080                       ; if ([[arg1 allValues] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_1001790f4:
  1001790f4  mov     x0, x21
  1001790f8  bl      _objc_release
  1001790fc  adrp    x8, #0x100417000
  100179100  nop
  100179104  ldr     x22, [x8, #0x40]
  100179108  adrp    x2, #0x1003c9000
  10017910c  add     x2, x2, #0x250                           ; @"arg0"
  100179110  ldr     x19, [sp, #0x20]
  100179114  mov     x0, x19
  100179118  mov     x1, x22
  10017911c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"arg0"]
  100179120  mov     x29, x29
  100179124  bl      _objc_retainAutoreleasedReturnValue
  100179128  mov     x21, x0
  10017912c  adrp    x2, #0x1003c9000
  100179130  add     x2, x2, #0x730                           ; @"arg1"
  100179134  mov     x0, x19
  100179138  mov     x1, x22
  10017913c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"arg1"]
  100179140  mov     x29, x29
  100179144  bl      _objc_retainAutoreleasedReturnValue
  100179148  mov     x22, x0
  10017914c  mov     w2, #0
  100179150  cbz     x21, loc_10017917c                       ; if ([arg1 objectForKey:@"arg0"] == 0)
  100179154  cbz     x22, loc_10017917c                       ; if ([arg1 objectForKey:@"arg1"] == 0)
  100179158  adrp    x8, #0x10041d000
  10017915c  nop
  100179160  ldr     x1, [x8, #0xcc0]
  100179164  ldr     x0, [sp, #0x10]
  100179168  mov     x2, x21
  10017916c  mov     x3, x22
  100179170  mov     x4, x19
  100179174  bl      _objc_msgSend                            ; [self evaluateNoDefaultValues:[arg1 objectForKey:@"arg0"] arg1:[arg1 objectForKey:@"arg1"] parameters:arg1]
  100179178  mov     x2, x0
loc_10017917c:
  10017917c  adrp    x8, #0x10041e000
  100179180  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  100179184  nop
  100179188  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  10017918c  adrp    x8, #0x10041d000
  100179190  nop
  100179194  ldr     x1, [x8, #0xab8]
  100179198  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:x2]
  10017919c  mov     x29, x29
  1001791a0  bl      _objc_retainAutoreleasedReturnValue
  1001791a4  mov     x23, x0
  1001791a8  adrp    x8, #0x10041d000
  1001791ac  nop
  1001791b0  ldr     x1, [x8, #0xc30]
  1001791b4  mov     x0, x20
  1001791b8  mov     x2, x23
  1001791bc  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[TAGBoolean booleanWithBool:x2]]
  1001791c0  mov     x29, x29
  1001791c4  bl      _objc_retainAutoreleasedReturnValue
  1001791c8  mov     x20, x0
  1001791cc  mov     x0, x23
  1001791d0  bl      _objc_release
  1001791d4  b       loc_10017922c
loc_1001791d8:
  1001791d8  ldr     x20, [x20, #0xb58]                       ; class TAGTypes
  1001791dc  adrp    x8, #0x10041e000
  1001791e0  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  1001791e4  adrp    x8, #0x10041d000
  1001791e8  nop
  1001791ec  ldr     x1, [x8, #0xab8]
  1001791f0  mov     w2, #0
  1001791f4  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:0]
  1001791f8  mov     x29, x29
  1001791fc  bl      _objc_retainAutoreleasedReturnValue
  100179200  mov     x22, x0
  100179204  adrp    x8, #0x10041d000
  100179208  nop
  10017920c  ldr     x1, [x8, #0xc30]
  100179210  mov     x0, x20
  100179214  mov     x2, x22
  100179218  ldr     x19, [sp, #0x20]
  10017921c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[TAGBoolean booleanWithBool:0]]
  100179220  mov     x29, x29
  100179224  bl      _objc_retainAutoreleasedReturnValue
  100179228  mov     x20, x0
loc_10017922c:
  10017922c  mov     x0, x22
  100179230  bl      _objc_release
  100179234  mov     x0, x21
  100179238  bl      _objc_release
  10017923c  mov     x0, x19
  100179240  bl      _objc_release
  100179244  adrp    x8, #0x1003b0000
  100179248  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10017924c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100179250  ldur    x9, [x29, #-0x58]
  100179254  sub     x8, x8, x9
  100179258  cbnz    x8, loc_100179280                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017925c  mov     x0, x20
  100179260  sub     sp, x29, #0x50
  100179264  ldp     x28, x27, [sp], #0x10
  100179268  ldp     x26, x25, [sp], #0x10
  10017926c  ldp     x24, x23, [sp], #0x10
  100179270  ldp     x22, x21, [sp], #0x10
  100179274  ldp     x20, x19, [sp], #0x10
  100179278  ldp     x29, x30, [sp], #0x10
  10017927c  b       _objc_autoreleaseReturnValue
loc_100179280:
  100179280  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100179284  b       loc_1001792b0
  100179288  b       loc_1001792b0
  10017928c  str     x19, [sp, #0x20]
  100179290  mov     x20, x0
  100179294  b       loc_1001792cc
  100179298  b       loc_1001792b0
  10017929c  b       loc_1001792b8
  1001792a0  mov     x20, x0
  1001792a4  mov     x0, x23
  1001792a8  bl      _objc_release
  1001792ac  b       loc_1001792bc
loc_1001792b0:
  1001792b0  mov     x20, x0
  1001792b4  b       loc_1001792c4
loc_1001792b8:
  1001792b8  mov     x20, x0
loc_1001792bc:
  1001792bc  mov     x0, x22
  1001792c0  bl      _objc_release
loc_1001792c4:
  1001792c4  mov     x0, x21
  1001792c8  bl      _objc_release
loc_1001792cc:
  1001792cc  ldr     x0, [sp, #0x20]
  1001792d0  bl      _objc_release
  1001792d4  mov     x0, x20
  1001792d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGPredicate isCacheable]
; address 0x1001792dc  size 8  kind objc
; ======================================================================
  1001792dc  mov     w0, #1
  1001792e0  ret

; ======================================================================
; -[TAGPredicate evaluateNoDefaultValues:arg1:parameters:]
; address 0x1001792e4  size 44  kind objc
; ======================================================================
  1001792e4  stp     x29, x30, [sp, #-0x10]!
  1001792e8  mov     x29, sp
  1001792ec  mov     x8, x1
  1001792f0  adrp    x9, #0x10041b000
  1001792f4  nop
  1001792f8  ldr     x1, [x9, #0xd68]
  1001792fc  mov     x2, x8
  100179300  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  100179304  mov     w0, #0
  100179308  ldp     x29, x30, [sp], #0x10
  10017930c  ret

; ======================================================================
; +[TAGPredicate arg0Key]
; address 0x100179310  size 44  kind objc
; ======================================================================
  100179310  stp     x29, x30, [sp, #-0x10]!
  100179314  mov     x29, sp
  100179318  stp     x20, x19, [sp, #-0x10]!
  10017931c  adrp    x19, #0x1003c9000
  100179320  add     x19, x19, #0x250                         ; @"arg0"
  100179324  mov     x0, x19
  100179328  bl      _objc_retainAutorelease
  10017932c  mov     x0, x19
  100179330  ldp     x20, x19, [sp], #0x10
  100179334  ldp     x29, x30, [sp], #0x10
  100179338  ret

; ======================================================================
; +[TAGPredicate arg1Key]
; address 0x10017933c  size 44  kind objc
; ======================================================================
  10017933c  stp     x29, x30, [sp, #-0x10]!
  100179340  mov     x29, sp
  100179344  stp     x20, x19, [sp, #-0x10]!
  100179348  adrp    x19, #0x1003c9000
  10017934c  add     x19, x19, #0x730                         ; @"arg1"
  100179350  mov     x0, x19
  100179354  bl      _objc_retainAutorelease
  100179358  mov     x0, x19
  10017935c  ldp     x20, x19, [sp], #0x10
  100179360  ldp     x29, x30, [sp], #0x10
  100179364  ret
