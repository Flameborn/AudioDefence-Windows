// unit TAGStringPredicate — 3 functions
//   0x1001796f4      60  -[TAGStringPredicate initWithFunctionId:]
//   0x100179730     452  -[TAGStringPredicate evaluateNoDefaultValues:arg1:parameters:]
//   0x1001798f4      44  -[TAGStringPredicate evaluateWithArg0:arg1:parameters:]

; ======================================================================
; -[TAGStringPredicate initWithFunctionId:]
; address 0x1001796f4  size 60  kind objc
; ======================================================================
  1001796f4  stp     x29, x30, [sp, #-0x10]!
  1001796f8  mov     x29, sp
  1001796fc  sub     sp, sp, #0x10
  100179700  str     x0, [sp]
  100179704  adrp    x8, #0x10041f000
  100179708  ldr     x8, [x8, #0x448]
  10017970c  str     x8, [sp, #8]
  100179710  adrp    x8, #0x10041d000
  100179714  nop
  100179718  ldr     x1, [x8, #0xcc8]
  10017971c  mov     x0, sp
  100179720  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:arg1]
  100179724  mov     sp, x29
  100179728  ldp     x29, x30, [sp], #0x10
  10017972c  ret

; ======================================================================
; -[TAGStringPredicate evaluateNoDefaultValues:arg1:parameters:]
; address 0x100179730  size 452  kind objc
; ======================================================================
  100179730  stp     x29, x30, [sp, #-0x10]!
  100179734  mov     x29, sp
  100179738  stp     x20, x19, [sp, #-0x10]!
  10017973c  stp     x22, x21, [sp, #-0x10]!
  100179740  stp     x24, x23, [sp, #-0x10]!
  100179744  stp     x26, x25, [sp, #-0x10]!
  100179748  mov     x20, x4
  10017974c  mov     x19, x3
  100179750  mov     x23, x0
  100179754  mov     x0, x2
  100179758  bl      _objc_retain
  10017975c  mov     x21, x0
  100179760  mov     x0, x19
  100179764  bl      _objc_retain
  100179768  mov     x19, x0
  10017976c  mov     x0, x20
  100179770  bl      _objc_retain
  100179774  mov     x20, x0
  100179778  adrp    x26, #0x10041e000
  10017977c  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  100179780  adrp    x8, #0x10041d000
  100179784  nop
  100179788  ldr     x22, [x8, #0xc18]
  10017978c  mov     x1, x22
  100179790  mov     x2, x21
  100179794  bl      _objc_msgSend                            ; [TAGTypes valueToString:arg1]
  100179798  mov     x24, x0
  10017979c  mov     x0, x21
  1001797a0  bl      _objc_release
  1001797a4  mov     x0, x24
  1001797a8  bl      _objc_retainAutoreleasedReturnValue
  1001797ac  mov     x21, x0
  1001797b0  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  1001797b4  mov     x1, x22
  1001797b8  mov     x2, x19
  1001797bc  bl      _objc_msgSend                            ; [TAGTypes valueToString:arg2]
  1001797c0  mov     x29, x29
  1001797c4  bl      _objc_retainAutoreleasedReturnValue
  1001797c8  mov     x22, x0
  1001797cc  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  1001797d0  adrp    x8, #0x10041c000
  1001797d4  nop
  1001797d8  ldr     x25, [x8, #0xdf8]
  1001797dc  mov     x1, x25
  1001797e0  bl      _objc_msgSend                            ; [TAGTypes defaultString]
  1001797e4  mov     x29, x29
  1001797e8  bl      _objc_retainAutoreleasedReturnValue
  1001797ec  mov     x24, x0
  1001797f0  cmp     x21, x24
  1001797f4  b.eq    loc_100179850                            ; if ([TAGTypes valueToString:arg1] == [TAGTypes defaultString])
  1001797f8  ldr     x0, [x26, #0xb58]                        ; class TAGTypes
  1001797fc  mov     x1, x25
  100179800  bl      _objc_msgSend                            ; [TAGTypes defaultString]
  100179804  mov     x29, x29
  100179808  bl      _objc_retainAutoreleasedReturnValue
  10017980c  mov     x25, x0
  100179810  cmp     x22, x25
  100179814  b.eq    loc_100179858                            ; if ([TAGTypes valueToString:arg2] == [TAGTypes defaultString])
  100179818  adrp    x8, #0x10041d000
  10017981c  nop
  100179820  ldr     x1, [x8, #0xcb8]
  100179824  mov     x0, x23
  100179828  mov     x2, x21
  10017982c  mov     x3, x22
  100179830  mov     x4, x20
  100179834  bl      _objc_msgSend                            ; [self evaluateWithArg0:[TAGTypes valueToString:arg1] arg1:[TAGTypes valueToString:arg2] parameters:arg3]
  100179838  mov     x23, x0
  10017983c  b       loc_10017985c
  100179840  mov     x23, x0
  100179844  mov     x0, x25
  100179848  bl      _objc_release
  10017984c  b       loc_1001798c4
loc_100179850:
  100179850  mov     w23, #0
  100179854  b       loc_100179864
loc_100179858:
  100179858  mov     w23, #0
loc_10017985c:
  10017985c  mov     x0, x25
  100179860  bl      _objc_release
loc_100179864:
  100179864  mov     x0, x24
  100179868  bl      _objc_release
  10017986c  mov     x0, x22
  100179870  bl      _objc_release
  100179874  mov     x0, x21
  100179878  bl      _objc_release
  10017987c  mov     x0, x20
  100179880  bl      _objc_release
  100179884  mov     x0, x19
  100179888  bl      _objc_release
  10017988c  mov     x0, x23
  100179890  ldp     x26, x25, [sp], #0x10
  100179894  ldp     x24, x23, [sp], #0x10
  100179898  ldp     x22, x21, [sp], #0x10
  10017989c  ldp     x20, x19, [sp], #0x10
  1001798a0  ldp     x29, x30, [sp], #0x10
  1001798a4  ret
  1001798a8  mov     x23, x0
  1001798ac  b       loc_1001798d4
  1001798b0  mov     x23, x0
  1001798b4  b       loc_1001798d4
  1001798b8  mov     x23, x0
  1001798bc  b       loc_1001798cc
  1001798c0  mov     x23, x0
loc_1001798c4:
  1001798c4  mov     x0, x24
  1001798c8  bl      _objc_release
loc_1001798cc:
  1001798cc  mov     x0, x22
  1001798d0  bl      _objc_release
loc_1001798d4:
  1001798d4  mov     x0, x21
  1001798d8  bl      _objc_release
  1001798dc  mov     x0, x20
  1001798e0  bl      _objc_release
  1001798e4  mov     x0, x19
  1001798e8  bl      _objc_release
  1001798ec  mov     x0, x23
  1001798f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGStringPredicate evaluateWithArg0:arg1:parameters:]
; address 0x1001798f4  size 44  kind objc
; ======================================================================
  1001798f4  stp     x29, x30, [sp, #-0x10]!
  1001798f8  mov     x29, sp
  1001798fc  mov     x8, x1
  100179900  adrp    x9, #0x10041b000
  100179904  nop
  100179908  ldr     x1, [x9, #0xd68]
  10017990c  mov     x2, x8
  100179910  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  100179914  mov     w0, #0
  100179918  ldp     x29, x30, [sp], #0x10
  10017991c  ret
