// unit TAGJoinerMacro — 6 functions
//   0x100175ab8      44  +[TAGJoinerMacro functionId]
//   0x100175ae4     184  -[TAGJoinerMacro init]
//   0x100175b9c       8  -[TAGJoinerMacro isCacheable]
//   0x100175ba4    2920  -[TAGJoinerMacro evaluate:]
//   0x10017670c     260  -[TAGJoinerMacro addTo:charsInString:]
//   0x100176810     712  -[TAGJoinerMacro escape:escapeType:charsToBackslashEscape:]

; ======================================================================
; +[TAGJoinerMacro functionId]
; address 0x100175ab8  size 44  kind objc
; ======================================================================
  100175ab8  stp     x29, x30, [sp, #-0x10]!
  100175abc  mov     x29, sp
  100175ac0  stp     x20, x19, [sp, #-0x10]!
  100175ac4  adrp    x19, #0x1003c9000
  100175ac8  add     x19, x19, #0x550                         ; @"_jn"
  100175acc  mov     x0, x19
  100175ad0  bl      _objc_retainAutorelease
  100175ad4  mov     x0, x19
  100175ad8  ldp     x20, x19, [sp], #0x10
  100175adc  ldp     x29, x30, [sp], #0x10
  100175ae0  ret

; ======================================================================
; -[TAGJoinerMacro init]
; address 0x100175ae4  size 184  kind objc
; ======================================================================
  100175ae4  stp     x29, x30, [sp, #-0x10]!
  100175ae8  mov     x29, sp
  100175aec  stp     x20, x19, [sp, #-0x10]!
  100175af0  stp     x22, x21, [sp, #-0x10]!
  100175af4  sub     sp, sp, #0x10
  100175af8  mov     x19, x0
  100175afc  adrp    x8, #0x10041e000
  100175b00  ldr     x0, [x8, #0x550]                         ; class NSSet
  100175b04  adrp    x8, #0x10041b000
  100175b08  nop
  100175b0c  ldr     x1, [x8, #0x7e0]
  100175b10  adrp    x2, #0x1003c9000
  100175b14  add     x2, x2, #0x250                           ; @"arg0"
  100175b18  bl      _objc_msgSend                            ; [NSSet setWithObject:@"arg0"]
  100175b1c  mov     x29, x29
  100175b20  bl      _objc_retainAutoreleasedReturnValue
  100175b24  mov     x20, x0
  100175b28  str     x19, [sp]
  100175b2c  adrp    x8, #0x10041f000
  100175b30  ldr     x8, [x8, #0x3a0]
  100175b34  str     x8, [sp, #8]
  100175b38  adrp    x8, #0x10041d000
  100175b3c  nop
  100175b40  ldr     x1, [x8, #0xc10]
  100175b44  adrp    x2, #0x1003c9000
  100175b48  add     x2, x2, #0x550                           ; @"_jn"
  100175b4c  mov     x0, sp
  100175b50  mov     x3, x20
  100175b54  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_jn" requiredKeys:[NSSet setWithObject:@"arg0"]]
  100175b58  mov     x19, x0
  100175b5c  mov     x0, x20
  100175b60  bl      _objc_release
  100175b64  mov     x0, x19
  100175b68  sub     sp, x29, #0x20
  100175b6c  ldp     x22, x21, [sp], #0x10
  100175b70  ldp     x20, x19, [sp], #0x10
  100175b74  ldp     x29, x30, [sp], #0x10
  100175b78  ret
  100175b7c  mov     x21, x0
  100175b80  mov     x0, x19
  100175b84  b       loc_100175b90
  100175b88  mov     x21, x0
  100175b8c  mov     x0, x20
loc_100175b90:
  100175b90  bl      _objc_release
  100175b94  mov     x0, x21
  100175b98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGJoinerMacro isCacheable]
; address 0x100175b9c  size 8  kind objc
; ======================================================================
  100175b9c  mov     w0, #1
  100175ba0  ret

; ======================================================================
; -[TAGJoinerMacro evaluate:]
; address 0x100175ba4  size 2920  kind objc
; ======================================================================
  100175ba4  stp     x29, x30, [sp, #-0x10]!
  100175ba8  mov     x29, sp
  100175bac  stp     x20, x19, [sp, #-0x10]!
  100175bb0  stp     x22, x21, [sp, #-0x10]!
  100175bb4  stp     x24, x23, [sp, #-0x10]!
  100175bb8  stp     x26, x25, [sp, #-0x10]!
  100175bbc  stp     x28, x27, [sp, #-0x10]!
  100175bc0  sub     sp, sp, #0x170
  100175bc4  mov     x20, x0
  100175bc8  adrp    x8, #0x1003b0000
  100175bcc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100175bd0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100175bd4  stur    x8, [x29, #-0x58]
  100175bd8  mov     x0, x2
  100175bdc  bl      _objc_retain
  100175be0  mov     x22, x0
  100175be4  adrp    x8, #0x100417000
  100175be8  nop
  100175bec  ldr     x19, [x8, #0x40]
  100175bf0  adrp    x2, #0x1003c9000
  100175bf4  add     x2, x2, #0x250                           ; @"arg0"
  100175bf8  mov     x1, x19
  100175bfc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"arg0"]
  100175c00  mov     x29, x29
  100175c04  bl      _objc_retainAutoreleasedReturnValue
  100175c08  mov     x21, x0
  100175c0c  adrp    x2, #0x1003c9000
  100175c10  add     x2, x2, #0x570                           ; @"item_separator"
  100175c14  mov     x0, x22
  100175c18  mov     x1, x19
  100175c1c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"item_separator"]
  100175c20  str     x20, [sp, #0x98]
  100175c24  mov     x29, x29
  100175c28  bl      _objc_retainAutoreleasedReturnValue
  100175c2c  mov     x24, x21
  100175c30  mov     x23, x0
  100175c34  cbz     x23, loc_100175c64                       ; if ([arg1 objectForKey:@"item_separator"] == 0)
  100175c38  adrp    x8, #0x10041e000
  100175c3c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100175c40  adrp    x8, #0x10041d000
  100175c44  nop
  100175c48  ldr     x1, [x8, #0xc18]
  100175c4c  mov     x2, x23
  100175c50  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"item_separator"]]
  100175c54  mov     x29, x29
  100175c58  bl      _objc_retainAutoreleasedReturnValue
  100175c5c  str     x0, [sp, #0x40]
  100175c60  b       loc_100175c74
loc_100175c64:
  100175c64  adrp    x0, #0x1003b9000
  100175c68  add     x0, x0, #0x870                           ; @""
  100175c6c  str     x0, [sp, #0x40]
  100175c70  bl      _objc_retain
loc_100175c74:
  100175c74  adrp    x2, #0x1003c9000
  100175c78  add     x2, x2, #0x590                           ; @"key_value_separator"
  100175c7c  mov     x0, x22
  100175c80  mov     x1, x19
  100175c84  bl      _objc_msgSend                            ; [arg1 objectForKey:@"key_value_separator"]
  100175c88  mov     x29, x29
  100175c8c  bl      _objc_retainAutoreleasedReturnValue
  100175c90  mov     x25, x0
  100175c94  cbz     x25, loc_100175cc4                       ; if ([arg1 objectForKey:@"key_value_separator"] == 0)
  100175c98  adrp    x8, #0x10041e000
  100175c9c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100175ca0  adrp    x8, #0x10041d000
  100175ca4  nop
  100175ca8  ldr     x1, [x8, #0xc18]
  100175cac  mov     x2, x25
  100175cb0  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"key_value_separator"]]
  100175cb4  mov     x29, x29
  100175cb8  bl      _objc_retainAutoreleasedReturnValue
  100175cbc  str     x0, [sp, #0x80]
  100175cc0  b       loc_100175cd4
loc_100175cc4:
  100175cc4  adrp    x0, #0x1003c5000
  100175cc8  add     x0, x0, #0x2b0                           ; @"="
  100175ccc  str     x0, [sp, #0x80]
  100175cd0  bl      _objc_retain
loc_100175cd4:
  100175cd4  adrp    x8, #0x10041e000
  100175cd8  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  100175cdc  adrp    x8, #0x100418000
  100175ce0  nop
  100175ce4  ldr     x1, [x8, #0x360]
  100175ce8  bl      _objc_msgSend                            ; [NSMutableSet set]
  100175cec  mov     x29, x29
  100175cf0  bl      _objc_retainAutoreleasedReturnValue
  100175cf4  str     x0, [sp, #0xa0]
  100175cf8  adrp    x2, #0x1003c9000
  100175cfc  add     x2, x2, #0x5b0                           ; @"escape"
  100175d00  mov     x0, x22
  100175d04  mov     x1, x19
  100175d08  bl      _objc_msgSend                            ; [arg1 objectForKey:@"escape"]
  100175d0c  mov     x29, x29
  100175d10  bl      _objc_retainAutoreleasedReturnValue
  100175d14  mov     x26, x0
  100175d18  cbz     x26, loc_100175d70                       ; if ([arg1 objectForKey:@"escape"] == 0)
  100175d1c  adrp    x21, #0x10041e000
  100175d20  ldr     x0, [x21, #0xb58]                        ; class TAGTypes
  100175d24  adrp    x8, #0x10041d000
  100175d28  nop
  100175d2c  ldr     x1, [x8, #0xc18]
  100175d30  mov     x2, x26
  100175d34  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"escape"]]
  100175d38  mov     x29, x29
  100175d3c  bl      _objc_retainAutoreleasedReturnValue
  100175d40  mov     x20, x0
  100175d44  adrp    x8, #0x100417000
  100175d48  nop
  100175d4c  ldr     x19, [x8, #0x218]
  100175d50  adrp    x0, #0x1003c8000
  100175d54  add     x0, x0, #0xb0                            ; @"url"
  100175d58  mov     x1, x19
  100175d5c  mov     x2, x20
  100175d60  bl      _objc_msgSend                            ; [@"url" isEqual:[TAGTypes valueToString:[arg1 objectForKey:@"escape"]]]
  100175d64  tbz     w0, #0, loc_100175d7c                    ; if (!([@"url" isEqual:[TAGTypes valueToString:[arg1 objectForKey:@"escape"]]] & 1))
  100175d68  mov     w27, #1
  100175d6c  b       loc_100175de0
loc_100175d70:
  100175d70  str     x22, [sp, #0x38]
  100175d74  mov     w27, #0
  100175d78  b       loc_100175dec
loc_100175d7c:
  100175d7c  adrp    x0, #0x1003c9000
  100175d80  add     x0, x0, #0x5d0                           ; @"backslash"
  100175d84  mov     x1, x19
  100175d88  mov     x2, x20
  100175d8c  bl      _objc_msgSend                            ; [@"backslash" isEqual:[TAGTypes valueToString:[arg1 objectForKey:@"escape"]]]
  100175d90  cbz     w0, loc_10017644c                        ; if ([@"backslash" isEqual:[TAGTypes valueToString:[arg1 objectForKey:@"escape"]]] == 0)
  100175d94  adrp    x8, #0x10041d000
  100175d98  nop
  100175d9c  ldr     x19, [x8, #0xc90]
  100175da0  ldp     x0, x2, [sp, #0x98]
  100175da4  mov     x1, x19
  100175da8  ldr     x3, [sp, #0x40]
  100175dac  bl      _objc_msgSend                            ; [self addTo:[NSMutableSet set] charsInString:x3]
  100175db0  ldp     x0, x2, [sp, #0x98]
  100175db4  mov     x1, x19
  100175db8  ldr     x3, [sp, #0x80]
  100175dbc  bl      _objc_msgSend                            ; [self addTo:[NSMutableSet set] charsInString:x3]
  100175dc0  adrp    x8, #0x100416000
  100175dc4  nop
  100175dc8  ldr     x1, [x8, #0xe20]
  100175dcc  adrp    x2, #0x1003c9000
  100175dd0  add     x2, x2, #0x5f0                           ; @"\"
  100175dd4  ldr     x0, [sp, #0xa0]
  100175dd8  bl      _objc_msgSend                            ; [[NSMutableSet set] removeObject:@"\"]
  100175ddc  mov     w27, #2
loc_100175de0:
  100175de0  str     x22, [sp, #0x38]
  100175de4  mov     x0, x20
  100175de8  bl      _objc_release
loc_100175dec:
  100175dec  adrp    x8, #0x100417000
  100175df0  nop
  100175df4  ldr     x1, [x8, #0x9a8]
  100175df8  mov     x22, #0
  100175dfc  mov     x0, x24
  100175e00  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"arg0"] type]
  100175e04  cmp     x0, #2
  100175e08  b.ne    loc_10017600c                            ; if ([[arg1 objectForKey:@"arg0"] type] != 2)
  100175e0c  adrp    x8, #0x10041d000
  100175e10  ldr     x20, [x8, #0xf28]                        ; class NSMutableArray
  100175e14  nop
  100175e18  nop
  100175e1c  ldr     x19, [x8, #0x9a0]
  100175e20  mov     x22, #0
  100175e24  mov     x0, x24
  100175e28  mov     x1, x19
  100175e2c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"arg0"] listItemArray]
  100175e30  mov     x29, x29
  100175e34  bl      _objc_retainAutoreleasedReturnValue
  100175e38  mov     x21, x0
  100175e3c  adrp    x8, #0x100416000
  100175e40  nop
  100175e44  ldr     x1, [x8, #0xe30]
  100175e48  ldr     x22, [sp, #0x38]
  100175e4c  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"arg0"] listItemArray] count]
  100175e50  mov     x2, x0
  100175e54  adrp    x8, #0x10041b000
  100175e58  nop
  100175e5c  ldr     x1, [x8, #0x280]
  100175e60  mov     x0, x20
  100175e64  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[[arg1 objectForKey:@"arg0"] listItemArray] count]]
  100175e68  mov     x29, x29
  100175e6c  bl      _objc_retainAutoreleasedReturnValue
  100175e70  mov     x20, x0
  100175e74  mov     x0, x21
  100175e78  bl      _objc_release
  100175e7c  stp     xzr, xzr, [x29, #-0x68]
  100175e80  stp     xzr, xzr, [x29, #-0x78]
  100175e84  stp     xzr, xzr, [x29, #-0x88]
  100175e88  stp     xzr, xzr, [x29, #-0x98]
  100175e8c  mov     x21, x24
  100175e90  mov     x0, x21
  100175e94  mov     x1, x19
  100175e98  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"arg0"] listItemArray]
  100175e9c  mov     x28, x20
  100175ea0  mov     x20, x27
  100175ea4  stp     x26, x25, [sp, #0x20]
  100175ea8  str     x23, [sp, #0x30]
  100175eac  str     x21, [sp, #0x68]
  100175eb0  mov     x29, x29
  100175eb4  bl      _objc_retainAutoreleasedReturnValue
  100175eb8  str     x0, [sp, #0x90]
  100175ebc  adrp    x8, #0x100416000
  100175ec0  nop
  100175ec4  ldr     x1, [x8, #0xe00]
  100175ec8  str     x1, [sp, #0x88]
  100175ecc  sub     x2, x29, #0x98
  100175ed0  add     x3, sp, #0xa8
  100175ed4  mov     x4, #0x10
  100175ed8  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"arg0"] listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xa8] count:16]
  100175edc  mov     x22, x0
  100175ee0  cbz     x22, loc_100175fc4                       ; if ([[[arg1 objectForKey:@"arg0"] listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xa8] count:16] == 0)
  100175ee4  ldur    x8, [x29, #-0x88]
  100175ee8  ldr     x27, [x8]
  100175eec  adrp    x8, #0x10041d000
  100175ef0  nop
  100175ef4  ldr     x23, [x8, #0xc18]
  100175ef8  adrp    x8, #0x10041d000
  100175efc  nop
  100175f00  ldr     x24, [x8, #0xc98]
  100175f04  adrp    x8, #0x100416000
  100175f08  nop
  100175f0c  ldr     x26, [x8, #0xd90]
  100175f10  sub     x8, x29, #0x98
  100175f14  str     x8, [sp, #0x78]
  100175f18  add     x8, sp, #0xa8
  100175f1c  str     x8, [sp, #0x70]
loc_100175f20:
  100175f20  mov     x21, #0
loc_100175f24:
  100175f24  ldur    x8, [x29, #-0x88]
  100175f28  ldr     x8, [x8]
  100175f2c  cmp     x8, x27
  100175f30  b.eq    loc_100175f3c                            ; if (x8 == x27)
  100175f34  ldr     x0, [sp, #0x90]
  100175f38  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[arg1 objectForKey:@"arg0"] listItemArray])
loc_100175f3c:
  100175f3c  ldur    x8, [x29, #-0x90]
  100175f40  ldr     x2, [x8, x21, lsl #3]
  100175f44  adrp    x8, #0x10041e000
  100175f48  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100175f4c  mov     x1, x23
  100175f50  bl      _objc_msgSend                            ; [TAGTypes valueToString:x2]
  100175f54  mov     x29, x29
  100175f58  bl      _objc_retainAutoreleasedReturnValue
  100175f5c  mov     x19, x0
  100175f60  ldp     x0, x4, [sp, #0x98]
  100175f64  mov     x1, x24
  100175f68  mov     x2, x19
  100175f6c  mov     x3, x20
  100175f70  bl      _objc_msgSend                            ; [self escape:[TAGTypes valueToString:x2] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]]
  100175f74  mov     x29, x29
  100175f78  bl      _objc_retainAutoreleasedReturnValue
  100175f7c  mov     x25, x0
  100175f80  mov     x0, x28
  100175f84  mov     x1, x26
  100175f88  mov     x2, x25
  100175f8c  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[[arg1 objectForKey:@"arg0"] listItemArray] count]] addObject:[self escape:[TAGTypes valueToString:x2] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]]]
  100175f90  mov     x0, x25
  100175f94  bl      _objc_release
  100175f98  mov     x0, x19
  100175f9c  bl      _objc_release
  100175fa0  add     x21, x21, #1
  100175fa4  cmp     x21, x22
  100175fa8  b.lo    loc_100175f24                            ; if ((x21 + 1) <u [[[arg1 objectForKey:@"arg0"] listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xa8] count:16])
  100175fac  mov     x4, #0x10
  100175fb0  ldp     x1, x0, [sp, #0x88]
  100175fb4  ldp     x3, x2, [sp, #0x70]
  100175fb8  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"arg0"] listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xa8] count:16]
  100175fbc  mov     x22, x0
  100175fc0  cbnz    x22, loc_100175f20                       ; if ([[[arg1 objectForKey:@"arg0"] listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xa8] count:16] != 0)
loc_100175fc4:
  100175fc4  ldr     x0, [sp, #0x90]
  100175fc8  bl      _objc_release
  100175fcc  adrp    x8, #0x10041c000
  100175fd0  nop
  100175fd4  ldr     x1, [x8, #0x1e8]
  100175fd8  mov     x20, x28
  100175fdc  mov     x0, x20
  100175fe0  ldp     x22, x2, [sp, #0x38]
  100175fe4  ldr     x21, [sp, #0x68]
  100175fe8  ldp     x25, x23, [sp, #0x28]
  100175fec  ldr     x26, [sp, #0x20]
  100175ff0  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[[arg1 objectForKey:@"arg0"] listItemArray] count]] componentsJoinedByString:x2]
  100175ff4  mov     x24, x21
  100175ff8  mov     x29, x29
  100175ffc  bl      _objc_retainAutoreleasedReturnValue
  100176000  mov     x22, x0
  100176004  mov     x0, x20
  100176008  b       loc_100176364
loc_10017600c:
  10017600c  cmp     x0, #3
  100176010  b.ne    loc_10017630c                            ; if ([[arg1 objectForKey:@"arg0"] type] != 3)
  100176014  adrp    x8, #0x10041d000
  100176018  ldr     x20, [x8, #0xf28]                        ; class NSMutableArray
  10017601c  nop
  100176020  nop
  100176024  ldr     x1, [x8, #0xa78]
  100176028  str     x1, [sp, #0x78]
  10017602c  mov     x22, #0
  100176030  mov     x0, x24
  100176034  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"arg0"] mapKeyArray]
  100176038  mov     x29, x29
  10017603c  bl      _objc_retainAutoreleasedReturnValue
  100176040  mov     x19, x0
  100176044  adrp    x8, #0x100416000
  100176048  nop
  10017604c  ldr     x1, [x8, #0xe30]
  100176050  str     x1, [sp, #0x70]
  100176054  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"arg0"] mapKeyArray] count]
  100176058  mov     x2, x0
  10017605c  adrp    x8, #0x10041b000
  100176060  nop
  100176064  ldr     x1, [x8, #0x280]
  100176068  mov     x0, x20
  10017606c  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[[arg1 objectForKey:@"arg0"] mapKeyArray] count]]
  100176070  stp     x26, x25, [sp, #0x20]
  100176074  str     x23, [sp, #0x30]
  100176078  mov     x29, x29
  10017607c  bl      _objc_retainAutoreleasedReturnValue
  100176080  mov     x25, x0
  100176084  str     x25, [sp, #0x50]
  100176088  mov     x0, x19
  10017608c  bl      _objc_release
  100176090  mov     x26, #0
  100176094  adrp    x8, #0x100416000
  100176098  nop
  10017609c  ldr     x8, [x8, #0xc30]
  1001760a0  str     x8, [sp, #0x90]
  1001760a4  adrp    x8, #0x10041d000
  1001760a8  nop
  1001760ac  ldr     x8, [x8, #0xc18]
  1001760b0  str     x8, [sp, #0x88]
  1001760b4  adrp    x8, #0x10041d000
  1001760b8  nop
  1001760bc  ldr     x8, [x8, #0xa70]
  1001760c0  str     x8, [sp, #0x60]
  1001760c4  adrp    x8, #0x10041d000
  1001760c8  nop
  1001760cc  ldr     x28, [x8, #0xc98]
  1001760d0  adrp    x8, #0x100417000
  1001760d4  nop
  1001760d8  ldr     x8, [x8, #0xc0]
  1001760dc  str     x8, [sp, #0x58]
  1001760e0  adrp    x8, #0x10041c000
  1001760e4  nop
  1001760e8  ldr     x8, [x8, #0x1e8]
  1001760ec  str     x8, [sp, #0x68]
  1001760f0  adrp    x8, #0x100416000
  1001760f4  nop
  1001760f8  ldr     x8, [x8, #0xd90]
  1001760fc  str     x8, [sp, #0x48]
  100176100  b       loc_100176128
loc_100176104:
  100176104  mov     x0, x21
  100176108  bl      _objc_release
  10017610c  mov     x0, x19
  100176110  bl      _objc_release
  100176114  mov     x0, x23
  100176118  bl      _objc_release
  10017611c  mov     x0, x22
  100176120  bl      _objc_release
  100176124  add     x26, x26, #1
loc_100176128:
  100176128  mov     x0, x24
  10017612c  ldr     x20, [sp, #0x78]
  100176130  mov     x1, x20
  100176134  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"arg0"] mapKeyArray]
  100176138  mov     x29, x29
  10017613c  bl      _objc_retainAutoreleasedReturnValue
  100176140  mov     x19, x0
  100176144  ldr     x1, [sp, #0x70]
  100176148  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"arg0"] mapKeyArray] count]
  10017614c  mov     x21, x0
  100176150  mov     x0, x19
  100176154  bl      _objc_release
  100176158  cmp     x26, x21
  10017615c  b.hs    loc_10017636c                            ; if (x26 >=u [[[arg1 objectForKey:@"arg0"] mapKeyArray] count])
  100176160  adrp    x8, #0x10041e000
  100176164  ldr     x19, [x8, #0xb58]                        ; class TAGTypes
  100176168  mov     x0, x24
  10017616c  mov     x1, x20
  100176170  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"arg0"] mapKeyArray]
  100176174  mov     x29, x29
  100176178  bl      _objc_retainAutoreleasedReturnValue
  10017617c  mov     x21, x0
  100176180  ldr     x1, [sp, #0x90]
  100176184  mov     x2, x26
  100176188  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"arg0"] mapKeyArray] objectAtIndex:x2]
  10017618c  mov     x29, x29
  100176190  bl      _objc_retainAutoreleasedReturnValue
  100176194  mov     x23, x0
  100176198  mov     x0, x19
  10017619c  ldr     x1, [sp, #0x88]
  1001761a0  mov     x2, x23
  1001761a4  bl      _objc_msgSend                            ; [TAGTypes valueToString:[[[arg1 objectForKey:@"arg0"] mapKeyArray] objectAtIndex:x2]]
  1001761a8  mov     x29, x29
  1001761ac  bl      _objc_retainAutoreleasedReturnValue
  1001761b0  mov     x22, x0
  1001761b4  mov     x0, x23
  1001761b8  bl      _objc_release
  1001761bc  mov     x0, x21
  1001761c0  bl      _objc_release
  1001761c4  adrp    x8, #0x10041e000
  1001761c8  ldr     x19, [x8, #0xb58]                        ; class TAGTypes
  1001761cc  mov     x0, x24
  1001761d0  ldr     x1, [sp, #0x60]
  1001761d4  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"arg0"] mapValueArray]
  1001761d8  mov     x20, x24
  1001761dc  mov     x25, x27
  1001761e0  mov     x29, x29
  1001761e4  bl      _objc_retainAutoreleasedReturnValue
  1001761e8  mov     x21, x0
  1001761ec  ldr     x1, [sp, #0x90]
  1001761f0  mov     x2, x26
  1001761f4  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"arg0"] mapValueArray] objectAtIndex:x2]
  1001761f8  mov     x29, x29
  1001761fc  bl      _objc_retainAutoreleasedReturnValue
  100176200  mov     x24, x0
  100176204  mov     x0, x19
  100176208  ldr     x1, [sp, #0x88]
  10017620c  mov     x2, x24
  100176210  bl      _objc_msgSend                            ; [TAGTypes valueToString:[[[arg1 objectForKey:@"arg0"] mapValueArray] objectAtIndex:x2]]
  100176214  mov     x29, x29
  100176218  bl      _objc_retainAutoreleasedReturnValue
  10017621c  mov     x23, x0
  100176220  mov     x0, x24
  100176224  bl      _objc_release
  100176228  mov     x0, x21
  10017622c  bl      _objc_release
  100176230  adrp    x8, #0x10041d000
  100176234  ldr     x19, [x8, #0xf20]                        ; class NSArray
  100176238  ldp     x27, x24, [sp, #0x98]
  10017623c  mov     x0, x27
  100176240  mov     x1, x28
  100176244  mov     x2, x22
  100176248  mov     x3, x25
  10017624c  mov     x4, x24
  100176250  bl      _objc_msgSend                            ; [self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"arg0"] mapKeyArray] objectAtIndex:x2]] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]]
  100176254  mov     x29, x29
  100176258  bl      _objc_retainAutoreleasedReturnValue
  10017625c  mov     x21, x0
  100176260  mov     x0, x27
  100176264  mov     x1, x28
  100176268  mov     x2, x23
  10017626c  mov     x3, x25
  100176270  mov     x4, x24
  100176274  bl      _objc_msgSend                            ; [self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"arg0"] mapValueArray] objectAtIndex:x2]] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]]
  100176278  mov     x27, x25
  10017627c  mov     x29, x29
  100176280  bl      _objc_retainAutoreleasedReturnValue
  100176284  mov     x24, x0
  100176288  stp     x24, xzr, [sp]
  10017628c  mov     x0, x19
  100176290  ldr     x1, [sp, #0x58]
  100176294  mov     x2, x21
  100176298  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:[self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"arg0"] mapKeyArray] objectAtIndex:x2]] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]], [self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"…, nil]
  10017629c  mov     x29, x29
  1001762a0  bl      _objc_retainAutoreleasedReturnValue
  1001762a4  mov     x19, x0
  1001762a8  mov     x0, x24
  1001762ac  bl      _objc_release
  1001762b0  mov     x0, x21
  1001762b4  bl      _objc_release
  1001762b8  mov     x0, x19
  1001762bc  ldr     x1, [sp, #0x68]
  1001762c0  ldr     x2, [sp, #0x80]
  1001762c4  ldr     x25, [sp, #0x50]
  1001762c8  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:[self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"arg0"] mapKeyArray] objectAtIndex:x2]] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]], [self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"…, nil] componentsJoinedByString:x2]
  1001762cc  mov     x29, x29
  1001762d0  bl      _objc_retainAutoreleasedReturnValue
  1001762d4  mov     x21, x0
  1001762d8  mov     x0, x25
  1001762dc  ldr     x1, [sp, #0x48]
  1001762e0  mov     x2, x21
  1001762e4  mov     x24, x20
  1001762e8  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[[arg1 objectForKey:@"arg0"] mapKeyArray] count]] addObject:[[NSArray arrayWithObjects:[self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"arg0"] mapKeyArray] objectAtIndex:x2]] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]], [self escape:[TAGTypes valueToString:[[[arg1 objectForKey:@"…, nil] componentsJoinedByString:x2]]
  1001762ec  b       loc_100176104
  1001762f0  mov     x25, x24
  1001762f4  ldr     x8, [sp, #0x38]
  1001762f8  mov     x20, x8
  1001762fc  mov     x26, x0
  100176300  mov     x0, x21
  100176304  bl      _objc_release
  100176308  b       loc_100176690
loc_10017630c:
  10017630c  adrp    x8, #0x10041e000
  100176310  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100176314  adrp    x8, #0x10041d000
  100176318  nop
  10017631c  ldr     x1, [x8, #0xc18]
  100176320  mov     x22, #0
  100176324  mov     x2, x24
  100176328  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"arg0"]]
  10017632c  mov     x29, x29
  100176330  bl      _objc_retainAutoreleasedReturnValue
  100176334  mov     x19, x0
  100176338  adrp    x8, #0x10041d000
  10017633c  nop
  100176340  ldr     x1, [x8, #0xc98]
  100176344  ldp     x0, x4, [sp, #0x98]
  100176348  mov     x2, x19
  10017634c  mov     x3, x27
  100176350  bl      _objc_msgSend                            ; [self escape:[TAGTypes valueToString:[arg1 objectForKey:@"arg0"]] escapeType:one of {0, 1, 2} charsToBackslashEscape:[NSMutableSet set]]
  100176354  mov     x29, x29
  100176358  bl      _objc_retainAutoreleasedReturnValue
  10017635c  mov     x22, x0
  100176360  mov     x0, x19
loc_100176364:
  100176364  bl      _objc_release
  100176368  b       loc_100176398
loc_10017636c:
  10017636c  mov     x0, x25
  100176370  ldr     x1, [sp, #0x68]
  100176374  ldr     x2, [sp, #0x40]
  100176378  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[[arg1 objectForKey:@"arg0"] mapKeyArray] count]] componentsJoinedByString:x2]
  10017637c  mov     x29, x29
  100176380  bl      _objc_retainAutoreleasedReturnValue
  100176384  mov     x22, x0
  100176388  mov     x0, x25
  10017638c  bl      _objc_release
  100176390  ldp     x25, x23, [sp, #0x28]
  100176394  ldr     x26, [sp, #0x20]
loc_100176398:
  100176398  adrp    x8, #0x10041e000
  10017639c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  1001763a0  adrp    x8, #0x10041d000
  1001763a4  nop
  1001763a8  ldr     x1, [x8, #0xc30]
  1001763ac  mov     x2, x22
  1001763b0  bl      _objc_msgSend                            ; [TAGTypes objectToValue:x2]
  1001763b4  mov     x29, x29
  1001763b8  bl      _objc_retainAutoreleasedReturnValue
  1001763bc  mov     x19, x0
  1001763c0  mov     x0, x22
  1001763c4  bl      _objc_release
  1001763c8  ldr     x22, [sp, #0x38]
loc_1001763cc:
  1001763cc  mov     x0, x26
  1001763d0  bl      _objc_release
  1001763d4  ldr     x0, [sp, #0xa0]
  1001763d8  bl      _objc_release
  1001763dc  ldr     x0, [sp, #0x80]
  1001763e0  bl      _objc_release
  1001763e4  mov     x0, x25
  1001763e8  bl      _objc_release
  1001763ec  ldr     x0, [sp, #0x40]
  1001763f0  bl      _objc_release
  1001763f4  mov     x0, x23
  1001763f8  bl      _objc_release
  1001763fc  mov     x0, x24
  100176400  bl      _objc_release
  100176404  mov     x0, x22
  100176408  bl      _objc_release
  10017640c  adrp    x8, #0x1003b0000
  100176410  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100176414  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100176418  ldur    x9, [x29, #-0x58]
  10017641c  sub     x8, x8, x9
  100176420  cbnz    x8, loc_100176448                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100176424  mov     x0, x19
  100176428  sub     sp, x29, #0x50
  10017642c  ldp     x28, x27, [sp], #0x10
  100176430  ldp     x26, x25, [sp], #0x10
  100176434  ldp     x24, x23, [sp], #0x10
  100176438  ldp     x22, x21, [sp], #0x10
  10017643c  ldp     x20, x19, [sp], #0x10
  100176440  ldp     x29, x30, [sp], #0x10
  100176444  b       _objc_autoreleaseReturnValue
loc_100176448:
  100176448  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10017644c:
  10017644c  adrp    x8, #0x10041e000
  100176450  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100176454  adrp    x8, #0x10041b000
  100176458  nop
  10017645c  ldr     x1, [x8, #0xdd0]
  100176460  adrp    x2, #0x1003c9000
  100176464  add     x2, x2, #0x610                           ; @"Joiner: unsupported escape type"
  100176468  bl      _objc_msgSend                            ; [TAGLog error:@"Joiner: unsupported escape type"]
  10017646c  ldr     x0, [x21, #0xb58]                        ; class TAGTypes
  100176470  adrp    x8, #0x10041c000
  100176474  nop
  100176478  ldr     x1, [x8, #0xa98]
  10017647c  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100176480  mov     x29, x29
  100176484  bl      _objc_retainAutoreleasedReturnValue
  100176488  mov     x19, x0
  10017648c  mov     x0, x20
  100176490  bl      _objc_release
  100176494  b       loc_1001763cc
  100176498  b       loc_10017651c
  10017649c  mov     x26, x0
  1001764a0  b       loc_1001764b0
  1001764a4  mov     x26, x0
  1001764a8  mov     x0, x25
  1001764ac  bl      _objc_release
loc_1001764b0:
  1001764b0  ldp     x23, x22, [sp, #0x30]
  1001764b4  mov     x0, x19
  1001764b8  bl      _objc_release
  1001764bc  b       loc_100176524
  1001764c0  mov     x26, x0
  1001764c4  b       loc_10017657c
  1001764c8  mov     x26, x0
  1001764cc  b       loc_100176574
  1001764d0  mov     x26, x0
  1001764d4  b       loc_100176568
  1001764d8  mov     x26, x0
  1001764dc  b       loc_100176560
  1001764e0  mov     x26, x0
  1001764e4  b       loc_100176558
  1001764e8  mov     x26, x0
  1001764ec  b       loc_100176550
  1001764f0  mov     x26, x0
  1001764f4  b       loc_100176548
  1001764f8  str     x26, [sp, #0x20]
  1001764fc  mov     x26, x0
  100176500  b       loc_100176540
  100176504  str     x26, [sp, #0x20]
  100176508  mov     x26, x0
  10017650c  mov     x0, x21
  100176510  bl      _objc_release
  100176514  b       loc_100176540
  100176518  b       loc_10017651c
loc_10017651c:
  10017651c  mov     x26, x0
  100176520  ldp     x23, x22, [sp, #0x30]
loc_100176524:
  100176524  ldr     x25, [sp, #0x28]
  100176528  ldr     x0, [sp, #0x90]
  10017652c  bl      _objc_release
  100176530  ldr     x24, [sp, #0x68]
  100176534  mov     x20, x28
loc_100176538:
  100176538  mov     x0, x20
  10017653c  bl      _objc_release
loc_100176540:
  100176540  ldr     x0, [sp, #0x20]
  100176544  bl      _objc_release
loc_100176548:
  100176548  ldr     x0, [sp, #0xa0]
  10017654c  bl      _objc_release
loc_100176550:
  100176550  ldr     x0, [sp, #0x80]
  100176554  bl      _objc_release
loc_100176558:
  100176558  mov     x0, x25
  10017655c  bl      _objc_release
loc_100176560:
  100176560  ldr     x0, [sp, #0x40]
  100176564  bl      _objc_release
loc_100176568:
  100176568  mov     x0, x23
  10017656c  bl      _objc_release
  100176570  mov     x21, x24
loc_100176574:
  100176574  mov     x0, x21
  100176578  bl      _objc_release
loc_10017657c:
  10017657c  mov     x0, x22
  100176580  bl      _objc_release
  100176584  mov     x0, x26
  100176588  bl      __Unwind_Resume                          ; Unwind_Resume()
  10017658c  mov     x24, x21
  100176590  b       loc_100176700
  100176594  b       loc_1001766ac
  100176598  str     x25, [sp, #0x50]
  10017659c  mov     x25, x24
  1001765a0  ldr     x8, [sp, #0x38]
  1001765a4  mov     x20, x8
  1001765a8  mov     x26, x0
  1001765ac  mov     x0, x19
  1001765b0  b       loc_1001766a4
  1001765b4  b       loc_1001766bc
  1001765b8  str     x25, [sp, #0x50]
  1001765bc  mov     x25, x24
  1001765c0  ldr     x8, [sp, #0x38]
  1001765c4  mov     x20, x8
  1001765c8  mov     x26, x0
  1001765cc  b       loc_1001765e8
  1001765d0  mov     x25, x24
  1001765d4  ldr     x8, [sp, #0x38]
  1001765d8  mov     x20, x8
  1001765dc  mov     x26, x0
  1001765e0  mov     x0, x23
  1001765e4  bl      _objc_release
loc_1001765e8:
  1001765e8  mov     x0, x21
  1001765ec  b       loc_1001766a4
  1001765f0  mov     x25, x24
  1001765f4  ldr     x8, [sp, #0x38]
  1001765f8  mov     x20, x8
  1001765fc  mov     x26, x0
  100176600  b       loc_1001766a0
  100176604  mov     x25, x20
  100176608  ldr     x8, [sp, #0x38]
  10017660c  mov     x20, x8
  100176610  mov     x26, x0
  100176614  b       loc_100176630
  100176618  mov     x25, x20
  10017661c  ldr     x8, [sp, #0x38]
  100176620  mov     x20, x8
  100176624  mov     x26, x0
  100176628  mov     x0, x24
  10017662c  bl      _objc_release
loc_100176630:
  100176630  mov     x0, x21
  100176634  b       loc_10017669c
  100176638  mov     x25, x20
  10017663c  ldr     x8, [sp, #0x38]
  100176640  mov     x20, x8
  100176644  mov     x26, x0
  100176648  b       loc_100176698
  10017664c  mov     x25, x20
  100176650  ldr     x8, [sp, #0x38]
  100176654  mov     x20, x8
  100176658  mov     x26, x0
  10017665c  b       loc_100176678
  100176660  mov     x25, x20
  100176664  ldr     x8, [sp, #0x38]
  100176668  mov     x20, x8
  10017666c  mov     x26, x0
  100176670  mov     x0, x24
  100176674  bl      _objc_release
loc_100176678:
  100176678  mov     x0, x21
  10017667c  b       loc_100176694
  100176680  mov     x25, x20
  100176684  ldr     x8, [sp, #0x38]
  100176688  mov     x20, x8
  10017668c  mov     x26, x0
loc_100176690:
  100176690  mov     x0, x19
loc_100176694:
  100176694  bl      _objc_release
loc_100176698:
  100176698  mov     x0, x23
loc_10017669c:
  10017669c  bl      _objc_release
loc_1001766a0:
  1001766a0  mov     x0, x22
loc_1001766a4:
  1001766a4  bl      _objc_release
  1001766a8  b       loc_1001766d0
loc_1001766ac:
  1001766ac  str     x26, [sp, #0x20]
  1001766b0  mov     x26, x0
  1001766b4  mov     x0, x19
  1001766b8  b       loc_1001766f4
loc_1001766bc:
  1001766bc  str     x25, [sp, #0x50]
  1001766c0  mov     x25, x24
  1001766c4  ldr     x8, [sp, #0x38]
  1001766c8  mov     x20, x8
  1001766cc  mov     x26, x0
loc_1001766d0:
  1001766d0  ldr     x0, [sp, #0x50]
  1001766d4  bl      _objc_release
  1001766d8  mov     x22, x20
  1001766dc  mov     x24, x25
  1001766e0  ldp     x25, x23, [sp, #0x28]
  1001766e4  b       loc_100176540
  1001766e8  str     x26, [sp, #0x20]
  1001766ec  mov     x26, x0
  1001766f0  mov     x0, x22
loc_1001766f4:
  1001766f4  bl      _objc_release
  1001766f8  ldr     x22, [sp, #0x38]
  1001766fc  b       loc_100176540
loc_100176700:
  100176700  str     x26, [sp, #0x20]
  100176704  mov     x26, x0
  100176708  b       loc_100176538

; ======================================================================
; -[TAGJoinerMacro addTo:charsInString:]
; address 0x10017670c  size 260  kind objc
; ======================================================================
  10017670c  stp     x29, x30, [sp, #-0x10]!
  100176710  mov     x29, sp
  100176714  stp     x20, x19, [sp, #-0x10]!
  100176718  stp     x22, x21, [sp, #-0x10]!
  10017671c  stp     x24, x23, [sp, #-0x10]!
  100176720  stp     x26, x25, [sp, #-0x10]!
  100176724  mov     x20, x3
  100176728  mov     x0, x2
  10017672c  bl      _objc_retain
  100176730  mov     x19, x0
  100176734  mov     x0, x20
  100176738  bl      _objc_retain
  10017673c  mov     x20, x0
  100176740  mov     x21, #0
  100176744  adrp    x8, #0x100417000
  100176748  nop
  10017674c  ldr     x22, [x8, #0xc58]
  100176750  adrp    x8, #0x10041b000
  100176754  nop
  100176758  ldr     x23, [x8, #0x390]
  10017675c  adrp    x8, #0x100416000
  100176760  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  100176764  ldr     x24, [x8]
  100176768  b       loc_100176778
loc_10017676c:
  10017676c  mov     x0, x25
  100176770  bl      _objc_release
  100176774  add     x21, x21, #1
loc_100176778:
  100176778  mov     x0, x20
  10017677c  mov     x1, x22
  100176780  bl      _objc_msgSend                            ; [arg2 length]
  100176784  cmp     x21, x0
  100176788  b.hs    loc_1001767d0                            ; if (x21 >=u [arg2 length])
  10017678c  mov     x3, #1
  100176790  mov     x0, x20
  100176794  mov     x1, x23
  100176798  mov     x2, x21
  10017679c  bl      _objc_msgSend                            ; [arg2 substringWithRange:x2]
  1001767a0  mov     x29, x29
  1001767a4  bl      _objc_retainAutoreleasedReturnValue
  1001767a8  mov     x25, x0
  1001767ac  mov     x0, x19
  1001767b0  mov     x1, x24
  1001767b4  mov     x2, x25
  1001767b8  bl      _objc_msgSend                            ; [arg1 addObject:[arg2 substringWithRange:x2]]
  1001767bc  b       loc_10017676c
  1001767c0  mov     x21, x0
  1001767c4  mov     x0, x25
  1001767c8  bl      _objc_release
  1001767cc  b       loc_1001767f8
loc_1001767d0:
  1001767d0  mov     x0, x20
  1001767d4  bl      _objc_release
  1001767d8  mov     x0, x19
  1001767dc  ldp     x26, x25, [sp], #0x10
  1001767e0  ldp     x24, x23, [sp], #0x10
  1001767e4  ldp     x22, x21, [sp], #0x10
  1001767e8  ldp     x20, x19, [sp], #0x10
  1001767ec  ldp     x29, x30, [sp], #0x10
  1001767f0  b       _objc_release
  1001767f4  mov     x21, x0
loc_1001767f8:
  1001767f8  mov     x0, x20
  1001767fc  bl      _objc_release
  100176800  mov     x0, x19
  100176804  bl      _objc_release
  100176808  mov     x0, x21
  10017680c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGJoinerMacro escape:escapeType:charsToBackslashEscape:]
; address 0x100176810  size 712  kind objc
; ======================================================================
  100176810  stp     x29, x30, [sp, #-0x10]!
  100176814  mov     x29, sp
  100176818  stp     x20, x19, [sp, #-0x10]!
  10017681c  stp     x22, x21, [sp, #-0x10]!
  100176820  stp     x24, x23, [sp, #-0x10]!
  100176824  stp     x26, x25, [sp, #-0x10]!
  100176828  stp     x28, x27, [sp, #-0x10]!
  10017682c  sub     sp, sp, #0x100
  100176830  mov     x20, x4
  100176834  mov     x19, x3
  100176838  adrp    x22, #0x1003b0000
  10017683c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100176840  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  100176844  stur    x8, [x29, #-0x58]
  100176848  mov     x0, x2
  10017684c  bl      _objc_retain
  100176850  mov     x23, x0
  100176854  mov     x0, x20
  100176858  bl      _objc_retain
  10017685c  mov     x20, x0
  100176860  cmp     w19, #2
  100176864  b.ne    loc_1001769f4                            ; if (arg2 != 2)
  100176868  adrp    x8, #0x10041b000
  10017686c  nop
  100176870  ldr     x1, [x8, #0x1d8]
  100176874  mov     x0, x23
  100176878  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  10017687c  mov     x21, x0
  100176880  adrp    x8, #0x100417000
  100176884  nop
  100176888  ldr     x22, [x8, #0xc58]
  10017688c  mov     x0, x21
  100176890  mov     x1, x22
  100176894  bl      _objc_msgSend                            ; [[arg1 mutableCopy] length]
  100176898  mov     x6, x0
  10017689c  adrp    x8, #0x10041d000
  1001768a0  nop
  1001768a4  ldr     x24, [x8, #0xca0]
  1001768a8  mov     x4, #0
  1001768ac  mov     x5, #0
  1001768b0  adrp    x2, #0x1003c9000
  1001768b4  add     x2, x2, #0x5f0                           ; @"\"
  1001768b8  adrp    x3, #0x1003c7000
  1001768bc  add     x3, x3, #0x2d0                           ; @"\\"
  1001768c0  mov     x0, x21
  1001768c4  mov     x1, x24
  1001768c8  bl      _objc_msgSend                            ; [[arg1 mutableCopy] replaceOccurrencesOfString:@"\" withString:@"\\" options:0 range:0]
  1001768cc  str     x23, [sp, #0x10]
  1001768d0  stp     xzr, xzr, [x29, #-0x68]
  1001768d4  stp     xzr, xzr, [x29, #-0x78]
  1001768d8  stp     xzr, xzr, [x29, #-0x88]
  1001768dc  stp     xzr, xzr, [x29, #-0x98]
  1001768e0  mov     x0, x20
  1001768e4  str     x20, [sp, #8]
  1001768e8  bl      _objc_retain
  1001768ec  str     x0, [sp, #0x30]
  1001768f0  adrp    x8, #0x100416000
  1001768f4  nop
  1001768f8  ldr     x1, [x8, #0xe00]
  1001768fc  str     x1, [sp, #0x28]
  100176900  sub     x2, x29, #0x98
  100176904  add     x3, sp, #0x38
  100176908  mov     x4, #0x10
  10017690c  bl      _objc_msgSend                            ; [arg3 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  100176910  mov     x26, x0
  100176914  cbz     x26, loc_1001769dc                       ; if ([arg3 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  100176918  ldur    x8, [x29, #-0x88]
  10017691c  adrp    x9, #0x10041a000
  100176920  add     x9, x9, #0x620                           ; &@selector(stringByAppendingString:)
  100176924  ldr     x23, [x8]
  100176928  ldr     x27, [x9]
  10017692c  sub     x8, x29, #0x98
  100176930  str     x8, [sp, #0x20]
  100176934  add     x8, sp, #0x38
  100176938  str     x8, [sp, #0x18]
loc_10017693c:
  10017693c  mov     x28, #0
loc_100176940:
  100176940  ldur    x8, [x29, #-0x88]
  100176944  ldr     x8, [x8]
  100176948  cmp     x8, x23
  10017694c  b.eq    loc_100176958                            ; if (x8 == x23)
  100176950  ldr     x0, [sp, #0x30]
  100176954  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg3)
loc_100176958:
  100176958  ldur    x8, [x29, #-0x90]
  10017695c  ldr     x25, [x8, x28, lsl #3]
  100176960  mov     x0, x21
  100176964  mov     x1, x22
  100176968  bl      _objc_msgSend                            ; [[arg1 mutableCopy] length]
  10017696c  mov     x20, x0
  100176970  adrp    x0, #0x1003c9000
  100176974  add     x0, x0, #0x5f0                           ; @"\"
  100176978  mov     x1, x27
  10017697c  mov     x2, x25
  100176980  bl      _objc_msgSend                            ; [@"\" stringByAppendingString:x2]
  100176984  mov     x29, x29
  100176988  bl      _objc_retainAutoreleasedReturnValue
  10017698c  mov     x19, x0
  100176990  mov     x4, #0
  100176994  mov     x5, #0
  100176998  mov     x0, x21
  10017699c  mov     x1, x24
  1001769a0  mov     x2, x25
  1001769a4  mov     x3, x19
  1001769a8  mov     x6, x20
  1001769ac  bl      _objc_msgSend                            ; [[arg1 mutableCopy] replaceOccurrencesOfString:x2 withString:[@"\" stringByAppendingString:x2] options:0 range:0]
  1001769b0  mov     x0, x19
  1001769b4  bl      _objc_release
  1001769b8  add     x28, x28, #1
  1001769bc  cmp     x28, x26
  1001769c0  b.lo    loc_100176940                            ; if ((x28 + 1) <u [arg3 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  1001769c4  mov     x4, #0x10
  1001769c8  ldp     x1, x0, [sp, #0x28]
  1001769cc  ldp     x3, x2, [sp, #0x18]
  1001769d0  bl      _objc_msgSend                            ; [arg3 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  1001769d4  mov     x26, x0
  1001769d8  cbnz    x26, loc_10017693c                       ; if ([arg3 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_1001769dc:
  1001769dc  ldr     x0, [sp, #0x30]
  1001769e0  bl      _objc_release
  1001769e4  ldp     x20, x23, [sp, #8]
  1001769e8  adrp    x22, #0x1003b0000
  1001769ec  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1001769f0  b       loc_100176a30
loc_1001769f4:
  1001769f4  cmp     w19, #1
  1001769f8  b.ne    loc_100176a24                            ; if (arg2 != 1)
  1001769fc  adrp    x8, #0x10041e000
  100176a00  ldr     x0, [x8, #0x540]                         ; class TAGValueEscapeUtil
  100176a04  adrp    x8, #0x10041b000
  100176a08  nop
  100176a0c  ldr     x1, [x8, #0xb58]
  100176a10  mov     x2, x23
  100176a14  bl      _objc_msgSend                            ; [TAGValueEscapeUtil urlEncode:arg1]
  100176a18  mov     x29, x29
  100176a1c  bl      _objc_retainAutoreleasedReturnValue
  100176a20  b       loc_100176a2c
loc_100176a24:
  100176a24  mov     x0, x23
  100176a28  bl      _objc_retain
loc_100176a2c:
  100176a2c  mov     x21, x0
loc_100176a30:
  100176a30  mov     x0, x20
  100176a34  bl      _objc_release
  100176a38  mov     x0, x23
  100176a3c  bl      _objc_release
  100176a40  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  100176a44  ldur    x9, [x29, #-0x58]
  100176a48  sub     x8, x8, x9
  100176a4c  cbnz    x8, loc_100176a74                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100176a50  mov     x0, x21
  100176a54  sub     sp, x29, #0x50
  100176a58  ldp     x28, x27, [sp], #0x10
  100176a5c  ldp     x26, x25, [sp], #0x10
  100176a60  ldp     x24, x23, [sp], #0x10
  100176a64  ldp     x22, x21, [sp], #0x10
  100176a68  ldp     x20, x19, [sp], #0x10
  100176a6c  ldp     x29, x30, [sp], #0x10
  100176a70  b       _objc_autoreleaseReturnValue
loc_100176a74:
  100176a74  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100176a78:
  100176a78  mov     x20, x0
  100176a7c  b       loc_100176a8c
  100176a80  mov     x20, x0
  100176a84  mov     x0, x19
  100176a88  bl      _objc_release
loc_100176a8c:
  100176a8c  ldr     x0, [sp, #0x30]
  100176a90  bl      _objc_release
  100176a94  ldr     x23, [sp, #0x10]
loc_100176a98:
  100176a98  mov     x0, x21
  100176a9c  bl      _objc_release
loc_100176aa0:
  100176aa0  ldr     x0, [sp, #8]
  100176aa4  bl      _objc_release
  100176aa8  mov     x0, x23
  100176aac  bl      _objc_release
  100176ab0  mov     x0, x20
  100176ab4  bl      __Unwind_Resume                          ; Unwind_Resume()
  100176ab8  str     x20, [sp, #8]
  100176abc  mov     x20, x0
  100176ac0  b       loc_100176a98
  100176ac4  b       loc_100176a78
  100176ac8  b       loc_100176a78
  100176acc  str     x20, [sp, #8]
  100176ad0  mov     x20, x0
  100176ad4  b       loc_100176aa0
