// unit TAGArbitraryPixel — 12 functions
//   0x100179920      44  +[TAGArbitraryPixel functionId]
//   0x10017994c      44  +[TAGArbitraryPixel urlKey]
//   0x100179978     184  -[TAGArbitraryPixel init]
//   0x100179a30    1884  -[TAGArbitraryPixel evaluateTrackingTag:]
//   0x10017a18c     836  -[TAGArbitraryPixel addDictionary:toArray:]
//   0x10017a4d0      56  -[TAGArbitraryPixel getQueryParametersStringFromArray:]
//   0x10017a508      24  -[TAGArbitraryPixel getHitSender]
//   0x10017a520     220  -[TAGArbitraryPixel idProcessed:]
//   0x10017a5fc     164  -[TAGArbitraryPixel cacheUnrepeatableId:]
//   0x10017a6a0     184  -[TAGArbitraryPixel idInPlist:]
//   0x10017a758      24  -[TAGArbitraryPixel clearCache]
//   0x10017a770      72  -[TAGArbitraryPixel idInCache:]

; ======================================================================
; +[TAGArbitraryPixel functionId]
; address 0x100179920  size 44  kind objc
; ======================================================================
  100179920  stp     x29, x30, [sp, #-0x10]!
  100179924  mov     x29, sp
  100179928  stp     x20, x19, [sp, #-0x10]!
  10017992c  adrp    x19, #0x1003c9000
  100179930  add     x19, x19, #0x970                         ; @"_img"
  100179934  mov     x0, x19
  100179938  bl      _objc_retainAutorelease
  10017993c  mov     x0, x19
  100179940  ldp     x20, x19, [sp], #0x10
  100179944  ldp     x29, x30, [sp], #0x10
  100179948  ret

; ======================================================================
; +[TAGArbitraryPixel urlKey]
; address 0x10017994c  size 44  kind objc
; ======================================================================
  10017994c  stp     x29, x30, [sp, #-0x10]!
  100179950  mov     x29, sp
  100179954  stp     x20, x19, [sp, #-0x10]!
  100179958  adrp    x19, #0x1003c8000
  10017995c  add     x19, x19, #0xb0                          ; @"url"
  100179960  mov     x0, x19
  100179964  bl      _objc_retainAutorelease
  100179968  mov     x0, x19
  10017996c  ldp     x20, x19, [sp], #0x10
  100179970  ldp     x29, x30, [sp], #0x10
  100179974  ret

; ======================================================================
; -[TAGArbitraryPixel init]
; address 0x100179978  size 184  kind objc
; ======================================================================
  100179978  stp     x29, x30, [sp, #-0x10]!
  10017997c  mov     x29, sp
  100179980  stp     x20, x19, [sp, #-0x10]!
  100179984  stp     x22, x21, [sp, #-0x10]!
  100179988  sub     sp, sp, #0x10
  10017998c  mov     x19, x0
  100179990  adrp    x8, #0x10041e000
  100179994  ldr     x0, [x8, #0x550]                         ; class NSSet
  100179998  adrp    x8, #0x10041b000
  10017999c  nop
  1001799a0  ldr     x1, [x8, #0x7e0]
  1001799a4  adrp    x2, #0x1003c8000
  1001799a8  add     x2, x2, #0xb0                            ; @"url"
  1001799ac  bl      _objc_msgSend                            ; [NSSet setWithObject:@"url"]
  1001799b0  mov     x29, x29
  1001799b4  bl      _objc_retainAutoreleasedReturnValue
  1001799b8  mov     x20, x0
  1001799bc  str     x19, [sp]
  1001799c0  adrp    x8, #0x10041f000
  1001799c4  ldr     x8, [x8, #0x450]
  1001799c8  str     x8, [sp, #8]
  1001799cc  adrp    x8, #0x10041d000
  1001799d0  nop
  1001799d4  ldr     x1, [x8, #0xc10]
  1001799d8  adrp    x2, #0x1003c9000
  1001799dc  add     x2, x2, #0x970                           ; @"_img"
  1001799e0  mov     x0, sp
  1001799e4  mov     x3, x20
  1001799e8  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_img" requiredKeys:[NSSet setWithObject:@"url"]]
  1001799ec  mov     x19, x0
  1001799f0  mov     x0, x20
  1001799f4  bl      _objc_release
  1001799f8  mov     x0, x19
  1001799fc  sub     sp, x29, #0x20
  100179a00  ldp     x22, x21, [sp], #0x10
  100179a04  ldp     x20, x19, [sp], #0x10
  100179a08  ldp     x29, x30, [sp], #0x10
  100179a0c  ret
  100179a10  mov     x21, x0
  100179a14  mov     x0, x19
  100179a18  b       loc_100179a24
  100179a1c  mov     x21, x0
  100179a20  mov     x0, x20
loc_100179a24:
  100179a24  bl      _objc_release
  100179a28  mov     x0, x21
  100179a2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGArbitraryPixel evaluateTrackingTag:]
; address 0x100179a30  size 1884  kind objc
; ======================================================================
  100179a30  stp     x29, x30, [sp, #-0x10]!
  100179a34  mov     x29, sp
  100179a38  stp     x20, x19, [sp, #-0x10]!
  100179a3c  stp     x22, x21, [sp, #-0x10]!
  100179a40  stp     x24, x23, [sp, #-0x10]!
  100179a44  stp     x26, x25, [sp, #-0x10]!
  100179a48  stp     x28, x27, [sp, #-0x10]!
  100179a4c  sub     sp, sp, #0x150
  100179a50  str     x0, [sp, #0x80]
  100179a54  adrp    x26, #0x1003b0000
  100179a58  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100179a5c  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100179a60  stur    x8, [x29, #-0x58]
  100179a64  mov     x0, x2
  100179a68  bl      _objc_retain
  100179a6c  mov     x24, x0
  100179a70  adrp    x8, #0x100417000
  100179a74  nop
  100179a78  ldr     x21, [x8, #0x40]
  100179a7c  adrp    x2, #0x1003c9000
  100179a80  add     x2, x2, #0x990                           ; @"unrepeatable"
  100179a84  mov     x1, x21
  100179a88  bl      _objc_msgSend                            ; [arg1 objectForKey:@"unrepeatable"]
  100179a8c  mov     x29, x29
  100179a90  bl      _objc_retainAutoreleasedReturnValue
  100179a94  mov     x20, x0
  100179a98  cbz     x20, loc_100179b24                       ; if ([arg1 objectForKey:@"unrepeatable"] == 0)
  100179a9c  adrp    x8, #0x10041e000
  100179aa0  ldr     x23, [x8, #0xb58]                        ; class TAGTypes
  100179aa4  adrp    x2, #0x1003c9000
  100179aa8  add     x2, x2, #0x990                           ; @"unrepeatable"
  100179aac  mov     x0, x24
  100179ab0  mov     x1, x21
  100179ab4  bl      _objc_msgSend                            ; [arg1 objectForKey:@"unrepeatable"]
  100179ab8  mov     x29, x29
  100179abc  bl      _objc_retainAutoreleasedReturnValue
  100179ac0  mov     x22, x0
  100179ac4  adrp    x8, #0x10041d000
  100179ac8  nop
  100179acc  ldr     x1, [x8, #0xc18]
  100179ad0  mov     x0, x23
  100179ad4  mov     x2, x22
  100179ad8  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"unrepeatable"]]
  100179adc  mov     x29, x29
  100179ae0  bl      _objc_retainAutoreleasedReturnValue
  100179ae4  mov     x23, x0
  100179ae8  mov     x0, x22
  100179aec  bl      _objc_release
  100179af0  mov     x0, x20
  100179af4  bl      _objc_release
  100179af8  cbz     x23, loc_100179b24                       ; if ([TAGTypes valueToString:[arg1 objectForKey:@"unrepeatable"]] == 0)
  100179afc  adrp    x8, #0x10041d000
  100179b00  nop
  100179b04  ldr     x1, [x8, #0xcd0]
  100179b08  ldr     x0, [sp, #0x80]
  100179b0c  mov     x2, x23
  100179b10  bl      _objc_msgSend                            ; [self idProcessed:[TAGTypes valueToString:[arg1 objectForKey:@"unrepeatable"]]]
  100179b14  tbnz    w0, #0, loc_100179fc0                    ; if (([self idProcessed:[TAGTypes valueToString:[arg1 objectForKey:@"unrepeatable"]]] & 1))
  100179b18  mov     w20, #1
  100179b1c  str     x23, [sp, #0x68]
  100179b20  b       loc_100179b30
loc_100179b24:
  100179b24  mov     w20, #0
  100179b28  mov     x23, #0
  100179b2c  str     xzr, [sp, #0x68]
loc_100179b30:
  100179b30  adrp    x2, #0x1003c8000
  100179b34  add     x2, x2, #0xb0                            ; @"url"
  100179b38  mov     x0, x24
  100179b3c  mov     x1, x21
  100179b40  bl      _objc_msgSend                            ; [arg1 objectForKey:@"url"]
  100179b44  mov     x29, x29
  100179b48  bl      _objc_retainAutoreleasedReturnValue
  100179b4c  mov     x22, x0
  100179b50  adrp    x19, #0x10041e000
  100179b54  ldr     x0, [x19, #0xb58]                        ; class TAGTypes
  100179b58  adrp    x8, #0x10041d000
  100179b5c  nop
  100179b60  ldr     x1, [x8, #0xc18]
  100179b64  mov     x2, x22
  100179b68  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"url"]]
  100179b6c  str     w20, [sp, #0x74]
  100179b70  mov     x29, x29
  100179b74  bl      _objc_retainAutoreleasedReturnValue
  100179b78  mov     x27, x0
  100179b7c  adrp    x2, #0x1003c8000
  100179b80  add     x2, x2, #0x210                           ; @"additional_params"
  100179b84  mov     x0, x24
  100179b88  mov     x1, x21
  100179b8c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"additional_params"]
  100179b90  mov     x29, x29
  100179b94  bl      _objc_retainAutoreleasedReturnValue
  100179b98  mov     x28, x0
  100179b9c  cbz     x28, loc_100179efc                       ; if ([arg1 objectForKey:@"additional_params"] == 0)
  100179ba0  ldr     x0, [x19, #0xb58]                        ; class TAGTypes
  100179ba4  adrp    x8, #0x10041d000
  100179ba8  nop
  100179bac  ldr     x1, [x8, #0xd30]
  100179bb0  mov     x2, x28
  100179bb4  bl      _objc_msgSend                            ; [TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]]
  100179bb8  mov     x29, x29
  100179bbc  bl      _objc_retainAutoreleasedReturnValue
  100179bc0  mov     x19, x0
  100179bc4  adrp    x8, #0x10041d000
  100179bc8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100179bcc  adrp    x8, #0x100417000
  100179bd0  nop
  100179bd4  ldr     x25, [x8, #0x2e0]
  100179bd8  mov     x1, x25
  100179bdc  bl      _objc_msgSend                            ; [NSArray class]
  100179be0  mov     x2, x0
  100179be4  adrp    x8, #0x100417000
  100179be8  nop
  100179bec  ldr     x21, [x8, #0x3b8]
  100179bf0  mov     x0, x19
  100179bf4  mov     x1, x21
  100179bf8  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] isKindOfClass:[NSArray class]]
  100179bfc  tbz     w0, #0, loc_100179d64                    ; if (!([[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] isKindOfClass:[NSArray class]] & 1))
  100179c00  adrp    x8, #0x100417000
  100179c04  nop
  100179c08  ldr     x1, [x8, #0x58]
  100179c0c  adrp    x20, #0x1003c5000
  100179c10  add     x20, x20, #0x1b0                         ; @"?"
  100179c14  mov     x0, x27
  100179c18  mov     x2, x20
  100179c1c  bl      _objc_msgSend                            ; [[TAGTypes valueToString:[arg1 objectForKey:@"url"]] rangeOfString:@"?"]
  100179c20  str     x28, [sp, #0x48]
  100179c24  str     x27, [sp, #0x78]
  100179c28  stp     x23, x24, [sp, #0x50]
  100179c2c  adrp    x8, #0x1003c4000
  100179c30  add     x8, x8, #0xb10                           ; @"&"
  100179c34  mov     x9, #0x7fffffffffffffff
  100179c38  cmp     x0, x9
  100179c3c  csel    x23, x20, x8, eq                         ; t1 = ([[TAGTypes valueToString:[arg1 objectForKey:@"url"]] rangeOfString:@"?"] == 0x7fffffffffffffff ? @"?" : @"&")
  100179c40  adrp    x8, #0x10041d000
  100179c44  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100179c48  adrp    x8, #0x100418000
  100179c4c  nop
  100179c50  ldr     x1, [x8, #0x50]
  100179c54  bl      _objc_msgSend                            ; [NSMutableArray array]
  100179c58  mov     x29, x29
  100179c5c  bl      _objc_retainAutoreleasedReturnValue
  100179c60  mov     x27, x0
  100179c64  mov     x0, x19
  100179c68  bl      _objc_retain
  100179c6c  stp     xzr, xzr, [x29, #-0x68]
  100179c70  stp     xzr, xzr, [x29, #-0x78]
  100179c74  stp     xzr, xzr, [x29, #-0x88]
  100179c78  stp     xzr, xzr, [x29, #-0x98]
  100179c7c  bl      _objc_retain
  100179c80  mov     x28, x0
  100179c84  adrp    x8, #0x100416000
  100179c88  nop
  100179c8c  ldr     x1, [x8, #0xe00]
  100179c90  str     x1, [sp, #0x38]
  100179c94  sub     x2, x29, #0x98
  100179c98  add     x3, sp, #0x88
  100179c9c  mov     x4, #0x10
  100179ca0  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16]
  100179ca4  mov     x20, x0
  100179ca8  str     x23, [sp, #0x30]
  100179cac  cbz     x20, loc_100179e38                       ; if ([[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16] == 0)
  100179cb0  str     x19, [sp, #0x40]
  100179cb4  str     x22, [sp, #0x60]
  100179cb8  ldur    x8, [x29, #-0x88]
  100179cbc  ldr     x26, [x8]
  100179cc0  adrp    x8, #0x10041d000
  100179cc4  nop
  100179cc8  ldr     x22, [x8, #0xcd8]
  100179ccc  adrp    x19, #0x10041d000
  100179cd0  sub     x8, x29, #0x98
  100179cd4  str     x8, [sp, #0x28]
  100179cd8  add     x8, sp, #0x88
  100179cdc  str     x8, [sp, #0x20]
loc_100179ce0:
  100179ce0  mov     x24, #0
loc_100179ce4:
  100179ce4  ldur    x8, [x29, #-0x88]
  100179ce8  ldr     x8, [x8]
  100179cec  cmp     x8, x26
  100179cf0  b.eq    loc_100179cfc                            ; if (x8 == x26)
  100179cf4  mov     x0, x28
  100179cf8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]])
loc_100179cfc:
  100179cfc  ldur    x8, [x29, #-0x90]
  100179d00  ldr     x23, [x8, x24, lsl #3]
  100179d04  ldr     x0, [x19, #0xef8]                        ; class NSDictionary
  100179d08  mov     x1, x25
  100179d0c  bl      _objc_msgSend                            ; [NSDictionary class]
  100179d10  mov     x2, x0
  100179d14  mov     x0, x23
  100179d18  mov     x1, x21
  100179d1c  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSDictionary class]]
  100179d20  tbz     w0, #0, loc_100179dc0                    ; if (!([x0 isKindOfClass:[NSDictionary class]] & 1))
  100179d24  ldr     x0, [sp, #0x80]
  100179d28  mov     x1, x22
  100179d2c  mov     x2, x23
  100179d30  mov     x3, x27
  100179d34  bl      _objc_msgSend                            ; [self addDictionary:x2 toArray:[NSMutableArray array]]
  100179d38  add     x24, x24, #1
  100179d3c  cmp     x24, x20
  100179d40  b.lo    loc_100179ce4                            ; if ((x24 + 1) <u [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0…)
  100179d44  mov     x4, #0x10
  100179d48  mov     x0, x28
  100179d4c  ldr     x1, [sp, #0x38]
  100179d50  ldp     x3, x2, [sp, #0x20]
  100179d54  bl      _objc_msgSend                            ; [[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16]
  100179d58  mov     x20, x0
  100179d5c  cbnz    x20, loc_100179ce0                       ; if ([[TAGTypes valueToObject:[arg1 objectForKey:@"additional_params"]] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x88] count:16] != 0)
  100179d60  b       loc_100179e40
loc_100179d64:
  100179d64  adrp    x8, #0x10041d000
  100179d68  ldr     x0, [x8, #0xf78]                         ; class NSString
  100179d6c  adrp    x8, #0x100416000
  100179d70  nop
  100179d74  ldr     x1, [x8, #0xee8]
  100179d78  str     x27, [sp]
  100179d7c  adrp    x2, #0x1003c9000
  100179d80  add     x2, x2, #0x9d0                           ; @"ArbitraryPixel: additional params not a list: not sending partial hit: %@"
  100179d84  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"ArbitraryPixel: additional params not a list: not sending partial hit: %@", [TAGTypes valueToString:[arg1 objectForKey:@"url"]]]
  100179d88  mov     x29, x29
  100179d8c  bl      _objc_retainAutoreleasedReturnValue
  100179d90  mov     x20, x0
  100179d94  adrp    x8, #0x10041e000
  100179d98  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100179d9c  adrp    x8, #0x10041b000
  100179da0  nop
  100179da4  ldr     x1, [x8, #0xe90]
  100179da8  mov     x2, x20
  100179dac  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"ArbitraryPixel: additional params not a list: not sending partial hit: %@", [TAGTypes valueToString:[arg1 objectForKey:@"url"]]]]
  100179db0  mov     x0, x20
  100179db4  bl      _objc_release
  100179db8  mov     x0, x19
  100179dbc  b       loc_100179fa4
loc_100179dc0:
  100179dc0  adrp    x8, #0x10041d000
  100179dc4  ldr     x0, [x8, #0xf78]                         ; class NSString
  100179dc8  adrp    x8, #0x100416000
  100179dcc  nop
  100179dd0  ldr     x1, [x8, #0xee8]
  100179dd4  ldr     x8, [sp, #0x78]
  100179dd8  str     x8, [sp]
  100179ddc  adrp    x2, #0x1003c9000
  100179de0  add     x2, x2, #0x9f0                           ; @"ArbitraryPixel: additional params contains non-map: not sending partial hit: %@"
  100179de4  ldr     x22, [sp, #0x60]
  100179de8  ldr     x19, [sp, #0x40]
  100179dec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"ArbitraryPixel: additional params contains non-map: not sending partial hit: %@", [TAGTypes valueToString:[arg1 objectForKey:@"url"]]]
  100179df0  adrp    x26, #0x1003b0000
  100179df4  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100179df8  mov     x29, x29
  100179dfc  bl      _objc_retainAutoreleasedReturnValue
  100179e00  mov     x20, x0
  100179e04  adrp    x8, #0x10041e000
  100179e08  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100179e0c  adrp    x8, #0x10041b000
  100179e10  nop
  100179e14  ldr     x1, [x8, #0xe90]
  100179e18  mov     x2, x20
  100179e1c  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"ArbitraryPixel: additional params contains non-map: not sending partial hit: %@", [TAGTypes valueToString:[arg1 objectForKey:@"url"]]]]
  100179e20  mov     x0, x20
  100179e24  bl      _objc_release
  100179e28  mov     x0, x28
  100179e2c  bl      _objc_release
  100179e30  mov     w19, #0
  100179e34  b       loc_100179ed4
loc_100179e38:
  100179e38  str     x19, [sp, #0x40]
  100179e3c  str     x22, [sp, #0x60]
loc_100179e40:
  100179e40  mov     x0, x28
  100179e44  bl      _objc_release
  100179e48  adrp    x8, #0x10041d000
  100179e4c  ldr     x21, [x8, #0xf78]                        ; class NSString
  100179e50  nop
  100179e54  nop
  100179e58  ldr     x1, [x8, #0xce0]
  100179e5c  ldr     x0, [sp, #0x80]
  100179e60  mov     x2, x27
  100179e64  ldr     x22, [sp, #0x60]
  100179e68  bl      _objc_msgSend                            ; [self getQueryParametersStringFromArray:[NSMutableArray array]]
  100179e6c  adrp    x26, #0x1003b0000
  100179e70  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100179e74  mov     x29, x29
  100179e78  bl      _objc_retainAutoreleasedReturnValue
  100179e7c  mov     x20, x0
  100179e80  adrp    x8, #0x100416000
  100179e84  nop
  100179e88  ldr     x1, [x8, #0xee8]
  100179e8c  str     x20, [sp, #0x10]
  100179e90  ldr     x8, [sp, #0x30]
  100179e94  str     x8, [sp, #8]
  100179e98  ldr     x19, [sp, #0x78]
  100179e9c  str     x19, [sp]
  100179ea0  adrp    x2, #0x1003c6000
  100179ea4  add     x2, x2, #0xc30                           ; @"%@%@%@"
  100179ea8  mov     x0, x21
  100179eac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%@%@", [TAGTypes valueToString:[arg1 objectForKey:@"url"]], t1, [self getQueryParametersStringFromArray:[NSMutableArray array]]]
  100179eb0  mov     x29, x29
  100179eb4  bl      _objc_retainAutoreleasedReturnValue
  100179eb8  mov     x21, x0
  100179ebc  mov     x0, x19
  100179ec0  bl      _objc_release
  100179ec4  mov     x0, x20
  100179ec8  bl      _objc_release
  100179ecc  mov     w19, #1
  100179ed0  str     x21, [sp, #0x78]
loc_100179ed4:
  100179ed4  mov     x0, x28
  100179ed8  bl      _objc_release
  100179edc  mov     x0, x27
  100179ee0  bl      _objc_release
  100179ee4  mov     x0, x28
  100179ee8  bl      _objc_release
  100179eec  ldp     x23, x24, [sp, #0x50]
  100179ef0  ldr     x27, [sp, #0x78]
  100179ef4  ldr     x28, [sp, #0x48]
  100179ef8  tbz     w19, #0, loc_100179fa8                   ; if (!(one of {0, 1} & 1))
loc_100179efc:
  100179efc  adrp    x8, #0x10041d000
  100179f00  nop
  100179f04  ldr     x1, [x8, #0xce8]
  100179f08  ldr     x0, [sp, #0x80]
  100179f0c  bl      _objc_msgSend                            ; [self getHitSender]
  100179f10  mov     x29, x29
  100179f14  bl      _objc_retainAutoreleasedReturnValue
  100179f18  mov     x20, x0
  100179f1c  adrp    x8, #0x10041d000
  100179f20  nop
  100179f24  ldr     x1, [x8, #0xcf0]
  100179f28  mov     x2, x27
  100179f2c  bl      _objc_msgSend                            ; [[self getHitSender] sendHitToUrl:x2]
  100179f30  ldr     w8, [sp, #0x74]
  100179f34  cbz     w8, loc_100179fa0                        ; if (one of {0, 1} == 0)
  100179f38  str     x27, [sp, #0x78]
  100179f3c  ldr     x0, [sp, #0x80]
  100179f40  bl      _objc_retain
  100179f44  mov     x21, x0
  100179f48  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100179f4c  adrp    x8, #0x10041d000
  100179f50  nop
  100179f54  ldr     x1, [x8, #0xcf8]
  100179f58  mov     x0, x21
  100179f5c  ldr     x2, [sp, #0x68]
  100179f60  bl      _objc_msgSend                            ; [self cacheUnrepeatableId:x2]
  100179f64  adrp    x8, #0x10041e000
  100179f68  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  100179f6c  adrp    x8, #0x10042d000
  100179f70  ldr     x3, [x8, #0xfb0]                         ; load g_10042dfb0
  100179f74  adrp    x8, #0x10041d000
  100179f78  nop
  100179f7c  ldr     x1, [x8, #0x310]
  100179f80  adrp    x2, #0x1003c9000
  100179f84  add     x2, x2, #0x9b0                           ; @"gtm_img_unrepeatable"
  100179f88  bl      _objc_msgSend                            ; [TAGPropertyListUtil writePropertyListAsync:@"gtm_img_unrepeatable" withData:g_10042dfb0]
  100179f8c  mov     x0, x21
  100179f90  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100179f94  mov     x0, x21
  100179f98  bl      _objc_release
  100179f9c  ldr     x27, [sp, #0x78]
loc_100179fa0:
  100179fa0  mov     x0, x20
loc_100179fa4:
  100179fa4  bl      _objc_release
loc_100179fa8:
  100179fa8  mov     x0, x28
  100179fac  bl      _objc_release
  100179fb0  mov     x0, x27
  100179fb4  bl      _objc_release
  100179fb8  mov     x0, x22
  100179fbc  bl      _objc_release
loc_100179fc0:
  100179fc0  mov     x0, x23
  100179fc4  bl      _objc_release
  100179fc8  mov     x0, x24
  100179fcc  bl      _objc_release
  100179fd0  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100179fd4  ldur    x9, [x29, #-0x58]
  100179fd8  sub     x8, x8, x9
  100179fdc  cbnz    x8, loc_10017a000                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100179fe0  sub     sp, x29, #0x50
  100179fe4  ldp     x28, x27, [sp], #0x10
  100179fe8  ldp     x26, x25, [sp], #0x10
  100179fec  ldp     x24, x23, [sp], #0x10
  100179ff0  ldp     x22, x21, [sp], #0x10
  100179ff4  ldp     x20, x19, [sp], #0x10
  100179ff8  ldp     x29, x30, [sp], #0x10
  100179ffc  ret
loc_10017a000:
  10017a000  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10017a004  str     x24, [sp, #0x58]
  10017a008  mov     x23, x0
  10017a00c  b       loc_10017a17c
  10017a010  str     x24, [sp, #0x58]
  10017a014  mov     x23, x0
  10017a018  b       loc_10017a02c
  10017a01c  str     x24, [sp, #0x58]
  10017a020  mov     x23, x0
  10017a024  mov     x0, x22
  10017a028  bl      _objc_release
loc_10017a02c:
  10017a02c  mov     x0, x20
  10017a030  b       loc_10017a178
  10017a034  stp     x23, x24, [sp, #0x50]
  10017a038  mov     x23, x0
  10017a03c  b       loc_10017a174
  10017a040  str     x22, [sp, #0x60]
  10017a044  stp     x23, x24, [sp, #0x50]
  10017a048  mov     x23, x0
  10017a04c  b       loc_10017a16c
  10017a050  str     x27, [sp, #0x78]
  10017a054  str     x22, [sp, #0x60]
  10017a058  stp     x23, x24, [sp, #0x50]
  10017a05c  mov     x23, x0
  10017a060  b       loc_10017a164
  10017a064  str     x19, [sp, #0x40]
  10017a068  str     x22, [sp, #0x60]
  10017a06c  mov     x23, x0
  10017a070  b       loc_10017a0fc
  10017a074  b       loc_10017a0bc
  10017a078  b       loc_10017a0bc
  10017a07c  b       loc_10017a0bc
  10017a080  stp     x19, x28, [sp, #0x40]
  10017a084  str     x27, [sp, #0x78]
  10017a088  str     x22, [sp, #0x60]
  10017a08c  stp     x23, x24, [sp, #0x50]
  10017a090  mov     x23, x0
  10017a094  b       loc_10017a0fc
  10017a098  stp     x19, x28, [sp, #0x40]
  10017a09c  str     x27, [sp, #0x78]
  10017a0a0  str     x22, [sp, #0x60]
  10017a0a4  stp     x23, x24, [sp, #0x50]
  10017a0a8  mov     x23, x0
  10017a0ac  mov     x0, x20
  10017a0b0  b       loc_10017a0f8
  10017a0b4  str     x19, [sp, #0x40]
  10017a0b8  str     x22, [sp, #0x60]
loc_10017a0bc:
  10017a0bc  mov     x23, x0
  10017a0c0  b       loc_10017a0d0
  10017a0c4  mov     x23, x0
  10017a0c8  mov     x0, x20
  10017a0cc  bl      _objc_release
loc_10017a0d0:
  10017a0d0  mov     x0, x28
  10017a0d4  b       loc_10017a0e8
  10017a0d8  mov     x23, x0
  10017a0dc  b       loc_10017a0ec
  10017a0e0  mov     x23, x0
  10017a0e4  mov     x0, x20
loc_10017a0e8:
  10017a0e8  bl      _objc_release
loc_10017a0ec:
  10017a0ec  mov     x0, x28
  10017a0f0  bl      _objc_release
  10017a0f4  mov     x0, x27
loc_10017a0f8:
  10017a0f8  bl      _objc_release
loc_10017a0fc:
  10017a0fc  ldr     x0, [sp, #0x40]
  10017a100  b       loc_10017a158
  10017a104  str     x28, [sp, #0x48]
  10017a108  str     x27, [sp, #0x78]
  10017a10c  str     x22, [sp, #0x60]
  10017a110  stp     x23, x24, [sp, #0x50]
  10017a114  mov     x23, x0
  10017a118  b       loc_10017a15c
  10017a11c  str     x28, [sp, #0x48]
  10017a120  str     x27, [sp, #0x78]
  10017a124  str     x22, [sp, #0x60]
  10017a128  stp     x23, x24, [sp, #0x50]
  10017a12c  mov     x23, x0
  10017a130  b       loc_10017a154
  10017a134  str     x28, [sp, #0x48]
  10017a138  str     x22, [sp, #0x60]
  10017a13c  stp     x23, x24, [sp, #0x50]
  10017a140  mov     x23, x0
  10017a144  mov     x0, x21
  10017a148  bl      _objc_sync_exit                          ; objc_sync_exit()
  10017a14c  mov     x0, x21
  10017a150  bl      _objc_release
loc_10017a154:
  10017a154  mov     x0, x20
loc_10017a158:
  10017a158  bl      _objc_release
loc_10017a15c:
  10017a15c  ldr     x0, [sp, #0x48]
  10017a160  bl      _objc_release
loc_10017a164:
  10017a164  ldr     x0, [sp, #0x78]
  10017a168  bl      _objc_release
loc_10017a16c:
  10017a16c  ldr     x0, [sp, #0x60]
  10017a170  bl      _objc_release
loc_10017a174:
  10017a174  ldr     x0, [sp, #0x50]
loc_10017a178:
  10017a178  bl      _objc_release
loc_10017a17c:
  10017a17c  ldr     x0, [sp, #0x58]
  10017a180  bl      _objc_release
  10017a184  mov     x0, x23
  10017a188  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGArbitraryPixel addDictionary:toArray:]
; address 0x10017a18c  size 836  kind objc
; ======================================================================
  10017a18c  stp     x29, x30, [sp, #-0x10]!
  10017a190  mov     x29, sp
  10017a194  stp     x20, x19, [sp, #-0x10]!
  10017a198  stp     x22, x21, [sp, #-0x10]!
  10017a19c  stp     x24, x23, [sp, #-0x10]!
  10017a1a0  stp     x26, x25, [sp, #-0x10]!
  10017a1a4  stp     x28, x27, [sp, #-0x10]!
  10017a1a8  sub     sp, sp, #0x130
  10017a1ac  mov     x19, x3
  10017a1b0  adrp    x8, #0x1003b0000
  10017a1b4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10017a1b8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10017a1bc  stur    x8, [x29, #-0x58]
  10017a1c0  mov     x0, x2
  10017a1c4  bl      _objc_retain
  10017a1c8  mov     x20, x0
  10017a1cc  mov     x0, x19
  10017a1d0  bl      _objc_retain
  10017a1d4  str     x0, [sp, #0x50]
  10017a1d8  stp     xzr, xzr, [x29, #-0x68]
  10017a1dc  stp     xzr, xzr, [x29, #-0x78]
  10017a1e0  stp     xzr, xzr, [x29, #-0x88]
  10017a1e4  stp     xzr, xzr, [x29, #-0x98]
  10017a1e8  mov     x0, x20
  10017a1ec  bl      _objc_retain
  10017a1f0  str     x0, [sp, #0x58]
  10017a1f4  adrp    x8, #0x100416000
  10017a1f8  nop
  10017a1fc  ldr     x1, [x8, #0xe00]
  10017a200  str     x1, [sp, #0x28]
  10017a204  sub     x2, x29, #0x98
  10017a208  add     x3, sp, #0x68
  10017a20c  mov     x4, #0x10
  10017a210  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  10017a214  cbz     x0, loc_10017a3ec                        ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] == 0)
  10017a218  ldur    x8, [x29, #-0x88]
  10017a21c  ldr     x8, [x8]
  10017a220  str     x8, [sp, #0x48]
  10017a224  adrp    x8, #0x100417000
  10017a228  nop
  10017a22c  adrp    x9, #0x10041d000
  10017a230  nop
  10017a234  ldr     x8, [x8, #0x40]
  10017a238  str     x8, [sp, #0x40]
  10017a23c  ldr     x8, [x9, #0xaf0]
  10017a240  str     x8, [sp, #0x60]
  10017a244  adrp    x8, #0x10041b000
  10017a248  nop
  10017a24c  adrp    x9, #0x100416000
  10017a250  add     x9, x9, #0xee8                           ; &@selector(stringWithFormat:)
  10017a254  ldr     x25, [x8, #0xb58]
  10017a258  ldr     x8, [x9]
  10017a25c  str     x8, [sp, #0x38]
  10017a260  adrp    x8, #0x100416000
  10017a264  nop
  10017a268  ldr     x8, [x8, #0xd90]
  10017a26c  str     x8, [sp, #0x30]
  10017a270  adrp    x26, #0x10041e000
  10017a274  sub     x8, x29, #0x98
  10017a278  str     x8, [sp, #0x20]
  10017a27c  add     x8, sp, #0x68
  10017a280  str     x8, [sp, #0x18]
loc_10017a284:
  10017a284  mov     x27, #0
loc_10017a288:
  10017a288  mov     x24, x0
  10017a28c  ldur    x8, [x29, #-0x88]
  10017a290  ldr     x8, [x8]
  10017a294  ldr     x9, [sp, #0x48]
  10017a298  cmp     x8, x9
  10017a29c  b.eq    loc_10017a2a8                            ; if (x8 == x9)
  10017a2a0  ldr     x0, [sp, #0x58]
  10017a2a4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10017a2a8:
  10017a2a8  ldur    x8, [x29, #-0x90]
  10017a2ac  ldr     x19, [x8, x27, lsl #3]
  10017a2b0  ldr     x0, [sp, #0x58]
  10017a2b4  ldr     x1, [sp, #0x40]
  10017a2b8  mov     x2, x19
  10017a2bc  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10017a2c0  mov     x29, x29
  10017a2c4  bl      _objc_retainAutoreleasedReturnValue
  10017a2c8  mov     x21, x0
  10017a2cc  adrp    x8, #0x10041d000
  10017a2d0  ldr     x20, [x8, #0xf78]                        ; class NSString
  10017a2d4  ldr     x23, [x26, #0x540]                       ; class TAGValueEscapeUtil
  10017a2d8  adrp    x8, #0x10041e000
  10017a2dc  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10017a2e0  ldr     x1, [sp, #0x60]
  10017a2e4  mov     x2, x19
  10017a2e8  bl      _objc_msgSend                            ; [TAGTypes objectToString:x2]
  10017a2ec  mov     x29, x29
  10017a2f0  bl      _objc_retainAutoreleasedReturnValue
  10017a2f4  mov     x28, x0
  10017a2f8  mov     x0, x23
  10017a2fc  mov     x1, x25
  10017a300  mov     x2, x28
  10017a304  bl      _objc_msgSend                            ; [TAGValueEscapeUtil urlEncode:[TAGTypes objectToString:x2]]
  10017a308  mov     x29, x29
  10017a30c  bl      _objc_retainAutoreleasedReturnValue
  10017a310  mov     x19, x0
  10017a314  mov     x8, x26
  10017a318  ldr     x26, [x8, #0x540]                        ; class TAGValueEscapeUtil
  10017a31c  mov     x22, x8
  10017a320  adrp    x8, #0x10041e000
  10017a324  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10017a328  ldr     x1, [sp, #0x60]
  10017a32c  mov     x2, x21
  10017a330  bl      _objc_msgSend                            ; [TAGTypes objectToString:[arg1 objectForKey:x2]]
  10017a334  mov     x29, x29
  10017a338  bl      _objc_retainAutoreleasedReturnValue
  10017a33c  mov     x23, x0
  10017a340  mov     x0, x26
  10017a344  mov     x1, x25
  10017a348  mov     x2, x23
  10017a34c  bl      _objc_msgSend                            ; [TAGValueEscapeUtil urlEncode:[TAGTypes objectToString:[arg1 objectForKey:x2]]]
  10017a350  mov     x29, x29
  10017a354  bl      _objc_retainAutoreleasedReturnValue
  10017a358  mov     x26, x0
  10017a35c  stp     x19, x26, [sp]
  10017a360  mov     x0, x20
  10017a364  ldr     x1, [sp, #0x38]
  10017a368  adrp    x2, #0x1003c5000
  10017a36c  add     x2, x2, #0xd0                            ; @"%@=%@"
  10017a370  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@=%@", [TAGValueEscapeUtil urlEncode:[TAGTypes objectToString:x2]], [TAGValueEscapeUtil urlEncode:[TAGTypes objectToString:[arg1 objectForKey:x2]]]]
  10017a374  mov     x29, x29
  10017a378  bl      _objc_retainAutoreleasedReturnValue
  10017a37c  mov     x20, x0
  10017a380  mov     x0, x26
  10017a384  bl      _objc_release
  10017a388  mov     x0, x23
  10017a38c  bl      _objc_release
  10017a390  mov     x0, x19
  10017a394  bl      _objc_release
  10017a398  mov     x0, x28
  10017a39c  bl      _objc_release
  10017a3a0  ldr     x0, [sp, #0x50]
  10017a3a4  ldr     x1, [sp, #0x30]
  10017a3a8  mov     x2, x20
  10017a3ac  bl      _objc_msgSend                            ; [arg2 addObject:[NSString stringWithFormat:@"%@=%@", [TAGValueEscapeUtil urlEncode:[TAGTypes objectToString:x2]], [TAGValueEscapeUtil urlEncode:[TAGTypes objectToString:[arg1 objectForKey:x2]]]]]
  10017a3b0  mov     x0, x20
  10017a3b4  bl      _objc_release
  10017a3b8  mov     x0, x21
  10017a3bc  bl      _objc_release
  10017a3c0  add     x27, x27, #1
  10017a3c4  mov     x0, x24
  10017a3c8  cmp     x27, x0
  10017a3cc  mov     x26, x22
  10017a3d0  b.lo    loc_10017a288                            ; if ((x27 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16])
  10017a3d4  mov     x4, #0x10
  10017a3d8  ldr     x0, [sp, #0x58]
  10017a3dc  ldp     x2, x1, [sp, #0x20]
  10017a3e0  ldr     x3, [sp, #0x18]
  10017a3e4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  10017a3e8  cbnz    x0, loc_10017a284                        ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] != 0)
loc_10017a3ec:
  10017a3ec  ldr     x19, [sp, #0x58]
  10017a3f0  mov     x0, x19
  10017a3f4  bl      _objc_release
  10017a3f8  ldr     x0, [sp, #0x50]
  10017a3fc  bl      _objc_release
  10017a400  mov     x0, x19
  10017a404  bl      _objc_release
  10017a408  adrp    x8, #0x1003b0000
  10017a40c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10017a410  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10017a414  ldur    x9, [x29, #-0x58]
  10017a418  sub     x8, x8, x9
  10017a41c  cbnz    x8, loc_10017a440                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017a420  sub     sp, x29, #0x50
  10017a424  ldp     x28, x27, [sp], #0x10
  10017a428  ldp     x26, x25, [sp], #0x10
  10017a42c  ldp     x24, x23, [sp], #0x10
  10017a430  ldp     x22, x21, [sp], #0x10
  10017a434  ldp     x20, x19, [sp], #0x10
  10017a438  ldp     x29, x30, [sp], #0x10
  10017a43c  ret
loc_10017a440:
  10017a440  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10017a444:
  10017a444  mov     x22, x0
  10017a448  b       loc_10017a4a4
  10017a44c  mov     x22, x0
  10017a450  b       loc_10017a49c
  10017a454  mov     x22, x0
  10017a458  b       loc_10017a488
  10017a45c  mov     x22, x0
  10017a460  b       loc_10017a480
  10017a464  mov     x22, x0
  10017a468  b       loc_10017a478
  10017a46c  mov     x22, x0
  10017a470  mov     x0, x26
  10017a474  bl      _objc_release
loc_10017a478:
  10017a478  mov     x0, x23
  10017a47c  bl      _objc_release
loc_10017a480:
  10017a480  mov     x0, x19
  10017a484  bl      _objc_release
loc_10017a488:
  10017a488  mov     x0, x28
  10017a48c  b       loc_10017a498
  10017a490  mov     x22, x0
  10017a494  mov     x0, x20
loc_10017a498:
  10017a498  bl      _objc_release
loc_10017a49c:
  10017a49c  mov     x0, x21
  10017a4a0  bl      _objc_release
loc_10017a4a4:
  10017a4a4  ldr     x19, [sp, #0x58]
  10017a4a8  mov     x0, x19
  10017a4ac  bl      _objc_release
  10017a4b0  ldr     x0, [sp, #0x50]
  10017a4b4  bl      _objc_release
  10017a4b8  mov     x0, x19
  10017a4bc  bl      _objc_release
  10017a4c0  mov     x0, x22
  10017a4c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10017a4c8  b       loc_10017a444
  10017a4cc  b       loc_10017a444

; ======================================================================
; -[TAGArbitraryPixel getQueryParametersStringFromArray:]
; address 0x10017a4d0  size 56  kind objc
; ======================================================================
  10017a4d0  stp     x29, x30, [sp, #-0x10]!
  10017a4d4  mov     x29, sp
  10017a4d8  adrp    x8, #0x10041c000
  10017a4dc  nop
  10017a4e0  ldr     x1, [x8, #0x1e8]
  10017a4e4  adrp    x8, #0x1003c4000
  10017a4e8  add     x8, x8, #0xb10                           ; @"&"
  10017a4ec  mov     x0, x2
  10017a4f0  mov     x2, x8
  10017a4f4  bl      _objc_msgSend                            ; [arg1 componentsJoinedByString:@"&"]
  10017a4f8  mov     x29, x29
  10017a4fc  bl      _objc_retainAutoreleasedReturnValue
  10017a500  ldp     x29, x30, [sp], #0x10
  10017a504  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGArbitraryPixel getHitSender]
; address 0x10017a508  size 24  kind objc
; ======================================================================
  10017a508  adrp    x8, #0x10041e000
  10017a50c  ldr     x0, [x8, #0x548]                         ; class TAGDispatcher
  10017a510  adrp    x8, #0x10041b000
  10017a514  nop
  10017a518  ldr     x1, [x8, #0xd30]
  10017a51c  b       _objc_msgSend                            ; [TAGDispatcher instance]

; ======================================================================
; -[TAGArbitraryPixel idProcessed:]
; address 0x10017a520  size 220  kind objc
; ======================================================================
  10017a520  stp     x29, x30, [sp, #-0x10]!
  10017a524  mov     x29, sp
  10017a528  stp     x20, x19, [sp, #-0x10]!
  10017a52c  stp     x22, x21, [sp, #-0x10]!
  10017a530  mov     x20, x0
  10017a534  mov     x0, x2
  10017a538  bl      _objc_retain
  10017a53c  mov     x19, x0
  10017a540  mov     x0, x20
  10017a544  bl      _objc_retain
  10017a548  mov     x20, x0
  10017a54c  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10017a550  adrp    x8, #0x10041d000
  10017a554  nop
  10017a558  ldr     x1, [x8, #0xd00]
  10017a55c  mov     x0, x20
  10017a560  mov     x2, x19
  10017a564  bl      _objc_msgSend                            ; [self idInCache:arg1]
  10017a568  tbnz    w0, #0, loc_10017a5a0                    ; if (([self idInCache:arg1] & 1))
  10017a56c  adrp    x8, #0x10041d000
  10017a570  nop
  10017a574  ldr     x1, [x8, #0xd08]
  10017a578  mov     x0, x20
  10017a57c  mov     x2, x19
  10017a580  bl      _objc_msgSend                            ; [self idInPlist:arg1]
  10017a584  cbz     w0, loc_10017a5a8                        ; if ([self idInPlist:arg1] == 0)
  10017a588  adrp    x8, #0x10041d000
  10017a58c  nop
  10017a590  ldr     x1, [x8, #0xcf8]
  10017a594  mov     x0, x20
  10017a598  mov     x2, x19
  10017a59c  bl      _objc_msgSend                            ; [self cacheUnrepeatableId:arg1]
loc_10017a5a0:
  10017a5a0  mov     w21, #1
  10017a5a4  b       loc_10017a5ac
loc_10017a5a8:
  10017a5a8  mov     w21, #0
loc_10017a5ac:
  10017a5ac  mov     x0, x20
  10017a5b0  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10017a5b4  mov     x0, x20
  10017a5b8  bl      _objc_release
  10017a5bc  mov     x0, x19
  10017a5c0  bl      _objc_release
  10017a5c4  mov     x0, x21
  10017a5c8  ldp     x22, x21, [sp], #0x10
  10017a5cc  ldp     x20, x19, [sp], #0x10
  10017a5d0  ldp     x29, x30, [sp], #0x10
  10017a5d4  ret
  10017a5d8  mov     x21, x0
  10017a5dc  mov     x0, x20
  10017a5e0  bl      _objc_sync_exit                          ; objc_sync_exit()
  10017a5e4  mov     x0, x20
  10017a5e8  bl      _objc_release
  10017a5ec  mov     x0, x19
  10017a5f0  bl      _objc_release
  10017a5f4  mov     x0, x21
  10017a5f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGArbitraryPixel cacheUnrepeatableId:]
; address 0x10017a5fc  size 164  kind objc
; ======================================================================
  10017a5fc  stp     x29, x30, [sp, #-0x10]!
  10017a600  mov     x29, sp
  10017a604  stp     x20, x19, [sp, #-0x10]!
  10017a608  mov     x0, x2
  10017a60c  bl      _objc_retain
  10017a610  mov     x19, x0
  10017a614  adrp    x20, #0x10042d000
  10017a618  ldr     x0, [x20, #0xfb0]                        ; load g_10042dfb0
  10017a61c  cbz     x0, loc_10017a640                        ; if (g_10042dfb0 == 0)
  10017a620  adrp    x8, #0x100416000
  10017a624  nop
  10017a628  ldr     x1, [x8, #0xdc8]
  10017a62c  adrp    x2, #0x1003c2000
  10017a630  add     x2, x2, #0xb30                           ; @"true"
  10017a634  mov     x3, x19
  10017a638  bl      _objc_msgSend                            ; [g_10042dfb0 setObject:@"true" forKey:arg1]
  10017a63c  b       loc_10017a67c
loc_10017a640:
  10017a640  adrp    x8, #0x10041d000
  10017a644  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10017a648  adrp    x8, #0x100419000
  10017a64c  nop
  10017a650  ldr     x1, [x8, #0x2b8]
  10017a654  adrp    x2, #0x1003c2000
  10017a658  add     x2, x2, #0xb30                           ; @"true"
  10017a65c  mov     x3, x19
  10017a660  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithObject:@"true" forKey:arg1]
  10017a664  mov     x29, x29
  10017a668  bl      _objc_retainAutoreleasedReturnValue
  10017a66c  ldr     x8, [x20, #0xfb0]                        ; load g_10042dfb0
  10017a670  str     x0, [x20, #0xfb0]                        ; store g_10042dfb0 = [NSMutableDictionary dictionaryWithObject:@"true" forKey:arg1]
  10017a674  mov     x0, x8
  10017a678  bl      _objc_release
loc_10017a67c:
  10017a67c  mov     x0, x19
  10017a680  ldp     x20, x19, [sp], #0x10
  10017a684  ldp     x29, x30, [sp], #0x10
  10017a688  b       _objc_release
  10017a68c  mov     x20, x0
  10017a690  mov     x0, x19
  10017a694  bl      _objc_release
  10017a698  mov     x0, x20
  10017a69c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGArbitraryPixel idInPlist:]
; address 0x10017a6a0  size 184  kind objc
; ======================================================================
  10017a6a0  stp     x29, x30, [sp, #-0x10]!
  10017a6a4  mov     x29, sp
  10017a6a8  stp     x20, x19, [sp, #-0x10]!
  10017a6ac  stp     x22, x21, [sp, #-0x10]!
  10017a6b0  mov     x0, x2
  10017a6b4  bl      _objc_retain
  10017a6b8  mov     x19, x0
  10017a6bc  adrp    x8, #0x10041e000
  10017a6c0  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  10017a6c4  adrp    x8, #0x10041d000
  10017a6c8  nop
  10017a6cc  ldr     x1, [x8, #0x308]
  10017a6d0  adrp    x2, #0x1003c9000
  10017a6d4  add     x2, x2, #0x9b0                           ; @"gtm_img_unrepeatable"
  10017a6d8  bl      _objc_msgSend                            ; [TAGPropertyListUtil readPropertyList:@"gtm_img_unrepeatable"]
  10017a6dc  mov     x29, x29
  10017a6e0  bl      _objc_retainAutoreleasedReturnValue
  10017a6e4  mov     x20, x0
  10017a6e8  adrp    x8, #0x100416000
  10017a6ec  nop
  10017a6f0  ldr     x1, [x8, #0xda0]
  10017a6f4  mov     x2, x19
  10017a6f8  bl      _objc_msgSend                            ; [[TAGPropertyListUtil readPropertyList:@"gtm_img_unrepeatable"] valueForKey:arg1]
  10017a6fc  mov     x29, x29
  10017a700  bl      _objc_retainAutoreleasedReturnValue
  10017a704  cmp     x0, #0
  10017a708  cset    w21, ne
  10017a70c  bl      _objc_release
  10017a710  mov     x0, x20
  10017a714  bl      _objc_release
  10017a718  mov     x0, x19
  10017a71c  bl      _objc_release
  10017a720  mov     x0, x21
  10017a724  ldp     x22, x21, [sp], #0x10
  10017a728  ldp     x20, x19, [sp], #0x10
  10017a72c  ldp     x29, x30, [sp], #0x10
  10017a730  ret
  10017a734  mov     x21, x0
  10017a738  b       loc_10017a748
  10017a73c  mov     x21, x0
  10017a740  mov     x0, x20
  10017a744  bl      _objc_release
loc_10017a748:
  10017a748  mov     x0, x19
  10017a74c  bl      _objc_release
  10017a750  mov     x0, x21
  10017a754  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGArbitraryPixel clearCache]
; address 0x10017a758  size 24  kind objc
; ======================================================================
  10017a758  adrp    x8, #0x10042d000
  10017a75c  ldr     x0, [x8, #0xfb0]                         ; load g_10042dfb0
  10017a760  adrp    x8, #0x100417000
  10017a764  nop
  10017a768  ldr     x1, [x8, #0x1b8]
  10017a76c  b       _objc_msgSend                            ; [g_10042dfb0 removeAllObjects]

; ======================================================================
; -[TAGArbitraryPixel idInCache:]
; address 0x10017a770  size 72  kind objc
; ======================================================================
  10017a770  stp     x29, x30, [sp, #-0x10]!
  10017a774  mov     x29, sp
  10017a778  stp     x20, x19, [sp, #-0x10]!
  10017a77c  adrp    x8, #0x10042d000
  10017a780  ldr     x0, [x8, #0xfb0]                         ; load g_10042dfb0
  10017a784  adrp    x8, #0x100417000
  10017a788  nop
  10017a78c  ldr     x1, [x8, #0x40]
  10017a790  bl      _objc_msgSend                            ; [g_10042dfb0 objectForKey:arg1]
  10017a794  mov     x29, x29
  10017a798  bl      _objc_retainAutoreleasedReturnValue
  10017a79c  cmp     x0, #0
  10017a7a0  cset    w19, ne
  10017a7a4  bl      _objc_release
  10017a7a8  mov     x0, x19
  10017a7ac  ldp     x20, x19, [sp], #0x10
  10017a7b0  ldp     x29, x30, [sp], #0x10
  10017a7b4  ret
