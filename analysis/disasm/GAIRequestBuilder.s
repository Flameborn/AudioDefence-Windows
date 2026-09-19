// unit GAIRequestBuilder — 12 functions
//   0x10011e314     132  -[GAIRequestBuilder init]
//   0x10011e398     100  -[GAIRequestBuilder dealloc]
//   0x10011e3fc     236  -[GAIRequestBuilder encodeParameter:withValue:]
//   0x10011e4e8     536  -[GAIRequestBuilder encodeParameters:]
//   0x10011e700     212  -[GAIRequestBuilder parameterValueToString:]
//   0x10011e7d4     732  -[GAIRequestBuilder parametersForHit:]
//   0x10011eab0      32  -[GAIRequestBuilder parametersForHit:]_block_invoke
//   0x10011ead0     260  -[GAIRequestBuilder baseRequest]
//   0x10011ebd4     676  -[GAIRequestBuilder requestPostUrl:payload:compression:]
//   0x10011ee78     368  -[GAIRequestBuilder requestGetUrl:payload:]
//   0x10011efe8      16  -[GAIRequestBuilder userAgent]
//   0x10011eff8      28  -[GAIRequestBuilder setUserAgent:]

; ======================================================================
; -[GAIRequestBuilder init]
; address 0x10011e314  size 132  kind objc
; ======================================================================
  10011e314  stp     x29, x30, [sp, #-0x10]!
  10011e318  mov     x29, sp
  10011e31c  stp     x20, x19, [sp, #-0x10]!
  10011e320  sub     sp, sp, #0x10
  10011e324  str     x0, [sp]
  10011e328  adrp    x8, #0x10041f000
  10011e32c  ldr     x8, [x8, #0xf8]
  10011e330  str     x8, [sp, #8]
  10011e334  adrp    x8, #0x100416000
  10011e338  nop
  10011e33c  ldr     x1, [x8, #0xab8]
  10011e340  mov     x0, sp
  10011e344  bl      _objc_msgSendSuper2                      ; [super init]
  10011e348  mov     x19, x0
  10011e34c  cbz     x19, loc_10011e384                       ; if (self == 0)
  10011e350  adrp    x8, #0x10041e000
  10011e354  ldr     x0, [x8, #0x600]                         ; class GAIHitUtil
  10011e358  adrp    x8, #0x10041b000
  10011e35c  nop
  10011e360  ldr     x1, [x8, #0xce0]
  10011e364  bl      _objc_msgSend                            ; [GAIHitUtil userAgentString]
  10011e368  adrp    x8, #0x100419000
  10011e36c  nop
  10011e370  ldr     x1, [x8, #0xc08]
  10011e374  bl      _objc_msgSend                            ; [[GAIHitUtil userAgentString] copy]
  10011e378  adrp    x8, #0x100420000
  10011e37c  ldrsw   x8, [x8, #0x850]                         ; ivar offset GAIRequestBuilder.userAgent_ (+0x8)
  10011e380  str     x0, [x19, x8]                            ; self->userAgent_ = [[GAIHitUtil userAgentString] copy]
loc_10011e384:
  10011e384  mov     x0, x19
  10011e388  sub     sp, x29, #0x10
  10011e38c  ldp     x20, x19, [sp], #0x10
  10011e390  ldp     x29, x30, [sp], #0x10
  10011e394  ret

; ======================================================================
; -[GAIRequestBuilder dealloc]
; address 0x10011e398  size 100  kind objc
; ======================================================================
  10011e398  stp     x29, x30, [sp, #-0x10]!
  10011e39c  mov     x29, sp
  10011e3a0  stp     x20, x19, [sp, #-0x10]!
  10011e3a4  sub     sp, sp, #0x10
  10011e3a8  mov     x19, x0
  10011e3ac  adrp    x8, #0x100420000
  10011e3b0  ldrsw   x8, [x8, #0x850]                         ; ivar offset GAIRequestBuilder.userAgent_ (+0x8)
  10011e3b4  ldr     x0, [x19, x8]                            ; x0 = self->userAgent_
  10011e3b8  adrp    x8, #0x10041b000
  10011e3bc  nop
  10011e3c0  ldr     x1, [x8, #0xd70]
  10011e3c4  bl      _objc_msgSend                            ; [self->userAgent_ release]
  10011e3c8  str     x19, [sp]
  10011e3cc  adrp    x8, #0x10041f000
  10011e3d0  ldr     x8, [x8, #0xf8]
  10011e3d4  str     x8, [sp, #8]
  10011e3d8  adrp    x8, #0x100416000
  10011e3dc  nop
  10011e3e0  ldr     x1, [x8, #0xfc8]
  10011e3e4  mov     x0, sp
  10011e3e8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10011e3ec  sub     sp, x29, #0x10
  10011e3f0  ldp     x20, x19, [sp], #0x10
  10011e3f4  ldp     x29, x30, [sp], #0x10
  10011e3f8  ret

; ======================================================================
; -[GAIRequestBuilder encodeParameter:withValue:]
; address 0x10011e3fc  size 236  kind objc
; ======================================================================
  10011e3fc  stp     x29, x30, [sp, #-0x10]!
  10011e400  mov     x29, sp
  10011e404  stp     x20, x19, [sp, #-0x10]!
  10011e408  stp     x22, x21, [sp, #-0x10]!
  10011e40c  stp     x24, x23, [sp, #-0x10]!
  10011e410  sub     sp, sp, #0x10
  10011e414  mov     x19, x3
  10011e418  adrp    x23, #0x10041e000
  10011e41c  ldr     x0, [x23, #0x5b0]                        ; class GAIStringUtil
  10011e420  adrp    x8, #0x10041c000
  10011e424  nop
  10011e428  ldr     x1, [x8, #0xb0]
  10011e42c  bl      _objc_msgSend                            ; [GAIStringUtil stripLeadingAmpersand:arg1]
  10011e430  mov     x20, x0
  10011e434  adrp    x8, #0x100417000
  10011e438  nop
  10011e43c  ldr     x1, [x8, #0xc58]
  10011e440  mov     x0, x19
  10011e444  bl      _objc_msgSend                            ; [arg2 length]
  10011e448  cbz     x0, loc_10011e4bc                        ; if ([arg2 length] == 0)
  10011e44c  adrp    x8, #0x10041d000
  10011e450  ldr     x21, [x8, #0xf78]                        ; class NSString
  10011e454  ldr     x0, [x23, #0x5b0]                        ; class GAIStringUtil
  10011e458  adrp    x8, #0x10041c000
  10011e45c  nop
  10011e460  ldr     x22, [x8, #0xb8]
  10011e464  mov     x1, x22
  10011e468  mov     x2, x20
  10011e46c  bl      _objc_msgSend                            ; [GAIStringUtil percentEncode:[GAIStringUtil stripLeadingAmpersand:arg1]]
  10011e470  mov     x20, x0
  10011e474  ldr     x0, [x23, #0x5b0]                        ; class GAIStringUtil
  10011e478  mov     x1, x22
  10011e47c  mov     x2, x19
  10011e480  bl      _objc_msgSend                            ; [GAIStringUtil percentEncode:arg2]
  10011e484  adrp    x8, #0x100416000
  10011e488  nop
  10011e48c  ldr     x1, [x8, #0xee8]
  10011e490  stp     x20, x0, [sp]
  10011e494  adrp    x2, #0x1003c5000
  10011e498  add     x2, x2, #0xd0                            ; @"%@=%@"
  10011e49c  mov     x0, x21
  10011e4a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@=%@", [GAIStringUtil percentEncode:[GAIStringUtil stripLeadingAmpersand:arg1]], [GAIStringUtil percentEncode:arg2]]
  10011e4a4  sub     sp, x29, #0x30
  10011e4a8  ldp     x24, x23, [sp], #0x10
  10011e4ac  ldp     x22, x21, [sp], #0x10
  10011e4b0  ldp     x20, x19, [sp], #0x10
  10011e4b4  ldp     x29, x30, [sp], #0x10
  10011e4b8  ret
loc_10011e4bc:
  10011e4bc  ldr     x0, [x23, #0x5b0]                        ; class GAIStringUtil
  10011e4c0  adrp    x8, #0x10041c000
  10011e4c4  nop
  10011e4c8  ldr     x1, [x8, #0xb8]
  10011e4cc  mov     x2, x20
  10011e4d0  sub     sp, x29, #0x30
  10011e4d4  ldp     x24, x23, [sp], #0x10
  10011e4d8  ldp     x22, x21, [sp], #0x10
  10011e4dc  ldp     x20, x19, [sp], #0x10
  10011e4e0  ldp     x29, x30, [sp], #0x10
  10011e4e4  b       _objc_msgSend                            ; [GAIStringUtil percentEncode:[GAIStringUtil stripLeadingAmpersand:arg1]]

; ======================================================================
; -[GAIRequestBuilder encodeParameters:]
; address 0x10011e4e8  size 536  kind objc
; ======================================================================
  10011e4e8  stp     x29, x30, [sp, #-0x10]!
  10011e4ec  mov     x29, sp
  10011e4f0  stp     x20, x19, [sp, #-0x10]!
  10011e4f4  stp     x22, x21, [sp, #-0x10]!
  10011e4f8  stp     x24, x23, [sp, #-0x10]!
  10011e4fc  stp     x26, x25, [sp, #-0x10]!
  10011e500  stp     x28, x27, [sp, #-0x10]!
  10011e504  sub     sp, sp, #0x110
  10011e508  mov     x19, x2
  10011e50c  str     x19, [sp, #0x40]
  10011e510  mov     x20, x0
  10011e514  adrp    x8, #0x1003b0000
  10011e518  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011e51c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011e520  stur    x8, [x29, #-0x58]
  10011e524  adrp    x8, #0x10041d000
  10011e528  ldr     x21, [x8, #0xf28]                        ; class NSMutableArray
  10011e52c  adrp    x8, #0x100416000
  10011e530  nop
  10011e534  ldr     x1, [x8, #0xe30]
  10011e538  mov     x0, x19
  10011e53c  bl      _objc_msgSend                            ; [arg1 count]
  10011e540  mov     x2, x0
  10011e544  adrp    x8, #0x10041b000
  10011e548  nop
  10011e54c  ldr     x1, [x8, #0x280]
  10011e550  mov     x0, x21
  10011e554  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[arg1 count]]
  10011e558  str     x0, [sp, #0x38]
  10011e55c  stp     xzr, xzr, [x29, #-0x68]
  10011e560  stp     xzr, xzr, [x29, #-0x78]
  10011e564  stp     xzr, xzr, [x29, #-0x88]
  10011e568  stp     xzr, xzr, [x29, #-0x98]
  10011e56c  adrp    x8, #0x100417000
  10011e570  nop
  10011e574  ldr     x1, [x8, #0x248]
  10011e578  mov     x0, x19
  10011e57c  bl      _objc_msgSend                            ; [arg1 allKeys]
  10011e580  mov     x22, x0
  10011e584  adrp    x8, #0x100416000
  10011e588  nop
  10011e58c  ldr     x1, [x8, #0xe00]
  10011e590  str     x1, [sp, #0x20]
  10011e594  sub     x2, x29, #0x98
  10011e598  add     x3, sp, #0x48
  10011e59c  mov     x4, #0x10
  10011e5a0  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10011e5a4  mov     x25, x0
  10011e5a8  cbz     x25, loc_10011e6c0                       ; if ([[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10011e5ac  adrp    x8, #0x1003b8000
  10011e5b0  add     x8, x8, #0x500                           ; &d_1003b8500
  10011e5b4  ldr     x24, [x8]                                ; [&d_1003b8500] -> @"&z"
  10011e5b8  ldur    x8, [x29, #-0x88]
  10011e5bc  ldr     x21, [x8]
  10011e5c0  adrp    x8, #0x100416000
  10011e5c4  nop
  10011e5c8  ldr     x26, [x8, #0xf58]
  10011e5cc  adrp    x8, #0x100417000
  10011e5d0  nop
  10011e5d4  ldr     x27, [x8, #0x40]
  10011e5d8  adrp    x8, #0x10041c000
  10011e5dc  nop
  10011e5e0  ldr     x28, [x8, #0xc0]
  10011e5e4  adrp    x8, #0x10041c000
  10011e5e8  nop
  10011e5ec  ldr     x8, [x8, #0xc8]
  10011e5f0  str     x8, [sp, #0x30]
  10011e5f4  adrp    x8, #0x100416000
  10011e5f8  nop
  10011e5fc  ldr     x8, [x8, #0xd90]
  10011e600  str     x8, [sp, #0x28]
  10011e604  sub     x8, x29, #0x98
  10011e608  str     x8, [sp, #0x18]
  10011e60c  add     x8, sp, #0x48
  10011e610  str     x8, [sp, #0x10]
loc_10011e614:
  10011e614  mov     x19, #0
loc_10011e618:
  10011e618  ldur    x8, [x29, #-0x88]
  10011e61c  ldr     x8, [x8]
  10011e620  cmp     x8, x21
  10011e624  b.eq    loc_10011e630                            ; if (x8 == x21)
  10011e628  mov     x0, x22
  10011e62c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 allKeys])
loc_10011e630:
  10011e630  ldur    x8, [x29, #-0x90]
  10011e634  ldr     x23, [x8, x19, lsl #3]
  10011e638  mov     x0, x23
  10011e63c  mov     x1, x26
  10011e640  mov     x2, x24
  10011e644  bl      _objc_msgSend                            ; [x0 isEqualToString:@"&z"]
  10011e648  tbnz    w0, #0, loc_10011e698                    ; if (([x0 isEqualToString:@"&z"] & 1))
  10011e64c  ldr     x0, [sp, #0x40]
  10011e650  mov     x1, x27
  10011e654  mov     x2, x23
  10011e658  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10011e65c  mov     x2, x0
  10011e660  mov     x0, x20
  10011e664  mov     x1, x28
  10011e668  bl      _objc_msgSend                            ; [self parameterValueToString:[arg1 objectForKey:x2]]
  10011e66c  mov     x8, x0
  10011e670  cbz     x8, loc_10011e698                        ; if ([self parameterValueToString:[arg1 objectForKey:x2]] == 0)
  10011e674  mov     x0, x20
  10011e678  ldr     x1, [sp, #0x30]
  10011e67c  mov     x2, x23
  10011e680  mov     x3, x8
  10011e684  bl      _objc_msgSend                            ; [self encodeParameter:x2 withValue:[self parameterValueToString:[arg1 objectForKey:x2]]]
  10011e688  mov     x2, x0
  10011e68c  ldr     x0, [sp, #0x38]
  10011e690  ldr     x1, [sp, #0x28]
  10011e694  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[arg1 count]] addObject:[self encodeParameter:x2 withValue:[self parameterValueToString:[arg1 objectForKey:x2]]]]
loc_10011e698:
  10011e698  add     x19, x19, #1
  10011e69c  cmp     x19, x25
  10011e6a0  b.lo    loc_10011e618                            ; if ((x19 + 1) <u [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10011e6a4  mov     x4, #0x10
  10011e6a8  mov     x0, x22
  10011e6ac  ldp     x2, x1, [sp, #0x18]
  10011e6b0  ldr     x3, [sp, #0x10]
  10011e6b4  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10011e6b8  mov     x25, x0
  10011e6bc  cbnz    x25, loc_10011e614                       ; if ([[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10011e6c0:
  10011e6c0  adrp    x8, #0x1003b0000
  10011e6c4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011e6c8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011e6cc  ldur    x9, [x29, #-0x58]
  10011e6d0  sub     x8, x8, x9
  10011e6d4  cbnz    x8, loc_10011e6fc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011e6d8  ldr     x0, [sp, #0x38]
  10011e6dc  sub     sp, x29, #0x50
  10011e6e0  ldp     x28, x27, [sp], #0x10
  10011e6e4  ldp     x26, x25, [sp], #0x10
  10011e6e8  ldp     x24, x23, [sp], #0x10
  10011e6ec  ldp     x22, x21, [sp], #0x10
  10011e6f0  ldp     x20, x19, [sp], #0x10
  10011e6f4  ldp     x29, x30, [sp], #0x10
  10011e6f8  ret
loc_10011e6fc:
  10011e6fc  bl      ___stack_chk_fail                        ; stack_chk_fail([[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])

; ======================================================================
; -[GAIRequestBuilder parameterValueToString:]
; address 0x10011e700  size 212  kind objc
; ======================================================================
  10011e700  stp     x29, x30, [sp, #-0x10]!
  10011e704  mov     x29, sp
  10011e708  stp     x20, x19, [sp, #-0x10]!
  10011e70c  stp     x22, x21, [sp, #-0x10]!
  10011e710  mov     x19, x2
  10011e714  cbz     x19, loc_10011e7bc                       ; if (arg1 == 0)
  10011e718  adrp    x8, #0x10041e000
  10011e71c  ldr     x0, [x8, #0x140]                         ; class NSNull
  10011e720  adrp    x8, #0x100417000
  10011e724  nop
  10011e728  ldr     x20, [x8, #0x2e0]
  10011e72c  mov     x1, x20
  10011e730  bl      _objc_msgSend                            ; [NSNull class]
  10011e734  mov     x2, x0
  10011e738  adrp    x8, #0x100417000
  10011e73c  nop
  10011e740  ldr     x21, [x8, #0x3b8]
  10011e744  mov     x0, x19
  10011e748  mov     x1, x21
  10011e74c  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNull class]]
  10011e750  tbnz    w0, #0, loc_10011e7bc                    ; if (([arg1 isKindOfClass:[NSNull class]] & 1))
  10011e754  adrp    x8, #0x10041d000
  10011e758  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011e75c  mov     x1, x20
  10011e760  bl      _objc_msgSend                            ; [NSString class]
  10011e764  mov     x2, x0
  10011e768  mov     x0, x19
  10011e76c  mov     x1, x21
  10011e770  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSString class]]
  10011e774  cbnz    w0, loc_10011e7c0                        ; if ([arg1 isKindOfClass:[NSString class]] != 0)
  10011e778  adrp    x8, #0x10041d000
  10011e77c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10011e780  mov     x1, x20
  10011e784  bl      _objc_msgSend                            ; [NSNumber class]
  10011e788  mov     x2, x0
  10011e78c  mov     x0, x19
  10011e790  mov     x1, x21
  10011e794  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  10011e798  cbz     w0, loc_10011e7bc                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  10011e79c  adrp    x8, #0x10041a000
  10011e7a0  nop
  10011e7a4  ldr     x1, [x8, #0xd20]
  10011e7a8  mov     x0, x19
  10011e7ac  ldp     x22, x21, [sp], #0x10
  10011e7b0  ldp     x20, x19, [sp], #0x10
  10011e7b4  ldp     x29, x30, [sp], #0x10
  10011e7b8  b       _objc_msgSend                            ; [arg1 stringValue]
loc_10011e7bc:
  10011e7bc  mov     x19, #0
loc_10011e7c0:
  10011e7c0  mov     x0, x19
  10011e7c4  ldp     x22, x21, [sp], #0x10
  10011e7c8  ldp     x20, x19, [sp], #0x10
  10011e7cc  ldp     x29, x30, [sp], #0x10
  10011e7d0  ret

; ======================================================================
; -[GAIRequestBuilder parametersForHit:]
; address 0x10011e7d4  size 732  kind objc
; ======================================================================
  10011e7d4  stp     x29, x30, [sp, #-0x10]!
  10011e7d8  mov     x29, sp
  10011e7dc  stp     x20, x19, [sp, #-0x10]!
  10011e7e0  stp     x22, x21, [sp, #-0x10]!
  10011e7e4  stp     x24, x23, [sp, #-0x10]!
  10011e7e8  stp     x26, x25, [sp, #-0x10]!
  10011e7ec  stp     x28, x27, [sp, #-0x10]!
  10011e7f0  sub     sp, sp, #0x10
  10011e7f4  mov     x24, x2
  10011e7f8  mov     x20, x0
  10011e7fc  adrp    x8, #0x1003b8000
  10011e800  add     x8, x8, #0x500                           ; &d_1003b8500
  10011e804  ldr     x19, [x8]                                ; [&d_1003b8500] -> @"&z"
  10011e808  adrp    x8, #0x1003b8000
  10011e80c  add     x8, x8, #0x1f0                           ; &d_1003b81f0
  10011e810  ldr     x22, [x8]                                ; [&d_1003b81f0] -> @"parameters"
  10011e814  adrp    x8, #0x10041b000
  10011e818  nop
  10011e81c  ldr     x25, [x8, #0xb70]
  10011e820  mov     x0, x24
  10011e824  mov     x1, x25
  10011e828  mov     x2, x22
  10011e82c  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"parameters"]
  10011e830  adrp    x8, #0x100417000
  10011e834  nop
  10011e838  ldr     x1, [x8, #0x40]
  10011e83c  mov     x2, x19
  10011e840  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"parameters"] objectForKey:@"&z"]
  10011e844  mov     x21, x0
  10011e848  mov     x0, x24
  10011e84c  mov     x1, x25
  10011e850  mov     x2, x22
  10011e854  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"parameters"]
  10011e858  adrp    x8, #0x100417000
  10011e85c  nop
  10011e860  ldr     x1, [x8, #0x248]
  10011e864  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"parameters"] allKeys]
  10011e868  mov     x23, x0
  10011e86c  adrp    x8, #0x10041e000
  10011e870  ldr     x0, [x8, #0x510]                         ; class NSPredicate
  10011e874  adrp    x8, #0x10041c000
  10011e878  nop
  10011e87c  ldr     x1, [x8, #0x338]
  10011e880  adrp    x2, #0x1003b8000
  10011e884  add     x2, x2, #0x280                           ; ^{-[GAIRequestBuilder parametersForHit:]_block_invoke}
  10011e888  bl      _objc_msgSend                            ; [NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]
  10011e88c  mov     x2, x0
  10011e890  adrp    x8, #0x10041c000
  10011e894  nop
  10011e898  ldr     x1, [x8, #0x1d8]
  10011e89c  mov     x0, x23
  10011e8a0  bl      _objc_msgSend                            ; [[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]
  10011e8a4  mov     x23, x0
  10011e8a8  mov     x0, x24
  10011e8ac  mov     x1, x25
  10011e8b0  mov     x2, x22
  10011e8b4  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"parameters"]
  10011e8b8  adrp    x8, #0x10041b000
  10011e8bc  nop
  10011e8c0  ldr     x1, [x8, #0xf18]
  10011e8c4  mov     x2, x23
  10011e8c8  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]]
  10011e8cc  adrp    x8, #0x10041b000
  10011e8d0  nop
  10011e8d4  ldr     x1, [x8, #0x1d8]
  10011e8d8  bl      _objc_msgSend                            ; [[[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]] mutableCopy]
  10011e8dc  adrp    x8, #0x10041b000
  10011e8e0  nop
  10011e8e4  ldr     x1, [x8, #0xe88]
  10011e8e8  bl      _objc_msgSend                            ; [[[[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]] mutableCopy] autorelease]
  10011e8ec  mov     x2, x0
  10011e8f0  adrp    x8, #0x10041c000
  10011e8f4  nop
  10011e8f8  ldr     x1, [x8, #0xd0]
  10011e8fc  mov     x0, x20
  10011e900  bl      _objc_msgSend                            ; [self encodeParameters:[[[[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]] mutableCopy] autorelease]]
  10011e904  mov     x22, x0
  10011e908  adrp    x8, #0x10041e000
  10011e90c  ldr     x23, [x8, #0x600]                        ; class GAIHitUtil
  10011e910  adrp    x8, #0x1003b8000
  10011e914  add     x8, x8, #0x1f8                           ; &d_1003b81f8
  10011e918  ldr     x26, [x8]                                ; [&d_1003b81f8] -> @"timestamp"
  10011e91c  mov     x0, x24
  10011e920  mov     x1, x25
  10011e924  mov     x2, x26
  10011e928  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"timestamp"]
  10011e92c  mov     x27, x0
  10011e930  adrp    x8, #0x10041e000
  10011e934  ldr     x0, [x8, #0x38]                          ; class NSDate
  10011e938  adrp    x8, #0x100418000
  10011e93c  nop
  10011e940  ldr     x1, [x8, #0x158]
  10011e944  bl      _objc_msgSend                            ; [NSDate date]
  10011e948  mov     x3, x0
  10011e94c  adrp    x8, #0x10041c000
  10011e950  nop
  10011e954  ldr     x1, [x8, #0xd8]
  10011e958  mov     x0, x23
  10011e95c  mov     x2, x27
  10011e960  bl      _objc_msgSend                            ; [GAIHitUtil millisecondsElapsedFrom:[arg1 objectForKeyedSubscript:@"timestamp"] To:[NSDate date]]
  10011e964  mov     x23, x0
  10011e968  mov     x0, x24
  10011e96c  mov     x1, x25
  10011e970  mov     x2, x26
  10011e974  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"timestamp"]
  10011e978  adrp    x8, #0x10041d000
  10011e97c  nop
  10011e980  ldr     x1, [x8, #0x5c8]
  10011e984  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"timestamp"] timeIntervalSince1970]
  10011e988  nop
  10011e98c  ldr     d1, #0x100181ca8                         ; d1 = 1000.0
  10011e990  fmul    d0, d0, d1
  10011e994  fcvtzs  x8, d0
  10011e998  adrp    x9, #0x10041d000
  10011e99c  ldr     x0, [x9, #0xf78]                         ; class NSString
  10011e9a0  adrp    x9, #0x100416000
  10011e9a4  nop
  10011e9a8  ldr     x1, [x9, #0xee8]
  10011e9ac  str     x8, [sp]
  10011e9b0  adrp    x2, #0x1003c5000
  10011e9b4  add     x2, x2, #0x1f0                           ; @"%llu"
  10011e9b8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%llu", (int)([[arg1 objectForKeyedSubscript:@"timestamp"] timeIntervalSince1970] * 1000…]
  10011e9bc  mov     x3, x0
  10011e9c0  adrp    x8, #0x1003b8000
  10011e9c4  add     x8, x8, #0x510                           ; &d_1003b8510
  10011e9c8  ldr     x2, [x8]                                 ; [&d_1003b8510] -> @"&ht"
  10011e9cc  adrp    x8, #0x10041c000
  10011e9d0  nop
  10011e9d4  ldr     x24, [x8, #0xc8]
  10011e9d8  mov     x0, x20
  10011e9dc  mov     x1, x24
  10011e9e0  bl      _objc_msgSend                            ; [self encodeParameter:@"&ht" withValue:[NSString stringWithFormat:@"%llu", (int)([[arg1 objectForKeyedSubscript:@"timestamp"] timeIntervalSince1970] * 1000…]]
  10011e9e4  mov     x2, x0
  10011e9e8  adrp    x8, #0x100416000
  10011e9ec  nop
  10011e9f0  ldr     x25, [x8, #0xd90]
  10011e9f4  mov     x0, x22
  10011e9f8  mov     x1, x25
  10011e9fc  bl      _objc_msgSend                            ; [[self encodeParameters:[[[[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]] mutableCopy] autorelease]] addObject:[self encodeParameter:@"&ht" withValue:[NSString stringWithFormat:@"%llu", (int)([[arg1 objectForKeyedSubscript:@"timestamp"] timeIntervalSince1970] * 1000…]]]
  10011ea00  cmp     x23, #1
  10011ea04  b.lt    loc_10011ea50                            ; if ([GAIHitUtil millisecondsElapsedFrom:[arg1 objectForKeyedSubscript:@"timestamp"] To:[NSDate date]] < 1)
  10011ea08  adrp    x8, #0x10041e000
  10011ea0c  ldr     x0, [x8, #0x5b0]                         ; class GAIStringUtil
  10011ea10  adrp    x8, #0x10041c000
  10011ea14  nop
  10011ea18  ldr     x1, [x8, #0xe0]
  10011ea1c  mov     x2, x23
  10011ea20  bl      _objc_msgSend                            ; [GAIStringUtil uintString:[GAIHitUtil millisecondsElapsedFrom:[arg1 objectForKeyedSubscript:@"timestamp"] To:[NSDate date]]]
  10011ea24  mov     x3, x0
  10011ea28  adrp    x8, #0x1003b8000
  10011ea2c  add     x8, x8, #0x4f8                           ; &d_1003b84f8
  10011ea30  ldr     x2, [x8]                                 ; [&d_1003b84f8] -> @"&qt"
  10011ea34  mov     x0, x20
  10011ea38  mov     x1, x24
  10011ea3c  bl      _objc_msgSend                            ; [self encodeParameter:@"&qt" withValue:[GAIStringUtil uintString:[GAIHitUtil millisecondsElapsedFrom:[arg1 objectForKeyedSubscript:@"timestamp"] To:[NSDate date]]]]
  10011ea40  mov     x2, x0
  10011ea44  mov     x0, x22
  10011ea48  mov     x1, x25
  10011ea4c  bl      _objc_msgSend                            ; [[self encodeParameters:[[[[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]] mutableCopy] autorelease]] addObject:[self encodeParameter:@"&qt" withValue:[GAIStringUtil uintString:[GAIHitUtil millisecondsElapsedFrom:[arg1 objectForKeyedSubscript:@"timestamp"] To:[NSDate date]]]]]
loc_10011ea50:
  10011ea50  cbz     x21, loc_10011ea78                       ; if ([[arg1 objectForKeyedSubscript:@"parameters"] objectForKey:@"&z"] == 0)
  10011ea54  mov     x0, x20
  10011ea58  mov     x1, x24
  10011ea5c  mov     x2, x19
  10011ea60  mov     x3, x21
  10011ea64  bl      _objc_msgSend                            ; [self encodeParameter:@"&z" withValue:[[arg1 objectForKeyedSubscript:@"parameters"] objectForKey:@"&z"]]
  10011ea68  mov     x2, x0
  10011ea6c  mov     x0, x22
  10011ea70  mov     x1, x25
  10011ea74  bl      _objc_msgSend                            ; [[self encodeParameters:[[[[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]] mutableCopy] autorelease]] addObject:[self encodeParameter:@"&z" withValue:[[arg1 objectForKeyedSubscript:@"parameters"] objectForKey:@"&z"]]]
loc_10011ea78:
  10011ea78  adrp    x8, #0x10041c000
  10011ea7c  nop
  10011ea80  ldr     x1, [x8, #0x1e8]
  10011ea84  adrp    x2, #0x1003c4000
  10011ea88  add     x2, x2, #0xb10                           ; @"&"
  10011ea8c  mov     x0, x22
  10011ea90  sub     sp, x29, #0x50
  10011ea94  ldp     x28, x27, [sp], #0x10
  10011ea98  ldp     x26, x25, [sp], #0x10
  10011ea9c  ldp     x24, x23, [sp], #0x10
  10011eaa0  ldp     x22, x21, [sp], #0x10
  10011eaa4  ldp     x20, x19, [sp], #0x10
  10011eaa8  ldp     x29, x30, [sp], #0x10
  10011eaac  b       _objc_msgSend                            ; [[self encodeParameters:[[[[arg1 objectForKeyedSubscript:@"parameters"] dictionaryWithValuesForKeys:[[[arg1 objectForKeyedSubscript:@"parameters"] allKeys] filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIRequestBuilder parametersForHit:]_block_invoke}]]] mutableCopy] autorelease]] componentsJoinedByString:@"&"]

; ======================================================================
; -[GAIRequestBuilder parametersForHit:]_block_invoke
; address 0x10011eab0  size 32  kind block
; ======================================================================
  10011eab0  adrp    x8, #0x10041a000
  10011eab4  nop
  10011eab8  ldr     x8, [x8, #0x2d0]
  10011eabc  adrp    x2, #0x1003c4000
  10011eac0  add     x2, x2, #0xb10                           ; @"&"
  10011eac4  mov     x0, x1
  10011eac8  mov     x1, x8
  10011eacc  b       _objc_msgSend                            ; [blockarg1 hasPrefix:@"&"]

; ======================================================================
; -[GAIRequestBuilder baseRequest]
; address 0x10011ead0  size 260  kind objc
; ======================================================================
  10011ead0  stp     x29, x30, [sp, #-0x10]!
  10011ead4  mov     x29, sp
  10011ead8  stp     x20, x19, [sp, #-0x10]!
  10011eadc  stp     x22, x21, [sp, #-0x10]!
  10011eae0  sub     sp, sp, #0x10
  10011eae4  mov     x19, x0
  10011eae8  adrp    x8, #0x10041e000
  10011eaec  ldr     x0, [x8, #0x4a0]                         ; class NSMutableURLRequest
  10011eaf0  adrp    x8, #0x100416000
  10011eaf4  nop
  10011eaf8  ldr     x1, [x8, #0xac8]
  10011eafc  bl      _objc_msgSend                            ; [NSMutableURLRequest alloc]
  10011eb00  adrp    x8, #0x100416000
  10011eb04  nop
  10011eb08  ldr     x1, [x8, #0xab8]
  10011eb0c  bl      _objc_msgSend                            ; [[NSMutableURLRequest alloc] init]
  10011eb10  adrp    x8, #0x10041b000
  10011eb14  nop
  10011eb18  ldr     x1, [x8, #0xe88]
  10011eb1c  bl      _objc_msgSend                            ; [[[NSMutableURLRequest alloc] init] autorelease]
  10011eb20  mov     x20, x0
  10011eb24  adrp    x8, #0x10041d000
  10011eb28  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011eb2c  adrp    x8, #0x1003b8000
  10011eb30  add     x8, x8, #0x1c0                           ; &d_1003b81c0
  10011eb34  ldr     x8, [x8]                                 ; [&d_1003b81c0] -> @"application/x-www-form-urlencoded"
  10011eb38  adrp    x9, #0x1003b8000
  10011eb3c  add     x9, x9, #0x1c8                           ; &d_1003b81c8
  10011eb40  ldr     x9, [x9]                                 ; [&d_1003b81c8] -> @"UTF-8"
  10011eb44  adrp    x10, #0x100416000
  10011eb48  nop
  10011eb4c  ldr     x1, [x10, #0xee8]
  10011eb50  stp     x8, x9, [sp]
  10011eb54  adrp    x2, #0x1003c5000
  10011eb58  add     x2, x2, #0xf0                            ; @"%@; charset=%@"
  10011eb5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@; charset=%@", @"application/x-www-form-urlencoded", @"UTF-8"]
  10011eb60  mov     x2, x0
  10011eb64  adrp    x8, #0x10041b000
  10011eb68  nop
  10011eb6c  ldr     x21, [x8, #0xce8]
  10011eb70  adrp    x3, #0x1003c5000
  10011eb74  add     x3, x3, #0x90                            ; @"Content-Type"
  10011eb78  mov     x0, x20
  10011eb7c  mov     x1, x21
  10011eb80  bl      _objc_msgSend                            ; [[[[NSMutableURLRequest alloc] init] autorelease] setValue:[NSString stringWithFormat:@"%@; charset=%@", @"application/x-www-form-urlencoded", @"UTF-8"] forHTTPHeaderField:@"Content-Type"]
  10011eb84  adrp    x8, #0x100420000
  10011eb88  ldrsw   x8, [x8, #0x850]                         ; ivar offset GAIRequestBuilder.userAgent_ (+0x8)
  10011eb8c  ldr     x2, [x19, x8]                            ; x2 = self->userAgent_
  10011eb90  adrp    x3, #0x1003c4000
  10011eb94  add     x3, x3, #0x210                           ; @"User-Agent"
  10011eb98  mov     x0, x20
  10011eb9c  mov     x1, x21
  10011eba0  bl      _objc_msgSend                            ; [[[[NSMutableURLRequest alloc] init] autorelease] setValue:self->userAgent_ forHTTPHeaderField:@"User-Agent"]
  10011eba4  adrp    x8, #0x10041b000
  10011eba8  nop
  10011ebac  ldr     x1, [x8, #0xcd8]
  10011ebb0  mov     x2, #4
  10011ebb4  mov     x0, x20
  10011ebb8  bl      _objc_msgSend                            ; [[[[NSMutableURLRequest alloc] init] autorelease] setCachePolicy:4]
  10011ebbc  mov     x0, x20
  10011ebc0  sub     sp, x29, #0x20
  10011ebc4  ldp     x22, x21, [sp], #0x10
  10011ebc8  ldp     x20, x19, [sp], #0x10
  10011ebcc  ldp     x29, x30, [sp], #0x10
  10011ebd0  ret

; ======================================================================
; -[GAIRequestBuilder requestPostUrl:payload:compression:]
; address 0x10011ebd4  size 676  kind objc
; ======================================================================
  10011ebd4  stp     x29, x30, [sp, #-0x10]!
  10011ebd8  mov     x29, sp
  10011ebdc  stp     x20, x19, [sp, #-0x10]!
  10011ebe0  stp     x22, x21, [sp, #-0x10]!
  10011ebe4  stp     x24, x23, [sp, #-0x10]!
  10011ebe8  stp     x26, x25, [sp, #-0x10]!
  10011ebec  sub     sp, sp, #0x30
  10011ebf0  mov     x21, x4
  10011ebf4  mov     x22, x3
  10011ebf8  mov     x19, x2
  10011ebfc  mov     x20, x0
  10011ec00  adrp    x8, #0x10041d000
  10011ec04  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10011ec08  adrp    x8, #0x10041b000
  10011ec0c  nop
  10011ec10  ldr     x1, [x8, #0xdc8]
  10011ec14  bl      _objc_msgSend                            ; [GAI sharedLogger]
  10011ec18  mov     x23, x0
  10011ec1c  adrp    x8, #0x10041d000
  10011ec20  ldr     x24, [x8, #0xf78]                        ; class NSString
  10011ec24  adrp    x8, #0x1003b7000
  10011ec28  add     x8, x8, #0xd70                           ; &d_1003b7d70
  10011ec2c  ldr     x25, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10011ec30  adrp    x8, #0x1003b7000
  10011ec34  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10011ec38  ldr     x26, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  10011ec3c  adrp    x8, #0x10041b000
  10011ec40  nop
  10011ec44  ldr     x1, [x8, #0x580]
  10011ec48  adrp    x0, #0x1003c5000
  10011ec4c  add     x0, x0, #0x130                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10011ec50  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  10011ec54  adrp    x8, #0x100416000
  10011ec58  nop
  10011ec5c  ldr     x1, [x8, #0xee8]
  10011ec60  mov     x8, #0xa7
  10011ec64  adrp    x9, #0x100390000
  10011ec68  add     x9, x9, #0x769                           ; "-[GAIRequestBuilder requestPostUrl:payload:compression:]"
  10011ec6c  stp     x8, x19, [sp, #0x20]
  10011ec70  stp     x9, x0, [sp, #0x10]
  10011ec74  stp     x25, x26, [sp]
  10011ec78  adrp    x2, #0x1003c5000
  10011ec7c  add     x2, x2, #0x110                           ; @"%@ %@ %s (%@:%d): building URLRequest for %@"
  10011ec80  mov     x0, x24
  10011ec84  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): building URLRequest for %@", @"GoogleAnalytics", @"3.09", "-[GAIRequestBuilder requestPostUrl:payload:compression:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 167, arg1]
  10011ec88  mov     x2, x0
  10011ec8c  adrp    x8, #0x10041b000
  10011ec90  nop
  10011ec94  ldr     x1, [x8, #0xb08]
  10011ec98  mov     x0, x23
  10011ec9c  bl      _objc_msgSend                            ; [[GAI sharedLogger] verbose:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): building URLRequest for %@", @"GoogleAnalytics", @"3.09", "-[GAIRequestBuilder requestPostUrl:payload:compression:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 167, arg1]]
  10011eca0  adrp    x8, #0x10041c000
  10011eca4  nop
  10011eca8  ldr     x1, [x8, #0xe8]
  10011ecac  mov     x0, x20
  10011ecb0  bl      _objc_msgSend                            ; [self baseRequest]
  10011ecb4  mov     x20, x0
  10011ecb8  adrp    x8, #0x10041b000
  10011ecbc  nop
  10011ecc0  ldr     x1, [x8, #0xcd0]
  10011ecc4  adrp    x2, #0x1003c5000
  10011ecc8  add     x2, x2, #0x50                            ; @"POST"
  10011eccc  bl      _objc_msgSend                            ; [[self baseRequest] setHTTPMethod:@"POST"]
  10011ecd0  adrp    x8, #0x10041b000
  10011ecd4  nop
  10011ecd8  ldr     x1, [x8, #0x358]
  10011ecdc  mov     x2, #4
  10011ece0  mov     x0, x22
  10011ece4  bl      _objc_msgSend                            ; [arg2 dataUsingEncoding:4]
  10011ece8  mov     x2, x0
  10011ecec  cmp     x21, #2
  10011ecf0  b.ne    loc_10011ed3c                            ; if (arg3 != 2)
  10011ecf4  adrp    x8, #0x10041e000
  10011ecf8  ldr     x0, [x8, #0x620]                         ; class GAICompressionUtil
  10011ecfc  adrp    x8, #0x10041c000
  10011ed00  nop
  10011ed04  ldr     x1, [x8, #0x100]
  10011ed08  bl      _objc_msgSend                            ; [GAICompressionUtil gai_dataByGzippingData:[arg2 dataUsingEncoding:4]]
  10011ed0c  mov     x2, x0
  10011ed10  adrp    x8, #0x10041c000
  10011ed14  nop
  10011ed18  ldr     x1, [x8, #0xf8]
  10011ed1c  mov     x0, x20
  10011ed20  bl      _objc_msgSend                            ; [[self baseRequest] setHTTPBody:[GAICompressionUtil gai_dataByGzippingData:[arg2 dataUsingEncoding:4]]]
  10011ed24  adrp    x8, #0x10041b000
  10011ed28  add     x8, x8, #0xce8                           ; &@selector(setValue:forHTTPHeaderField:)
  10011ed2c  ldr     x1, [x8]
  10011ed30  adrp    x2, #0x1003c5000
  10011ed34  add     x2, x2, #0x170                           ; @"gzip"
  10011ed38  b       loc_10011ed88
loc_10011ed3c:
  10011ed3c  cmp     x21, #1
  10011ed40  b.ne    loc_10011ed9c                            ; if (arg3 != 1)
  10011ed44  adrp    x8, #0x10041e000
  10011ed48  ldr     x0, [x8, #0x620]                         ; class GAICompressionUtil
  10011ed4c  adrp    x8, #0x10041c000
  10011ed50  nop
  10011ed54  ldr     x1, [x8, #0xf0]
  10011ed58  bl      _objc_msgSend                            ; [GAICompressionUtil gai_dataByDeflatingData:[arg2 dataUsingEncoding:4]]
  10011ed5c  mov     x2, x0
  10011ed60  adrp    x8, #0x10041c000
  10011ed64  nop
  10011ed68  ldr     x1, [x8, #0xf8]
  10011ed6c  mov     x0, x20
  10011ed70  bl      _objc_msgSend                            ; [[self baseRequest] setHTTPBody:[GAICompressionUtil gai_dataByDeflatingData:[arg2 dataUsingEncoding:4]]]
  10011ed74  adrp    x8, #0x10041b000
  10011ed78  add     x8, x8, #0xce8                           ; &@selector(setValue:forHTTPHeaderField:)
  10011ed7c  ldr     x1, [x8]
  10011ed80  adrp    x2, #0x1003c5000
  10011ed84  add     x2, x2, #0x150                           ; @"deflate"
loc_10011ed88:
  10011ed88  adrp    x3, #0x1003c5000
  10011ed8c  add     x3, x3, #0xb0                            ; @"Content-Encoding"
  10011ed90  mov     x0, x20
  10011ed94  bl      _objc_msgSend                            ; [[self baseRequest] setValue:one of {@"deflate", @"gzip"} forHTTPHeaderField:@"Content-Encoding"]
  10011ed98  b       loc_10011edb0
loc_10011ed9c:
  10011ed9c  adrp    x8, #0x10041c000
  10011eda0  nop
  10011eda4  ldr     x1, [x8, #0xf8]
  10011eda8  mov     x0, x20
  10011edac  bl      _objc_msgSend                            ; [[self baseRequest] setHTTPBody:[arg2 dataUsingEncoding:4]]
loc_10011edb0:
  10011edb0  adrp    x8, #0x10041d000
  10011edb4  ldr     x21, [x8, #0xf68]                        ; class NSNumber
  10011edb8  adrp    x8, #0x10041c000
  10011edbc  nop
  10011edc0  ldr     x1, [x8, #0x3a8]
  10011edc4  mov     x0, x20
  10011edc8  bl      _objc_msgSend                            ; [[self baseRequest] HTTPBody]
  10011edcc  adrp    x8, #0x100417000
  10011edd0  nop
  10011edd4  ldr     x1, [x8, #0xc58]
  10011edd8  bl      _objc_msgSend                            ; [[[self baseRequest] HTTPBody] length]
  10011eddc  mov     x2, x0
  10011ede0  adrp    x8, #0x100417000
  10011ede4  nop
  10011ede8  ldr     x1, [x8, #0xd80]
  10011edec  mov     x0, x21
  10011edf0  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[[[self baseRequest] HTTPBody] length]]
  10011edf4  adrp    x8, #0x10041a000
  10011edf8  nop
  10011edfc  ldr     x1, [x8, #0xd20]
  10011ee00  bl      _objc_msgSend                            ; [[NSNumber numberWithUnsignedInteger:[[[self baseRequest] HTTPBody] length]] stringValue]
  10011ee04  mov     x2, x0
  10011ee08  adrp    x8, #0x10041b000
  10011ee0c  nop
  10011ee10  ldr     x1, [x8, #0xce8]
  10011ee14  adrp    x3, #0x1003c5000
  10011ee18  add     x3, x3, #0x70                            ; @"Content-Length"
  10011ee1c  mov     x0, x20
  10011ee20  bl      _objc_msgSend                            ; [[self baseRequest] setValue:[[NSNumber numberWithUnsignedInteger:[[[self baseRequest] HTTPBody] length]] stringValue] forHTTPHeaderField:@"Content-Length"]
  10011ee24  adrp    x8, #0x10041e000
  10011ee28  ldr     x0, [x8, #0xa0]                          ; class NSURL
  10011ee2c  adrp    x8, #0x10041a000
  10011ee30  nop
  10011ee34  ldr     x1, [x8, #0x628]
  10011ee38  mov     x2, x19
  10011ee3c  bl      _objc_msgSend                            ; [NSURL URLWithString:arg1]
  10011ee40  mov     x2, x0
  10011ee44  adrp    x8, #0x10041c000
  10011ee48  nop
  10011ee4c  ldr     x1, [x8, #0x108]
  10011ee50  mov     x0, x20
  10011ee54  bl      _objc_msgSend                            ; [[self baseRequest] setURL:[NSURL URLWithString:arg1]]
  10011ee58  mov     x0, x20
  10011ee5c  sub     sp, x29, #0x40
  10011ee60  ldp     x26, x25, [sp], #0x10
  10011ee64  ldp     x24, x23, [sp], #0x10
  10011ee68  ldp     x22, x21, [sp], #0x10
  10011ee6c  ldp     x20, x19, [sp], #0x10
  10011ee70  ldp     x29, x30, [sp], #0x10
  10011ee74  ret

; ======================================================================
; -[GAIRequestBuilder requestGetUrl:payload:]
; address 0x10011ee78  size 368  kind objc
; ======================================================================
  10011ee78  stp     x29, x30, [sp, #-0x10]!
  10011ee7c  mov     x29, sp
  10011ee80  stp     x20, x19, [sp, #-0x10]!
  10011ee84  stp     x22, x21, [sp, #-0x10]!
  10011ee88  stp     x24, x23, [sp, #-0x10]!
  10011ee8c  stp     x26, x25, [sp, #-0x10]!
  10011ee90  stp     x28, x27, [sp, #-0x10]!
  10011ee94  sub     sp, sp, #0x30
  10011ee98  mov     x19, x3
  10011ee9c  mov     x20, x2
  10011eea0  mov     x21, x0
  10011eea4  adrp    x8, #0x10041d000
  10011eea8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10011eeac  adrp    x8, #0x10041b000
  10011eeb0  nop
  10011eeb4  ldr     x1, [x8, #0xdc8]
  10011eeb8  bl      _objc_msgSend                            ; [GAI sharedLogger]
  10011eebc  mov     x22, x0
  10011eec0  adrp    x25, #0x10041d000
  10011eec4  ldr     x23, [x25, #0xf78]                       ; class NSString
  10011eec8  adrp    x8, #0x1003b7000
  10011eecc  add     x8, x8, #0xd70                           ; &d_1003b7d70
  10011eed0  ldr     x26, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10011eed4  adrp    x8, #0x1003b7000
  10011eed8  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10011eedc  ldr     x27, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  10011eee0  adrp    x8, #0x10041b000
  10011eee4  nop
  10011eee8  ldr     x1, [x8, #0x580]
  10011eeec  adrp    x0, #0x1003c5000
  10011eef0  add     x0, x0, #0x130                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10011eef4  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  10011eef8  adrp    x8, #0x100416000
  10011eefc  nop
  10011ef00  ldr     x24, [x8, #0xee8]
  10011ef04  mov     x8, #0xc3
  10011ef08  adrp    x9, #0x100390000
  10011ef0c  add     x9, x9, #0x864                           ; "-[GAIRequestBuilder requestGetUrl:payload:]"
  10011ef10  stp     x8, x20, [sp, #0x20]
  10011ef14  stp     x9, x0, [sp, #0x10]
  10011ef18  stp     x26, x27, [sp]
  10011ef1c  adrp    x2, #0x1003c5000
  10011ef20  add     x2, x2, #0x110                           ; @"%@ %@ %s (%@:%d): building URLRequest for %@"
  10011ef24  mov     x0, x23
  10011ef28  mov     x1, x24
  10011ef2c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): building URLRequest for %@", @"GoogleAnalytics", @"3.09", "-[GAIRequestBuilder requestGetUrl:payload:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 195, arg1]
  10011ef30  mov     x2, x0
  10011ef34  adrp    x8, #0x10041b000
  10011ef38  nop
  10011ef3c  ldr     x1, [x8, #0xb08]
  10011ef40  mov     x0, x22
  10011ef44  bl      _objc_msgSend                            ; [[GAI sharedLogger] verbose:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): building URLRequest for %@", @"GoogleAnalytics", @"3.09", "-[GAIRequestBuilder requestGetUrl:payload:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 195, arg1]]
  10011ef48  adrp    x8, #0x10041c000
  10011ef4c  nop
  10011ef50  ldr     x1, [x8, #0xe8]
  10011ef54  mov     x0, x21
  10011ef58  bl      _objc_msgSend                            ; [self baseRequest]
  10011ef5c  mov     x21, x0
  10011ef60  adrp    x8, #0x10041b000
  10011ef64  nop
  10011ef68  ldr     x1, [x8, #0xcd0]
  10011ef6c  adrp    x2, #0x1003c4000
  10011ef70  add     x2, x2, #0x1d0                           ; @"GET"
  10011ef74  bl      _objc_msgSend                            ; [[self baseRequest] setHTTPMethod:@"GET"]
  10011ef78  ldr     x0, [x25, #0xf78]                        ; class NSString
  10011ef7c  stp     x20, x19, [sp]
  10011ef80  adrp    x2, #0x1003c5000
  10011ef84  add     x2, x2, #0x190                           ; @"%@?%@"
  10011ef88  mov     x1, x24
  10011ef8c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@?%@", arg1, arg2]
  10011ef90  mov     x2, x0
  10011ef94  adrp    x8, #0x10041e000
  10011ef98  ldr     x0, [x8, #0xa0]                          ; class NSURL
  10011ef9c  adrp    x8, #0x10041a000
  10011efa0  nop
  10011efa4  ldr     x1, [x8, #0x628]
  10011efa8  bl      _objc_msgSend                            ; [NSURL URLWithString:[NSString stringWithFormat:@"%@?%@", arg1, arg2]]
  10011efac  mov     x2, x0
  10011efb0  adrp    x8, #0x10041c000
  10011efb4  nop
  10011efb8  ldr     x1, [x8, #0x108]
  10011efbc  mov     x0, x21
  10011efc0  bl      _objc_msgSend                            ; [[self baseRequest] setURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@?%@", arg1, arg2]]]
  10011efc4  mov     x0, x21
  10011efc8  sub     sp, x29, #0x50
  10011efcc  ldp     x28, x27, [sp], #0x10
  10011efd0  ldp     x26, x25, [sp], #0x10
  10011efd4  ldp     x24, x23, [sp], #0x10
  10011efd8  ldp     x22, x21, [sp], #0x10
  10011efdc  ldp     x20, x19, [sp], #0x10
  10011efe0  ldp     x29, x30, [sp], #0x10
  10011efe4  ret

; ======================================================================
; -[GAIRequestBuilder userAgent]
; address 0x10011efe8  size 16  kind objc
; ======================================================================
  10011efe8  mov     w3, #0
  10011efec  adrp    x8, #0x100420000
  10011eff0  ldrsw   x2, [x8, #0x850]                         ; ivar offset GAIRequestBuilder.userAgent_ (+0x8)
  10011eff4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[GAIRequestBuilder setUserAgent:]
; address 0x10011eff8  size 28  kind objc
; ======================================================================
  10011eff8  mov     x8, x2
  10011effc  adrp    x9, #0x100420000
  10011f000  ldrsw   x2, [x9, #0x850]                         ; ivar offset GAIRequestBuilder.userAgent_ (+0x8)
  10011f004  mov     w5, #1
  10011f008  mov     x3, x8
  10011f00c  mov     w4, #0
  10011f010  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)
