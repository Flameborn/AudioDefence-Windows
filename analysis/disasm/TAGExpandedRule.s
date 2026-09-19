// unit TAGExpandedRule — 11 functions
//   0x100163db4     500  -[TAGExpandedRule initWithPositivePredicates:negativePredicates:addTags:removeTags:addMacros:removeMacros:]
//   0x100163fa8      56  +[TAGExpandedRule builder]
//   0x100163fe0     460  -[TAGExpandedRule description]
//   0x1001641ac       4  -[TAGExpandedRule copyWithZone:]
//   0x1001641b0      16  -[TAGExpandedRule positivePredicates]
//   0x1001641c0      16  -[TAGExpandedRule negativePredicates]
//   0x1001641d0      16  -[TAGExpandedRule addTags]
//   0x1001641e0      16  -[TAGExpandedRule removeTags]
//   0x1001641f0      16  -[TAGExpandedRule addMacros]
//   0x100164200      16  -[TAGExpandedRule removeMacros]
//   0x100164210     144  -[TAGExpandedRule .cxx_destruct]

; ======================================================================
; -[TAGExpandedRule initWithPositivePredicates:negativePredicates:addTags:removeTags:addMacros:removeMacros:]
; address 0x100163db4  size 500  kind objc
; ======================================================================
  100163db4  stp     x29, x30, [sp, #-0x10]!
  100163db8  mov     x29, sp
  100163dbc  stp     x20, x19, [sp, #-0x10]!
  100163dc0  stp     x22, x21, [sp, #-0x10]!
  100163dc4  stp     x24, x23, [sp, #-0x10]!
  100163dc8  stp     x26, x25, [sp, #-0x10]!
  100163dcc  sub     sp, sp, #0x10
  100163dd0  mov     x24, x7
  100163dd4  mov     x23, x6
  100163dd8  mov     x22, x5
  100163ddc  mov     x21, x4
  100163de0  mov     x20, x3
  100163de4  mov     x26, x0
  100163de8  mov     x0, x2
  100163dec  bl      _objc_retain
  100163df0  mov     x19, x0
  100163df4  mov     x0, x20
  100163df8  bl      _objc_retain
  100163dfc  mov     x20, x0
  100163e00  mov     x0, x21
  100163e04  bl      _objc_retain
  100163e08  mov     x21, x0
  100163e0c  mov     x0, x22
  100163e10  bl      _objc_retain
  100163e14  mov     x22, x0
  100163e18  mov     x0, x23
  100163e1c  bl      _objc_retain
  100163e20  mov     x23, x0
  100163e24  mov     x0, x24
  100163e28  bl      _objc_retain
  100163e2c  mov     x25, x0
  100163e30  str     x26, [sp]
  100163e34  adrp    x8, #0x10041f000
  100163e38  ldr     x8, [x8, #0x2e8]
  100163e3c  str     x8, [sp, #8]
  100163e40  adrp    x8, #0x100416000
  100163e44  nop
  100163e48  ldr     x1, [x8, #0xab8]
  100163e4c  mov     x0, sp
  100163e50  bl      _objc_msgSendSuper2                      ; [super init]
  100163e54  mov     x24, x0
  100163e58  cbz     x24, loc_100163f1c                       ; if (self == 0)
  100163e5c  adrp    x8, #0x100420000
  100163e60  ldrsw   x26, [x8, #0xb84]                        ; ivar offset TAGExpandedRule._positivePredicates (+0x8)
  100163e64  mov     x0, x19
  100163e68  bl      _objc_retain
  100163e6c  ldr     x8, [x24, x26]                           ; x8 = self->_positivePredicates
  100163e70  str     x0, [x24, x26]                           ; self->_positivePredicates = arg1
  100163e74  mov     x0, x8
  100163e78  bl      _objc_release
  100163e7c  adrp    x8, #0x100420000
  100163e80  ldrsw   x26, [x8, #0xb88]                        ; ivar offset TAGExpandedRule._negativePredicates (+0x10)
  100163e84  mov     x0, x20
  100163e88  bl      _objc_retain
  100163e8c  ldr     x8, [x24, x26]                           ; x8 = self->_negativePredicates
  100163e90  str     x0, [x24, x26]                           ; self->_negativePredicates = arg2
  100163e94  mov     x0, x8
  100163e98  bl      _objc_release
  100163e9c  adrp    x8, #0x100420000
  100163ea0  ldrsw   x26, [x8, #0xb8c]                        ; ivar offset TAGExpandedRule._addTags (+0x18)
  100163ea4  mov     x0, x21
  100163ea8  bl      _objc_retain
  100163eac  ldr     x8, [x24, x26]                           ; x8 = self->_addTags
  100163eb0  str     x0, [x24, x26]                           ; self->_addTags = arg3
  100163eb4  mov     x0, x8
  100163eb8  bl      _objc_release
  100163ebc  adrp    x8, #0x100420000
  100163ec0  ldrsw   x26, [x8, #0xb90]                        ; ivar offset TAGExpandedRule._removeTags (+0x20)
  100163ec4  mov     x0, x22
  100163ec8  bl      _objc_retain
  100163ecc  ldr     x8, [x24, x26]                           ; x8 = self->_removeTags
  100163ed0  str     x0, [x24, x26]                           ; self->_removeTags = arg4
  100163ed4  mov     x0, x8
  100163ed8  bl      _objc_release
  100163edc  adrp    x8, #0x100420000
  100163ee0  ldrsw   x26, [x8, #0xb94]                        ; ivar offset TAGExpandedRule._addMacros (+0x28)
  100163ee4  mov     x0, x23
  100163ee8  bl      _objc_retain
  100163eec  ldr     x8, [x24, x26]                           ; x8 = self->_addMacros
  100163ef0  str     x0, [x24, x26]                           ; self->_addMacros = arg5
  100163ef4  mov     x0, x8
  100163ef8  bl      _objc_release
  100163efc  adrp    x8, #0x100420000
  100163f00  ldrsw   x26, [x8, #0xb98]                        ; ivar offset TAGExpandedRule._removeMacros (+0x30)
  100163f04  mov     x0, x25
  100163f08  bl      _objc_retain
  100163f0c  ldr     x8, [x24, x26]                           ; x8 = self->_removeMacros
  100163f10  str     x0, [x24, x26]                           ; self->_removeMacros = arg6
  100163f14  mov     x0, x8
  100163f18  bl      _objc_release
loc_100163f1c:
  100163f1c  mov     x0, x25
  100163f20  bl      _objc_release
  100163f24  mov     x0, x23
  100163f28  bl      _objc_release
  100163f2c  mov     x0, x22
  100163f30  bl      _objc_release
  100163f34  mov     x0, x21
  100163f38  bl      _objc_release
  100163f3c  mov     x0, x20
  100163f40  bl      _objc_release
  100163f44  mov     x0, x19
  100163f48  bl      _objc_release
  100163f4c  mov     x0, x24
  100163f50  sub     sp, x29, #0x40
  100163f54  ldp     x26, x25, [sp], #0x10
  100163f58  ldp     x24, x23, [sp], #0x10
  100163f5c  ldp     x22, x21, [sp], #0x10
  100163f60  ldp     x20, x19, [sp], #0x10
  100163f64  ldp     x29, x30, [sp], #0x10
  100163f68  ret
  100163f6c  mov     x24, x0
  100163f70  mov     x0, x25
  100163f74  bl      _objc_release
  100163f78  mov     x0, x23
  100163f7c  bl      _objc_release
  100163f80  mov     x0, x22
  100163f84  bl      _objc_release
  100163f88  mov     x0, x21
  100163f8c  bl      _objc_release
  100163f90  mov     x0, x20
  100163f94  bl      _objc_release
  100163f98  mov     x0, x19
  100163f9c  bl      _objc_release
  100163fa0  mov     x0, x24
  100163fa4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGExpandedRule builder]
; address 0x100163fa8  size 56  kind objc
; ======================================================================
  100163fa8  stp     x29, x30, [sp, #-0x10]!
  100163fac  mov     x29, sp
  100163fb0  adrp    x8, #0x10041e000
  100163fb4  ldr     x0, [x8, #0x990]                         ; class TAGExpandedRuleBuilder
  100163fb8  adrp    x8, #0x100416000
  100163fbc  nop
  100163fc0  ldr     x1, [x8, #0xac8]
  100163fc4  bl      _objc_msgSend                            ; [TAGExpandedRuleBuilder alloc]
  100163fc8  adrp    x8, #0x100416000
  100163fcc  nop
  100163fd0  ldr     x1, [x8, #0xab8]
  100163fd4  bl      _objc_msgSend                            ; [[TAGExpandedRuleBuilder alloc] init]
  100163fd8  ldp     x29, x30, [sp], #0x10
  100163fdc  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGExpandedRule description]
; address 0x100163fe0  size 460  kind objc
; ======================================================================
  100163fe0  stp     x29, x30, [sp, #-0x10]!
  100163fe4  mov     x29, sp
  100163fe8  stp     x20, x19, [sp, #-0x10]!
  100163fec  stp     x22, x21, [sp, #-0x10]!
  100163ff0  stp     x24, x23, [sp, #-0x10]!
  100163ff4  stp     x26, x25, [sp, #-0x10]!
  100163ff8  sub     sp, sp, #0x30
  100163ffc  mov     x24, x0
  100164000  adrp    x8, #0x10041d000
  100164004  ldr     x22, [x8, #0xf78]                        ; class NSString
  100164008  nop
  10016400c  nop
  100164010  ldr     x1, [x8, #0x940]
  100164014  bl      _objc_msgSend                            ; [self positivePredicates]
  100164018  mov     x29, x29
  10016401c  bl      _objc_retainAutoreleasedReturnValue
  100164020  mov     x19, x0
  100164024  adrp    x8, #0x10041d000
  100164028  nop
  10016402c  ldr     x1, [x8, #0x930]
  100164030  mov     x0, x24
  100164034  bl      _objc_msgSend                            ; [self negativePredicates]
  100164038  mov     x29, x29
  10016403c  bl      _objc_retainAutoreleasedReturnValue
  100164040  mov     x20, x0
  100164044  adrp    x8, #0x10041d000
  100164048  nop
  10016404c  ldr     x1, [x8, #0x800]
  100164050  mov     x0, x24
  100164054  bl      _objc_msgSend                            ; [self addTags]
  100164058  mov     x29, x29
  10016405c  bl      _objc_retainAutoreleasedReturnValue
  100164060  mov     x21, x0
  100164064  adrp    x8, #0x10041d000
  100164068  nop
  10016406c  ldr     x1, [x8, #0x808]
  100164070  mov     x0, x24
  100164074  bl      _objc_msgSend                            ; [self removeTags]
  100164078  mov     x29, x29
  10016407c  bl      _objc_retainAutoreleasedReturnValue
  100164080  mov     x23, x0
  100164084  adrp    x8, #0x10041d000
  100164088  nop
  10016408c  ldr     x1, [x8, #0x7f0]
  100164090  mov     x0, x24
  100164094  bl      _objc_msgSend                            ; [self addMacros]
  100164098  mov     x29, x29
  10016409c  bl      _objc_retainAutoreleasedReturnValue
  1001640a0  mov     x25, x0
  1001640a4  adrp    x8, #0x10041d000
  1001640a8  nop
  1001640ac  ldr     x1, [x8, #0x7f8]
  1001640b0  mov     x0, x24
  1001640b4  bl      _objc_msgSend                            ; [self removeMacros]
  1001640b8  mov     x29, x29
  1001640bc  bl      _objc_retainAutoreleasedReturnValue
  1001640c0  mov     x24, x0
  1001640c4  adrp    x8, #0x100416000
  1001640c8  nop
  1001640cc  ldr     x1, [x8, #0xee8]
  1001640d0  stp     x25, x24, [sp, #0x20]
  1001640d4  stp     x21, x23, [sp, #0x10]
  1001640d8  stp     x19, x20, [sp]
  1001640dc  adrp    x2, #0x1003c8000
  1001640e0  add     x2, x2, #0xab0                           ; @"Positive predicates: %@  Negative predicates: %@  Add tags: %@  Remove tags: %@  Add macro…"
  1001640e4  mov     x0, x22
  1001640e8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Positive predicates: %@  Negative predicates: %@  Add tags: %@  Remove tags: %@  Add macro…", [self positivePredicates], [self negativePredicates], [self addTags], [self removeTags], [self addMacros], [self removeMacros]]
  1001640ec  mov     x29, x29
  1001640f0  bl      _objc_retainAutoreleasedReturnValue
  1001640f4  mov     x22, x0
  1001640f8  mov     x0, x24
  1001640fc  bl      _objc_release
  100164100  mov     x0, x25
  100164104  bl      _objc_release
  100164108  mov     x0, x23
  10016410c  bl      _objc_release
  100164110  mov     x0, x21
  100164114  bl      _objc_release
  100164118  mov     x0, x20
  10016411c  bl      _objc_release
  100164120  mov     x0, x19
  100164124  bl      _objc_release
  100164128  mov     x0, x22
  10016412c  sub     sp, x29, #0x40
  100164130  ldp     x26, x25, [sp], #0x10
  100164134  ldp     x24, x23, [sp], #0x10
  100164138  ldp     x22, x21, [sp], #0x10
  10016413c  ldp     x20, x19, [sp], #0x10
  100164140  ldp     x29, x30, [sp], #0x10
  100164144  b       _objc_autoreleaseReturnValue
  100164148  mov     x22, x0
  10016414c  b       loc_10016419c
  100164150  mov     x22, x0
  100164154  b       loc_100164194
  100164158  mov     x22, x0
  10016415c  b       loc_10016418c
  100164160  mov     x22, x0
  100164164  b       loc_100164184
  100164168  mov     x22, x0
  10016416c  b       loc_10016417c
  100164170  mov     x22, x0
  100164174  mov     x0, x24
  100164178  bl      _objc_release
loc_10016417c:
  10016417c  mov     x0, x25
  100164180  bl      _objc_release
loc_100164184:
  100164184  mov     x0, x23
  100164188  bl      _objc_release
loc_10016418c:
  10016418c  mov     x0, x21
  100164190  bl      _objc_release
loc_100164194:
  100164194  mov     x0, x20
  100164198  bl      _objc_release
loc_10016419c:
  10016419c  mov     x0, x19
  1001641a0  bl      _objc_release
  1001641a4  mov     x0, x22
  1001641a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedRule copyWithZone:]
; address 0x1001641ac  size 4  kind objc
; ======================================================================
  1001641ac  b       _objc_retain

; ======================================================================
; -[TAGExpandedRule positivePredicates]
; address 0x1001641b0  size 16  kind objc
; ======================================================================
  1001641b0  adrp    x8, #0x100420000
  1001641b4  ldrsw   x8, [x8, #0xb84]                         ; ivar offset TAGExpandedRule._positivePredicates (+0x8)
  1001641b8  ldr     x0, [x0, x8]                             ; x0 = self->_positivePredicates
  1001641bc  ret

; ======================================================================
; -[TAGExpandedRule negativePredicates]
; address 0x1001641c0  size 16  kind objc
; ======================================================================
  1001641c0  adrp    x8, #0x100420000
  1001641c4  ldrsw   x8, [x8, #0xb88]                         ; ivar offset TAGExpandedRule._negativePredicates (+0x10)
  1001641c8  ldr     x0, [x0, x8]                             ; x0 = self->_negativePredicates
  1001641cc  ret

; ======================================================================
; -[TAGExpandedRule addTags]
; address 0x1001641d0  size 16  kind objc
; ======================================================================
  1001641d0  adrp    x8, #0x100420000
  1001641d4  ldrsw   x8, [x8, #0xb8c]                         ; ivar offset TAGExpandedRule._addTags (+0x18)
  1001641d8  ldr     x0, [x0, x8]                             ; x0 = self->_addTags
  1001641dc  ret

; ======================================================================
; -[TAGExpandedRule removeTags]
; address 0x1001641e0  size 16  kind objc
; ======================================================================
  1001641e0  adrp    x8, #0x100420000
  1001641e4  ldrsw   x8, [x8, #0xb90]                         ; ivar offset TAGExpandedRule._removeTags (+0x20)
  1001641e8  ldr     x0, [x0, x8]                             ; x0 = self->_removeTags
  1001641ec  ret

; ======================================================================
; -[TAGExpandedRule addMacros]
; address 0x1001641f0  size 16  kind objc
; ======================================================================
  1001641f0  adrp    x8, #0x100420000
  1001641f4  ldrsw   x8, [x8, #0xb94]                         ; ivar offset TAGExpandedRule._addMacros (+0x28)
  1001641f8  ldr     x0, [x0, x8]                             ; x0 = self->_addMacros
  1001641fc  ret

; ======================================================================
; -[TAGExpandedRule removeMacros]
; address 0x100164200  size 16  kind objc
; ======================================================================
  100164200  adrp    x8, #0x100420000
  100164204  ldrsw   x8, [x8, #0xb98]                         ; ivar offset TAGExpandedRule._removeMacros (+0x30)
  100164208  ldr     x0, [x0, x8]                             ; x0 = self->_removeMacros
  10016420c  ret

; ======================================================================
; -[TAGExpandedRule .cxx_destruct]
; address 0x100164210  size 144  kind objc
; ======================================================================
  100164210  stp     x29, x30, [sp, #-0x10]!
  100164214  mov     x29, sp
  100164218  stp     x20, x19, [sp, #-0x10]!
  10016421c  mov     x19, x0
  100164220  adrp    x8, #0x100420000
  100164224  ldrsw   x8, [x8, #0xb98]                         ; ivar offset TAGExpandedRule._removeMacros (+0x30)
  100164228  add     x0, x19, x8
  10016422c  mov     x1, #0
  100164230  bl      _objc_storeStrong
  100164234  adrp    x8, #0x100420000
  100164238  ldrsw   x8, [x8, #0xb94]                         ; ivar offset TAGExpandedRule._addMacros (+0x28)
  10016423c  add     x0, x19, x8
  100164240  mov     x1, #0
  100164244  bl      _objc_storeStrong
  100164248  adrp    x8, #0x100420000
  10016424c  ldrsw   x8, [x8, #0xb90]                         ; ivar offset TAGExpandedRule._removeTags (+0x20)
  100164250  add     x0, x19, x8
  100164254  mov     x1, #0
  100164258  bl      _objc_storeStrong
  10016425c  adrp    x8, #0x100420000
  100164260  ldrsw   x8, [x8, #0xb8c]                         ; ivar offset TAGExpandedRule._addTags (+0x18)
  100164264  add     x0, x19, x8
  100164268  mov     x1, #0
  10016426c  bl      _objc_storeStrong
  100164270  adrp    x8, #0x100420000
  100164274  ldrsw   x8, [x8, #0xb88]                         ; ivar offset TAGExpandedRule._negativePredicates (+0x10)
  100164278  add     x0, x19, x8
  10016427c  mov     x1, #0
  100164280  bl      _objc_storeStrong
  100164284  mov     x1, #0
  100164288  adrp    x8, #0x100420000
  10016428c  ldrsw   x8, [x8, #0xb84]                         ; ivar offset TAGExpandedRule._positivePredicates (+0x8)
  100164290  add     x0, x19, x8
  100164294  ldp     x20, x19, [sp], #0x10
  100164298  ldp     x29, x30, [sp], #0x10
  10016429c  b       _objc_storeStrong
