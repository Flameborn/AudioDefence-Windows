// unit TAGClickReferrerUtil — 6 functions
//   0x100159930      24  +[TAGClickReferrerUtil initialize]
//   0x100159948     356  +[TAGClickReferrerUtil addClickReferrer:]
//   0x100159aac     260  +[TAGClickReferrerUtil extractComponent:fromReferrer:]
//   0x100159bb0     984  +[TAGClickReferrerUtil parseComponentsFromQueryParameters:]
//   0x100159f88     380  +[TAGClickReferrerUtil clickReferrerForConversionId:component:]
//   0x10015a104      16  +[TAGClickReferrerUtil clearCache]

; ======================================================================
; +[TAGClickReferrerUtil initialize]
; address 0x100159930  size 24  kind objc
; ======================================================================
  100159930  adrp    x8, #0x10041e000
  100159934  ldr     x0, [x8, #0x928]                         ; class TAGClickReferrerUtil
  100159938  adrp    x8, #0x10041d000
  10015993c  nop
  100159940  ldr     x1, [x8, #0x2f8]
  100159944  b       _objc_msgSend                            ; [TAGClickReferrerUtil clearCache]

; ======================================================================
; +[TAGClickReferrerUtil addClickReferrer:]
; address 0x100159948  size 356  kind objc
; ======================================================================
  100159948  stp     x29, x30, [sp, #-0x10]!
  10015994c  mov     x29, sp
  100159950  stp     x20, x19, [sp, #-0x10]!
  100159954  stp     x22, x21, [sp, #-0x10]!
  100159958  mov     x20, x0
  10015995c  mov     x0, x2
  100159960  bl      _objc_retain
  100159964  mov     x19, x0
  100159968  adrp    x8, #0x10041d000
  10015996c  nop
  100159970  ldr     x1, [x8, #0x300]
  100159974  adrp    x2, #0x1003c8000
  100159978  add     x2, x2, #0x190                           ; @"conv"
  10015997c  mov     x0, x20
  100159980  mov     x3, x19
  100159984  bl      _objc_msgSend                            ; [TAGClickReferrerUtil extractComponent:@"conv" fromReferrer:arg1]
  100159988  mov     x29, x29
  10015998c  bl      _objc_retainAutoreleasedReturnValue
  100159990  mov     x20, x0
  100159994  cbz     x20, loc_100159a6c                       ; if ([TAGClickReferrerUtil extractComponent:@"conv" fromReferrer:arg1] == 0)
  100159998  adrp    x8, #0x100417000
  10015999c  nop
  1001599a0  ldr     x1, [x8, #0xc58]
  1001599a4  mov     x0, x20
  1001599a8  bl      _objc_msgSend                            ; [[TAGClickReferrerUtil extractComponent:@"conv" fromReferrer:arg1] length]
  1001599ac  cbz     x0, loc_100159a6c                        ; if ([[TAGClickReferrerUtil extractComponent:@"conv" fromReferrer:arg1] length] == 0)
  1001599b0  adrp    x21, #0x10042d000
  1001599b4  ldr     x0, [x21, #0xf40]                        ; load g_10042df40
  1001599b8  cbnz    x0, loc_100159a30                        ; if (g_10042df40 != 0)
  1001599bc  adrp    x8, #0x10041e000
  1001599c0  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  1001599c4  adrp    x8, #0x10041d000
  1001599c8  nop
  1001599cc  ldr     x1, [x8, #0x308]
  1001599d0  adrp    x2, #0x1003c8000
  1001599d4  add     x2, x2, #0x170                           ; @"ClickReferrer"
  1001599d8  bl      _objc_msgSend                            ; [TAGPropertyListUtil readPropertyList:@"ClickReferrer"]
  1001599dc  mov     x29, x29
  1001599e0  bl      _objc_retainAutoreleasedReturnValue
  1001599e4  ldr     x8, [x21, #0xf40]                        ; load g_10042df40
  1001599e8  str     x0, [x21, #0xf40]                        ; store g_10042df40 = [TAGPropertyListUtil readPropertyList:@"ClickReferrer"]
  1001599ec  mov     x0, x8
  1001599f0  bl      _objc_release
  1001599f4  ldr     x0, [x21, #0xf40]                        ; load g_10042df40
  1001599f8  cbnz    x0, loc_100159a30                        ; if (g_10042df40 != 0)
  1001599fc  adrp    x8, #0x10041d000
  100159a00  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100159a04  adrp    x8, #0x10041b000
  100159a08  nop
  100159a0c  ldr     x1, [x8, #0xf20]
  100159a10  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  100159a14  mov     x29, x29
  100159a18  bl      _objc_retainAutoreleasedReturnValue
  100159a1c  ldr     x8, [x21, #0xf40]                        ; load g_10042df40
  100159a20  str     x0, [x21, #0xf40]                        ; store g_10042df40 = [NSMutableDictionary dictionary]
  100159a24  mov     x0, x8
  100159a28  bl      _objc_release
  100159a2c  ldr     x0, [x21, #0xf40]                        ; load g_10042df40
loc_100159a30:
  100159a30  adrp    x8, #0x100416000
  100159a34  nop
  100159a38  ldr     x1, [x8, #0xdc8]
  100159a3c  mov     x2, x19
  100159a40  mov     x3, x20
  100159a44  bl      _objc_msgSend                            ; [g_10042df40 setObject:arg1 forKey:[TAGClickReferrerUtil extractComponent:@"conv" fromReferrer:arg1]]
  100159a48  adrp    x8, #0x10041e000
  100159a4c  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  100159a50  ldr     x3, [x21, #0xf40]                        ; load g_10042df40
  100159a54  adrp    x8, #0x10041d000
  100159a58  nop
  100159a5c  ldr     x1, [x8, #0x310]
  100159a60  adrp    x2, #0x1003c8000
  100159a64  add     x2, x2, #0x170                           ; @"ClickReferrer"
  100159a68  bl      _objc_msgSend                            ; [TAGPropertyListUtil writePropertyListAsync:@"ClickReferrer" withData:g_10042df40]
loc_100159a6c:
  100159a6c  mov     x0, x20
  100159a70  bl      _objc_release
  100159a74  mov     x0, x19
  100159a78  ldp     x22, x21, [sp], #0x10
  100159a7c  ldp     x20, x19, [sp], #0x10
  100159a80  ldp     x29, x30, [sp], #0x10
  100159a84  b       _objc_release
  100159a88  mov     x21, x0
  100159a8c  b       loc_100159a9c
  100159a90  mov     x21, x0
  100159a94  mov     x0, x20
  100159a98  bl      _objc_release
loc_100159a9c:
  100159a9c  mov     x0, x19
  100159aa0  bl      _objc_release
  100159aa4  mov     x0, x21
  100159aa8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGClickReferrerUtil extractComponent:fromReferrer:]
; address 0x100159aac  size 260  kind objc
; ======================================================================
  100159aac  stp     x29, x30, [sp, #-0x10]!
  100159ab0  mov     x29, sp
  100159ab4  stp     x20, x19, [sp, #-0x10]!
  100159ab8  stp     x22, x21, [sp, #-0x10]!
  100159abc  mov     x20, x3
  100159ac0  mov     x21, x0
  100159ac4  mov     x0, x2
  100159ac8  bl      _objc_retain
  100159acc  mov     x19, x0
  100159ad0  mov     x0, x20
  100159ad4  bl      _objc_retain
  100159ad8  mov     x20, x0
  100159adc  cbz     x20, loc_100159b34                       ; if (arg2 == 0)
  100159ae0  cbz     x19, loc_100159b3c                       ; if (arg1 == 0)
  100159ae4  adrp    x8, #0x10041d000
  100159ae8  nop
  100159aec  ldr     x1, [x8, #0x2c0]
  100159af0  mov     x0, x21
  100159af4  mov     x2, x20
  100159af8  bl      _objc_msgSend                            ; [TAGClickReferrerUtil parseComponentsFromQueryParameters:arg2]
  100159afc  mov     x29, x29
  100159b00  bl      _objc_retainAutoreleasedReturnValue
  100159b04  mov     x21, x0
  100159b08  adrp    x8, #0x100417000
  100159b0c  nop
  100159b10  ldr     x1, [x8, #0x40]
  100159b14  mov     x2, x19
  100159b18  bl      _objc_msgSend                            ; [[TAGClickReferrerUtil parseComponentsFromQueryParameters:arg2] objectForKey:arg1]
  100159b1c  mov     x29, x29
  100159b20  bl      _objc_retainAutoreleasedReturnValue
  100159b24  mov     x22, x0
  100159b28  mov     x0, x21
  100159b2c  bl      _objc_release
  100159b30  b       loc_100159b60
loc_100159b34:
  100159b34  mov     x22, #0
  100159b38  b       loc_100159b60
loc_100159b3c:
  100159b3c  adrp    x8, #0x100417000
  100159b40  nop
  100159b44  ldr     x1, [x8, #0xc58]
  100159b48  mov     x0, x20
  100159b4c  bl      _objc_msgSend                            ; [arg2 length]
  100159b50  cmp     x0, #0
  100159b54  csel    x0, x20, xzr, ne
  100159b58  bl      _objc_retain
  100159b5c  mov     x22, x0
loc_100159b60:
  100159b60  mov     x0, x20
  100159b64  bl      _objc_release
  100159b68  mov     x0, x19
  100159b6c  bl      _objc_release
  100159b70  mov     x0, x22
  100159b74  ldp     x22, x21, [sp], #0x10
  100159b78  ldp     x20, x19, [sp], #0x10
  100159b7c  ldp     x29, x30, [sp], #0x10
  100159b80  b       _objc_autoreleaseReturnValue
  100159b84  mov     x22, x0
  100159b88  mov     x0, x21
  100159b8c  bl      _objc_release
  100159b90  b       loc_100159b98
  100159b94  mov     x22, x0
loc_100159b98:
  100159b98  mov     x0, x20
  100159b9c  bl      _objc_release
  100159ba0  mov     x0, x19
  100159ba4  bl      _objc_release
  100159ba8  mov     x0, x22
  100159bac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGClickReferrerUtil parseComponentsFromQueryParameters:]
; address 0x100159bb0  size 984  kind objc
; ======================================================================
  100159bb0  stp     x29, x30, [sp, #-0x10]!
  100159bb4  mov     x29, sp
  100159bb8  stp     x20, x19, [sp, #-0x10]!
  100159bbc  stp     x22, x21, [sp, #-0x10]!
  100159bc0  stp     x24, x23, [sp, #-0x10]!
  100159bc4  stp     x26, x25, [sp, #-0x10]!
  100159bc8  stp     x28, x27, [sp, #-0x10]!
  100159bcc  sub     sp, sp, #0x130
  100159bd0  adrp    x8, #0x1003b0000
  100159bd4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100159bd8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100159bdc  stur    x8, [x29, #-0x58]
  100159be0  mov     x0, x2
  100159be4  bl      _objc_retain
  100159be8  mov     x19, x0
  100159bec  adrp    x8, #0x10041d000
  100159bf0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100159bf4  adrp    x8, #0x10041b000
  100159bf8  nop
  100159bfc  ldr     x1, [x8, #0xf20]
  100159c00  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  100159c04  mov     x29, x29
  100159c08  bl      _objc_retainAutoreleasedReturnValue
  100159c0c  str     x0, [sp, #0x48]
  100159c10  adrp    x8, #0x100419000
  100159c14  nop
  100159c18  ldr     x23, [x8, #0x188]
  100159c1c  adrp    x2, #0x1003c4000
  100159c20  add     x2, x2, #0xb10                           ; @"&"
  100159c24  mov     x0, x19
  100159c28  mov     x1, x23
  100159c2c  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@"&"]
  100159c30  str     x19, [sp, #0x10]
  100159c34  mov     x29, x29
  100159c38  bl      _objc_retainAutoreleasedReturnValue
  100159c3c  stp     xzr, xzr, [x29, #-0x68]
  100159c40  stp     xzr, xzr, [x29, #-0x78]
  100159c44  stp     xzr, xzr, [x29, #-0x88]
  100159c48  stp     xzr, xzr, [x29, #-0x98]
  100159c4c  bl      _objc_retain
  100159c50  str     x0, [sp, #0x50]
  100159c54  adrp    x8, #0x100416000
  100159c58  nop
  100159c5c  ldr     x1, [x8, #0xe00]
  100159c60  str     x1, [sp, #0x28]
  100159c64  sub     x2, x29, #0x98
  100159c68  add     x3, sp, #0x68
  100159c6c  mov     x4, #0x10
  100159c70  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  100159c74  mov     x24, x0
  100159c78  cbz     x24, loc_100159e78                       ; if ([[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] == 0)
  100159c7c  ldur    x8, [x29, #-0x88]
  100159c80  adrp    x9, #0x100416000
  100159c84  add     x9, x9, #0xe30                           ; &@selector(count)
  100159c88  ldr     x8, [x8]
  100159c8c  str     x8, [sp, #0x60]
  100159c90  ldr     x8, [x9]
  100159c94  str     x8, [sp, #0x58]
  100159c98  adrp    x8, #0x100416000
  100159c9c  nop
  100159ca0  ldr     x26, [x8, #0xc30]
  100159ca4  adrp    x8, #0x10041d000
  100159ca8  nop
  100159cac  ldr     x27, [x8, #0x318]
  100159cb0  adrp    x8, #0x100416000
  100159cb4  nop
  100159cb8  ldr     x8, [x8, #0xdc8]
  100159cbc  str     x8, [sp, #0x30]
  100159cc0  adrp    x8, #0x10041a000
  100159cc4  nop
  100159cc8  ldr     x8, [x8, #0x620]
  100159ccc  str     x8, [sp, #0x40]
  100159cd0  adrp    x8, #0x10041b000
  100159cd4  nop
  100159cd8  ldr     x8, [x8, #0xe90]
  100159cdc  str     x8, [sp, #0x38]
  100159ce0  sub     x8, x29, #0x98
  100159ce4  str     x8, [sp, #0x20]
  100159ce8  add     x8, sp, #0x68
  100159cec  str     x8, [sp, #0x18]
loc_100159cf0:
  100159cf0  mov     x22, #0
loc_100159cf4:
  100159cf4  ldur    x8, [x29, #-0x88]
  100159cf8  ldr     x8, [x8]
  100159cfc  ldr     x9, [sp, #0x60]
  100159d00  cmp     x8, x9
  100159d04  b.eq    loc_100159d10                            ; if (x8 == x9)
  100159d08  ldr     x0, [sp, #0x50]
  100159d0c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 componentsSeparatedByString:@"&"])
loc_100159d10:
  100159d10  ldur    x8, [x29, #-0x90]
  100159d14  ldr     x19, [x8, x22, lsl #3]
  100159d18  mov     x0, x19
  100159d1c  mov     x1, x23
  100159d20  adrp    x2, #0x1003c5000
  100159d24  add     x2, x2, #0x2b0                           ; @"="
  100159d28  bl      _objc_msgSend                            ; [x0 componentsSeparatedByString:@"="]
  100159d2c  mov     x29, x29
  100159d30  bl      _objc_retainAutoreleasedReturnValue
  100159d34  mov     x21, x0
  100159d38  ldr     x1, [sp, #0x58]
  100159d3c  bl      _objc_msgSend                            ; [[x0 componentsSeparatedByString:@"="] count]
  100159d40  cmp     x0, #2
  100159d44  b.ne    loc_100159e08                            ; if ([[x0 componentsSeparatedByString:@"="] count] != 2)
  100159d48  adrp    x8, #0x10041e000
  100159d4c  ldr     x19, [x8, #0x540]                        ; class TAGValueEscapeUtil
  100159d50  mov     x2, #1
  100159d54  mov     x0, x21
  100159d58  mov     x1, x26
  100159d5c  bl      _objc_msgSend                            ; [[x0 componentsSeparatedByString:@"="] objectAtIndex:1]
  100159d60  mov     x25, x23
  100159d64  mov     x29, x29
  100159d68  bl      _objc_retainAutoreleasedReturnValue
  100159d6c  mov     x28, x0
  100159d70  mov     x0, x19
  100159d74  mov     x1, x27
  100159d78  mov     x2, x28
  100159d7c  bl      _objc_msgSend                            ; [TAGValueEscapeUtil urlDecode:[[x0 componentsSeparatedByString:@"="] objectAtIndex:1]]
  100159d80  mov     x29, x29
  100159d84  bl      _objc_retainAutoreleasedReturnValue
  100159d88  mov     x19, x0
  100159d8c  adrp    x8, #0x10041e000
  100159d90  ldr     x20, [x8, #0x540]                        ; class TAGValueEscapeUtil
  100159d94  mov     x2, #0
  100159d98  mov     x0, x21
  100159d9c  mov     x1, x26
  100159da0  bl      _objc_msgSend                            ; [[x0 componentsSeparatedByString:@"="] objectAtIndex:0]
  100159da4  mov     x29, x29
  100159da8  bl      _objc_retainAutoreleasedReturnValue
  100159dac  mov     x23, x0
  100159db0  mov     x0, x20
  100159db4  mov     x1, x27
  100159db8  mov     x2, x23
  100159dbc  bl      _objc_msgSend                            ; [TAGValueEscapeUtil urlDecode:[[x0 componentsSeparatedByString:@"="] objectAtIndex:0]]
  100159dc0  mov     x29, x29
  100159dc4  bl      _objc_retainAutoreleasedReturnValue
  100159dc8  mov     x20, x0
  100159dcc  ldr     x0, [sp, #0x48]
  100159dd0  ldr     x1, [sp, #0x30]
  100159dd4  mov     x2, x19
  100159dd8  mov     x3, x20
  100159ddc  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[TAGValueEscapeUtil urlDecode:[[x0 componentsSeparatedByString:@"="] objectAtIndex:1]] forKey:[TAGValueEscapeUtil urlDecode:[[x0 componentsSeparatedByString:@"="] objectAtIndex:0]]]
  100159de0  mov     x0, x20
  100159de4  bl      _objc_release
  100159de8  mov     x0, x23
  100159dec  bl      _objc_release
  100159df0  mov     x0, x19
  100159df4  bl      _objc_release
  100159df8  mov     x0, x28
  100159dfc  bl      _objc_release
  100159e00  mov     x23, x25
  100159e04  b       loc_100159e48
loc_100159e08:
  100159e08  adrp    x8, #0x10041e000
  100159e0c  ldr     x20, [x8, #0x538]                        ; class TAGLog
  100159e10  adrp    x0, #0x1003c8000
  100159e14  add     x0, x0, #0x1b0                           ; @"Invalid component: "
  100159e18  ldr     x1, [sp, #0x40]
  100159e1c  mov     x2, x19
  100159e20  bl      _objc_msgSend                            ; [@"Invalid component: " stringByAppendingString:x2]
  100159e24  mov     x29, x29
  100159e28  bl      _objc_retainAutoreleasedReturnValue
  100159e2c  mov     x19, x0
  100159e30  mov     x0, x20
  100159e34  ldr     x1, [sp, #0x38]
  100159e38  mov     x2, x19
  100159e3c  bl      _objc_msgSend                            ; [TAGLog warning:[@"Invalid component: " stringByAppendingString:x2]]
  100159e40  mov     x0, x19
  100159e44  bl      _objc_release
loc_100159e48:
  100159e48  mov     x0, x21
  100159e4c  bl      _objc_release
  100159e50  add     x22, x22, #1
  100159e54  cmp     x22, x24
  100159e58  b.lo    loc_100159cf4                            ; if ((x22 + 1) <u [[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16])
  100159e5c  mov     x4, #0x10
  100159e60  ldr     x0, [sp, #0x50]
  100159e64  ldp     x2, x1, [sp, #0x20]
  100159e68  ldr     x3, [sp, #0x18]
  100159e6c  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  100159e70  mov     x24, x0
  100159e74  cbnz    x24, loc_100159cf0                       ; if ([[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] != 0)
loc_100159e78:
  100159e78  ldr     x19, [sp, #0x50]
  100159e7c  mov     x0, x19
  100159e80  bl      _objc_release
  100159e84  mov     x0, x19
  100159e88  bl      _objc_release
  100159e8c  ldr     x0, [sp, #0x10]
  100159e90  bl      _objc_release
  100159e94  adrp    x8, #0x1003b0000
  100159e98  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100159e9c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100159ea0  ldur    x9, [x29, #-0x58]
  100159ea4  sub     x8, x8, x9
  100159ea8  cbnz    x8, loc_100159ed0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100159eac  ldr     x0, [sp, #0x48]
  100159eb0  sub     sp, x29, #0x50
  100159eb4  ldp     x28, x27, [sp], #0x10
  100159eb8  ldp     x26, x25, [sp], #0x10
  100159ebc  ldp     x24, x23, [sp], #0x10
  100159ec0  ldp     x22, x21, [sp], #0x10
  100159ec4  ldp     x20, x19, [sp], #0x10
  100159ec8  ldp     x29, x30, [sp], #0x10
  100159ecc  b       _objc_autoreleaseReturnValue
loc_100159ed0:
  100159ed0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100159ed4  mov     x22, x0
  100159ed8  b       loc_100159f38
loc_100159edc:
  100159edc  mov     x22, x0
  100159ee0  ldr     x19, [sp, #0x10]
  100159ee4  b       loc_100159f44
  100159ee8  mov     x22, x0
  100159eec  b       loc_100159f1c
  100159ef0  mov     x22, x0
  100159ef4  b       loc_100159f14
  100159ef8  mov     x22, x0
  100159efc  b       loc_100159f0c
  100159f00  mov     x22, x0
  100159f04  mov     x0, x20
  100159f08  bl      _objc_release
loc_100159f0c:
  100159f0c  mov     x0, x23
  100159f10  bl      _objc_release
loc_100159f14:
  100159f14  mov     x0, x19
  100159f18  bl      _objc_release
loc_100159f1c:
  100159f1c  ldr     x19, [sp, #0x10]
  100159f20  mov     x0, x28
  100159f24  bl      _objc_release
  100159f28  b       loc_100159f3c
  100159f2c  mov     x22, x0
  100159f30  mov     x0, x19
  100159f34  bl      _objc_release
loc_100159f38:
  100159f38  ldr     x19, [sp, #0x10]
loc_100159f3c:
  100159f3c  mov     x0, x21
  100159f40  bl      _objc_release
loc_100159f44:
  100159f44  ldr     x20, [sp, #0x50]
  100159f48  mov     x0, x20
  100159f4c  bl      _objc_release
  100159f50  mov     x0, x20
  100159f54  bl      _objc_release
loc_100159f58:
  100159f58  ldr     x0, [sp, #0x48]
  100159f5c  bl      _objc_release
loc_100159f60:
  100159f60  mov     x0, x19
  100159f64  bl      _objc_release
  100159f68  mov     x0, x22
  100159f6c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100159f70  mov     x22, x0
  100159f74  b       loc_100159f60
  100159f78  mov     x22, x0
  100159f7c  b       loc_100159f58
  100159f80  b       loc_100159edc
  100159f84  b       loc_100159edc

; ======================================================================
; +[TAGClickReferrerUtil clickReferrerForConversionId:component:]
; address 0x100159f88  size 380  kind objc
; ======================================================================
  100159f88  stp     x29, x30, [sp, #-0x10]!
  100159f8c  mov     x29, sp
  100159f90  stp     x20, x19, [sp, #-0x10]!
  100159f94  stp     x22, x21, [sp, #-0x10]!
  100159f98  stp     x24, x23, [sp, #-0x10]!
  100159f9c  stp     x26, x25, [sp, #-0x10]!
  100159fa0  mov     x20, x3
  100159fa4  mov     x21, x0
  100159fa8  mov     x0, x2
  100159fac  bl      _objc_retain
  100159fb0  mov     x19, x0
  100159fb4  mov     x0, x20
  100159fb8  bl      _objc_retain
  100159fbc  mov     x20, x0
  100159fc0  adrp    x25, #0x10042d000
  100159fc4  ldr     x0, [x25, #0xf40]                        ; load g_10042df40
  100159fc8  adrp    x8, #0x100417000
  100159fcc  nop
  100159fd0  ldr     x24, [x8, #0x40]
  100159fd4  mov     x1, x24
  100159fd8  mov     x2, x19
  100159fdc  bl      _objc_msgSend                            ; [g_10042df40 objectForKey:arg1]
  100159fe0  mov     x29, x29
  100159fe4  bl      _objc_retainAutoreleasedReturnValue
  100159fe8  mov     x22, x0
  100159fec  cbnz    x22, loc_10015a06c                       ; if ([g_10042df40 objectForKey:arg1] != 0)
  100159ff0  adrp    x8, #0x10041e000
  100159ff4  ldr     x0, [x8, #0x978]                         ; class TAGPropertyListUtil
  100159ff8  adrp    x8, #0x10041d000
  100159ffc  nop
  10015a000  ldr     x1, [x8, #0x308]
  10015a004  adrp    x2, #0x1003c8000
  10015a008  add     x2, x2, #0x170                           ; @"ClickReferrer"
  10015a00c  bl      _objc_msgSend                            ; [TAGPropertyListUtil readPropertyList:@"ClickReferrer"]
  10015a010  mov     x29, x29
  10015a014  bl      _objc_retainAutoreleasedReturnValue
  10015a018  mov     x23, x0
  10015a01c  mov     x1, x24
  10015a020  mov     x2, x19
  10015a024  bl      _objc_msgSend                            ; [[TAGPropertyListUtil readPropertyList:@"ClickReferrer"] objectForKey:arg1]
  10015a028  mov     x29, x29
  10015a02c  bl      _objc_retainAutoreleasedReturnValue
  10015a030  mov     x22, x0
  10015a034  cbnz    x22, loc_10015a048                       ; if ([[TAGPropertyListUtil readPropertyList:@"ClickReferrer"] objectForKey:arg1] != 0)
  10015a038  adrp    x22, #0x1003b9000
  10015a03c  add     x22, x22, #0x870                         ; @""
  10015a040  mov     x0, x22
  10015a044  bl      _objc_retain
loc_10015a048:
  10015a048  ldr     x0, [x25, #0xf40]                        ; load g_10042df40
  10015a04c  adrp    x8, #0x100416000
  10015a050  nop
  10015a054  ldr     x1, [x8, #0xdc8]
  10015a058  mov     x2, x22
  10015a05c  mov     x3, x19
  10015a060  bl      _objc_msgSend                            ; [g_10042df40 setObject:x2 forKey:arg1]
  10015a064  mov     x0, x23
  10015a068  bl      _objc_release
loc_10015a06c:
  10015a06c  adrp    x8, #0x10041d000
  10015a070  nop
  10015a074  ldr     x1, [x8, #0x300]
  10015a078  mov     x0, x21
  10015a07c  mov     x2, x20
  10015a080  mov     x3, x22
  10015a084  bl      _objc_msgSend                            ; [TAGClickReferrerUtil extractComponent:arg2 fromReferrer:x3]
  10015a088  mov     x29, x29
  10015a08c  bl      _objc_retainAutoreleasedReturnValue
  10015a090  mov     x21, x0
  10015a094  mov     x0, x22
  10015a098  bl      _objc_release
  10015a09c  mov     x0, x20
  10015a0a0  bl      _objc_release
  10015a0a4  mov     x0, x19
  10015a0a8  bl      _objc_release
  10015a0ac  mov     x0, x21
  10015a0b0  ldp     x26, x25, [sp], #0x10
  10015a0b4  ldp     x24, x23, [sp], #0x10
  10015a0b8  ldp     x22, x21, [sp], #0x10
  10015a0bc  ldp     x20, x19, [sp], #0x10
  10015a0c0  ldp     x29, x30, [sp], #0x10
  10015a0c4  b       _objc_autoreleaseReturnValue
  10015a0c8  mov     x21, x0
  10015a0cc  b       loc_10015a0ec
  10015a0d0  mov     x21, x0
  10015a0d4  mov     x0, x23
  10015a0d8  bl      _objc_release
  10015a0dc  b       loc_10015a0e4
  10015a0e0  mov     x21, x0
loc_10015a0e4:
  10015a0e4  mov     x0, x22
  10015a0e8  bl      _objc_release
loc_10015a0ec:
  10015a0ec  mov     x0, x20
  10015a0f0  bl      _objc_release
  10015a0f4  mov     x0, x19
  10015a0f8  bl      _objc_release
  10015a0fc  mov     x0, x21
  10015a100  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGClickReferrerUtil clearCache]
; address 0x10015a104  size 16  kind objc
; ======================================================================
  10015a104  adrp    x8, #0x10042d000
  10015a108  ldr     x0, [x8, #0xf40]                         ; load g_10042df40
  10015a10c  str     xzr, [x8, #0xf40]                        ; store g_10042df40 = 0
  10015a110  b       _objc_release
