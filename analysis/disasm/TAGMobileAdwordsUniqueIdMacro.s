// unit TAGMobileAdwordsUniqueIdMacro — 5 functions
//   0x100176d0c      44  +[TAGMobileAdwordsUniqueIdMacro functionId]
//   0x100176d38     176  -[TAGMobileAdwordsUniqueIdMacro init]
//   0x100176de8       8  -[TAGMobileAdwordsUniqueIdMacro isCacheable]
//   0x100176df0     192  -[TAGMobileAdwordsUniqueIdMacro evaluate:]
//   0x100176eb0      24  -[TAGMobileAdwordsUniqueIdMacro rawAdvertiserId]

; ======================================================================
; +[TAGMobileAdwordsUniqueIdMacro functionId]
; address 0x100176d0c  size 44  kind objc
; ======================================================================
  100176d0c  stp     x29, x30, [sp, #-0x10]!
  100176d10  mov     x29, sp
  100176d14  stp     x20, x19, [sp, #-0x10]!
  100176d18  adrp    x19, #0x1003c9000
  100176d1c  add     x19, x19, #0x650                         ; @"_awid"
  100176d20  mov     x0, x19
  100176d24  bl      _objc_retainAutorelease
  100176d28  mov     x0, x19
  100176d2c  ldp     x20, x19, [sp], #0x10
  100176d30  ldp     x29, x30, [sp], #0x10
  100176d34  ret

; ======================================================================
; -[TAGMobileAdwordsUniqueIdMacro init]
; address 0x100176d38  size 176  kind objc
; ======================================================================
  100176d38  stp     x29, x30, [sp, #-0x10]!
  100176d3c  mov     x29, sp
  100176d40  stp     x20, x19, [sp, #-0x10]!
  100176d44  stp     x22, x21, [sp, #-0x10]!
  100176d48  sub     sp, sp, #0x10
  100176d4c  mov     x20, x0
  100176d50  adrp    x8, #0x10041e000
  100176d54  ldr     x0, [x8, #0x550]                         ; class NSSet
  100176d58  adrp    x8, #0x100418000
  100176d5c  nop
  100176d60  ldr     x1, [x8, #0x360]
  100176d64  bl      _objc_msgSend                            ; [NSSet set]
  100176d68  mov     x29, x29
  100176d6c  bl      _objc_retainAutoreleasedReturnValue
  100176d70  mov     x19, x0
  100176d74  str     x20, [sp]
  100176d78  adrp    x8, #0x10041f000
  100176d7c  ldr     x8, [x8, #0x3b0]
  100176d80  str     x8, [sp, #8]
  100176d84  adrp    x8, #0x10041d000
  100176d88  nop
  100176d8c  ldr     x1, [x8, #0xc10]
  100176d90  adrp    x2, #0x1003c9000
  100176d94  add     x2, x2, #0x650                           ; @"_awid"
  100176d98  mov     x0, sp
  100176d9c  mov     x3, x19
  100176da0  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_awid" requiredKeys:[NSSet set]]
  100176da4  mov     x20, x0
  100176da8  mov     x0, x19
  100176dac  bl      _objc_release
  100176db0  mov     x0, x20
  100176db4  sub     sp, x29, #0x20
  100176db8  ldp     x22, x21, [sp], #0x10
  100176dbc  ldp     x20, x19, [sp], #0x10
  100176dc0  ldp     x29, x30, [sp], #0x10
  100176dc4  ret
  100176dc8  mov     x21, x0
  100176dcc  mov     x0, x20
  100176dd0  b       loc_100176ddc
  100176dd4  mov     x21, x0
  100176dd8  mov     x0, x19
loc_100176ddc:
  100176ddc  bl      _objc_release
  100176de0  mov     x0, x21
  100176de4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGMobileAdwordsUniqueIdMacro isCacheable]
; address 0x100176de8  size 8  kind objc
; ======================================================================
  100176de8  mov     w0, #1
  100176dec  ret

; ======================================================================
; -[TAGMobileAdwordsUniqueIdMacro evaluate:]
; address 0x100176df0  size 192  kind objc
; ======================================================================
  100176df0  stp     x29, x30, [sp, #-0x10]!
  100176df4  mov     x29, sp
  100176df8  stp     x20, x19, [sp, #-0x10]!
  100176dfc  adrp    x8, #0x10041d000
  100176e00  nop
  100176e04  ldr     x1, [x8, #0xbe0]
  100176e08  bl      _objc_msgSend                            ; [self rawAdvertiserId]
  100176e0c  mov     x29, x29
  100176e10  bl      _objc_retainAutoreleasedReturnValue
  100176e14  mov     x19, x0
  100176e18  cbz     x19, loc_100176e58                       ; if ([self rawAdvertiserId] == 0)
  100176e1c  adrp    x8, #0x100417000
  100176e20  nop
  100176e24  ldr     x1, [x8, #0xc58]
  100176e28  mov     x0, x19
  100176e2c  bl      _objc_msgSend                            ; [[self rawAdvertiserId] length]
  100176e30  cbz     x0, loc_100176e58                        ; if ([[self rawAdvertiserId] length] == 0)
  100176e34  adrp    x8, #0x10041e000
  100176e38  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100176e3c  adrp    x8, #0x10041d000
  100176e40  nop
  100176e44  ldr     x1, [x8, #0xc30]
  100176e48  mov     x2, x19
  100176e4c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[self rawAdvertiserId]]
  100176e50  mov     x29, x29
  100176e54  b       loc_100176e74
loc_100176e58:
  100176e58  adrp    x8, #0x10041e000
  100176e5c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100176e60  adrp    x8, #0x10041c000
  100176e64  nop
  100176e68  ldr     x1, [x8, #0xa98]
  100176e6c  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100176e70  mov     x29, x29
loc_100176e74:
  100176e74  bl      _objc_retainAutoreleasedReturnValue
  100176e78  mov     x20, x0
  100176e7c  mov     x0, x19
  100176e80  bl      _objc_release
  100176e84  mov     x0, x20
  100176e88  ldp     x20, x19, [sp], #0x10
  100176e8c  ldp     x29, x30, [sp], #0x10
  100176e90  b       _objc_autoreleaseReturnValue
  100176e94  mov     x20, x0
  100176e98  b       loc_100176ea8
  100176e9c  mov     x20, x0
  100176ea0  mov     x0, x19
  100176ea4  bl      _objc_release
loc_100176ea8:
  100176ea8  mov     x0, x20
  100176eac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGMobileAdwordsUniqueIdMacro rawAdvertiserId]
; address 0x100176eb0  size 24  kind objc
; ======================================================================
  100176eb0  adrp    x8, #0x10041e000
  100176eb4  ldr     x0, [x8, #0xb50]                         ; class TAGAdIdAccess
  100176eb8  adrp    x8, #0x10041d000
  100176ebc  nop
  100176ec0  ldr     x1, [x8, #0xbe8]
  100176ec4  b       _objc_msgSend                            ; [TAGAdIdAccess retrieveId]
