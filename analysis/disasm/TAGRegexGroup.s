// unit TAGRegexGroup — 8 functions
//   0x100177630      44  +[TAGRegexGroup functionId]
//   0x10017765c      44  +[TAGRegexGroup toMatchKey]
//   0x100177688      44  +[TAGRegexGroup regexKey]
//   0x1001776b4      44  +[TAGRegexGroup ignoreCaseKey]
//   0x1001776e0      44  +[TAGRegexGroup groupKey]
//   0x10017770c     196  -[TAGRegexGroup init]
//   0x1001777d0       8  -[TAGRegexGroup isCacheable]
//   0x1001777d8    1608  -[TAGRegexGroup evaluate:]

; ======================================================================
; +[TAGRegexGroup functionId]
; address 0x100177630  size 44  kind objc
; ======================================================================
  100177630  stp     x29, x30, [sp, #-0x10]!
  100177634  mov     x29, sp
  100177638  stp     x20, x19, [sp, #-0x10]!
  10017763c  adrp    x19, #0x1003c9000
  100177640  add     x19, x19, #0x710                         ; @"_reg"
  100177644  mov     x0, x19
  100177648  bl      _objc_retainAutorelease
  10017764c  mov     x0, x19
  100177650  ldp     x20, x19, [sp], #0x10
  100177654  ldp     x29, x30, [sp], #0x10
  100177658  ret

; ======================================================================
; +[TAGRegexGroup toMatchKey]
; address 0x10017765c  size 44  kind objc
; ======================================================================
  10017765c  stp     x29, x30, [sp, #-0x10]!
  100177660  mov     x29, sp
  100177664  stp     x20, x19, [sp, #-0x10]!
  100177668  adrp    x19, #0x1003c9000
  10017766c  add     x19, x19, #0x250                         ; @"arg0"
  100177670  mov     x0, x19
  100177674  bl      _objc_retainAutorelease
  100177678  mov     x0, x19
  10017767c  ldp     x20, x19, [sp], #0x10
  100177680  ldp     x29, x30, [sp], #0x10
  100177684  ret

; ======================================================================
; +[TAGRegexGroup regexKey]
; address 0x100177688  size 44  kind objc
; ======================================================================
  100177688  stp     x29, x30, [sp, #-0x10]!
  10017768c  mov     x29, sp
  100177690  stp     x20, x19, [sp, #-0x10]!
  100177694  adrp    x19, #0x1003c9000
  100177698  add     x19, x19, #0x730                         ; @"arg1"
  10017769c  mov     x0, x19
  1001776a0  bl      _objc_retainAutorelease
  1001776a4  mov     x0, x19
  1001776a8  ldp     x20, x19, [sp], #0x10
  1001776ac  ldp     x29, x30, [sp], #0x10
  1001776b0  ret

; ======================================================================
; +[TAGRegexGroup ignoreCaseKey]
; address 0x1001776b4  size 44  kind objc
; ======================================================================
  1001776b4  stp     x29, x30, [sp, #-0x10]!
  1001776b8  mov     x29, sp
  1001776bc  stp     x20, x19, [sp, #-0x10]!
  1001776c0  adrp    x19, #0x1003c9000
  1001776c4  add     x19, x19, #0x930                         ; @"ignore_case"
  1001776c8  mov     x0, x19
  1001776cc  bl      _objc_retainAutorelease
  1001776d0  mov     x0, x19
  1001776d4  ldp     x20, x19, [sp], #0x10
  1001776d8  ldp     x29, x30, [sp], #0x10
  1001776dc  ret

; ======================================================================
; +[TAGRegexGroup groupKey]
; address 0x1001776e0  size 44  kind objc
; ======================================================================
  1001776e0  stp     x29, x30, [sp, #-0x10]!
  1001776e4  mov     x29, sp
  1001776e8  stp     x20, x19, [sp, #-0x10]!
  1001776ec  adrp    x19, #0x1003c9000
  1001776f0  add     x19, x19, #0x750                         ; @"group"
  1001776f4  mov     x0, x19
  1001776f8  bl      _objc_retainAutorelease
  1001776fc  mov     x0, x19
  100177700  ldp     x20, x19, [sp], #0x10
  100177704  ldp     x29, x30, [sp], #0x10
  100177708  ret

; ======================================================================
; -[TAGRegexGroup init]
; address 0x10017770c  size 196  kind objc
; ======================================================================
  10017770c  stp     x29, x30, [sp, #-0x10]!
  100177710  mov     x29, sp
  100177714  stp     x20, x19, [sp, #-0x10]!
  100177718  stp     x22, x21, [sp, #-0x10]!
  10017771c  sub     sp, sp, #0x20
  100177720  mov     x19, x0
  100177724  adrp    x8, #0x10041e000
  100177728  ldr     x0, [x8, #0x550]                         ; class NSSet
  10017772c  adrp    x8, #0x10041b000
  100177730  nop
  100177734  ldr     x1, [x8, #0xb68]
  100177738  adrp    x8, #0x1003c9000
  10017773c  add     x8, x8, #0x730                           ; @"arg1"
  100177740  stp     x8, xzr, [sp]
  100177744  adrp    x2, #0x1003c9000
  100177748  add     x2, x2, #0x250                           ; @"arg0"
  10017774c  bl      _objc_msgSend                            ; [NSSet setWithObjects:@"arg0", @"arg1", nil]
  100177750  mov     x29, x29
  100177754  bl      _objc_retainAutoreleasedReturnValue
  100177758  mov     x20, x0
  10017775c  str     x19, [sp, #0x10]
  100177760  adrp    x8, #0x10041f000
  100177764  ldr     x8, [x8, #0x3d0]
  100177768  str     x8, [sp, #0x18]
  10017776c  adrp    x8, #0x10041d000
  100177770  nop
  100177774  ldr     x1, [x8, #0xc10]
  100177778  adrp    x2, #0x1003c9000
  10017777c  add     x2, x2, #0x710                           ; @"_reg"
  100177780  add     x0, sp, #0x10
  100177784  mov     x3, x20
  100177788  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_reg" requiredKeys:[NSSet setWithObjects:@"arg0", @"arg1", nil]]
  10017778c  mov     x19, x0
  100177790  mov     x0, x20
  100177794  bl      _objc_release
  100177798  mov     x0, x19
  10017779c  sub     sp, x29, #0x20
  1001777a0  ldp     x22, x21, [sp], #0x10
  1001777a4  ldp     x20, x19, [sp], #0x10
  1001777a8  ldp     x29, x30, [sp], #0x10
  1001777ac  ret
  1001777b0  mov     x21, x0
  1001777b4  mov     x0, x19
  1001777b8  b       loc_1001777c4
  1001777bc  mov     x21, x0
  1001777c0  mov     x0, x20
loc_1001777c4:
  1001777c4  bl      _objc_release
  1001777c8  mov     x0, x21
  1001777cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRegexGroup isCacheable]
; address 0x1001777d0  size 8  kind objc
; ======================================================================
  1001777d0  mov     w0, #1
  1001777d4  ret

; ======================================================================
; -[TAGRegexGroup evaluate:]
; address 0x1001777d8  size 1608  kind objc
; ======================================================================
  1001777d8  stp     x29, x30, [sp, #-0x10]!
  1001777dc  mov     x29, sp
  1001777e0  stp     x20, x19, [sp, #-0x10]!
  1001777e4  stp     x22, x21, [sp, #-0x10]!
  1001777e8  stp     x24, x23, [sp, #-0x10]!
  1001777ec  stp     x26, x25, [sp, #-0x10]!
  1001777f0  stp     x28, x27, [sp, #-0x10]!
  1001777f4  sub     sp, sp, #0x30
  1001777f8  mov     x0, x2
  1001777fc  bl      _objc_retain
  100177800  mov     x19, x0
  100177804  adrp    x8, #0x100416000
  100177808  nop
  10017780c  ldr     x23, [x8, #0xda0]
  100177810  adrp    x2, #0x1003c9000
  100177814  add     x2, x2, #0x250                           ; @"arg0"
  100177818  mov     x1, x23
  10017781c  bl      _objc_msgSend                            ; [arg1 valueForKey:@"arg0"]
  100177820  mov     x29, x29
  100177824  bl      _objc_retainAutoreleasedReturnValue
  100177828  mov     x20, x0
  10017782c  adrp    x2, #0x1003c9000
  100177830  add     x2, x2, #0x730                           ; @"arg1"
  100177834  mov     x0, x19
  100177838  mov     x1, x23
  10017783c  bl      _objc_msgSend                            ; [arg1 valueForKey:@"arg1"]
  100177840  mov     x29, x29
  100177844  bl      _objc_retainAutoreleasedReturnValue
  100177848  mov     x21, x0
  10017784c  cbz     x20, loc_100177938                       ; if ([arg1 valueForKey:@"arg0"] == 0)
  100177850  adrp    x28, #0x10041e000
  100177854  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177858  adrp    x8, #0x10041c000
  10017785c  nop
  100177860  ldr     x24, [x8, #0xa98]
  100177864  mov     x1, x24
  100177868  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  10017786c  mov     x29, x29
  100177870  bl      _objc_retainAutoreleasedReturnValue
  100177874  mov     x22, x0
  100177878  cmp     x20, x22
  10017787c  ccmp    x21, #0, #4, ne
  100177880  b.ne    loc_100177890                            ; if (flags !=)
  100177884  mov     x0, x22
  100177888  bl      _objc_release
  10017788c  b       loc_100177938
loc_100177890:
  100177890  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177894  mov     x1, x24
  100177898  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  10017789c  mov     x29, x29
  1001778a0  bl      _objc_retainAutoreleasedReturnValue
  1001778a4  mov     x25, x0
  1001778a8  bl      _objc_release
  1001778ac  mov     x0, x22
  1001778b0  bl      _objc_release
  1001778b4  cmp     x21, x25
  1001778b8  b.eq    loc_100177938                            ; if ([arg1 valueForKey:@"arg1"] == [TAGTypes defaultValue])
  1001778bc  adrp    x8, #0x100417000
  1001778c0  nop
  1001778c4  ldr     x1, [x8, #0x40]
  1001778c8  adrp    x2, #0x1003c9000
  1001778cc  add     x2, x2, #0x930                           ; @"ignore_case"
  1001778d0  mov     x0, x19
  1001778d4  bl      _objc_msgSend                            ; [arg1 objectForKey:@"ignore_case"]
  1001778d8  mov     x29, x29
  1001778dc  bl      _objc_retainAutoreleasedReturnValue
  1001778e0  mov     x26, x0
  1001778e4  cbz     x26, loc_100177960                       ; if ([arg1 objectForKey:@"ignore_case"] == 0)
  1001778e8  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  1001778ec  adrp    x8, #0x10041d000
  1001778f0  nop
  1001778f4  ldr     x1, [x8, #0xc38]
  1001778f8  mov     x2, x26
  1001778fc  bl      _objc_msgSend                            ; [TAGTypes valueToBoolean:[arg1 objectForKey:@"ignore_case"]]
  100177900  mov     x29, x29
  100177904  bl      _objc_retainAutoreleasedReturnValue
  100177908  mov     x22, x0
  10017790c  adrp    x8, #0x100417000
  100177910  nop
  100177914  ldr     x1, [x8, #0xd8]
  100177918  bl      _objc_msgSend                            ; [[TAGTypes valueToBoolean:[arg1 objectForKey:@"ignore_case"]] boolValue]
  10017791c  mov     x25, x0
  100177920  mov     x0, x22
  100177924  bl      _objc_release
  100177928  cmp     w25, #0
  10017792c  mov     x8, #0x400
  100177930  cinc    x25, x8, ne                              ; t1 = ([[TAGTypes valueToBoolean:[arg1 objectForKey:@"ignore_case"]] boolValue] != 0 ? 1024 + 1 : 1024)
  100177934  b       loc_100177964
loc_100177938:
  100177938  adrp    x8, #0x10041e000
  10017793c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100177940  adrp    x8, #0x10041c000
  100177944  nop
  100177948  ldr     x1, [x8, #0xa98]
  10017794c  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100177950  mov     x29, x29
  100177954  bl      _objc_retainAutoreleasedReturnValue
  100177958  mov     x22, x0
  10017795c  b       loc_100177ce0
loc_100177960:
  100177960  mov     x25, #0x400
loc_100177964:
  100177964  adrp    x2, #0x1003c9000
  100177968  add     x2, x2, #0x750                           ; @"group"
  10017796c  mov     x0, x19
  100177970  mov     x1, x23
  100177974  bl      _objc_msgSend                            ; [arg1 valueForKey:@"group"]
  100177978  str     x26, [sp, #0x20]
  10017797c  mov     x29, x29
  100177980  bl      _objc_retainAutoreleasedReturnValue
  100177984  mov     x23, x0
  100177988  cbz     x23, loc_100177a0c                       ; if ([arg1 valueForKey:@"group"] == 0)
  10017798c  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177990  adrp    x8, #0x10041d000
  100177994  nop
  100177998  ldr     x1, [x8, #0xca8]
  10017799c  mov     x2, x23
  1001779a0  bl      _objc_msgSend                            ; [TAGTypes valueToNumber:[arg1 valueForKey:@"group"]]
  1001779a4  mov     x29, x29
  1001779a8  bl      _objc_retainAutoreleasedReturnValue
  1001779ac  mov     x26, x0
  1001779b0  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  1001779b4  adrp    x8, #0x10041d000
  1001779b8  nop
  1001779bc  ldr     x1, [x8, #0xcb0]
  1001779c0  bl      _objc_msgSend                            ; [TAGTypes defaultNumber]
  1001779c4  mov     x29, x29
  1001779c8  bl      _objc_retainAutoreleasedReturnValue
  1001779cc  mov     x22, x0
  1001779d0  bl      _objc_release
  1001779d4  cmp     x26, x22
  1001779d8  b.eq    loc_100177b0c                            ; if ([TAGTypes valueToNumber:[arg1 valueForKey:@"group"]] == [TAGTypes defaultNumber])
  1001779dc  adrp    x8, #0x100417000
  1001779e0  nop
  1001779e4  ldr     x1, [x8, #0x110]
  1001779e8  mov     x0, x26
  1001779ec  bl      _objc_msgSend                            ; [[TAGTypes valueToNumber:[arg1 valueForKey:@"group"]] intValue]
  1001779f0  mov     x22, x0
  1001779f4  cmp     w22, #0
  1001779f8  b.lt    loc_100177c70                            ; if ([[TAGTypes valueToNumber:[arg1 valueForKey:@"group"]] intValue] < 0)
  1001779fc  mov     x0, x26
  100177a00  bl      _objc_release
  100177a04  sxtw    x22, w22
  100177a08  b       loc_100177a10
loc_100177a0c:
  100177a0c  mov     x22, #1
loc_100177a10:
  100177a10  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177a14  adrp    x8, #0x10041d000
  100177a18  nop
  100177a1c  ldr     x26, [x8, #0xc18]
  100177a20  mov     x1, x26
  100177a24  mov     x2, x20
  100177a28  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 valueForKey:@"arg0"]]
  100177a2c  mov     x29, x29
  100177a30  bl      _objc_retainAutoreleasedReturnValue
  100177a34  str     x0, [sp, #0x18]
  100177a38  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177a3c  mov     x1, x26
  100177a40  mov     x2, x21
  100177a44  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 valueForKey:@"arg1"]]
  100177a48  mov     x29, x29
  100177a4c  bl      _objc_retainAutoreleasedReturnValue
  100177a50  mov     x26, x0
  100177a54  adrp    x8, #0x10041e000
  100177a58  ldr     x0, [x8, #0x948]                         ; class NSRegularExpression
  100177a5c  str     xzr, [sp, #0x28]
  100177a60  adrp    x8, #0x10041d000
  100177a64  nop
  100177a68  ldr     x1, [x8, #0x330]
  100177a6c  add     x4, sp, #0x28
  100177a70  mov     x2, x26
  100177a74  mov     x3, x25
  100177a78  bl      _objc_msgSend                            ; [NSRegularExpression regularExpressionWithPattern:[TAGTypes valueToString:[arg1 valueForKey:@"arg1"]] options:x3 error:&sp[0x28]]
  100177a7c  mov     x29, x29
  100177a80  bl      _objc_retainAutoreleasedReturnValue
  100177a84  str     x0, [sp, #0x10]
  100177a88  ldr     x0, [sp, #0x28]
  100177a8c  bl      _objc_retain
  100177a90  mov     x27, x0
  100177a94  cbz     x27, loc_100177ba8                       ; if (0 == 0)
  100177a98  adrp    x8, #0x10041e000
  100177a9c  ldr     x22, [x8, #0x538]                        ; class TAGLog
  100177aa0  adrp    x8, #0x10041d000
  100177aa4  ldr     x0, [x8, #0xf78]                         ; class NSString
  100177aa8  adrp    x8, #0x100416000
  100177aac  nop
  100177ab0  ldr     x1, [x8, #0xee8]
  100177ab4  str     x26, [sp]
  100177ab8  adrp    x2, #0x1003c9000
  100177abc  add     x2, x2, #0x790                           ; @"Invalid regex pattern: %@"
  100177ac0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Invalid regex pattern: %@", [TAGTypes valueToString:[arg1 valueForKey:@"arg1"]]]
  100177ac4  mov     x29, x29
  100177ac8  bl      _objc_retainAutoreleasedReturnValue
  100177acc  mov     x25, x0
  100177ad0  adrp    x8, #0x10041b000
  100177ad4  nop
  100177ad8  ldr     x1, [x8, #0xdd0]
  100177adc  mov     x0, x22
  100177ae0  mov     x2, x25
  100177ae4  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Invalid regex pattern: %@", [TAGTypes valueToString:[arg1 valueForKey:@"arg1"]]]]
  100177ae8  mov     x0, x25
  100177aec  bl      _objc_release
  100177af0  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177af4  mov     x1, x24
  100177af8  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100177afc  mov     x29, x29
  100177b00  bl      _objc_retainAutoreleasedReturnValue
  100177b04  mov     x22, x0
  100177b08  b       loc_100177cb0
loc_100177b0c:
  100177b0c  adrp    x8, #0x10041e000
  100177b10  ldr     x25, [x8, #0x538]                        ; class TAGLog
  100177b14  adrp    x8, #0x10041d000
  100177b18  ldr     x27, [x8, #0xf78]                        ; class NSString
  100177b1c  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177b20  nop
  100177b24  nop
  100177b28  ldr     x1, [x8, #0xc18]
  100177b2c  mov     x2, x23
  100177b30  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 valueForKey:@"group"]]
  100177b34  mov     x29, x29
  100177b38  bl      _objc_retainAutoreleasedReturnValue
  100177b3c  mov     x22, x0
  100177b40  adrp    x8, #0x100416000
  100177b44  nop
  100177b48  ldr     x1, [x8, #0xee8]
  100177b4c  str     x22, [sp]
  100177b50  adrp    x2, #0x1003c9000
  100177b54  add     x2, x2, #0x770                           ; @"Invalid group number: %@"
  100177b58  mov     x0, x27
  100177b5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Invalid group number: %@", [TAGTypes valueToString:[arg1 valueForKey:@"group"]]]
  100177b60  mov     x29, x29
  100177b64  bl      _objc_retainAutoreleasedReturnValue
  100177b68  mov     x27, x0
  100177b6c  adrp    x8, #0x10041b000
  100177b70  nop
  100177b74  ldr     x1, [x8, #0xdd0]
  100177b78  mov     x0, x25
  100177b7c  mov     x2, x27
  100177b80  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Invalid group number: %@", [TAGTypes valueToString:[arg1 valueForKey:@"group"]]]]
  100177b84  mov     x0, x27
  100177b88  bl      _objc_release
  100177b8c  mov     x0, x22
  100177b90  bl      _objc_release
  100177b94  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177b98  mov     x1, x24
  100177b9c  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100177ba0  mov     x29, x29
  100177ba4  b       loc_100177c80
loc_100177ba8:
  100177ba8  adrp    x8, #0x100417000
  100177bac  nop
  100177bb0  ldr     x1, [x8, #0xc58]
  100177bb4  ldr     x0, [sp, #0x18]
  100177bb8  bl      _objc_msgSend                            ; [[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] length]
  100177bbc  mov     x5, x0
  100177bc0  adrp    x8, #0x10041d000
  100177bc4  nop
  100177bc8  ldr     x1, [x8, #0x420]
  100177bcc  mov     x4, #0
  100177bd0  ldp     x0, x2, [sp, #0x10]
  100177bd4  mov     x3, x25
  100177bd8  bl      _objc_msgSend                            ; [[NSRegularExpression regularExpressionWithPattern:[TAGTypes valueToString:[arg1 valueForKey:@"arg1"]] options:x3 error:&sp[0x28]] firstMatchInString:[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] options:x3 range:0]
  100177bdc  mov     x29, x29
  100177be0  bl      _objc_retainAutoreleasedReturnValue
  100177be4  mov     x25, x0
  100177be8  adrp    x8, #0x10041d000
  100177bec  nop
  100177bf0  ldr     x1, [x8, #0x428]
  100177bf4  bl      _objc_msgSend                            ; [[[NSRegularExpression regularExpressionWithPattern:[TAGTypes valueToString:[arg1 valueForKey:@"arg1"]] options:x3 error:&sp[0x28]] firstMatchInString:[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] options:x3 range:0] numberOfRanges]
  100177bf8  cmp     x0, x22
  100177bfc  b.ls    loc_100177c90                            ; if ([[[NSRegularExpression regularExpressionWithPattern:[TAGTypes valueToString:[arg1 valueForKey:@"arg1"]] options:x3 error… <=u x22)
  100177c00  adrp    x8, #0x10041d000
  100177c04  nop
  100177c08  ldr     x1, [x8, #0x430]
  100177c0c  mov     x0, x25
  100177c10  mov     x2, x22
  100177c14  bl      _objc_msgSend                            ; [[[NSRegularExpression regularExpressionWithPattern:[TAGTypes valueToString:[arg1 valueForKey:@"arg1"]] options:x3 error:&sp[0x28]] firstMatchInString:[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] options:x3 range:0] rangeAtIndex:x2]
  100177c18  mov     x2, x0
  100177c1c  mov     x3, x1
  100177c20  adrp    x8, #0x10041b000
  100177c24  nop
  100177c28  ldr     x1, [x8, #0x390]
  100177c2c  ldr     x0, [sp, #0x18]
  100177c30  bl      _objc_msgSend                            ; [[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] substringWithRange:[[[NSRegularExpression regularExpressionWithPattern:[TAGTypes valueToString:[arg1 valueForKey:@"arg1"]] options:x3 error:&sp[0x28]] firstMatchInString:[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] options:x3 range:0] rangeAtIndex:x2]]
  100177c34  mov     x29, x29
  100177c38  bl      _objc_retainAutoreleasedReturnValue
  100177c3c  mov     x24, x0
  100177c40  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177c44  adrp    x8, #0x10041d000
  100177c48  nop
  100177c4c  ldr     x1, [x8, #0xc30]
  100177c50  mov     x2, x24
  100177c54  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] substringWithRange:[[[NSRegularExpression regularExpressionWithPattern:[TAGTypes valueToString:[arg1 valueForKey:@"arg1"]] options:x3 error:&sp[0x28]] firstMatchInString:[TAGTypes valueToString:[arg1 valueForKey:@"arg0"]] options:x3 range:0] rangeAtIndex:x2]]]
  100177c58  mov     x29, x29
  100177c5c  bl      _objc_retainAutoreleasedReturnValue
  100177c60  mov     x22, x0
  100177c64  mov     x0, x24
  100177c68  bl      _objc_release
  100177c6c  b       loc_100177ca8
loc_100177c70:
  100177c70  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177c74  mov     x1, x24
  100177c78  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100177c7c  mov     x29, x29
loc_100177c80:
  100177c80  bl      _objc_retainAutoreleasedReturnValue
  100177c84  mov     x22, x0
  100177c88  mov     x0, x26
  100177c8c  b       loc_100177ccc
loc_100177c90:
  100177c90  ldr     x0, [x28, #0xb58]                        ; class TAGTypes
  100177c94  mov     x1, x24
  100177c98  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100177c9c  mov     x29, x29
  100177ca0  bl      _objc_retainAutoreleasedReturnValue
  100177ca4  mov     x22, x0
loc_100177ca8:
  100177ca8  mov     x0, x25
  100177cac  bl      _objc_release
loc_100177cb0:
  100177cb0  ldr     x0, [sp, #0x10]
  100177cb4  bl      _objc_release
  100177cb8  mov     x0, x27
  100177cbc  bl      _objc_release
  100177cc0  mov     x0, x26
  100177cc4  bl      _objc_release
  100177cc8  ldr     x0, [sp, #0x18]
loc_100177ccc:
  100177ccc  bl      _objc_release
  100177cd0  mov     x0, x23
  100177cd4  bl      _objc_release
  100177cd8  ldr     x0, [sp, #0x20]
  100177cdc  bl      _objc_release
loc_100177ce0:
  100177ce0  mov     x0, x21
  100177ce4  bl      _objc_release
  100177ce8  mov     x0, x20
  100177cec  bl      _objc_release
  100177cf0  mov     x0, x19
  100177cf4  bl      _objc_release
  100177cf8  mov     x0, x22
  100177cfc  sub     sp, x29, #0x50
  100177d00  ldp     x28, x27, [sp], #0x10
  100177d04  ldp     x26, x25, [sp], #0x10
  100177d08  ldp     x24, x23, [sp], #0x10
  100177d0c  ldp     x22, x21, [sp], #0x10
  100177d10  ldp     x20, x19, [sp], #0x10
  100177d14  ldp     x29, x30, [sp], #0x10
  100177d18  b       _objc_autoreleaseReturnValue
  100177d1c  mov     x28, x0
  100177d20  b       loc_100177e10
  100177d24  mov     x28, x0
  100177d28  b       loc_100177e08
  100177d2c  mov     x28, x0
  100177d30  mov     x0, x22
  100177d34  bl      _objc_release
  100177d38  b       loc_100177e00
  100177d3c  str     x26, [sp, #0x20]
  100177d40  mov     x28, x0
  100177d44  mov     x0, x22
  100177d48  b       loc_100177df4
  100177d4c  mov     x28, x0
  100177d50  b       loc_100177e00
  100177d54  str     x26, [sp, #0x20]
  100177d58  mov     x28, x0
  100177d5c  b       loc_100177df8
  100177d60  mov     x28, x0
  100177d64  b       loc_100177df0
  100177d68  mov     x28, x0
  100177d6c  b       loc_100177de8
  100177d70  mov     x28, x0
  100177d74  b       loc_100177de0
  100177d78  b       loc_100177dc4
  100177d7c  mov     x28, x0
  100177d80  b       loc_100177d90
  100177d84  mov     x28, x0
  100177d88  mov     x0, x27
  100177d8c  bl      _objc_release
loc_100177d90:
  100177d90  mov     x0, x22
  100177d94  bl      _objc_release
  100177d98  b       loc_100177db8
  100177d9c  mov     x28, x0
  100177da0  b       loc_100177dd0
  100177da4  mov     x28, x0
  100177da8  mov     x0, x24
  100177dac  bl      _objc_release
  100177db0  b       loc_100177dc8
  100177db4  mov     x28, x0
loc_100177db8:
  100177db8  mov     x0, x26
  100177dbc  bl      _objc_release
  100177dc0  b       loc_100177df0
loc_100177dc4:
  100177dc4  mov     x28, x0
loc_100177dc8:
  100177dc8  mov     x0, x25
  100177dcc  bl      _objc_release
loc_100177dd0:
  100177dd0  ldr     x0, [sp, #0x10]
  100177dd4  bl      _objc_release
  100177dd8  mov     x0, x27
  100177ddc  bl      _objc_release
loc_100177de0:
  100177de0  mov     x0, x26
  100177de4  bl      _objc_release
loc_100177de8:
  100177de8  ldr     x0, [sp, #0x18]
  100177dec  bl      _objc_release
loc_100177df0:
  100177df0  mov     x0, x23
loc_100177df4:
  100177df4  bl      _objc_release
loc_100177df8:
  100177df8  ldr     x0, [sp, #0x20]
  100177dfc  bl      _objc_release
loc_100177e00:
  100177e00  mov     x0, x21
  100177e04  bl      _objc_release
loc_100177e08:
  100177e08  mov     x0, x20
  100177e0c  bl      _objc_release
loc_100177e10:
  100177e10  mov     x0, x19
  100177e14  bl      _objc_release
  100177e18  mov     x0, x28
  100177e1c  bl      __Unwind_Resume                          ; Unwind_Resume()
