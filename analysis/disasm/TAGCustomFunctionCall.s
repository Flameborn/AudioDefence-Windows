// unit TAGCustomFunctionCall — 9 functions
//   0x10015a114      44  +[TAGCustomFunctionCall functionId]
//   0x10015a140      44  +[TAGCustomFunctionCall functionCallNameKey]
//   0x10015a16c      44  +[TAGCustomFunctionCall additionalParametersKey]
//   0x10015a198     240  -[TAGCustomFunctionCall initWithEvaluator:]
//   0x10015a288       8  -[TAGCustomFunctionCall isCacheable]
//   0x10015a290    1464  -[TAGCustomFunctionCall evaluate:]
//   0x10015a848      16  -[TAGCustomFunctionCall functionCallEvaluator]
//   0x10015a858      20  -[TAGCustomFunctionCall setFunctionCallEvaluator:]
//   0x10015a86c      20  -[TAGCustomFunctionCall .cxx_destruct]

; ======================================================================
; +[TAGCustomFunctionCall functionId]
; address 0x10015a114  size 44  kind objc
; ======================================================================
  10015a114  stp     x29, x30, [sp, #-0x10]!
  10015a118  mov     x29, sp
  10015a11c  stp     x20, x19, [sp, #-0x10]!
  10015a120  adrp    x19, #0x1003c8000
  10015a124  add     x19, x19, #0x1d0                         ; @"_func"
  10015a128  mov     x0, x19
  10015a12c  bl      _objc_retainAutorelease
  10015a130  mov     x0, x19
  10015a134  ldp     x20, x19, [sp], #0x10
  10015a138  ldp     x29, x30, [sp], #0x10
  10015a13c  ret

; ======================================================================
; +[TAGCustomFunctionCall functionCallNameKey]
; address 0x10015a140  size 44  kind objc
; ======================================================================
  10015a140  stp     x29, x30, [sp, #-0x10]!
  10015a144  mov     x29, sp
  10015a148  stp     x20, x19, [sp, #-0x10]!
  10015a14c  adrp    x19, #0x1003c8000
  10015a150  add     x19, x19, #0x1f0                         ; @"function_call_macro_name"
  10015a154  mov     x0, x19
  10015a158  bl      _objc_retainAutorelease
  10015a15c  mov     x0, x19
  10015a160  ldp     x20, x19, [sp], #0x10
  10015a164  ldp     x29, x30, [sp], #0x10
  10015a168  ret

; ======================================================================
; +[TAGCustomFunctionCall additionalParametersKey]
; address 0x10015a16c  size 44  kind objc
; ======================================================================
  10015a16c  stp     x29, x30, [sp, #-0x10]!
  10015a170  mov     x29, sp
  10015a174  stp     x20, x19, [sp, #-0x10]!
  10015a178  adrp    x19, #0x1003c8000
  10015a17c  add     x19, x19, #0x210                         ; @"additional_params"
  10015a180  mov     x0, x19
  10015a184  bl      _objc_retainAutorelease
  10015a188  mov     x0, x19
  10015a18c  ldp     x20, x19, [sp], #0x10
  10015a190  ldp     x29, x30, [sp], #0x10
  10015a194  ret

; ======================================================================
; -[TAGCustomFunctionCall initWithEvaluator:]
; address 0x10015a198  size 240  kind objc
; ======================================================================
  10015a198  stp     x29, x30, [sp, #-0x10]!
  10015a19c  mov     x29, sp
  10015a1a0  stp     x20, x19, [sp, #-0x10]!
  10015a1a4  stp     x22, x21, [sp, #-0x10]!
  10015a1a8  sub     sp, sp, #0x10
  10015a1ac  mov     x20, x2
  10015a1b0  mov     x22, x0
  10015a1b4  mov     x0, x20
  10015a1b8  bl      _objc_retain
  10015a1bc  mov     x19, x0
  10015a1c0  adrp    x8, #0x10041e000
  10015a1c4  ldr     x0, [x8, #0x550]                         ; class NSSet
  10015a1c8  adrp    x8, #0x10041b000
  10015a1cc  nop
  10015a1d0  ldr     x1, [x8, #0x7e0]
  10015a1d4  adrp    x2, #0x1003c8000
  10015a1d8  add     x2, x2, #0x1f0                           ; @"function_call_macro_name"
  10015a1dc  bl      _objc_msgSend                            ; [NSSet setWithObject:@"function_call_macro_name"]
  10015a1e0  mov     x29, x29
  10015a1e4  bl      _objc_retainAutoreleasedReturnValue
  10015a1e8  mov     x21, x0
  10015a1ec  str     x22, [sp]
  10015a1f0  adrp    x8, #0x10041f000
  10015a1f4  ldr     x8, [x8, #0x278]
  10015a1f8  str     x8, [sp, #8]
  10015a1fc  adrp    x8, #0x10041d000
  10015a200  nop
  10015a204  ldr     x1, [x8, #0xc10]
  10015a208  adrp    x2, #0x1003c8000
  10015a20c  add     x2, x2, #0x1d0                           ; @"_func"
  10015a210  mov     x0, sp
  10015a214  mov     x3, x21
  10015a218  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_func" requiredKeys:[NSSet setWithObject:@"function_call_macro_name"]]
  10015a21c  mov     x22, x0
  10015a220  cbz     x22, loc_10015a238                       ; if (self == 0)
  10015a224  adrp    x8, #0x100420000
  10015a228  ldrsw   x8, [x8, #0xaf8]                         ; ivar offset TAGCustomFunctionCall._functionCallEvaluator (+0x8)
  10015a22c  add     x0, x22, x8
  10015a230  mov     x1, x20
  10015a234  bl      _objc_storeStrong
loc_10015a238:
  10015a238  mov     x0, x21
  10015a23c  bl      _objc_release
  10015a240  mov     x0, x19
  10015a244  bl      _objc_release
  10015a248  mov     x0, x22
  10015a24c  sub     sp, x29, #0x20
  10015a250  ldp     x22, x21, [sp], #0x10
  10015a254  ldp     x20, x19, [sp], #0x10
  10015a258  ldp     x29, x30, [sp], #0x10
  10015a25c  ret
  10015a260  mov     x20, x0
  10015a264  mov     x0, x22
  10015a268  b       loc_10015a274
  10015a26c  mov     x20, x0
  10015a270  mov     x0, x21
loc_10015a274:
  10015a274  bl      _objc_release
  10015a278  mov     x0, x19
  10015a27c  bl      _objc_release
  10015a280  mov     x0, x20
  10015a284  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGCustomFunctionCall isCacheable]
; address 0x10015a288  size 8  kind objc
; ======================================================================
  10015a288  mov     w0, #0
  10015a28c  ret

; ======================================================================
; -[TAGCustomFunctionCall evaluate:]
; address 0x10015a290  size 1464  kind objc
; ======================================================================
  10015a290  stp     x29, x30, [sp, #-0x10]!
  10015a294  mov     x29, sp
  10015a298  stp     x20, x19, [sp, #-0x10]!
  10015a29c  stp     x22, x21, [sp, #-0x10]!
  10015a2a0  stp     x24, x23, [sp, #-0x10]!
  10015a2a4  stp     x26, x25, [sp, #-0x10]!
  10015a2a8  stp     x28, x27, [sp, #-0x10]!
  10015a2ac  sub     sp, sp, #0x120
  10015a2b0  mov     x28, x0
  10015a2b4  adrp    x26, #0x1003b0000
  10015a2b8  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10015a2bc  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10015a2c0  stur    x8, [x29, #-0x58]
  10015a2c4  mov     x0, x2
  10015a2c8  bl      _objc_retain
  10015a2cc  mov     x22, x0
  10015a2d0  adrp    x27, #0x10041e000
  10015a2d4  ldr     x20, [x27, #0xb58]                       ; class TAGTypes
  10015a2d8  adrp    x8, #0x100417000
  10015a2dc  nop
  10015a2e0  ldr     x24, [x8, #0x40]
  10015a2e4  adrp    x2, #0x1003c8000
  10015a2e8  add     x2, x2, #0x1f0                           ; @"function_call_macro_name"
  10015a2ec  mov     x1, x24
  10015a2f0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"function_call_macro_name"]
  10015a2f4  mov     x29, x29
  10015a2f8  bl      _objc_retainAutoreleasedReturnValue
  10015a2fc  mov     x19, x0
  10015a300  adrp    x8, #0x10041d000
  10015a304  nop
  10015a308  ldr     x1, [x8, #0xc18]
  10015a30c  mov     x0, x20
  10015a310  mov     x2, x19
  10015a314  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"function_call_macro_name"]]
  10015a318  mov     x29, x29
  10015a31c  bl      _objc_retainAutoreleasedReturnValue
  10015a320  mov     x23, x0
  10015a324  mov     x0, x19
  10015a328  bl      _objc_release
  10015a32c  adrp    x8, #0x10041d000
  10015a330  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10015a334  adrp    x8, #0x10041b000
  10015a338  nop
  10015a33c  ldr     x1, [x8, #0xf20]
  10015a340  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10015a344  mov     x29, x29
  10015a348  bl      _objc_retainAutoreleasedReturnValue
  10015a34c  mov     x21, x0
  10015a350  adrp    x2, #0x1003c8000
  10015a354  add     x2, x2, #0x210                           ; @"additional_params"
  10015a358  mov     x0, x22
  10015a35c  mov     x1, x24
  10015a360  bl      _objc_msgSend                            ; [arg1 objectForKey:@"additional_params"]
  10015a364  mov     x29, x29
  10015a368  bl      _objc_retainAutoreleasedReturnValue
  10015a36c  mov     x25, x0
  10015a370  cbz     x25, loc_10015a528                       ; if ([arg1 objectForKey:@"additional_params"] == 0)
  10015a374  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  10015a378  adrp    x8, #0x10041d000
  10015a37c  nop
  10015a380  ldr     x1, [x8, #0xd30]
  10015a384  mov     x2, x25
  10015a388  bl      _objc_msgSend                            ; [TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]]
  10015a38c  mov     x29, x29
  10015a390  bl      _objc_retainAutoreleasedReturnValue
  10015a394  mov     x20, x0
  10015a398  adrp    x8, #0x10041d000
  10015a39c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10015a3a0  adrp    x8, #0x100417000
  10015a3a4  nop
  10015a3a8  ldr     x1, [x8, #0x2e0]
  10015a3ac  bl      _objc_msgSend                            ; [NSDictionary class]
  10015a3b0  mov     x2, x0
  10015a3b4  adrp    x8, #0x100417000
  10015a3b8  nop
  10015a3bc  ldr     x1, [x8, #0x3b8]
  10015a3c0  mov     x0, x20
  10015a3c4  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] isKindOfClass:[NSDictionary class]]
  10015a3c8  str     x28, [sp, #0x38]
  10015a3cc  tbz     w0, #0, loc_10015a594                    ; if (!([[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] isKindOfClass:[NSDictionary class]] & 1))
  10015a3d0  stp     x25, x23, [sp, #0x20]
  10015a3d4  str     x22, [sp, #0x30]
  10015a3d8  mov     x0, x20
  10015a3dc  str     x20, [sp, #0x18]
  10015a3e0  bl      _objc_retain
  10015a3e4  stp     xzr, xzr, [x29, #-0x68]
  10015a3e8  stp     xzr, xzr, [x29, #-0x78]
  10015a3ec  stp     xzr, xzr, [x29, #-0x88]
  10015a3f0  stp     xzr, xzr, [x29, #-0x98]
  10015a3f4  bl      _objc_retain
  10015a3f8  mov     x26, x0
  10015a3fc  adrp    x8, #0x100416000
  10015a400  nop
  10015a404  ldr     x1, [x8, #0xe00]
  10015a408  str     x1, [sp, #0x50]
  10015a40c  sub     x2, x29, #0x98
  10015a410  add     x3, sp, #0x58
  10015a414  mov     x4, #0x10
  10015a418  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10015a41c  mov     x28, x0
  10015a420  cbz     x28, loc_10015a4f8                       ; if ([[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] == 0)
  10015a424  ldur    x8, [x29, #-0x88]
  10015a428  ldr     x19, [x8]
  10015a42c  adrp    x8, #0x100418000
  10015a430  nop
  10015a434  ldr     x20, [x8, #0x648]
  10015a438  adrp    x8, #0x100416000
  10015a43c  nop
  10015a440  ldr     x23, [x8, #0xdc8]
  10015a444  sub     x8, x29, #0x98
  10015a448  str     x8, [sp, #0x48]
  10015a44c  add     x8, sp, #0x58
  10015a450  str     x8, [sp, #0x40]
loc_10015a454:
  10015a454  mov     x22, #0
loc_10015a458:
  10015a458  ldur    x8, [x29, #-0x88]
  10015a45c  ldr     x8, [x8]
  10015a460  cmp     x8, x19
  10015a464  b.eq    loc_10015a470                            ; if (x8 == x19)
  10015a468  mov     x0, x26
  10015a46c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]])
loc_10015a470:
  10015a470  ldur    x8, [x29, #-0x90]
  10015a474  ldr     x27, [x8, x22, lsl #3]
  10015a478  mov     x0, x26
  10015a47c  mov     x1, x24
  10015a480  mov     x2, x27
  10015a484  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] objectForKey:x2]
  10015a488  mov     x29, x29
  10015a48c  bl      _objc_retainAutoreleasedReturnValue
  10015a490  mov     x25, x0
  10015a494  mov     x0, x27
  10015a498  mov     x1, x20
  10015a49c  bl      _objc_msgSend                            ; [x0 description]
  10015a4a0  mov     x29, x29
  10015a4a4  bl      _objc_retainAutoreleasedReturnValue
  10015a4a8  mov     x27, x0
  10015a4ac  mov     x0, x21
  10015a4b0  mov     x1, x23
  10015a4b4  mov     x2, x25
  10015a4b8  mov     x3, x27
  10015a4bc  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] objectForKey:x2] forKey:[x0 description]]
  10015a4c0  mov     x0, x27
  10015a4c4  bl      _objc_release
  10015a4c8  mov     x0, x25
  10015a4cc  bl      _objc_release
  10015a4d0  add     x22, x22, #1
  10015a4d4  cmp     x22, x28
  10015a4d8  b.lo    loc_10015a458                            ; if ((x22 + 1) <u [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0…)
  10015a4dc  mov     x4, #0x10
  10015a4e0  mov     x0, x26
  10015a4e4  ldp     x2, x1, [sp, #0x48]
  10015a4e8  ldr     x3, [sp, #0x40]
  10015a4ec  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10015a4f0  mov     x28, x0
  10015a4f4  cbnz    x28, loc_10015a454                       ; if ([[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] != 0)
loc_10015a4f8:
  10015a4f8  mov     x0, x26
  10015a4fc  bl      _objc_release
  10015a500  mov     x0, x26
  10015a504  bl      _objc_release
  10015a508  mov     x0, x26
  10015a50c  bl      _objc_release
  10015a510  ldp     x23, x22, [sp, #0x28]
  10015a514  ldr     x25, [sp, #0x20]
  10015a518  adrp    x26, #0x1003b0000
  10015a51c  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10015a520  adrp    x27, #0x10041e000
  10015a524  ldr     x28, [sp, #0x38]
loc_10015a528:
  10015a528  adrp    x8, #0x10041d000
  10015a52c  nop
  10015a530  ldr     x1, [x8, #0x320]
  10015a534  mov     x0, x28
  10015a538  bl      _objc_msgSend                            ; [self functionCallEvaluator]
  10015a53c  mov     x29, x29
  10015a540  bl      _objc_retainAutoreleasedReturnValue
  10015a544  mov     x19, x0
  10015a548  adrp    x8, #0x10041d000
  10015a54c  nop
  10015a550  ldr     x1, [x8, #0x328]
  10015a554  mov     x2, x23
  10015a558  mov     x3, x21
  10015a55c  bl      _objc_msgSend                            ; [[self functionCallEvaluator] evaluate:[TAGTypes valueToString:[arg1 objectForKey:@"function_call_macro_name"]] parameters:[NSMutableDictionary dictionary]]
  10015a560  mov     x29, x29
  10015a564  bl      _objc_retainAutoreleasedReturnValue
  10015a568  mov     x20, x0
  10015a56c  mov     x0, x19
  10015a570  bl      _objc_release
  10015a574  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  10015a578  adrp    x8, #0x10041d000
  10015a57c  nop
  10015a580  ldr     x1, [x8, #0xc30]
  10015a584  mov     x2, x20
  10015a588  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[self functionCallEvaluator] evaluate:[TAGTypes valueToString:[arg1 objectForKey:@"function_call_macro_name"]] parameters:[NSMutableDictionary dictionary]]]
  10015a58c  mov     x29, x29
  10015a590  b       loc_10015a5cc
loc_10015a594:
  10015a594  adrp    x8, #0x10041e000
  10015a598  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10015a59c  adrp    x8, #0x10041b000
  10015a5a0  nop
  10015a5a4  ldr     x1, [x8, #0xe90]
  10015a5a8  adrp    x2, #0x1003c8000
  10015a5ac  add     x2, x2, #0x230                           ; @"FunctionCallMacro: expected additional_params to be a map."
  10015a5b0  bl      _objc_msgSend                            ; [TAGLog warning:@"FunctionCallMacro: expected additional_params to be a map."]
  10015a5b4  ldr     x0, [x27, #0xb58]                        ; class TAGTypes
  10015a5b8  adrp    x8, #0x10041c000
  10015a5bc  nop
  10015a5c0  ldr     x1, [x8, #0xa98]
  10015a5c4  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  10015a5c8  mov     x29, x29
loc_10015a5cc:
  10015a5cc  bl      _objc_retainAutoreleasedReturnValue
  10015a5d0  mov     x19, x0
  10015a5d4  mov     x0, x20
  10015a5d8  bl      _objc_release
loc_10015a5dc:
  10015a5dc  mov     x0, x25
  10015a5e0  bl      _objc_release
  10015a5e4  mov     x0, x21
  10015a5e8  bl      _objc_release
  10015a5ec  mov     x0, x23
  10015a5f0  bl      _objc_release
  10015a5f4  mov     x0, x22
  10015a5f8  bl      _objc_release
  10015a5fc  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10015a600  ldur    x9, [x29, #-0x58]
  10015a604  sub     x8, x8, x9
  10015a608  cbnz    x8, loc_10015a630                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015a60c  mov     x0, x19
  10015a610  sub     sp, x29, #0x50
  10015a614  ldp     x28, x27, [sp], #0x10
  10015a618  ldp     x26, x25, [sp], #0x10
  10015a61c  ldp     x24, x23, [sp], #0x10
  10015a620  ldp     x22, x21, [sp], #0x10
  10015a624  ldp     x20, x19, [sp], #0x10
  10015a628  ldp     x29, x30, [sp], #0x10
  10015a62c  b       _objc_autoreleaseReturnValue
loc_10015a630:
  10015a630  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015a634  b       loc_10015a690
  10015a638  mov     x23, x0
  10015a63c  b       loc_10015a64c
  10015a640  mov     x23, x0
  10015a644  mov     x0, x27
  10015a648  bl      _objc_release
loc_10015a64c:
  10015a64c  ldr     x20, [sp, #0x18]
  10015a650  mov     x0, x25
  10015a654  bl      _objc_release
  10015a658  ldr     x25, [sp, #0x20]
  10015a65c  b       loc_10015a698
  10015a660  mov     x23, x0
  10015a664  b       loc_10015a6cc
  10015a668  mov     x23, x0
  10015a66c  mov     x0, x19
  10015a670  b       loc_10015a6c8
  10015a674  str     x23, [sp, #0x28]
  10015a678  mov     x23, x0
  10015a67c  b       loc_10015a6c4
  10015a680  str     x23, [sp, #0x28]
  10015a684  mov     x23, x0
  10015a688  b       loc_10015a6bc
  10015a68c  b       loc_10015a690
loc_10015a690:
  10015a690  mov     x23, x0
  10015a694  ldp     x20, x25, [sp, #0x18]
loc_10015a698:
  10015a698  mov     x0, x26
  10015a69c  bl      _objc_release
  10015a6a0  mov     x0, x26
  10015a6a4  bl      _objc_release
loc_10015a6a8:
  10015a6a8  mov     x0, x20
  10015a6ac  bl      _objc_release
loc_10015a6b0:
  10015a6b0  mov     x0, x25
  10015a6b4  bl      _objc_release
  10015a6b8  ldr     x22, [sp, #0x30]
loc_10015a6bc:
  10015a6bc  mov     x0, x21
  10015a6c0  bl      _objc_release
loc_10015a6c4:
  10015a6c4  ldr     x0, [sp, #0x28]
loc_10015a6c8:
  10015a6c8  bl      _objc_release
loc_10015a6cc:
  10015a6cc  mov     x0, x22
  10015a6d0  bl      _objc_release
  10015a6d4  mov     x0, x23
  10015a6d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015a6dc  mov     x24, x25
  10015a6e0  stp     x23, x22, [sp, #0x28]
  10015a6e4  mov     x22, x1
  10015a6e8  mov     x23, x0
  10015a6ec  b       loc_10015a720
  10015a6f0  mov     x24, x25
  10015a6f4  stp     x23, x22, [sp, #0x28]
  10015a6f8  mov     x22, x1
  10015a6fc  mov     x23, x0
  10015a700  mov     x0, x19
  10015a704  b       loc_10015a71c
  10015a708  mov     x24, x25
  10015a70c  stp     x23, x22, [sp, #0x28]
  10015a710  mov     x22, x1
  10015a714  mov     x23, x0
  10015a718  mov     x0, x20
loc_10015a71c:
  10015a71c  bl      _objc_release
loc_10015a720:
  10015a720  cmp     w22, #1
  10015a724  b.ne    loc_10015a834                            ; if (w22 != 1)
  10015a728  mov     x0, x23
  10015a72c  bl      _objc_begin_catch                        ; objc_begin_catch()
  10015a730  adrp    x8, #0x10041e000
  10015a734  ldr     x20, [x8, #0x538]                        ; class TAGLog
  10015a738  adrp    x8, #0x10041d000
  10015a73c  ldr     x22, [x8, #0xf78]                        ; class NSString
  10015a740  adrp    x8, #0x100418000
  10015a744  nop
  10015a748  ldr     x8, [x8, #0x648]
  10015a74c  mov     x1, x8
  10015a750  bl      _objc_msgSend                            ; [objc_begin_catch() description]
  10015a754  mov     x29, x29
  10015a758  bl      _objc_retainAutoreleasedReturnValue
  10015a75c  mov     x19, x0
  10015a760  adrp    x8, #0x100416000
  10015a764  nop
  10015a768  ldr     x8, [x8, #0xee8]
  10015a76c  str     x19, [sp, #8]
  10015a770  ldr     x9, [sp, #0x28]
  10015a774  str     x9, [sp]
  10015a778  adrp    x9, #0x1003c8000
  10015a77c  add     x9, x9, #0x250                           ; @"Custom macro/tag %@ threw exception %@"
  10015a780  mov     x0, x22
  10015a784  mov     x1, x8
  10015a788  mov     x2, x9
  10015a78c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Custom macro/tag %@ threw exception %@", sp[0], [objc_begin_catch() description]]
  10015a790  mov     x29, x29
  10015a794  bl      _objc_retainAutoreleasedReturnValue
  10015a798  mov     x22, x0
  10015a79c  adrp    x8, #0x10041b000
  10015a7a0  nop
  10015a7a4  ldr     x8, [x8, #0xe90]
  10015a7a8  mov     x0, x20
  10015a7ac  mov     x1, x8
  10015a7b0  mov     x2, x22
  10015a7b4  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Custom macro/tag %@ threw exception %@", sp[0], [objc_begin_catch() description]]]
  10015a7b8  mov     x0, x22
  10015a7bc  bl      _objc_release
  10015a7c0  mov     x0, x19
  10015a7c4  bl      _objc_release
  10015a7c8  bl      _objc_end_catch                          ; objc_end_catch()
  10015a7cc  ldr     x8, [x27, #0xb58]
  10015a7d0  adrp    x9, #0x10041c000
  10015a7d4  nop
  10015a7d8  ldr     x9, [x9, #0xa98]
  10015a7dc  mov     x0, x8
  10015a7e0  mov     x1, x9
  10015a7e4  ldp     x23, x22, [sp, #0x28]
  10015a7e8  mov     x25, x24
  10015a7ec  bl      _objc_msgSend                            ; [x0 defaultValue]
  10015a7f0  mov     x29, x29
  10015a7f4  bl      _objc_retainAutoreleasedReturnValue
  10015a7f8  mov     x19, x0
  10015a7fc  b       loc_10015a5dc
  10015a800  stp     x23, x22, [sp, #0x28]
  10015a804  mov     x23, x0
  10015a808  b       loc_10015a6a8
  10015a80c  mov     x23, x0
  10015a810  b       loc_10015a830
  10015a814  mov     x23, x0
  10015a818  b       loc_10015a828
  10015a81c  mov     x23, x0
  10015a820  mov     x0, x22
  10015a824  bl      _objc_release
loc_10015a828:
  10015a828  mov     x0, x19
  10015a82c  bl      _objc_release
loc_10015a830:
  10015a830  bl      _objc_end_catch                          ; objc_end_catch()
loc_10015a834:
  10015a834  mov     x25, x24
  10015a838  b       loc_10015a6b0
  10015a83c  stp     x23, x22, [sp, #0x28]
  10015a840  mov     x23, x0
  10015a844  b       loc_10015a6b0

; ======================================================================
; -[TAGCustomFunctionCall functionCallEvaluator]
; address 0x10015a848  size 16  kind objc
; ======================================================================
  10015a848  adrp    x8, #0x100420000
  10015a84c  ldrsw   x8, [x8, #0xaf8]                         ; ivar offset TAGCustomFunctionCall._functionCallEvaluator (+0x8)
  10015a850  ldr     x0, [x0, x8]                             ; x0 = self->_functionCallEvaluator
  10015a854  ret

; ======================================================================
; -[TAGCustomFunctionCall setFunctionCallEvaluator:]
; address 0x10015a858  size 20  kind objc
; ======================================================================
  10015a858  adrp    x8, #0x100420000
  10015a85c  ldrsw   x8, [x8, #0xaf8]                         ; ivar offset TAGCustomFunctionCall._functionCallEvaluator (+0x8)
  10015a860  add     x0, x0, x8
  10015a864  mov     x1, x2
  10015a868  b       _objc_storeStrong

; ======================================================================
; -[TAGCustomFunctionCall .cxx_destruct]
; address 0x10015a86c  size 20  kind objc
; ======================================================================
  10015a86c  mov     x1, #0
  10015a870  adrp    x8, #0x100420000
  10015a874  ldrsw   x8, [x8, #0xaf8]                         ; ivar offset TAGCustomFunctionCall._functionCallEvaluator (+0x8)
  10015a878  add     x0, x0, x8
  10015a87c  b       _objc_storeStrong
