// unit TAGDataLayerMacro — 8 functions
//   0x100173ba4      44  +[TAGDataLayerMacro functionId]
//   0x100173bd0     248  -[TAGDataLayerMacro initWithDataLayer:]
//   0x100173cc8      44  +[TAGDataLayerMacro nameKey]
//   0x100173cf4      44  +[TAGDataLayerMacro defaultValueKey]
//   0x100173d20       8  -[TAGDataLayerMacro isCacheable]
//   0x100173d28     532  -[TAGDataLayerMacro evaluate:]
//   0x100173f3c      16  -[TAGDataLayerMacro dataLayer]
//   0x100173f4c      20  -[TAGDataLayerMacro .cxx_destruct]

; ======================================================================
; +[TAGDataLayerMacro functionId]
; address 0x100173ba4  size 44  kind objc
; ======================================================================
  100173ba4  stp     x29, x30, [sp, #-0x10]!
  100173ba8  mov     x29, sp
  100173bac  stp     x20, x19, [sp, #-0x10]!
  100173bb0  adrp    x19, #0x1003c9000
  100173bb4  add     x19, x19, #0x1d0                         ; @"_v"
  100173bb8  mov     x0, x19
  100173bbc  bl      _objc_retainAutorelease
  100173bc0  mov     x0, x19
  100173bc4  ldp     x20, x19, [sp], #0x10
  100173bc8  ldp     x29, x30, [sp], #0x10
  100173bcc  ret

; ======================================================================
; -[TAGDataLayerMacro initWithDataLayer:]
; address 0x100173bd0  size 248  kind objc
; ======================================================================
  100173bd0  stp     x29, x30, [sp, #-0x10]!
  100173bd4  mov     x29, sp
  100173bd8  stp     x20, x19, [sp, #-0x10]!
  100173bdc  stp     x22, x21, [sp, #-0x10]!
  100173be0  sub     sp, sp, #0x10
  100173be4  mov     x20, x0
  100173be8  mov     x0, x2
  100173bec  bl      _objc_retain
  100173bf0  mov     x19, x0
  100173bf4  adrp    x8, #0x10041e000
  100173bf8  ldr     x0, [x8, #0x550]                         ; class NSSet
  100173bfc  adrp    x8, #0x10041b000
  100173c00  nop
  100173c04  ldr     x1, [x8, #0x7e0]
  100173c08  adrp    x2, #0x1003b9000
  100173c0c  add     x2, x2, #0xdb0                           ; @"name"
  100173c10  bl      _objc_msgSend                            ; [NSSet setWithObject:@"name"]
  100173c14  mov     x29, x29
  100173c18  bl      _objc_retainAutoreleasedReturnValue
  100173c1c  mov     x21, x0
  100173c20  str     x20, [sp]
  100173c24  adrp    x8, #0x10041f000
  100173c28  ldr     x8, [x8, #0x370]
  100173c2c  str     x8, [sp, #8]
  100173c30  adrp    x8, #0x10041d000
  100173c34  nop
  100173c38  ldr     x1, [x8, #0xc10]
  100173c3c  adrp    x2, #0x1003c9000
  100173c40  add     x2, x2, #0x1d0                           ; @"_v"
  100173c44  mov     x0, sp
  100173c48  mov     x3, x21
  100173c4c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_v" requiredKeys:[NSSet setWithObject:@"name"]]
  100173c50  mov     x20, x0
  100173c54  mov     x0, x21
  100173c58  bl      _objc_release
  100173c5c  cbz     x20, loc_100173c80                       ; if (self == 0)
  100173c60  adrp    x8, #0x100420000
  100173c64  ldrsw   x21, [x8, #0xc20]                        ; ivar offset TAGDataLayerMacro._dataLayer (+0x8)
  100173c68  mov     x0, x19
  100173c6c  bl      _objc_retain
  100173c70  ldr     x8, [x20, x21]                           ; x8 = self->_dataLayer
  100173c74  str     x0, [x20, x21]                           ; self->_dataLayer = arg1
  100173c78  mov     x0, x8
  100173c7c  bl      _objc_release
loc_100173c80:
  100173c80  mov     x0, x19
  100173c84  bl      _objc_release
  100173c88  mov     x0, x20
  100173c8c  sub     sp, x29, #0x20
  100173c90  ldp     x22, x21, [sp], #0x10
  100173c94  ldp     x20, x19, [sp], #0x10
  100173c98  ldp     x29, x30, [sp], #0x10
  100173c9c  ret
  100173ca0  mov     x22, x0
  100173ca4  mov     x0, x20
  100173ca8  b       loc_100173cb4
  100173cac  mov     x22, x0
  100173cb0  mov     x0, x21
loc_100173cb4:
  100173cb4  bl      _objc_release
  100173cb8  mov     x0, x19
  100173cbc  bl      _objc_release
  100173cc0  mov     x0, x22
  100173cc4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGDataLayerMacro nameKey]
; address 0x100173cc8  size 44  kind objc
; ======================================================================
  100173cc8  stp     x29, x30, [sp, #-0x10]!
  100173ccc  mov     x29, sp
  100173cd0  stp     x20, x19, [sp, #-0x10]!
  100173cd4  adrp    x19, #0x1003b9000
  100173cd8  add     x19, x19, #0xdb0                         ; @"name"
  100173cdc  mov     x0, x19
  100173ce0  bl      _objc_retainAutorelease
  100173ce4  mov     x0, x19
  100173ce8  ldp     x20, x19, [sp], #0x10
  100173cec  ldp     x29, x30, [sp], #0x10
  100173cf0  ret

; ======================================================================
; +[TAGDataLayerMacro defaultValueKey]
; address 0x100173cf4  size 44  kind objc
; ======================================================================
  100173cf4  stp     x29, x30, [sp, #-0x10]!
  100173cf8  mov     x29, sp
  100173cfc  stp     x20, x19, [sp, #-0x10]!
  100173d00  adrp    x19, #0x1003c9000
  100173d04  add     x19, x19, #0x1f0                         ; @"default_value"
  100173d08  mov     x0, x19
  100173d0c  bl      _objc_retainAutorelease
  100173d10  mov     x0, x19
  100173d14  ldp     x20, x19, [sp], #0x10
  100173d18  ldp     x29, x30, [sp], #0x10
  100173d1c  ret

; ======================================================================
; -[TAGDataLayerMacro isCacheable]
; address 0x100173d20  size 8  kind objc
; ======================================================================
  100173d20  mov     w0, #0
  100173d24  ret

; ======================================================================
; -[TAGDataLayerMacro evaluate:]
; address 0x100173d28  size 532  kind objc
; ======================================================================
  100173d28  stp     x29, x30, [sp, #-0x10]!
  100173d2c  mov     x29, sp
  100173d30  stp     x20, x19, [sp, #-0x10]!
  100173d34  stp     x22, x21, [sp, #-0x10]!
  100173d38  stp     x24, x23, [sp, #-0x10]!
  100173d3c  mov     x21, x0
  100173d40  mov     x0, x2
  100173d44  bl      _objc_retain
  100173d48  mov     x19, x0
  100173d4c  adrp    x24, #0x10041e000
  100173d50  ldr     x20, [x24, #0xb58]                       ; class TAGTypes
  100173d54  adrp    x8, #0x100417000
  100173d58  nop
  100173d5c  ldr     x22, [x8, #0x40]
  100173d60  adrp    x2, #0x1003b9000
  100173d64  add     x2, x2, #0xdb0                           ; @"name"
  100173d68  mov     x1, x22
  100173d6c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  100173d70  mov     x29, x29
  100173d74  bl      _objc_retainAutoreleasedReturnValue
  100173d78  mov     x23, x0
  100173d7c  adrp    x8, #0x10041d000
  100173d80  nop
  100173d84  ldr     x1, [x8, #0xc18]
  100173d88  mov     x0, x20
  100173d8c  mov     x2, x23
  100173d90  bl      _objc_msgSend                            ; [TAGTypes valueToString:[arg1 objectForKey:@"name"]]
  100173d94  mov     x29, x29
  100173d98  bl      _objc_retainAutoreleasedReturnValue
  100173d9c  mov     x20, x0
  100173da0  mov     x0, x23
  100173da4  bl      _objc_release
  100173da8  adrp    x8, #0x10041d000
  100173dac  nop
  100173db0  ldr     x1, [x8, #0xc20]
  100173db4  mov     x0, x21
  100173db8  bl      _objc_msgSend                            ; [self dataLayer]
  100173dbc  mov     x29, x29
  100173dc0  bl      _objc_retainAutoreleasedReturnValue
  100173dc4  mov     x23, x0
  100173dc8  adrp    x8, #0x10041d000
  100173dcc  nop
  100173dd0  ldr     x1, [x8, #0xc28]
  100173dd4  mov     x2, x20
  100173dd8  bl      _objc_msgSend                            ; [[self dataLayer] get:[TAGTypes valueToString:[arg1 objectForKey:@"name"]]]
  100173ddc  mov     x29, x29
  100173de0  bl      _objc_retainAutoreleasedReturnValue
  100173de4  mov     x21, x0
  100173de8  mov     x0, x23
  100173dec  bl      _objc_release
  100173df0  cbz     x21, loc_100173e44                       ; if ([[self dataLayer] get:[TAGTypes valueToString:[arg1 objectForKey:@"name"]]] == 0)
  100173df4  adrp    x8, #0x10041e000
  100173df8  ldr     x0, [x8, #0x140]                         ; class NSNull
  100173dfc  adrp    x8, #0x100418000
  100173e00  nop
  100173e04  ldr     x1, [x8, #0x468]
  100173e08  bl      _objc_msgSend                            ; [NSNull null]
  100173e0c  mov     x29, x29
  100173e10  bl      _objc_retainAutoreleasedReturnValue
  100173e14  mov     x22, x0
  100173e18  bl      _objc_release
  100173e1c  ldr     x0, [x24, #0xb58]                        ; class TAGTypes
  100173e20  cmp     x21, x22
  100173e24  b.eq    loc_100173e74                            ; if ([[self dataLayer] get:[TAGTypes valueToString:[arg1 objectForKey:@"name"]]] == [NSNull null])
  100173e28  adrp    x8, #0x10041d000
  100173e2c  nop
  100173e30  ldr     x1, [x8, #0xc30]
  100173e34  mov     x2, x21
  100173e38  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[self dataLayer] get:[TAGTypes valueToString:[arg1 objectForKey:@"name"]]]]
  100173e3c  mov     x29, x29
  100173e40  b       loc_100173e88
loc_100173e44:
  100173e44  adrp    x2, #0x1003c9000
  100173e48  add     x2, x2, #0x1f0                           ; @"default_value"
  100173e4c  mov     x0, x19
  100173e50  mov     x1, x22
  100173e54  bl      _objc_msgSend                            ; [arg1 objectForKey:@"default_value"]
  100173e58  mov     x29, x29
  100173e5c  bl      _objc_retainAutoreleasedReturnValue
  100173e60  mov     x22, x0
  100173e64  cbz     x22, loc_100173e94                       ; if ([arg1 objectForKey:@"default_value"] == 0)
  100173e68  mov     x0, x22
  100173e6c  bl      _objc_retain
  100173e70  b       loc_100173eb0
loc_100173e74:
  100173e74  adrp    x8, #0x10041c000
  100173e78  nop
  100173e7c  ldr     x1, [x8, #0xa98]
  100173e80  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100173e84  mov     x29, x29
loc_100173e88:
  100173e88  bl      _objc_retainAutoreleasedReturnValue
  100173e8c  mov     x23, x0
  100173e90  b       loc_100173ebc
loc_100173e94:
  100173e94  ldr     x0, [x24, #0xb58]                        ; class TAGTypes
  100173e98  adrp    x8, #0x10041c000
  100173e9c  nop
  100173ea0  ldr     x1, [x8, #0xa98]
  100173ea4  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100173ea8  mov     x29, x29
  100173eac  bl      _objc_retainAutoreleasedReturnValue
loc_100173eb0:
  100173eb0  mov     x23, x0
  100173eb4  mov     x0, x22
  100173eb8  bl      _objc_release
loc_100173ebc:
  100173ebc  mov     x0, x21
  100173ec0  bl      _objc_release
  100173ec4  mov     x0, x20
  100173ec8  bl      _objc_release
  100173ecc  mov     x0, x19
  100173ed0  bl      _objc_release
  100173ed4  mov     x0, x23
  100173ed8  ldp     x24, x23, [sp], #0x10
  100173edc  ldp     x22, x21, [sp], #0x10
  100173ee0  ldp     x20, x19, [sp], #0x10
  100173ee4  ldp     x29, x30, [sp], #0x10
  100173ee8  b       _objc_autoreleaseReturnValue
  100173eec  mov     x22, x0
  100173ef0  b       loc_100173f2c
  100173ef4  mov     x22, x0
  100173ef8  mov     x0, x23
  100173efc  b       loc_100173f28
  100173f00  mov     x22, x0
  100173f04  b       loc_100173f24
  100173f08  mov     x22, x0
  100173f0c  mov     x0, x23
  100173f10  b       loc_100173f20
  100173f14  b       loc_100173f18
loc_100173f18:
  100173f18  mov     x22, x0
  100173f1c  mov     x0, x21
loc_100173f20:
  100173f20  bl      _objc_release
loc_100173f24:
  100173f24  mov     x0, x20
loc_100173f28:
  100173f28  bl      _objc_release
loc_100173f2c:
  100173f2c  mov     x0, x19
  100173f30  bl      _objc_release
  100173f34  mov     x0, x22
  100173f38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerMacro dataLayer]
; address 0x100173f3c  size 16  kind objc
; ======================================================================
  100173f3c  adrp    x8, #0x100420000
  100173f40  ldrsw   x2, [x8, #0xc20]                         ; ivar offset TAGDataLayerMacro._dataLayer (+0x8)
  100173f44  mov     w3, #1
  100173f48  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayerMacro .cxx_destruct]
; address 0x100173f4c  size 20  kind objc
; ======================================================================
  100173f4c  mov     x1, #0
  100173f50  adrp    x8, #0x100420000
  100173f54  ldrsw   x8, [x8, #0xc20]                         ; ivar offset TAGDataLayerMacro._dataLayer (+0x8)
  100173f58  add     x0, x0, x8
  100173f5c  b       _objc_storeStrong
