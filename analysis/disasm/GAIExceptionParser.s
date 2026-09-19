// unit GAIExceptionParser — 3 functions
//   0x100121c18     128  -[GAIExceptionParser init]
//   0x100121c98     352  +[GAIExceptionParser symbolFromStackFrame:]
//   0x100121df8     492  +[GAIExceptionParser exceptionDescription:withMaxLength:]

; ======================================================================
; -[GAIExceptionParser init]
; address 0x100121c18  size 128  kind objc
; ======================================================================
  100121c18  stp     x29, x30, [sp, #-0x10]!
  100121c1c  mov     x29, sp
  100121c20  stp     x20, x19, [sp, #-0x10]!
  100121c24  sub     sp, sp, #0x10
  100121c28  mov     x19, x1
  100121c2c  str     x0, [sp]
  100121c30  adrp    x8, #0x10041f000
  100121c34  ldr     x8, [x8, #0x128]
  100121c38  str     x8, [sp, #8]
  100121c3c  adrp    x8, #0x100416000
  100121c40  nop
  100121c44  ldr     x1, [x8, #0xab8]
  100121c48  mov     x0, sp
  100121c4c  bl      _objc_msgSendSuper2                      ; [super init]
  100121c50  mov     x20, x0
  100121c54  cbz     x20, loc_100121c84                       ; if (self == 0)
  100121c58  adrp    x8, #0x10041b000
  100121c5c  nop
  100121c60  ldr     x1, [x8, #0xd68]
  100121c64  mov     x0, x20
  100121c68  mov     x2, x19
  100121c6c  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  100121c70  adrp    x8, #0x10041b000
  100121c74  nop
  100121c78  ldr     x1, [x8, #0xd70]
  100121c7c  mov     x0, x20
  100121c80  bl      _objc_msgSend                            ; [self release]
loc_100121c84:
  100121c84  mov     x0, #0
  100121c88  sub     sp, x29, #0x10
  100121c8c  ldp     x20, x19, [sp], #0x10
  100121c90  ldp     x29, x30, [sp], #0x10
  100121c94  ret

; ======================================================================
; +[GAIExceptionParser symbolFromStackFrame:]
; address 0x100121c98  size 352  kind objc
; ======================================================================
  100121c98  stp     x29, x30, [sp, #-0x10]!
  100121c9c  mov     x29, sp
  100121ca0  stp     x20, x19, [sp, #-0x10]!
  100121ca4  stp     x22, x21, [sp, #-0x10]!
  100121ca8  mov     x19, x2
  100121cac  adrp    x8, #0x10041e000
  100121cb0  ldr     x0, [x8, #0x510]                         ; class NSPredicate
  100121cb4  adrp    x8, #0x10041b000
  100121cb8  nop
  100121cbc  ldr     x1, [x8, #0x9d0]
  100121cc0  adrp    x2, #0x1003c5000
  100121cc4  add     x2, x2, #0x590                           ; @"SELF != ''"
  100121cc8  bl      _objc_msgSend                            ; [NSPredicate predicateWithFormat:@"SELF != ''"]
  100121ccc  mov     x20, x0
  100121cd0  adrp    x8, #0x10041e000
  100121cd4  ldr     x0, [x8, #0x628]                         ; class NSCharacterSet
  100121cd8  adrp    x8, #0x10041c000
  100121cdc  nop
  100121ce0  ldr     x1, [x8, #0x1c8]
  100121ce4  bl      _objc_msgSend                            ; [NSCharacterSet whitespaceCharacterSet]
  100121ce8  mov     x2, x0
  100121cec  adrp    x8, #0x10041c000
  100121cf0  nop
  100121cf4  ldr     x1, [x8, #0x1d0]
  100121cf8  mov     x0, x19
  100121cfc  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]
  100121d00  adrp    x8, #0x10041c000
  100121d04  nop
  100121d08  ldr     x1, [x8, #0x1d8]
  100121d0c  mov     x2, x20
  100121d10  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]]
  100121d14  mov     x19, x0
  100121d18  adrp    x8, #0x100416000
  100121d1c  nop
  100121d20  ldr     x1, [x8, #0xe30]
  100121d24  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] count]
  100121d28  cmp     x0, #4
  100121d2c  b.lo    loc_100121d6c                            ; if ([[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPre… <u 4)
  100121d30  adrp    x8, #0x100416000
  100121d34  nop
  100121d38  ldr     x20, [x8, #0xc30]
  100121d3c  mov     x2, #3
  100121d40  mov     x0, x19
  100121d44  mov     x1, x20
  100121d48  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] objectAtIndex:3]
  100121d4c  adrp    x8, #0x100416000
  100121d50  nop
  100121d54  ldr     x21, [x8, #0xf58]
  100121d58  adrp    x2, #0x1003c5000
  100121d5c  add     x2, x2, #0x5b0                           ; @"+[NSException"
  100121d60  mov     x1, x21
  100121d64  bl      _objc_msgSend                            ; [[[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] objectAtIndex:3] isEqualToString:@"+[NSException"]
  100121d68  tbz     w0, #0, loc_100121d80                    ; if (!([[[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] objectAtIndex:3] isEqualToString:@"+[NSException"] & 1))
loc_100121d6c:
  100121d6c  mov     x0, #0
loc_100121d70:
  100121d70  ldp     x22, x21, [sp], #0x10
  100121d74  ldp     x20, x19, [sp], #0x10
  100121d78  ldp     x29, x30, [sp], #0x10
  100121d7c  ret
loc_100121d80:
  100121d80  mov     x2, #4
  100121d84  mov     x0, x19
  100121d88  mov     x1, x20
  100121d8c  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] objectAtIndex:4]
  100121d90  adrp    x2, #0x1003c5000
  100121d94  add     x2, x2, #0x2d0                           ; @"+"
  100121d98  mov     x1, x21
  100121d9c  bl      _objc_msgSend                            ; [[[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] objectAtIndex:4] isEqualToString:@"+"]
  100121da0  cbz     w0, loc_100121db8                        ; if ([[[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] objectAtIndex:4] isEqualToString:@"+"] == 0)
  100121da4  mov     x2, #3
  100121da8  mov     x0, x19
  100121dac  mov     x1, x20
  100121db0  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] objectAtIndex:3]
  100121db4  b       loc_100121d70
loc_100121db8:
  100121db8  adrp    x8, #0x10041c000
  100121dbc  nop
  100121dc0  ldr     x1, [x8, #0x1e0]
  100121dc4  mov     x2, #3
  100121dc8  mov     x3, #2
  100121dcc  mov     x0, x19
  100121dd0  bl      _objc_msgSend                            ; [[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] subarrayWithRange:3]
  100121dd4  adrp    x8, #0x10041c000
  100121dd8  nop
  100121ddc  ldr     x1, [x8, #0x1e8]
  100121de0  adrp    x2, #0x1003bd000
  100121de4  add     x2, x2, #0xfd0                           ; @" "
  100121de8  ldp     x22, x21, [sp], #0x10
  100121dec  ldp     x20, x19, [sp], #0x10
  100121df0  ldp     x29, x30, [sp], #0x10
  100121df4  b       _objc_msgSend                            ; [[[[arg1 componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]] subarrayWithRange:3] componentsJoinedByString:@" "]

; ======================================================================
; +[GAIExceptionParser exceptionDescription:withMaxLength:]
; address 0x100121df8  size 492  kind objc
; ======================================================================
  100121df8  stp     x29, x30, [sp, #-0x10]!
  100121dfc  mov     x29, sp
  100121e00  stp     x20, x19, [sp, #-0x10]!
  100121e04  stp     x22, x21, [sp, #-0x10]!
  100121e08  stp     x24, x23, [sp, #-0x10]!
  100121e0c  stp     x26, x25, [sp, #-0x10]!
  100121e10  stp     x28, x27, [sp, #-0x10]!
  100121e14  sub     sp, sp, #0x20
  100121e18  mov     x21, x3
  100121e1c  mov     x22, x2
  100121e20  str     x0, [sp, #0x18]
  100121e24  adrp    x8, #0x100417000
  100121e28  nop
  100121e2c  ldr     x1, [x8, #0x450]
  100121e30  mov     x0, x22
  100121e34  bl      _objc_msgSend                            ; [arg1 name]
  100121e38  adrp    x8, #0x10041b000
  100121e3c  nop
  100121e40  ldr     x1, [x8, #0x1d8]
  100121e44  bl      _objc_msgSend                            ; [[arg1 name] mutableCopy]
  100121e48  adrp    x8, #0x10041b000
  100121e4c  nop
  100121e50  ldr     x1, [x8, #0xe88]
  100121e54  bl      _objc_msgSend                            ; [[[arg1 name] mutableCopy] autorelease]
  100121e58  mov     x20, x0
  100121e5c  adrp    x8, #0x10041b000
  100121e60  nop
  100121e64  ldr     x1, [x8, #0x500]
  100121e68  mov     x0, x22
  100121e6c  bl      _objc_msgSend                            ; [arg1 callStackSymbols]
  100121e70  mov     x22, x0
  100121e74  adrp    x8, #0x100416000
  100121e78  nop
  100121e7c  ldr     x23, [x8, #0xe30]
  100121e80  mov     x1, x23
  100121e84  bl      _objc_msgSend                            ; [[arg1 callStackSymbols] count]
  100121e88  cmp     x0, #3
  100121e8c  b.lo    loc_100121f70                            ; if ([[arg1 callStackSymbols] count] <u 3)
  100121e90  mov     x0, x22
  100121e94  mov     x1, x23
  100121e98  bl      _objc_msgSend                            ; [[arg1 callStackSymbols] count]
  100121e9c  cmp     x0, #3
  100121ea0  b.lo    loc_100121f70                            ; if ([[arg1 callStackSymbols] count] <u 3)
  100121ea4  mov     w19, #0
  100121ea8  adrp    x8, #0x100416000
  100121eac  nop
  100121eb0  ldr     x24, [x8, #0xc30]
  100121eb4  adrp    x8, #0x10041c000
  100121eb8  nop
  100121ebc  ldr     x25, [x8, #0x1f0]
  100121ec0  adrp    x8, #0x100417000
  100121ec4  nop
  100121ec8  ldr     x26, [x8, #0xd88]
  100121ecc  adrp    x8, #0x100417000
  100121ed0  nop
  100121ed4  ldr     x8, [x8, #0xc58]
  100121ed8  str     x8, [sp, #0x10]
  100121edc  mov     x28, #2
loc_100121ee0:
  100121ee0  mov     x0, x22
  100121ee4  mov     x1, x24
  100121ee8  mov     x2, x28
  100121eec  bl      _objc_msgSend                            ; [[arg1 callStackSymbols] objectAtIndex:x2]
  100121ef0  mov     x2, x0
  100121ef4  ldr     x0, [sp, #0x18]
  100121ef8  mov     x1, x25
  100121efc  bl      _objc_msgSend                            ; [GAIExceptionParser symbolFromStackFrame:[[arg1 callStackSymbols] objectAtIndex:x2]]
  100121f00  mov     x27, x0
  100121f04  cbz     x27, loc_100121f58                       ; if ([GAIExceptionParser symbolFromStackFrame:[[arg1 callStackSymbols] objectAtIndex:x2]] == 0)
  100121f08  and     w8, w19, #1
  100121f0c  tbnz    w8, #0, loc_100121f24                    ; if (((one of {0, 1} & 1) & 1))
  100121f10  mov     x0, x20
  100121f14  mov     x1, x26
  100121f18  adrp    x2, #0x1003c5000
  100121f1c  add     x2, x2, #0x5d0                           ; @"\nTrace:"
  100121f20  bl      _objc_msgSend                            ; [[[[arg1 name] mutableCopy] autorelease] appendFormat:@"\nTrace:"]
loc_100121f24:
  100121f24  str     x27, [sp]
  100121f28  mov     x0, x20
  100121f2c  mov     x1, x26
  100121f30  adrp    x2, #0x1003c5000
  100121f34  add     x2, x2, #0x5f0                           ; @"\n%@"
  100121f38  bl      _objc_msgSend                            ; [[[[arg1 name] mutableCopy] autorelease] appendFormat:@"\n%@", [GAIExceptionParser symbolFromStackFrame:[[arg1 callStackSymbols] objectAtIndex:…]
  100121f3c  cbz     x21, loc_100121f54                       ; if (arg2 == 0)
  100121f40  mov     x0, x20
  100121f44  ldr     x1, [sp, #0x10]
  100121f48  bl      _objc_msgSend                            ; [[[[arg1 name] mutableCopy] autorelease] length]
  100121f4c  cmp     x0, x21
  100121f50  b.hs    loc_100121f70                            ; if ([[[[arg1 name] mutableCopy] autorelease] length] >=u arg2)
loc_100121f54:
  100121f54  mov     w19, #1
loc_100121f58:
  100121f58  add     x28, x28, #1
  100121f5c  mov     x0, x22
  100121f60  mov     x1, x23
  100121f64  bl      _objc_msgSend                            ; [[arg1 callStackSymbols] count]
  100121f68  cmp     x28, x0
  100121f6c  b.lo    loc_100121ee0                            ; if ((x28 + 1) <u [[arg1 callStackSymbols] count])
loc_100121f70:
  100121f70  mov     x19, x21
  100121f74  cbz     x19, loc_100121fc0                       ; if (arg2 == 0)
  100121f78  adrp    x8, #0x100417000
  100121f7c  nop
  100121f80  ldr     x21, [x8, #0xc58]
  100121f84  mov     x0, x20
  100121f88  mov     x1, x21
  100121f8c  bl      _objc_msgSend                            ; [[[[arg1 name] mutableCopy] autorelease] length]
  100121f90  cmp     x0, x19
  100121f94  b.ls    loc_100121fc0                            ; if ([[[[arg1 name] mutableCopy] autorelease] length] <=u arg2)
  100121f98  mov     x0, x20
  100121f9c  mov     x1, x21
  100121fa0  bl      _objc_msgSend                            ; [[[[arg1 name] mutableCopy] autorelease] length]
  100121fa4  sub     x3, x0, x19
  100121fa8  adrp    x8, #0x10041c000
  100121fac  nop
  100121fb0  ldr     x1, [x8, #0x1f8]
  100121fb4  mov     x0, x20
  100121fb8  mov     x2, x19
  100121fbc  bl      _objc_msgSend                            ; [[[[arg1 name] mutableCopy] autorelease] deleteCharactersInRange:arg2]
loc_100121fc0:
  100121fc0  mov     x0, x20
  100121fc4  sub     sp, x29, #0x50
  100121fc8  ldp     x28, x27, [sp], #0x10
  100121fcc  ldp     x26, x25, [sp], #0x10
  100121fd0  ldp     x24, x23, [sp], #0x10
  100121fd4  ldp     x22, x21, [sp], #0x10
  100121fd8  ldp     x20, x19, [sp], #0x10
  100121fdc  ldp     x29, x30, [sp], #0x10
  100121fe0  ret
